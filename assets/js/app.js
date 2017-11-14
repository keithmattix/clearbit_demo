// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"
$('document').ready(function() {
    $('.submit').on('click', function(e) {
        e.preventDefault();
        $.ajax({
            url: '/clearbit_search',
            type: 'POST',
            xhrFields: {
                withCredentials: true
            },
            beforeSend: function(xhr) {
                xhr.setRequestHeader('x-csrf-token', $('.csrf-token').val());
            },
            dataType: 'json',
            data: {
                email: $('.search-box').val(),
            },
            success: function(response) {
                $('.person .name').text(response['name']['fullName']);
                $('.person .avatar img').attr('src', response['avatar']);
                $('.person .employment .value').text(response['employment']['name'] + " - " + response['employment']['title']);
                $('.person .github .profile').text(response['github']['handle']);
                $('.person .github .profile').attr('href', 'http://github.com/' + response['github']['handle']);
                $('.person .location .value').text(response['location']);
                $('.person').removeClass('invisible');
            }
        });
    });
});