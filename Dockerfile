# Use the official Nginx image as the base image
FROM nginx:latest

# Copy the custom index.html from the local machine to the Nginx default HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start the Nginx server in the foreground
CMD ["nginx", "-g", "daemon off;"]
