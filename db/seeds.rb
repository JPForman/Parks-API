# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed

  def self.begin
    Park.destroy_all
    Review.destroy_all
    seed = Seed.new
    seed.generate_parks
    seed.generate_reviews
  end

  def generate_parks
    20.times do |i|
      park = Park.create!(
        name: Faker::Movies::Hobbit.location,
        state: state = Faker::Address.state
      )
    end
  end

  def generate_reviews
    parks = Park.all

    50.times do |i|
      park = parks.sample
      review = Review.create!({
        :title => Faker::Quotes::Shakespeare.king_richard_iii_quote,
        :content => Faker::TvShows::RickAndMorty.quote,
        :park_id => park.id

        })
    end
  end
end
    Seed.begin

    p "Created #{Park.count} Parks"
    p "Created #{Review.count} Reviews"
