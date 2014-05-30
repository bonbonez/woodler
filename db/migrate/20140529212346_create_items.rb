class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :url
      t.string :title
      t.string :description
      t.string :meta_keywords
      t.string :meta_description
      t.integer :price
      t.string :specs

      t.timestamps
    end
  end
end
