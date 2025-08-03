module AttendeesFinder(
    findByInfixOfFirstName, 
    Attendee(firstName, Attendee)
) where

import Data.List(isInfixOf)

data Attendee = Attendee {
     firstName :: String
} deriving (Show, Eq)


findByInfixOfFirstName :: String -> [Attendee] -> [Attendee]
findByInfixOfFirstName = filter . matches
    where matches :: String -> Attendee -> Bool 
          matches query attendee = query `isInfixOf` (firstName attendee)
