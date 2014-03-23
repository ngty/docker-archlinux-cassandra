FROM ngty/archlinux-jdk7
MAINTAINER ngty

# Install CASSANDRA and clean the package cache
RUN yaourt --noconfirm -Syy cassandra; \
  pacman --noconfirm -Scc

# Run cassandra in foreground on boot
ENTRYPOINT ["/usr/sbin/cassandra", "-f"]
