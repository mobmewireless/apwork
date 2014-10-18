json.array!(@workers) do |worker|
  json.extract! worker, :id, :name, :mobile, :location, :job, :assigned
  json.url worker_url(worker, format: :json)
end
