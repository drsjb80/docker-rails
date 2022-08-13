A simple Docker file for developing RoR applications. To run:

    docker run -it -p 3000:3000 -v ${PWD}:/home drsjb80/rails-dev

You'll have to run the Rails commands in the container and in the /home
directory, but then you can point your editor/IDE at the created directory
on the host machine. It's easiest to run the Rails server bound to all IP
addresses via

    rails server -b 0.0.0.0
