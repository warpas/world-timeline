json.extract! timeline_point, :id, :name, :description, :created_at, :updated_at
json.url timeline_point_url(timeline_point, format: :json)
