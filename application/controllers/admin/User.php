<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_Model');
        $this->check_login();
        if ($this->session->userdata('role') != 'admin') {
            redirect('', 'refresh');
        }
    }

    public function index()
    {
        $data            = konfigurasi('User', 'Kelola User');
        $data['users'] = $this->User_model->get_all();
        $this->template->load('layouts/template', 'admin/user/index', $data);
    } 

    public function edit($id)
    {
        $data           = konfigurasi('Edit Password', 'Edit Password');
        $data['users'] = $this->User_model->get_by_id($id);
        $this->template->load('layouts/template', 'admin/user/edit', $data);
    }

    public function update()
    {
        $id      = $this->input->post('id');
        $name    = $this->input->post('name');
        $address = $this->input->post('address');

        $data = [
            'name'    => $name,
            'address' => $address,
        ];
        $this->Person_model->update(['id' => $id], $data);
        redirect('admin/users');
    }

    public function add()
    {
        $data = konfigurasi('Tambah user', 'Tambah user');
        $this->template->load('layouts/template', 'admin/user/create', $data);
    }

    public function create()
    {
        $this->form_validation->set_rules('username', 'User Name', 'required');
        $this->form_validation->set_rules('first_name', 'First Name', 'required');
        $this->form_validation->set_rules('last_name', 'Last name', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required');
        $this->form_validation->set_rules('phone', 'Phone', 'required');

        if ($this->form_validation->run() == true) {
        $username    = $this->input->post('username');
        $password    = $this->input->post('password');
        $first_name    = $this->input->post('first_name');
        $last_name    = $this->input->post('last_name');
        $email    = $this->input->post('email');
        $phone   = $this->input->post('phone');
        $activated    = $this->input->post('activated');
        $role    = $this->input->post('role');
        // $visa_file    = $this->input->post('visa_file');

        $data = [
            'first_name'    => $first_name,
            'last_name'    => $last_name,
            'username'    => $username,
            'password'  => get_hash($password),
            'email'    => $email,
            'phone'    => $phone,
            'activated'    => $activated,
            'role'    => $role,
        ];
            $this->User_model->insert($data);
            $this->session->set_flashdata('Tambah', 'Success Saved !');
            redirect('admin/user');
        } else {
            $this->session->set_flashdata('msg', show_err_msg(validation_errors()));
            redirect('admin/user');
        }
    }

    public function delete($id)
    {
        $this->User_model->delete($id);
        $this->session->set_flashdata('Hapus', 'Success Deleted !');
    }
}

/* End of file Person.php */
