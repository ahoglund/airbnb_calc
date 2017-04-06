#!/usr/bin/env ruby

def airbnb_calc(total_money, total_days)
  total_money    = total_money.to_i
  total_days     = total_days.to_i
  moms_fee       = total_days * 50
  drews_fee      = total_money / 10
  cleaning_fee   = 95
  profit         = ((total_money - moms_fee) - drews_fee) - cleaning_fee
  moms_takehome  = moms_fee + (profit / 2)
  drews_takehome = drews_fee + (profit / 2) + cleaning_fee

  puts "Total Profit: $#{profit}"
  puts "Mom Earned: $#{moms_takehome}"
  puts "Drew Earned: $#{drews_takehome}"
end

airbnb_calc(ARGV[0], ARGV[1])
