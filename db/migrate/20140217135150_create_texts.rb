class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :title
      t.string :subtitle
      t.text :short_description
      t.text :full_description

      t.timestamps
    end
  end
end
