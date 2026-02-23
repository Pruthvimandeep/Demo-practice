# Use official nginx image
FROM nginx:1.28-alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy project files to nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
