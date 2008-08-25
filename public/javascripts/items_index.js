Event.addBehavior({
  'body' : function() {
    $('add_form').hide();
    $('add_new_link').show();
    $('save_changes').hide();
  },
  '#add_new_link:click' : function(e) {
    $('add_form').toggle();
    e.stop();
  },
  '#add_form' : Remote.Form({onComplete: function() {
    Event.addBehavior.reload();
  }}),
  'input[type=checkbox]:click' : function(e) {
    var id = this.id.match(/\d{1,}$/);
    var auth_token = this.up('form').
                          select('[name=authenticity_token]').
                          first().value;
    new Ajax.Request('/items/' + id, 
                     {asynchronous:true, 
                      evalScripts:true, 
                      method: 'put',
                      parameters: {
                        authenticity_token: auth_token
                      }});
  }
});