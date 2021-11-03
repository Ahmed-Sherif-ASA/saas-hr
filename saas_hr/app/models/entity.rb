class Entity < ApplicationRecord
  self.abstract_class = true
  after_update :update_employees_count

  def update_employees_count
    organization.update(employees_count: organization.employees_count + (employees_count - employees_count_was))
  end

  def employees_count
    raise NotImplementedError, "This class #{self.class} doesn't implement employees_count"
  end
end
