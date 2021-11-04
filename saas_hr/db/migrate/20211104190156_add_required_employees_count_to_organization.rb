class AddRequiredEmployeesCountToOrganization < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :required_employees_count, :integer, default: 0
  end
end
