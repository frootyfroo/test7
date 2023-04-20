%dw 2.0
output application/json
---
{
    "length of string": ["frooty", "cherry frooty"]
            reduce ((item, accumulator) -> item ++ accumulator)
            then ((result) -> sizeOf(result)),
    "final result" : ["vandana", "chandana"]
                         map ((item, index) -> lower(item))
                         then {
                            name: $[0],
                            lastName: $[1],
                            length: sizeOf($)
                        },
    "onNull Return Null": []
                reduce ((item, accumulator) -> item ++ accumulator)
                then ((result) -> sizeOf(result))
}