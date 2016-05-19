require 'irb/completion'
IRB.conf[:SAVE_HISTORY] = 1000

# puts "Defining the stack() function"
# def stack
#   caller.select {|line| line.include? "themis" }
# end
puts "Automatically loading PRY..."
pry
