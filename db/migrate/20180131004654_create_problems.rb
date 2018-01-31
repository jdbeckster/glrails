class CreateProblems < ActiveRecord::Migration[5.1]
  def change
    create_table :problems do |t|
      t.string :name
      t.text :description
      t.binary :p_icon
      t.binary :p_backgroundimage
      t.string :npos

      t.timestamps
    end
  end
end
