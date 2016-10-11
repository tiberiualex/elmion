module Utils exposing (..)

import Date exposing (..)
import Date.Extra.Config.Config_en_au exposing (config)
import Date.Extra.Format as Format exposing (format)
import Json.Decode as Decode exposing (..)

apply : Json.Decoder (a -> b) -> Json.Decoder a -> Json.Decoder b
apply func value =
    Decode.object2 (<|) func value

displayDateString : String -> String
displayDateString dateString =
  Result.withDefault "Failed to get a date." <|
    Result.map
      (format config "%d/%m/%Y")
      (Date.fromString dateString)

displayDateTime : String -> String
displayDateTime dateString =
  Result.withDefault "Failed to get a date." <|
    Result.map
      (format config "%H:%M")
      (Date.fromString dateString)
