move_elevater = readlines.map &:to_i

#現状の階数と、距離の初期設定
floor_now = 1
distance = 0


move_elevater.each do |area|
    #距離の絶対値で計算をする
    if (area - floor_now) >0
        distance += area - floor_now
    else
        distance -= area - floor_now
    end
    #距離計算後に、階数を更新する
    floor_now = area
end

puts distance