Template.Category.helpers
  items: ->
    selectedCategory = Router.current().params.category
    items = Template.instance().data.fetch()
    _.filter items, (item) ->
      item.category is selectedCategory