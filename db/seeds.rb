# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    DisciplineType.create(name: 'Crossfit', description: 'Crossfit class')
    DisciplineType.create(name: 'Calisthenics', description: 'Calisthenics class')
    DisciplineType.create(name: 'Kick Boxing', description: 'Kick Boxing class')
    DisciplineType.create(name: 'Zumba', description: 'Zumba class')
    DisciplineType.create(name: 'Boxing', description: 'Boxing class')
    DisciplineType.create(name: 'Cycling', description: 'Cycling class')
    DisciplineType.create(name: 'Brazilian Dance', description: 'Brazilian Dance class')
    DisciplineType.create(name: 'Capoeira', description: 'Capoeira class')
    ResourceType.create(name: 'Outdoor', description: 'Outdoor resource')
    ResourceType.create(name: 'Indoor', description: 'Indoor resource')
    ResourceType.create(name: 'Park', description: 'Park resource')
    FitnessResource.create(name: 'Samix', address:'Cusis', phone: '54543543', website: 'Samix.com', openTime: '2:00', closeTime: '14:00', resource_type_id: ResourceType.all.first.id)
    FitnessResource.create(name: 'Privilege', address:'4to anillo', phone: '767676', website: 'Privilege.com', openTime: '7:00', closeTime: '14:00', resource_type_id: ResourceType.all.first.id)
    FitnessResource.create(name: 'Nova team', address:'Charcas', phone: '6565575', website: 'Nova.com', openTime: '7:00', closeTime: '18:00', resource_type_id: ResourceType.all.first.id)
    FitnessResource.create(name: 'Master guardian team', address:'Charcas IV', phone: '76868', website: 'CSGO.com', openTime: '7:00', closeTime: '18:00', resource_type_id: ResourceType.all.first.id)
    Tag.create(name: 'Female')
    Tag.create(name: 'Male')
    Tag.create(name: '18+')
    Tag.create(name: '18-')
    Tag.create(name: 'Young')
    Tag.create(name: 'Old')
    Tag.create(name: 'Teamgroup')
    Tag.create(name: 'Swimming')
    Tag.create(name: 'Pregnant')
    Tag.create(name: 'Outdoor')
    Tag.create(name: 'Indoor')
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
    CompanyLead.create(name: "Gorderde", lastName: "Quintanilla", email: "Gorderde@gmail.com", cellphone: "5454664", company_lead_source_id:"2")
    CompanyLead.create(name: "Izuku", lastName: "Mirodilla", email: "Masdas@gmail.com", cellphone: "657676", company_lead_source_id:"2")
    CompanySaleRepresentative.create(name: "Marco", lastName: "Sinaniz")
    CompanySaleRepresentative.create(name: "Antonio", lastName: "Barea")
    CompanySaleRepresentative.create(name: "Paulo", lastName: "Kellogs")
    CompanySaleRepresentative.create(name: "Copa", lastName: "Copa")
    CompanyLeadTransaction.create(description: "Cold", company_lead_id: "1", company_sale_representative_id: "1", company_lead_transaction_source_id: "2")
    CompanyLeadTransaction.create(description: "Hot", company_lead_id: "2", company_sale_representative_id: "2", company_lead_transaction_source_id: "1")
    CompanyLeadTransaction.create(description: "Warm", company_lead_id: "3", company_sale_representative_id: "3", company_lead_transaction_source_id: "1")
    FitnessResourceDisciplineType.create(fitness_resource_id: "1" , discipline_type_id:"2")
    FitnessResourceDisciplineType.create(fitness_resource_id: "2" , discipline_type_id:"3")
    FitnessResourceDisciplineType.create(fitness_resource_id: "2" , discipline_type_id:"4")
    FitnessResourceDisciplineType.create(fitness_resource_id: "3" , discipline_type_id:"1")
    Plan.create(name: "Only Woman", description: "1 Month", price: "150.0", fitness_resource_id:"1")
    Plan.create(name: "Only Men", description: "3 Month", price: "340.0", fitness_resource_id:"2")
    Plan.create(name: "Tigre", description: "1 Month", price: "400.0", fitness_resource_id:"3")
    Plan.create(name: "Pro", description: "12 Month", price: "900.0", fitness_resource_id:"4")
    Plan.create(name: "Standard", description: "7 Month", price: "450.0", fitness_resource_id:"3")
    Plan.create(name: "Young boys", description: "1 Month", price: "70.0", fitness_resource_id:"2")
    PlanTag.create(tag_id: "1",plan_id:"1")
    PlanTag.create(tag_id: "9",plan_id:"1")
    PlanTag.create(tag_id: "2",plan_id:"2")
    PlanTag.create(tag_id: "3",plan_id:"1")
    PlanTag.create(tag_id: "3",plan_id:"2")
    PlanTag.create(tag_id: "7",plan_id:"3")
    PlanTag.create(tag_id: "7",plan_id:"4")
    PlanTag.create(tag_id: "8",plan_id:"4")
    PlanTag.create(tag_id: "10",plan_id:"4")
