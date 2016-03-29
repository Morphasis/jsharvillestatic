app = angular.module('myapp', []);

app.directive 'indexHeader', () ->
  $ ->
  $('.header').typed
    strings: [
      "Jack Sharville"
    ]
    typeSpeed: 0
  $('.sub-header').typed
    strings: [
      "I write code, it's that simple."
    ]
    typeSpeed: 0
  hideBlinker = () ->
    $("span.typed-cursor").css("display","none");
  setTimeout(hideBlinker , 5000)
  return

app.directive 'randomColor', () ->
  link: (scope) ->
    $cv = $('#colorvomit')
    col = parseInt('111', 16)
    while col <= parseInt('fff', 16)
      hex = col.toString(16)
      $cv.append '<span style="background-color:#' + hex + ';"> &nbsp; </span>'
      col++

    # scope.colors = new Array
    # col = 0x0
    # while col <= 0xFFF
    #   if (col > 0x111 && col < 0xFFF)
    #     scope.colors.push '#' + col
    #   col++
    # autocolor = (hexcode) ->
    #   console.log col.length
    #   colorChange = () ->
    #     $("#colorvomit").append("<span style='padding: 1px 10px 1px 10px;background-color: " +hexcode+";border: 1px solid black;'></span>")
    #   setTimeout(colorChange, 5000)
    # _.each(scope.colors, autocolor)
