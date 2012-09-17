$ ->
  $('[data-src]').each ->
    $el = $(this)
    src = $el.data('src')
    $.get src, (data) ->
      $code = $("<code/>")
      $code.attr("class", $el.data("language"))
      $code.text(data)
      $el.append $code
      hljs.highlightBlock($code.get(0))

  $("#slideshow").each ->
    $container = $(this)
    $slides = $container.find("ul").children()
    currentSlide = 0
    update = (diff) ->
      currentSlide += diff
      currentSlide = currentSlide % $slides.length
      $slides.slideUp()
      $slides.eq(currentSlide).slideDown()

    $next = $container.find(".next").click -> update(1)
    $prev = $container.find(".prev").click -> update(-1)

    $slides.hide()
    $slides.eq(0).show()



