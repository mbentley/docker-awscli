# rebased/repackaged base image that only updates existing packages
FROM mbentley/alpine:latest
LABEL maintainer="Matt Bentley <mbentley@mbentley.net>"

RUN apk --no-cache add groff less py-pip
RUN pip install --no-cache-dir awscli

ENTRYPOINT ["/usr/bin/aws"]
CMD [""]
