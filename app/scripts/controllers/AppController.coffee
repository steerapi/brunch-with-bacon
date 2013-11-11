'use strict'

class AppController extends Controller
  @$inject: ['$scope']
  constructor: (@scope) ->
    super @scope
    @scope.app =
      title: "Brunch with Bacon"
  
app.controller 'AppController', AppController
