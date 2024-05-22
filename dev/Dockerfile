# docker run -it -p 3000:3000 -v ${PWD}:/home drsjb80/rails-dev
FROM alpine3.18
MAINTAINER Dr. Steve Beaty <beatys@msudenver.edu>
EXPOSE 3000
VOLUME ["/home"]
RUN apk update
RUN apk upgrade
RUN apk add --upgrade ruby ruby-dev
RUN apk add build-base zlib-dev git
RUN apk add sqlite sqlite-dev tzdata
# RUN apk add yaml-dev
RUN gem install rails
WORKDIR /home
