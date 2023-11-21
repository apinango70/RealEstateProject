# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "agencies.rb"))'

puts 'Creating 10 agencies...'

# Crear 10 agencias con datos aleatorios
10.times do
  # Obtiene una lista de todas las imágenes en la carpeta app/assets/images/agency
  image_filenames = Dir.glob(Rails.root.join('app', 'assets', 'images', 'agency', '*.png'))

  # Selecciona un archivo de imagen aleatorio de la carpeta
  image_path = image_filenames.sample

  # Crea una nueva agencia con datos aleatorios
  agency = Agency.new(
    name: Faker::Company.name,
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    website: Faker::Internet.url
  )

  # Adjunta la imagen a la agencia utilizando Active Storage
  agency.photo.attach(io: File.open(image_path), filename: File.basename(image_path))

  agency.save!
end

puts '10 agencies created with photos!'
