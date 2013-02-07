class Storable a where
sizeOf      :: Storable a => a -> Int
alignment   :: Storable a => a -> int

peek        :: Storable a => Ptr a -> IO a
peekElemOff :: Storable a => Ptr a -> Int -> IO a
peekByteOff :: Storable a => Ptr b -> Int -> IO a

poke        :: Storable a => Ptr a -> a -> IO ()
pokeElemOff :: Storable a => Ptr a -> Int -> a -> IO ()
pokeByteOff :: Storable a => Ptr b -> Int -> a -> IO ()
