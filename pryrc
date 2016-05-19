
puts "Defining the stack() method..."
def stack
  caller.select {|line| line.include? "themis" }
end
puts "Done."
