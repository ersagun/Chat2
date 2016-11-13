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
<%@page import="org.miage.m2sid.chat.Particulier" %>
<%@page import="org.miage.m2sid.chat.Message" %>

<%! Session sessionHibernate;%>
<%! Transaction tx;%>
<c:set var="typeAbonne" scope="session" value="${param.typeAbonne}" />

<c:if test="${typeAbonne == 'particulier'}">
    <p>My type is: <c:out value="${typeAbonne}"/><p>
        <jsp:useBean id="particulier" scope="session" class="org.miage.m2sid.chat.Particulier" />
        <jsp:setProperty name="particulier" property="*" />
    <p>My nom is: <c:out value="${particulier.nom}"/><p>
    <p>My prenom is: <c:out value="${particulier.prenom}"/><p>
    <p>My login is: <c:out value="${particulier.login}"/><p>
    <p>My mdp is: <c:out value="${particulier.mdp}"/><p></p>
    <%
        sessionHibernate = HibernateUtil.currentSession();
        tx = sessionHibernate.beginTransaction();
        Particulier p = new Particulier(particulier.getNom(), particulier.getPrenom(), particulier.getMdp(), particulier.getLogin());
        session.setAttribute("user", p);
        Message m = new Message("objet", "corps");
        m.setExpediteur(p);
        sessionHibernate.save(p);
        sessionHibernate.save(m);
        tx.commit();
        HibernateUtil.closeSession();
        // HibernateUtil.getSessionFactory().close();
    %>
    <jsp:forward page="v_messages.jsp" />
    <%--
    <c:set var="loginNotExist" scope="page" value="true" />
    <c:forEach items="${list}" var="item">
        <c:if test="${item.login ==particulier.login}">
            <c:set var="loginNotExist" scope="page" value="false" />
        </c:if>
    </c:forEach>
    <c:choose>
        <c:when test="${loginNotExist}">
            <jsp:forward page="v_messages.jsp" />      
        </c:when>
        <c:otherwise>
            <jsp:forward page="v_inscrire.jsp" />      
        </c:otherwise>
    </c:choose>

    --%>
</c:if>


<c:if test="${typeAbonne == 'entreprise'}">
    <% System.out.println("HAMBOUDLAH");%>
    <p>My type is: <c:out value="${typeAbonne}"/><p>
        <jsp:useBean id="entreprise" scope="session" class="org.miage.m2sid.chat.Entreprise" />
        <jsp:setProperty name="entreprise" property="*" />
    </c:if>

