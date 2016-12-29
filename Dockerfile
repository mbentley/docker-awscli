FROM alpine:latest
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN apk --no-cache add groff less py-pip
RUN pip install awscli

ENTRYPOINT ["/usr/bin/aws"]
CMD ["help"]
