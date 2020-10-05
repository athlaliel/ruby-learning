(1..100).each do |n|
  def fizzbuzz(n)
    # if n % 15 == 0
    if n % 3 == 0 && n % 5 == 0
      puts "FizzBuzz"
    elsif n % 3 == 0
      puts "Fizz"
    elsif n % 5 == 0
      puts "Buzz"
    else
      puts n
    end
  end

  # puts fizzbuzz(n)
  fizzbuzz(n)
end


