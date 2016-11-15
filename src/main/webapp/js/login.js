/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    
    $('.radioButtton').change(function () {
        $('#mdp').prop('disabled', false);
        $('#login').prop('disabled', false);
        $('#connectButton').prop('disabled', false);
    });
    if($('#part').is(':checked') || $('#ent').is(':checked') ){ 
     window.location.reload(true)    
    }
});