app = require 'application'
View = require './view'


class NavView extends View
    el: '#nav'
    activeView: null
    events:
        'click a': 'routeEventWrap'
        'click #clear_list': 'clearMacros'

    afterRender: =>
        @$('.nav li').removeClass('active')
        @$("##{@activeView}_nav").addClass('active')

    clearMacros: =>
        app.macros.clear()

    routeEventWrap: (event) =>
        if not app.user.get('configured')
            return event.preventDefault()

        @routeEvent event
        

module.exports = NavView
