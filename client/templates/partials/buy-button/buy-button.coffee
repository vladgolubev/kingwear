Template.BuyButton.events
  'click .buy-button': (event, tmpl) ->
    Basket.insert tmpl.data
    Router.go '/basket'