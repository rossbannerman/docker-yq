FROM mikefarah/yq

FROM alpine:latest
LABEL maintainer="Ross Bannerman <ross@bnnr.mn>"
RUN apk --no-cache add git openssh
COPY --from=0 /usr/bin/yq /usr/bin/yq
