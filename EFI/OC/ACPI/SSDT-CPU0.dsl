DefinitionBlock ("", "SSDT", 2, "ACDT", "CPU0", 0x00000000)
{
    External (_PR_.CPU0, ProcessorObj)
    If (_OSI ("Darwin"))
    {
        Scope (_PR.CPU0)
        {
            Method (_DSM, 4, NotSerialized)
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                        0x03
                    })
                }
                Return (Package ()
                {
                    "plugin-type", 
                    One
                })
            }
        }
    }
}