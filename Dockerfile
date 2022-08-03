FROM docker.io/brille/docact:v5.1.0

WORKDIR /home
COPY entrypoint.sh /home

ENTRYPOINT ["sh","/home/entrypoint.sh"]
