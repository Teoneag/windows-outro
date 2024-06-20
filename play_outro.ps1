Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;
public class Sound {
    [DllImport("winmm.dll")]
    public static extern bool PlaySound(string filename, IntPtr hmod, uint fdwSound);
}
"@

[Sound]::PlaySound("D:\desktop\outro\outro.wav", [IntPtr]::Zero, 0x20000)