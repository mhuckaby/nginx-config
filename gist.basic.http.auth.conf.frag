   server {
        listen       80;
        server_name  sub.domain.com;

        location / {
      auth_basic "Authorized";
            auth_basic_user_file auth.conf;
            proxy_set_header "XYYZ" "ex why why";
            proxy_pass http://127.0.0.1:8080;
        }

    }


