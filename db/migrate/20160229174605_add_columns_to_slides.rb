class AddColumnsToSlides < ActiveRecord::Migration
  def change
    add_column :slides, :published, :boolean
    add_column :slides, :published_from, :datetime
    add_column :slides, :published_to, :datetime
  end
end
