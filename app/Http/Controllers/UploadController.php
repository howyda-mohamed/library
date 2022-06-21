<?php

namespace App\Http\Controllers;
Use App\Category;
use App\Book;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class UploadController extends Controller
{
    public function index()
    {
        return view('upload');
    }
    public function upload(Request $request)
    {
        $this->validate($request,[
            'title'=>'required',
            'auther'=>'required',
            'info'=>'required',
            'image'=>'required|image',
            'book'=>'required|mimes:pdf',
        ]);
        if($request->hasFile('image'))
        {
            $imageExt= $request->file('image')->getClientOriginalExtension();
            $imageName= time().'thumnnail.'.$imageExt;
            $request->file('image')->storeAs('thumbnails',$imageName);
        }
        if($request->hasFile('book'))
        {
            $bookExt= $request->file('book')->getClientOriginalExtension();
            $bookName= time().'book.'.$bookExt;
            $request->file('book')->storeAs('books',$bookName);
        }
        $book=new Book();
        $book->title=$request->input('title');
        $book->auther=$request->input('auther');
        $book->image=$imageName;
        $book->bookfile=$bookName;
        $book->info=$request->input('info');
        $book->user_id =Auth::user()->id;
        $book->category_id =$request->input('category');
        $book->save();
        return redirect(route('upload'))->with('msg','Upload OK');
    }
}
