users = [
  {username: "Joyce", password:"123456a" },
  {username: "Joyce2", password:"123456b" },
  {username: "Joyce3", password:"123456c" },
  {username: "Joyce4", password:"123456d" }
]
exit = "other"
wrong_times = 0

while exit != "n"
  wrong_password = true
  wrong_username = true
  puts "This program will take input from the user an compare password"
  puts "Username: "
  username_input = gets.chomp
  puts "Password: "
  password_input = gets.chomp

  users.each do |user|
    if user[:username] == username_input
      wrong_username = false
      if user[:password] == password_input
        wrong_password = false
      end
    end
  end

  if wrong_password || wrong_username == true
    puts "Credentials were not incorrect"
    wrong_times = wrong_times + 1
    if wrong_times > 2
      puts "You have exceeded the number of attemps"
      break
    end

  else
    users.each do |user|
      if user[:username] == username_input && user[:password] == password_input
        wrong_times = 0
        puts "username: #{user[:username]}, password: #{user[:password]}"
        break
      end
    end
  end

  puts "Press n to quit or any other key to continue"
  exit = gets.chomp

end