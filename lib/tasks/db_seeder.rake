namespace :database_seeder do
  require 'httparty'

  desc "Seeds The Database."
  task :seed => :environment do
    HTTParty.get(ENV.fetch("API_URL") + "users").each do |user|
      User.create!(user)
    end

    HTTParty.get(ENV.fetch("API_URL") + "photos").each do |photo|
      Photo.create!(photo)
    end

    HTTParty.get(ENV.fetch("API_URL") + "albums").each do |album|
      Album.create!(album)
    end
  end
end
