class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :name
      t.text :desc
      t.text :author

      t.timestamps null: false
    end
  end
end
