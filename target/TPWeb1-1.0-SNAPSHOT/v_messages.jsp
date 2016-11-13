<%-- 
    Document   : v_login
    Created on : Oct 4, 2016, 2:28:58 PM
    Author     : Ersagun
--%>

<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8" %>
<%@page import="org.miage.m2sid.chat.Particulier" %>
<%@page import="org.miage.m2sid.chat.Entreprise" %>
<%@page import="org.miage.m2sid.util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List" %>
<%@page import="org.hibernate.Transaction" %>
<%@page import="org.miage.m2sid.chat.Message" %>

<%! Session sessionHibernate;%>
<%! Transaction tx;%>
<%!  ArrayList<Message> lesMessages;%>

<html>
    <head>
        <meta charset="utf-8" />
        <title>Chat</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <c:if test="${sessionScope.typeAbonne == 'particulier'}">
            <h1 style="text-align: center" > Bonjour <%=((Particulier) session.getAttribute("user")).getNom() + " " + ((Particulier) session.getAttribute("user")).getPrenom()%></h1>
        </c:if>
        <c:if test="${sessionScope.typeAbonne == 'entreprise'}">
            <h1 style="text-align: center" > Bonjour <%=((Particulier) session.getAttribute("user")).getNom() + " " + ((Particulier) session.getAttribute("user")).getPrenom()%></h1>
        </c:if>
        <div class="chat_window">
            <div class="top_menu">
                <div class="buttons">
                    <div class="button close">
                    </div>
                    <div class="button minimize">
                    </div>
                    <div class="button maximize">
                    </div>
                </div>
                <div class="title">Chat by Ersagun</div>
            </div>              
                <ul class="messages">
                <c:forEach var="message" items="${lesMessages}">
                    <li class="message left appeared">
                        <div class="avatar"></div>
                        <div class="text_wrapper">
                            <div class="text"><c:out value="${message.corps}"/></div>
                        </div>
                    </li>
                </c:forEach>            
            </ul>
            <div class="bottom_wrapper clearfix">
                <div class="message_input_wrapper">
                    <input class="message_input" placeholder="Type your message here..." /></div>
                <div class="send_message"><div class="icon"></div>
                    <div class="text">Send</div>
                </div>
            </div>
        </div>

        <script src="js/jquery.min.js"></script>
        <script src="js/chat.js"></script>
    </body>
</html>
