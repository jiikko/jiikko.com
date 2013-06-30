set :user, 'kjdev'
set :use_sudo, false
#set :application, 'jiikko.me'

set :scm, :git
set :repository, 'git@bitbucket.org:jiikko/jiikko.me.git'
set :branch, 'master'

set :git_shallow_clone, 1 # １つ前のコミットまでとる
set :deploy_via, :export

# -*- coding: utf-8 -*-
set :deploy_to, "/home/kjdev/public_html/jiikko.me"
#set(:app_uri, 'http://jiikko.me/')
#set(:env, 'gehirn rs2')

# role :app, "s11.rs2.gehirn.jp"
role :web, "s11.rs2.gehirn.jp"
# role :db,  "s11.rs2.gehirn.jp", :primary => true
set :normalize_asset_timestamps, false
