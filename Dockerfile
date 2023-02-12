FROM atlassian/confluence:8.0.3
USER root 
 # Add proxy unpacking to container 
COPY atlassian-agent-use-in-JAVA_OPTS.jar /opt/atlassian/confluence/ 
 # Set Startup Loading Agent Package
RUN echo "export CATALINA_OPTS=\"-javaagent:/opt/atlassian/confluence/atlassian-agent-use-in-JAVA_OPTS.jar \${CATALINA_OPTS}\"" >> /opt/atlassian/confluence/bin/setenv.sh
