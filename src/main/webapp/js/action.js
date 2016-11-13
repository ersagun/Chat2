/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){ 
    $("#particulierForm").hide();
    $("#entrepriseForm").hide();
    
    $("input[name='typeAbonne']").click(function() {     
        var val = $(this).attr("id");
        console.log(val);
        if(val =="particulier"){
            $("#entrepriseForm").hide();
            $("#particulierForm").show();
        }
        
        if(val =="entreprise"){
           $("#entrepriseForm").show();
           $("#particulierForm").hide();
        }
    }); 
});