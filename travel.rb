require "active_support/core_ext/numeric/conversions"
puts "旅行プランを選択してください"

puts <<~TEXT
1.沖縄旅行（¥10,000）
2.北海道旅行（¥20,000）
3.九州旅行（¥15,000）

TEXT

# プラン選択
print "プランを選択 > "
plan_num = gets.to_i
puts ""
if plan_num == 1
  puts "沖縄旅行ですね、何人でいきますか？"
  price = 10000
elsif plan_num == 2
  puts "北海道旅行ですね、何人でいきますか？"
  price = 20000
elsif plan_num == 3
  puts "九州旅行ですね、何人でいきますか？"
  price = 15000
else
  puts "1〜3の値を入力してください"
end
puts ""

# 人数選択
print "人数を入力 > "
people = gets.to_i
puts ""

total_price = (price * people).floor.to_s(:delimited)
# 4人以下の料金

# 5人以上の料金
if people >= 5
  puts "#{people}人以上なので10%割引となります"
  puts ""
  total_price * 0.9
end

puts "合計料金：¥#{total_price}"
