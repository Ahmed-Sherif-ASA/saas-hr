class Company < Entity
  self.table_name = 'companies'
  belongs_to :organization
  has_many :branches
end
