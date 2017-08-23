class CreateStepScenarios < ActiveRecord::Migration[5.0]
  def change
    create_table :step_scenarios do |t|
      t.string :sequence
      t.text :description
      t.references :scenario, foreign_key: true

      t.timestamps
    end
  end
end
