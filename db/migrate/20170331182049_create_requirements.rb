class CreateRequirements < ActiveRecord::Migration[5.0]
  def change
    create_table :requirements do |t|
      t.string :name
      t.text :description
      t.string :requirement_type
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
