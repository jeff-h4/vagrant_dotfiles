
#################################
# Aliases
#################################
alias ll="ls -la"
alias sqlroot="mysql -u root -proot"
alias sqlsort="script/test.d/98_sql_fingerprint --only-sort"
alias v="vim"
#################################
# Functions
#################################
function cd_themis() {
  cd $HOME/clio/themis
}

function filtered-rails-server() {
  bin/spring rails server -b 0.0.0.0 | sed 's/^\[uuid\=[0-9a-f-]*\] \[version\=[a-z0-9.-]*\]//'
}
