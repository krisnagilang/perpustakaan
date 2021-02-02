<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Landing extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Buku_model');
    }

    public function index()
    {
        $data['title'] = 'List Buku';
        $data['primary_view'] = 'landing_view';
        $data['total'] = $this->Buku_model->getCount();
        $data['list'] = $this->Buku_model->getList();
        $this->load->view('landing_template_view', $data);
    }

    public function add()
    {
        $data['title'] = 'Tambah Buku';
        $data['primary_view'] = 'buku/add_buku_view';
        $this->load->view('template_view', $data);
    }
}
