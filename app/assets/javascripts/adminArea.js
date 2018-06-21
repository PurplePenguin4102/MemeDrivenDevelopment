$(function () {
    $('input[type="checkbox"]').change(function() { 
        if($(this).is(":checked")) { 
            var d = new Date(); 
            $('#post_publish_date').val(d.getFullYear() + "-" + (d.getMonth()+1) + "-" + d.getDate());
        } 
    });
})