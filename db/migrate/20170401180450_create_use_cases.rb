class CreateUseCases < ActiveRecord::Migration[5.0]
  def change
    create_table :use_cases do |t|
      t.string :name
      t.text :description
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
