set :user, 'kjdev'
set :use_sudo, false

set :scm, :git
set :repository, 'git@bitbucket.org:jiikko/jiikko.me.git'
set :branch, 'master'

set :git_shallow_clone, 1 # １つ前のコミットまでとる
set :deploy_via, :export

set :deploy_to, "/home/kjdev/public_html/jiikko.me"

role :web, "s11.rs2.gehirn.jp"
set :normalize_asset_timestamps, false
