# Use the official HTTPD image as the base image
FROM httpd:alpine

# Install Git
RUN apk add --no-cache git

# Clone the Git repository into /var/www/html
RUN git clone https://github.com/vishnukothuri0404/MovieApp.git /usr/local/apache2/htdocs

# Expose port 80
EXPOSE 80

# Run the Apache HTTP server in the foreground
CMD ["httpd-foreground"]

