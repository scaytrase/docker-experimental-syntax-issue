#syntax=docker/dockerfile-upstream:20191217-secrets
FROM exp-syntax-issue/base:latest

RUN --mount=type=secret,uid=82,gid=82,mode=600,id=test,dst=/home/www-data/test cat /home/www-data/test

RUN echo "tested" >> /home/www-data/result
