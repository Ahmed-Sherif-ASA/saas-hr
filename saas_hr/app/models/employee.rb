class Employee < ApplicationRecord
  belongs_to :entity, polymorphic: true
  after_create :increment_entity_employees_count
  after_destroy :decrement_entity_employees_count

  def increment_entity_employees_count
    entity.increment_employees_count
  end

  def decrement_entity_employees_count
    entity.decrement_employees_count
  end
end
