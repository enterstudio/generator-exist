module namespace pml='http://www.tei-c.org/pm/models/beamer/web/module';

import module namespace m='http://www.tei-c.org/pm/models/beamer/web' at '/db/apps/teipub/transform/beamer-web.xql';

(: Generated library module to be directly imported into code which
 : needs to transform TEI nodes using the ODD this module is based on.
 :)
declare function pml:transform($xml as node()*, $parameters as map(*)?) {

   let $options := map {
       "styles": ["../transform/beamer.css"],
       "collection": "/db/apps/teipub/transform",
       "parameters": if (exists($parameters)) then $parameters else map {}
   }
   return m:transform($options, $xml)
};