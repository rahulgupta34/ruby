users = [
  {"username": "rahulgupta","password":"rahul123"},
  {"username": "rohit","password":"rohit123"},
  {"username": "rohit","password":"rohit123"}
]


attempts = 1
while attempts < 4
    print "Enter Username: "
    username = gets.chomp
    print "Enter Password :"
    password = gets.chomp
    users.each do |key|
        if key[:username] == username && key[:password] == password
            puts "matched"
            break
        end
    end
    puts "press n to quit or continue to press any key" 
            user_input = gets.chomp.downcase
            break if user_input == "n"
    attempts += 1
end
 
puts "You Have Exceed The Number Of Limits " if attempts == 4
