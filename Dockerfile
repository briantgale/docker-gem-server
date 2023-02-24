FROM ruby:3.1.2-bullseye

RUN mkdir /www && mkdir /www/data
WORKDIR /www
COPY . /www

RUN gem install geminabox puma

EXPOSE 9292

ENTRYPOINT ["/www/entrypoint.sh"]
# CMD ["bash"]
