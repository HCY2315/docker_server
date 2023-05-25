docker run -t -d -p 0.0.0.0:8980:9980 -e 'domain=192\\.168\\.1\\.22' -e "username=admin" -e "password=admin" -e "extra_params=--o:ssl.enable=false" --restart always --cap-add MKNOD collabora/code
