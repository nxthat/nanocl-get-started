# Important to not use latest tag
from node:16

# Set to a non-root built-in user `node`
USER node

# Create app directory (with user `node`)
RUN mkdir -p /home/node/app

WORKDIR /home/node/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY --chown=node package*.json ./

# Install dependencies
RUN npm install

# Bundle app source code
COPY --chown=node . .

# Bind to all network interfaces so that it can be mapped to the host OS
ENV HOST=0.0.0.0
ENV PORT=9000

CMD [ "node", "." ]
