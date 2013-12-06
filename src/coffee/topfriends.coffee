define [
  'angular'
  'bootstrap'
  'bootstrap.dropdown'
], (angular) ->
  utils = angular.module('angular.topfriends.utils', [])
  utils.directive 'schDropdown', () ->
    return link: (scope, element) ->
      unless element.hasClass('has-dropdown')
        $(element).dropdown().addClass('has-dropdown')