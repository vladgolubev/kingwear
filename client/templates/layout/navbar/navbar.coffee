Template.NavBar.helpers
  categories: ->
    items = Template.instance().data.fetch()
    _.pluck items, 'category'

  basketCount: ->
    _.reduce Basket.find().fetch(), (memo, value) ->
      memo + parseInt(value.count)
    , 0