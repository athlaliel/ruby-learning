def keisan(input)
  array = input.split(//)
  num1 = array[0].to_i
  num2 = array[2].to_i

  sum = num1 + num2
  mul = num1*num2

  puts sum
  puts mul
  puts "足し算結果と掛け算結果の合計値は#{sum + mul}です"
end

keisan("15")