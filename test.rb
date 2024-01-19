#puts system('git remote -v')
string = IO.popen('git remote -v') {|io| io.read}

puts string.lines
