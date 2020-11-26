require "active_support/core_ext/numeric/conversions"
okinawa_price = 10,000
hokkaido_price = 20,000
kyuusyuu_price = 15,000

puts "旅行プランを選択してください"

puts <<~TEXT
1.沖縄旅行（¥10,000）
2.北海道旅行（¥20,000）
3.九州旅行（¥15,000）

TEXT

# プラン選択
print "プランを選択 > "
plan = gets.to_i
puts ""
if plan == 1
  puts "沖縄旅行ですね、何人でいきますか？"
  price = 10000
elsif plan == 2
  puts "北海道旅行ですね、何人でいきますか？"
  price = 20000
elsif plan == 3
  puts "九州旅行ですね、何人でいきますか？"
  price = 15000
else
  puts "1〜3の値を入力してください"
end
puts ""

# 人数選択
print "人数を入力 > "
peple = gets.to_i
puts ""
if peple >= 5
  puts "#{peple}人以上なので10%割引となります"
  puts ""
  puts "合計料金：¥#{(price * peple * 0.9).floor.to_s(:delimited)}"
else
  puts "合計料金：¥#{(price * peple).floor.to_s(:delimited)}"
end