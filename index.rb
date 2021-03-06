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



# 7.条件分岐(Rubyは条件式を()で囲ったり、{}を入れないが、最後に「end」を入れる)
# ※以上、以下は「=」が入り、その数も含める
score = 92
if score > 80
  puts "よくできました"
end
# →よくできました (条件として正しい(true)なので出力される)

score = 80
puts score > 80
# →false

puts score <= 80
# →true

if score <= 80
  puts "がんばりましょう"
end
# →がんばりましょう

score = 100
if score == 100
  puts "満点です"
end
# →満点です

if score != 100 # 「!=」異なる。Rubyの時はjsと比べてイコールが1つ少ない
  puts "満点ではありません"
end
# →falseのため出力されない

score = 60
if score > 80
  puts "よくできました"
else 
  puts "がんばりましょう"
end
# →がんばりましょう

score = 73
if score > 80
  puts "よくできました"
elsif score > 60　# ※jsの時は「else if」だったが、Rubyの場合は「elsif」
  puts "まずまずです"
else
  puts "がんばりましょう"
end
# →まずまずです

score = 96
if score >= 95 && score <= 99
  puts "高得点です！次は満点を目指しましょう。"
end
# →高得点です！次は満点を目指しましょう。



# ↓総合演習↓
number = 48
if number % 3 == 0 && number % 5 == 0
  puts "15の倍数です"
elsif number % 5 == 0
  puts "5の倍数です"
elsif number % 3 == 0
  puts "3の倍数です"
else
  puts "3の倍数でも5の倍数でもありません"
end
# →3の倍数です