class CreateArts < ActiveRecord::Migration[5.1]
  def change
    create_table :arts do |t|
      t.string :title
      t.text :artwork
      t.string :artist

      t.timestamps
    end
  end
end
