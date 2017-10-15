class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :text
      t.datetime :delivery_date
      t.datetime :creation_date
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
