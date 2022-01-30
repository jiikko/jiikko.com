set :user, 'deployer'
set :use_sudo, false

set :scm, :git
set :repository, 'git@github.com:jiikko/jiikko.com.git'
set :branch, 'master'

set :git_shallow_clone, 1 # １つ前のコミットまでとる
set :deploy_via, :export

set :deploy_to, "/var/www/jiikko.com"

# role :web, "s11.rs2.gehirn.jp"
role :web, "jiikko.com"
set :normalize_asset_timestamps, false

set :ssh_options, {
  keys: [File.expand_path('~/.ssh/id_rsa')],
  forward_agent: true,
  auth_methods: %w(publickey),
}
