-- In order to do this, you have to bring the desktop1, desktop2, etc. into the dock, go to the respective desktop and
-- then select "This Desktop"
-- this gets around the fact that in Mac Os X 10.7 applescript is not able to select desktop


--In order to customize the position of the windows, we set bounds
--format to set the bounds: {72, 90, 512, 481}
--explanation{px from left-side of your screen to left-side of the window, px from top of screen to top of window, px left of screen to RIGHT-SIDE of window, px form top of screen to BOTTOM of window}


-- getting the dimensions of the window
tell application "Finder"
	set _b to bounds of window of desktop
	set _width to item 3 of _b
	set _height to item 4 of _b
end tell

delay 1
launch application "desktop1"
delay 1


-- opening up iTerm2 for development
tell application "iTerm 2"
	set myterm to (make new terminal)
	activate
	-- some items don't respond well to setting the bounds via "set bounds to {4, 4, 4, 4} etc, in that case use the following	
	set the bounds of the first window to {_width / 2, 0, _width, _height}
end tell


-- web opens the websites I work on
tell application "Google Chrome"
	tell (make new window)
		set URL of active tab to "http://kielian.net/Main" 
		set newTab to make new tab with properties {URL:"http://gardenplot.info"}
		set newTab to make new tab with properties {URL:"https://www.google.com"}
		set bounds to {0, 0, _width / 2, _height}
	end tell
end tell

delay 3 -- the initial opening of chrome takes a while
launch application "desktop2"
delay 1

-- opens news and email 
tell application "Google Chrome"
	tell (make new window)
		set URL of active tab to "https://news.ycombinator.com/"
		set newTab to make new tab with properties {URL:"https://mail.google.com/mail/u/0/"}
		set bounds to {0, 0, _width, _height}
	end tell
end tell

delay 1
launch application "desktop3"
delay 1

-- opens todo list apps
tell application "Google Chrome"
	-- to do list, and done this calendar
	tell (make new window)
		set URL of active tab to "https://app.asana.com/"
		set newTab to make new tab with properties {URL:"https://idonethis.com/"}
		set bounds to {0, 0, _width, _height}
	end tell
end tell

delay 1
launch application "desktop4"
delay 1

-- opens project management and time tracking apps
tell application "Google Chrome"
	-- project mode
	tell (make new window)
		set URL of active tab to "https://trello.com/"
		set newTab to make new tab with properties {URL:"http://www.getharvest.com/"}
		set bounds to {0, 0, _width, _height}
	end tell
end tell

delay 1
launch application "desktop5"
delay 1

-- calendar and meetup
tell application "Google Chrome"
	tell (make new window)
		set URL of active tab to "http://www.meetup.com/"
		set newTab to make new tab with properties {URL:"https://www.google.com/calendar/render"}
		set bounds to {0, 0, _width, _height}
	end tell
	activate
end tell
