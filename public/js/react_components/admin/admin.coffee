React     = require 'react'
#$         = require 'jquery'
#require('imports?jQuery=jquery!readmore/readmore')
#require('readmore/readmore')


{div, img, h1, ul, li, h3} = React.DOM

Well      = require 'react-bootstrap/Well'

Component = React.createClass
  render: ->
    console.debug "admin"
    (div {key: 'adminContainer'}, [
      (h1 {}, ['Admin'])
      (div {key: 'statsRow', className: 'row'}, [
        (div {key: 'stats1', className: 'col-md-6'}, [

          (Well {key: 'well1'}, [
            (h3 {}, ['Stats'])
            (ul {}, [
              (li {}, [
              ])
              (li {}, [
              ])
            ])
          ])
        ])
        (div {key: 'stats2', className: 'col-md-6'}, [

          (Well {key: 'well2'}, [
            (h3 {}, ['Actions'])
            (ul {}, [
              (li {}, [
              ])
              (li {}, [
              ])
            ])
          ])
        ])
      ])
    ])

module.exports = Component
