# docker run -it -p 3000:3000 -v ${PWD}:/home drsjb80/rails-dev
FROM alpine
MAINTAINER Dr. Steve Beaty <beatys@msudenver.edu>
EXPOSE 3000
VOLUME ["/home"]
RUN apk update
RUN apk upgrade
RUN apk add ruby ruby-dev ruby-etc
RUN apk add build-base zlib-dev git
RUN apk add sqlite sqlite-dev
RUN apk add ruby-bigdecimal ruby-json tzdata
RUN gem install rails
