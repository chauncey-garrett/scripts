--
-- Display IP address
--

set ipAddress to (do shell script "curl --silent http://icanhazip.com") as text

delay 2

display notification ipAddress as string with title "Current IP Address"

