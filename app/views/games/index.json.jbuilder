json.array!(@games) do |game|
  json.extract! game, :id, :sport, :address, :date, :stattime, :endtime, :attendees, :description
  json.url game_url(game, format: :json)
end
