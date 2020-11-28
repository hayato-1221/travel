require "active_support/core_ext/numeric/conversions"
# 旅行プラン配列
plans = [
  { place: "沖縄", price: 10000},
  { place: "北海道", price: 20000},
  { place: "九州", price: 15000}
]

# 旅行プラン提示
def travel_plan(plans)
  puts "旅行プランを選択してください"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}.#{plan[:place]}旅行（¥#{plan[:price]}）"
  end
end
travel_plan(plans)

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

total_price = price * people


# 5人以上の料金
if people >= 5
  puts "#{people}人以上なので10%割引となります"
  puts ""
  total_price = (total_price * 0.9).floor
end

puts "合計料金：¥#{total_price.to_s(:delimited)}"
