<?php

namespace App\Http\Livewire;

use Livewire\Component;

class QuickviewComponent extends Component
{
    public $product;
    
    public function render()
    {
        return view('livewire.quickview-component',[
            'product' => $this->product,
        ]);
    }
}
