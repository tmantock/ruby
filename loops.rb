for i in (0..10)
    puts i
end

array = (25..35)

array.each_with_index do |val, index|
    puts "#{val} at index #{index}"
end

i = 0
num = 5

until i > num
    puts i
    i += 1
end

unless true
    puts "true"
end
# Do while loop
begin
    puts i
    i *= 2
end while i < 30