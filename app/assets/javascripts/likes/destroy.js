$('#likes_buttons_<%= @post.id %>').html("<%= j(render partial: 'likes/like', locals: {post: @post}) %>");
