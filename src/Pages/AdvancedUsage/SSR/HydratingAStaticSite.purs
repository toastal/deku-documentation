module Pages.AdvancedUsage.SSR.HydratingAStaticSite where

import Contracts (Section, section)
import Deku.Control (text_)
import Deku.Attribute ((!:=))
import Deku.DOM as D
import Pages.AdvancedUsage.SSR.HydratingAStaticSite.TheHydrateFunction (theHydrateFunction)
import Pages.AdvancedUsage.SSR.HydratingAStaticSite.Determinism (determinism)

hydratingAStaticSite :: forall lock payload. Section lock payload
hydratingAStaticSite = section
  { title: "HydratingAStaticSite"
  , topmatter:
      [ D.p_
          [ text_ "This section will be about "
            , D.span (D.Class !:= "font-bold") [ text_ "HydratingAStaticSite"]
            , text_ "."
          ]
      ]
  , subsections:
      [ theHydrateFunction,determinism]
  }