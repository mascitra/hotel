<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_hakakses extends CI_Model {

	var $table = 'users';
	var $pk = 'user_id';

	public function __construct()
	{
		parent::__construct();
		
	}

	public function read(){
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->join('users_groups', 'users.user_id = users_groups.user_id');
		$this->db->join('groups', 'users_groups.group_id = groups.id');
		$this->db->where('active', '1');
		$query = $this->db->get();
		return $query->result_array();
	}

	public function create($object){
		$create = $this->db->insert($this->table, $object);
		return $create;
	}

	public function delete($id)
    {	
    	$data = array('active' => '0');
    	$result = $this->db->update($this->table, $data, array('user_id' => $id));
    	return $result;
    }

}

/* End of file m_hakakses.php */
/* Location: ./application/models/m_hakakses.php */