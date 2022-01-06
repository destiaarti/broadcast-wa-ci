<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Cron extends MY_Controller
{
  public function __construct()
  {
      parent::__construct();
      $this->load->model('Visa_model');
      $this->load->model('Itk_model');
  }
    public function job(){
      $visa = $this->Visa_model->get_notif();
      $itk = $this->Itk_model->get_notif();
      $now = new DateTime(Date('Y-m-d'));
      $data = [
        'status_notification'    => 1,
        'send_notification'    => date('Y-m-d'),
      ];
      foreach($visa as $row) {
        $expired_visa = date_diff(date_create($row->date_expired), $now)->format("%R%a");
        if($expired_visa > -7 && $expired_visa < 0  ) {
        $this->email($row, $type = "visa");
        $sendwa = $this->wa($row);
          if ($sendwa == "berhasil") {
              $this->Visa_model->update(['id' => $row->id], $data);
            }
          }
      }
      foreach($itk as $row1) {
        $expired_itk = date_diff(date_create($row1->date_expired), $now)->format("%R%a");
        if($expired_itk < -7 && $expired_visa < 0 ) {
        $this->email($row1, $type = "itk");
        $sendwa1 = $this->wa($itk);
          if ($sendwa1 == "berhasil") {
              $this->Itk_model->update(['id' => $row1->id], $data);
            }
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
        CURLOPT_POSTFIELDS => array('number' => $user->no_hp,'message' => "Dear $user->first_name $user->last_name,\n\nWe would like to inform you that deadlines of your permit will be expired $user->date_expired\nWe would like to see you at our office as soon as possible.\nPlease contact us if you have any question.\n\nYours sincerely,\n\n\n\nRohman"),
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
        // $this->email->attach('https://images.pexels.com/photos/169573/pexels-photo-169573.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940');
    
        // Subject email
        $this->email->subject('Notification almost expired date from DIO UNDIP');

        // Isi email
        $this->email->message("Dear ".$user->first_name." ".$user->last_name.", <br> We would like to inform you that deadlines of your permit will be expired ".$user->date_expired."<br> We would like to see you at our office as soon as possible. Please contact us if you have any question. <br>
        <br> Yours sincerely, <br><br><br><br> Rohman");
    
        // Tampilkan pesan sukses atau error
        if ($this->email->send()) {
           // echo $sendwa;
           $data = [
            'status_notification'    => 1,
            'send_notification'    => date('Y-m-d'),
          ];
          if($type == "visa") {
            $this->Visa_model->update(['id' => $user->id], $data);
          } else {
            $this->Itk_model->update(['id' => $user->id], $data);
          }
        }
    }
}