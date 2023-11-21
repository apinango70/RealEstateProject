require 'csv'


# Tipo de propiedades
puts 'Importing typeProperties...'
CSV.foreach(Rails.root.join('db/seeds/csv/typeProperties.csv'), headers: true) do |row|
  TypeProperty.create! do |type_property|
    type_property.id = row[0]
    type_property.name = row[1]
  end
end
puts 'TypeProperties imported!'

# Tipo de ofertas
puts 'Importing typeOffers...'
CSV.foreach(Rails.root.join('db/seeds/csv/typeOffers.csv'), headers: true) do |row|
  TypeOffer.create! do |type_offer|
    type_offer.id = row[0]
    type_offer.name = row[1]
   end
end
puts 'TypeOffers imported!'

# Tipo de caraterísticas
puts 'Importing features...'
CSV.foreach(Rails.root.join('db/seeds/csv/features.csv'), headers: true) do |row|
  Feature.create! do |feature|
    feature.id = row[0]
    feature.name = row[1]
  end
end
puts 'Features imported!'

# Puestos en las agencias
puts 'Importing positions...'
CSV.foreach(Rails.root.join('db/seeds/csv/positions.csv'), headers: true) do |row|
  Position.create! do |position|
    position.id = row[0]
    position.name = row[1]
  end
end
puts 'Positions imported!'