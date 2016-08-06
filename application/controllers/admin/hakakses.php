<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
include 'Admin_Controller.php';
class HakAkses extends Admin_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_hakakses','m_hakakses');
	}

	public function index()
	{
		$data = [
			'title' => 'Data Hak Akses',
			'content' => 'admin/hakakses/index',
			'hakakses' => $this->m_hakakses->read()
		];
		$this->load->view($this->template, $data);
	}

	public function create(){
		if($this->input->server('REQUEST_METHOD') == "POST")
        {
        	$this->form_validation->set_rules('username', 'Username', 'trim|required|min_length[8]|max_length[30]');
            $this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[8]|max_length[30]');
            $this->form_validation->set_rules('passconf', 'Password Konfirmasi', 'trim|required|matches[password]');
            $this->form_validation->set_rules('fname', 'Nama Depan', 'trim|required');
            $this->form_validation->set_rules('lname', 'Nama Belakang', 'trim|required');
            $this->form_validation->set_rules('email', 'E-mail', 'trim|required|valid_email|max_length[100]');
            $this->form_validation->set_rules('phone', 'Telepon / HP', 'trim|required|is_natural|max_length[20]');
            $this->form_validation->set_rules('level', 'Level', 'trim|required|is_natural');

          	if ($this->form_validation->run() == FALSE)
            {
            	//ERROR
                $data = [
                    "operation" => "warning",
                    "message" => validation_errors()
                ];
            } 
            else 
            {
            	$data = [
                    'username' => $this->input->post('username'),
                    'password' => $this->input->post('password'),
                    'first_name' => $this->input->post('fname'),
                    'last_name' => $this->input->post('lname'),
                    'email' => $this->input->post('email'),
                    'phone' => $this->input->post('phone'),
                    'id_group' => $this->input->post('level')
                ];

                if($this->m_hakakses->create($data)){
                	$this->session->set_flashdata("operation", "success");
                    $this->session->set_flashdata("message", "<strong>Pengurus</strong> berhasil ditambah");
                    redirect('admin/hakakses');
                } else {
                	$data = [
                        "operation" => "warning",
                        "message" => "Maaf. Terjadi kesalahan sistem.",
                    ];
                }
            }
        }

        $data = [
			'title' => 'Data Hak Akses',
			'content' => 'admin/hakakses/index',
			'hakakses' => $this->m_hakakses->read()
		];
        $this->load->view($this->template, $data);
	}


    public function delete($id)
    {
        $result = $this->m_hakakses->delete($id);
        if($result){
            $this->session->set_flashdata("operation", "success");
            $this->session->set_flashdata("message", "<strong>Berhasil</strong> menghapus pengguna");
        }
        else{
            $this->session->set_flashdata("operation", "danger");
            $this->session->set_flashdata("message", "<strong>Gagal</strong> Terjadi kesalah sistem.");
        }
        redirect("admin/hakakses");
    }
}

/* End of file datamaster.php */
/* Location: ./application/controllers/datamaster.php */
