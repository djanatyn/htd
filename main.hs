import System.Environment
import System.IO

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
    | head args == "-l" = listItems $ tail args
    | head args == "-t" = addItem $ tail args
    | head args == "-r" = removeItems $ tail args
    | otherwise         = do
        putStrLn "\nerror parsing arguments - see usage:"
        usage

addItem :: [String] -> IO ()
addItem args = do
    -- stuff will go here later
    putStrLn "adding todo into file..."
    appendFile "todo.txt" ((args !! 0) ++ "\n")

listItems :: [String] -> IO ()
listItems args = do
    -- more stuff will go here
    handle <- openFile "todo.txt" ReadMode
    text <- hGetContents handle
    putStr text
    hClose handle 

removeItems :: [String] -> IO ()
removeItems args = do
    -- you know the drill
    putStrLn "deleting /dev/hda..."
    putStrLn "woops, not implemented yet ;)"

main :: IO ()
main = do
    args <- getArgs
    -- notice no error handling as of yet
    parse args
