# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Song.destroy_all

josh = Artist.create(name: "Josh")

witherwop = Song.create(title: "WitherWop")
Song.create(title: "Grimland", artist_id: josh[:id])
Song.create(title: "PurnSong", artist_id: josh[:id])

josh.songs << witherwop
