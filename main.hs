import System.Environment
 
main :: IO ()
main = do
    args <- getArgs
    if length args /= 3
    then print "not the right amount of arguments"
    else print "yeah, just right!"
