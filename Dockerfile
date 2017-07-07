FROM fluent/fluentd:v0.12
RUN gem install fluent-plugin-loggly
COPY fluent.conf /fluentd/etc/fluent.conf
