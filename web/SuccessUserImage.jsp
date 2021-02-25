<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>  
<html>  
    <head>  
        <title>Success: Upload User Image</title>  
    </head>  
    <body>  
        <h2>  
            Struts2 File Upload Example  
        </h2>  
        User Image: <s:property value="userImage" /><br/>  
        Content Type: <s:property value="userImageContentType" /><br/>  
        File Name:  <s:property value="userImageFileName" /><br/>  
        <!--Uploaded Image: <img src="C:/Libraries/Apache Tomcat/apache-tomcat-9.0.41/work/Catalina/localhost/lectus/portadas/<s:property value="userImageFileName"/>" width="100" height="100" />  -->
        <!--<img src="C:/Libraries/Apache Tomcat/apache-tomcat-9.0.41/work/Catalina/localhost/lectus/portadas/alicia"/>-->
        <img src="../portadas/<s:property value="userImageFileName"/>" width="400" height="320" alt="imagen" loading="lazy">
                
                                
        
</body>  
</html>  