// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require bootstrap-sprockets
//= require bootstrap
//= require_tree .
//= require adminArea.js

document.addEventListener("turbolinks:load", function () {
    $('pre code').each(function(i, block) {
      hljs.highlightBlock(block);
    });

    $(function () {
        $('#post_published').change(function() { 
          if($(this).is(":checked")) { 
            var d = new Date(); 
            var month = d.getMonth() + 1;
            var datestr = "" + d.getFullYear() + "-" + month + "-" + d.getDate();
            $('#post_publish_date').val(datestr);
          } 
        });
      });
});

