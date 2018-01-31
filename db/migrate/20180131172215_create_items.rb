class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.references :user
      t.string :title
      t.string :url
      t.text :text

      t.timestamps
    end
  end
end
