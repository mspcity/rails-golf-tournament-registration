# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tournament_01 = Tournament.create({name: "Flatiron Open", start_date: "11/03/2020", end_date: "11/06/2020", check_in: "Noon", shotgun_start: "1:30 pm", location: "New York, NY", description: "register today"})
tournament_02 = Tournament.create({name: "Masters classic", start_date: "12/09/2020", end_date: "11/12/2020", check_in: "Noon", shotgun_start: "1:30 pm", location: "Augsta, GA", description: "register today"})
tournament_03 = Tournament.create({name: "King's CUP", start_date: "01/14/2021", end_date: "01/17/2021", check_in: "Noon", shotgun_start: "2:30 pm", location: "St.Pual, MN", description: "register today"})
tournament_04 = Tournament.create({name: "Pebble Beach Championship", start_date: "03/19/2021", end_date: "03/22/2021", check_in: "Noon", shotgun_start: "1:00 pm", location: "Pebble Beach, CA", description: "register today"})
tournament_05 = Tournament.create({name: "Turtle Bay Challenge", start_date: "05/20/2021", end_date: "05/23/2021", check_in: "Noon", shotgun_start: "1:30 pm", location: "Kahuku, HI", description: "register today"})

