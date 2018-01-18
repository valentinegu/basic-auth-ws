FROM alpine

# Core dependencies
RUN apk add --update --no-cache nodejs && \
	rm -rf /var/cache/apk/*

# Basics
COPY / /opt/node/bws
WORKDIR /opt/node/bws
RUN npm install

# Expose ports
EXPOSE 8080

# UID to use when running the image and for CMD
USER 1001

# Run
CMD ["/usr/bin/node", "index.js"]
