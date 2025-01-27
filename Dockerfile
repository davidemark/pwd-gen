# Use the official Nginx base image
FROM nginx:latest

# Copy the local static content to the default Nginx public directory
COPY ./index.html /usr/share/nginx/html/

# Expose port 80 for incoming traffic
EXPOSE 80

# Command to start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
