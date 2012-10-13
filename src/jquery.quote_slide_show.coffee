###
  jQuery Quote Slide Show plugin
  http://github.com/michaelkoper/quote_slide_show

  Copyright (c) 2012 Michael Koper

  Dual licensed under the MIT and GPL licenses.
  Uses the same license as jQuery, see:
  http://jquery.org/license

  @version 0.1

  Example usage:
  $('.quote').quoteSlideShow({
    speed: 7000,     // defaults to 5000
    random: true,    // defaults to false
    fadeSpeed: 1000  // defaults to 500
  });

 ###

$ = jQuery

jQuery.fn.extend

  quoteSlideShow: (options)->

    defaults =
      random: false
      delay: 5000
      fadeSpeed: 500

    options = $.extend options, defaults

    currentQuote = 0
    totalQuotes = @length


    start= =>
      shuffle() if defaults.random
      @hide().first().show()

      playInterval = setInterval(->
        showQuote()
      , options.delay)

    showQuote= =>
      $(@[currentQuote]).fadeOut options.fadeSpeed, =>
        if currentQuote >= (totalQuotes - 1)
          currentQuote = 0
        else
          currentQuote++
        $(@[currentQuote]).fadeIn(options.fadeSpeed)

    shuffle= =>
      i = @length

      while i
        j = parseInt(Math.random() * i)
        x = @[--i]
        @[i] = @[j]
        @[j] = x

    start()

    @
