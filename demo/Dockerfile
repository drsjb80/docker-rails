# docker run -it -p 3000:3000 -v ${PWD}:/home rails-dev
# cd home
# rails new Demo --skip-webpack-install --skip-javascript
# cd Demo
# echo "gem 'io-console'" >> Gemfile
# bundle install
FROM alpine
MAINTAINER Dr. Steve Beaty <beatys@msudenver.edu>
EXPOSE 3000
VOLUME ["/home"]
RUN apk update
RUN apk upgrade
RUN apk add ruby ruby-dev ruby-etc
RUN apk add build-base zlib-dev
RUN apk add nodejs npm
RUN npm install --global yarn
RUN apk add sqlite sqlite-dev
RUN apk add ruby-bigdecimal ruby-json tzdata
RUN gem install rails
COPY rails_demo.sh /
CMD ["/rails_demo.sh"]
