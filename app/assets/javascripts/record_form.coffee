@RecordForm = React.createClass
  getInitialState: ->
    title: ''
    date: ''
    amount: ''
  handleChange: (e) ->
    name = e.target.name
    @setState "#{name}": e.target.value
  handleSubmit: (e) ->
    e.preventDefault()
    $.post '', { record: @state }, (data) =>
      @props.handleNewRecord data
      @setState @getInitialState()
    , 'JSON'
  valid: ->
    @state.title && @state.date && @state.amount
  render: ->
    React.DOM.form
      className: 'form-inline'
      onSubmit: @handleSubmit
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          className: 'form-control'
          type: 'text'
          placeholder: 'Date'
          name: 'date'
          value: @state.date
          onChange: @handleChange
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder: 'Title'
          name: 'title'
          value: @state.title
          onChange: @handleChange
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          className: 'form-control'
          type: 'number'
          placeholder: 'Amount'
          name: 'amount'
          value: @state.amount
          onChange: @handleChange
      React.DOM.button
        className: 'btn btn-prmimary'
        type: 'submit'
        disabled: !@valid()
        'Create Record'
