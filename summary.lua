summary = {}

local lg = love.graphics

function summary.enter()
	state = STATE_SUMMARY
	stopMusic()
end

function summary.update(dt)
end

function summary.draw()
	lg.push()
	lg.scale(config.scale)

	lg.printf("SEU PLACAR:", 0, 32, WIDTH, "center")
	lg.printf(score, 0, 48, WIDTH, "center")

	lg.printf("VOCE SALVOU "..saved.." CIVIS", 0, 80, WIDTH, "center")
	lg.printf("MAIOR COMBO: " .. max_combo, 0, 96, WIDTH, "center")
	lg.printf("TEMPO TOTAL: ".. secondsToString(time), 0, 112, WIDTH, "center")
	lg.printf("ANDARES FEITOS: " .. (section-1)*3, 0, 128, WIDTH, "center")

	lg.printf("APERTE ENTER PARA CONTINUAR", 0, 160, WIDTH, "center")
	lg.pop()
end

function summary.keypressed(k, uni)
	if k == " " or k == "return" then
		highscore_entry.enter()
	end
end

function summary.action(k)
	if k == "jump" or k == "action" or k == "pause" then
		highscore_entry.enter()
	end
end
