<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ContactController extends Controller
{
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nama_lengkap' => 'required|string|max:255',
            'email'        => 'required|email',
            'subjek'       => 'required|string|max:255',
            'pesan'        => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        try {
            Contact::create($request->all());
            return response()->json(['message' => 'Terima kasih, pesan Anda telah kami terima.'], 201);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Maaf, gagal mengirim pesan'], 500);
        }
    }
}