'use strict'

# Declare app level module which depends on filters, and services

window.app = angular.module('app', [
	'ngRoute'
	'ngAnimate'
	'partials'
])

app.config([
	'$routeProvider'
	'$locationProvider'
	($routeProvider, $locationProvider, config) ->
		$routeProvider
			.when('/', {templateUrl: '/partials/main.html'})
			.otherwise({redirectTo: '/'})

		# Without server side support html5 must be disabled.
		$locationProvider.html5Mode(false)
])

init = ->
	#do some initialization here

window.initialized = false
class Controller
  constructor: (@scope) ->
    for k in _.functions @
      @scope[k] = @[k] if k!="constructor"
    if window.initialized
      return
    window.initialized = true
    init()

# bootstrap angular
angular.element(document).ready ->
  angular.bootstrap document, ['app']
