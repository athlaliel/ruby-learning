def caught_speeding(speed, is_birthday)
  if is_birthday 
    point = 0
  else
    if speed <= 60
      point = 0
    elsif speed <= 80
      point = 1
    else
      point = 2
    end
  end
  puts "#{point}点の減点です"