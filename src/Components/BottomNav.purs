module Components.BottomNav where

import Data.Foldable (oneOf)
import Deku.Attribute ((!:=))
import Deku.Control (text_)
import Deku.Core (Domable)
import Deku.DOM as D

bottomNav
  :: forall lock payload
   . { link :: String, title :: String }
  -> Domable lock payload
bottomNav { link, title } = D.dl
  ( D.Class !:=
      "mt-12 flex border-t border-slate-200 pt-6 dark:border-slate-800"
  )
  [ D.div_
      [ D.dt
          ( D.Class !:=
              "font-display text-sm font-medium text-slate-900 dark:text-white"
          )
          [ text_ "Previous" ]
      , D.dd (D.Class !:= "mt-1")
          [ D.a
              ( oneOf
                  [ D.Class !:=
                      "text-base font-semibold text-slate-500 hover:text-slate-600 dark:text-slate-400 dark:hover:text-slate-300"
                  , D.Href !:= "/docs/predicting-user-behavior"
                  ]
              )
              [ D.span_ [ text_ "←" ]
              , text_ " Predicting user behavior"
              ]
          ]
      ]
  , D.div (D.Class !:= "ml-auto text-right")
      [ D.dt
          ( D.Class !:=
              "font-display text-sm font-medium text-slate-900 dark:text-white"
          )
          [ text_ "Next" ]
      , D.dd (D.Class !:= "mt-1")
          [ D.a
              ( oneOf
                  [ D.Class !:=
                      "text-base font-semibold text-slate-500 hover:text-slate-600 dark:text-slate-400 dark:hover:text-slate-300"
                  , D.Href !:= link
                  ]
              )
              [ text_ title
              , D.span_ [ text_ "→" ]
              ]
          ]
      ]
  ]