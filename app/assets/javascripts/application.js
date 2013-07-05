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
//= require turbolinks
//= require_tree .
//= require bootstrap

jQuery.ajaxSetup({
    'beforesend': function(xhr) {
        xhr.setRequestHeader("Accept","text/JavaScript")
    }
})
$(document).ready(function() {
    initpage();
});
$(window).bind('page:change',function(){
    initpage();
});
function initpage()
{
    $("#new_designation").submit(function(){
        $.post($(this).attr("action"),$(this).serialize(),null,"script");
        return false;
    }); 
   
   $("#skill_form").submit(function(){
       $.post($(this).attr("action"),$(this).serialize(),null,"script");
       return false;
   })
    $("#employee_birthday").datepicker({
        defaultDate: "-30y",
        changeMonth: true,
        changeYear: true
    });
    
    $("#employee_joining_date").datepicker({
        defaultDate: "-1y",
        changeMonth: true,
        changeYear: true,
        minDate: "-5y -4m",
        maxDate: "-1d"
    });
    
    $("#employeerec_work_to").datepicker({
        defaultDate: "-1y",
        changeMonth: true,
        changeYear: true,
        minDate: "-5y -4m",
        maxDate: "-1d"
    });
}