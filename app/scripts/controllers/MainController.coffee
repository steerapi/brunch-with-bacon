'use strict'

class MainController extends Controller
  @$inject: ['$scope']
  constructor: (@scope) ->
    super @scope
  
app.controller 'MainController', MainController
