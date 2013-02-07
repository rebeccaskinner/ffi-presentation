import Foreign.C.String
foreign import ccall safe "gen_message" genMessage :: CString -> IO CString
main = withCString "World" genMessage >>= peekCString >>= putStrLn
