
alight.d.al.enable = (scope, cd, element, exp) ->
    setter = (value) ->
        if value
            f$.removeAttr element, 'disabled'
        else
            f$.attr element, 'disabled', 'disabled'

    cd.watch exp, setter


alight.d.al.disable = (scope, cd, element, exp) ->
    setter = (value) ->
        if value
            f$.attr element, 'disabled', 'disabled'
        else
            f$.removeAttr element, 'disabled'

    cd.watch exp, setter
