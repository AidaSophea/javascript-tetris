# Repository choosen for Q2 WIF3005 Alternative Assesment 2025:
# https://github.com/AidaSophea/javascript-tetris

# Use a lightweight web server as the base image
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy project files to the working directory
COPY index.html /usr/share/nginx/html
COPY stats.js /usr/share/nginx/html

# Expose the default Nginx port
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
