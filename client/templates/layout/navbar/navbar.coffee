Template.NavBar.helpers
  categories: ->
    items = Template.instance().data.fetch()
    _.pluck items, 'category'