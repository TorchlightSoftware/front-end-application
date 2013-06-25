define ["flight/component", 'templates/helloWorld'],
  (defineComponent, templ) ->
    navBar = ->

      @after "initialize", ->
        @$node.append templ(
          foo: 'some val'
        )

    return defineComponent(navBar)
