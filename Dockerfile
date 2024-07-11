FROM docker.io/brille/docact:v6.0.0

WORKDIR /home
COPY entrypoint.sh /home

ENTRYPOINT ["sh","/home/entrypoint.sh"]
