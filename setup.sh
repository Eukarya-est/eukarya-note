# Reference: 
# BillRaymond/GitHub Pages Jekyll Dockerfile 
# <run-once-after-dockerfile.sh> 
# https://gist.github.com/BillRaymond/db761d6b53dc4a237b095819d33c7332#file-run-once-after-dockerfile-sh

# current Ruby version
echo "<Ruby version>"
ruby -v

# current Jekyll version
echo "<Jekyll version>"
jekyll -v

# Create a new Jekyll site
echo "Create a new Jekyll site"
jekyll new . --force

# Configure Jekyll for GitHub Pages
# github-pages >= 232 depends on jekyll = 3.10.0
echo "Add GitHub Pages to the bundle"
bundle add "github-pages" --group "jekyll_plugins" --version 232

# webrick is a technology that has been removed by Ruby, but needed for Jekyll
echo "Add required webrick dependency to the bundle"
bundle add webrick

# Update the bundle
echo "bundle update"
bundle update