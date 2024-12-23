# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
[{"name"=>"Ahmad",
  "email"=>"ahmad@example.com",
  "cnic"=>"12345-1234567-2"},
 {"name"=>"Daniyaal",
  "email"=>"daniyaal@example.com",
  "cnic"=>"12345-1234567-9"},
 {
  "name"=>"Imraan",
  "email"=>"imraan@example.com",
  "cnic"=>"12345-1234567-0"},
 {"name"=>"Sameer",
  "email"=>"sameer@example.com",
  "cnic"=>"12345-1234567-3"}].each do |user_data|
        User.find_or_create_by(name: user_data["name"], email: user_data["email"], cnic: user_data["cnic"])
  end