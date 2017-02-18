# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Shift.create(name: 'FFS', time: '04:00 - 13:00', status: 0, unique_identifier: "1", date: '2011-11-11')
Shift.create(name: 'FS', time: '06:00 - 13:00', status: 0, unique_identifier: "2", date: '2011-11-12')
Shift.create(name: 'SS', time: '13:00 - 21:30', status: 0, unique_identifier: "wallah", date: '2011-11-13')
Shift.create(name: 'SSS', time: '13:00 - 22:00', status: 0, unique_identifier: "4", date: '2011-11-14')
Shift.create(name: 'NS', time: '22:45 - 03:30', status: 0, unique_identifier: "5", date: '2011-11-15')
Shift.create(name: 'NSF', time: '22:45 - 04:00', status: 0, unique_identifier: "yallah", date: '2011-11-16')

