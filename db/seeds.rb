FactoryGirl.create :user, email: "super_manager@gmail.com", role: Settings.user_roles.super_manager, password: "super_manager@123", password_confirmation: "super_manager@123"
puts "Created Super Manager"

10.times {FactoryGirl.create :user}
puts "Created 10 users"

Settings.rooms.each{|item| FactoryGirl.create :room, name: item.name, color: item.color}
puts "Created 4 rooms"

users = []
Settings.users.each {|user| users << FactoryGirl.create(:user, name: user.name, email: user.email)}
puts "Created 5 users, each user have 20 schedule"

Room.all.each_with_index do |room, i|
  date_time = DateTime.now + (i + 1).days
  start_time_day = date_time.change({hour: 7})
  end_time_day = date_time.change({hour: 21})

  hour, n = start_time_day, 0

  while (hour < end_time_day && n < 10) do
    schedule = FactoryGirl.create :schedule, user: users.sample, start_time: hour

    hour, n = schedule.finish_time, n + 1
  end
end
