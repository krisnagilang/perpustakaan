<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cetak extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Transaksi_model');
		$this->load->library('pdf_report');
		if ($this->session->userdata('logged_in') == false) {
			redirect('welcome');
		}
	}

	public function index ()
	{

		$data = array(
			'title'			=> 'Transaksi',
			'primary_view'	=> 'transaksi/transaksi_view',
			'total'			=> $this->Transaksi_model->getTotal(),
			'pmnList'		=> $this->Transaksi_model->getPeminjaman(),
			'pmbList'		=> $this->Transaksi_model->getPengembalian()
		);

		$this->load->view('transaksi/cetaktransaksipdf', $data);
	}
}
