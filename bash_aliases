
#################################
# Aliases
#################################
alias ll="ls -la"
alias db-make-dev="bundle exec rake db:create db:migrate"
alias db-make-test="bundle exec rake db:create RAILS_ENV=test"
alias db-migrate-dev="bundle exec rake db:migrate"
alias db-migrate-test="bundle exec rake db:migrate RAILS_ENV=test"
alias db-rb-dev="bundle exec rake db:rollback"
alias db-rb-test="bundle exec rake db:rollback RAILS_ENV=test"
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
