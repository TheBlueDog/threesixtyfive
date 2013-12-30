json.array!(@snaps) do |snap|
  json.extract! snap, :id, :title, :description
  json.url snap_url(snap, format: :json)
end
