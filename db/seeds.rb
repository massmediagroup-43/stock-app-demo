user = User.create(email: 'user@email.com', password: 'password')

5.times do |n|
  user.stocks.create(name: "Stock ##{n}", price: rand(20) * 1000,
                     duration: rand(15), interest: rand(25))
end
