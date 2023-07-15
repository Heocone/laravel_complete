<footer class="main">
    <section class="newsletter p-30 text-white wow fadeIn animated">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-7 mb-md-3 mb-lg-0">
                    <div class="row align-items-center">
                        <div class="col flex-horizontal-center">
                            <img class="icon-email" src="{{ asset('assets/imgs/theme/icons/icon-email.svg') }}" alt="">
                            <h4 class="font-size-20 mb-0 ml-3">Nhận các chương trình khuyến mãi mới nhất từ chúng tôi</h4>
                        </div>
                        <div class="col my-4 my-md-0 des">
                            <h5 class="font-size-15 ml-4 mb-0">...và nhận <strong>phiếu giảm giá 25,000 VND cho lần mua sắm đầu tiên.</strong></h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <!-- Subscribe Form -->
                    @livewire('sing-newsletter-component')
                    <!-- End Subscribe Form -->
                </div>
            </div>
        </div>
    </section>
    <section class="section-padding footer-mid">
        <div class="container pt-15 pb-20">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="widget-about font-md mb-md-5 mb-lg-0">
                        <div class="logo logo-width-1 wow fadeIn animated">
                            <a href="/"><img src="{{ asset('assets/imgs/theme/LOGO-TL.png')}}" alt="logo"></a>
                        </div>
                        <h5 class="mt-20 mb-10 fw-600 text-grey-4 wow fadeIn animated">Liên lạc</h5>
                        <p class="wow fadeIn animated">
                            <strong>Địa chỉ: </strong>999 phố Washington
                        </p>
                        <p class="wow fadeIn animated">
                            <strong>Điện thoại: </strong>+84 999 999 999
                        </p>
                        <p class="wow fadeIn animated">
                            <strong>Email: </strong>contact@SUPERIDOL.com
                        </p>
                        <h5 class="mb-10 mt-30 fw-600 text-grey-4 wow fadeIn animated">Mạng xã hội</h5>
                        <div class="mobile-social-icon wow fadeIn animated mb-sm-5 mb-md-0">
                            <a href="m.me/110368968380902"><img src="{{ asset('assets/imgs/theme/icons/icon-facebook.svg') }}" alt=""></a>
                            <a href="#"><img src="{{ asset('assets/imgs/theme/icons/icon-twitter.svg') }}" alt=""></a>
                            <a href="#"><img src="{{ asset('assets/imgs/theme/icons/icon-instagram.svg') }}" alt=""></a>
                            <a href="#"><img src="{{ asset('assets/imgs/theme/icons/icon-pinterest.svg') }}" alt=""></a>
                            <a href="#"><img src="{{ asset('assets/imgs/theme/icons/icon-youtube.svg') }}" alt=""></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3">
                    <h5 class="widget-title wow fadeIn animated">Tìm hiểu</h5>
                    <ul class="footer-list wow fadeIn animated mb-sm-5 mb-md-0">
                        <li><a href="/About-us">Về chúng tôi</a></li>
                        <li><a href="#">Thông tin giao hàng</a></li>
                        <li><a href="#">Chính sách bảo mật</a></li>
                        <li><a href="#">Điều khoản &amp; điều kiện</a></li>
                        <li><a href="/contact-us">Kết nối với chúng tôi</a></li>                            
                    </ul>
                </div>
                <div class="col-lg-2  col-md-3">
                    <h5 class="widget-title wow fadeIn animated">Tài khoản</h5>
                    <ul class="footer-list wow fadeIn animated">
                        <li><a href="/user/dashboard">Tài khoản</a></li>
                        <li><a href="/cart">Giỏ hàng</a></li>
                        <li><a href="/wishlist">Sản phẩm yêu thích</a></li>
                        <li><a href="/user/dashboard">Theo dõi đơn hàng của tôi</a></li>                            
                        <li><a href="/user/order">Đơn hàng</a></li>
                    </ul>
                </div>
                <div class="col-lg-4 mob-center">
                    <h5 class="widget-title wow fadeIn animated">Phương thức thanh toán</h5>
                    <div class="row">
                        {{-- <div class="col-md-8 col-lg-12">
                            <p class="wow fadeIn animated">From App Store or Google Play</p>
                            <div class="download-app wow fadeIn animated mob-app">
                                <a href="#" class="hover-up mb-sm-4 mb-lg-0"><img class="active" src="{{ asset('assets/imgs/theme/app-store.jpg')}}" alt=""></a>
                                <a href="#" class="hover-up"><img src="{{ asset('assets/imgs/theme/google-play.jpg')}}" alt=""></a>
                            </div>
                        </div> --}}
                        <div class="col-md-4 col-lg-12 mt-md-3 mt-lg-0">
                            <p class="mb-20 wow fadeIn animated">Hỗ trợ cổng thanh toán an toàn</p>
                            <img class="wow fadeIn animated" src="{{ asset('assets/imgs/theme/payment-method.png')}}" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="container pb-20 wow fadeIn animated mob-center">
        <div class="row">
            <div class="col-12 mb-20">
                <div class="footer-bottom"></div>
            </div>
            <div class="col-lg-6">
                <p class="float-md-left font-sm text-muted mb-0">
                    <a href="privacy-policy.html">Chính sách bảo mật</a> | <a href="terms-conditions.html">Điều khoản & điều kiện</a>
                </p>
            </div>
            <div class="col-lg-6">
                <p class="text-lg-end text-start font-sm text-muted mb-0">
                    &copy; <strong class="text-brand">SUPERIDOL</strong> Đã lấy
                </p>
            </div>
        </div>
    </div>
</footer>
<!-- Messenger Plugin chat Code -->
<div id="fb-root"></div>

<!-- Your Plugin chat code -->
<div id="fb-customer-chat" class="fb-customerchat">
</div>

<script>
  var chatbox = document.getElementById('fb-customer-chat');
  chatbox.setAttribute("page_id", "110368968380902");
  chatbox.setAttribute("attribution", "biz_inbox");
</script>

<!-- Your SDK code -->
<script>
  window.fbAsyncInit = function() {
    FB.init({
      xfbml            : true,
      version          : 'v17.0'
    });
  };

  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
</script>
