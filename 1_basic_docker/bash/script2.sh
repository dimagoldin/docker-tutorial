mkdir -p $FOLDER_PATH

for i in $(seq 1 $1); do \
    echo -n "$i) "; \
    curl -s https://api.chucknorris.io/jokes/random | \
     jq -r '.value' \
     >&1 | tee -a $FOLDER_PATH/chuck_norris_jokes.txt ; \
 done;

