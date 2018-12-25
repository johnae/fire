import System.Process
import System.Environment

main :: IO ()
main = do
  args <- getArgs
  case args of
    (cmd:arguments) -> do
      _ <- createProcess (proc cmd arguments){ create_group = True }
      return ()
    _ -> return ()