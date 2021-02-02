<?php defined('BASEPATH') or exit('No direct script access allowed');

// sisipkan file tcpdf di sini
require_once dirname(__file__) . '/tcpdf/tcpdf.php';
class Pdf_report extends TCPDF
{
    protected $ci;

    public function __construct()
    {
        parent::__construct();
    }
}
