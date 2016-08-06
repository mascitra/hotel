<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
include 'Admin_Controller.php';
class Jasa extends Admin_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_jasa');
	}

	public function index()
	{
		$data = [
			'title' => 'Jasa Lainnya',
			'content' => 'admin/jasa/index',
			'jasa' => $this->m_jasa->read()
		];
		$this->load->view($this->template, $data);
	}

}

/* End of file jasa.php */
/* Location: ./application/controllers/jasa.php */