# Bash script to run dcoker build command

# Build the docker image
docker run -p 3000:3000 -v "$(pwd):/app" -v /app/node_modules --rm $1
# docker run -p 3000:3000 -v "/home/bunny/projects/11_testing/docker-nodemon-ts" --rm $1


