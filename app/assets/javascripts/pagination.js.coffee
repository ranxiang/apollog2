jQuery ->
  if $('#infinite-scrolling').size() > 0
    $(window).on 'scroll', ->
      more_posts_url = $('.pagination .next_page a').attr('href')
      if more_posts_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
        $('.pagination').html('<span class="glyphicon glyphicon-refresh glyphicon-refresh-animate" aria-hidden="true"></span>')
        $.getScript more_posts_url
      return
    return
