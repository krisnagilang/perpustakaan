<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Transaksi extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Transaksi_model');
		$this->load->library('pdf_report');
		if ($this->session->userdata('logged_in') == false) {
			redirect('welcome');
		}
	}

	public function index()
	{
		$data = array(
			'title'			=> 'Transaksi',
			'primary_view'	=> 'transaksi/transaksi_view',
			'total'			=> $this->Transaksi_model->getTotal(),
			'pmnList'		=> $this->Transaksi_model->getPeminjaman(),
			'pmbList'		=> $this->Transaksi_model->getPengembalian()
		);
		$this->load->view('template_view', $data);
	}


// 	public function export()
// 	{
// 		$data = $this->Transaksi_model->getPeminjaman();
// 		$tanggal = date('d-m-Y');

// 		$pdf = new TCPDF();
// 		$pdf->AddPage();
// 		$pdf->SetFont('', 'B', 20);
// 		$pdf->Cell(115, 0, "Laporan Peminjaman - " . $tanggal, 0, 1, 'L');
// 		$pdf->SetAutoPageBreak(true, 0);

// 		// Add Header
// 		$pdf->Ln(10);
// 		$pdf->SetFont('', 'B', 12);
// 		$pdf->Cell(10, 8, "No", 1, 0, 'C');
// 		$pdf->Cell(20, 8, "Kode", 1, 0, 'C');
// 		$pdf->Cell(55, 8, "Nama Peminjam", 1, 0, 'C');
// 		$pdf->Cell(55, 8, "Tanggal Pinjam", 1, 0, 'C');
// 		$pdf->Cell(30, 8, "Petugas", 1, 1, 'C');
// 		$pdf->Cell(40, 8, "Jumlah Buku", 1, 1, 'C');
// 		$pdf->SetFont('', '', 12);
// 		foreach ($data->result_array() as $d => $list) {
// 			$this->addRow($pdf, $d + 1, $list);
// 		}
// 		$tanggal = date('d-m-Y');
// 		$pdf->Output('Laporan Peminjaman - ' . $tanggal . '.pdf');
// 	}

// 	public function addRow($pdf, $no, $list)
// 	{
// 		$pdf->Cell(10, 8, $no, 1, 0, 'C');
// 		$pdf->Cell(20, 8, $list['ID_PINJAM'], 1, 0, '');
// 		$pdf->Cell(55, 8, $list['FULL_NAME'], 1, 0, '');
// 		$pdf->Cell(55, 8, date('d-m-Y', strtotime($list['TGL_PINJAM'])), 1, 0, 'C');
// 		$pdf->Cell(30, 8, $list['FULLNAME'], 1, 0, '');
// 		$pdf->Cell(40, 8, $list['JML_BUKU'], 1, 1, 'L');
// 	}
 }

/* End of file Transaksi.php */
/* Location: ./application/controllers/Transaksi.php */