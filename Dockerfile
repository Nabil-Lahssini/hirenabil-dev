FROM jekyll/jekyll:3.8

ENV JEKYLL_UID 1001
ENV JEKYLL_GID 1001

RUN groupadd -g $JEKYLL_GID jekyll && \
    useradd -u $JEKYLL_UID -g $JEKYLL_GID -m jekyll

WORKDIR /srv/jekyll

COPY . /srv/jekyll

EXPOSE 4000

CMD ["jekyll", "serve", "--force_polling"]
