# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "properties.rb"))'
puts 'Importing 20 properties...'

# Obtén todos los usuarios con el rol "agent"
agent_users = User.where(role: 'agent')

20.times do
  # Obtén una lista de todas las imágenes en la carpeta app/assets/images/properties
  image_filenames = Dir.glob(Rails.root.join('app', 'assets', 'images', 'properties', '*.jpg'))

  property = Property.new(
    user_id: agent_users.sample.id, # Selecciona un usuario "agent" aleatorio
    type_offer_id: TypeOffer.all.sample.id,
    type_property_id: TypeProperty.all.sample.id,
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    neighborhood: Faker::Address.community,
    bedrooms: rand(1..6),
    bathrooms: rand(1..4),
    floors: rand(1..3),
    garages: rand(0..3),
    area: rand(500..5000), # Área en pies cuadrados
    sale_or_rent_price: rand(50000..1000000) # Precio en dólares
  )

  # Selecciona un archivo de imagen aleatorio de la carpeta
  image_path = image_filenames.sample

  # Adjunta la imagen a la propiedad utilizando Active Storage
  property.photo.attach(io: File.open(image_path), filename: File.basename(image_path))

  property.save!
end

puts '20 properties successfully created with random photos and assigned to agent users!'
