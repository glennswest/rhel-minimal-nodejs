FROM registry.access.redhat.com/rhel-minimal

ENV PATH "/opt/rh/rh-nodejs8/root/bin:$PATH"

COPY lib /tmp/rpms

RUN cd /tmp/rpms && \
    rpm -ivh scl-utils-20130529-18.el7_4.x86_64.rpm rh-nodejs8-3.0-3.el7.x86_64.rpm  rh-nodejs8-nodejs-8.3.0-2.el7.x86_64.rpm  rh-nodejs8-npm-5.3.0-8.3.0.2.el7.x86_64.rpm  rh-nodejs8-runtime-3.0-3.el7.x86_64.rpm && \
    rm -r /tmp/rpms
