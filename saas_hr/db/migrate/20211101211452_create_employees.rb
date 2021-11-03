class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.references :company, foreign_key: true, index: false
      t.timestamps
    end
  end
end
