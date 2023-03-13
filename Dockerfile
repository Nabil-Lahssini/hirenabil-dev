FROM jekyll/jekyll:3.8

WORKDIR /srv/jekyll

COPY . /srv/jekyll
EXPOSE 4000

CMD ["jekyll", "serve", "--no-watch", "--force-polling"]
