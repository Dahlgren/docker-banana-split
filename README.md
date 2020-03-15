# banana-split

Docker image for PHP version of https://github.com/pathartl/banana-split

Auto-update on container start

## Instructions

Mount any of media folders into the docker image to make them available for use

## Usage

    docker create \
      --name=banana-split \
      -v /my/media/files:/data \
      -p 8080:8080 \
      dahlgren/banana-split
