# Trap Queue

## Setup & Installation

1. If you aren't already using [RVM](https://rvm.beginrescueend.com/), it's recommended you start.
   * Follow the instructions for [installing RVM](https://rvm.beginrescueend.com/rvm/install/) as a single user.
   * Create a `~/.gemrc` file with the following contents:

            gem: --no-ri --no-rdoc

   * Execute `rvm notes` for information on needed packages for installing rubies.
   * Install Ruby 1.9.2 with `rvm install 1.9.2`
2. Fork the project to your own GitHub profile and clone it:

        $ git clone git@github.com:YOURUSERNAME/TrapQueue.git

3. Change directories to your cloned repo:

        $ cd TrapQueue

4. If you're using RVM, you'll be asked if you want to execute the project's `.rvmrc`. Inspect the contents and say "yes."
5. Create a new gemset:

        $ rvm gemset create TrapQueue

6. Change the current Ruby to this gemset:

        $ rvm use 1.9.2@TrapQueue

7. Install bundler with `gem install bundler`.
8. Run `bundle` in the root of the project to install required gems.
9. Copy `config/database.yml.example` to `config/database.yml` and edit the settings to fit your setup.
10. Run `rake db:create` and `rake db:migrate` to setup your database.
11. Run `rails s` and visit [http://localhost:3000/](http://localhost:3000/) to see if everything's working.

## Pulling Upstream Changes

When new changes are made, you'll have to merge them into your fork.

1. Configure remotes:

        $ git remote add upstream git://github.com/SinCityRuby/TrapQueue.git

2. Pull in upstream changes:

        $ git fetch upstream
        $ git merge upstream/master

For more detailed information, see the GitHub [fork a repo](http://help.github.com/fork-a-repo/) help page.

## Updating After Changes

Run `bundle`, `rake db:migrate`, and restart your web server.