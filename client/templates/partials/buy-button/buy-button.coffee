Template.BuyButton.events
  'click .buy-button': (event, tmpl) ->
    item = _.extend {count: 1, size: ''}, tmpl.data
    if not Basket.findOne {_id: item._id}
      Basket.insert item
    else
      Basket.update {_id: item._id}, {
        $inc: {
          count: 1
        }
      }
    Router.go '/basket'