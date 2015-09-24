json.array!(@fighters) do |fighter|
  json.extract! fighter, :id, :name, :nickname, :from, :age, :height, :weight, :gym, :type
  json.url fighter_url(fighter, format: :json)
end
