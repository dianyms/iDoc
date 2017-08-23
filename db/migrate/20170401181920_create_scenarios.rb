class CreateScenarios < ActiveRecord::Migration[5.0]
  def change
    create_table :scenarios do |t|
      t.string :name
      t.text :description
      t.string :type
      t.references :use_case, foreign_key: true

      t.timestamps
    end
  end
end
