json.array!(@bouts) do |bout|
  json.extract! bout, :id, :opponent, :result, :bouttime, :boutdate, :fighter_id
  json.url bout_url(bout, format: :json)
end
