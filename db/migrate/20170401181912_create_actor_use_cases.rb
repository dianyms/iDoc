class CreateActorUseCases < ActiveRecord::Migration[5.0]
  def change
    create_table :actor_use_cases do |t|
      t.references :actor, foreign_key: true
      t.references :use_case, foreign_key: true

      t.timestamps
    end
  end
end
