# minitestとtest-unit
# rubyのインストールと共にインストールされる。
# 実務ではRspecが今は一般的
# Rspecだけはデフォルトでないので、gemのインストールが必要

# 主な検証メソッド
# ①assert_equal b,a
# aがbと等しければパスする

# ②assert a
# aが真であればパスする

# ③refute a
# aが偽であればパスする

# テスト失敗の場合はF(failure)が表示される
# 実行中のエラーはE(error)が表示される

require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    assert_equal 5, 'こんにちは'.length
  end
end

# Rspecの場合
require './lib/fizz_buzz'

RSpec.describe 'Fizz Buzz' do
  example 'fizz buzz' do
    expect(fizz_buzz(1)).to eq '1'
    expect(fizz_buzz(2)).to eq '2'
    expect(fizz_buzz(3)).to eq 'Fizz'
  end
end