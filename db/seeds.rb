# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create!(
  name: 'Action',
  priority: '1'
)

Category.create!(
  name: 'Adventure',
  priority: '5'
)
Category.create!(
  name: 'Role-playing',
  priority: '3'
)
Category.create!(
  name: 'Simulation',
  priority: '4'
)
Category.create!(
  name: 'Strategy',
  priority: '7'
)
Category.create!(
  name: 'Sports',
  priority: '6'
)
Category.create!(
  name: 'MMO',
  priority: '2'
)
