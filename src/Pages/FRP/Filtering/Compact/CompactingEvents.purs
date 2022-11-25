module Pages.FRP.Filtering.Compact.CompactingEvents where

import Contracts (Subsection, subsection)
import Deku.Control (text_)
import Deku.Attribute ((!:=))
import Deku.DOM as D

compactingEvents :: forall lock payload. Subsection lock payload
compactingEvents = subsection
    { title: "Compacting events"
    , matter:
        [ D.p_
            [ text_ "This subsection will be about "
            , D.span (D.Class !:= "font-bold") [ text_ "Compacting events"]
            , text_ "."
            ]
        ]
    }