json.extract! review, :id, :data_review, :version, :description, :project_id, :created_at, :updated_at
json.url review_url(review, format: :json)
