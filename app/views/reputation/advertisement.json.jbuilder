json.error_message @error_message
if @advertisement.present?
  json.id @advertisement.id
  json.evaluation_value @evaluation_value
  json.likes_count @advertisement.reputation_for(:likes).to_i
end
