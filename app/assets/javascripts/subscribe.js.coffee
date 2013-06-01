jQuery ->
  $('button.subscribe').click (e) =>
    target = $(e.currentTarget)
    target.hide()
    target.siblings('.unsubscribe').show()
    
    $.post("/subscriptions", { participation_id: target.data('id') })

  $('button.unsubscribe').click (e) =>
    target = $(e.currentTarget)
    target.hide()
    target.siblings('.subscribe').show()
    
    $.post("/subscriptions/#{target.data('id')}", { _method: 'delete' })