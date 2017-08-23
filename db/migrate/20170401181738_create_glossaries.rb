class CreateGlossaries < ActiveRecord::Migration[5.0]
  def change
    create_table :glossaries do |t|
      t.string :term
      t.text :description
      t.string :synonymous
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
