class CreateBranches < ActiveRecord::Migration[5.0]
  def change
    create_table :branches do |t|
      t.string :name
      t.integer :employees_count, default: 0
      t.references :company, foreign_key: true, index: false
      t.timestamps
    end
  end
end
