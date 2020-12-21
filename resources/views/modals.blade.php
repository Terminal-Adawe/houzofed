<div class="status-modal fade" id="status-modal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p>
        	@if (session('status'))
				<div class="alert alert-success">
					<!-- {{ session('status') }} -->
					You have successfully subscribed to our newsletter
				</div>
			@endif
        </p>
      </div>
    </div>
  </div>
</div>
