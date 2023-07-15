<div>
    <style>
        nav svg{
            height: 20px;
        }
        nav .hidden{
            display: block;
        }
        .wishlisted{
            background-color: #f15412 !important;
            border: 1px solid transparent !important;
        }
        .wishlisted i{
            color: #fff !important;
        }
    </style>

    <main class="main">
        <div class="page-header breadcrumb-wrap">
            <div class="container">
                <div class="breadcrumb">
                    <a href="/" rel="nofollow">Trang chủ</a>
                    <span></span> Sản phẩm yêu thích
                </div>
            </div>
        </div>
        <section class="mt-50 mb-50 product_data">
            <div class="container">
                @if (Cart::instance('wishlist')->count() > 0)
                <div class="row product-grid-4">
                    @foreach (Cart::instance('wishlist')->content() as $item)
                            <div class="col-lg-3 col-md-3 col-6 col-sm-6">
                                <div class="product-cart-wrap mb-30">
                                    <div class="product-img-action-wrap">
                                        <div class="product-img product-img-zoom">
                                            <a href="{{ route('product.details',['slug'=>$item->model->slug]) }}">
                                                <img class="default-img" src="{{ asset('assets/imgs/products')}}/{{ $item->model->image }}" alt="{{ $item->model->name }}">
                                                <img class="hover-img" src="{{ asset('assets/imgs/products')}}/{{ $item->model->image2 }}" alt="{{ $item->model->name }}">
                                            </a>
                                        </div>
                                        <div class="product-action-1">
                                            {{-- <a aria-label="Quick view" class="action-btn hover-up quick_view" id="{{ $item->model->id }}" data-bs-toggle="modal" data-bs-target="#exampleModal" data-id_product="{{ $item->model->id}}" > --}}
                                                <i class="fi-rs-search"></i></a>
                                            </a>
                                            {{--  onclick="deleteConfirmationn({{ $item->model->id }})" --}}
                                            {{-- <a aria-label="Add To Wishlist" class="action-btn hover-up" href="wishlist.php"><i class="fi-rs-heart"></i></a> --}}
                                            <a aria-label="Remove From Wishlist" class="action-btn hover-up wishlisted" href="#" wire:click.prevent="removeFromWishlist({{ $item->model->id }})"><i class="fi-rs-heart"></i></a>
                                            {{-- <a aria-label="Compare" class="action-btn hover-up" href="compare.php"><i class="fi-rs-shuffle"></i></a> --}}
                                        </div>
                                        <div class="product-badges product-badges-position product-badges-mrg">
                                            @if ($item->model->countsale > 100 )
                                            <span class="best">Best sell</span>
                                            @elseif ($item->model->sale_price)
                                                @php
                                                $chia = $item->model->sale_price / $item->model->regular_price;
                                                $nhan = $chia * 100;
                                                $phantram = 100 - $nhan;
                                                @endphp
                                                <span class="sale">Sale:{{ number_format($phantram) }}% </span>
                                            @else
                                            <span class="hot">Hot</span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="product-content-wrap">
                                        <div class="product-category">
                                            <a href="shop.html">Music</a>
                                        </div>
                                        <h2><a href="{{ route('product.details',['slug'=>$item->model->slug]) }}">{{ $item->model->name }}</a></h2>
                                        <input type="text" value="{{ $item->model->name }}" class="hidden product_name">
                                        <div class="rating-result" title="90%">
                                            <span>
                                                <span>90%</span>
                                            </span>
                                        </div>
                                        <div class="product-price">
                                            @if ($item->model->sale_price > 10)
                                                <span>{{ number_format($item->model->sale_price) }} VNĐ</span>
                                                <span class="old-price">{{ number_format($item->model->regular_price) }} VNĐ</span>
                                            @else
                                                <span>{{ number_format($item->model->regular_price) }} VNĐ</span>
                                            @endif
                                        </div>
                                        {{-- @if ($item->model->sale_price > 10)
                                            <div class="product-action-1 show">
                                                <a aria-label="Add To Cart" class="action-btn hover-up js-addwish-b3" href="#" wire:click.prevent="moveProductFromWishlistToCart('{{ $item->rowId }}')"><i class="fi-rs-shopping-bag-add"></i></a>
                                            </div>
                                        @else --}}
                                        <div class="product-action-1 show">
                                            <a aria-label="Thêm vào giỏ hàng" class="action-btn hover-up js-addwish-b3" href="#" wire:click.prevent="moveProductFromWishlistToCart('{{ $item->rowId }}')"><i class="fi-rs-shopping-bag-add"></i></a> 
                                        </div>
                                        {{-- @endif --}}
                                    </div>
                                </div>
                            </div>                            
                        @endforeach
                </div>
                @else
                    <h3>DANH SACH SAN PHAM YEU THICH TRONG</h3>
                @endif
            </div>
        </section>
    </main>
</div>
