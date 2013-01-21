String.prototype.capitalize = ->
    this.charAt(0).toUpperCase() + this.slice(1)


module.exports =
    roundFloat: (percentage, precision=100) ->
        Math.round(percentage * precision) / precision

    pluralize: (word, quantity) ->
        if quantity > 1
            return "#{word}s"
        else
            return word
