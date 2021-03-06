--==============================
-- Contacts > Email Follow Up with OmniFocus
-- Version 1.0.0
-- Written By: Ben Waldie <ben@automatedworkflows.com>
-- http://www.automatedworkflows.com

-- Description: This script is a Contacts app plug-in, which adds a "Follow Up with OmniFocus" rollover to contact email address fields. When selected, it creates an OmniFocus followup task."

-- Installation: Save as a compiled script into ~/Library/Address Book Plug-Ins

-- Usage: Select "Follow Up with OmniFocus" from the email address popup on a contact in the Contacts app.

-- Version History:
-- 1.0.0 - Initial release
--==============================

-- "using terms from" is necessary to let AppleScript know that these event handlers are terminology that belongs to the Contacts app.
using terms from application "Contacts"

	-- This handler returns the Contacts property for which the plug-in should function.
	on action property
		return "email"
	end action property

	-- This handler returns the name of the plug-in to be displayed in the Contacts property popup menu.
	on action title
		return "Follow Up with OmniFocus"
	end action title

	-- This handler basically tells the Contacts app that this plug-in should be enabled for a given person.
	on should enable action with theProperty for thePerson
		if theProperty is not equal to missing value then
			return true
		else
			return false
		end if
	end should enable action

	-- This handler runs when the plug-in is selected from the Contacts property popup menu.
	on perform action with theProperty for thePerson

		-- Target the contact from where the plug-in was triggered
		tell application "Contacts"
			tell thePerson

				-- Determine whether the contact is a company, and if so, retrieve their company name.
				if company = true then
					set theName to organization

					-- If the company name is not populated, then retrieve their name.
					if theName = missing value then set theName to name

					-- If the contact is not a company then retrieve their name.
				else
					set theName to name
				end if
			end tell

			-- Retrieve the value of the property that triggered the plug-in.  This should be the contact's email address.
			set theEmail to value of theProperty
		end tell

		-- Target OmniFocus' quick entry window
		tell application "OmniFocus"
			tell quick entry

				-- Create a new followup task and note.
				make new inbox task with properties {name:"Email Followup with " & theName, note:"Email: " & theEmail}

				-- Expand the task to display the note.
				set note expanded of every tree to true

				-- Open the task
				open
			end tell
		end tell
	end perform action
end using terms from

