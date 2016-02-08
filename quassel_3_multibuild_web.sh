kill -9 $(ps aux | grep '[j]ekyll' | awk '{print $2}')
clear

echo "Building quassel Writers website..."
jekyll build --config configs/quassel/config_writers.yml
# jekyll serve --config configs/quassel/config_writers.yml
echo "done"

echo "Building quassel Designers websote..."
jekyll build --config configs/quassel/config_designers.yml
# jekyll serve --config configs/quassel/config_designers.yml
echo "done"

echo "All finished building all the web outputs!!!"
echo "Now push the builds to the server with . quassel_4_publish.sh"

