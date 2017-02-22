@pckts = [[0],[1,2],[3,4,5],[6,7,8,9]]

def print_board
  count = 0
  @pckts.each do |row|
    row.each do |packet|
      if count == 0
        padding = "            "
        # padding = 12.5
      elsif count == 1
        padding = "        "
        # padding = 8
      elsif count == 2
        padding = "      "
        # padding = 3
      elsif count == 3
        padding = "    "
        # padding = 3
      else
        padding = ""
        # padding = 0
      end
      # print padding
      print "[#{packet}]"
      # print ("[#{packet}]")
    end
    count += 1
    puts ""
  end
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
    pickup_packets(array)
  end
end

def pickup_packets(array)
  array.each do |packet|
    @pckts.each do |row|
      row.map!{|x| x == packet ? ' ' : x}
    end
  end
  print_board
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
print_board
get_user_input