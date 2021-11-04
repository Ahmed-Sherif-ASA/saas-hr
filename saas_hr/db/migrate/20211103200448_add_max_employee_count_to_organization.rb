class AddMaxEmployeeCountToOrganization < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :max_employees_count, :integer, default: 0
  end
end
