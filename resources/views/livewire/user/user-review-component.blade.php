<main class="main">
    <div class="page-header breadcrumb-wrap">
        <div class="container">
            <div class="breadcrumb">
                <a href="/" rel="nofollow">Trang chủ</a>
                <span></span> Reivew
            </div>
        </div>
    </div>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        .rate {
            float: left;
            height: 46px;
            padding: 0 10px;
        }

        .rate:not(:checked)>input {
            position: absolute;
            top: -9999px;
        }

        .rate:not(:checked)>label {
            float: right;
            width: 1em;
            overflow: hidden;
            white-space: nowrap;
            cursor: pointer;
            font-size: 30px;
            color: #ccc;
        }

        .rate:not(:checked)>label:before {
            content: '★ ';
        }

        .rate>input:checked~label {
            color: #ffc700;
        }

        .rate:not(:checked)>label:hover,
        .rate:not(:checked)>label:hover~label {
            color: #deb217;
        }

        .rate>input:checked+label:hover,
        .rate>input:checked+label:hover~label,
        .rate>input:checked~label:hover,
        .rate>input:checked~label:hover~label,
        .rate>label:hover~input:checked~label {
            color: #c59b08;
        }
    </style>
    <section class="mt-50 mb-50">
        <div class="container">
            <div class="row">
                @if(Session::has('message'))
                    <div class="alert alert-success" role="alert">
                        {{ Session::get('message') }}
                    </div>
                @endif
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <!--comment form-->
                            <div class="row">
                                <h4 class="mb-15">Add a review</h4>
                                    <div class="comments-area">
                                        <div class="col-lg-8">
                                            <div class="comment-list">
                                                <div class="single-comment justify-content-between d-flex">
                                                    <div class="user justify-content-between d-flex">
                                                        <div class="thumb text-center">
                                                            <img src="{{ asset('assets/imgs/products')}}/{{ $orderItem->product->image }}" alt="">
                                                        </div>
                                                        <div class="desc">
                                                            <p><b>Đánh giá sản phẩm:</b> {{ $orderItem->product->name }}</p>
                                                            <div class="d-flex justify-content-between">
                                                                <div class="d-flex align-items-center">
                                                                    <p class="font-xs mr-30">{{ date('Y-m-d H:i:s') }} </p>
                                                                    {{-- <a href="#" class="text-brand btn-reply">Reply <i class="fi-rs-arrow-right"></i> </a> --}}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                            <div class="comment-form">
                                <div class="col-lg-8 col-md-12">
                                    <form wire:submit.prevent="addReview" class="form-contact comment_form" id="commentForm" >
                                        <div class="row">
                                            <div class="mb-30">
                                                <div class="rate">
                                                    <input type="radio" id="star5" name="rate" value="5" wire:model="rating"/>
                                                    <label for="star5" title="text">5 stars</label>
                                                    <input type="radio" id="star4" name="rate" value="4" wire:model="rating"/>
                                                    <label for="star4" title="text">4 stars</label>
                                                    <input type="radio" id="star3" name="rate" value="3" wire:model="rating"/>
                                                    <label for="star3" title="text">3 stars</label>
                                                    <input type="radio" id="star2" name="rate" value="2" wire:model="rating"/>
                                                    <label for="star2" title="text">2 stars</label>
                                                    <input type="radio" id="star1" name="rate" value="1" wire:model="rating"/>
                                                    <label for="star1" title="text">1 star</label>
                                                    
                                                </div>
                                                @error('rating')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <textarea class="form-control w-100" name="comment" id="comment" cols="30" rows="9" placeholder="Write Comment" wire:model="comment"></textarea>
                                                    @error('comment')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                            </div>
                                            {{-- <div class="col-sm-6">
                                                <div class="form-group">
                                                    <input class="form-control" name="name" id="name" type="text" placeholder="Name">
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <input class="form-control" name="email" id="email" type="email" placeholder="Email">
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <input class="form-control" name="website" id="website" type="text" placeholder="Website">
                                                </div>
                                            </div> --}}
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="button button-contactForm">Submit
                                                Review</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>