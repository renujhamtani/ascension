React     = require 'react/react-with-addons'

{div, img, h1, ul, li} = React.DOM

Component = React.createClass
  render: ->
    (h1 {}, ['About'])

module.exports = Component
