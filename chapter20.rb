
# -- Get time --
# p Time.new
# p Time.now


#
# t = Time.new
# p t
# p t.year
# p t.month
# p t.day

# ---
# t = Time.mktime(2017,2,27,3,45,55)
# p t

# ---
# t0 = Time.at(0)
# p t0
# t1 = Time.at(1500000000)
# p t1

# --- 時刻を計算する ---
# t1 = Time.now
# sleep 1
# t2 = Time.now
# p t1 < t2
# p t2 - t1

# t= Time.now
# p t
# t2 = t + 60 * 60 * 24
# p t2


# t = Time.now
# p t.to_s
# p t.strftime("%Y/%m%d %H:%M:%S %z")


# --- ローカルタイム ---
# t = Time.now
# p t
# t.utc
# p t
# t.localtime
# p t


#  ---文字列から時刻を取り出す ---
# require 'time'
# t = Time.now.to_s
# p Time.parse(t)


# --- 日付を取得する ---
# require 'date'
# d = Date.today
# p d
#
# d = Date.today
# p d.year
# p d.month
# p d.day

# --- 日付計算 ---
# require 'date'
# d1 = Date.new(2015,1,1)
# d2 = Date.new(2015,1,4)
# puts d2 - d1
#
# d = Date.today
# puts d
# puts d + 1
# puts d + 100
# puts d - 1
# puts d - 100
#
# d = Date.new(2016,1,31)
# puts d
# puts d >>1
# puts d >>2
# puts d <<1
# puts d <<2


# --- 日付のフォーマット ---
# require 'date'
# t = Date.today
# p t.strftime("%Y/%m/%d %H:%M:%S")

# --- 文字列から日付を取り出す ---
# require 'date'
# t =Date.today.to_s
# puts Date.parse(t)
#
# # --- TimeとDateの変換 ---
# require "date"
# t1 = Time.now
# p t1
# d = t1.to_date
# puts d
# t2 = d.to_time
# puts t2


# 練習問題
# (1)---
# year = Time.new.year.to_i
# p year
#
# birthyear = Time.new(1993,2,24).year.to_i
# p birthyear
#
# p year - birthyear

require 'date'

class Person
  attr_reader :birthdate
  def initialize(birthdate)
    @birthdate = birthdate
  end

  def age(date = Date.today)
    return -1 if date < @birthdate

    years = date.year - @birthdate.year
    if date.month < @birthdate.month
      years -= 1
    elsif date.month == @birthdate.month && today.day <@birthdate.day
      years -= 1
    end
    return years
  end
end

ruby = Person.new(birth_date: Date.new(1993,2,24))
p ruby.birthdate
p ruby.age
