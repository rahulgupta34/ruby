dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

def show_city_name(dial_book)
        return dial_book.keys
end

def show_city_code(dial_book,city)
    city_name = dial_book.keys
        city_name.each do |cities|
            if cities == city
                return "the city is #{city} and area code is #{dial_book[city]}"
            end
        end
end

loop do 
    puts "Do You Want To See The List Of All The Cities Which Are Available In The Dictionary(Y/N)."
    answer = gets.chomp.downcase
    break if answer != "y"
    puts show_city_name(dial_book)
    puts "Do You Want To See The City Code Based On Their City Name."
    puts "Enter Your City Choice."
    city = gets.chomp.downcase
    if dial_book.include?(city)
        puts show_city_code(dial_book,city)
    else
        puts "You Have Entered Wrong City Name."
    end
end


