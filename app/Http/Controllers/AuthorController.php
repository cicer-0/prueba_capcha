<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Author;

class AuthorController extends Controller
{
    public function index()
    {
        $authors = Author::all();
        return response()->json($authors);
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:100',
            'nationality' => 'nullable|string|max:50',
            'birth_date' => 'nullable|date',
            'death_date' => 'nullable|date',
            'biography' => 'nullable|string',
        ]);

        $author = Author::create($validatedData);

        return response()->json($author, 201);
    }

    public function show($id)
    {
        $author = Author::findOrFail($id);
        return response()->json($author);
    }

    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:100',
            'nationality' => 'nullable|string|max:50',
            'birth_date' => 'nullable|date',
            'death_date' => 'nullable|date',
            'biography' => 'nullable|string',
        ]);

        $author = Author::findOrFail($id);
        $author->update($validatedData);

        return response()->json($author, 200);
    }

    public function destroy($id)
    {
        $author = Author::findOrFail($id);
        $author->delete();

        return response()->json(null, 204);
    }
}
