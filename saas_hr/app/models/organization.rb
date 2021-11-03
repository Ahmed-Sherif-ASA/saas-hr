class Organization < ApplicationRecord
  has_many :companies
  has_many :branches, through: :companies
end
