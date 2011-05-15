import System.Environment

usage :: IO ()
usage = do
    putStrLn "htd - a todo list written in haskell"
    putStrLn "usage:"
    putStrLn " htd <action> [options]\n"
    putStrLn "actions:"
    putStrLn " -a           add an article to a todo list"
    putStrLn " -l           list articles in a todo list"
    putStrLn " -r           remove item from a todo list\n"

parse :: [String] -> IO ()
parse args
    | head args == "-t" = addItem $ tail args
    | head args == "-l" = listItems $ tail args
    | head args == "-r" = removeItems $ tail args
    | otherwise         = do
        putStrLn "error parsing arguments - see usage:"
        usage

addItem :: [String] -> IO ()
addItem args = do
    -- stuff will go here later
    putStrLn "adding todo into file..."
    putStrLn "woops, not implemented yet ;)"

listItems :: [String] -> IO ()
listItems args = do
    -- more stuff will go here
    putStrLn "reading from todo file..."
    putStrLn "woops, not implemented yet ;)"

removeItems :: [String] -> IO ()
removeItems args = do
    -- you know the drill
    putStrLn "deleting /dev/hda..."
    putStrLn "woops, not implemented yet ;)"

main :: IO ()
main = do
    args <- getArgs
    if length args /= 2
    then do
        putStrLn "\nerror: please specify 2 command line arguments\n"
        usage
    else parse args
