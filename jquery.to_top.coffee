###
jquery.to_top.js v0.0.1
Baptiste Lecocq - https://github.com/baptistelecocq/to_top

Released under the MIT license
http://www.opensource.org/licenses/mit-license.php
###

(($) ->
  $.fn.to_top = (options) ->
    defaults =
      limit: 300
      speed: 400

    opt = $.extend(defaults, options)

    @each ->
      $$ = $(this)
      $$.css
        bottom: 10
        cursor: 'pointer'
        display: 'none'
        position: 'fixed'
        right: 10

      $$.bind 'click', ->
        $('html, body').animate
          scrollTop: 0
        , opt.speed

      $(window).bind 'scroll', ->
        if $(this).scrollTop() > opt.limit
          $$.fadeIn()
        else
          $$.fadeOut()

) jQuery
