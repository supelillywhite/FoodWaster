20.times do |meal|
  Meal.create!(date: Date.today, description: "#{meal} is the most delicious meal ever!", quantity: 3, category: "Mexican", location_area: "St George", thumb_image: "https://b.zmtcdn.com/data/reviews_photos/82e/73d161c17d93ed8f758bde7b179db82e.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A", main_image: "http://img1.cookinglight.timeinc.net/sites/default/files/styles/400xvariable/public/image/2016/04/main/1605p138-mushroom-charred-corn-tacos-with-guacamole.jpg?itok=PfZe4ZUE", status: "available", location_address: "42 W 475 N Circle, St George Utah, 84770", karma: "5")
end

puts "20 meals created"
