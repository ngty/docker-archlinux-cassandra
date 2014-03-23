FROM ngty/archlinux-jdk7
MAINTAINER ngty

# Install CASSANDRA and clean the package cache
RUN cd /opt; \
  curl http://apache.petsads.us/cassandra/2.0.6/apache-cassandra-2.0.6-bin.tar.gz | \
  tar zxfp -

# Run cassandra in foreground on boot
ENTRYPOINT ["/opt/apache-cassandra-2.0.6/bin/cassandra", "-f"]
