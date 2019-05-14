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
    Equipment.create(name: 'Pool')
    Equipment.create(name: 'Gym')
    Equipment.create(name: 'Yoga mats')
    Equipment.create(name: 'Boxing bag')
    Equipment.create(name: 'Running track')
    User.create(email:'admin@gmail.com',password_digest:"$2a$10$AJrCSZwoU3YAz8XdvTE/BO9MDNVaZiR4Q7A3O4e2N.pPmXpWAt/Ca")
    CompanyLeadSource.create(description: 'Facebook')
    CompanyLeadSource.create(description: 'Instagram')
    CompanyLeadSource.create(description: 'Twitter')
    CompanyLeadSource.create(description: 'Newspaper')
    CompanyLeadSource.create(description: 'Friends or family')
    CompanyLeadSource.create(description: 'Youtube')
    CompanyLeadTransactionSource.create(name: 'Phone')
    CompanyLeadTransactionSource.create(name: 'Email')
    CompanyLeadTransactionSource.create(name: 'Videochat')
    CompanyLeadTransactionSource.create(name: 'Chat')
    CompanyLeadTransactionSource.create(name: 'Whatsapp')
    CompanyLead.create(name: "Lucas", lastName: "Balcazar", email: "Lucas@gmail.com", cellphone: "6748394", company_lead_source_id:"1")


    