# Use nginx official image as base
FROM nginx

# Label to identify creator
LABEL MAINTAINER = JClarke96

# Copy app1 folder to default index.html location
COPY app1 /usr/share/nginx/html

# Expose required port for base image
EXPOSE 80

# Execute command from official image
CMD ["nginx", "-g", "daemon off;"]
