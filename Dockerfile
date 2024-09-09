# Use the official Nginx image as the base image
FROM nginx:alpine

# Remove the default Nginx index.html
RUN rm /usr/share/nginx/html/index.html

# Install Git
RUN apk add --no-cache git

# Clone the Git repository into /usr/share/nginx/html
RUN git clone https://github.com/vishnukothuri0404/MovieApp.git /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
