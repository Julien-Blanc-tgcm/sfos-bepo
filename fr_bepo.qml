/*
 * Copyright (C) 2013 Jolla ltd and/or its subsidiary(-ies). All rights reserved.
 *
 * Contact: Pekka Vuorela <pekka.vuorela@jollamobile.com>
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice, this list
 * of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list
 * of conditions and the following disclaimer in the documentation and/or other materials
 * provided with the distribution.
 * Neither the name of Jolla Ltd nor the names of its contributors may be
 * used to endorse or promote products derived from this software without specific
 * prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL
 * THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

import QtQuick 2.0
import com.jolla.keyboard 1.0
import ".."

KeyboardLayout {
    splitSupported: true

    KeyboardRow {
        CharacterKey {
            caption: "b"; captionShifted: "B"; symView: "1"; symView2: "€"
            accents: ""; accentsShifted: ""
            nativeAccents: ""; nativeAccentsShifted: ""
        }
        CharacterKey {
            caption: "é"; captionShifted: "É"; symView: "2"; symView2: "£"
            accents: "èé"; accentsShifted: "ÈÉ"
            nativeAccents: "è"; nativeAccentsShifted: "È"
        }
        CharacterKey {
            caption: "p"; captionShifted: "P"; symView: "3"; symView2: "$"
            accents: ""; accentsShifted: ""
            nativeAccents: ""; nativeAccentsShifted: ""
        }
        CharacterKey { caption: "o"; captionShifted: "O"; symView: "4"; symView2: "¥" 
            accents: "øöòóôoœ"; accentsShifted: "ØÖÒÓÔOŒ"
            nativeAccents: "ô"; nativeAccentsShifted: "Ô"}
        CharacterKey { caption: "w"; captionShifted: "W"; symView: "5"; symView2: "₹" }
        CharacterKey { caption: "v"; captionShifted: "V"; symView: "6"; symView2: "%" }
        CharacterKey {
            caption: "d"; captionShifted: "D"; symView: "7"; symView2: "<"
            accents: "dð"; accentsShifted: "DÐ"
        }
        CharacterKey {
            caption: "l"; captionShifted: "L"; symView: "8"; symView2: ">"
        }
        CharacterKey {
            caption: "j"; captionShifted: "J"; symView: "9"; symView2: "["
            accents: "jĵ"; accentsShifted: "JĴ"
        }
        CharacterKey { caption: "z"; captionShifted: "Z"; symView: "0"; symView2: "]" }
    }

    KeyboardRow {
        CharacterKey {
            caption: "a"; captionShifted: "A"; symView: "*"; symView2: "`"
            accents: "aâàæäáãå"; accentsShifted: "AÂÀÆÄÁÃÅ"
            nativeAccents: "àâ"; nativeAccentsShifted: "ÀÂ"
        }
        CharacterKey { caption: "u"; captionShifted: "U"; symView: "#"; symView2: "^" 
            accents: "üûuùúŭ"; accentsShifted: "ÜÛUÙÚŬ"
            nativeAccents: "ûùü"; nativeAccentsShifted: "ÛÙÜ"
        }
        CharacterKey {
            caption: "i"; captionShifted: "I"; symView: "+"; symView2: "|"
            accents: "íìîiï"; accentsShifted: "ÍÌÎIÏ"
            nativeAccents: "îï"; nativeAccentsShifted: "ÎÏ"
        }
        CharacterKey {
            caption: "e"; captionShifted: "E"; symView: "-"; symView2: "_" 
            accents: "êeë"; accentsShifted: "ÊEË"
            nativeAccents: "êë"; nativeAccentsShifted: "ÊË"
        }
        CharacterKey {
            caption: "c"; captionShifted: "C"; symView: "="; symView2: "§" 
            accents: "cçĉ"; accentsShifted: "CÇĈ"
            nativeAccents: "cç";nativeAccentsShifted: "CÇ"
        }
        CharacterKey {
            caption: "t"; captionShifted: "T"; symView: "("; symView2: "{"
            accents: "tþ"; accentsShifted: "TÞ"
        }
        CharacterKey {
            caption: "s"; captionShifted: "S"; symView: ")"; symView2: "}"
            accents: "sßŝ"; accentsShifted: "SßŜ"
        }
        CharacterKey { caption: "r"; captionShifted: "R"; symView: "~"; symView2: "°" }
        CharacterKey {
            caption: "n"; captionShifted: "N"; symView: "!"; symView2: "¡"
            accents: "nñ"; accentsShifted: "NÑ"
        }
        CharacterKey { caption: "m"; captionShifted: "M"; symView: "?"; symView2: "¿" }
    }

    KeyboardRow {
        splitIndex: 5

        ShiftKey {}

        CharacterKey {
            caption: "y"; captionShifted: "Y"; symView: "@"; symView2: "«"
            accents: "ýyÿ¥ŷ"; accentsShifted: "ÝYŸ¥Ŷ"
        }
        CharacterKey { caption: "x"; captionShifted: "X"; symView: "&"; symView2: "»" }
        CharacterKey { caption: "k"; captionShifted: "K"; symView: "/"; symView2: "÷" }
        CharacterKey { caption: "q"; captionShifted: "Q"; symView: "\\"; symView2: "“" }
        CharacterKey {
            caption: "g"; captionShifted: "G"; symView: "\""; symView2: "”"
            accents: "gĝ"; accentsShifted: "GĜ"
        }
        CharacterKey {
            caption: "h"; captionShifted: "H"; symView: ";"; symView2: "„"
            accents: "hĥ"; accentsShifted: "HĤ"
        }
        FittedCharacterKey { caption: "f"; captionShifted: "F"; symView: ":"; symView2: "‰" }

        BackspaceKey {}
    }

    KeyboardRow {
        splitIndex: 4

        SymbolKey {
            implicitWidth: symbolKeyWidthNarrow
        }
        CharacterKey {
            caption: "’"
            captionShifted: "’"
            accents: "'’"
            accentsShifted: "'’"
            implicitWidth: punctuationKeyWidthNarrow
            fixedWidth: !splitActive
        }
        ContextAwareCommaKey {
            implicitWidth: punctuationKeyWidthNarrow
        }
        SpacebarKey {}
        SpacebarKey {
            active: splitActive
            languageLabel: ""
        }
        CharacterKey {
            caption: "."
            captionShifted: "."
            accents: "!?."
            accentsShifted: "!?."
            implicitWidth: punctuationKeyWidthNarrow
            fixedWidth: !splitActive
            separator: SeparatorState.HiddenSeparator
        }
        EnterKey {}
    }
}
