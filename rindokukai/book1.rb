(1..50).each do |n|
  def fizzbuzz(n)
    if n % 3 == 0 && n % 5 == 0
      puts "fizzbuzz"
    elsif n % 3 == 0
      puts "fizz"
    elsif n % 5 == 0
      puts "buzz"
    else
      puts n
    end
    fizzbuzz(n)
  end
end

