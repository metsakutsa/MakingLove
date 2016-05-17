--FUNCTIONS TO READ A FILE, SAVE INTO TABLE AND THEN ACCESS REQUIRED LINES
currentLine = 1

function readLines(sPath)
	local file = io.open(sPath, "r")
	if file then
		local tLines = {}
		local sLine = file:read()
		while sLine do
			table.insert(tLines, sLine)
			sLine = file:read()
		end
		file.close()
		return tLines
	end
	return nil
end

function writeLines(sPath, tLines)
	local file = fs.open(sPath, "w")
	if file then
		for _, sLine in ipairs(tLines) do
			file.writeLine(sLine)
		end
		file.close()
	end
end

--usage
--local tLines = readLines("filename")
--print("Lines in the file: ", #tLines)
--tLines[2] = "This is line 2!"
--table.insert(tLines, "This is the last line!")
--writeLines("filename", tLines)