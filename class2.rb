class house

  def maker(maker_number)
    @maker_number = maker_number
  end

end

maker = House.new() #インスタンスの生成と、変数定義
maker.maker(4)