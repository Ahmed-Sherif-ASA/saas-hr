class AddEntityToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_reference :employees, :entity, polymorphic: true, index: true
  end
end
