# n mを分割する(split)
#１行にスペースありで２個入力するにはsplitで分割する。
#to_iやto_sメソッドは前がgetsじゃなくても使用できる。
liquor_people = gets.chomp.split
n = liquor_people[0].to_i
m = liquor_people[1].to_i

puts (n * 6000 ) + (m * 4000)