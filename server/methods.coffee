Meteor.methods
  saveOrder: (order) ->
    check order, Object
    Orders.insert order
  getInstaPhotos: ->
    check @, Match.Any
    options = tagName: 'kingstreetwear'
    photos = []

    Async.runSync((done) ->
      InstagramFetcher.fetchImages.fromTag options, (images, pagination) =>
        for image, index in images
          if index < 6
            photos.push {
              directLink: image.images.low_resolution.url
              url: image.link
            }
          done null, photos
    ).result