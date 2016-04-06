// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.

//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
	// $("#course_search").submit(function() {
 //    	$.getScript(this.href);
 //    	return false;
 //  	});
	

	// $(document).on('submit', '#course_search', function() {
	// 	$.get($("#course_search").attr("action"), $("#course_search").serialize(),null,"script");
	// 	return false;
	// });

	$("#course_search input").keyup(function() {
		$.get($("#course_search").attr("action"), $("#course_search").serialize(),null,"script");
		return false;
	});

	// $("#course_search input").keyup(function() {
	// 	$.get(this.action, $(this).serialize(),null,"script");
	// 	return false;
	// });


	// $("#course_search").submit(function() {
	// 	$.get(this.action, $(this).serialize(),null,"script");
	// 	return false;
	// // });
	// $("#course_search input").keyup(function() {
	// 	$.get($("#course_search").attr("action"), $("#course_search").serialize(),null,"script");
	// 	return false;
	// });
	// $('input').focus(function() {
	// 	$(this).attr('originalvalue', $(this).val());
	// });
	// $('input').on('keyup' function() {
	// 	if($this).val()===$(this).attra('originalvalue')) return;
	// 	alert('something went wrong')
	// });

});

