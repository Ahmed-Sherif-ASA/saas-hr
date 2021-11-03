class Entity < ApplicationRecord
  self.abstract_class = true
  after_update :update_organization_employees_count
  has_many :employees, as: :entity

  def update_organization_employees_count
    organization.update(employees_count: organization.employees_count + (employees_count - employees_count_was))
  end

  def increment_employees_count
    update(employees_count: employees_count + 1)
  end

  def decrement_employees_count
    update(employees_count: employees_count - 1)
  end
end
