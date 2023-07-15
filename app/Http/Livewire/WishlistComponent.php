<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Gloudemans\Shoppingcart\Facades\Cart;

class WishlistComponent extends Component
{
    public $satt=['Color'=>"white",
                    'Size'=>"XL",];
    public function removeFromWishlist($product_id){
        foreach (Cart::instance('wishlist')->content() as $witem) 
        {
            if ($witem->id == $product_id) {
                Cart::instance('wishlist')->remove($witem->rowId);
                $this->emitTo('wishlist-icon-component','refreshComponentt');
                return;
            }
        }
    }

    public function moveProductFromWishlistToCart($rowId)
    {
        $item = Cart::instance('wishlist')->get($rowId);
        Cart::instance('wishlist')->remove($rowId);
        Cart::instance('cart')->add($item->id, $item->name,1,$item->price,$this->satt)->associate('\App\Models\Product');
        $this->emitTo('wishlist-icon-component','refreshComponentt');
        $this->emitTo('cart-icon-component','refreshComponent');
    }

    public function render()
    {
        return view('livewire.wishlist-component');
    }
}
