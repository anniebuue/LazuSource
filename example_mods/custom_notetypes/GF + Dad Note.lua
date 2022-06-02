-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
local singAnims = { "singLEFT", "singDOWN", "singUP", "singRIGHT" };

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'GF + Dad Note' then
		characterPlayAnim("gf", singAnims[noteData], true);
		characterPlayAnim("dad", singAnims[noteData], true);
	end
end