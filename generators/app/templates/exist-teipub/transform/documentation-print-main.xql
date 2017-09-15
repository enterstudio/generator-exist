import module namespace m='http://www.tei-c.org/pm/models/documentation/fo' at '/db/apps/tei-publisher/transform/documentation-print.xql';

declare variable $xml external;

declare variable $parameters external;

let $options := map {
    "styles": ["../transform/documentation.css"],
    "collection": "/db/apps/tei-publisher/transform",
    "parameters": if (exists($parameters)) then $parameters else map {}
}
return m:transform($options, $xml)