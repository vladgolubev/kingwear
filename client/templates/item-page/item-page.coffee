Template.ItemPage.onCreated ->
  @item = new ReactiveVar false
  selectedItem = Router.current().params.item
  items = Template.instance().data.fetch()
  @item.set _.find items, (item) ->
    item._id._str is selectedItem

Template.ItemPage.onRendered ->
  @$('.row.photos-row a').fluidbox()

Template.ItemPage.helpers
  item: ->
    Template.instance().item.get()
  photos: ->
    links = Template.instance().item.get().photos
    _.map links, (link, index) ->
      link: link
      first: index is 0
      medium: index < 3
