<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_hakakses extends CI_Model {

	var $table = 'users';
	var $pk = 'id';

	public function __construct()
	{
		parent::__construct();
		
	}

	public function read(){
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->join('groups', 'users.id_group = groups.id_group');
		$this->db->where('status_user', '1');
		$query = $this->db->get();
		return $query->result_array();
	}

	public function create($object){
		$create = $this->db->insert($this->table, $object);
		return $create;
	}

	public function delete($id)
    {	
    	$data = array('status_user' => '0');
    	$result = $this->db->update($this->table, $data, array('id' => $id));
    	return $result;
    }

}

/* End of file m_hakakses.php */
/* Location: ./application/models/m_hakakses.php */