<%-- 
    Document   : v_login
    Created on : Oct 4, 2016, 2:28:58 PM
    Author     : Ersagun
--%>

<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Connect</title>
               <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        
        
        
        <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<h3>
				CHAT by Ersagun Yalcintepe
			</h3>
			<h3>
				Se connecter
			</h3>
			<form role="form" method="post" action="c_valideLogin.jsp">
				<div class="form-group">
					 
					<label for="inputLogin">
						login
					</label>
					<input type="text" class="form-control" id="inputLogin" />
				</div>
				<div class="form-group">
					 
					<label for="inputMdp">
						Mot de passe
					</label>
					<input type="password" class="form-control" id="inputMdp" />
				</div>
		
				<button type="submit" value="connect"  class="btn btn-default">
					Se connecter
				</button>
			</form> 
		</div>
	</div>
</div>
    </body>
</html>
