re = Regexp.new("Ruby")

# p "ABC" =~ /ABC/
# p /ABC/ =~ "ABCDEF"
# p /ABC/ =~ "123ABC"
# p /ABC/ =~ "A1B2C3"
# p /ABC/ =~ "AB"
# p /ABC/ =~ "abc"

# p /^ABC$/ =~ "ABC"
# p /^ABC$/ =~ "ABCDEF"
# p /^ABC$/ =~ "123ABC"
# p /^ABC/ =~ "ABC"
# p /^ABC/ =~ "ABCDEF"
# p /^ABC/ =~ "123ABC"
# p /ABC$/ =~ "ABC"
# p /ABC$/ =~ "ABCDEF"
# p /ABC$/ =~ "123ABC"


# p /[ABC]/ =~ "B"
# p /[ABC]/ =~ "BCD"
# p /[ABC]/ =~ "123"
# p /a[ABC]c/ =~ "aBc"
# p /a[ABC]c/ =~ "1aBcDe"
# p /a[ABC]c/ =~ "abc"
# p /[^ABC]/ =~ "1"
# p /[^ABC]/ =~ "A"
# p /a[^A-B]c/ =~ "aBcabc"

# p /[ABC][AB]/ =~ "AB"
# p /[ABC][AB]/ =~ "AA"
# p /[ABC][AB]/ =~ "CA"
# p /[ABC][AB]/ =~ "CCCCA"
# p /[ABC][AB]/ =~ "xCBx"
# p /[ABC][AB]/ =~ "CC"
# p /[ABC][AB]/ =~ "CxAx"
# p /[ABC][AB]/ =~ "C"
# p /[0-9][A-Z]/ =~ "0A"
# p /[0-9][A-Z]/ =~ "000AAA"
# p /[^A-Z][A-Z]/ =~ "1A2B3C"
# p /[^0-9][^A-Z]/ =~ "1A2B3C"

# p /A.C/ =~ "ABC"
# p /A.C/ =~ 'AxC'
# p /A.C/ =~ "012A3C456"
# p /A.C/ =~ "AC"
# p /A.C/ =~ "ABBC"
# p /A.C/ =~ "abc"
# p /aaa.../ =~ "00aaabcde"
# p /aaa.../ =~ "aaabb"

# p /ABC\sDEF/ =~ "ABC DEF"
# p /ABC\sDEF/ =~ "ABC\tDEF"
# p /ABC\sDEF/ =~ "ABCDEF"

# p /\d\d\d-\d\d\d\d/ =~ "012-3456"
# p /\d\d\d-\d\d\d\d/ =~ "01234-0123456"
# p /\d\d\d-\d\d\d\d/ =~ "ABC-DEFG"
# p /\d\d\d-\d\d\d\d/ =~ "012-21"

# p /\AABC/ =~ "ABC"
# p /\AABC/ =~ "ABCDEF"
# p /\AABC/ =~ "012ABC"
# p /\AABC/ =~ "012\nABC"

# p /ABC\z/ =~ "ABC"
# p /ABC\z/ =~ "012ABC"
# p /ABC\z/ =~ "ABCCDEF"
# p /ABC\z/ =~ "012\nABC"
# p /ABC\z/ =~ "ABC\nDEF"

# p /A*/ =~ "A"
# p /A*/ =~ "AAAAA"
# p /A*/ =~ ""
# p /A*/ =~ "BBBB"
# p /A*C/ =~ "AAAACCC"
# p /A*C/ =~ "BC"
# p /A*C/ =~ "AAAB"
# p /AAA*C/ =~ "AAAC"
# p /AAA*C/ =~ "AC"
# p /A.*C/ =~ "AB012C"
# p /A.*C/ =~ "AB CD"
# p /A.*C/ =~ "ACDE"


# p /^Subject:\s*.*$/ =~ "Subject: foo"
# p /^Subject:\s*.*$/ =~ "Subject: Re: foo"
# p /^Subject:\s*.*$/ =~ "Subject:Re^2 foo"
# p /^Subject:\s*.*$/ =~ "in Subject: Re foo"

# p /A+/ =~ "A"
# p /A+/ =~ "AAAA"
# p /A+/ =~ ""
# p /A+/ =~ "BBB"
# p /A+C/ =~ "AAAAC"
# p /A+C/ =~ "BC"
# p /A+C/ =~ "AAAAAB"
# p /AAA+C/ =~ "AAC"
# p /AAA+C/ =~ "AC"
# p /A.+C/ =~ "AB012C"
# p /A.+C/ =~ "AB CD"
# p /A.+C/ =~ "ABCD"


# p /^A?$/ =~ "A"
# p /^A?$/ =~ ""
# p /^A?$/ =~ "AAAAA"
# p /^A?C/ =~ "AC"
# p /^A?C/ =~ "AAAC"
# p /^A?C/ =~ "BC"
# p /^A?C/ =~ "C"
# p /AAA?C/ =~ "AAAC"
# p /AAA?C/ =~ "AAC"
# p /AAA?C/ =~ "AC"
# p /A.?C/ =~ "ACDE"
# p /A.?C/ =~ "ABCDE"
# p /A.?C/ =~ "AB012C"
# p /A.?C/ =~ "AB CD"

# p /A.*B/ =~ "ABCABCDAB"
# p /A.*C/ =~ "ABCABCDAB"
# p /A.*?B/ =~ "ABCABCDAB"
# p /A.+?B/ =~ "ABCABCDAB"

# /(.)(.)(.)/ =~ "ABC"
# p $1
# p $2
# p $3

# str = "abc  def  g     hi"
# p str.sub(/\s+/,' ')
# p str.gsub(/\s+/, ' ')

# str = "abcracatara"
# nstr = str.sub(/.a/) do |matched|
#   '<'+matched.upcase+'>'
# end
# p nstr
# nstr = str.gsub(/.a/) do |matched|
#   '<'+matched.upcase+'>'
# end
# p nstr

# "abracatara".scan(/.a/) do |matched|
#   p matched
# end
# p "abracatabra".scan(/(.)(a)/) do |matched|
#   p matched
# end
# "abrcatabra".scan(/(.)(a)/) do |a,b|
#   p a+"-"+b
# end

# str = "http://www.ruby-lang.org/ja/"
# /http:\/\/([^\/]*)\// =~ str
# printf("server address: %s \n",$1)

mail = "hogehoge@nttdata.com"
/(.+)@(.+)/ =~ mail
p $1
p $2

str = "正規表現は難しい！　なんて難しいんだ。"
p str.gsub('難しいんだ', '簡単なんだ').gsub('難しい','簡単だ')

def word_capitalize(str)
  return str.split('-').map{|item| item.capitalize}.join('-')
end

p word_capitalize("in-reply-to")
p word_capitalize('X-MAILER')
