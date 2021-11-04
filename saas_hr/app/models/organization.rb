class Organization < ApplicationRecord
  has_many :companies
  has_many :branches, through: :companies
  validate :check_max_employees_count

  def check_max_employees_count
    raise StandardError.new('Employees count exceeded the threshold') if employees_count > max_employees_count
  end
end
