class Branch < Entity
  self.table_name = 'branches'
  belongs_to :company
  delegate :organization, to: :company, allow_nil: true
end
