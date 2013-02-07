type CString    = Ptr CChar
type CStringLen = (Ptr CChar, Int)

newCString   :: String -> IO CString
peekCString  :: CString -> IO String
withCString  :: String -> (CString -> IO a) -> IO a
packCString  :: CString -> IO ByteString
useAsCString :: ByteString -> (CString -> IO a) -> IO a
