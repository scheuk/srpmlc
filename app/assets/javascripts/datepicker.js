/**
 * Created with JetBrains RubyMine.
 * User: a913795
 * Date: 1/10/13
 * Time: 7:39 PM
 * To change this template use File | Settings | File Templates.
 */
$(document).on("focus", "[class~='datepicker']", function(e){
    $(this).datepicker({"format": "yyyy-mm-dd", "weekStart": 1, "autoclose": true});
});
