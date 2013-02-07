-- Create a new FLTK Window
foreign import ccall unsafe "fl_window_new" flWindowNew ::
    CInt ->       -- size X
    CInt ->       -- size Y
    CString ->    -- title
    IO FltkWindow -- newly created window

-- Create a Queue Handle from the Netfiler Handle
foreign import ccall unsafe "nfq_create_queue" nfq_create_queue ::
    NetfilterHandle ->       -- The netfiler handle to create the queue handle from
    CShort ->                -- The queue number to bind to
    NetfilterCallback ->     -- The callback function to use when processing packets
    NetfilterUserData ->     -- User data passed into the callback
    IO NetfilterQueueHandle  -- The queue handle


