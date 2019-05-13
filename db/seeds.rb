# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    DisciplineType.create(name: 'prueba disciplina', description: 'prueba descripcion')
    ResourceType.create(name: 'prueba resource', description: 'prueba descripcion')
    FitnessResource.create(name: 'nombre fitness resource', address:'address', phone: '54543543', website: 'google.com', openTime: '2:00', closeTime: '14:00', resource_type_id: ResourceType.all.first.id)
    Tag.create(name: 'Mujeres')
    Tag.create(name: 'Hombres')
    Tag.create(name: '18+')
    Tag.create(name: '18-')
    Tag.create(name: 'Gordos')
    Tag.create(name: 'Flacos')



