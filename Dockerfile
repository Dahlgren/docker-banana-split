FROM php:5.6

# Install dependencies
RUN apt-get update && apt-get install --force-yes -y ffmpeg git && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Download banana-split
RUN git clone https://github.com/pathartl/banana-split /app

# Checkout last PHP commit
WORKDIR /app
RUN git checkout d1df3e9aeb2a2240d15dcd780abb23ccd596086e

# Start application
CMD ["php", "-S", "0.0.0.0:8080"]

# Declare application port
EXPOSE 8080
