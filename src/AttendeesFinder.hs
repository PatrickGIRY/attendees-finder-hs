module AttendeesFinder(
    findByInfixOfFirstName, 
    Attendee(firstName, Attendee)
) where

import Data.List(isInfixOf)

data Attendee = Attendee {
     firstName :: String
} deriving (Show, Eq)


findByInfixOfFirstName :: String -> [Attendee] -> [Attendee]
findByInfixOfFirstName query attendees = filter (matches query) attendees
    where matches :: String -> Attendee -> Bool 
          matches query attendee = query `isInfixOf` (firstName attendee)
