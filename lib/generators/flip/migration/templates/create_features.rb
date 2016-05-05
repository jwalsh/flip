class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :key
      t.boolean :enabled, default: true
      t.timestamps
    end
    add_index :features, :key, unique: true
  end
end
