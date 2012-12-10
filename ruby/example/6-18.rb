value = "3"
case value
when '0'         then '0'
when /\A\d\Z/    then '1けた'
when /\A\d{2}\Z/ then '2けた'
else                  'それ以外'
end