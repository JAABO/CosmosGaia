# Stage 1: Install dependencies and build tools
FROM golang:1.20 AS builder

# Install required dependencies
RUN apt-get update && \
    apt-get install -y libusb-1.0-0-dev gcc musl-dev git

# Clone the Cosmos Gaia repository
RUN git clone --branch v14.2.0 --depth 1 https://github.com/cosmos/gaia.git /go/src/github.com/cosmos/gaia


    
# Set the working directory
WORKDIR /go/src/github.com/cosmos/gaia

# Build the application
RUN make install

# Stage 2: Create the final image
FROM alpine:latest

# Copy the built binary from the builder stage
COPY --from=builder /go/bin/gaiad /usr/local/bin/gaiad


# Expose necessary ports
EXPOSE 26656 26657

# Start the Cosmos Gaia daemon
CMD ["gaiad", "start"]