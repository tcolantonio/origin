FROM golang:alpine

# Copy the local package files to the container's workspace.
ADD . /go/src/github.com/tcolantonio/mysimpleapp

# Build the outyet command inside the container.
# (You may fetch or manage dependencies here,
# either manually or with a tool like "godep".)
RUN go install github.com/tcolantonio/mysimpleapp

# Run the outyet command by default when the container starts.
ENTRYPOINT ["/go/bin/mysimpleapp"]

# Document that the service listens on port 8181.
expose 8181



