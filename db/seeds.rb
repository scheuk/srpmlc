# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :firstname => ENV['ADMIN_FIRSTNAME'].dup, :lastname => ENV['ADMIN_LASTNAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.email
user.add_role :admin
user2 = User.find_or_create_by_email :firstname => 'Second', :lastname => 'User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
puts 'user: ' << user2.email
user2.add_role :VIP

site = Site.create :sitename => 'SiteOne', :supervisor => 'SiteOne Supervisor'
puts 'site: ' << site.sitename

user.sites << site
user2.sites << site
