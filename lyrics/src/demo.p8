function _init()
	g_verse_1 = "god rest you mer.ry gen.tle.men:let no.thing you dis.may..:for je.sus christ our sa..viour:was born u.pon this day..:to save us all from sa.tans powr:when we were gone a.stray."

	g_verse_2 = "from god our heav.nly fa..ther:a bles.sed an.gel came..:and un.to cer.tain she..pherds:brought tid.ings of the same..:how that in beth.le.hem was born:the son of god by name."

	g_verse_3 = "the she.pherds at those ti..dings:.re.joiced much in mind..:and left their flocks a fee..ding:in tem.pest storm and wind..:and went to beth.le.hem..:this bles.sed babe to find."

	g_verse_4 = "but when to beth.le.hem they came:where.at this in.fant lay..:they found him in a ma..nger:where ox.en feed on hay..:his mo.ther ma.ry knee..ling:un.to the lord did pray."

	g_verse_5 = "now to the lord sing prais..es:all you with.in this place..:and with. love and bro.ther.hood:each o.ther now em.brace..:this ho.ly tide of christ.mas:all o.ther doth de.face."

	g_chorus  = "o. ti..dings of com..fort and joy.:comfort and joy.:o. ti..dings of com..fort and joy...."
end

g_ind = 1
function _update60()
	if lyrics_update() then
		local tab = {g_verse_1, g_verse_2, g_verse_3, g_verse_4, g_verse_5, g_chorus}
		lyrics(tab[g_ind], 0, .3, 1, 1)

		printh("next")

		g_ind += 1
	end
end

function _draw()
	cls(1)
	print('pico_project!', 20, 20, 7)
	print(stat(1), 20, 30, 7)
	lyrics_draw()
end
