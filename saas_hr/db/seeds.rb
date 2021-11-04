# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Employee.destroy_all
Branch.destroy_all
Company.destroy_all
Organization.destroy_all
5.times do
  Organization.create(name: Faker::Company.name,
                      max_employees_count: 25,)
end

Organization.all.each do |org|
  2.times do
    Company.create(name: Faker::Company.name,
                   employees_count: 0,
                   organization_id: org.id,)
  end
end

Company.all.each do |comp|
  2.times do
    Branch.create(name: Faker::Address.city,
                  employees_count: 0,
                  company_id: comp.id,)
  end
  3.times do
    Employee.create(name: Faker::Name.name, entity_type: 'Company', entity_id: comp.id)
  end
end
Branch.all.each do |br|
  3.times do
    Employee.create(name: Faker::Name.name, entity_type: 'Branch', entity_id: br.id)
  end
end
