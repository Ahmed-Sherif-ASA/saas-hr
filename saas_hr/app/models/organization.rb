class Organization < ApplicationRecord
  has_many :companies
  has_many :branches, through: :companies
  scope :emp_count_below_required, -> { where('employees_count < required_employees_count') }

  def check_max_employees_count
    if max_employees_count.zero?
      raise StandardError.new('Kindly set the maximum number of employees for the organization')
    elsif employees_count + 1 > max_employees_count
      raise StandardError.new('Employees count exceeded the defined maximum')
    end
  end

  def check_required_employees_count
    return if employees_count.zero?
    return unless employees_count - 1 < required_employees_count

    raise StandardError.new('Employees count below the required count')
  end
end
