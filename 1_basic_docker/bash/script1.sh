for i in $(seq 1 $1); do \
    echo -n "$i) "; \
    curl -s https://api.chucknorris.io/jokes/random | \
     jq -r '.value' ;\
 done;

