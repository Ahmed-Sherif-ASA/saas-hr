class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :employees_count, default: 0
      t.references :organization, foreign_key: true, index: false
      t.timestamps
    end
  end
end
