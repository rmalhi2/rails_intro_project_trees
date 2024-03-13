# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Load JSON data
require 'json'
require 'net/http'

# Define the API endpoint
url = URI('https://data.winnipeg.ca/resource/hfwk-jp4h.json')

# Fetch JSON data from the API
response = Net::HTTP.get(url)
trees_data = JSON.parse(response)

# Clear existing data
Tree.destroy_all
Location.destroy_all
Park.destroy_all
Neighbourhood.destroy_all

# Populate the database with tree data
puts("Populating database with tree data...")

trees_data.each do |tree_data|
  # Create or find park
  park = Park.find_or_create_by(park_name: tree_data['park'])
  
  # Create or find neighbourhood
  neighbourhood = Neighbourhood.find_or_create_by(neighbourhood_name: tree_data['neighbourhood'])

  # Create tree
  tree = Tree.create(
    # tree_id: tree_data['tree_id'],
    botanical_name: tree_data['botanical_name'],
    common_name: tree_data['common_name'],
    diameter_at_breast_height: tree_data['diameter_at_breast_height'],
    location_class: tree_data['location_class'],
    park: park,
    neighbourhood: neighbourhood
  )

  # Create location
  Location.create(
    tree: tree,
    latitude: tree_data['location']['latitude'],
    longitude: tree_data['location']['longitude']
  )
end

puts("Tree data populated successfully!")

