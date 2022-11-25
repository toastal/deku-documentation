module Pages.FRP.Behaviors.Calculus.DerivingBehaviors where

import Contracts (Subsection, subsection)
import Deku.Control (text_)
import Deku.Attribute ((!:=))
import Deku.DOM as D

derivingBehaviors :: forall lock payload. Subsection lock payload
derivingBehaviors = subsection
    { title: "Deriving behaviors"
    , matter:
        [ D.p_
            [ text_ "This subsection will be about "
            , D.span (D.Class !:= "font-bold") [ text_ "Deriving behaviors"]
            , text_ "."
            ]
        ]
    }