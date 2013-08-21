jQuery.fn.submitOnCheck = function() {
	var d = new Date();
	this.find('input[type=submit]').remove();
	this.find('#item_user_updated_at').val(new Date());
	this.find('input[type=checkbox]').click(function(){
		$(this).closest('form').submit();
	});
	return this;
}

$(function(){
	$('.edit_item').submitOnCheck()
  $( "#incomplete" ).sortable()
  $( "#incomplete" ).disableSelection()
});



// CoffeeScript Version:
//
// jQuery.fn.submitOnCheck = ->
//   @find('input[type=submit]').remove()
//   @find('input[type=checkbox]').click ->
//     $(this).parent('form').submit()
//   this
//
// jQuery ->
//   $('.edit_task').submitOnCheck()
