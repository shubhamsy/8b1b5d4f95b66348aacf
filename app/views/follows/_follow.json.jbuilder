json.extract! follow, :id, :followable_type, :followable_id, :created_at, :updated_at
json.url follow_url(follow, format: :json)
