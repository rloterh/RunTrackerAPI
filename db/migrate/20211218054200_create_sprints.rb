class CreateSprints < ActiveRecord::Migration[6.1]
  def change
    create_table :sprints do |t|
      t.integer :target
      t.integer :hours
      t.integer :minutes
      t.integer :seconds
      t.integer :distance
      t.text :remarks
      t.decimal :effort

      t.timestamps
    end
  end
end
