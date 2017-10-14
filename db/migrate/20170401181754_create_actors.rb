class CreateActors < ActiveRecord::Migration[5.0]
  def change
    create_table :actors do |t|
      t.string :name
      t.references :use_case, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
