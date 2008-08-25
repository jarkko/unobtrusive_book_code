Event.addBehavior({
  'body' : function() {
    $('add_form').hide();
    $('add_new_link').show();
  },
  '#add_new_link:click' : function(e) {
    $('add_form').toggle();
    e.stop();
  },
  '#add_form' : Remote.Form
});