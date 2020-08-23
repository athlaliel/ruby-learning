class Smartphone

  def initialize(sumaho_name, sumaho_create, sumaho_memory)
    @name = sumaho_name
    @create = sumaho_create
    @memory = sumaho_memory
  end

  def self.sumaho_make
    puts "該当メーカーのスマホを作成しました"
  end

  def sumaho_marker(sumaho_number)
    @sumaho_number = sumaho_number
    if sumaho_number > @memory
      puts "#{@name}は、造っているメーカーが#{@create}なので、今はまだ#{@mamory}GB以上は販売していません"
    else
      puts "#{@memory}GB以下はもうキャリアショップでは入試できません"
    end
  end
end

sumaho = Smartphone.new("iPhone", "Apple", 512) #インスタンスと変数定義
sumaho.sumaho_marker(2) #インスタンスの出力
Smartphone.sumaho_make