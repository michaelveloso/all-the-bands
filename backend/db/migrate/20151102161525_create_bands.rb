class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name, null: false
      t.integer :year_formed, null: false
      t.integer :year_disbanded
      t.string :website
    end
  end
end
