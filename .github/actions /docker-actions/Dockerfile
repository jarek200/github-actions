FROM ubuntu:20.04

# Install bash
RUN apt-get update && apt-get install -y bash

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set the script as the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
