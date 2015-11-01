Template.InstaFeed.helpers
  feed: ->
    ReactiveMethod.call('getInstaPhotos').slice 0, 6