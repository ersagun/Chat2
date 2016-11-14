/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    window.setInterval(function () {
            $.get('c_getMessagesJson.jsp', function (responseText) {
            var response = eval('(' + responseText + ')');
            $("#listeDeMessage").empty();
            for (i in response)
            {
                $("#listeDeMessage").append("<li class=\"message left appeared\"><div class=\"avatar\"></div><div class=\"text_wrapper\"><div class=\"text\">"+response[i]["login"]+" - Objet : "+response[i]["objet"]+", Corps: "+response[i]["corps"]+"</div></div></li>");
           
            }
          
             });
    var scr = $('#listeDeMessage')[0].scrollHeight;
$('#listeDeMessage').animate({scrollTop: scr},1000);
    }, 1000);
});