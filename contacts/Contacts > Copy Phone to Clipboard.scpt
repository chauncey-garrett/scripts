--==============================
-- Contacts > Copy Phone to Clipboard
-- Version 1.0.0
-- Written By: Ben Waldie <ben@automatedworkflows.com>
-- http://www.automatedworkflows.com

-- Description: This script is a Contacts app plug-in, which adds a "Copy to Clipboard" rollover to contact phone fields.

-- Installation: Save as a compiled script into ~/Library/Address Book Plug-Ins

-- Usage: Select "Copy to Clipboard" from the phone popup on a contact in the Contacts app.

-- Version History:
-- 1.0.0 - Initial release
--==============================

-- "using terms from" is necessary to let AppleScript know that these event handlers are terminology that belongs to the Contacts app
using terms from application "Contacts"

	-- This handler returns the Contacts property for which the plug-in should function
	on action property
		return "phone"
	end action property

	-- This handler returns the name of the plug-in to be displayed in the Contacts property popup menu
	on action title
		return "Copy to Clipboard"
	end action title

	-- This handler basically tells the Contacts app that this plug-in should be enabled for a given person
	on should enable action with theProperty for thePerson
		if theProperty is not equal to missing value then
			return true
		else
			return false
		end if
	end should enable action

	-- This handler runs when the plug-in is selected from the Contacts property popup menu
	on perform action with theProperty for thePerson

		-- Target the contact from where the plug-in was triggered
		tell application "Contacts"

			-- Retrieve the value of the property that triggered the plug-in
			set theValue to value of theProperty
		end tell

		-- Copy the value to the clipboard
		set the clipboard to theValue

	end perform action
end using terms from

