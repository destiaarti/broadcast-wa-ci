<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Cron extends MY_Controller
{
    public function job(){
      $visa = $this->Visa_model->get_notif();
      $itk = $this->Itk_model->get_notif();
      $data = [
        'status_notification'    => 1,
        'send_notification'    => date('Y-m-d'),
      ];
      foreach($visa as $row) {
        $this->email($row, $type = "visa");
        $sendwa = $this->wa($user);
          if ($sendwa == "berhasil") {
              $this->Visa_model->update(['id' => $id], $data);
            }
      }
      foreach($itk as $row1) {
        $this->email($row1, $type = "itk");
        $sendwa1 = $this->wa($user);
          if ($sendwa1 == "berhasil") {
              $this->Itk_model->update(['id' => $id], $data);
            }
      }
    }

    private function wa($user){  
      $curl = curl_init();
    
      curl_setopt_array($curl, array(
        CURLOPT_URL => 'http://localhost:8000/send-message',
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'POST',
        CURLOPT_POSTFIELDS => array('number' => $user->no_hp,'message' => 'lorem ipsum visa number: '.$user->first_name.' awaoa'),
      ));
      
      $response = curl_exec($curl);
      $a = json_decode($response);
    //   echo $a->status;
      if (isset($a->status)) {
          if($a->status == 1){
            $status = "berhasil";
          } else {
            $status = $a->message;
          }
      }else{
          $status = "network error !";
      }
    
    
    //   print_r($response->getStatus());
    //  $a = json_decode($response);
    // echo $response->statusCode;
      
      curl_close($curl);
      return $status;
    }

    private function email($user, $type){  
        $config = [
            'mailtype'  => 'html',
            'charset'   => 'utf-8',
            'protocol'  => 'smtp',
            'smtp_host' => 'smtp.gmail.com',
            'smtp_user' => 'aysyahuma@student.ce.undip.ac.id',  // Email gmail
            'smtp_pass'   => 'kUSUM411',  // Password gmail
            'smtp_crypto' => 'ssl',
            'smtp_port'   => 465,
            'crlf'    => "\r\n",
            'newline' => "\r\n"
        ];
    
        $this->load->library('email', $config);
    
        // Email dan nama pengirim
        $this->email->from('no-reply@undip.com', 'Tes Kirim');
    
        // Email penerima
        $this->email->to($user->email); // Ganti dengan email tujuan
    
        // Lampiran email, isi dengan url/path file
        $this->email->attach('https://images.pexels.com/photos/169573/pexels-photo-169573.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940');
    
        // Subject email
        $this->email->subject('Kirim Email dengan SMTP Gmail CodeIgniter | Tes');
    
        // Isi email
        $this->email->message("Ini adalah contoh email yang dikirim menggunakan SMTP Gmail pada CodeIgniter.<br><br> Klik <strong><a href='https://masrud.com/kirim-email-smtp-gmail-codeigniter/' target='_blank' rel='noopener'>disini</a></strong> untuk melihat.");
    
        // Tampilkan pesan sukses atau error
        if ($this->email->send()) {
           // echo $sendwa;
           $data = [
            'status_notification'    => 1,
            'send_notification'    => date('Y-m-d'),
          ];
          if($type == "visa") {
            $this->Visa_model->update(['id' => $id], $data);
          } else {
            $this->Itk_model->update(['id' => $id], $data);
          }
        }
    }
}