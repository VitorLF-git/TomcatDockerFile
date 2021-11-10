# ---------------- WORK IN PROGRESS ----------------------------------------------
# WINDOWS CMD:
# docker run -p 80:8080 -v %cd%:/usr/local/tomcat/webapps/ tomcat
# LINUX:
# docker run -p 80:8080 -v $(pwd):/usr/local/tomcat/webapps/ tomcat
# POWERSHELL:
# docker run -p 80:8080 -v ${pwd}:/usr/local/tomcat/webapps/ tomcat
# --------------------------------------------------------------------------------

# --------------------RUN THOSE 2 COMMANDS TO START THE SERVER--------------------
# docker build -t tomcat -f tomcat.Dockerfile .
# docker run -p 80:8080 tomcat
# --------------------------------------------------------------------------------

FROM tomcat:9.0

# Change from sample.war to your own war file
ADD sample.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]