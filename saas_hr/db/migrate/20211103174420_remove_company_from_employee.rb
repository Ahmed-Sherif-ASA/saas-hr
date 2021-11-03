class RemoveCompanyFromEmployee < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :employees, name: 'fk_rails_15ca1438d5'
    remove_reference :employees, :company
  end
end
