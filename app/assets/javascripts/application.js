 // This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require underscore
//= require_tree .



$(document).ready(function() {
  $('#request_product_id').change(function() {
    $.ajax({ url: '/products/' + this.value + '/form_partial' });
   });

  $('#workout_details').change(function(){
		var value = $('#workout_details').val();	
		
		if(value == 'Run'){
			$('.optional-fields').hide();
			$('.weight-optional').hide();
			$('.run-optional').show();
			$('.bike-optional').hide();
			$('.swim-optional').hide();
		}
		else if(value == 'Bike'){
			$('.optional-fields').hide();
			$('.weight-optional').hide();
			$('.run-optional').hide();
			$('.bike-optional').show();
			$('.swim-optional').hide();


		}
		else if(value == 'Swim')
		{
			$('.optional-fields').hide();
			$('.weight-optional').hide();
			$('.run-optional').hide();
			$('.bike-optional').hide();
			$('.swim-optional').show();
		}
		
		else if(value == 'Weights'){
			$('.optional-fields').show();
			$('.weight-optional').show();
			$('.run-optional').hide();
			$('.bike-optional').hide();
			$('.swim-optional').hide();
			
		}
		
		// console.dir(value);
	});
	$('#workout_details').ready(function(){
		var value = $('#workout_details').val();
			if(value == 'Weights'){
			$('.optional-fields').show();
			$('.weight-optional').show();
			$('.run-optional').hide();
			$('.bike-optional').hide();
			$('.swim-optional').hide();
		}
			});
	$('.fieldm').click(function(){
		var value = $('#workout_details').val();
		if(value == 'Weights'){
		$('.optional-fields').show();
			$('.weight-optional').show();
			$('.run-optional').hide();
			$('.bike-optional').hide();
			$('.swim-optional').hide();
			$('#plan_workouts_attributes_0_details').hide();
		}
		});
});


function remove_fields(link) {
  $(link).prev("input[type=hidden]").val("1");
  $(link).closest(".fields").hide();
}

function add_fields(link, association, content) 
{ var new_id = new Date().getTime(); var regexp = new RegExp("new_" + association, "g"); 
$(link).parent().before(content.replace(regexp, new_id)); 
}

function x(){
	console.dir($('#workout_details').val());
}
// $('#workout_details').change(function(){
// 	var value = $('#workout_details').val();
// 	if(value == 'Swim' || value == 'Run'){
// 		$('.optional_fields').hide();
// 	};
// 	console.dir(value);
// });

