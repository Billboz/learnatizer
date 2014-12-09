json.array!(@tips) do |tip|
  json.extract! tip, :id
  json.url concept_tip_url (tip, format: :json)
end
