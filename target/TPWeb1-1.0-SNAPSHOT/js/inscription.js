/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    if($('#particulier').is(':checked') || $('#entreprise').is(':checked') ){ 
     window.location.reload(true)    
    }
});