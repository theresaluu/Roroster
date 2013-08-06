json.array!(@rosters) do |roster|
  json.extract! roster, :overall, :scheduling, :fun, :day, :night, :food, :contact1, :contact2, :contact3, :freq
  json.url roster_url(roster, format: :json)
end
