# カレントディレクトリのパスを確認
% pwd

# カレントディレクトリ直下のファイルを確認
% ls
error.rb    helloworld.rb  # ファイルが表示される

# カレントディレクトリには存在しないファイルを実行（エラーが表示される）
% ruby hoge.rb
Traceback (most recent call last):
ruby: No such file or directory -- hoge.rb (LoadError)