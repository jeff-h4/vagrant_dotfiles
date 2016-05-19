
function cd_themis() {
  echo "I am in bash_aliases"
  cd $HOME/clio/themis
}
function filtered-rails-server() {
  bin/spring rails server -b 0.0.0.0 | sed 's/^\[uuid\=[0-9a-f-]*\] \[version\=[a-z0-9.-]*\]//'
}
