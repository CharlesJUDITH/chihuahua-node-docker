ARG TAG
# Stage 1: Build the chihuahuad binary
FROM ghcr.io/charlesjudith/chihuahua:${TAG} AS chihuahuad

# Stage 2: Create the final image and copy the binary
FROM debian:bullseye
COPY --from=chihuahuad /usr/local/bin/chihuahuad /usr/bin

