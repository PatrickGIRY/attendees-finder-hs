module AttendeesFinder(
    findByInfixOfFirstName, 
    Attendee(firstName, Attendee)
) where


data Attendee = Attendee {
     firstName :: String
} deriving (Show, Eq)


findByInfixOfFirstName :: String -> [Attendee] -> [Attendee]
findByInfixOfFirstName = undefined