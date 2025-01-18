<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.html");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Maven and Tomcat Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 20px;
            background-color: #f0f2f5;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .header {
            background-color: #4CAF50;
            color: white;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 20px;
        }
        .content-section {
            margin: 20px 0;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 8px;
            border-left: 4px solid #4CAF50;
        }
        h1, h2 {
            color: #333;
        }
        h1 {
            margin: 0;
        }
        code {
            background-color: #272822;
            color: #f8f8f2;
            padding: 15px;
            border-radius: 5px;
            display: block;
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Welcome, <%= session.getAttribute("username") %>!</h1>
            <p>Learn about Maven and Tomcat below</p>
        </div>

        <div class="content-section">
            <h2>About Maven</h2>
            <p>Maven is a powerful build automation tool used primarily for Java projects. Here's what you need to know:</p>
            
            <h3>Key Maven Concepts:</h3>
            <ul>
                <li>Project Object Model (POM): Defined in pom.xml, it's the core of a project's configuration</li>
                <li>Dependencies: External libraries your project needs</li>
                <li>Plugins: Extensions that add functionality to the build process</li>
                <li>Lifecycle: A pre-defined sequence of phases (compile, test, package, etc.)</li>
            </ul>

            <h3>Building with Maven:</h3>
            <code>
            # Clean and create WAR file
            mvn clean package
            
            # Location of generated WAR:
            target/your-project-name.war
            </code>
        </div>

        <div class="content-section">
            <h2>About Tomcat</h2>
            <p>Apache Tomcat is a web server and servlet container. Here's how to use it:</p>

            <h3>Deployment Steps:</h3>
            <ol>
                <li>Download and install Tomcat from apache.org</li>
                <li>Start Tomcat server:
                    <code>
                    # Windows
                    %CATALINA_HOME%\bin\startup.bat
                    
                    # Linux/Mac
                    $CATALINA_HOME/bin/startup.sh
                    </code>
                </li>
                <li>Deploy WAR file:
                    <code>
                    # Copy WAR to webapps directory
                    cp target/your-project.war $CATALINA_HOME/webapps/
                    </code>
                </li>
                <li>Access your application:
                    <code>
                    http://localhost:8080/your-project
                    </code>
                </li>
            </ol>

            <h3>Important Tomcat Directories:</h3>
            <ul>
                <li>/bin - Startup/shutdown scripts</li>
                <li>/webapps - Web applications</li>
                <li>/conf - Configuration files</li>
                <li>/logs - Log files</li>
            </ul>
        </div>
    </div>
</body>
</html>