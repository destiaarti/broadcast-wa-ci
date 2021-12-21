<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->check_login();
        if ($this->session->userdata('role') != "admin fakultas") {
            redirect('', 'refresh');
        }
    }

    public function index()
    {
		$data = konfigurasi('Dashboard');
        $now = new DateTime(Date('Y-m-d'));
        $data['date_now'] = $now;
        $this->template->load('layouts/template', 'member/dashboard', $data);
    }
}
