require('jquery')
require('foundation-sites')

$(document).on('turbolinks:load', function() {
    $(function(){ $(document).foundation(); });
});