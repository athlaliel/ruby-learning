#変数 =[]

pencil_case = ["ペン", "消しゴム", "定規"]
puts pencil_case.length

pencil_case << "えんぴつ"
pencil_case << "付箋"
puts pencil_case.length
#ターミナルにファイル名を打つと、putsの内容が打たれるが、
#その内容も決まっているから、中身だけがきちんと出力される。

#配列 << 追加する要素

# 配列内の要素の数を返す
#irb(main):001:0> ['あお', 'きいろ', 'あか'].length
#=> 3
#length だから数を計算してくれる。