class Employee < ApplicationRecord
  belongs_to :entity, polymorphic: true
  validate :check_max_employees_count, on: :create
  before_destroy :check_required_employees_count
  after_create :increment_entity_employees_count
  after_destroy :decrement_entity_employees_count

  def increment_entity_employees_count
    entity.increment_employees_count
  end

  def decrement_entity_employees_count
    entity.decrement_employees_count
  end

  def check_max_employees_count
    entity.organization.check_max_employees_count
  rescue StandardError => e
    errors.add(:employees_count, e.message)
  end

  def check_required_employees_count
    entity.organization.check_required_employees_count
  rescue StandardError => e
    errors.add(:employees_count, e.message)
    throw(:abort)
  end
end
