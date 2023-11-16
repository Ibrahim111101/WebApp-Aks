# Use an official NGINX runtime as the base image
FROM nginx:latest

# Expose port 80 for HTTP traffic
EXPOSE 80

# Copy your custom configuration (if any) to the NGINX configuration directory
# COPY nginx.conf /etc/nginx/nginx.conf

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]