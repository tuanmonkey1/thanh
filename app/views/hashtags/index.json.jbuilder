json.array!(@hashtags) do |hashtag|
	json.id hashtag.id
    json.name hashtag.name
end
