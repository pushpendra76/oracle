#FROM fedora
FROM alpine
MAINTAINER pushpendra76@gmail.com
ARG x=httpd
# var ARG, it will only work during build time not after that, can be overwritten at runtime
ENV y=httpd
# this will only work during container creation, and can't be overridden during run time
#RUN yum install -y $x
RUN echo "hello my web server is $x" >/opt/output.txt
ENTRYPOINT ["cat"]
CMD ["/opt/output.txt"]
#use ENTRYPOINT and CMD in combination, CMD is optional and will not be effective if param is provided on docker command line, ENTRYPOINT always be there
#WORKDIR /var/www/html/
# changing directory during docker build of image
#COPY index.html .
# copy will take data from the same place where the dockerfile is there
#ADD https://i0.wp.com/www.docker.com/blog/wp-content/uploads/53dc73f1-1bfe-415c-a0e9-1f75507675de-1.jpg?zoom=2.625&ssl=1 .
# add instruction can take data from local as well from URL
#CMD ["cal","9","2020"]
#CMD ["/bin/bash"]
