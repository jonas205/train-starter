script.on_event("train_mode_toggle", function(event)
	local player = game.players[event.player_index]
	local hovering = player.selected

	if not hovering or (hovering.type ~= "locomotive" and hovering.type ~= "cargo-wagon") then
		return
	end

	local train = hovering.train

	if not train then
		return
	end

	train.manual_mode = not train.manual_mode
end)
