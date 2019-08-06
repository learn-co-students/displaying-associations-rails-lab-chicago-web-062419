# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Song.destroy_all

Artist.create(name:"Kanye West")
Artist.create(name:"Francis and the Lights")


Song.create(title:"Gold Digger", artist_id:1)
Song.create(title:"Jesus Walks", artist_id:1)
Song.create(title:"Never Go Back", artist_id:2)
Song.create(title:"Betting On Us", artist_id:2)