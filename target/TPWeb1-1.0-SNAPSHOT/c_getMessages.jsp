<%-- 
    Document   : c_valideLogin
    Created on : Sep 27, 2016, 2:16:19 PM
    Author     : Ersagun
--%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.miage.m2sid.util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List" %>
<%@page import="org.hibernate.Transaction" %>
<%@page import="org.miage.m2sid.chat.Message" %>

<%! Session sessionHibernate;%>
<%! Transaction tx;%>

<%
    sessionHibernate = HibernateUtil.currentSession();
    tx = sessionHibernate.beginTransaction();
    List messages = sessionHibernate.createQuery("from Message").list();
    
    /*
    for (int i = 0; i < messages.size(); i++) {
        System.out.println(((Message) messages.get(i)).getCorps());
    }*/
    request.setAttribute("lesMessages", messages);
    RequestDispatcher rd = getServletContext().getRequestDispatcher("/v_messages.jsp");
    rd.forward(request, response);
    HibernateUtil.closeSession();
%>