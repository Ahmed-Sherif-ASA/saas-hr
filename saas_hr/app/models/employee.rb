class Employee < ApplicationRecord
  belongs_to :entity, polymorphic: true
end
