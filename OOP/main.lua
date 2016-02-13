--THIS IS HOW YOU CLASS

Character = {}

--ÜLDINE KARAKTERI KLASS
function Character.new(name)
	local self = {}
	local name = name

	function self.getName()
		if name then
			return name
		else
			return "No name :("
		end
	end
	
	function self.speak(words)
		print("Karakter ütleb " .. words)
	end

	return self
end


--KALA KLASS
kala = {}
function kala.new(name)
	local self = Character.new(name)

	self.canSwim = true

	function self.speak()
		print("I overwrite parent speak with 'MLRGHH-MLHGRGLHH'.")
	end
	return self
end


local kilu = Character.new("kilu")

print(kilu.getName())
kilu.speak("Mull-mull!")


local ahven = kala.new("ahven")
print(ahven.getName())
ahven.speak("Mull")


--OR SOME SUCH SORT OF ACTIVITY