'' FreeBASIC binding for SDL2_gfx-1.0.4
''
'' based on the C header files:
''   Copyright (C) 2012-2014  Andreas Schiffler
''
''   This software is provided 'as-is', without any express or implied
''   warranty. In no event will the authors be held liable for any damages
''   arising from the use of this software.
''
''   Permission is granted to anyone to use this software for any purpose,
''   including commercial applications, and to alter it and redistribute it
''   freely, subject to the following restrictions:
''
''   1. The origin of this software must not be misrepresented; you must not
''   claim that you wrote the original software. If you use this software
''   in a product, an acknowledgment in the product documentation would be
''   appreciated but is not required.
''
''   2. Altered source versions must be plainly marked as such, and must not be
''   misrepresented as being the original software.
''
''   3. This notice may not be removed or altered from any source
''   distribution.
''
''   Andreas Schiffler -- aschiffler at ferzkopp dot net
''
'' translated to FreeBASIC by:
''   Copyright © 2020 FreeBASIC development team

#pragma once

#inclib "SDL2_gfx"

const GFX_FONTDATAMAX = 8 * 256
dim shared gfxPrimitivesFontdata(0 to (8 * 256) - 1) as ubyte = {&h00, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h7e, &h81, &ha5, &h81, &hbd, &h99, &h81, &h7e, &h7e, &hff, &hdb, &hff, &hc3, &he7, &hff, &h7e, &h6c, &hfe, &hfe, &hfe, &h7c, &h38, &h10, &h00, &h10, &h38, &h7c, &hfe, &h7c, &h38, &h10, &h00, &h38, &h7c, &h38, &hfe, &hfe, &hd6, &h10, &h38, &h10, &h38, &h7c, &hfe, &hfe, &h7c, &h10, &h38, &h00, &h00, &h18, &h3c, &h3c, &h18, &h00, &h00, &hff, &hff, &he7, &hc3, &hc3, &he7, &hff, &hff, &h00, &h3c, &h66, &h42, &h42, &h66, &h3c, &h00, &hff, &hc3, &h99, &hbd, &hbd, &h99, &hc3, &hff, &h0f, &h07, &h0f, &h7d, &hcc, &hcc, &hcc, &h78, &h3c, &h66, &h66, &h66, &h3c, &h18, &h7e, &h18, &h3f, &h33, &h3f, &h30, &h30, &h70, &hf0, &he0, &h7f, &h63, &h7f, &h63, &h63, &h67, &he6, &hc0, &h18, &hdb, &h3c, &he7, &he7, &h3c, &hdb, &h18, &h80, &he0, &hf8, &hfe, &hf8, &he0, &h80, &h00, &h02, &h0e, &h3e, &hfe, &h3e, &h0e, &h02, &h00, &h18, &h3c, &h7e, &h18, &h18, &h7e, &h3c, &h18, &h66, &h66, &h66, &h66, &h66, &h00, &h66, &h00, &h7f, &hdb, &hdb, &h7b, &h1b, &h1b, &h1b, &h00, &h3e, &h61, &h3c, &h66, &h66, &h3c, &h86, &h7c, &h00, &h00, &h00, &h00, &h7e, &h7e, &h7e, &h00, &h18, &h3c, &h7e, &h18, &h7e, &h3c, &h18, &hff, &h18, &h3c, &h7e, &h18, &h18, &h18, &h18, &h00, &h18, &h18, &h18, &h18, &h7e, &h3c, &h18, &h00, &h00, &h18, &h0c, &hfe, &h0c, &h18, &h00, &h00, &h00, &h30, &h60, &hfe, &h60, &h30, &h00, &h00, &h00, &h00, &hc0, &hc0, &hc0, &hfe, &h00, &h00, &h00, &h24, &h66, &hff, &h66, &h24, &h00, &h00, &h00, &h18, &h3c, &h7e, &hff, &hff, &h00, &h00, &h00, &hff, &hff, &h7e, &h3c, &h18, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h18, &h3c, &h3c, &h18, &h18, &h00, &h18, &h00, &h66, &h66, &h24, &h00, &h00, &h00, &h00, &h00, &h6c, &h6c, &hfe, &h6c, &hfe, &h6c, &h6c, &h00, &h18, &h3e, &h60, &h3c, &h06, &h7c, &h18, &h00, &h00, &hc6, &hcc, &h18, &h30, &h66, &hc6, &h00, &h38, &h6c, &h38, &h76, &hdc, &hcc, &h76, &h00, &h18, &h18, &h30, &h00, &h00, &h00, &h00, &h00, &h0c, &h18, &h30, &h30, &h30, &h18, &h0c, &h00, &h30, &h18, &h0c, &h0c, &h0c, &h18, &h30, &h00, &h00, &h66, &h3c, &hff, &h3c, &h66, &h00, &h00, &h00, &h18, &h18, &h7e, &h18, &h18, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h18, &h18, &h30, &h00, &h00, &h00, &h7e, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h18, &h18, &h00, &h06, &h0c, &h18, &h30, &h60, &hc0, &h80, &h00, &h38, &h6c, &hc6, &hd6, &hc6, &h6c, &h38, &h00, &h18, &h38, &h18, &h18, &h18, &h18, &h7e, &h00, &h7c, &hc6, &h06, &h1c, &h30, &h66, &hfe, &h00, &h7c, &hc6, &h06, &h3c, &h06, &hc6, &h7c, &h00, &h1c, &h3c, &h6c, &hcc, &hfe, &h0c, &h1e, &h00, &hfe, &hc0, &hc0, &hfc, &h06, &hc6, &h7c, &h00, &h38, &h60, &hc0, &hfc, &hc6, &hc6, &h7c, &h00, &hfe, &hc6, &h0c, &h18, &h30, &h30, &h30, &h00, &h7c, &hc6, &hc6, &h7c, &hc6, &hc6, &h7c, &h00, &h7c, &hc6, &hc6, &h7e, &h06, &h0c, &h78, &h00, &h00, &h18, &h18, &h00, &h00, &h18, &h18, &h00, &h00, &h18, &h18, &h00, &h00, &h18, &h18, &h30, &h06, &h0c, &h18, &h30, &h18, &h0c, &h06, &h00, &h00, &h00, &h7e, &h00, &h00, &h7e, &h00, &h00, &h60, &h30, &h18, &h0c, &h18, &h30, &h60, &h00, &h7c, &hc6, &h0c, &h18, &h18, &h00, &h18, &h00, &h7c, &hc6, &hde, &hde, &hde, &hc0, &h78, &h00, &h38, &h6c, &hc6, &hfe, &hc6, &hc6, &hc6, &h00, &hfc, &h66, &h66, &h7c, &h66, &h66, &hfc, &h00, &h3c, &h66, &hc0, &hc0, &hc0, &h66, &h3c, &h00, &hf8, &h6c, &h66, &h66, &h66, &h6c, &hf8, &h00, &hfe, &h62, &h68, &h78, &h68, &h62, &hfe, &h00, &hfe, &h62, &h68, &h78, &h68, &h60, &hf0, &h00, &h3c, &h66, &hc0, &hc0, &hce, &h66, &h3a, &h00, &hc6, &hc6, &hc6, &hfe, &hc6, &hc6, &hc6, &h00, &h3c, &h18, &h18, &h18, &h18, &h18, &h3c, &h00, &h1e, &h0c, &h0c, &h0c, &hcc, &hcc, &h78, &h00, &he6, &h66, &h6c, &h78, &h6c, &h66, &he6, &h00, &hf0, &h60, &h60, &h60, &h62, &h66, &hfe, &h00, &hc6, &hee, &hfe, &hfe, &hd6, &hc6, &hc6, &h00, &hc6, &he6, &hf6, &hde, &hce, &hc6, &hc6, &h00, &h7c, &hc6, &hc6, &hc6, &hc6, &hc6, &h7c, &h00, &hfc, &h66, &h66, &h7c, &h60, &h60, &hf0, &h00, &h7c, &hc6, &hc6, &hc6, &hc6, &hce, &h7c, &h0e, &hfc, &h66, &h66, &h7c, &h6c, &h66, &he6, &h00, &h3c, &h66, &h30, &h18, &h0c, &h66, &h3c, &h00, &h7e, &h7e, &h5a, &h18, &h18, &h18, &h3c, &h00, &hc6, &hc6, &hc6, &hc6, &hc6, &hc6, &h7c, &h00, &hc6, &hc6, &hc6, &hc6, &hc6, &h6c, &h38, &h00, &hc6, &hc6, &hc6, &hd6, &hd6, &hfe, &h6c, &h00, &hc6, &hc6, &h6c, &h38, &h6c, &hc6, &hc6, &h00, &h66, &h66, &h66, &h3c, &h18, &h18, &h3c, &h00, &hfe, &hc6, &h8c, &h18, &h32, &h66, &hfe, &h00, &h3c, &h30, &h30, &h30, &h30, &h30, &h3c, &h00, &hc0, &h60, &h30, &h18, &h0c, &h06, &h02, &h00, &h3c, &h0c, &h0c, &h0c, &h0c, &h0c, &h3c, &h00, &h10, &h38, &h6c, &hc6, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &hff, &h30, &h18, &h0c, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h78, &h0c, &h7c, &hcc, &h76, &h00, &he0, &h60, &h7c, &h66, &h66, &h66, &hdc, &h00, &h00, &h00, &h7c, &hc6, &hc0, &hc6, &h7c, &h00, &h1c, &h0c, &h7c, &hcc, &hcc, &hcc, &h76, &h00, &h00, &h00, &h7c, &hc6, &hfe, &hc0, &h7c, &h00, &h3c, &h66, &h60, &hf8, &h60, &h60, &hf0, &h00, &h00, &h00, &h76, &hcc, &hcc, &h7c, &h0c, &hf8, &he0, &h60, &h6c, &h76, &h66, &h66, &he6, &h00, &h18, &h00, &h38, &h18, &h18, &h18, &h3c, &h00, &h06, &h00, &h06, &h06, &h06, &h66, &h66, &h3c, &he0, &h60, &h66, &h6c, &h78, &h6c, &he6, &h00, &h38, &h18, &h18, &h18, &h18, &h18, &h3c, &h00, &h00, &h00, &hec, &hfe, &hd6, &hd6, &hd6, &h00, &h00, &h00, &hdc, &h66, &h66, &h66, &h66, &h00, &h00, &h00, &h7c, &hc6, &hc6, &hc6, &h7c, &h00, &h00, &h00, &hdc, &h66, &h66, &h7c, &h60, &hf0, &h00, &h00, &h76, &hcc, &hcc, &h7c, &h0c, &h1e, &h00, &h00, &hdc, &h76, &h60, &h60, &hf0, &h00, &h00, &h00, &h7e, &hc0, &h7c, &h06, &hfc, &h00, &h30, &h30, &hfc, &h30, &h30, &h36, &h1c, &h00, &h00, &h00, &hcc, &hcc, &hcc, &hcc, &h76, &h00, &h00, &h00, &hc6, &hc6, &hc6, &h6c, &h38, &h00, &h00, &h00, &hc6, &hd6, &hd6, &hfe, &h6c, &h00, &h00, &h00, &hc6, &h6c, &h38, &h6c, &hc6, &h00, &h00, &h00, &hc6, &hc6, &hc6, &h7e, &h06, &hfc, &h00, &h00, &h7e, &h4c, &h18, &h32, &h7e, &h00, &h0e, &h18, &h18, &h70, &h18, &h18, &h0e, &h00, &h18, &h18, &h18, &h18, &h18, &h18, &h18, &h00, &h70, &h18, &h18, &h0e, &h18, &h18, &h70, &h00, &h76, &hdc, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h10, &h38, &h6c, &hc6, &hc6, &hfe, &h00, &h7c, &hc6, &hc0, &hc0, &hc6, &h7c, &h0c, &h78, &hcc, &h00, &hcc, &hcc, &hcc, &hcc, &h76, &h00, &h0c, &h18, &h7c, &hc6, &hfe, &hc0, &h7c, &h00, &h7c, &h82, &h78, &h0c, &h7c, &hcc, &h76, &h00, &hc6, &h00, &h78, &h0c, &h7c, &hcc, &h76, &h00, &h30, &h18, &h78, &h0c, &h7c, &hcc, &h76, &h00, &h30, &h30, &h78, &h0c, &h7c, &hcc, &h76, &h00, &h00, &h00, &h7e, &hc0, &hc0, &h7e, &h0c, &h38, &h7c, &h82, &h7c, &hc6, &hfe, &hc0, &h7c, &h00, &hc6, &h00, &h7c, &hc6, &hfe, &hc0, &h7c, &h00, &h30, &h18, &h7c, &hc6, &hfe, &hc0, &h7c, &h00, &h66, &h00, &h38, &h18, &h18, &h18, &h3c, &h00, &h7c, &h82, &h38, &h18, &h18, &h18, &h3c, &h00, &h30, &h18, &h00, &h38, &h18, &h18, &h3c, &h00, &hc6, &h38, &h6c, &hc6, &hfe, &hc6, &hc6, &h00, &h38, &h6c, &h7c, &hc6, &hfe, &hc6, &hc6, &h00, &h18, &h30, &hfe, &hc0, &hf8, &hc0, &hfe, &h00, &h00, &h00, &h7e, &h18, &h7e, &hd8, &h7e, &h00, &h3e, &h6c, &hcc, &hfe, &hcc, &hcc, &hce, &h00, &h7c, &h82, &h7c, &hc6, &hc6, &hc6, &h7c, &h00, &hc6, &h00, &h7c, &hc6, &hc6, &hc6, &h7c, &h00, &h30, &h18, &h7c, &hc6, &hc6, &hc6, &h7c, &h00, &h78, &h84, &h00, &hcc, &hcc, &hcc, &h76, &h00, &h60, &h30, &hcc, &hcc, &hcc, &hcc, &h76, &h00, &hc6, &h00, &hc6, &hc6, &hc6, &h7e, &h06, &hfc, &hc6, &h38, &h6c, &hc6, &hc6, &h6c, &h38, &h00, &hc6, &h00, &hc6, &hc6, &hc6, &hc6, &h7c, &h00, &h18, &h18, &h7e, &hc0, &hc0, &h7e, &h18, &h18, &h38, &h6c, &h64, &hf0, &h60, &h66, &hfc, &h00, &h66, &h66, &h3c, &h7e, &h18, &h7e, &h18, &h18, &hf8, &hcc, &hcc, &hfa, &hc6, &hcf, &hc6, &hc7, &h0e, &h1b, &h18, &h3c, &h18, &hd8, &h70, &h00, &h18, &h30, &h78, &h0c, &h7c, &hcc, &h76, &h00, &h0c, &h18, &h00, &h38, &h18, &h18, &h3c, &h00, &h0c, &h18, &h7c, &hc6, &hc6, &hc6, &h7c, &h00, &h18, &h30, &hcc, &hcc, &hcc, &hcc, &h76, &h00, &h76, &hdc, &h00, &hdc, &h66, &h66, &h66, &h00, &h76, &hdc, &h00, &he6, &hf6, &hde, &hce, &h00, &h3c, &h6c, &h6c, &h3e, &h00, &h7e, &h00, &h00, &h38, &h6c, &h6c, &h38, &h00, &h7c, &h00, &h00, &h18, &h00, &h18, &h18, &h30, &h63, &h3e, &h00, &h00, &h00, &h00, &hfe, &hc0, &hc0, &h00, &h00, &h00, &h00, &h00, &hfe, &h06, &h06, &h00, &h00, &h63, &he6, &h6c, &h7e, &h33, &h66, &hcc, &h0f, &h63, &he6, &h6c, &h7a, &h36, &h6a, &hdf, &h06, &h18, &h00, &h18, &h18, &h3c, &h3c, &h18, &h00, &h00, &h33, &h66, &hcc, &h66, &h33, &h00, &h00, &h00, &hcc, &h66, &h33, &h66, &hcc, &h00, &h00, &h22, &h88, &h22, &h88, &h22, &h88, &h22, &h88, &h55, &haa, &h55, &haa, &h55, &haa, &h55, &haa, &h77, &hdd, &h77, &hdd, &h77, &hdd, &h77, &hdd, &h18, &h18, &h18, &h18, &h18, &h18, &h18, &h18, &h18, &h18, &h18, &h18, &hf8, &h18, &h18, &h18, &h18, &h18, &hf8, &h18, &hf8, &h18, &h18, &h18, &h36, &h36, &h36, &h36, &hf6, &h36, &h36, &h36, &h00, &h00, &h00, &h00, &hfe, &h36, &h36, &h36, &h00, &h00, &hf8, &h18, &hf8, &h18, &h18, &h18, &h36, &h36, &hf6, &h06, &hf6, &h36, &h36, &h36, &h36, &h36, &h36, &h36, &h36, &h36, &h36, &h36, &h00, &h00, &hfe, &h06, &hf6, &h36, &h36, &h36, &h36, &h36, &hf6, &h06, &hfe, &h00, &h00, &h00, &h36, &h36, &h36, &h36, &hfe, &h00, &h00, &h00, &h18, &h18, &hf8, &h18, &hf8, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &hf8, &h18, &h18, &h18, &h18, &h18, &h18, &h18, &h1f, &h00, &h00, &h00, &h18, &h18, &h18, &h18, &hff, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &hff, &h18, &h18, &h18, &h18, &h18, &h18, &h18, &h1f, &h18, &h18, &h18, &h00, &h00, &h00, &h00, &hff, &h00, &h00, &h00, &h18, &h18, &h18, &h18, &hff, &h18, &h18, &h18, &h18, &h18, &h1f, &h18, &h1f, &h18, &h18, &h18, &h36, &h36, &h36, &h36, &h37, &h36, &h36, &h36, &h36, &h36, &h37, &h30, &h3f, &h00, &h00, &h00, &h00, &h00, &h3f, &h30, &h37, &h36, &h36, &h36, &h36, &h36, &hf7, &h00, &hff, &h00, &h00, &h00, &h00, &h00, &hff, &h00, &hf7, &h36, &h36, &h36, &h36, &h36, &h37, &h30, &h37, &h36, &h36, &h36, &h00, &h00, &hff, &h00, &hff, &h00, &h00, &h00, &h36, &h36, &hf7, &h00, &hf7, &h36, &h36, &h36, &h18, &h18, &hff, &h00, &hff, &h00, &h00, &h00, &h36, &h36, &h36, &h36, &hff, &h00, &h00, &h00, &h00, &h00, &hff, &h00, &hff, &h18, &h18, &h18, &h00, &h00, &h00, &h00, &hff, &h36, &h36, &h36, &h36, &h36, &h36, &h36, &h3f, &h00, &h00, &h00, &h18, &h18, &h1f, &h18, &h1f, &h00, &h00, &h00, &h00, &h00, &h1f, &h18, &h1f, &h18, &h18, &h18, &h00, &h00, &h00, &h00, &h3f, &h36, &h36, &h36, &h36, &h36, &h36, &h36, &hff, &h36, &h36, &h36, &h18, &h18, &hff, &h18, &hff, &h18, &h18, &h18, &h18, &h18, &h18, &h18, &hf8, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h1f, &h18, &h18, &h18, &hff, &hff, &hff, &hff, &hff, &hff, &hff, &hff, &h00, &h00, &h00, &h00, &hff, &hff, &hff, &hff, &hf0, &hf0, &hf0, &hf0, &hf0, &hf0, &hf0, &hf0, &h0f, &h0f, &h0f, &h0f, &h0f, &h0f, &h0f, &h0f, &hff, &hff, &hff, &hff, &h00, &h00, &h00, &h00, &h00, &h00, &h76, &hdc, &hc8, &hdc, &h76, &h00, &h78, &hcc, &hcc, &hd8, &hcc, &hc6, &hcc, &h00, &hfe, &hc6, &hc0, &hc0, &hc0, &hc0, &hc0, &h00, &h00, &h00, &hfe, &h6c, &h6c, &h6c, &h6c, &h00, &hfe, &hc6, &h60, &h30, &h60, &hc6, &hfe, &h00, &h00, &h00, &h7e, &hd8, &hd8, &hd8, &h70, &h00, &h00, &h00, &h66, &h66, &h66, &h66, &h7c, &hc0, &h00, &h76, &hdc, &h18, &h18, &h18, &h18, &h00, &h7e, &h18, &h3c, &h66, &h66, &h3c, &h18, &h7e, &h38, &h6c, &hc6, &hfe, &hc6, &h6c, &h38, &h00, &h38, &h6c, &hc6, &hc6, &h6c, &h6c, &hee, &h00, &h0e, &h18, &h0c, &h3e, &h66, &h66, &h3c, &h00, &h00, &h00, &h7e, &hdb, &hdb, &h7e, &h00, &h00, &h06, &h0c, &h7e, &hdb, &hdb, &h7e, &h60, &hc0, &h1e, &h30, &h60, &h7e, &h60, &h30, &h1e, &h00, &h00, &h7c, &hc6, &hc6, &hc6, &hc6, &hc6, &h00, &h00, &hfe, &h00, &hfe, &h00, &hfe, &h00, &h00, &h18, &h18, &h7e, &h18, &h18, &h00, &h7e, &h00, &h30, &h18, &h0c, &h18, &h30, &h00, &h7e, &h00, &h0c, &h18, &h30, &h18, &h0c, &h00, &h7e, &h00, &h0e, &h1b, &h1b, &h18, &h18, &h18, &h18, &h18, &h18, &h18, &h18, &h18, &h18, &hd8, &hd8, &h70, &h00, &h18, &h00, &h7e, &h00, &h18, &h00, &h00, &h00, &h76, &hdc, &h00, &h76, &hdc, &h00, &h00, &h38, &h6c, &h6c, &h38, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h18, &h18, &h00, &h00, &h00, &h00, &h00, &h00, &h18, &h00, &h00, &h00, &h00, &h0f, &h0c, &h0c, &h0c, &hec, &h6c, &h3c, &h1c, &h6c, &h36, &h36, &h36, &h36, &h00, &h00, &h00, &h78, &h0c, &h18, &h30, &h7c, &h00, &h00, &h00, &h00, &h00, &h3c, &h3c, &h3c, &h3c, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h00, &h00}