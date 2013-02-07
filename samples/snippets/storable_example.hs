data NfGenMsg = NfGenMsg {packet_id :: CUInt, hw_protocol :: CUShort, hook :: CUChar}
instance Storable NfGenMsg where
    sizeOf _ =
        sizeOf (0 :: CUInt) + sizeOf (0 :: CUShort) + sizeOf (0 :: CUChar)
    alignment _ = 16 -- > 8 bytes so we should be 16-byte aligned on x86_64
    peek p =
        let ptr1 = castPtr p
            ptr2 = castPtr $ ptr1 `plusPtr` sizeOf (0 :: CUInt)
            ptr3 = castPtr $ ptr2 `plusPtr` sizeOf (0 :: CUShort)
        in do
            v1 <- peek ptr1
            v2 <- peek ptr2
            v3 <- peek ptr3
            return $ NfGenMsg (fromBigEndian v1) (fromBigEndian v2) v3
    poke ptr (NfGenMsg pkt_id hw_proto hk) =
        let ptr1 = castPtr ptr
            ptr2 = castPtr $ ptr1 `plusPtr` sizeOf (0 :: CUInt)
            ptr3 = castPtr $ ptr2 `plusPtr` sizeOf (0 :: CUShort)
        in do
            poke ptr1 $ toBigEndian pkt_id
            poke ptr2 $ toBigEndian hw_proto
            poke ptr3 hk
            return ()
