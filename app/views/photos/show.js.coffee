($ '#queued-photo-' + <%= @photo.id %>).html("<%= j render(partial: 'photos/queued_photo', locals: { photo: @photo, book: @book }) %>")
