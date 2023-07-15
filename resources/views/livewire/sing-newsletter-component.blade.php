@if (Session::has('messagen'))
    <div class="alert alert-success">
        <strong>Success | {{ Session::get('messagen') }}</strong>
    </div>
@endif
<form class="form-subcriber d-flex wow fadeIn animated" wire:submit.prevent="addnewsletter">
    @error('email')
        <p class="text-danger">{{ $message }}</p>
    @enderror
    <input type="email" class="form-control bg-white font-small" placeholder="Nhập email của bạn" wire:model="email" type="email">
    <button class="btn bg-dark text-white js-add-newletter" type="submit">Gửi</button>
</form>
{{-- @push('scripts')
<script>
    $('.js-add-newletter').on('click', function(e) {
        e.preventDefault();
    });

    $('.js-add-newletter').each(function() {
        $(this).on('click', function() {
            swal("Thành công !", "success");
            $(this).addClass('js-addedwish-b2');
            $(this).off('click');
        });
    });
</script>
@endpush --}}