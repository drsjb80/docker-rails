A simple Docker file for developing RoR applications. To run:

    docker run -it -p 3000:3000 -v ${PWD}:/home drsjb80/rails-dev

You'll have to run the Rails commands in the container and in the /home
directory, but then you can point your editor/IDE at the created directory
on the host machine. It's easiest to run the Rails server bound to all IP
addresses via

    rails server -b 0.0.0.0

For example, in the container:

    /home # rails new demo
          create
          create  README.md
          create  Rakefile
          create  .ruby-version
    [...]
    Appending: pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
          append  config/importmap.rb
    Pin all controllers
    Appending: pin_all_from "app/javascript/controllers", under: "controllers"
          append  config/importmap.rb

    /home # cd demo/

    /home/demo # rails server -b 0.0.0.0
    => Booting Puma
    => Rails 7.0.3.1 application starting in development
    => Run `bin/rails server --help` for more startup options
    Puma starting in single mode...
    * Puma version: 5.6.4 (ruby 3.1.2-p20) ("Birdie's Version")
    *  Min threads: 5
    *  Max threads: 5
    *  Environment: development
    *          PID: 403
    * Listening on http://0.0.0.0:3000
    Use Ctrl-C to stop

There will now be a "demo" folder in the host machine with the Rails
application that you can modify and you can point your browser at
http://127.0.0.1:3000 to see a running Rails server.
