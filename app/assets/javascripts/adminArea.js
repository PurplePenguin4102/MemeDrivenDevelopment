$(function () {
    $('input[type="checkbox"]').change(function() { 
        if($(this).is(":checked")) { 
            var d = new Date(); 
            var month = d.getMonth() + 1;
            var datestr = "" + d.getFullYear() + "-" + month + "-" + d.getDate();
            $('#post_publish_date').val(datestr);
        } 
    });
})