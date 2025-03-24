FROM alpine:3.19

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Make sure the script is executable
RUN chmod +x /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"] 