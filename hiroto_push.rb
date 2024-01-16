#!/usr/bin/env ruby
# coding: utf-8

require 'fileutils'

# GitHubユーザー名とリポジトリ名
USERNAME = "SuzukiHiroto08"
REPO_NAME = "practice"

# 引数からファイルのパスを取得
FILE_PATH = ARGV[0]

# 確認: 引数がない場合は終了
unless FILE_PATH
  puts "Usage: ./hiroto_push <file>"
  exit 1
end

# リモートリポジトリのURL
REMOTE_REPO_URL = "https://github.com/#{USERNAME}/#{REPO_NAME}.git"
# リモートリポジトリのSSH
#REMOTE_REPO_URL = "git@github.com:SuzukiHiroto08/practice.git"

# 現在のディレクトリに移動
Dir.chdir(File.expand_path('~/grad_research_23/senior/suzuki/practice'))

# 変更のステージング
system('git add .')

# コミット
system('git commit -m "Update file"')

# リモートリポジトリへの接続
system("git remote add origin https://github.com/SuzukiHiroto08/practice1.git")

# プッシュ
system('git push -u origin master')
