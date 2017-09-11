
@Record = React.createClass
  render: ->
    React.DOM.tr {id: @props.record.id},
      React.DOM.td null, @props.record.date
      React.DOM.td null, @props.record.title
      React.DOM.td null, amountFormat(@props.record.amount)
