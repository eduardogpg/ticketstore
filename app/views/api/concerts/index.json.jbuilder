json.concerts @concerts do |concert|
	json.id concert.id
	json.name concert.name
	json.description concert.description
	json.release_date_format concert.release_date_format
end