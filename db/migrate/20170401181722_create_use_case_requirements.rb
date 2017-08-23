class CreateUseCaseRequirements < ActiveRecord::Migration[5.0]
  def change
    create_table :use_case_requirements do |t|
      t.references :use_case, foreign_key: true
      t.references :requirement, foreign_key: true

      t.timestamps
    end
  end
end
