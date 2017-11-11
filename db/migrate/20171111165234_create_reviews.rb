class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.datetime :data_review
      t.string :version
      t.text :description
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
