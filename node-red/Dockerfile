FROM nodered/node-red:latest

# Copy custom flows (optional)
COPY flows.json /data/flows.json

# Install additional Node-RED nodes (optional)
RUN npm install node-red-dashboard
