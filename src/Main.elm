-- Reading through https://www.destroyallsoftware.com/compendium/digital-electronics
-- And writing logic gate examples in elm.


module Main exposing (..)


nand : Bool -> Bool -> Bool
nand a b =
    case ( a, b ) of
        ( False, False ) ->
            True

        ( False, True ) ->
            True

        ( True, False ) ->
            True

        ( True, True ) ->
            False


not_ : Bool -> Bool
not_ a =
    nand a a


and_ : Bool -> Bool -> Bool
and_ a b =
    not_ (nand a b)


or_ : Bool -> Bool -> Bool
or_ a b =
    not_ (and_ (not_ a) (not_ b))
