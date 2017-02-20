pckts = [[0],[1,2],[3,4,5],[6,7,8,9]]
padding = 40
count = 1
pckts.each do |row|
  row.each do |packet|
    # puts padding
    print packet.to_s.center(padding/count)
  end
  count = count*count
  # padding -= 10
  puts ""
end

# print pckts[0]
# print "\n"
# print pckts[1]
# print "\n"
# print pckts[2]
# print "\n"
# print pckts[3]
# print "\n"


def get_user_input
  puts 'make your choice'
  input = gets.chomp
  puts input
  array = input.split(" ")
  print array
  print "\n"
  array.map!{|num| num.to_i}
  print array
  print "\n"
  check_array_format(array)
end

def check_array_format(array)
  if array.length > 3
    puts "Sorry you must choose less than three packets."
    get_user_input
  else
    array.each do |choice|
      puts "you chose #{choice}"
    end
  end
end

# if input > 5
#   puts "6-9"
# elsif input > 2
#   puts "3-5"
# elsif input > 0
#   puts "1 or 2"
# else
#   puts "0"
# end

get_user_input