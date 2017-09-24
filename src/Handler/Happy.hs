{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE QuasiQuotes #-}

{-# LANGUAGE TypeFamilies #-}
-- | Common handler functions.
module Handler.Happy where

import Import
import Yesod.Form.Bootstrap3 (BootstrapFormLayout (..), renderBootstrap3)
import Text.Julius (RawJS (..))

import Data.FileEmbed (embedFile)
import Import

-- These handlers embed files in the executable at compile time to avoid a
-- runtime dependency, and for efficiency.

getHappyR :: Handler Html
getHappyR = defaultLayout [whamlet|Hello World!|]
