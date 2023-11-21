# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "propertyFeatures.rb"))'
puts 'Importing propertyFeatures...'

# Obtén todas las propiedades y características disponibles
properties = Property.all
features = Feature.all

# Itera sobre cada propiedad
properties.each do |property|
  # Obtén un conjunto de IDs únicas de características para esta propiedad
  feature_ids = features.pluck(:id).to_set

  # Calcula un número aleatorio de características a asignar a esta propiedad
  num_features_to_assign = rand(1..feature_ids.size)

  # Asigna características aleatorias a la propiedad
  num_features_to_assign.times do
    # Selecciona una característica al azar y elimínala del conjunto
    feature_id = feature_ids.to_a.sample
    feature_ids.delete(feature_id)

    # Crea una nueva PropertyFeature para la propiedad y característica seleccionadas
    PropertyFeature.create(property_id: property.id, feature_id: feature_id)
  end
end
