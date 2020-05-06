FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
ADD vulnerable.conf /etc/nginx/conf.d/vulnerable.conf
ADD index.html /usr/share/nginx/html/index.html
RUN echo 'flag{ng1nx_55rf}' > /usr/share/nginx/html/flag.txt
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80