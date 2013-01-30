import Foreign.C.String
foreign import ccall "gen_message" genMessage :: CString -> IO CString
main = withCString "World" genMessage >>= peekCString >>= putStrLn
