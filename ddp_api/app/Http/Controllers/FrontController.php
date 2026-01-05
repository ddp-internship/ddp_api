<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Capaian;
use App\Models\Beritaartikel;
use App\Models\Monografi;
use App\Models\Infografis;
use App\Models\Galeri;
use App\Models\Mitra;
use App\Models\Testimoni;

class FrontController extends Controller
{
    public function index()
    {
        // Menarik data dari Backend yang sudah Mas isi kemarin
        $capaian = Capaian::first(); 
        $mitra = Mitra::all();
        $berita = Beritaartikel::latest()->take(6)->get();
        $monografi = Monografi::latest()->take(5)->get();
        $infografis = Infografis::latest()->take(4)->get();
        $galeri = Galeri::latest()->take(8)->get();
        $testimoni = Testimoni::latest()->get();

        return view('frontend.index', compact('capaian', 'mitra', 'berita', 'monografi', 'infografis', 'galeri', 'testimoni'));
    }
}