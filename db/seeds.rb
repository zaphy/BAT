# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Faker::Config.locale = :de
YEARS = (1960..2010).to_a
MONTHS = (1..12).to_a
DAYS = (1..28).to_a
BUILDINGNUMBERS = (1..200).to_a.map(&:to_s)

MAX_MEMBERS = 250
cur_members = Member.count
if cur_members < MAX_MEMBERS
  puts("Adding #{MAX_MEMBERS - cur_members} fake member.")
  cur_members.upto(MAX_MEMBERS) do |number|
    birthday = Date.new(YEARS.shuffle.first, MONTHS.shuffle.first, DAYS.shuffle.first)
    member_name_data = {:first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name}
    member_address_data = {:address_house_number => Faker::Address.building_number, :address_street => Faker::Address.street_name,
                           :city => Faker::Address.city, :postal_code => Faker::Address.zip_code}
    membership_started = [Date.today - (1..60).to_a.shuffle.first.months, birthday + 3.years].max
    member_other_data = {:birthday => birthday}
    # :email => Faker::Internet.free_email, 
    
    member = Member.create(member_name_data.merge(member_address_data).merge(member_other_data))
    member.enabled = [true, false].shuffle.first
    member.membership_started_on = membership_started
    
    # 10 % officials
    member.official = true if number % 10 == 0 and member.enabled?

    member.save
    $stdout.print "."
    $stdout.flush
  end
  $stdout.puts
end

unused_colors = %w{#F0F8FF #FAEBD7 #FFE4C4 #DEB887 #556B2F #00BFFF #ADFF2F #E0FFFF #B0C4DE #FFA500 #B0E0E6 #FFC0CB}

d = Department.find_or_create_by_name("Breitensport/Hobby")
d.email = "hobby@batberlin.de"
d.save

d = Department.find_or_create_by_name("Damen")
d.email = "damen@batberlin.de"
d.save

d = Department.find_or_create_by_name("Nachwuchs/Kindersport")
d.email = "kinder@batberlin.de"
d.save

t = Team.find_or_create_by_name("Damen")
t.email = "damen@batberlin.de"
t.members = Member.enabled.shuffle.take(Member.enabled.count/10)
t.department = Department.find_by_name("Damen")
t.background_color = unused_colors.shuffle!.shift
t.save

t = Team.find_or_create_by_name("Mädchen")
t.email = "maedchen@batberlin.de"
t.members = Member.enabled.shuffle.take(Member.enabled.count/10)
t.department = Department.find_by_name("Damen")
t.background_color = unused_colors.shuffle!.shift
t.save

t = Team.find_or_create_by_name("Hobby")
t.email = "trainer@hobby.batberlin.de"
t.members = Member.enabled.shuffle.take(Member.enabled.count/5)
t.department = Department.find_by_name("Breitensport/Hobby")
t.background_color = unused_colors.shuffle!.shift
t.save

t = Team.find_or_create_by_name("Eltern/Kind")
t.email = "trainer@eltern.batberlin.de"
t.members = Member.enabled.shuffle.take(Member.enabled.count/10)
t.department = Department.find_by_name("Breitensport/Hobby")
t.background_color = unused_colors.shuffle!.shift
t.save

[7, 9, 11, 13, 15, 17].each do |age|
  t = Team.find_or_create_by_name("U#{age}")
  t.email = "trainer@u#{age}.kinder.batberlin.de"
  t.department = Department.find_by_name("Nachwuchs/Kindersport")
  t.background_color = unused_colors.shuffle!.shift
  t.save
end


