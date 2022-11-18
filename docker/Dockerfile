FROM ruby:2.5.8

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN apt-get update --fix-missing && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y git build-essential qt5-qmake g++ qt5-default libqt5webkit5-dev gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x nodejs screen libssl-dev libreadline-dev zlib1g-dev wget xfonts-75dpi locales xfonts-base libsqlite3-dev
RUN gem install bundler -v 2.1.4
RUN gem install mini_portile2
WORKDIR /crud_task
COPY Gemfile /crud_task/Gemfile
COPY Gemfile.lock /crud_task/Gemfile.lock
RUN bundle update

# Add a script to be executed every time the container starts.
COPY /docker/docker-entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 8080

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]