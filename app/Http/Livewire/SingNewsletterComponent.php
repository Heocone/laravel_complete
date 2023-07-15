<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Newsletter;
use App\Mail\NewsletterMail;
use Illuminate\Support\Facades\Mail;
use Illuminate\Database\Console\Migrations\RefreshCommand;

class SingNewsletterComponent extends Component
{
    public $email;
    public function updated($fields)
    {
        $this->validateOnly($fields,[
            'email' => 'required',
        ]);
    }
    public function addnewsletter(){
        $this->validate([
            'email' => 'required',
        ]);
        $letter = new Newsletter();
        $letter->email = $this->email;
        $letter->save();
        $this->sendNewsletterConfirmationMail($letter);
        session()->flash('messagen', 'Cảm ơn quý khách đã đăng ký nhận những chương trình khuyến mãi từ chúng tôi!');
        // return redirect()->route('home.index');
    }
    public function sendNewsletterConfirmationMail($order)
    {
        Mail::to($order->email)->send(new NewsletterMail($order));
    }
    public function render()
    {
        return view('livewire.sing-newsletter-component');
    }
}
