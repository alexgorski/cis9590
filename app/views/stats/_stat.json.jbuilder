json.extract! stat, :id, :games_played, :ppg, :apg, :rpg, :mpg, :per, :gf, :ft, :player_id, :created_at, :updated_at
json.url stat_url(stat, format: :json)
