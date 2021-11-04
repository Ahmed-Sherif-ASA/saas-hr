class Employee < ApplicationRecord
  belongs_to :entity, polymorphic: true
  validate :check_max_employees_count, on: :create
  after_create :increment_entity_employees_count
  after_destroy :decrement_entity_employees_count

  def increment_entity_employees_count
    entity.increment_employees_count
  end

  def decrement_entity_employees_count
    entity.decrement_employees_count
  end

  def check_max_employees_count
    organization = entity.organization
    if organization.max_employees_count.zero?
      errors.add(:employees_count, 'Kindly set the maximum number of employees for the organization')
    elsif organization.employees_count + 1 > organization.max_employees_count
      errors.add(:employees_count, 'Exceeded the threshold for employees count')
    end
  end
end
