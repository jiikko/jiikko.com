set :user, 'deployer'
set :use_sudo, false

set :scm, :git
set :repository, 'git@bitbucket.org:jiikko/jiikko.com.git'
set :branch, 'master'

set :git_shallow_clone, 1 # １つ前のコミットまでとる
set :deploy_via, :export

set :deploy_to, "/var/www/jiikko.com"

# role :web, "s11.rs2.gehirn.jp"
role :web, "133.242.187.194"
set :normalize_asset_timestamps, false
