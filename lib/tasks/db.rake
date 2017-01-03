namespace :db do
  desc "remake database data"
  task remake: :environment do
    if Rails.env.development? || Rails.env.staging?
      ["db:drop", "db:create", "db:migrate", "db:seed"].each do |action|
        Rake::Task[action].invoke
      end
    else
      puts 'Can rake db:remake in development & staging environments only'
    end
  end

  task create_super_manager: :environment do
    FactoryGirl.create :user, email: "super_manager@gmail.com", role: Settings.user_roles.super_manager
    puts "Created Super Manager"
  end

  task create_rooms: :environment do
    Settings.rooms.each{|item| FactoryGirl.create :room, name: item.name, color: item.color}
    puts "Created 4 rooms"
  end
end
