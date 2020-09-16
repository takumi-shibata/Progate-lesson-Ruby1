# 1.Rubyの出力方法
# Rubyの出力の命令は「puts」 コメントアウトは先頭に「#」
# 文字列はシングルクォーテーション「''」もしくはダブルコーテーション「""」で囲む
puts "こんにちは、Ruby"
# →こんにちは、Ruby



# 2.数値・四則演算
puts 37
# →37

puts "2 + 9"
# →2 + 9

puts 2 + 9
# →11

puts 13 * 9
# →117

puts 32 / 8
# →4

puts 18 % 5
# →3(余り)



# 3.文字・数値の連結
puts "私は" + "にんじゃわんこです"
# →私はにんじゃわんこです

puts "38" + "19"
# →3819



# 4.変数(2語以上の場合、Rubyだと「_」アンダーバーで区切る。jsは小文字と大文字)
name = "にんじゃわんこ"
puts name
# →にんじゃわんこ

text = "プログラミングを学ぼう"
puts "Progateで" + text
# →Progateでプログラミングを学ぼう

length = 8
width = 9
puts length * width
# →72



# 5.変数の更新
length = 9
width = 8
puts width
puts length * width
# →8
# →72

width = 13 #(width = 8から、width = 13に更新)
puts width
puts length * width
# →13
# →117

length = 9
width = 8
puts width
puts length * width
# →8
# →72

width += 5  #(width = width + 5の省略形、他の計算も同様)
puts width
puts length * width
# →13
# →117



# 6.変数展開(jsでいうテンプレートリテラル、「＋」記号を用いらなくとも文字や数字を連結させる事が出来る方法。${}か#{}の違いだけ)
# 変数展開の際は必ず「""」ダブルコーテーションで囲う!「''」シングルコーテーションはNG!
# ※通常、数値の入った変数と文字列を足し算で連結することはできないが、変数展開を用いると数値の入った変数も問題なく文字列に含めることが可能
length = 9
width = 8
area = length * width
puts "面積は#{area}です"
# →面積は72です