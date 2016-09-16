html = "<%= j render(partial: '/thumbnails/show', locals: { parent: @parent, thumbnail: @thumbnail, source_photo: @source_photo, image_size: :small }) %>"
# in case there is a new Evidence, TitlePage, ContextImage, correct it
$.update_new_publishable_form(html)

for container_id in $.thumb_container_ids(html, 'thumb')
    do (container_id) ->
        selector = '#' + container_id
        $(selector).attr('data-thumbnail', <%= @thumbnail.id %>)
        $(selector).html(html)
        $(selector).addClass('processing')
        $.poll_thumbnail(selector)

html = "<%= j render(partial: '/photos/edit_photo_link', locals: { item: @parent, photo: @thumbnail, source_photo: @source_photo }) %>"

for container_id in $.thumb_container_ids(html, 'edit-photo')
    do (container_id) ->
        selector = '#' + container_id
        $(selector).attr('data-thumbnail', <%= @thumbnail.id %>)
        $(selector).html(html)