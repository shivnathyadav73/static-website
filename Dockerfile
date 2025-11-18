# Use official NGINX image
FROM nginx:latest

# Remove default NGINX html files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website files to NGINX html directory
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
