suit = require "Libraries/SUIT"
local machine = require('statemachine')

local fsm = machine.create({
	initial = 'green',
	events = {
	{ name = 'main',  from = 'green',  to = 'red' },
	{ name = 'load', from = 'red', to = 'green'	},
	{ name = 'configuration',  from = 'green',  to = 'red' },
	{ name = 'quit',  from = 'green',  to = 'red' }
	},
	callbacks = {
	ongreen =  function(self, event, from, to) bgColor = {0,255,0} end,
	onred =    function(self, event, from, to) bgColor = {255,0,0} end,
}})



