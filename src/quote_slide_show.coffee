# Quote slide show
class @QuoteSlideShow
  constructor: (quotes)->
    @currentQuote = 0
    @quotes = $.shuffle(quotes)
    @quotes.hide().first().show()
    @totalQuotes = quotes.length

  start: ->
    rotation = setInterval(((self) ->
      -> self.showQuote()
    )(@), 5000)

  showQuote: ->
    $(@quotes[@currentQuote]).fadeOut 500, =>
      if @currentQuote >= (@quotes.length - 1)
        @currentQuote = 0
      else
        @currentQuote++
      $(@quotes[@currentQuote]).fadeIn(500)