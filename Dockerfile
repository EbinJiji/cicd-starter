FROM node:24-alpine

WORKDIR /app
COPY package.json ./
COPY src ./src

# The commit this image was built from, reported by /health.
ARG GIT_SHA=dev
ENV GIT_SHA=$GIT_SHA

ENV PORT=3000
EXPOSE 3000

# Run as the non-root "node" user that ships with the image.
USER node
CMD ["node", "src/server.js"]
