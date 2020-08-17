user_data = [
  {
    user: {
      profile: {
        name: 'George'
      }
    }
  },
  {
    user: {
      profile: {
        name: 'Alice'
      }
    }
  },
  {
    user: {
      profile: {
        name: 'Taro'
      }
    }
  }

# 以下、回答
# 二重ハッシュから特定のデータを取得する場合は、
# [取得したい値のキー]を取得したいデータまで連続して指定すると取得できます。
user_data.each do |u|
puts u[:user][:profile][name]
end