FROM nginx:1.25-alpine
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx/nginx.conf /etc/nginx/conf.d/app.conf
COPY app/ /usr/share/nginx/html/
HEALTHCHECK --interval=30s --timeout=5s CMD wget -qO- http://localhost/health || exit 1
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
