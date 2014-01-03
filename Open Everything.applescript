--List item 1: {72, 90, 512, 481}
--The distance in pixels from the left side of the screen to the left side of the Finder window.
--List item 2: {72, 90, 512, 481}
--The distance in pixels from the top of the screen to the top of the Finder window.
--List item 3: {72, 90, 512, 481}
--The distance in pixels from the left side of the screen to the right side of the Finder window.
--List item 4: {72, 90, 512, 481}
--The distance in pixels from the top of the screen to the bottom of the Finder window.

-- getting the dimensions of the window
tell application "Finder"
	set _b to bounds of window of desktop
	set _width to item 3 of _b
	set _height to item 4 of _b
end tell

--opening up production apps
tell application "Google Chrome"
	
	-- news and email
	tell (make new window)
		set URL of active tab to "https://news.ycombinator.com/"
		set newTab to make new tab with properties {URL:"https://mail.google.com/mail/u/0/"}
		set bounds to {0, 0, _width, _height}
	end tell
	
	-- only open this on wednesdays
	tell (make new window)
		set URL of active tab to "http://kissmanga.com/Manga/One-Piece/"
		set newTab to make new tab with properties {URL:"http://kissmanga.com/Manga/Naruto/"}
		set newTab to make new tab with properties {URL:"http://kissmanga.com/Manga/Bleach/"}
		set bounds to {0, 0, _width, _height}
	end tell
	
	-- to do list, and done this calendar
	tell (make new window)
		set URL of active tab to "https://app.asana.com/0/8823055216833/8823055216833"		
		set newTab to make new tab with properties {URL:"https://idonethis.com/cal/gskielian-personal/"}
		set bounds to {0, 0, _width, _height}
	end tell
	
	-- project mode
	tell (make new window)
		set URL of active tab to "https://trello.com/"
		set newTab to make new tab with properties {URL:"https://gskielian.harvestapp.com/time"}
		set bounds to {0, 0, _width, _height}
		
	end tell
		
	-- finances
	tell (make new window)
		set URL of active tab to "https://wwws.mint.com/overview.event?"
		set newTab to make new tab with properties {URL:"https://www.chase.com/"}
		set newTab to make new tab with properties {URL:"https://docs.google.com/spreadsheet/ccc?key=0AsyVTaa5nDs1dHo3X3poZTBwRS1fUkJIVndsQk5QdXc#gid=1"}
		set bounds to {0, 0, _width, _height}
	end tell
	
	-- web dev page
	tell (make new window)
		set URL of active tab to "http://kielian.net/"
		set newTab to make new tab with properties {URL:"http://gardenplot.info"}
		set newTab to make new tab with properties {URL:"https://www.google.com"}
		set bounds to {0, 0, _width / 2, _height}
	end tell
	activate
	
	-- calendar and meetup
	tell (make new window)
		set URL of active tab to "http://www.meetup.com/"	
		set newTab to make new tab with properties {URL:"https://www.google.com/calendar/render"}
		set bounds to {0, 0, _width / 2, _height}
	end tell
	activate
	
	
end tell

-- opening up iTerm2 for development
tell application "iTerm 2"	
	set myterm to (make new terminal)
	activate
-- some items don't respond well to setting the bounds via "set bounds to {4, 4, 4, 4} etc, in that case use the following	
	set the bounds of the first window to {_width / 2, 0, _width, _height}
end tell
