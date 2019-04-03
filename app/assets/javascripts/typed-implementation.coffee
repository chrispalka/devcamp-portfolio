ready = ->
  new Typed '.element',
    strings: [
      "I hope you enjoy my collage of some of my finest photography moments, ^500 captured just for you!"
    ]
    typeSpeed: 30
  return


$(document).on 'turbolinks:load', ready

