FROM alpine:3.19

WORKDIR /app

# Copy the entrypoint script
COPY entrypoint.sh .

# Make sure the script is executable and exists
RUN chmod +x /app/entrypoint.sh && \
    ls -la /app/entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/app/entrypoint.sh"] 