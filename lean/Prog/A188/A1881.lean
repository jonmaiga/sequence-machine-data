import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A188100: Number of (n+3) X 7 binary arrays with every 4 X 4 subblock commuting with each horizontal and vertical neighbor 4 X 4 subblock.

The programs for A188100, there is no canonical definition to state claims against.
-/

/-! ## A188100.P6790295933579952996

`A188105(∑[n+3]+7)`
-/

namespace A188100.P6790295933579952996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A188100.P6790295933579952996

/-! ## A188100.P6700208300716738712

`or(char[1], A188105(A052905(n)+9))`
-/

namespace A188100.P6700208300716738712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A188105 (A052905 n + 9).toNat)

end

end A188100.P6700208300716738712

/-! ## A188100.P434978956783926127

`or(char[1], A188105(A055999(n)+10))`
-/

namespace A188100.P434978956783926127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A188105 (A055999 n + 10).toNat)

end

end A188100.P434978956783926127

/-! ## A188100.P17908296541551398251

`lcm(A057077(n), A188105(A052905(n)+9))`
-/

namespace A188100.P17908296541551398251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A188105 (A052905 n + 9).toNat)

end

end A188100.P17908296541551398251

/-! ## A188100.P15355595266447269499

`char[A303767(n)]*A188105(A055999(n)+10)`
-/

namespace A188100.P15355595266447269499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303767 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A188105 (A055999 n + 10).toNat

end

end A188100.P15355595266447269499

/-! ## A188100.P14570238904500690102

`A007318(C(2, n))*A188105(A052905(n)+9)`
-/

namespace A188100.P14570238904500690102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A188105 (A052905 n + 9).toNat

end

end A188100.P14570238904500690102

/-! ## A188100.P8246038113685615204

`ceil(1/A006530(n+1))*A188105(A055999(n)+10)`
-/

namespace A188100.P8246038113685615204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A006530 (n + 1) : ℚ)⌉ * A188105 (A055999 n + 10).toNat

end

end A188100.P8246038113685615204

/-! ## A188100.P18370897601988085512

`ceil(1/A020639(n+1))*A188105(A055999(n)+10)`
-/

namespace A188100.P18370897601988085512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A020639 (n + 1) : ℚ)⌉ * A188105 (A055999 n + 10).toNat

end

end A188100.P18370897601988085512

/-!
# A188101: Number of (n+3) X 8 binary arrays with every 4 X 4 subblock commuting with each horizontal and vertical neighbor 4 X 4 subblock.

The programs for A188101, there is no canonical definition to state claims against.
-/

/-! ## A188101.P9119642608814496575

`A188105(∑[n+4]+11)`
-/

namespace A188101.P9119642608814496575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A188101.P9119642608814496575

/-! ## A188101.P11328255900819003095

`and(-1, A188105(A155212(n)+13))`
-/

namespace A188101.P11328255900819003095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A188105 (A155212 n + 13).toNat)

end

end A188101.P11328255900819003095

/-! ## A188101.P6590888563799773834

`or(char[2], A188105(A167499(n+3)))`
-/

namespace A188101.P6590888563799773834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A188105 (A167499 (n + 3)).toNat)

end

end A188101.P6590888563799773834

/-! ## A188101.P9890612990669870874

`or(char[2], A188105(A000217(n+4)+5))`
-/

namespace A188101.P9890612990669870874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A188105 (A000217 (n + 4) + 5).toNat)

end

end A188101.P9890612990669870874

/-! ## A188101.P3648348279849099273

`char[A026741(n)]*A188105(A167499(n+3))`
-/

namespace A188101.P3648348279849099273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A188105 (A167499 (n + 3)).toNat

end

end A188101.P3648348279849099273

/-! ## A188101.P11482660500191212146

`A007318(C(2, n))*A188105(A167499(n+3))`
-/

namespace A188101.P11482660500191212146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A188105 (A167499 (n + 3)).toNat

end

end A188101.P11482660500191212146

/-! ## A188101.P13345416762149612302

`A007318(C(3, n))*A188105(A155212(n)+13)`
-/

namespace A188101.P13345416762149612302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A188105 (A155212 n + 13).toNat

end

end A188101.P13345416762149612302

/-! ## A188101.P524434987294690051

`A188105(A167499(n+3))+A008683(4*(n+1))`
-/

namespace A188101.P524434987294690051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A167499 (n + 3)).toNat + A008683 (4 * (n + 1))

end

end A188101.P524434987294690051

/-! ## A188101.P8844594880606415048

`A014963(90*(n+1))*A188105(A167499(n+3))`
-/

namespace A188101.P8844594880606415048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (90 * (n + 1)) * A188105 (A167499 (n + 3)).toNat

end

end A188101.P8844594880606415048

/-! ## A188101.P2113254179973409060

`A007318(floor(1/(n+1)))*A188105(A167499(n+3))`
-/

namespace A188101.P2113254179973409060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat * A188105 (A167499 (n + 3)).toNat

end

end A188101.P2113254179973409060

/-!
# A188102: Number of (n+3) X 9 binary arrays with every 4 X 4 subblock commuting with each horizontal and vertical neighbor 4 X 4 subblock.

The programs for A188102, there is no canonical definition to state claims against.
-/

/-! ## A188102.P1804847482531622309

`A188105(C(n+6, 2)+6)`
-/

namespace A188102.P1804847482531622309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (Nat.choose (n + 6) 2 + 6)

end

end A188102.P1804847482531622309

/-! ## A188102.P2042559527518745367

`A188105(A166136(n+4))`
-/

namespace A188102.P2042559527518745367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A166136 (n + 4)).toNat

end

end A188102.P2042559527518745367

/-! ## A188102.P8054734559907254532

`A188105(A056115(n)+21)`
-/

namespace A188102.P8054734559907254532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A056115 n + 21).toNat

end

end A188102.P8054734559907254532

/-! ## A188102.P7663301061036190877

`A188105(A167499(n+4)+1)`
-/

namespace A188102.P7663301061036190877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A167499 (n + 4) + 1).toNat

end

end A188102.P7663301061036190877

/-! ## A188102.P1533838816918210368

`A188105(A167614(n+4)+3)`
-/

namespace A188102.P1533838816918210368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A167614 (n + 4) + 3).toNat

end

end A188102.P1533838816918210368

/-! ## A188102.P14338032220981356370

`A188105(A000124(n+5)+5)`
-/

namespace A188102.P14338032220981356370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A000124 (n + 5) + 5).toNat

end

end A188102.P14338032220981356370

/-! ## A188102.P346783172539243398

`A188105(A000096(n+4)+7)`
-/

namespace A188102.P346783172539243398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A000096 (n + 4) + 7).toNat

end

end A188102.P346783172539243398

/-! ## A188102.P15101958444722058791

`A188105(A000217(n+5)+6)`
-/

namespace A188102.P15101958444722058791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A000217 (n + 5) + 6).toNat

end

end A188102.P15101958444722058791

/-! ## A188102.P5851999632575811844

`A188105(A161680(n+6)+6)`
-/

namespace A188102.P5851999632575811844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A161680 (n + 6) + 6).toNat

end

end A188102.P5851999632575811844

/-! ## A188102.P15825631048016234728

`A188105(A046691(n+3)+10)`
-/

namespace A188102.P15825631048016234728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A046691 (n + 3) + 10).toNat

end

end A188102.P15825631048016234728

/-!
# A188103: Number of (n+3)X10 binary arrays with every 4X4 subblock commuting with each horizontal and vertical neighbor 4X4 subblock.

The programs for A188103, there is no canonical definition to state claims against.
-/

/-! ## A188103.P10343865283779309547

`A188105((n+4)²-∑[n+1]+13)`
-/

namespace A188103.P10343865283779309547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 13).toNat

end

end A188103.P10343865283779309547

/-!
# A188104: Number of (n+3)X11 binary arrays with every 4X4 subblock commuting with each horizontal and vertical neighbor 4X4 subblock.

The programs for A188104, there is no canonical definition to state claims against.
-/

/-! ## A188104.P16210599631620359749

`A188105(C(2*n+9-n, 2)-n)`
-/

namespace A188104.P16210599631620359749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (Nat.choose ((2 * n + 9 : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A188104.P16210599631620359749

/-! ## A188104.P6275951946054367176

`A188105(A056121(n)+36)`
-/

namespace A188104.P6275951946054367176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A056121 n + 36).toNat

end

end A188104.P6275951946054367176

/-! ## A188104.P10646095049722486512

`A188105(A167499(n+6)+3)`
-/

namespace A188104.P10646095049722486512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A167499 (n + 6) + 3).toNat

end

end A188104.P10646095049722486512

/-! ## A188104.P13109826559905628194

`A188105(A000124(n+7)+7)`
-/

namespace A188104.P13109826559905628194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A000124 (n + 7) + 7).toNat

end

end A188104.P13109826559905628194

/-! ## A188104.P12832765080146520861

`A188105(A000217(n+7)+8)`
-/

namespace A188104.P12832765080146520861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A000217 (n + 7) + 8).toNat

end

end A188104.P12832765080146520861

/-! ## A188104.P9025750675878854304

`A188105(A161680(n+8)+8)`
-/

namespace A188104.P9025750675878854304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A161680 (n + 8) + 8).toNat

end

end A188104.P9025750675878854304

/-! ## A188104.P9140280365030547080

`A188105(A046691(n+5)+12)`
-/

namespace A188104.P9140280365030547080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A046691 (n + 5) + 12).toNat

end

end A188104.P9140280365030547080

/-! ## A188104.P17953223595004557648

`A188105(A055999(n+4)+14)`
-/

namespace A188104.P17953223595004557648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A055999 (n + 4) + 14).toNat

end

end A188104.P17953223595004557648

/-! ## A188104.P16325981278885602348

`A188105(Δ[A060488(n+5)]+14)`
-/

namespace A188104.P16325981278885602348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (f1 (n + 1) - f1 n + 14).toNat

end

end A188104.P16325981278885602348

/-!
# A188106: Triangle T(n,k) with the coefficient [x^k] of 1/(1-2*x-x^2+x^3)^(n-k+1) in row n, column k.

The programs for A188106, there is no canonical definition to state claims against.
-/

/-! ## A188106.P18005211027889173382

`A350634(A193589(n))`
-/

namespace A188106.P18005211027889173382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350634 (A193589 n).toNat

end

end A188106.P18005211027889173382

/-! ## A188106.P107625941505401921

`A124959(n)-A125005(A063007(n))`
-/

namespace A188106.P107625941505401921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124959 n - A125005 (A063007 n).toNat

end

end A188106.P107625941505401921

/-! ## A188106.P7313382828313499968

`A036445(A223092(n)+A172431(n+1))`
-/

namespace A188106.P7313382828313499968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (A223092 n + A172431 (n + 1)).toNat

end

end A188106.P7313382828313499968

/-!
# A188107: Triangle T(n,k) with the coefficient [x^k] of 1/(1 - x - 2*x^2 + x^3)^(n-k+1) in row n, column k.

The programs for A188107, there is no canonical definition to state claims against.
-/

/-! ## A188107.P9906226439489881791

`A208153(A002378(n)%A080036(n))`
-/

namespace A188107.P9906226439489881791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208153 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A188107.P9906226439489881791

/-! ## A188107.P4446818375566553474

`A208153(A061579(n))`
-/

namespace A188107.P4446818375566553474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208153 (A061579 n).toNat

end

end A188107.P4446818375566553474

/-! ## A188107.P1813343764854392340

`A208153(A114327(n)+n)`
-/

namespace A188107.P1813343764854392340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208153 (A114327 n + (n : ℤ)).toNat

end

end A188107.P1813343764854392340

/-! ## A188107.P15416458148982784729

`A208153(A038722(n+1)-1)`
-/

namespace A188107.P15416458148982784729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208153 (A038722 (n + 1) - 1).toNat

end

end A188107.P15416458148982784729

/-! ## A188107.P11596864844101758229

`A208153(A093995(n+1)-(n+1))`
-/

namespace A188107.P11596864844101758229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208153 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A188107.P11596864844101758229

/-! ## A188107.P4187759797865305639

`A208153(A057428(n)+A038722(n+1))`
-/

namespace A188107.P4187759797865305639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208153 (A057428 n + A038722 (n + 1)).toNat

end

end A188107.P4187759797865305639

/-!
# A188109: Triangle T(n,m), [x*A(x)]^m=sum(n>=m T(n,m)*x^n), where A(x) satisfies x*A(x)^2= -(2*x*A(x)+sqrt(1-4*x*A(x))-1)/(4*x*A(x)+sqrt(1-4*x*A(x))-1).

The programs for A188109, there is no canonical definition to state claims against.
-/

/-! ## A188109.P13896855122550758244

`A336107(A209383(n))+A105626(n)`
-/

namespace A188109.P13896855122550758244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336107 (A209383 n).toNat + A105626 n

end

end A188109.P13896855122550758244

/-! ## A188109.P8445178052592236551

`A325534(C(A156308(n+1), A214281(n)))`
-/

namespace A188109.P8445178052592236551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (Nat.choose (A156308 (n + 1)).toNat (A214281 n).toNat)

end

end A188109.P8445178052592236551

/-!
# A188111: Triangle T(n,m) read by rows, [A(x)]^m = Sum_{n>=m} T(n,m)*x^n, where A(x) satisfies A(x) = x/(1-A(x)-A(x)^2).

The programs for A188111, there is no canonical definition to state claims against.
-/

/-! ## A188111.P15540006769141188288

`A378289(A380649(n+1))`
-/

namespace A188111.P15540006769141188288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378289 (A380649 (n + 1)).toNat

end

end A188111.P15540006769141188288

/-! ## A188111.P2255782729793890748

`A004438(A185967(n))`
-/

namespace A188111.P2255782729793890748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (A185967 n).toNat

end

end A188111.P2255782729793890748

/-! ## A188111.P10080088683160548697

`A197640(A307214(n))`
-/

namespace A188111.P10080088683160548697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197640 (A307214 n).toNat

end

end A188111.P10080088683160548697

/-! ## A188111.P10410831829480183891

`A123068(A185967(n)+1)`
-/

namespace A188111.P10410831829480183891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A185967 n + 1).toNat

end

end A188111.P10410831829480183891

/-! ## A188111.P12624777556248770242

`A185967(n)+A129251(A185967(3*n+2))`
-/

namespace A188111.P12624777556248770242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185967 n + A129251 (A185967 (3 * n + 2)).toNat

end

end A188111.P12624777556248770242

/-!
# A188113: Number of strictly increasing arrangements of n nonzero numbers in -(2n-2)..(2n-2) with sum zero.

The programs for A188113, there is no canonical definition to state claims against.
-/

/-! ## A188113.P14935132928900546897

`A188122(∑[4*n]+1)`
-/

namespace A188113.P14935132928900546897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188113.P14935132928900546897

/-! ## A188113.P6801027484177052021

`record[A188122(Δ[A235355(n)])]`
-/

namespace A188113.P6801027484177052021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188113.P6801027484177052021

/-! ## A188113.P14295897412927333237

`record[A188122(A330613(n+1))]`
-/

namespace A188113.P14295897412927333237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188113.P14295897412927333237

/-! ## A188113.P9764799876970687722

`A188122(A001844(n))+char[22]`
-/

namespace A188113.P9764799876970687722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A188113.P9764799876970687722

/-! ## A188113.P5593479392375714893

`A188122(A001844(n))%A285046(n)`
-/

namespace A188113.P5593479392375714893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188122 (A001844 n).toNat) (A285046 n)

end

end A188113.P5593479392375714893

/-!
# A188114: Number of strictly increasing arrangements of n nonzero numbers in -(n-1)..(n-1) with sum zero.

The programs for A188114, there is no canonical definition to state claims against.
-/

/-! ## A188114.P17054685198614892242

`A188122(∑[n+1])`
-/

namespace A188114.P17054685198614892242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188114.P17054685198614892242

/-! ## A188114.P2099617250516604635

`and(-1, A188122(A000217(n+1)))`
-/

namespace A188114.P2099617250516604635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A188122 (A000217 (n + 1)).toNat)

end

end A188114.P2099617250516604635

/-! ## A188114.P13646331276473329420

`A057427(n)*A188122(A000217(n+1))`
-/

namespace A188114.P13646331276473329420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A188122 (A000217 (n + 1)).toNat

end

end A188114.P13646331276473329420

/-! ## A188114.P11153093255345539519

`lcm(A020985(n), A188122(A000217(n+1)))`
-/

namespace A188114.P11153093255345539519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A188122 (A000217 (n + 1)).toNat)

end

end A188114.P11153093255345539519

/-! ## A188114.P1248279254148249861

`A188122(A179865(n+2))+A000007(n+2)`
-/

namespace A188114.P1248279254148249861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A179865 (n + 2)).toNat + A000007 (n + 2)

end

end A188114.P1248279254148249861

/-!
# A188115: Number of strictly increasing arrangements of n nonzero numbers in -n..n with sum zero.

The programs for A188115, there is no canonical definition to state claims against.
-/

/-! ## A188115.P12613358489673836777

`A188122(∑[n+2])`
-/

namespace A188115.P12613358489673836777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188115.P12613358489673836777

/-! ## A188115.P9575306722676152060

`lcm(2, A188122(A000096(n+1)))`
-/

namespace A188115.P9575306722676152060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A188122 (A000096 (n + 1)).toNat)

end

end A188115.P9575306722676152060

/-! ## A188115.P4017622920220231358

`A076822(n+2)-A188114(n+2)`
-/

namespace A188115.P4017622920220231358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076822 (n + 2) - A188114 (n + 2)

end

end A188115.P4017622920220231358

/-! ## A188115.P11529121285127968233

`and(-2, A188122(A034856(n+1)+1))`
-/

namespace A188115.P11529121285127968233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A188122 (A034856 (n + 1) + 1).toNat)

end

end A188115.P11529121285127968233

/-! ## A188115.P1484604514678536759

`char[A007318(n)]*A188122(A000096(n+1))`
-/

namespace A188115.P1484604514678536759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A188122 (A000096 (n + 1)).toNat

end

end A188115.P1484604514678536759

/-!
# A188116: Number of strictly increasing arrangements of n nonzero numbers in -(n+1)..(n+1) with sum zero.

The programs for A188116, there is no canonical definition to state claims against.
-/

/-! ## A188116.P9907029787371904840

`A188114(n+3)`
-/

namespace A188116.P9907029787371904840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188114 (n + 3)

end

end A188116.P9907029787371904840

/-! ## A188116.P17575307903848403762

`A188122(C(n+4, 2))`
-/

namespace A188116.P17575307903848403762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (Nat.choose (n + 4) 2)

end

end A188116.P17575307903848403762

/-! ## A188116.P13666938986270151097

`A188122(∑[n+3]+1)`
-/

namespace A188116.P13666938986270151097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188116.P13666938986270151097

/-! ## A188116.P17893651440639001264

`record[A188122(A186347(n+1))]`
-/

namespace A188116.P17893651440639001264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A186347 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188116.P17893651440639001264

/-! ## A188116.P8040251536475444390

`A188122(Δ[A008778(n)])+char[33]`
-/

namespace A188116.P8040251536475444390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A188116.P8040251536475444390

/-!
# A188117: Number of strictly increasing arrangements of n nonzero numbers in -(n+2)..(n+2) with sum zero.

The programs for A188117, there is no canonical definition to state claims against.
-/

/-! ## A188117.P17923704859628892894

`A188122(∑[n+4]+3)`
-/

namespace A188117.P17923704859628892894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A188117.P17923704859628892894

/-! ## A188117.P4073355089418382229

`A199396(n+1)-A257234(A306523(n))`
-/

namespace A188117.P4073355089418382229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199396 (n + 1) - A257234 (A306523 n).toNat

end

end A188117.P4073355089418382229

/-!
# A188118: Number of strictly increasing arrangements of n nonzero numbers in -(n+3)..(n+3) with sum zero.

The programs for A188118, there is no canonical definition to state claims against.
-/

/-! ## A188118.P3695845331722983531

`A188122(∑[n+5]+6)`
-/

namespace A188118.P3695845331722983531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A188118.P3695845331722983531

/-! ## A188118.P14897629512951744714

`xor(A001894(n+4), A034444(A002657(n)))`
-/

namespace A188118.P14897629512951744714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001894 (n + 4)) (A034444 (A002657 n).toNat)

end

end A188118.P14897629512951744714

/-!
# A188119: Number of strictly increasing arrangements of n nonzero numbers in -(n+4)..(n+4) with sum zero.

The programs for A188119, there is no canonical definition to state claims against.
-/

/-! ## A188119.P12081142209954117784

`A188122(A052905(n+3))`
-/

namespace A188119.P12081142209954117784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A052905 (n + 3)).toNat

end

end A188119.P12081142209954117784

/-! ## A188119.P7359300704093605214

`A188122(A302537(n)+15)`
-/

namespace A188119.P7359300704093605214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A302537 n + 15).toNat

end

end A188119.P7359300704093605214

/-! ## A188119.P13311581629402519745

`A188122(A056119(n)+16)`
-/

namespace A188119.P13311581629402519745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A056119 n + 16).toNat

end

end A188119.P13311581629402519745

/-! ## A188119.P11352521175881473231

`A188122(eq[3, A219347(n)])`
-/

namespace A188119.P11352521175881473231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188119.P11352521175881473231

/-! ## A188119.P704136180665308022

`A188122(eq[5, A193592(n)])`
-/

namespace A188119.P704136180665308022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188119.P704136180665308022

/-!
# A188120: Number of strictly increasing arrangements of n nonzero numbers in -(n+5)..(n+5) with sum zero.

The programs for A188120, there is no canonical definition to state claims against.
-/

/-! ## A188120.P6449364048269464889

`A188122(A055999(n+4))`
-/

namespace A188120.P6449364048269464889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A055999 (n + 4)).toNat

end

end A188120.P6449364048269464889

/-! ## A188120.P12728208757458697130

`A188122(A134227(n+5))`
-/

namespace A188120.P12728208757458697130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A134227 (n + 5)).toNat

end

end A188120.P12728208757458697130

/-! ## A188120.P6995558080873445859

`A188122(eq[4, A219347(n)])`
-/

namespace A188120.P6995558080873445859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188120.P6995558080873445859

/-! ## A188120.P4851868882661208773

`A188122(eq[6, A193592(n)])`
-/

namespace A188120.P4851868882661208773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188120.P4851868882661208773

/-! ## A188120.P14789742331302436881

`A188122(Δ[A023551(n+2)])`
-/

namespace A188120.P14789742331302436881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (f1 (n + 1) - f1 n).toNat

end

end A188120.P14789742331302436881

/-!
# A188121: Number of strictly increasing arrangements of n nonzero numbers in -(n+6)..(n+6) with sum zero.

The programs for A188121, there is no canonical definition to state claims against.
-/

/-! ## A188121.P6839106037867575473

`A188122(eq[5, A219347(n)])`
-/

namespace A188121.P6839106037867575473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188121.P6839106037867575473

/-! ## A188121.P7782736489457078462

`A188122(eq[7, A193592(n)])`
-/

namespace A188121.P7782736489457078462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188121.P7782736489457078462

/-! ## A188121.P297362912958795873

`A188122(A000096(n+7)-6)`
-/

namespace A188121.P297362912958795873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A000096 (n + 7) - 6).toNat

end

end A188121.P297362912958795873

/-! ## A188121.P213551317036399424

`A188122(A000217(n+8)-7)`
-/

namespace A188121.P213551317036399424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A000217 (n + 8) - 7).toNat

end

end A188121.P213551317036399424

/-! ## A188121.P1092667595971600586

`A188122(A000124(n+8)-8)`
-/

namespace A188121.P1092667595971600586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A000124 (n + 8) - 8).toNat

end

end A188121.P1092667595971600586

/-!
# A188122: Table read by downward antidiagonals: T(n,k) is the number of strictly increasing arrangements of n nonzero numbers in -(n+k-2)..(n+k-2) with sum zero.

The programs for A188122, there is no canonical definition to state claims against.
-/

/-! ## A188122.P12783354879137614375

`A209344(n+1)-A273263(A339768(n))`
-/

namespace A188122.P12783354879137614375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (n + 1) - A273263 (A339768 n).toNat

end

end A188122.P12783354879137614375

/-! ## A188122.P878652896183631806

`A053616(n)*A127322(∑[n])`
-/

namespace A188122.P878652896183631806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n * A127322 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188122.P878652896183631806

/-! ## A188122.P8270269944688651749

`(A053616(n)*A127322(A000217(n)))%12`
-/

namespace A188122.P8270269944688651749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053616 n * A127322 (A000217 n).toNat) 12

end

end A188122.P8270269944688651749

/-! ## A188122.P10039017919413992971

`A292377(A319511(n)+8)`
-/

namespace A188122.P10039017919413992971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292377 (A319511 n + 8).toNat

end

end A188122.P10039017919413992971

/-! ## A188122.P3590195081332274135

`A331755(A338007(n+1))%5`
-/

namespace A188122.P3590195081332274135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331755 (A338007 (n + 1)).toNat) 5

end

end A188122.P3590195081332274135

/-!
# A188123: Number of strictly increasing arrangements of 4 nonzero numbers in -(n+2)..(n+2) with sum zero.

The programs for A188123, the canonical program `A188123.P3930793075806305663` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188123 has offset 0).

The definition of A188123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188123.P3930793075806305663

`∑[ceil(∑[xor(1, n)+n/3])]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188123

/-- `∑[ceil(∑[xor(1, n)+n/3])]` -/
def P3930793075806305663.Spec : Prop :=
  ∀ n, P3930793075806305663.a n = A188123 n

theorem P3930793075806305663.correct : P3930793075806305663.Spec := by
  intro n
  simp only [A188123]

end A188123

/-! ## A188123.P8021832506050889023

`∑[ceil(4/3*n²)+1]-a(n-1)` with `a(0)=1`
-/

namespace A188123.P8021832506050889023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℚ) / 3 * (n ^ 2 : ℚ)⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A188123.P8021832506050889023

namespace A188123

/-- `∑[ceil(4/3*n²)+1]-a(n-1)` -/
def P8021832506050889023.Spec : Prop :=
  ∀ n, P8021832506050889023.a n = A188123 n

end A188123

/-! ## A188123.P11906294396649927061

`a(n-2)+A147623(n)+1` with `a(0)=1, a(1)=3`
-/

namespace A188123.P11906294396649927061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (A147623 n + 1)

end

end A188123.P11906294396649927061

namespace A188123

/-- `a(n-2)+A147623(n)+1` -/
def P11906294396649927061.Spec : Prop :=
  ∀ n, P11906294396649927061.a n = A188123 n

end A188123

/-! ## A188123.P15202512230809637488

`∑[and(1, n+1)]+2*A060999(n)`
-/

namespace A188123.P15202512230809637488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A060999 n

end

end A188123.P15202512230809637488

namespace A188123

/-- `∑[and(1, n+1)]+2*A060999(n)` -/
def P15202512230809637488.Spec : Prop :=
  ∀ n, P15202512230809637488.a n = A188123 n

end A188123

/-! ## A188123.P14817061554430621223

`∑[A008810(n)+n²+1-a(n-1)]` with `a(0)=1`
-/

namespace A188123.P14817061554430621223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A008810 n + (n ^ 2 + 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188123.P14817061554430621223

namespace A188123

/-- `∑[A008810(n)+n²+1-a(n-1)]` -/
def P14817061554430621223.Spec : Prop :=
  ∀ n, P14817061554430621223.a n = A188123 n

end A188123

/-! ## A188123.P10707591694232355676

`a(n-2)+∑[A047407(n+1)-2]+3` with `a(0)=1, a(1)=3`
-/

namespace A188123.P10707591694232355676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047407 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A188123.P10707591694232355676

namespace A188123

/-- `a(n-2)+∑[A047407(n+1)-2]+3` -/
def P10707591694232355676.Spec : Prop :=
  ∀ n, P10707591694232355676.a n = A188123 n

end A188123

/-! ## A188123.P9289194434687120545

`A008619(n)+2*A060999(n)`
-/

namespace A188123.P9289194434687120545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + 2 * A060999 n

end

end A188123.P9289194434687120545

namespace A188123

/-- `A008619(n)+2*A060999(n)` -/
def P9289194434687120545.Spec : Prop :=
  ∀ n, P9289194434687120545.a n = A188123 n

end A188123

/-! ## A188123.P9750487267609743812

`A156040(n)+∑[∑[A131452(n)]]`
-/

namespace A188123.P9750487267609743812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156040 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188123.P9750487267609743812

namespace A188123

/-- `A156040(n)+∑[∑[A131452(n)]]` -/
def P9750487267609743812.Spec : Prop :=
  ∀ n, P9750487267609743812.a n = A188123 n

end A188123

/-! ## A188123.P718118182423373787

`A008619(n)+∑[∑[2*A004396(n)]]`
-/

namespace A188123.P718118182423373787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004396 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188123.P718118182423373787

namespace A188123

/-- `A008619(n)+∑[∑[2*A004396(n)]]` -/
def P718118182423373787.Spec : Prop :=
  ∀ n, P718118182423373787.a n = A188123 n

end A188123

/-! ## A188123.P12142331632500902544

`∑[A059841(n)+∑[2*A004396(n)]]`
-/

namespace A188123.P12142331632500902544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004396 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188123.P12142331632500902544

namespace A188123

/-- `∑[A059841(n)+∑[2*A004396(n)]]` -/
def P12142331632500902544.Spec : Prop :=
  ∀ n, P12142331632500902544.a n = A188123 n

end A188123

/-! ## A188123.P12341148140838149522

`∑[A007997(n+4)+∑[xor(1, n)]]`
-/

namespace A188123.P12341148140838149522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007997 (n + 4) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188123.P12341148140838149522

namespace A188123

/-- `∑[A007997(n+4)+∑[xor(1, n)]]` -/
def P12341148140838149522.Spec : Prop :=
  ∀ n, P12341148140838149522.a n = A188123 n

end A188123

/-! ## A188123.P13551396788176880487

`A010761(n+2)+∑[∑[A004396(2*n)]]`
-/

namespace A188123.P13551396788176880487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010761 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188123.P13551396788176880487

namespace A188123

/-- `A010761(n+2)+∑[∑[A004396(2*n)]]` -/
def P13551396788176880487.Spec : Prop :=
  ∀ n, P13551396788176880487.a n = A188123 n

end A188123

/-! ## A188123.P14172744080282150335

`∑[A008813(2*n)-n%2]`
-/

namespace A188123.P14172744080282150335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008813 (2 * n) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188123.P14172744080282150335

namespace A188123

/-- `∑[A008813(2*n)-n%2]` -/
def P14172744080282150335.Spec : Prop :=
  ∀ n, P14172744080282150335.a n = A188123 n

end A188123

/-! ## A188123.P9916263411736157608

`∑[A056829(2*n+1)+and(1, n+1)]`
-/

namespace A188123.P9916263411736157608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056829 (2 * n + 1) + (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188123.P9916263411736157608

namespace A188123

/-- `∑[A056829(2*n+1)+and(1, n+1)]` -/
def P9916263411736157608.Spec : Prop :=
  ∀ n, P9916263411736157608.a n = A188123 n

end A188123

/-! ## A188123.P6569072300275863435

`A008619(n)+∑[A056829(2*n+1)]`
-/

namespace A188123.P6569072300275863435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056829 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188123.P6569072300275863435

namespace A188123

/-- `A008619(n)+∑[A056829(2*n+1)]` -/
def P6569072300275863435.Spec : Prop :=
  ∀ n, P6569072300275863435.a n = A188123 n

end A188123

/-! ## A188123.P2959205051950835274

`A001973(2*n+1)-(A001971(2*n)+n)`
-/

namespace A188123.P2959205051950835274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (2 * n + 1) - (A001971 (2 * n) + (n : ℤ))

end

end A188123.P2959205051950835274

namespace A188123

/-- `A001973(2*n+1)-(A001971(2*n)+n)` -/
def P2959205051950835274.Spec : Prop :=
  ∀ n, P2959205051950835274.a n = A188123 n

end A188123

/-! ## A188123.P9641777019396136460

`∑[∑[A130823(2*(n+1))-A010873(2*n)]]`
-/

namespace A188123.P9641777019396136460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (2 * (n + 1)) - A010873 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188123.P9641777019396136460

namespace A188123

/-- `∑[∑[A130823(2*(n+1))-A010873(2*n)]]` -/
def P9641777019396136460.Spec : Prop :=
  ∀ n, P9641777019396136460.a n = A188123 n

end A188123

/-! ## A188123.P9613051601780089365

`∑[∑[A285872(2*n+1)]-A285869(2*n)]`
-/

namespace A188123.P9613051601780089365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285872 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A285869 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188123.P9613051601780089365

namespace A188123

/-- `∑[∑[A285872(2*n+1)]-A285869(2*n)]` -/
def P9613051601780089365.Spec : Prop :=
  ∀ n, P9613051601780089365.a n = A188123 n

end A188123

/-! ## A188123.P2977868554009190469

`A309715(4*n)+∑[n+1]`
-/

namespace A188123.P2977868554009190469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309715 (4 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A188123.P2977868554009190469

namespace A188123

/-- `A309715(4*n)+∑[n+1]` -/
def P2977868554009190469.Spec : Prop :=
  ∀ n, P2977868554009190469.a n = A188123 n

end A188123

/-! ## A188123.P15705266466712220909

`∑[A063195(n+2)+∑[A063195(4*n+1)]]`
-/

namespace A188123.P15705266466712220909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (4 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (n + 2) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188123.P15705266466712220909

namespace A188123

/-- `∑[A063195(n+2)+∑[A063195(4*n+1)]]` -/
def P15705266466712220909.Spec : Prop :=
  ∀ n, P15705266466712220909.a n = A188123 n

end A188123

/-!
# A188124: Number of strictly increasing arrangements of 5 nonzero numbers in -(n+3)..(n+3) with sum zero.

The programs for A188124, there is no canonical definition to state claims against.
-/

/-! ## A188124.P8330243527910172678

`A188122(∑[n+3]+8)`
-/

namespace A188124.P8330243527910172678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (∑ j ∈ Finset.range (n + 1), f1 j + 8)

end

end A188124.P8330243527910172678

/-! ## A188124.P11373531101906509177

`∑[∑[eq[1, A134278(n+1)]+n]+n]`
-/

namespace A188124.P11373531101906509177
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134278 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188124.P11373531101906509177

/-!
# A188125: Number of strictly increasing arrangements of 6 nonzero numbers in -(n+4)..(n+4) with sum zero.

The programs for A188125, there is no canonical definition to state claims against.
-/

/-! ## A188125.P4826923109362044101

`A001977(2*n+3)-A188124(n+1)`
-/

namespace A188125.P4826923109362044101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001977 (2 * n + 3) - A188124 (n + 1)

end

end A188125.P4826923109362044101

/-! ## A188125.P12003436086710832406

`record[A188122(A141214(n)+9)]`
-/

namespace A188125.P12003436086710832406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A141214 n + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188125.P12003436086710832406

/-! ## A188125.P6461841994132266305

`record[A188122(A052905(n)+11)]`
-/

namespace A188125.P6461841994132266305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A052905 n + 11).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188125.P6461841994132266305

/-! ## A188125.P15116805845112014928

`record[A188122(A055999(n)+12)]`
-/

namespace A188125.P15116805845112014928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A055999 n + 12).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188125.P15116805845112014928

/-! ## A188125.P11339097553854200944

`record[A188122(Δ[A224039(n+1)])]`
-/

namespace A188125.P11339097553854200944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224039 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188125.P11339097553854200944

/-!
# A188126: Number of strictly increasing arrangements of 7 nonzero numbers in -(n+5)..(n+5) with sum zero.

The programs for A188126, there is no canonical definition to state claims against.
-/

/-! ## A188126.P12132074210032176562

`A188185(n+1)-A188125(n+2)`
-/

namespace A188126.P12132074210032176562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188185 (n + 1) - A188125 (n + 2)

end

end A188126.P12132074210032176562

/-! ## A188126.P9808285656155792725

`A188122(A167487(n+5))`
-/

namespace A188126.P9808285656155792725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A167487 (n + 5)).toNat

end

end A188126.P9808285656155792725

/-! ## A188126.P5662302032167115006

`A188122(A302537(n)+27)`
-/

namespace A188126.P5662302032167115006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A302537 n + 27).toNat

end

end A188126.P5662302032167115006

/-! ## A188126.P12597825758503539325

`A188122(A056119(n)+28)`
-/

namespace A188126.P12597825758503539325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A056119 n + 28).toNat

end

end A188126.P12597825758503539325

/-! ## A188126.P13316871157996812780

`A188122(eq[11, A066657(n)])`
-/

namespace A188126.P13316871157996812780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188126.P13316871157996812780

/-!
# A188127: Number of strictly increasing arrangements of 8 nonzero numbers in -(n+6)..(n+6) with sum zero.

The programs for A188127, there is no canonical definition to state claims against.
-/

/-! ## A188127.P5329808552284944771

`A188186(n+1)-A188126(n+2)`
-/

namespace A188127.P5329808552284944771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188186 (n + 1) - A188126 (n + 2)

end

end A188127.P5329808552284944771

/-! ## A188127.P668868275333966961

`A188122(eq[13, A066657(n)])`
-/

namespace A188127.P668868275333966961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188127.P668868275333966961

/-! ## A188127.P7350729405009707054

`A188122(A000124(n+7)+7)`
-/

namespace A188127.P7350729405009707054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A000124 (n + 7) + 7).toNat

end

end A188127.P7350729405009707054

/-! ## A188127.P3745903470598168832

`A188122(A000217(n+7)+8)`
-/

namespace A188127.P3745903470598168832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A000217 (n + 7) + 8).toNat

end

end A188127.P3745903470598168832

/-! ## A188127.P3530677927614226794

`A188122(A052905(n+4)+13)`
-/

namespace A188127.P3530677927614226794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A052905 (n + 4) + 13).toNat

end

end A188127.P3530677927614226794

/-!
# A188128: Expansion of (4-6*x-6*x^2+x^3)/((1+x)*(1-3*x+x^3)).

The programs for A188128, the canonical program `A188128.P517482734467215531` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188128 has offset 0).

The definition of A188128 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4-6x-6x^2+x^3)/(1-2x-3x^2+x^3+x^4))` (program `A188128.P517482734467215531`, by `A188128.P517482734467215531.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188128.P517482734467215531

`ogf((4-6x-6x^2+x^3)/(1-2x-3x^2+x^3+x^4))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188128

/-- `ogf((4-6x-6x^2+x^3)/(1-2x-3x^2+x^3+x^4))` -/
def P517482734467215531.Spec : Prop :=
  ∀ n, P517482734467215531.a n = A188128 n

theorem P517482734467215531.correct : P517482734467215531.Spec := by
  intro n
  simp only [A188128]

end A188128

/-! ## A188128.P18163900180930578151

`2*a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` with `a(0)=4, a(1)=2, a(2)=10, a(3)=23`
-/

namespace A188128.P18163900180930578151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 2, 10, 23] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - a (n - 3) - a (n - 4)

end

end A188128.P18163900180930578151

namespace A188128

/-- `2*a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` -/
def P18163900180930578151.Spec : Prop :=
  ∀ n, P18163900180930578151.a n = A188128 n

end A188128

/-! ## A188128.P4583595922033411488

`(-1)^n+3*A147704(n)`
-/

namespace A188128.P4583595922033411488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 3 * A147704 n

end

end A188128.P4583595922033411488

namespace A188128

/-- `(-1)^n+3*A147704(n)` -/
def P4583595922033411488.Spec : Prop :=
  ∀ n, P4583595922033411488.a n = A188128 n

end A188128

/-! ## A188128.P12236149148203292680

`A215885(n)+(-1)^n`
-/

namespace A188128.P12236149148203292680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215885 n + (-1) ^ n

end

end A188128.P12236149148203292680

namespace A188128

/-- `A215885(n)+(-1)^n` -/
def P12236149148203292680.Spec : Prop :=
  ∀ n, P12236149148203292680.a n = A188128 n

end A188128

/-! ## A188128.P3428942617501710341

`abs(A215885(n)+A033999(n))`
-/

namespace A188128.P3428942617501710341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215885 n + A033999 n|

end

end A188128.P3428942617501710341

namespace A188128

/-- `abs(A215885(n)+A033999(n))` -/
def P3428942617501710341.Spec : Prop :=
  ∀ n, P3428942617501710341.a n = A188128 n

end A188128

/-! ## A188128.P8391145779453867686

`A033999(n)+∑[3*A215448(n)]`
-/

namespace A188128.P8391145779453867686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A215448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188128.P8391145779453867686

namespace A188128

/-- `A033999(n)+∑[3*A215448(n)]` -/
def P8391145779453867686.Spec : Prop :=
  ∀ n, P8391145779453867686.a n = A188128 n

end A188128

/-! ## A188128.P8608333252445297033

`A033999(n)+3*(A052536(n)-A123941(n))`
-/

namespace A188128.P8608333252445297033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 3 * (A052536 n - A123941 n)

end

end A188128.P8608333252445297033

namespace A188128

/-- `A033999(n)+3*(A052536(n)-A123941(n))` -/
def P8608333252445297033.Spec : Prop :=
  ∀ n, P8608333252445297033.a n = A188128 n

end A188128

/-! ## A188128.P9720654044115540645

`A033999(n)+1-(∑[A123891(n)]-A123891(n+1))`
-/

namespace A188128.P9720654044115540645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + (1 - (∑ j ∈ Finset.range (n + 1), f1 j - A123891 (n + 1)))

end

end A188128.P9720654044115540645

namespace A188128

/-- `A033999(n)+1-(∑[A123891(n)]-A123891(n+1))` -/
def P9720654044115540645.Spec : Prop :=
  ∀ n, P9720654044115540645.a n = A188128 n

end A188128

/-!
# A188129: a(n) = (2^n+3)^2-8.

The programs for A188129, the canonical program `A188129.P13771057010733258810` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188129 has offset 0).

The definition of A188129 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n+3)²-8` (program `A188129.P13771057010733258810`, by `A188129.P13771057010733258810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188129.P13771057010733258810

`(2^n+3)²-8`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188129

/-- `(2^n+3)²-8` -/
def P13771057010733258810.Spec : Prop :=
  ∀ n, P13771057010733258810.a n = A188129 n

theorem P13771057010733258810.correct : P13771057010733258810.Spec := by
  intro n
  simp only [A188129]

end A188129

/-! ## A188129.P1008761401208746313

`abs(8-A062709(n)²)`
-/

namespace A188129.P1008761401208746313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 - A062709 n ^ 2|

end

end A188129.P1008761401208746313

namespace A188129

/-- `abs(8-A062709(n)²)` -/
def P1008761401208746313.Spec : Prop :=
  ∀ n, P1008761401208746313.a n = A188129 n

end A188129

/-! ## A188129.P3236788070916217050

`lcm(8-A062709(n)², (-1)^A086994(n))`
-/

namespace A188129.P3236788070916217050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (8 - A062709 n ^ 2) (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A086994 (n + 1) : ℤ)))

end

end A188129.P3236788070916217050

namespace A188129

/-- `lcm(8-A062709(n)², (-1)^A086994(n))` -/
def P3236788070916217050.Spec : Prop :=
  ∀ n, (P3236788070916217050.a n : ℤ) = A188129 n

end A188129

/-! ## A188129.P10819758490953343259

`4*(A000079(n)+Δ[A005126(n)/2]²)`
-/

namespace A188129.P10819758490953343259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005126 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A000079 n : ℚ) + (f1 (n + 1) - f1 n) ^ 2)

end

end A188129.P10819758490953343259

namespace A188129

/-- `4*(A000079(n)+Δ[A005126(n)/2]²)` -/
def P10819758490953343259.Spec : Prop :=
  ∀ n, P10819758490953343259.a n = (A188129 n : ℚ)

theorem P10819758490953343259.correct : P10819758490953343259.Spec := by
  intro n
  simp only [A188129, Nat.add_sub_cancel, A188129.P10819758490953343259.f1, A188129.P10819758490953343259.a, A188129.P13771057010733258810.a, A000079, A000079.P10855139691139572931.a, A005126, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188129

/-! ## A188129.P9971810023101642966

`-((8-A062709(n)²)*A072170(A000096(n)))`
-/

namespace A188129.P9971810023101642966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((8 - A062709 n ^ 2) * A072170 (A000096 n).toNat)

end

end A188129.P9971810023101642966

namespace A188129

/-- `-((8-A062709(n)²)*A072170(A000096(n)))` -/
def P9971810023101642966.Spec : Prop :=
  ∀ n, P9971810023101642966.a n = A188129 n

end A188129

/-!
# A188130: Primes p such that 6p+1 divides the Mersenne number M(p)=A000225(p).

The programs for A188130, there is no canonical definition to state claims against.
-/

/-! ## A188130.P17051021778107849715

`p?[floor(A001136(n+1)/6)]`
-/

namespace A188130.P17051021778107849715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001136 (n + 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188130.P17051021778107849715

/-! ## A188130.P16305462359061680911

`p?[A038844(n+1)]`
-/

namespace A188130.P16305462359061680911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188130.P16305462359061680911

/-! ## A188130.P8803572829859562145

`∩[A007693(n+1), A038844(n+1)]`
-/

namespace A188130.P8803572829859562145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188130.P8803572829859562145

/-! ## A188130.P6289595702754902523

`∩[A038844(n+1), A188131(n+1)]`
-/

namespace A188130.P6289595702754902523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188130.P6289595702754902523

/-! ## A188130.P14560284001692599497

`∩[A002144(n+1), A038844(n+1)]`
-/

namespace A188130.P14560284001692599497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188130.P14560284001692599497

/-! ## A188130.P13319161396608897688

`∩[A002313(n+1), A038844(n+1)]`
-/

namespace A188130.P13319161396608897688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188130.P13319161396608897688

/-! ## A188130.P8541169967603288715

`∩[A038844(n+1), A280084(n+1)]`
-/

namespace A188130.P8541169967603288715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188130.P8541169967603288715

/-! ## A188130.P11116000270704285915

`∩[A038844(n+1), A120960(n+1)]`
-/

namespace A188130.P11116000270704285915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188130.P11116000270704285915

/-! ## A188130.P4548938420642591980

`∩[A038844(n+1), A172480(n+1)]`
-/

namespace A188130.P4548938420642591980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188130.P4548938420642591980

/-! ## A188130.P11290510416291002294

`∩[A038844(n+1), A175768(n+1)]`
-/

namespace A188130.P11290510416291002294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188130.P11290510416291002294

/-! ## A188130.P9176634380079251941

`∩[A038844(n+1), A109515(n+1)]`
-/

namespace A188130.P9176634380079251941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188130.P9176634380079251941

/-! ## A188130.P11079228514091784376

`∩[A038844(n+1), A266987(n+1)]`
-/

namespace A188130.P11079228514091784376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188130.P11079228514091784376

/-! ## A188130.P14910363507300813630

`∩[A038844(n+1), A049092(n+1)]`
-/

namespace A188130.P14910363507300813630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188130.P14910363507300813630

/-! ## A188130.P15406000033680222771

`∩[A038844(n+1), A380468(n+1)]`
-/

namespace A188130.P15406000033680222771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188130.P15406000033680222771

/-! ## A188130.P14798821302678491709

`∩[A038844(n+1), A095283(n+1)]`
-/

namespace A188130.P14798821302678491709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188130.P14798821302678491709

/-! ## A188130.P11501538581924292011

`∩[A038844(n+1), A045442(n+1)]`
-/

namespace A188130.P11501538581924292011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188130.P11501538581924292011

/-! ## A188130.P16110296746803164012

`∩[A038844(n+1), A042998(n+1)]`
-/

namespace A188130.P16110296746803164012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188130.P16110296746803164012

/-! ## A188130.P16802711449268476654

`∩[A038844(n+1), A045352(n+1)]`
-/

namespace A188130.P16802711449268476654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188130.P16802711449268476654

/-! ## A188130.P14447732545933039090

`∩[A038844(n+1), A045403(n+1)]`
-/

namespace A188130.P14447732545933039090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188130.P14447732545933039090

/-! ## A188130.P5712572048513918923

`∩[A038844(n+1), A325143(n+1)]`
-/

namespace A188130.P5712572048513918923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188130.P5712572048513918923

/-!
# A188131: Primes p == 1 (mod 4) such that 6p+1 is prime.

The programs for A188131, there is no canonical definition to state claims against.
-/

/-! ## A188131.P8290017427636926223

`∩[A007693(n+1), A008846(n+1)]`
-/

namespace A188131.P8290017427636926223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188131.P8290017427636926223

/-! ## A188131.P5811149180740177879

`∩[A007693(n+1), A191218(n+1)]`
-/

namespace A188131.P5811149180740177879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188131.P5811149180740177879

/-! ## A188131.P4404114401358376197

`∩[A002144(n+1), A007693(n+1)]`
-/

namespace A188131.P4404114401358376197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188131.P4404114401358376197

/-! ## A188131.P15115976725894957535

`∩[A007693(n+1), A280084(n+1)]`
-/

namespace A188131.P15115976725894957535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188131.P15115976725894957535

/-! ## A188131.P17427175736630111165

`∩[A007693(n+1), A120960(n+1)]`
-/

namespace A188131.P17427175736630111165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188131.P17427175736630111165

/-! ## A188131.P11915384015675116954

`∩[A007693(n+1), A085759(n+1)]`
-/

namespace A188131.P11915384015675116954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188131.P11915384015675116954

/-! ## A188131.P6982477891558695139

`∩[A007693(n+1), A351535(n+1)]`
-/

namespace A188131.P6982477891558695139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188131.P6982477891558695139

/-! ## A188131.P2139684575600755544

`∩[A007693(n+1), A125018(n+1)]`
-/

namespace A188131.P2139684575600755544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188131.P2139684575600755544

/-! ## A188131.P4371417127393446082

`p?[floor(A107006(n+1)/6)]`
-/

namespace A188131.P4371417127393446082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A107006 (n + 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188131.P4371417127393446082

/-! ## A188131.P7662347055108663373

`∩[A007693(n+1), A230779(n+1)]`
-/

namespace A188131.P7662347055108663373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188131.P7662347055108663373

/-! ## A188131.P15068140002976282930

`∩[A003653(n+1), A007693(n+1)]`
-/

namespace A188131.P15068140002976282930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188131.P15068140002976282930

/-! ## A188131.P8903992884640650715

`∩[A007693(n+1), A231754(n+1)]`
-/

namespace A188131.P8903992884640650715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188131.P8903992884640650715

/-! ## A188131.P18255169172044859650

`∩[A004613(n+1), A007693(n+1)]`
-/

namespace A188131.P18255169172044859650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188131.P18255169172044859650

/-! ## A188131.P13349692064736093299

`filter[A007693(n+1), A353812(#)]`
-/

namespace A188131.P13349692064736093299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A188131.P13349692064736093299

/-! ## A188131.P4882153057585326820

`filter[A007693(n+1), A353814(#)]`
-/

namespace A188131.P4882153057585326820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A188131.P4882153057585326820

/-! ## A188131.P9740237125806158174

`filter[A007693(n+1), A358678(#)]`
-/

namespace A188131.P9740237125806158174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A188131.P9740237125806158174

/-! ## A188131.P3041874002099066482

`filter[A007693(n+1), A359150(#)]`
-/

namespace A188131.P3041874002099066482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359150 (f1 j).toNat = 1) n)

end

end A188131.P3041874002099066482

/-! ## A188131.P13422333520510110036

`∩[A007693(n+1), A057948(n+1)]`
-/

namespace A188131.P13422333520510110036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188131.P13422333520510110036

/-! ## A188131.P17540706452583948589

`∩[A007693(n+1), A389199(n+1)]`
-/

namespace A188131.P17540706452583948589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188131.P17540706452583948589

/-!
# A188132: Primes p such that p == 3 (mod 4) and 6p+1 is prime.

The programs for A188132, there is no canonical definition to state claims against.
-/

/-! ## A188132.P1938050533779144846

`∩[A002145(n+1), A007693(n+1)]`
-/

namespace A188132.P1938050533779144846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188132.P1938050533779144846

/-! ## A188132.P14969542184219610315

`∩[A007693(n+1), A085760(n+1)]`
-/

namespace A188132.P14969542184219610315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188132.P14969542184219610315

/-! ## A188132.P2912382824354464928

`∩[A007693(n+1), A197504(n+1)]`
-/

namespace A188132.P2912382824354464928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188132.P2912382824354464928

/-! ## A188132.P14396784508075324896

`∩[A007693(n+1), A292762(n+1)]`
-/

namespace A188132.P14396784508075324896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188132.P14396784508075324896

/-! ## A188132.P700093213305361826

`∩[A007693(n+1), A066499(n+1)]`
-/

namespace A188132.P700093213305361826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188132.P700093213305361826

/-! ## A188132.P11940006754092787448

`∩[A007693(n+1), A094179(n+1)]`
-/

namespace A188132.P11940006754092787448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188132.P11940006754092787448

/-! ## A188132.P17142166641623690482

`filter[A007693(n+1), A359152(#)]`
-/

namespace A188132.P17142166641623690482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A188132.P17142166641623690482

/-! ## A188132.P1532072776312370948

`∩[A007693(n+1), A380787(n+1)]`
-/

namespace A188132.P1532072776312370948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188132.P1532072776312370948

/-! ## A188132.P13016968176107341652

`p?[round(A106950(n+1)/6)]`
-/

namespace A188132.P13016968176107341652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A106950 (n + 1) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188132.P13016968176107341652

/-! ## A188132.P11131995255443633409

`record[A020639(round(A106950(n+1)/6))]`
-/

namespace A188132.P11131995255443633409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A106950 (n + 1) : ℚ) / 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188132.P11131995255443633409

/-! ## A188132.P6071313568971024976

`∩[A007693(n+1), A167181(n+1)]`
-/

namespace A188132.P6071313568971024976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188132.P6071313568971024976

/-! ## A188132.P12181737439238871991

`∩[A007693(n+1), A359153(n+1)]`
-/

namespace A188132.P12181737439238871991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188132.P12181737439238871991

/-! ## A188132.P140045864498305646

`∩[A007693(n+1), A309388(n+1)]`
-/

namespace A188132.P140045864498305646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188132.P140045864498305646

/-! ## A188132.P6226253241447429754

`∩[A004614(n+1), A007693(n+1)]`
-/

namespace A188132.P6226253241447429754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188132.P6226253241447429754

/-! ## A188132.P13721470600140984526

`filter[A007693(n+1), A354028(#)]`
-/

namespace A188132.P13721470600140984526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A188132.P13721470600140984526

/-! ## A188132.P7129225534529416609

`filter[A007693(n+1), A354029(#)]`
-/

namespace A188132.P7129225534529416609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A188132.P7129225534529416609

/-! ## A188132.P9947391906968365697

`filter[A007693(n+1), A354033(#)]`
-/

namespace A188132.P9947391906968365697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354033 (f1 j).toNat = 1) n)

end

end A188132.P9947391906968365697

/-! ## A188132.P14649182409679021098

`filter[A007693(n+1), A354036(#)]`
-/

namespace A188132.P14649182409679021098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A188132.P14649182409679021098

/-! ## A188132.P4544863044083830668

`filter[A007693(n+2), A347871(#)]`
-/

namespace A188132.P4544863044083830668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A188132.P4544863044083830668

/-! ## A188132.P13058079305916570191

`∩[A007693(n+1), A039957(n+1)]`
-/

namespace A188132.P13058079305916570191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188132.P13058079305916570191

/-!
# A188133: Primes p such that 10p+1 divides 2^p-1.

The programs for A188133, there is no canonical definition to state claims against.
-/

/-! ## A188133.P15872194447683284783

`p?[floor(A152310(n+1)/10)]`
-/

namespace A188133.P15872194447683284783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152310 (n + 1) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188133.P15872194447683284783

/-! ## A188133.P15355441582104941225

`p?[round(A152310(n+2)/10)]`
-/

namespace A188133.P15355441582104941225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A152310 (n + 2) : ℚ) / 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188133.P15355441582104941225

/-! ## A188133.P9171329441218755901

`∩[A000040(n+1), floor(A152310(n+1)/10)]`
-/

namespace A188133.P9171329441218755901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152310 (n + 1) : ℚ) / 10⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188133.P9171329441218755901

/-! ## A188133.P12707994459725456619

`record[A020639(floor(A152310(n+3)/10))]`
-/

namespace A188133.P12707994459725456619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊(A152310 (n + 3) : ℚ) / 10⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188133.P12707994459725456619

/-! ## A188133.P14435272449835703767

`record[A014963(floor(A152310(n+3)/10))]`
-/

namespace A188133.P14435272449835703767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ⌊(A152310 (n + 3) : ℚ) / 10⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188133.P14435272449835703767

/-!
# A188134: a(4*n) = n, a(1+2*n) = 4+8*n, a(2+4*n) = 2+4*n.

The programs for A188134, the canonical program `A188134.P7796187447045777434` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188134 has offset 0).

The definition of A188134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188134.P15399436114656973450

`lcm(4, n)/gcd(4, n)`
-/

namespace A188134.P15399436114656973450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 n : ℚ) / (Nat.gcd 4 n : ℚ)

end

end A188134.P15399436114656973450

namespace A188134

/-- `lcm(4, n)/gcd(4, n)` -/
def P15399436114656973450.Spec : Prop :=
  ∀ n, P15399436114656973450.a n = (A188134 n : ℚ)

end A188134

/-! ## A188134.P7796187447045777434

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=4, a(2)=2, a(3)=12, a(4)=1, a(5)=20, a(6)=6, a(7)=28`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188134

/-- `2*a(n-4)-a(n-8)` -/
def P7796187447045777434.Spec : Prop :=
  ∀ n, P7796187447045777434.a n = A188134 n

theorem P7796187447045777434.correct : P7796187447045777434.Spec := by
  intro n
  simp only [A188134]

end A188134

/-! ## A188134.P2069107629699948670

`4*A061037(n+2)/(n+4)`
-/

namespace A188134.P2069107629699948670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A061037 (n + 2) : ℚ) / (n + 4 : ℚ)

end

end A188134.P2069107629699948670

namespace A188134

/-- `4*A061037(n+2)/(n+4)` -/
def P2069107629699948670.Spec : Prop :=
  ∀ n, P2069107629699948670.a n = (A188134 n : ℚ)

end A188134

/-! ## A188134.P4144990668787466363

`4*n/A010156(n)`
-/

namespace A188134.P4144990668787466363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℚ) / (A010156 n : ℚ))

end

end A188134.P4144990668787466363

namespace A188134

/-- `4*n/A010156(n)` -/
def P4144990668787466363.Spec : Prop :=
  ∀ n, P4144990668787466363.a n = (A188134 n : ℚ)

end A188134

/-! ## A188134.P2873873751206084535

`n/4*A177499(n)`
-/

namespace A188134.P2873873751206084535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A177499 n : ℚ)

end

end A188134.P2873873751206084535

namespace A188134

/-- `n/4*A177499(n)` -/
def P2873873751206084535.Spec : Prop :=
  ∀ n, P2873873751206084535.a n = (A188134 n : ℚ)

end A188134

/-! ## A188134.P13624201977978845421

`n*(2/A109008(n))²`
-/

namespace A188134.P13624201977978845421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 / (A109008 n : ℚ)) ^ 2

end

end A188134.P13624201977978845421

namespace A188134

/-- `n*(2/A109008(n))²` -/
def P13624201977978845421.Spec : Prop :=
  ∀ n, P13624201977978845421.a n = (A188134 n : ℚ)

end A188134

/-! ## A188134.P1326816082055481367

`n*(A176895(n)/2)²`
-/

namespace A188134.P1326816082055481367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A176895 n : ℚ) / 2) ^ 2

end

end A188134.P1326816082055481367

namespace A188134

/-- `n*(A176895(n)/2)²` -/
def P1326816082055481367.Spec : Prop :=
  ∀ n, P1326816082055481367.a n = (A188134 n : ℚ)

end A188134

/-! ## A188134.P3799841396604848492

`2/(n+2)*A191567(n)`
-/

namespace A188134.P3799841396604848492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A191567 n : ℚ)

end

end A188134.P3799841396604848492

namespace A188134

/-- `2/(n+2)*A191567(n)` -/
def P3799841396604848492.Spec : Prop :=
  ∀ n, P3799841396604848492.a n = (A188134 n : ℚ)

end A188134

/-! ## A188134.P16384923836236320069

`n*4^A008683(gcd(n+2, n-2))`
-/

namespace A188134.P16384923836236320069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (4 : ℚ) ^ (A008683 (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 2)) : ℤ)

end

end A188134.P16384923836236320069

namespace A188134

/-- `n*4^A008683(gcd(n+2, n-2))` -/
def P16384923836236320069.Spec : Prop :=
  ∀ n, P16384923836236320069.a n = (A188134 n : ℚ)

end A188134

/-! ## A188134.P1637524283318970805

`A010685(n)*A214392(n)`
-/

namespace A188134.P1637524283318970805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A214392 n

end

end A188134.P1637524283318970805

namespace A188134

/-- `A010685(n)*A214392(n)` -/
def P1637524283318970805.Spec : Prop :=
  ∀ n, P1637524283318970805.a n = A188134 n

end A188134

/-! ## A188134.P7054309804917286251

`A008586(n)/A010156(n)`
-/

namespace A188134.P7054309804917286251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008586 n : ℚ) / (A010156 n : ℚ)

end

end A188134.P7054309804917286251

namespace A188134

/-- `A008586(n)/A010156(n)` -/
def P7054309804917286251.Spec : Prop :=
  ∀ n, P7054309804917286251.a n = (A188134 n : ℚ)

end A188134

/-! ## A188134.P615679485470341932

`A109045(n)/A109008(n)`
-/

namespace A188134.P615679485470341932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109045 n : ℚ) / (A109008 n : ℚ)

end

end A188134.P615679485470341932

namespace A188134

/-- `A109045(n)/A109008(n)` -/
def P615679485470341932.Spec : Prop :=
  ∀ n, P615679485470341932.a n = (A188134 n : ℚ)

end A188134

/-! ## A188134.P6318117869866007911

`lcm(A174571(n), A214392(n))`
-/

namespace A188134.P6318117869866007911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A174571 n) (A214392 n)

end

end A188134.P6318117869866007911

namespace A188134

/-- `lcm(A174571(n), A214392(n))` -/
def P6318117869866007911.Spec : Prop :=
  ∀ n, (P6318117869866007911.a n : ℤ) = A188134 n

end A188134

/-! ## A188134.P11690596396123759248

`A000034(n)²*A214392(n)`
-/

namespace A188134.P11690596396123759248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A214392 n

end

end A188134.P11690596396123759248

namespace A188134

/-- `A000034(n)²*A214392(n)` -/
def P11690596396123759248.Spec : Prop :=
  ∀ n, P11690596396123759248.a n = A188134 n

end A188134

/-! ## A188134.P5801464248712267296

`A008586(n)/A109008(n)²`
-/

namespace A188134.P5801464248712267296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008586 n : ℚ) / (A109008 n ^ 2 : ℚ)

end

end A188134.P5801464248712267296

namespace A188134

/-- `A008586(n)/A109008(n)²` -/
def P5801464248712267296.Spec : Prop :=
  ∀ n, P5801464248712267296.a n = (A188134 n : ℚ)

end A188134

/-! ## A188134.P18440724120804320492

`A061037(n+2)-A181318(n)`
-/

namespace A188134.P18440724120804320492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (n + 2) - A181318 n

end

end A188134.P18440724120804320492

namespace A188134

/-- `A061037(n+2)-A181318(n)` -/
def P18440724120804320492.Spec : Prop :=
  ∀ n, P18440724120804320492.a n = A188134 n

end A188134

/-! ## A188134.P17511459381414073259

`A191567(n)-2*A181318(n)`
-/

namespace A188134.P17511459381414073259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191567 n - 2 * A181318 n

end

end A188134.P17511459381414073259

namespace A188134

/-- `A191567(n)-2*A181318(n)` -/
def P17511459381414073259.Spec : Prop :=
  ∀ n, P17511459381414073259.a n = A188134 n

end A188134

/-! ## A188134.P13092747831470369701

`gcd(2, A346101(n))²*A214392(n)`
-/

namespace A188134.P13092747831470369701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A346101 n) ^ 2 : ℤ) * A214392 n

end

end A188134.P13092747831470369701

namespace A188134

/-- `gcd(2, A346101(n))²*A214392(n)` -/
def P13092747831470369701.Spec : Prop :=
  ∀ n, P13092747831470369701.a n = A188134 n

end A188134

/-! ## A188134.P14637356622426830729

`2*A061037(n+2)-A191567(n)`
-/

namespace A188134.P14637356622426830729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061037 (n + 2) - A191567 n

end

end A188134.P14637356622426830729

namespace A188134

/-- `2*A061037(n+2)-A191567(n)` -/
def P14637356622426830729.Spec : Prop :=
  ∀ n, P14637356622426830729.a n = A188134 n

end A188134

/-! ## A188134.P10262326827611049458

`(A028347(n+2)-n²)/A010156(n)`
-/

namespace A188134.P10262326827611049458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028347 (n + 2) - (n ^ 2 : ℤ) : ℚ) / (A010156 n : ℚ)

end

end A188134.P10262326827611049458

namespace A188134

/-- `(A028347(n+2)-n²)/A010156(n)` -/
def P10262326827611049458.Spec : Prop :=
  ∀ n, P10262326827611049458.a n = (A188134 n : ℚ)

end A188134

/-!
# A188135: a(n) = 8*n^2 + 2*n + 1.

The programs for A188135, the canonical program `A188135.P13478576752506582860` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188135 has offset 0).

The definition of A188135 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n²+2*n+1` (program `A188135.P13478576752506582860`, by `A188135.P13478576752506582860.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188135.P8821276641459760

`1+2*n+8*n²`
-/

namespace A188135.P8821276641459760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 * n + 8 * n ^ 2

end

end A188135.P8821276641459760

namespace A188135

/-- `1+2*n+8*n²` -/
def P8821276641459760.Spec : Prop :=
  ∀ n, (P8821276641459760.a n : ℤ) = A188135 n

theorem P8821276641459760.correct : P8821276641459760.Spec := by
  intro n
  simp only [A188135, Nat.add_sub_cancel, A188135.P8821276641459760.a, A188135.P13478576752506582860.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A188135

/-! ## A188135.P13478576752506582860

`8*n²+2*n+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188135

/-- `8*n²+2*n+1` -/
def P13478576752506582860.Spec : Prop :=
  ∀ n, (P13478576752506582860.a n : ℤ) = A188135 n

theorem P13478576752506582860.correct : P13478576752506582860.Spec := by
  intro n
  simp only [A188135]

end A188135

/-! ## A188135.P15673344438566830877

`A084849(2*n)`
-/

namespace A188135.P15673344438566830877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084849 (2 * n)

end

end A188135.P15673344438566830877

namespace A188135

/-- `A084849(2*n)` -/
def P15673344438566830877.Spec : Prop :=
  ∀ n, P15673344438566830877.a n = A188135 n

theorem P15673344438566830877.correct : P15673344438566830877.Spec := by
  intro n
  simp only [A188135, Nat.add_sub_cancel, A188135.P15673344438566830877.a, A188135.P13478576752506582860.a, A084849, A084849.P10620509709519408572.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188135

/-! ## A188135.P10036917359692144904

`or(1, C(4*n+1, 2))`
-/

namespace A188135.P10036917359692144904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.choose (4 * n + 1) 2)

end

end A188135.P10036917359692144904

namespace A188135

/-- `or(1, C(4*n+1, 2))` -/
def P10036917359692144904.Spec : Prop :=
  ∀ n, (P10036917359692144904.a n : ℤ) = A188135 n

end A188135

/-! ## A188135.P9496445144259611983

`xor(1, C(4*n+1, 2))`
-/

namespace A188135.P9496445144259611983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.choose (4 * n + 1) 2)

end

end A188135.P9496445144259611983

namespace A188135

/-- `xor(1, C(4*n+1, 2))` -/
def P9496445144259611983.Spec : Prop :=
  ∀ n, (P9496445144259611983.a n : ℤ) = A188135 n

end A188135

/-! ## A188135.P15190431347206823251

`∑[a(n-1)+16]` with `a(0)=1, a(1)=10`
-/

namespace A188135.P15190431347206823251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188135.P15190431347206823251

namespace A188135

/-- `∑[a(n-1)+16]` -/
def P15190431347206823251.Spec : Prop :=
  ∀ n, (P15190431347206823251.a n : ℤ) = A188135 n

end A188135

/-! ## A188135.P3512731444080960400

`or(1, n*(8*n+2))`
-/

namespace A188135.P3512731444080960400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (8 * n + 2))

end

end A188135.P3512731444080960400

namespace A188135

/-- `or(1, n*(8*n+2))` -/
def P3512731444080960400.Spec : Prop :=
  ∀ n, (P3512731444080960400.a n : ℤ) = A188135 n

end A188135

/-! ## A188135.P784495207864776963

`ceil(xor(1, 8*n)²/8)`
-/

namespace A188135.P784495207864776963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (8 * n) ^ 2 : ℚ) / 8⌉

end

end A188135.P784495207864776963

namespace A188135

/-- `ceil(xor(1, 8*n)²/8)` -/
def P784495207864776963.Spec : Prop :=
  ∀ n, P784495207864776963.a n = A188135 n

end A188135

/-! ## A188135.P8656402795216779578

`∑[ogf((1+8x+7x^2)/(1-2x+x^2))]`
-/

namespace A188135.P8656402795216779578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188135.P8656402795216779578

namespace A188135

/-- `∑[ogf((1+8x+7x^2)/(1-2x+x^2))]` -/
def P8656402795216779578.Spec : Prop :=
  ∀ n, P8656402795216779578.a n = A188135 n

end A188135

/-! ## A188135.P3851000739795832849

`ogf((1+8x+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A188135.P3851000739795832849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, 7] [1, -3, 3, -1] n

end

end A188135.P3851000739795832849

namespace A188135

/-- `ogf((1+8x+7x^2)/(1-3x+3x^2-x^3))` -/
def P3851000739795832849.Spec : Prop :=
  ∀ n, P3851000739795832849.a n = A188135 n

end A188135

/-! ## A188135.P11339544517421577445

`xor(1, (4*n+1)*2*n)`
-/

namespace A188135.P11339544517421577445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((4 * n + 1) * (2 * n))

end

end A188135.P11339544517421577445

namespace A188135

/-- `xor(1, (4*n+1)*2*n)` -/
def P11339544517421577445.Spec : Prop :=
  ∀ n, (P11339544517421577445.a n : ℤ) = A188135 n

end A188135

/-! ## A188135.P6782694231868110996

`record[2*n*xor(1, n)-(n-1)]`
-/

namespace A188135.P6782694231868110996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * Nat.xor 1 n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188135.P6782694231868110996

namespace A188135

/-- `record[2*n*xor(1, n)-(n-1)]` -/
def P6782694231868110996.Spec : Prop :=
  ∀ n, P6782694231868110996.a n = A188135 n

end A188135

/-! ## A188135.P14479164052166008583

`ceil((2*n+2*n+1)/acot(2*n))`
-/

namespace A188135.P14479164052166008583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + (2 * n + 1) : ℝ) / SequenceMachineLib.acot (2 * n : ℝ)⌉

end

end A188135.P14479164052166008583

namespace A188135

/-- `ceil((2*n+2*n+1)/acot(2*n))` -/
def P14479164052166008583.Spec : Prop :=
  ∀ n, P14479164052166008583.a n = A188135 n

end A188135

/-! ## A188135.P9571473669330158815

`round((2*n+2*n+1)/acot(2*n))`
-/

namespace A188135.P9571473669330158815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + (2 * n + 1) : ℝ) / SequenceMachineLib.acot (2 * n : ℝ))

end

end A188135.P9571473669330158815

namespace A188135

/-- `round((2*n+2*n+1)/acot(2*n))` -/
def P9571473669330158815.Spec : Prop :=
  ∀ n, P9571473669330158815.a n = A188135 n

end A188135

/-! ## A188135.P2824171202070893082

`∑[A113770(n)]`
-/

namespace A188135.P2824171202070893082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188135.P2824171202070893082

namespace A188135

/-- `∑[A113770(n)]` -/
def P2824171202070893082.Spec : Prop :=
  ∀ n, P2824171202070893082.a n = A188135 n

end A188135

/-! ## A188135.P10089384713104455906

`(A082041(n)+1)/2`
-/

namespace A188135.P10089384713104455906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082041 n + 1 : ℚ) / 2

end

end A188135.P10089384713104455906

namespace A188135

/-- `(A082041(n)+1)/2` -/
def P10089384713104455906.Spec : Prop :=
  ∀ n, P10089384713104455906.a n = (A188135 n : ℚ)

theorem P10089384713104455906.correct : P10089384713104455906.Spec := by
  intro n
  simp only [A188135, Nat.add_sub_cancel, A188135.P10089384713104455906.a, A188135.P13478576752506582860.a, A082041, A082041.P4769740866210431926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188135

/-! ## A188135.P14551313297321163869

`Δ[A168547(n)-n²]`
-/

namespace A188135.P14551313297321163869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168547 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188135.P14551313297321163869

namespace A188135

/-- `Δ[A168547(n)-n²]` -/
def P14551313297321163869.Spec : Prop :=
  ∀ n, P14551313297321163869.a n = A188135 n

end A188135

/-! ## A188135.P15673311624106682738

`∑[A019557(n)-2*n]`
-/

namespace A188135.P15673311624106682738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019557 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188135.P15673311624106682738

namespace A188135

/-- `∑[A019557(n)-2*n]` -/
def P15673311624106682738.Spec : Prop :=
  ∀ n, P15673311624106682738.a n = A188135 n

end A188135

/-! ## A188135.P3640696960178444285

`A046142(n+1)/(2*n+1)`
-/

namespace A188135.P3640696960178444285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046142 (n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A188135.P3640696960178444285

namespace A188135

/-- `A046142(n+1)/(2*n+1)` -/
def P3640696960178444285.Spec : Prop :=
  ∀ n, P3640696960178444285.a n = (A188135 n : ℚ)

end A188135

/-! ## A188135.P2402045618958340324

`A193250(n+1)%A108099(n)`
-/

namespace A188135.P2402045618958340324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193250 (n + 1)) (A108099 n)

end

end A188135.P2402045618958340324

namespace A188135

/-- `A193250(n+1)%A108099(n)` -/
def P2402045618958340324.Spec : Prop :=
  ∀ n, P2402045618958340324.a n = A188135 n

end A188135

/-!
# A188136: Primes p such that the period of the continued fraction of (1-sqrt(p))/2 has length 3 and p is not of the form k^2+1.

The programs for A188136, there is no canonical definition to state claims against.
-/

/-! ## A188136.P6161443808375331065

`∩[A078763(n+1), A146328(n+1)]`
-/

namespace A188136.P6161443808375331065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188136.P6161443808375331065

/-! ## A188136.P7843900080655091096

`∩[A078763(n+1), A146348(n+1)]`
-/

namespace A188136.P7843900080655091096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188136.P7843900080655091096

/-! ## A188136.P11741400630818894779

`∩[A070303(n+1), A146328(n+1)]`
-/

namespace A188136.P11741400630818894779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188136.P11741400630818894779

/-! ## A188136.P8578423601928039897

`∩[A070303(n+1), A146348(n+1)]`
-/

namespace A188136.P8578423601928039897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188136.P8578423601928039897

/-! ## A188136.P6735101823280106802

`∩[A121658(n+1), A146328(n+1)]`
-/

namespace A188136.P6735101823280106802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188136.P6735101823280106802

/-!
# A188137: Riordan array (1, x*(1-x)/(1-3*x+x^2)).

The programs for A188137, there is no canonical definition to state claims against.
-/

/-! ## A188137.P7231667846661634290

`(A206800(n)+A147703(n))/2`
-/

namespace A188137.P7231667846661634290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206800 n + A147703 n : ℚ) / 2

end

end A188137.P7231667846661634290

/-! ## A188137.P2193608827610760443

`A014682(A206800(n)+A147703(n))`
-/

namespace A188137.P2193608827610760443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A206800 n + A147703 n).toNat

end

end A188137.P2193608827610760443

/-! ## A188137.P12869353350082624020

`A318516(A206800(n)+A147703(n))`
-/

namespace A188137.P12869353350082624020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A206800 n + A147703 n).toNat

end

end A188137.P12869353350082624020

/-! ## A188137.P15465682808150569161

`A318518(A206800(n)+A147703(n))`
-/

namespace A188137.P15465682808150569161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A206800 n + A147703 n).toNat

end

end A188137.P15465682808150569161

/-! ## A188137.P11299626594531358811

`A004526(A206800(n)+A147703(n))`
-/

namespace A188137.P11299626594531358811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A206800 n + A147703 n).toNat

end

end A188137.P11299626594531358811

/-!
# A188138: Sum of sigma_2(k) for 1 <= k <= 10^n, where sigma_2(k) is the sum of the divisors of k squared.

The programs for A188138, there is no canonical definition to state claims against.
-/

/-! ## A188138.P6777469406600096382

`A064602(10^n)`
-/

namespace A188138.P6777469406600096382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064602 (10 ^ n)

end

end A188138.P6777469406600096382

/-!
# A188139: Triangle by rows, A027293 * A129372 as infinite lower triangular matrices.

The programs for A188139, there is no canonical definition to state claims against.
-/

/-! ## A188139.P11520508225890617636

`A260999(A001057(A206563(n+1))²)`
-/

namespace A188139.P11520508225890617636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A001057 (A206563 (n + 1)).toNat ^ 2).toNat

end

end A188139.P11520508225890617636

/-! ## A188139.P4446507405436878054

`A104758(A066633(n+1)*A081604(n))`
-/

namespace A188139.P4446507405436878054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104758 (A066633 (n + 1) * A081604 n).toNat

end

end A188139.P4446507405436878054

/-! ## A188139.P6746215264682298115

`A069288(A264774(n))`
-/

namespace A188139.P6746215264682298115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (A264774 n).toNat

end

end A188139.P6746215264682298115

/-! ## A188139.P16453723717075147443

`A227156(A144275(n+1))`
-/

namespace A188139.P16453723717075147443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227156 (A144275 (n + 1)).toNat

end

end A188139.P16453723717075147443

/-! ## A188139.P6542976986075334559

`A114108(A263864(n+1))`
-/

namespace A188139.P6542976986075334559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114108 (A263864 (n + 1)).toNat

end

end A188139.P6542976986075334559

/-!
# A188140: Central coefficient in (1 + x + 2^n*x^2)^n.

The programs for A188140, there is no canonical definition to state claims against.
-/

/-! ## A188140.P12383945013241281114

`A110180(eq[A002262(n), A130321(n)])`
-/

namespace A188140.P12383945013241281114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A188140.P12383945013241281114

/-! ## A188140.P6745978683910556674

`A307855(eq[A025581(n), A059268(n)])`
-/

namespace A188140.P6745978683910556674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A188140.P6745978683910556674

/-!
# A188143: Binomial transform of A187848.

The programs for A188143, there is no canonical definition to state claims against.
-/

/-! ## A188143.P888562029295126604

`A166546(Δ[∏[comp[n*(n+3)]]])`
-/

namespace A188143.P888562029295126604
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166546 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A188143.P888562029295126604

/-!
# A188144: Binomial transform A140456(n+1) (indecomposable involutions).

The programs for A188144, there is no canonical definition to state claims against.
-/

/-! ## A188144.P17628386764468255113

`A004277(A081444(n))-A000079(n)`
-/

namespace A188144.P17628386764468255113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A081444 n).toNat - A000079 n

end

end A188144.P17628386764468255113

/-! ## A188144.P3364571055751812339

`A004273(A081444(n))-A000225(n)`
-/

namespace A188144.P3364571055751812339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A081444 n).toNat - A000225 n

end

end A188144.P3364571055751812339

/-! ## A188144.P15748356222196661269

`A160144(A081444(n))-A000051(n)`
-/

namespace A188144.P15748356222196661269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160144 (A081444 n).toNat - A000051 n

end

end A188144.P15748356222196661269

/-!
# A188145: Solutions of the equation n" - n' - n = 0, where n' and n" are the first and second arithmetic derivatives (see A003415).

The programs for A188145, there is no canonical definition to state claims against.
-/

/-! ## A188145.P7473508300821234658

`eq[n, A168036(A003415(n))]`
-/

namespace A188145.P7473508300821234658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188145.P7473508300821234658

/-!
# A188146: Three interleaved 1st-order polynomials: a(3*n) = 1+4*n, a(1+3*n) = 3+4*n, a(2+3*n) = 1+n.

The programs for A188146, the canonical program `A188146.P4922334469256716305` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188146 has offset 0).

The definition of A188146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188146.P4922334469256716305

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=1, a(3)=5, a(4)=7, a(5)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188146

/-- `2*a(n-3)-a(n-6)` -/
def P4922334469256716305.Spec : Prop :=
  ∀ n, P4922334469256716305.a n = A188146 n

theorem P4922334469256716305.correct : P4922334469256716305.Spec := by
  intro n
  simp only [A188146]

end A188146

/-! ## A188146.P351944601778750013

`record[xor(3, n)^3]%(floor(8*n/3)+2)`
-/

namespace A188146.P351944601778750013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) (⌊8 * ((n : ℚ) / 3)⌋ + 2)

end

end A188146.P351944601778750013

namespace A188146

/-- `record[xor(3, n)^3]%(floor(8*n/3)+2)` -/
def P351944601778750013.Spec : Prop :=
  ∀ n, P351944601778750013.a n = A188146 n

end A188146

/-! ## A188146.P3254585472207555800

`A016839(n)%A047539(n+1)`
-/

namespace A188146.P3254585472207555800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016839 n) (A047539 (n + 1))

end

end A188146.P3254585472207555800

namespace A188146

/-- `A016839(n)%A047539(n+1)` -/
def P3254585472207555800.Spec : Prop :=
  ∀ n, P3254585472207555800.a n = A188146 n

end A188146

/-! ## A188146.P3378049245290146543

`A047258(n+1)+A122918(n)-n`
-/

namespace A188146.P3378049245290146543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047258 (n + 1) + (A122918 n - (n : ℤ))

end

end A188146.P3378049245290146543

namespace A188146

/-- `A047258(n+1)+A122918(n)-n` -/
def P3378049245290146543.Spec : Prop :=
  ∀ n, P3378049245290146543.a n = A188146 n

end A188146

/-! ## A188146.P175542328603509474

`gcd(A000217(A006369(n+1)), A006369(n+1))`
-/

namespace A188146.P175542328603509474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A006369 (n + 1)).toNat) (A006369 (n + 1))

end

end A188146.P175542328603509474

namespace A188146

/-- `gcd(A000217(A006369(n+1)), A006369(n+1))` -/
def P175542328603509474.Spec : Prop :=
  ∀ n, (P175542328603509474.a n : ℤ) = A188146 n

end A188146

/-! ## A188146.P12277687082970739672

`A006369(n+1)/(A004773(n+1)-A004773(n))`
-/

namespace A188146.P12277687082970739672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006369 (n + 1) : ℚ) / (A004773 (n + 1) - A004773 n : ℚ)

end

end A188146.P12277687082970739672

namespace A188146

/-- `A006369(n+1)/(A004773(n+1)-A004773(n))` -/
def P12277687082970739672.Spec : Prop :=
  ∀ n, P12277687082970739672.a n = (A188146 n : ℚ)

end A188146

/-! ## A188146.P13698214329784327348

`∑[A177702(n+1)]/A177702(n)²`
-/

namespace A188146.P13698214329784327348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A177702 n ^ 2 : ℚ)

end

end A188146.P13698214329784327348

namespace A188146

/-- `∑[A177702(n+1)]/A177702(n)²` -/
def P13698214329784327348.Spec : Prop :=
  ∀ n, P13698214329784327348.a n = (A188146 n : ℚ)

end A188146

/-! ## A188146.P4280319767668983250

`A042965(n+2)/A100063(n+1)²`
-/

namespace A188146.P4280319767668983250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042965 (n + 2) : ℚ) / (A100063 (n + 1) ^ 2 : ℚ)

end

end A188146.P4280319767668983250

namespace A188146

/-- `A042965(n+2)/A100063(n+1)²` -/
def P4280319767668983250.Spec : Prop :=
  ∀ n, P4280319767668983250.a n = (A188146 n : ℚ)

end A188146

/-! ## A188146.P5348775851235373421

`A080031(n+1)-(A004523(n+1)+1)`
-/

namespace A188146.P5348775851235373421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080031 (n + 1) - (A004523 (n + 1) + 1)

end

end A188146.P5348775851235373421

namespace A188146

/-- `A080031(n+1)-(A004523(n+1)+1)` -/
def P5348775851235373421.Spec : Prop :=
  ∀ n, P5348775851235373421.a n = A188146 n

end A188146

/-! ## A188146.P14980086981229219831

`gcd(A267031(n+1)/2, A042965(n+2))`
-/

namespace A188146.P14980086981229219831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A267031 (n + 1) : ℚ) / 2)) (A042965 (n + 2))

end

end A188146.P14980086981229219831

namespace A188146

/-- `gcd(A267031(n+1)/2, A042965(n+2))` -/
def P14980086981229219831.Spec : Prop :=
  ∀ n, (P14980086981229219831.a n : ℤ) = A188146 n

end A188146

/-! ## A188146.P13349199795081732547

`A006369(n+1)/(A147534(n+2)-n)`
-/

namespace A188146.P13349199795081732547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006369 (n + 1) : ℚ) / (A147534 (n + 2) - (n : ℤ) : ℚ)

end

end A188146.P13349199795081732547

namespace A188146

/-- `A006369(n+1)/(A147534(n+2)-n)` -/
def P13349199795081732547.Spec : Prop :=
  ∀ n, P13349199795081732547.a n = (A188146 n : ℚ)

end A188146

/-! ## A188146.P13781935676301428240

`A042965(n+2)/A107751(2*n+1)²`
-/

namespace A188146.P13781935676301428240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042965 (n + 2) : ℚ) / (A107751 (2 * n + 1) ^ 2 : ℚ)

end

end A188146.P13781935676301428240

namespace A188146

/-- `A042965(n+2)/A107751(2*n+1)²` -/
def P13781935676301428240.Spec : Prop :=
  ∀ n, P13781935676301428240.a n = (A188146 n : ℚ)

end A188146

/-! ## A188146.P17456368615964016553

`A042965(n+2)/A131713(n+2)²`
-/

namespace A188146.P17456368615964016553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042965 (n + 2) : ℚ) / (A131713 (n + 2) ^ 2 : ℚ)

end

end A188146.P17456368615964016553

namespace A188146

/-- `A042965(n+2)/A131713(n+2)²` -/
def P17456368615964016553.Spec : Prop :=
  ∀ n, P17456368615964016553.a n = (A188146 n : ℚ)

end A188146

/-! ## A188146.P7421848813708066572

`A175676(n+1)+Δ[Δ[A000212(n)]²]`
-/

namespace A188146.P7421848813708066572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (n + 1) + (f1 (n + 1) - f1 n)

end

end A188146.P7421848813708066572

namespace A188146

/-- `A175676(n+1)+Δ[Δ[A000212(n)]²]` -/
def P7421848813708066572.Spec : Prop :=
  ∀ n, P7421848813708066572.a n = A188146 n

end A188146

/-! ## A188146.P9226658874972550886

`∑[A100063(n+2)]/A100063(n+1)²`
-/

namespace A188146.P9226658874972550886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A100063 (n + 1) ^ 2 : ℚ)

end

end A188146.P9226658874972550886

namespace A188146

/-- `∑[A100063(n+2)]/A100063(n+1)²` -/
def P9226658874972550886.Spec : Prop :=
  ∀ n, P9226658874972550886.a n = (A188146 n : ℚ)

end A188146

/-! ## A188146.P4398372407192819315

`∑[A101825(n+1)]/A101825(n+3)²`
-/

namespace A188146.P4398372407192819315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A101825 (n + 3) ^ 2 : ℚ)

end

end A188146.P4398372407192819315

namespace A188146

/-- `∑[A101825(n+1)]/A101825(n+3)²` -/
def P4398372407192819315.Spec : Prop :=
  ∀ n, P4398372407192819315.a n = (A188146 n : ℚ)

end A188146

/-! ## A188146.P11023572294702146199

`A026741(A006369(n+1))`
-/

namespace A188146.P11023572294702146199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A006369 (n + 1)).toNat

end

end A188146.P11023572294702146199

namespace A188146

/-- `A026741(A006369(n+1))` -/
def P11023572294702146199.Spec : Prop :=
  ∀ n, P11023572294702146199.a n = A188146 n

end A188146

/-! ## A188146.P15502421581327226110

`A060819(A042965(n+2))`
-/

namespace A188146.P15502421581327226110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A042965 (n + 2)).toNat

end

end A188146.P15502421581327226110

namespace A188146

/-- `A060819(A042965(n+2))` -/
def P15502421581327226110.Spec : Prop :=
  ∀ n, P15502421581327226110.a n = A188146 n

end A188146

/-! ## A188146.P16961287255004594795

`A316631(lt[0, A316631(n)])`
-/

namespace A188146.P16961287255004594795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A188146.P16961287255004594795

namespace A188146

/-- `A316631(lt[0, A316631(n)])` -/
def P16961287255004594795.Spec : Prop :=
  ∀ n, P16961287255004594795.a n = A188146 n

end A188146

/-! ## A188146.P16219266280073066834

`A060819(comp[record[A064680(n)]])`
-/

namespace A188146.P16219266280073066834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A188146.P16219266280073066834

namespace A188146

/-- `A060819(comp[record[A064680(n)]])` -/
def P16219266280073066834.Spec : Prop :=
  ∀ n, P16219266280073066834.a n = A188146 n

end A188146

/-!
# A188148: Number of 3-step self-avoiding walks on an n X n square summed over all starting positions.

The programs for A188148, the canonical program `A188148.P18368740595861713256` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188148 has offset 1).

The definition of A188148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188148.P18368740595861713256

`∑[a(n-1)+24]` with `a(0)=0, a(1)=8, a(2)=36`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188148

/-- `∑[a(n-1)+24]` -/
def P18368740595861713256.Spec : Prop :=
  ∀ n, (P18368740595861713256.a n : ℤ) = A188148 (n + 1)

theorem P18368740595861713256.correct : P18368740595861713256.Spec := by
  intro n
  simp only [A188148, Nat.add_sub_cancel]

end A188148

/-! ## A188148.P2148805444361119621

`lcm(2, 6*n²-1)-2`
-/

namespace A188148.P2148805444361119621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((6 * n ^ 2 : ℤ) - 1) : ℤ) - 2

end

end A188148.P2148805444361119621

namespace A188148

/-- `lcm(2, 6*n²-1)-2` -/
def P2148805444361119621.Spec : Prop :=
  ∀ n, P2148805444361119621.a n = A188148 (n + 1)

end A188148

/-! ## A188148.P1414209335563169731

`12*n²-4%(n+4)`
-/

namespace A188148.P1414209335563169731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n ^ 2 : ℤ) - ((4 % (n + 4) : ℕ) : ℤ)

end

end A188148.P1414209335563169731

namespace A188148

/-- `12*n²-4%(n+4)` -/
def P1414209335563169731.Spec : Prop :=
  ∀ n, P1414209335563169731.a n = A188148 (n + 1)

end A188148

/-! ## A188148.P17177661919026554870

`2*(abs(1-6*n²)-1)`
-/

namespace A188148.P17177661919026554870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (|1 - (6 * n ^ 2 : ℤ)| - 1)

end

end A188148.P17177661919026554870

namespace A188148

/-- `2*(abs(1-6*n²)-1)` -/
def P17177661919026554870.Spec : Prop :=
  ∀ n, P17177661919026554870.a n = A188148 (n + 1)

end A188148

/-! ## A188148.P7793651550341274596

`a(n-1)+24*n-12` with `a(0)=0, a(1)=8`
-/

namespace A188148.P7793651550341274596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n a =>
  a (n - 1) + ((24 * n : ℤ) - 12)

end

end A188148.P7793651550341274596

namespace A188148

/-- `a(n-1)+24*n-12` -/
def P7793651550341274596.Spec : Prop :=
  ∀ n, P7793651550341274596.a n = A188148 (n + 1)

end A188148

/-! ## A188148.P3283136359352521758

`floor((acot(n)+2)*3*C(2*n, 2))`
-/

namespace A188148.P3283136359352521758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.acot (n : ℝ) + 2) * (3 * Nat.choose (2 * n) 2 : ℝ)⌋

end

end A188148.P3283136359352521758

namespace A188148

/-- `floor((acot(n)+2)*3*C(2*n, 2))` -/
def P3283136359352521758.Spec : Prop :=
  ∀ n, P3283136359352521758.a n = A188148 (n + 1)

end A188148

/-! ## A188148.P13897549796139611333

`abs(1-A158463(n))-2`
-/

namespace A188148.P13897549796139611333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A158463 n| - 2

end

end A188148.P13897549796139611333

namespace A188148

/-- `abs(1-A158463(n))-2` -/
def P13897549796139611333.Spec : Prop :=
  ∀ n, P13897549796139611333.a n = A188148 (n + 1)

end A188148

/-! ## A188148.P10011733885931647140

`abs(2-A135453(n))-2`
-/

namespace A188148.P10011733885931647140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A135453 n| - 2

end

end A188148.P10011733885931647140

namespace A188148

/-- `abs(2-A135453(n))-2` -/
def P10011733885931647140.Spec : Prop :=
  ∀ n, P10011733885931647140.a n = A188148 (n + 1)

end A188148

/-! ## A188148.P7216515968172712724

`(6*n)²%A005914(n)`
-/

namespace A188148.P7216515968172712724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((6 * n) ^ 2 : ℤ) (A005914 n)

end

end A188148.P7216515968172712724

namespace A188148

/-- `(6*n)²%A005914(n)` -/
def P7216515968172712724.Spec : Prop :=
  ∀ n, P7216515968172712724.a n = A188148 (n + 1)

end A188148

/-! ## A188148.P13500107787581482256

`lcm(2, 2*A163433(n+1))`
-/

namespace A188148.P13500107787581482256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 * A163433 (n + 1))

end

end A188148.P13500107787581482256

namespace A188148

/-- `lcm(2, 2*A163433(n+1))` -/
def P13500107787581482256.Spec : Prop :=
  ∀ n, (P13500107787581482256.a n : ℤ) = A188148 (n + 1)

end A188148

/-! ## A188148.P16114696819557107582

`comp[2*(n+1)]*A016957(n)-2*n`
-/

namespace A188148.P16114696819557107582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A016957 n - (2 * n : ℤ)

end

end A188148.P16114696819557107582

namespace A188148

/-- `comp[2*(n+1)]*A016957(n)-2*n` -/
def P16114696819557107582.Spec : Prop :=
  ∀ n, P16114696819557107582.a n = A188148 (n + 1)

end A188148

/-! ## A188148.P7693924636361509071

`A110907(n)-A168428(n)`
-/

namespace A188148.P7693924636361509071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110907 n - A168428 n

end

end A188148.P7693924636361509071

namespace A188148

/-- `A110907(n)-A168428(n)` -/
def P7693924636361509071.Spec : Prop :=
  ∀ n, P7693924636361509071.a n = A188148 (n + 1)

end A188148

/-! ## A188148.P13276473958893744314

`A017066(n)%A010016(n)`
-/

namespace A188148.P13276473958893744314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017066 n) (A010016 n)

end

end A188148.P13276473958893744314

namespace A188148

/-- `A017066(n)%A010016(n)` -/
def P13276473958893744314.Spec : Prop :=
  ∀ n, P13276473958893744314.a n = A188148 (n + 1)

end A188148

/-! ## A188148.P16859591794834608115

`A017270(n)%A158537(n)`
-/

namespace A188148.P16859591794834608115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017270 n) (A158537 n)

end

end A188148.P16859591794834608115

namespace A188148

/-- `A017270(n)%A158537(n)` -/
def P16859591794834608115.Spec : Prop :=
  ∀ n, P16859591794834608115.a n = A188148 (n + 1)

end A188148

/-! ## A188148.P6513403653084306340

`A065532(n)%A158480(n)`
-/

namespace A188148.P6513403653084306340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065532 n) (A158480 n)

end

end A188148.P6513403653084306340

namespace A188148

/-- `A065532(n)%A158480(n)` -/
def P6513403653084306340.Spec : Prop :=
  ∀ n, P6513403653084306340.a n = A188148 (n + 1)

end A188148

/-! ## A188148.P3297307403205441386

`A158740(n)%A158480(n)`
-/

namespace A188148.P3297307403205441386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158740 n) (A158480 n)

end

end A188148.P3297307403205441386

namespace A188148

/-- `A158740(n)%A158480(n)` -/
def P3297307403205441386.Spec : Prop :=
  ∀ n, P3297307403205441386.a n = A188148 (n + 1)

end A188148

/-! ## A188148.P8980501905665142351

`A174337(n)%A206399(n)`
-/

namespace A188148.P8980501905665142351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174337 n) (A206399 n)

end

end A188148.P8980501905665142351

namespace A188148

/-- `A174337(n)%A206399(n)` -/
def P8980501905665142351.Spec : Prop :=
  ∀ n, P8980501905665142351.a n = A188148 (n + 1)

end A188148

/-! ## A188148.P373498575586172734

`A153808(n)-A187156(n+1)`
-/

namespace A188148.P373498575586172734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153808 n - A187156 (n + 1)

end

end A188148.P373498575586172734

namespace A188148

/-- `A153808(n)-A187156(n+1)` -/
def P373498575586172734.Spec : Prop :=
  ∀ n, P373498575586172734.a n = A188148 (n + 1)

end A188148

/-! ## A188148.P16892602416910615664

`A181773(n+1)%A056578(n)`
-/

namespace A188148.P16892602416910615664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181773 (n + 1)) (A056578 n)

end

end A188148.P16892602416910615664

namespace A188148

/-- `A181773(n+1)%A056578(n)` -/
def P16892602416910615664.Spec : Prop :=
  ∀ n, P16892602416910615664.a n = A188148 (n + 1)

end A188148

/-! ## A188148.P13254597618401150557

`lcm(A010713(n), A163433(n+1))`
-/

namespace A188148.P13254597618401150557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010713 n) (A163433 (n + 1))

end

end A188148.P13254597618401150557

namespace A188148

/-- `lcm(A010713(n), A163433(n+1))` -/
def P13254597618401150557.Spec : Prop :=
  ∀ n, (P13254597618401150557.a n : ℤ) = A188148 (n + 1)

end A188148

/-!
# A188149: Number of 4-step self-avoiding walks on an n X n square summed over all starting positions.

The programs for A188149, the canonical program `A188149.P18185419882966996242` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188149 has offset 1).

The definition of A188149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188149.P18185419882966996242

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=8, a(2)=80, a(3)=232, a(4)=456`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188149

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P18185419882966996242.Spec : Prop :=
  ∀ n, P18185419882966996242.a n = A188149 (n + 1)

theorem P18185419882966996242.correct : P18185419882966996242.Spec := by
  intro n
  simp only [A188149, Nat.add_sub_cancel]

end A188149

/-! ## A188149.P10685479916532284455

`4*(A152995(n)-2%(n+1))`
-/

namespace A188149.P10685479916532284455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A152995 n - ((2 % (n + 1) : ℕ) : ℤ))

end

end A188149.P10685479916532284455

namespace A188149

/-- `4*(A152995(n)-2%(n+1))` -/
def P10685479916532284455.Spec : Prop :=
  ∀ n, P10685479916532284455.a n = A188149 (n + 1)

end A188149

/-! ## A188149.P13624167626846273901

`4*(A051872(n)+(3*n)%(n+1))`
-/

namespace A188149.P13624167626846273901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A051872 n + ((3 * n % (n + 1) : ℕ) : ℤ))

end

end A188149.P13624167626846273901

namespace A188149

/-- `4*(A051872(n)+(3*n)%(n+1))` -/
def P13624167626846273901.Spec : Prop :=
  ∀ n, P13624167626846273901.a n = A188149 (n + 1)

end A188149

/-! ## A188149.P10842175849853475390

`8*(-1%A000010(n+1)+A062741(n)-2*n)`
-/

namespace A188149.P10842175849853475390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (Int.tmod (-1) (A000010 (n + 1)) + (A062741 n - (2 * n : ℤ)))

end

end A188149.P10842175849853475390

namespace A188149

/-- `8*(-1%A000010(n+1)+A062741(n)-2*n)` -/
def P10842175849853475390.Spec : Prop :=
  ∀ n, P10842175849853475390.a n = A188149 (n + 1)

end A188149

/-! ## A188149.P15287855766619317663

`record[2*(A317325(n)+A062741(n))]`
-/

namespace A188149.P15287855766619317663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A317325 n + A062741 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188149.P15287855766619317663

namespace A188149

/-- `record[2*(A317325(n)+A062741(n))]` -/
def P15287855766619317663.Spec : Prop :=
  ∀ n, P15287855766619317663.a n = A188149 (n + 1)

end A188149

/-! ## A188149.P6279070403990144956

`record[A022998(n)*A165355(A165355(n+2))]`
-/

namespace A188149.P6279070403990144956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n * A165355 (A165355 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188149.P6279070403990144956

namespace A188149

/-- `record[A022998(n)*A165355(A165355(n+2))]` -/
def P6279070403990144956.Spec : Prop :=
  ∀ n, P6279070403990144956.a n = A188149 (n + 1)

end A188149

/-!
# A188150: Number of 5-step self-avoiding walks on an n X n square summed over all starting positions.

The programs for A188150, there is no canonical definition to state claims against.
-/

/-! ## A188150.P6851878117221595531

`A188147(A155212(n)+13)`
-/

namespace A188150.P6851878117221595531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (A155212 n + 13).toNat

end

end A188150.P6851878117221595531

/-! ## A188150.P13736598886903531129

`A188147(A056000(n)+15)`
-/

namespace A188150.P13736598886903531129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (A056000 n + 15).toNat

end

end A188150.P13736598886903531129

/-! ## A188150.P15915056066970606609

`A188147(eq[7, A066657(n)])`
-/

namespace A188150.P15915056066970606609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188150.P15915056066970606609

/-! ## A188150.P8935832353984205022

`A188147(A166136(n+3)-1)`
-/

namespace A188150.P8935832353984205022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (A166136 (n + 3) - 1).toNat

end

end A188150.P8935832353984205022

/-! ## A188150.P14190867711085761801

`A188147(A167614(n+3)+2)`
-/

namespace A188150.P14190867711085761801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (A167614 (n + 3) + 2).toNat

end

end A188150.P14190867711085761801

/-!
# A188151: Number of 6-step self-avoiding walks on an n X n square summed over all starting positions.

The programs for A188151, there is no canonical definition to state claims against.
-/

/-! ## A188151.P12643773068218147293

`A188147(A166136(n+4))`
-/

namespace A188151.P12643773068218147293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (A166136 (n + 4)).toNat

end

end A188151.P12643773068218147293

/-! ## A188151.P8299914729985858812

`A188147(A056115(n)+21)`
-/

namespace A188151.P8299914729985858812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (A056115 n + 21).toNat

end

end A188151.P8299914729985858812

/-! ## A188151.P151977807031916469

`A188147(A167499(n+4)+1)`
-/

namespace A188151.P151977807031916469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (A167499 (n + 4) + 1).toNat

end

end A188151.P151977807031916469

/-! ## A188151.P2356838042792461274

`A188147(A000124(n+5)+5)`
-/

namespace A188151.P2356838042792461274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (A000124 (n + 5) + 5).toNat

end

end A188151.P2356838042792461274

/-! ## A188151.P13888654502462456914

`A188147(A000096(n+4)+7)`
-/

namespace A188151.P13888654502462456914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (A000096 (n + 4) + 7).toNat

end

end A188151.P13888654502462456914

/-!
# A188152: Number of 7-step self-avoiding walks on an n X n square summed over all starting positions.

The programs for A188152, there is no canonical definition to state claims against.
-/

/-! ## A188152.P5191901480350129315

`A188147(A167487(n+5))`
-/

namespace A188152.P5191901480350129315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (A167487 (n + 5)).toNat

end

end A188152.P5191901480350129315

/-! ## A188152.P5004202853906502101

`A188147(A056119(n)+28)`
-/

namespace A188152.P5004202853906502101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (A056119 n + 28).toNat

end

end A188152.P5004202853906502101

/-! ## A188152.P6330980747575899588

`A188147(eq[11, A066657(n)])`
-/

namespace A188152.P6330980747575899588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188152.P6330980747575899588

/-! ## A188152.P9682610706949035107

`A188147(A166136(n+5)+1)`
-/

namespace A188152.P9682610706949035107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (A166136 (n + 5) + 1).toNat

end

end A188152.P9682610706949035107

/-! ## A188152.P8949783494367501451

`A188147(A167499(n+5)+2)`
-/

namespace A188152.P8949783494367501451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (A167499 (n + 5) + 2).toNat

end

end A188152.P8949783494367501451

/-!
# A188153: Number of 8-step self-avoiding walks on an n X n square summed over all starting positions.

The programs for A188153, there is no canonical definition to state claims against.
-/

/-! ## A188153.P508922228363578796

`A188147(eq[13, A066657(n)])`
-/

namespace A188153.P508922228363578796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188153.P508922228363578796

/-! ## A188153.P13816788486056316326

`A188147(A167487(n+6)+1)`
-/

namespace A188153.P13816788486056316326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (A167487 (n + 6) + 1).toNat

end

end A188153.P13816788486056316326

/-! ## A188153.P4982746328314956259

`A188147(A000217(n+7)+8)`
-/

namespace A188153.P4982746328314956259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (A000217 (n + 7) + 8).toNat

end

end A188153.P4982746328314956259

/-! ## A188153.P11181255294767053170

`A188147(eq[9, A131818(n+1)])`
-/

namespace A188153.P11181255294767053170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188153.P11181255294767053170

/-!
# A188154: Number of 9-step self-avoiding walks on an n X n square summed over all starting positions.

The programs for A188154, there is no canonical definition to state claims against.
-/

/-! ## A188154.P7425366602781617977

`A188147(A000217(n+8)+9)`
-/

namespace A188154.P7425366602781617977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (A000217 (n + 8) + 9).toNat

end

end A188154.P7425366602781617977

/-! ## A188154.P7493545583472286072

`A188147(eq[10, A131818(n+1)])`
-/

namespace A188154.P7493545583472286072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188154.P7493545583472286072

/-! ## A188154.P2542596694606805423

`A188147(Δ[A000292(n+8)]-n)`
-/

namespace A188154.P2542596694606805423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A188154.P2542596694606805423

/-! ## A188154.P14481568161291880045

`A188147(A000124(n+9)-(n+1))`
-/

namespace A188154.P14481568161291880045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (A000124 (n + 9) - (n + 1 : ℤ)).toNat

end

end A188154.P14481568161291880045

/-! ## A188154.P1938604371556292983

`A188147(A134869(n+9)-(n+1))`
-/

namespace A188154.P1938604371556292983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (A134869 (n + 9) - (n + 1 : ℤ)).toNat

end

end A188154.P1938604371556292983

/-!
# A188155: Number of 10-step self-avoiding walks on an n X n square summed over all starting positions.

The programs for A188155, there is no canonical definition to state claims against.
-/

/-! ## A188155.P11190691430804795493

`A188147(eq[9, A002262(n)]+1)`
-/

namespace A188155.P11190691430804795493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A188155.P11190691430804795493

/-! ## A188155.P16053825579550635853

`A188147(eq[10, A130270(n+1)])`
-/

namespace A188155.P16053825579550635853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188155.P16053825579550635853

/-! ## A188155.P14330874805977379362

`A188147(eq[11, A131818(n+1)])`
-/

namespace A188155.P14330874805977379362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188155.P14330874805977379362

/-! ## A188155.P6281758458367119540

`A188147(eq[9, A144328(n+1)]+1)`
-/

namespace A188155.P6281758458367119540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A188155.P6281758458367119540

/-!
# A188156: If A187211 is written, starting at its fifth term, as a triangle with rows of lengths 2, 4, 8, 16, ..., the n-th row begins with the first 2^n-1 terms of the present sequence.

The programs for A188156, there is no canonical definition to state claims against.
-/

/-! ## A188156.P240011161263891761

`A187211(n+67)`
-/

namespace A188156.P240011161263891761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187211 (n + 67)

end

end A188156.P240011161263891761

/-! ## A188156.P10706703425813243749

`Δ[A187210(n+66)]`
-/

namespace A188156.P10706703425813243749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187210 (n + 66)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188156.P10706703425813243749

/-! ## A188156.P17379351529798645096

`A004771(A151688(n))+(-1)^A020639(n+1)`
-/

namespace A188156.P17379351529798645096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004771 (A151688 n).toNat : ℚ) + (-1 : ℚ) ^ (A020639 (n + 1) : ℤ)

end

end A188156.P17379351529798645096

/-!
# A188158: Area A of the triangles such that A and the sides are integers.

The programs for A188158, there is no canonical definition to state claims against.
-/

/-! ## A188158.P17072149971745269064

`lt[0, A051584(n+1)]+1`
-/

namespace A188158.P17072149971745269064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051584 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A188158.P17072149971745269064

/-! ## A188158.P16033942815867815850

`lt[0, A051584(A028310(n))]`
-/

namespace A188158.P16033942815867815850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051584 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A188158.P16033942815867815850

/-! ## A188158.P16564838092029701820

`A014681(lt[0, A051584(n+1)])`
-/

namespace A188158.P16564838092029701820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A188158.P16564838092029701820

/-! ## A188158.P14819661068448661943

`A020725(lt[0, A051584(n+1)])`
-/

namespace A188158.P14819661068448661943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A188158.P14819661068448661943

/-! ## A188158.P10775908226159168896

`A065475(lt[0, A051584(n+1)])`
-/

namespace A188158.P10775908226159168896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A188158.P10775908226159168896

/-! ## A188158.P4303166884611719552

`lt[0, A051584(A233583(n+1))]`
-/

namespace A188158.P4303166884611719552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051584 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A188158.P4303166884611719552

/-! ## A188158.P6508105870392234731

`∪[A226453(n+1), A228383(n+1)]`
-/

namespace A188158.P6508105870392234731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188158.P6508105870392234731

/-!
# A188159: Odd numbers k such that 1^((k-1)/2) + 2^((k-1)/2) + ... + (k-1)^((k-1)/2) <> 0 (mod k).

The programs for A188159, there is no canonical definition to state claims against.
-/

/-! ## A188159.P6990578074924915005

`lt[A020639(n+1), A020639(A019565(n))]+1`
-/

namespace A188159.P6990578074924915005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A019565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A188159.P6990578074924915005

/-! ## A188159.P9314923227475052894

`A091113(lt[A000009(n), n*gcd(2, n)])`
-/

namespace A188159.P9314923227475052894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A188159.P9314923227475052894

/-! ## A188159.P6139784384154110369

`A091113(lt[A000009(n), ∑{d}[n, #%#²]])`
-/

namespace A188159.P6139784384154110369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d % d ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A188159.P6139784384154110369

/-! ## A188159.P10522289189512792590

`A091113(lt[A164654(n+1), A008000(n)])`
-/

namespace A188159.P10522289189512792590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A188159.P10522289189512792590

/-! ## A188159.P3802834586423478032

`A097449(A091113(n+2))`
-/

namespace A188159.P3802834586423478032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A091113 (n + 2)).toNat

end

end A188159.P3802834586423478032

/-!
# A188160: For an unordered partition of n with k parts, remove 1 from each part and append the number k to get a new partition until a partition is repeated. a(n) gives the maximum steps to reach a period considering all unordered partitions of n.

The programs for A188160, there is no canonical definition to state claims against.
-/

/-! ## A188160.P7081982948069105087

`A201144(n+1)-1`
-/

namespace A188160.P7081982948069105087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201144 (n + 1) - 1

end

end A188160.P7081982948069105087

/-! ## A188160.P16732276630102309099

`A023443(A201144(n+1))`
-/

namespace A188160.P16732276630102309099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A201144 (n + 1)).toNat

end

end A188160.P16732276630102309099

/-! ## A188160.P17251585504508732213

`A023444(A201144(n+1)+1)`
-/

namespace A188160.P17251585504508732213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A201144 (n + 1) + 1).toNat

end

end A188160.P17251585504508732213

/-! ## A188160.P6717687562744465623

`A316441(A002145(n+1))+A201144(n+1)`
-/

namespace A188160.P6717687562744465623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A002145 (n + 1)).toNat + A201144 (n + 1)

end

end A188160.P6717687562744465623

/-! ## A188160.P946312360433093455

`A343761(A000040(n+1))+A201144(n+1)`
-/

namespace A188160.P946312360433093455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343761 (A000040 (n + 1)).toNat + A201144 (n + 1)

end

end A188160.P946312360433093455

/-! ## A188160.P3997765549016944420

`A343761(A006450(n+1))+A201144(n+1)`
-/

namespace A188160.P3997765549016944420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343761 (A006450 (n + 1)).toNat + A201144 (n + 1)

end

end A188160.P3997765549016944420

/-! ## A188160.P14648343558178135700

`A343761(A034694(n+1))+A201144(n+1)`
-/

namespace A188160.P14648343558178135700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343761 (A034694 (n + 1)).toNat + A201144 (n + 1)

end

end A188160.P14648343558178135700

/-! ## A188160.P5373762251379810548

`A343761(A051701(n+1))+A201144(n+1)`
-/

namespace A188160.P5373762251379810548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343761 (A051701 (n + 1)).toNat + A201144 (n + 1)

end

end A188160.P5373762251379810548

/-! ## A188160.P11780431805578559698

`A343761(A235482(n+1))+A201144(n+1)`
-/

namespace A188160.P11780431805578559698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343761 (A235482 (n + 1)).toNat + A201144 (n + 1)

end

end A188160.P11780431805578559698

/-! ## A188160.P14972649813315088100

`A240581(A278538(2*(n+2)))+A201144(n+1)`
-/

namespace A188160.P14972649813315088100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240581 (A278538 (2 * (n + 2))).toNat + A201144 (n + 1)

end

end A188160.P14972649813315088100

/-!
# A188161: a(n) = 2*4^n + 3.

The programs for A188161, the canonical program `A188161.P15867195501454178298` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188161 has offset 0).

The definition of A188161 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*4^n+3` (program `A188161.P15867195501454178298`, by `A188161.P15867195501454178298.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188161.P15867195501454178298

`2*4^n+3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188161

/-- `2*4^n+3` -/
def P15867195501454178298.Spec : Prop :=
  ∀ n, (P15867195501454178298.a n : ℤ) = A188161 n

theorem P15867195501454178298.correct : P15867195501454178298.Spec := by
  intro n
  simp only [A188161]

end A188161

/-! ## A188161.P10456853343704705729

`ogf((5-14x)/(1-5x+4x^2))`
-/

namespace A188161.P10456853343704705729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -14] [1, -5, 4] n

end

end A188161.P10456853343704705729

namespace A188161

/-- `ogf((5-14x)/(1-5x+4x^2))` -/
def P10456853343704705729.Spec : Prop :=
  ∀ n, P10456853343704705729.a n = A188161 n

end A188161

/-! ## A188161.P6714296192110799557

`record[2^xor(1, n)+3]`
-/

namespace A188161.P6714296192110799557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.xor 1 n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188161.P6714296192110799557

namespace A188161

/-- `record[2^xor(1, n)+3]` -/
def P6714296192110799557.Spec : Prop :=
  ∀ n, (P6714296192110799557.a n : ℤ) = A188161 n

end A188161

/-! ## A188161.P3587445763965875113

`∑[4*a(n-1)]` with `a(0)=5, a(1)=6`
-/

namespace A188161.P3587445763965875113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 6] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188161.P3587445763965875113

namespace A188161

/-- `∑[4*a(n-1)]` -/
def P3587445763965875113.Spec : Prop :=
  ∀ n, (P3587445763965875113.a n : ℤ) = A188161 n

end A188161

/-! ## A188161.P3476471202745412666

`record[3-(-2)^(n+1)]`
-/

namespace A188161.P3476471202745412666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (-2) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188161.P3476471202745412666

namespace A188161

/-- `record[3-(-2)^(n+1)]` -/
def P3476471202745412666.Spec : Prop :=
  ∀ n, P3476471202745412666.a n = A188161 n

end A188161

/-! ## A188161.P9514161748310887705

`abs(4*a(n-1)-9)` with `a(0)=5`
-/

namespace A188161.P9514161748310887705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |4 * a (n - 1) - 9|

end

end A188161.P9514161748310887705

namespace A188161

/-- `abs(4*a(n-1)-9)` -/
def P9514161748310887705.Spec : Prop :=
  ∀ n, P9514161748310887705.a n = A188161 n

end A188161

/-! ## A188161.P3016536510577023962

`4*(a(n-1)-9/4)` with `a(0)=5`
-/

namespace A188161.P3016536510577023962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  4 * (a (n - 1) - (9 : ℚ) / 4)

end

end A188161.P3016536510577023962

namespace A188161

/-- `4*(a(n-1)-9/4)` -/
def P3016536510577023962.Spec : Prop :=
  ∀ n, P3016536510577023962.a n = (A188161 n : ℚ)

theorem P3016536510577023962.correct : P3016536510577023962.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A188161, Nat.add_sub_cancel, A188161.P3016536510577023962.a, A188161.P15867195501454178298.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A188161, Nat.add_sub_cancel, A188161.P3016536510577023962.a, A188161.P15867195501454178298.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A188161

/-! ## A188161.P10330842770464564382

`or(3, 4*(a(n-1)-3))` with `a(0)=5`
-/

namespace A188161.P10330842770464564382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.lor 3 (4 * (a (n - 1) - 3))

end

end A188161.P10330842770464564382

namespace A188161

/-- `or(3, 4*(a(n-1)-3))` -/
def P10330842770464564382.Spec : Prop :=
  ∀ n, P10330842770464564382.a n = A188161 n

end A188161

/-! ## A188161.P15589504702219350252

`xor(3, 4*(a(n-1)-3))` with `a(0)=5`
-/

namespace A188161.P15589504702219350252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.xor 3 (4 * (a (n - 1) - 3))

end

end A188161.P15589504702219350252

namespace A188161

/-- `xor(3, 4*(a(n-1)-3))` -/
def P15589504702219350252.Spec : Prop :=
  ∀ n, P15589504702219350252.a n = A188161 n

end A188161

/-! ## A188161.P7390075915814049696

`∑[a(n-1)/(1/2)²]` with `a(0)=5, a(1)=6`
-/

namespace A188161.P7390075915814049696
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5, 6] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188161.P7390075915814049696

namespace A188161

/-- `∑[a(n-1)/(1/2)²]` -/
def P7390075915814049696.Spec : Prop :=
  ∀ n, P7390075915814049696.a n = (A188161 n : ℚ)

end A188161

/-! ## A188161.P9791107236831240536

`floor(a(n-1)+3*(a(n-1)-3))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A188161.P9791107236831240536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 3 * (a (n - 1) - 3)

end

end A188161.P9791107236831240536

namespace A188161

/-- `floor(a(n-1)+3*(a(n-1)-3))` -/
def P9791107236831240536.Spec : Prop :=
  ∀ n, P9791107236831240536.a n = A188161 n

theorem P9791107236831240536.correct : P9791107236831240536.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A188161, Nat.add_sub_cancel, A188161.P9791107236831240536.a, A188161.P15867195501454178298.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A188161, Nat.add_sub_cancel, A188161.P9791107236831240536.a, A188161.P15867195501454178298.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A188161

/-! ## A188161.P9685763837017134886

`floor(a(n-1)-3*(3-a(n-1)))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A188161.P9685763837017134886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - 3 * (3 - a (n - 1))

end

end A188161.P9685763837017134886

namespace A188161

/-- `floor(a(n-1)-3*(3-a(n-1)))` -/
def P9685763837017134886.Spec : Prop :=
  ∀ n, P9685763837017134886.a n = A188161 n

theorem P9685763837017134886.correct : P9685763837017134886.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A188161, Nat.add_sub_cancel, A188161.P9685763837017134886.a, A188161.P15867195501454178298.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A188161, Nat.add_sub_cancel, A188161.P9685763837017134886.a, A188161.P15867195501454178298.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A188161

/-! ## A188161.P3237445586551541407

`A062709(Δ[n²])`
-/

namespace A188161.P3237445586551541407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062709 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A188161.P3237445586551541407

namespace A188161

/-- `A062709(Δ[n²])` -/
def P3237445586551541407.Spec : Prop :=
  ∀ n, P3237445586551541407.a n = A188161 n

end A188161

/-! ## A188161.P7224184911431151423

`(A195463(n)-1)/2`
-/

namespace A188161.P7224184911431151423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195463 n - 1 : ℚ) / 2

end

end A188161.P7224184911431151423

namespace A188161

/-- `(A195463(n)-1)/2` -/
def P7224184911431151423.Spec : Prop :=
  ∀ n, P7224184911431151423.a n = (A188161 n : ℚ)

theorem P7224184911431151423.correct : P7224184911431151423.Spec := by
  intro n
  simp only [A188161, Nat.add_sub_cancel, A188161.P7224184911431151423.a, A188161.P15867195501454178298.a, A195463, A195463.P13623636874483988418.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188161

/-! ## A188161.P6435572435734968238

`or(1, A004171(n)+2)`
-/

namespace A188161.P6435572435734968238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004171 n + 2)

end

end A188161.P6435572435734968238

namespace A188161

/-- `or(1, A004171(n)+2)` -/
def P6435572435734968238.Spec : Prop :=
  ∀ n, P6435572435734968238.a n = A188161 n

end A188161

/-! ## A188161.P6072237520719634406

`or(1, A081294(n+1)+2)`
-/

namespace A188161.P6072237520719634406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A081294 (n + 1) + 2)

end

end A188161.P6072237520719634406

namespace A188161

/-- `or(1, A081294(n+1)+2)` -/
def P6072237520719634406.Spec : Prop :=
  ∀ n, P6072237520719634406.a n = A188161 n

end A188161

/-! ## A188161.P2598171057224140530

`xor(1, 2*A000079(n)²+2)`
-/

namespace A188161.P2598171057224140530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A000079 n ^ 2 + 2)

end

end A188161.P2598171057224140530

namespace A188161

/-- `xor(1, 2*A000079(n)²+2)` -/
def P2598171057224140530.Spec : Prop :=
  ∀ n, P2598171057224140530.a n = A188161 n

end A188161

/-! ## A188161.P1360675854535639893

`xor(1, A000079(2*n+1)+2)`
-/

namespace A188161.P1360675854535639893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000079 (2 * n + 1) + 2)

end

end A188161.P1360675854535639893

namespace A188161

/-- `xor(1, A000079(2*n+1)+2)` -/
def P1360675854535639893.Spec : Prop :=
  ∀ n, P1360675854535639893.a n = A188161 n

end A188161

/-! ## A188161.P10958430905983548952

`xor(1, A014236(2*n+1)+2)`
-/

namespace A188161.P10958430905983548952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A014236 (2 * n + 1) + 2)

end

end A188161.P10958430905983548952

namespace A188161

/-- `xor(1, A014236(2*n+1)+2)` -/
def P10958430905983548952.Spec : Prop :=
  ∀ n, P10958430905983548952.a n = A188161 n

end A188161

/-! ## A188161.P7316542138371264471

`A206372(n)%A181358(n)`
-/

namespace A188161.P7316542138371264471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206372 n) (A181358 n)

end

end A188161.P7316542138371264471

namespace A188161

/-- `A206372(n)%A181358(n)` -/
def P7316542138371264471.Spec : Prop :=
  ∀ n, P7316542138371264471.a n = A188161 n

end A188161

/-!
# A188162: a(n) = ceiling( 4^n/20 - (n^2 + 1)*2^(n-1) ).

The programs for A188162, the canonical program `A188162.P9157081283725697438` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188162 has offset 0).

The definition of A188162 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(4^n/20-(n²+1)*2^(n-1))` (program `A188162.P9157081283725697438`, by `A188162.P9157081283725697438.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188162.P9157081283725697438

`ceil(4^n/20-(n²+1)*2^(n-1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188162

/-- `ceil(4^n/20-(n²+1)*2^(n-1))` -/
def P9157081283725697438.Spec : Prop :=
  ∀ n, P9157081283725697438.a n = A188162 n

theorem P9157081283725697438.correct : P9157081283725697438.Spec := by
  intro n
  simp only [A188162]

end A188162

/-! ## A188162.P8131273433350870203

`A162247(n+1)-A226190(A116785(n+2))`
-/

namespace A188162.P8131273433350870203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162247 (n + 1) - A226190 (A116785 (n + 2)).toNat

end

end A188162.P8131273433350870203

namespace A188162

/-- `A162247(n+1)-A226190(A116785(n+2))` -/
def P8131273433350870203.Spec : Prop :=
  ∀ n, P8131273433350870203.a n = A188162 n

end A188162

/-!
# A188163: Smallest m such that A004001(m) = n.

The programs for A188163, the canonical program `A188163.P10543822701885175444` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188163 has offset 1).

The definition of A188163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188163.P13375898976852648752

`A051135(n)+a(n-1)` with `a(0)=1`
-/

namespace A188163.P13375898976852648752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051135 n + a (n - 1)

end

end A188163.P13375898976852648752

namespace A188163

/-- `A051135(n)+a(n-1)` -/
def P13375898976852648752.Spec : Prop :=
  ∀ n, P13375898976852648752.a n = A188163 (n + 1)

end A188163

/-! ## A188163.P4586787595825300266

`A265332(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A188163.P4586787595825300266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A265332 n + a (n - 1)

end

end A188163.P4586787595825300266

namespace A188163

/-- `A265332(n)+a(n-1)` -/
def P4586787595825300266.Spec : Prop :=
  ∀ n, P4586787595825300266.a n = A188163 (n + 1)

end A188163

/-! ## A188163.P10543822701885175444

`comp[A087686(n+2)-1]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A188163

/-- `comp[A087686(n+2)-1]+1` -/
def P10543822701885175444.Spec : Prop :=
  ∀ n, (P10543822701885175444.a n : ℤ) = A188163 (n + 1)

theorem P10543822701885175444.correct : P10543822701885175444.Spec := by
  intro n
  simp only [A188163, Nat.add_sub_cancel]

end A188163

/-! ## A188163.P4487053966341123338

`∪[A001692(n), A088359(n+1)]`
-/

namespace A188163.P4487053966341123338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188163.P4487053966341123338

namespace A188163

/-- `∪[A001692(n), A088359(n+1)]` -/
def P4487053966341123338.Spec : Prop :=
  ∀ n, (P4487053966341123338.a n : ℤ) = A188163 (n + 1)

end A188163

/-! ## A188163.P15026933544061400814

`∪[A088359(n+1), A006148(n)]`
-/

namespace A188163.P15026933544061400814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188163.P15026933544061400814

namespace A188163

/-- `∪[A088359(n+1), A006148(n)]` -/
def P15026933544061400814.Spec : Prop :=
  ∀ n, (P15026933544061400814.a n : ℤ) = A188163 (n + 1)

end A188163

/-! ## A188163.P11379185698304255860

`∪[A014793(n), A088359(n+1)]`
-/

namespace A188163.P11379185698304255860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014793 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188163.P11379185698304255860

namespace A188163

/-- `∪[A014793(n), A088359(n+1)]` -/
def P11379185698304255860.Spec : Prop :=
  ∀ n, (P11379185698304255860.a n : ℤ) = A188163 (n + 1)

end A188163

/-! ## A188163.P1256967281342810035

`A000007(n)+comp[A087686(n+1)]`
-/

namespace A188163.P1256967281342810035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A188163.P1256967281342810035

namespace A188163

/-- `A000007(n)+comp[A087686(n+1)]` -/
def P1256967281342810035.Spec : Prop :=
  ∀ n, P1256967281342810035.a n = A188163 (n + 1)

end A188163

/-! ## A188163.P5825310976179424701

`A088359(n+1)-A051135(n+1)`
-/

namespace A188163.P5825310976179424701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088359 (n + 1) - A051135 (n + 1)

end

end A188163.P5825310976179424701

namespace A188163

/-- `A088359(n+1)-A051135(n+1)` -/
def P5825310976179424701.Spec : Prop :=
  ∀ n, P5825310976179424701.a n = A188163 (n + 1)

end A188163

/-! ## A188163.P8116305232053528923

`comp[A087686(n+1)%A087687(n+1)]`
-/

namespace A188163.P8116305232053528923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087686 (n + 1)) (A087687 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188163.P8116305232053528923

namespace A188163

/-- `comp[A087686(n+1)%A087687(n+1)]` -/
def P8116305232053528923.Spec : Prop :=
  ∀ n, (P8116305232053528923.a n : ℤ) = A188163 (n + 1)

end A188163

/-! ## A188163.P2518572115902437461

`A266412(A103517(n))`
-/

namespace A188163.P2518572115902437461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266412 (A103517 n).toNat

end

end A188163.P2518572115902437461

namespace A188163

/-- `A266412(A103517(n))` -/
def P2518572115902437461.Spec : Prop :=
  ∀ n, P2518572115902437461.a n = A188163 (n + 1)

end A188163

/-! ## A188163.P3601014487166864204

`record[(n+1)*A093879(n+1)+1]`
-/

namespace A188163.P3601014487166864204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A093879 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188163.P3601014487166864204

namespace A188163

/-- `record[(n+1)*A093879(n+1)+1]` -/
def P3601014487166864204.Spec : Prop :=
  ∀ n, P3601014487166864204.a n = A188163 (n + 1)

end A188163

/-! ## A188163.P14783534649486773908

`eq[1, A265332(n+1)]+1`
-/

namespace A188163.P14783534649486773908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188163.P14783534649486773908

namespace A188163

/-- `eq[1, A265332(n+1)]+1` -/
def P14783534649486773908.Spec : Prop :=
  ∀ n, (P14783534649486773908.a n : ℤ) = A188163 (n + 1)

end A188163

/-! ## A188163.P15191430760362715765

`record[(n+2)/A051135(n+2)]`
-/

namespace A188163.P15191430760362715765
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A051135 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188163.P15191430760362715765

namespace A188163

/-- `record[(n+2)/A051135(n+2)]` -/
def P15191430760362715765.Spec : Prop :=
  ∀ n, P15191430760362715765.a n = (A188163 (n + 1) : ℚ)

end A188163

/-! ## A188163.P18104112661552929346

`record[(n+2)^Δ[A004001(n+1)]]`
-/

namespace A188163.P18104112661552929346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188163.P18104112661552929346

namespace A188163

/-- `record[(n+2)^Δ[A004001(n+1)]]` -/
def P18104112661552929346.Spec : Prop :=
  ∀ n, P18104112661552929346.a n = (A188163 (n + 1) : ℚ)

end A188163

/-! ## A188163.P14221121444097922277

`A266412(2*(n+1))/A051135(A266412(2*(n+1)))`
-/

namespace A188163.P14221121444097922277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266412 (2 * (n + 1)) : ℚ) / (A051135 (A266412 (2 * (n + 1))).toNat : ℚ)

end

end A188163.P14221121444097922277

namespace A188163

/-- `A266412(2*(n+1))/A051135(A266412(2*(n+1)))` -/
def P14221121444097922277.Spec : Prop :=
  ∀ n, P14221121444097922277.a n = (A188163 (n + 1) : ℚ)

end A188163

/-! ## A188163.P10376334350628035117

`record[A093879(n+2)*A162598(n+2)]`
-/

namespace A188163.P10376334350628035117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093879 (n + 2) * A162598 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188163.P10376334350628035117

namespace A188163

/-- `record[A093879(n+2)*A162598(n+2)]` -/
def P10376334350628035117.Spec : Prop :=
  ∀ n, P10376334350628035117.a n = A188163 (n + 1)

end A188163

/-! ## A188163.P8554004290731918475

`A004001(A266399(n+1))-A051135(n+1)`
-/

namespace A188163.P8554004290731918475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A266399 (n + 1)).toNat - A051135 (n + 1)

end

end A188163.P8554004290731918475

namespace A188163

/-- `A004001(A266399(n+1))-A051135(n+1)` -/
def P8554004290731918475.Spec : Prop :=
  ∀ n, P8554004290731918475.a n = A188163 (n + 1)

end A188163

/-! ## A188163.P16721530569503503220

`A080677(A266109(n+1)-1)`
-/

namespace A188163.P16721530569503503220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (A266109 (n + 1) - 1).toNat

end

end A188163.P16721530569503503220

namespace A188163

/-- `A080677(A266109(n+1)-1)` -/
def P16721530569503503220.Spec : Prop :=
  ∀ n, P16721530569503503220.a n = A188163 (n + 1)

end A188163

/-! ## A188163.P2466863330309830291

`A267110(A266109(n+1))`
-/

namespace A188163.P2466863330309830291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267110 (A266109 (n + 1)).toNat

end

end A188163.P2466863330309830291

namespace A188163

/-- `A267110(A266109(n+1))` -/
def P2466863330309830291.Spec : Prop :=
  ∀ n, P2466863330309830291.a n = A188163 (n + 1)

end A188163

/-! ## A188163.P9274965800131846004

`A267110(A267110(A267103(n+1)))`
-/

namespace A188163.P9274965800131846004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267110 (A267110 (A267103 (n + 1)).toNat).toNat

end

end A188163.P9274965800131846004

namespace A188163

/-- `A267110(A267110(A267103(n+1)))` -/
def P9274965800131846004.Spec : Prop :=
  ∀ n, P9274965800131846004.a n = A188163 (n + 1)

end A188163

/-!
# A188164: Number of palindromic structures of length n.

The programs for A188164, there is no canonical definition to state claims against.
-/

/-! ## A188164.P4210421331743734255

`A000110(ceil(n/2))`
-/

namespace A188164.P4210421331743734255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 ⌈(n : ℚ) / 2⌉.toNat

end

end A188164.P4210421331743734255

/-! ## A188164.P3016636565764067567

`A285013(abs(or(1, -n)))`
-/

namespace A188164.P3016636565764067567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285013 |Int.lor 1 (-(n : ℤ))|.toNat

end

end A188164.P3016636565764067567

/-! ## A188164.P16535798357939637847

`abs(A292935(ceil(n/2)))`
-/

namespace A188164.P16535798357939637847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 ⌈(n : ℚ) / 2⌉.toNat|

end

end A188164.P16535798357939637847

/-! ## A188164.P7475719635356356758

`A011972(C(ceil(n/2), 2))`
-/

namespace A188164.P7475719635356356758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2)

end

end A188164.P7475719635356356758

/-! ## A188164.P16162450607406433531

`A283424(C(ceil(n/2), 2))`
-/

namespace A188164.P16162450607406433531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2)

end

end A188164.P16162450607406433531

/-! ## A188164.P2014783381714611748

`A108458(A008805(n+1))`
-/

namespace A188164.P2014783381714611748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (A008805 (n + 1)).toNat

end

end A188164.P2014783381714611748

/-! ## A188164.P15598351697205732353

`A123081(A008818(n+1))`
-/

namespace A188164.P15598351697205732353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (A008818 (n + 1)).toNat

end

end A188164.P15598351697205732353

/-! ## A188164.P12590413737888252591

`A113547(A038167(n+1))`
-/

namespace A188164.P12590413737888252591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 (A038167 (n + 1)).toNat

end

end A188164.P12590413737888252591

/-! ## A188164.P17310690712840242209

`A123081(A069981(n+1))`
-/

namespace A188164.P17310690712840242209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (A069981 (n + 1)).toNat

end

end A188164.P17310690712840242209

/-! ## A188164.P1062332622461251362

`A113547(A117142(n+1))`
-/

namespace A188164.P1062332622461251362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 (A117142 (n + 1)).toNat

end

end A188164.P1062332622461251362

/-! ## A188164.P7712473716954144220

`A123081(A166515(n+1))`
-/

namespace A188164.P7712473716954144220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (A166515 (n + 1)).toNat

end

end A188164.P7712473716954144220

/-! ## A188164.P5815691268451280234

`A123081(A340448(n+1))`
-/

namespace A188164.P5815691268451280234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (A340448 (n + 1)).toNat

end

end A188164.P5815691268451280234

/-! ## A188164.P14449983077359852067

`A285013(A267458(n+1))`
-/

namespace A188164.P14449983077359852067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285013 (A267458 (n + 1)).toNat

end

end A188164.P14449983077359852067

/-! ## A188164.P8190355091505113823

`A108087(A055802(n+3))`
-/

namespace A188164.P8190355091505113823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A055802 (n + 3)).toNat

end

end A188164.P8190355091505113823

/-! ## A188164.P8568281759077825897

`A123081(A024174(n+4))`
-/

namespace A188164.P8568281759077825897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (A024174 (n + 4)).toNat

end

end A188164.P8568281759077825897

/-! ## A188164.P10796771268340461846

`A346426(eq[1, A144328(n+1)])`
-/

namespace A188164.P10796771268340461846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188164.P10796771268340461846

/-! ## A188164.P18187522491776067646

`A346520(eq[1, A144328(n+1)])`
-/

namespace A188164.P18187522491776067646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188164.P18187522491776067646

/-! ## A188164.P13232286797763813888

`A095149(A290168(n+1)/(n+1))`
-/

namespace A188164.P13232286797763813888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (SequenceMachineLib.roundAway ((A290168 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A188164.P13232286797763813888

/-! ## A188164.P16907204794469314492

`A346426(eq[A002262(n)², A002262(n)])`
-/

namespace A188164.P16907204794469314492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A188164.P16907204794469314492

/-! ## A188164.P4293785540107809684

`A346520(eq[A002262(n)², A002262(n)])`
-/

namespace A188164.P4293785540107809684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A188164.P4293785540107809684

/-!
# A188165: a(n) = 2^n + 9.

The programs for A188165, the canonical program `A188165.P8185940414168996735` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188165 has offset 0).

The definition of A188165 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+9` (program `A188165.P8185940414168996735`, by `A188165.P8185940414168996735.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188165.P8185940414168996735

`2^n+9`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188165

/-- `2^n+9` -/
def P8185940414168996735.Spec : Prop :=
  ∀ n, (P8185940414168996735.a n : ℤ) = A188165 n

theorem P8185940414168996735.correct : P8185940414168996735.Spec := by
  intro n
  simp only [A188165]

end A188165

/-!
# A188167: a(2+4*n)=1+2*n, otherwise a(n)=2*n.

The programs for A188167, the canonical program `A188167.P11553738734139885830` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188167 has offset 0).

The definition of A188167 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188167.P11553738734139885830

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=6, a(4)=8, a(5)=10, a(6)=3, a(7)=14`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188167

/-- `2*a(n-4)-a(n-8)` -/
def P11553738734139885830.Spec : Prop :=
  ∀ n, P11553738734139885830.a n = A188167 n

theorem P11553738734139885830.correct : P11553738734139885830.Spec := by
  intro n
  simp only [A188167]

end A188167

/-! ## A188167.P319153792571878799

`gcd(2*n, C(n², 4)²)`
-/

namespace A188167.P319153792571878799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (Nat.choose (n ^ 2) 4 ^ 2)

end

end A188167.P319153792571878799

namespace A188167

/-- `gcd(2*n, C(n², 4)²)` -/
def P319153792571878799.Spec : Prop :=
  ∀ n, (P319153792571878799.a n : ℤ) = A188167 n

end A188167

/-! ## A188167.P10708224827392847299

`3*gcd(n, ∑[n]²)-n`
-/

namespace A188167.P10708224827392847299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.gcd n ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) : ℤ) - (n : ℤ)

end

end A188167.P10708224827392847299

namespace A188167

/-- `3*gcd(n, ∑[n]²)-n` -/
def P10708224827392847299.Spec : Prop :=
  ∀ n, P10708224827392847299.a n = A188167 n

end A188167

/-! ## A188167.P877417743608703634

`2*n/sqrt(and(4, n²))!²`
-/

namespace A188167.P877417743608703634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (Nat.land 4 (n ^ 2) : ℝ))).toNat ^ 2 : ℚ)

end

end A188167.P877417743608703634

namespace A188167

/-- `2*n/sqrt(and(4, n²))!²` -/
def P877417743608703634.Spec : Prop :=
  ∀ n, P877417743608703634.a n = (A188167 n : ℚ)

end A188167

/-! ## A188167.P12954095006278725859

`n*2^(-(-1)^n)^∑[n]`
-/

namespace A188167.P12954095006278725859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((-((-1) ^ n)) ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A188167.P12954095006278725859

namespace A188167

/-- `n*2^(-(-1)^n)^∑[n]` -/
def P12954095006278725859.Spec : Prop :=
  ∀ n, P12954095006278725859.a n = (A188167 n : ℚ)

end A188167

/-! ## A188167.P8924857840727826517

`2*n/2^(and(4, n²)/2)`
-/

namespace A188167.P8924857840727826517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n : ℝ) / (2 : ℝ) ^ ((Nat.land 4 (n ^ 2) : ℚ) / 2 : ℝ)

end

end A188167.P8924857840727826517

namespace A188167

/-- `2*n/2^(and(4, n²)/2)` -/
def P8924857840727826517.Spec : Prop :=
  ∀ n, P8924857840727826517.a n = (A188167 n : ℝ)

end A188167

/-! ## A188167.P2464721245667790436

`2*n/val(n²+12, 4)!²`
-/

namespace A188167.P2464721245667790436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Nat.factorial (SequenceMachineLib.valuation (n ^ 2 + 12) 4) ^ 2 : ℚ)

end

end A188167.P2464721245667790436

namespace A188167

/-- `2*n/val(n²+12, 4)!²` -/
def P2464721245667790436.Spec : Prop :=
  ∀ n, P2464721245667790436.a n = (A188167 n : ℚ)

end A188167

/-! ## A188167.P16937065704619758563

`2*n/gcd(n², a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A188167.P16937065704619758563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  (2 * n : ℚ) / (Int.gcd (n ^ 2 : ℤ) (SequenceMachineLib.roundAway (a (n - 2))) : ℚ)

end

end A188167.P16937065704619758563

namespace A188167

/-- `2*n/gcd(n², a(n-2))` -/
def P16937065704619758563.Spec : Prop :=
  ∀ n, P16937065704619758563.a n = (A188167 n : ℚ)

end A188167

/-! ## A188167.P9481850378008806639

`gcd(2*n, A187541(n))`
-/

namespace A188167.P9481850378008806639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A187541 n)

end

end A188167.P9481850378008806639

namespace A188167

/-- `gcd(2*n, A187541(n))` -/
def P9481850378008806639.Spec : Prop :=
  ∀ n, (P9481850378008806639.a n : ℤ) = A188167 n

end A188167

/-! ## A188167.P9643863557967604275

`n/Δ[A110657(n)]+n`
-/

namespace A188167.P9643863557967604275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f1 (n + 1) - f1 n : ℚ) + (n : ℚ)

end

end A188167.P9643863557967604275

namespace A188167

/-- `n/Δ[A110657(n)]+n` -/
def P9643863557967604275.Spec : Prop :=
  ∀ n, P9643863557967604275.a n = (A188167 n : ℚ)

end A188167

/-! ## A188167.P10518640847321656226

`2*n/A010121(n+2)`
-/

namespace A188167.P10518640847321656226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (A010121 (n + 2) : ℚ)

end

end A188167.P10518640847321656226

namespace A188167

/-- `2*n/A010121(n+2)` -/
def P10518640847321656226.Spec : Prop :=
  ∀ n, P10518640847321656226.a n = (A188167 n : ℚ)

end A188167

/-! ## A188167.P16001426965004660956

`2*n/A236398(n+1)²`
-/

namespace A188167.P16001426965004660956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (A236398 (n + 1) ^ 2 : ℚ)

end

end A188167.P16001426965004660956

namespace A188167

/-- `2*n/A236398(n+1)²` -/
def P16001426965004660956.Spec : Prop :=
  ∀ n, P16001426965004660956.a n = (A188167 n : ℚ)

end A188167

/-! ## A188167.P1981901210156013177

`A165988(n/(2-and(1, n)))-n`
-/

namespace A188167.P1981901210156013177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165988 (SequenceMachineLib.roundAway ((n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ))).toNat - (n : ℤ)

end

end A188167.P1981901210156013177

namespace A188167

/-- `A165988(n/(2-and(1, n)))-n` -/
def P1981901210156013177.Spec : Prop :=
  ∀ n, P1981901210156013177.a n = A188167 n

end A188167

/-! ## A188167.P701422711145202221

`2*n/A007318(and(3, -n)²)²`
-/

namespace A188167.P701422711145202221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (A007318 (Int.land 3 (-(n : ℤ)) ^ 2).toNat ^ 2 : ℚ)

end

end A188167.P701422711145202221

namespace A188167

/-- `2*n/A007318(and(3, -n)²)²` -/
def P701422711145202221.Spec : Prop :=
  ∀ n, P701422711145202221.a n = (A188167 n : ℚ)

end A188167

/-! ## A188167.P191648740591745298

`2*n/A000010(and(3, n-3)!)²`
-/

namespace A188167.P191648740591745298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (A000010 (Nat.factorial (Int.land 3 ((n : ℤ) - 3)).toNat) ^ 2 : ℚ)

end

end A188167.P191648740591745298

namespace A188167

/-- `2*n/A000010(and(3, n-3)!)²` -/
def P191648740591745298.Spec : Prop :=
  ∀ n, P191648740591745298.a n = (A188167 n : ℚ)

end A188167

/-! ## A188167.P67996639040563128

`2*n/A000045(and(3, n-3))!²`
-/

namespace A188167.P67996639040563128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Nat.factorial (A000045 (Int.land 3 ((n : ℤ) - 3)).toNat).toNat ^ 2 : ℚ)

end

end A188167.P67996639040563128

namespace A188167

/-- `2*n/A000045(and(3, n-3))!²` -/
def P67996639040563128.Spec : Prop :=
  ∀ n, P67996639040563128.a n = (A188167 n : ℚ)

end A188167

/-! ## A188167.P4614857874166715604

`2*n/A000010(gcd(n+2, n²))²`
-/

namespace A188167.P4614857874166715604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (A000010 (Nat.gcd (n + 2) (n ^ 2)) ^ 2 : ℚ)

end

end A188167.P4614857874166715604

namespace A188167

/-- `2*n/A000010(gcd(n+2, n²))²` -/
def P4614857874166715604.Spec : Prop :=
  ∀ n, P4614857874166715604.a n = (A188167 n : ℚ)

end A188167

/-! ## A188167.P7455257335964273766

`2*n/A000041(and(n, and(2, n-3)))²`
-/

namespace A188167.P7455257335964273766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (A000041 (Int.land (n : ℤ) (Int.land 2 ((n : ℤ) - 3))).toNat ^ 2 : ℚ)

end

end A188167.P7455257335964273766

namespace A188167

/-- `2*n/A000041(and(n, and(2, n-3)))²` -/
def P7455257335964273766.Spec : Prop :=
  ∀ n, P7455257335964273766.a n = (A188167 n : ℚ)

end A188167

/-! ## A188167.P2922158377308683681

`A165988(A026741(n))-n`
-/

namespace A188167.P2922158377308683681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165988 (A026741 n).toNat - (n : ℤ)

end

end A188167.P2922158377308683681

namespace A188167

/-- `A165988(A026741(n))-n` -/
def P2922158377308683681.Spec : Prop :=
  ∀ n, P2922158377308683681.a n = A188167 n

end A188167

/-! ## A188167.P17707297267341614542

`gcd(A187541(n), A242854(n))`
-/

namespace A188167.P17707297267341614542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A187541 n) (A242854 n)

end

end A188167.P17707297267341614542

namespace A188167

/-- `gcd(A187541(n), A242854(n))` -/
def P17707297267341614542.Spec : Prop :=
  ∀ n, (P17707297267341614542.a n : ℤ) = A188167 n

end A188167

/-!
# A188168: a(0) = a(1) = 1; a(n) = 5*a(n-1) + 5*a(n-2).

The programs for A188168, the canonical program `A188168.P8902400746763130190` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188168 has offset 0).

The definition of A188168 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+5*a(n-2)` (program `A188168.P8902400746763130190`, by `A188168.P8902400746763130190.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188168.P8902400746763130190

`5*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188168

/-- `5*a(n-1)+5*a(n-2)` -/
def P8902400746763130190.Spec : Prop :=
  ∀ n, (P8902400746763130190.a n : ℤ) = A188168 n

theorem P8902400746763130190.correct : P8902400746763130190.Spec := by
  intro n
  simp only [A188168]

end A188168

/-! ## A188168.P13595245018032637972

`ogf((-1+4x)/(-1+5x+5x^2))`
-/

namespace A188168.P13595245018032637972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -5, -5] n

end

end A188168.P13595245018032637972

namespace A188168

/-- `ogf((-1+4x)/(-1+5x+5x^2))` -/
def P13595245018032637972.Spec : Prop :=
  ∀ n, P13595245018032637972.a n = A188168 n

end A188168

/-! ## A188168.P8702934750624094688

`5*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A188168.P8702934750624094688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  5 * (a (n - 1) + a (n - 2))

end

end A188168.P8702934750624094688

namespace A188168

/-- `5*(a(n-1)+a(n-2))` -/
def P8702934750624094688.Spec : Prop :=
  ∀ n, (P8702934750624094688.a n : ℤ) = A188168 n

theorem P8702934750624094688.correct : P8702934750624094688.Spec := by
  intro n
  simp only [A188168, Nat.add_sub_cancel, A188168.P8702934750624094688.a, A188168.P8902400746763130190.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A188168

/-! ## A188168.P8663846940692908753

`5*(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A188168.P8663846940692908753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  5 * (a (n - 1) - (-a (n - 2)))

end

end A188168.P8663846940692908753

namespace A188168

/-- `5*(a(n-1)-floor(-a(n-2)))` -/
def P8663846940692908753.Spec : Prop :=
  ∀ n, P8663846940692908753.a n = A188168 n

end A188168

/-! ## A188168.P684190297231928164

`5*(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A188168.P684190297231928164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  5 * (a (n - 1) - (-a (n - 2)))

end

end A188168.P684190297231928164

namespace A188168

/-- `5*(a(n-1)-ceil(-a(n-2)))` -/
def P684190297231928164.Spec : Prop :=
  ∀ n, P684190297231928164.a n = A188168 n

end A188168

/-! ## A188168.P17788906219634519551

`5*(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A188168.P17788906219634519551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  5 * (a (n - 1) - (-a (n - 2)))

end

end A188168.P17788906219634519551

namespace A188168

/-- `5*(a(n-1)-round(-a(n-2)))` -/
def P17788906219634519551.Spec : Prop :=
  ∀ n, P17788906219634519551.a n = A188168 n

end A188168

/-! ## A188168.P4456775497400205857

`5*(1-floor(1-a(n-1)-a(n-2)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A188168.P4456775497400205857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  5 * (1 - (1 - a (n - 1) - a (n - 2)))

end

end A188168.P4456775497400205857

namespace A188168

/-- `5*(1-floor(1-a(n-1)-a(n-2)))` -/
def P4456775497400205857.Spec : Prop :=
  ∀ n, P4456775497400205857.a n = A188168 n

end A188168

/-! ## A188168.P13097826275288757668

`A189749(n+1)/5`
-/

namespace A188168.P13097826275288757668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189749 (n + 1) : ℚ) / 5

end

end A188168.P13097826275288757668

namespace A188168

/-- `A189749(n+1)/5` -/
def P13097826275288757668.Spec : Prop :=
  ∀ n, P13097826275288757668.a n = (A188168 n : ℚ)

end A188168

/-! ## A188168.P4293347876660461321

`A180033(n)-A106565(n)`
-/

namespace A188168.P4293347876660461321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180033 n - A106565 n

end

end A188168.P4293347876660461321

namespace A188168

/-- `A180033(n)-A106565(n)` -/
def P4293347876660461321.Spec : Prop :=
  ∀ n, P4293347876660461321.a n = A188168 n

end A188168

/-! ## A188168.P7615864272419317306

`A180033(n)%A106565(A028310(n))`
-/

namespace A188168.P7615864272419317306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180033 n) (A106565 (A028310 n).toNat)

end

end A188168.P7615864272419317306

namespace A188168

/-- `A180033(n)%A106565(A028310(n))` -/
def P7615864272419317306.Spec : Prop :=
  ∀ n, P7615864272419317306.a n = A188168 n

end A188168

/-!
# A188169: The number of divisors d of n of the form d == 1 (mod 8).

The programs for A188169, the canonical program `A188169.P9022130587462569637` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188169 has offset 1).

The definition of A188169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188169.P9022130587462569637

`∑{d}[n+1, A253513(#-1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188169

/-- `∑{d}[n+1, A253513(#-1)]` -/
def P9022130587462569637.Spec : Prop :=
  ∀ n, P9022130587462569637.a n = A188169 (n + 1)

theorem P9022130587462569637.correct : P9022130587462569637.Spec := by
  intro n
  simp only [A188169, Nat.add_sub_cancel]

end A188169

/-! ## A188169.P1845831619136277671

`A363037(n+1)+A188171(n+1)`
-/

namespace A188169.P1845831619136277671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363037 (n + 1) + A188171 (n + 1)

end

end A188169.P1845831619136277671

namespace A188169

/-- `A363037(n+1)+A188171(n+1)` -/
def P1845831619136277671.Spec : Prop :=
  ∀ n, P1845831619136277671.a n = A188169 (n + 1)

theorem P1845831619136277671.correct : P1845831619136277671.Spec := by
  intro n
  simp only [A188169, Nat.add_sub_cancel, A188169.P1845831619136277671.a, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A188171, A188171.P17289095504074848112.a, A253513, A253513.P7768194327896133816.a, A363037, A363037.P17593486041959232839.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A002654, A002654.P11574922253888480122.a, A001826, A001826.P1518250824516108745.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188169

/-! ## A188169.P13110182384002674154

`A001826(n+1)-A188171(n+1)`
-/

namespace A188169.P13110182384002674154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (n + 1) - A188171 (n + 1)

end

end A188169.P13110182384002674154

namespace A188169

/-- `A001826(n+1)-A188171(n+1)` -/
def P13110182384002674154.Spec : Prop :=
  ∀ n, P13110182384002674154.a n = A188169 (n + 1)

theorem P13110182384002674154.correct : P13110182384002674154.Spec := by
  intro n
  simp only [A188169, Nat.add_sub_cancel, A188169.P13110182384002674154.a, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A001826, A001826.P1518250824516108745.a, A188171, A188171.P17289095504074848112.a, A253513, A253513.P7768194327896133816.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A002654, A002654.P11574922253888480122.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188169

/-! ## A188169.P15491813495571994184

`A001227(n+1)-(A188171(n+1)+A001842(n+1))`
-/

namespace A188169.P15491813495571994184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - (A188171 (n + 1) + A001842 (n + 1))

end

end A188169.P15491813495571994184

namespace A188169

/-- `A001227(n+1)-(A188171(n+1)+A001842(n+1))` -/
def P15491813495571994184.Spec : Prop :=
  ∀ n, P15491813495571994184.a n = A188169 (n + 1)

theorem P15491813495571994184.correct : P15491813495571994184.Spec := by
  intro n
  simp only [A188169, Nat.add_sub_cancel, A188169.P15491813495571994184.a, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A188171, A188171.P17289095504074848112.a, A253513, A253513.P7768194327896133816.a, A002654, A002654.P11574922253888480122.a, A001826, A001826.P1518250824516108745.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188169

/-! ## A188169.P15459357866304735547

`A001842(n+1)+A002654(n+1)-A188171(n+1)`
-/

namespace A188169.P15459357866304735547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (n + 1) + (A002654 (n + 1) - A188171 (n + 1))

end

end A188169.P15459357866304735547

namespace A188169

/-- `A001842(n+1)+A002654(n+1)-A188171(n+1)` -/
def P15459357866304735547.Spec : Prop :=
  ∀ n, P15459357866304735547.a n = A188169 (n + 1)

theorem P15459357866304735547.correct : P15459357866304735547.Spec := by
  intro n
  simp only [A188169, Nat.add_sub_cancel, A188169.P15459357866304735547.a, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A002654, A002654.P11574922253888480122.a, A188171, A188171.P17289095504074848112.a, A253513, A253513.P7768194327896133816.a, A001826, A001826.P1518250824516108745.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188169

/-! ## A188169.P5105446920712058454

`A293451(2*(n+1))-A188171(n+1)`
-/

namespace A188169.P5105446920712058454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293451 (2 * (n + 1)) - A188171 (n + 1)

end

end A188169.P5105446920712058454

namespace A188169

/-- `A293451(2*(n+1))-A188171(n+1)` -/
def P5105446920712058454.Spec : Prop :=
  ∀ n, P5105446920712058454.a n = A188169 (n + 1)

end A188169

/-! ## A188169.P17447855377686671464

`and(A147596(n+1), A284100(n+1))`
-/

namespace A188169.P17447855377686671464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147596 (n + 1)) (A284100 (n + 1))

end

end A188169.P17447855377686671464

namespace A188169

/-- `and(A147596(n+1), A284100(n+1))` -/
def P17447855377686671464.Spec : Prop :=
  ∀ n, P17447855377686671464.a n = A188169 (n + 1)

end A188169

/-! ## A188169.P16807071248673711207

`and(A184041(n+1), A284100(n+1))`
-/

namespace A188169.P16807071248673711207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184041 (n + 1)) (A284100 (n + 1))

end

end A188169.P16807071248673711207

namespace A188169

/-- `and(A184041(n+1), A284100(n+1))` -/
def P16807071248673711207.Spec : Prop :=
  ∀ n, P16807071248673711207.a n = A188169 (n + 1)

end A188169

/-! ## A188169.P12331092122481668230

`and(A196655(n), A284100(n+1))`
-/

namespace A188169.P12331092122481668230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196655 n) (A284100 (n + 1))

end

end A188169.P12331092122481668230

namespace A188169

/-- `and(A196655(n), A284100(n+1))` -/
def P12331092122481668230.Spec : Prop :=
  ∀ n, P12331092122481668230.a n = A188169 (n + 1)

end A188169

/-! ## A188169.P14029327912286410925

`gcd(A027713(n+1), A363972(n+1))`
-/

namespace A188169.P14029327912286410925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027713 (n + 1)) (A363972 (n + 1))

end

end A188169.P14029327912286410925

namespace A188169

/-- `gcd(A027713(n+1), A363972(n+1))` -/
def P14029327912286410925.Spec : Prop :=
  ∀ n, (P14029327912286410925.a n : ℤ) = A188169 (n + 1)

end A188169

/-!
# A188170: The number of divisors d of n of the form d == 3 (mod 8).

The programs for A188170, the canonical program `A188170.P7143844993511574485` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188170 has offset 1).

The definition of A188170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188170.P646433605176544030

`val(A320108(n+1), 7)`
-/

namespace A188170.P646433605176544030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A320108 (n + 1)).toNat 7

end

end A188170.P646433605176544030

namespace A188170

/-- `val(A320108(n+1), 7)` -/
def P646433605176544030.Spec : Prop :=
  ∀ n, (P646433605176544030.a n : ℤ) = A188170 (n + 1)

end A188170

/-! ## A188170.P7143844993511574485

`∑{d}[n+1, and(1, #*A122046(#))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188170

/-- `∑{d}[n+1, and(1, #*A122046(#))]` -/
def P7143844993511574485.Spec : Prop :=
  ∀ n, P7143844993511574485.a n = A188170 (n + 1)

theorem P7143844993511574485.correct : P7143844993511574485.Spec := by
  intro n
  simp only [A188170, Nat.add_sub_cancel]

end A188170

/-! ## A188170.P9622022302866399083

`A364032(n+1)+A188172(n+1)`
-/

namespace A188170.P9622022302866399083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364032 (n + 1) + A188172 (n + 1)

end

end A188170.P9622022302866399083

namespace A188170

/-- `A364032(n+1)+A188172(n+1)` -/
def P9622022302866399083.Spec : Prop :=
  ∀ n, P9622022302866399083.a n = A188170 (n + 1)

end A188170

/-! ## A188170.P8849954088480871222

`A001842(n+1)-A188172(n+1)`
-/

namespace A188170.P8849954088480871222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (n + 1) - A188172 (n + 1)

end

end A188170.P8849954088480871222

namespace A188170

/-- `A001842(n+1)-A188172(n+1)` -/
def P8849954088480871222.Spec : Prop :=
  ∀ n, P8849954088480871222.a n = A188170 (n + 1)

end A188170

/-! ## A188170.P12745834906162207964

`A001227(n+1)-(A188172(n+1)+A001826(n+1))`
-/

namespace A188170.P12745834906162207964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - (A188172 (n + 1) + A001826 (n + 1))

end

end A188170.P12745834906162207964

namespace A188170

/-- `A001227(n+1)-(A188172(n+1)+A001826(n+1))` -/
def P12745834906162207964.Spec : Prop :=
  ∀ n, P12745834906162207964.a n = A188170 (n + 1)

end A188170

/-! ## A188170.P13657792323341808924

`∑{d}[n+1, A300828((2-A007814(#+1))²+1)]`
-/

namespace A188170.P13657792323341808924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300828 ((2 - A007814 (d + 1)) ^ 2 + 1).toNat

end

end A188170.P13657792323341808924

namespace A188170

/-- `∑{d}[n+1, A300828((2-A007814(#+1))²+1)]` -/
def P13657792323341808924.Spec : Prop :=
  ∀ n, P13657792323341808924.a n = A188170 (n + 1)

end A188170

/-! ## A188170.P16560446955868648602

`A293513(2*(n+1))-A188172(n+1)`
-/

namespace A188170.P16560446955868648602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (2 * (n + 1)) - A188172 (n + 1)

end

end A188170.P16560446955868648602

namespace A188170

/-- `A293513(2*(n+1))-A188172(n+1)` -/
def P16560446955868648602.Spec : Prop :=
  ∀ n, P16560446955868648602.a n = A188170 (n + 1)

end A188170

/-! ## A188170.P3336099826512982861

`and(A239679(n), A363973(n+1))`
-/

namespace A188170.P3336099826512982861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A239679 n) (A363973 (n + 1))

end

end A188170.P3336099826512982861

namespace A188170

/-- `and(A239679(n), A363973(n+1))` -/
def P3336099826512982861.Spec : Prop :=
  ∀ n, P3336099826512982861.a n = A188170 (n + 1)

end A188170

/-! ## A188170.P6146534300619188774

`and(A253208(n), A363973(n+1))`
-/

namespace A188170.P6146534300619188774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A253208 n) (A363973 (n + 1))

end

end A188170.P6146534300619188774

namespace A188170

/-- `and(A253208(n), A363973(n+1))` -/
def P6146534300619188774.Spec : Prop :=
  ∀ n, P6146534300619188774.a n = A188170 (n + 1)

end A188170

/-! ## A188170.P473180956770326436

`and(A363973(n+1), A394960(n))`
-/

namespace A188170.P473180956770326436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A363973 (n + 1)) (A394960 n)

end

end A188170.P473180956770326436

namespace A188170

/-- `and(A363973(n+1), A394960(n))` -/
def P473180956770326436.Spec : Prop :=
  ∀ n, P473180956770326436.a n = A188170 (n + 1)

end A188170

/-! ## A188170.P17559691486537847186

`and(A062709(2*n), A363973(2*(n+1)))`
-/

namespace A188170.P17559691486537847186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062709 (2 * n)) (A363973 (2 * (n + 1)))

end

end A188170.P17559691486537847186

namespace A188170

/-- `and(A062709(2*n), A363973(2*(n+1)))` -/
def P17559691486537847186.Spec : Prop :=
  ∀ n, P17559691486537847186.a n = A188170 (n + 1)

end A188170

/-! ## A188170.P17365155870710278159

`and(A032098(n+1), A363973(n+1))`
-/

namespace A188170.P17365155870710278159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032098 (n + 1)) (A363973 (n + 1))

end

end A188170.P17365155870710278159

namespace A188170

/-- `and(A032098(n+1), A363973(n+1))` -/
def P17365155870710278159.Spec : Prop :=
  ∀ n, P17365155870710278159.a n = A188170 (n + 1)

end A188170

/-! ## A188170.P9818406818610321632

`and(A092841(n), A363973(n+1))`
-/

namespace A188170.P9818406818610321632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092841 n) (A363973 (n + 1))

end

end A188170.P9818406818610321632

namespace A188170

/-- `and(A092841(n), A363973(n+1))` -/
def P9818406818610321632.Spec : Prop :=
  ∀ n, P9818406818610321632.a n = A188170 (n + 1)

end A188170

/-! ## A188170.P10074459232192576829

`and(A164285(2*n), A363973(2*(n+1)))`
-/

namespace A188170.P10074459232192576829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164285 (2 * n)) (A363973 (2 * (n + 1)))

end

end A188170.P10074459232192576829

namespace A188170

/-- `and(A164285(2*n), A363973(2*(n+1)))` -/
def P10074459232192576829.Spec : Prop :=
  ∀ n, P10074459232192576829.a n = A188170 (n + 1)

end A188170

/-! ## A188170.P16089757630877816923

`and(A318207(2*n), A363973(2*(n+1)))`
-/

namespace A188170.P16089757630877816923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A318207 (2 * n)) (A363973 (2 * (n + 1)))

end

end A188170.P16089757630877816923

namespace A188170

/-- `and(A318207(2*n), A363973(2*(n+1)))` -/
def P16089757630877816923.Spec : Prop :=
  ∀ n, P16089757630877816923.a n = A188170 (n + 1)

end A188170

/-! ## A188170.P3833988876497442167

`and(A048496(2*n), A363973(2*(n+1)))`
-/

namespace A188170.P3833988876497442167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048496 (2 * n)) (A363973 (2 * (n + 1)))

end

end A188170.P3833988876497442167

namespace A188170

/-- `and(A048496(2*n), A363973(2*(n+1)))` -/
def P3833988876497442167.Spec : Prop :=
  ∀ n, P3833988876497442167.a n = A188170 (n + 1)

end A188170

/-! ## A188170.P9585269845092522202

`and(A122553(n²), A363973(n+1))`
-/

namespace A188170.P9585269845092522202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 (n ^ 2)) (A363973 (n + 1))

end

end A188170.P9585269845092522202

namespace A188170

/-- `and(A122553(n²), A363973(n+1))` -/
def P9585269845092522202.Spec : Prop :=
  ∀ n, P9585269845092522202.a n = A188170 (n + 1)

end A188170

/-! ## A188170.P13014608881577289491

`and(A158799(n²), A363973(n+1))`
-/

namespace A188170.P13014608881577289491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158799 (n ^ 2)) (A363973 (n + 1))

end

end A188170.P13014608881577289491

namespace A188170

/-- `and(A158799(n²), A363973(n+1))` -/
def P13014608881577289491.Spec : Prop :=
  ∀ n, P13014608881577289491.a n = A188170 (n + 1)

end A188170

/-! ## A188170.P14013809167466463727

`and(A169609(n²), A363973(n+1))`
-/

namespace A188170.P14013809167466463727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169609 (n ^ 2)) (A363973 (n + 1))

end

end A188170.P14013809167466463727

namespace A188170

/-- `and(A169609(n²), A363973(n+1))` -/
def P14013809167466463727.Spec : Prop :=
  ∀ n, P14013809167466463727.a n = A188170 (n + 1)

end A188170

/-!
# A188171: The number of divisors d of n of the form d == 5 (mod 8).

The programs for A188171, the canonical program `A188171.P17289095504074848112` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188171 has offset 1).

The definition of A188171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188171.P2760156470974204268

`A001826(n+1)-A188169(n+1)`
-/

namespace A188171.P2760156470974204268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (n + 1) - A188169 (n + 1)

end

end A188171.P2760156470974204268

namespace A188171

/-- `A001826(n+1)-A188169(n+1)` -/
def P2760156470974204268.Spec : Prop :=
  ∀ n, P2760156470974204268.a n = A188171 (n + 1)

theorem P2760156470974204268.correct : P2760156470974204268.Spec := by
  intro n
  simp only [A188171, Nat.add_sub_cancel, A188171.P2760156470974204268.a, A188171.P17289095504074848112.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A002654, A002654.P11574922253888480122.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A253513, A253513.P7768194327896133816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188171

/-! ## A188171.P2831186554810137296

`A188169(n+1)-A363037(n+1)`
-/

namespace A188171.P2831186554810137296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (n + 1) - A363037 (n + 1)

end

end A188171.P2831186554810137296

namespace A188171

/-- `A188169(n+1)-A363037(n+1)` -/
def P2831186554810137296.Spec : Prop :=
  ∀ n, P2831186554810137296.a n = A188171 (n + 1)

theorem P2831186554810137296.correct : P2831186554810137296.Spec := by
  intro n
  simp only [A188171, Nat.add_sub_cancel, A188171.P2831186554810137296.a, A188171.P17289095504074848112.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A002654, A002654.P11574922253888480122.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A363037, A363037.P17593486041959232839.a, A001826, A001826.P1518250824516108745.a, A253513, A253513.P7768194327896133816.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188171

/-! ## A188171.P11824091542915463920

`∑{d}[n+1, A322015(A322015(#))%2]`
-/

namespace A188171.P11824091542915463920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A322015 (A322015 d).toNat) 2

end

end A188171.P11824091542915463920

namespace A188171

/-- `∑{d}[n+1, A322015(A322015(#))%2]` -/
def P11824091542915463920.Spec : Prop :=
  ∀ n, P11824091542915463920.a n = A188171 (n + 1)

end A188171

/-! ## A188171.P10175107064777077206

`∑{d}[A000265(n+1), A014707(A014707(#)+#)]`
-/

namespace A188171.P10175107064777077206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A014707 (A014707 d + (d : ℤ)).toNat

end

end A188171.P10175107064777077206

namespace A188171

/-- `∑{d}[A000265(n+1), A014707(A014707(#)+#)]` -/
def P10175107064777077206.Spec : Prop :=
  ∀ n, P10175107064777077206.a n = A188171 (n + 1)

end A188171

/-! ## A188171.P8580898340658710152

`A001227(n+1)-(A188169(n+1)+A001842(n+1))`
-/

namespace A188171.P8580898340658710152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - (A188169 (n + 1) + A001842 (n + 1))

end

end A188171.P8580898340658710152

namespace A188171

/-- `A001227(n+1)-(A188169(n+1)+A001842(n+1))` -/
def P8580898340658710152.Spec : Prop :=
  ∀ n, P8580898340658710152.a n = A188171 (n + 1)

theorem P8580898340658710152.correct : P8580898340658710152.Spec := by
  intro n
  simp only [A188171, Nat.add_sub_cancel, A188171.P8580898340658710152.a, A188171.P17289095504074848112.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A002654, A002654.P11574922253888480122.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A001826, A001826.P1518250824516108745.a, A253513, A253513.P7768194327896133816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188171

/-! ## A188171.P17289095504074848112

`A001842(n+1)+A002654(n+1)-A188169(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188171

/-- `A001842(n+1)+A002654(n+1)-A188169(n+1)` -/
def P17289095504074848112.Spec : Prop :=
  ∀ n, P17289095504074848112.a n = A188171 (n + 1)

theorem P17289095504074848112.correct : P17289095504074848112.Spec := by
  intro n
  simp only [A188171, Nat.add_sub_cancel]

end A188171

/-! ## A188171.P4020273291059975562

`∑{d}[n+1, A191902(A249738(#+1))%2]`
-/

namespace A188171.P4020273291059975562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A191902 (A249738 (d + 1)).toNat) 2

end

end A188171.P4020273291059975562

namespace A188171

/-- `∑{d}[n+1, A191902(A249738(#+1))%2]` -/
def P4020273291059975562.Spec : Prop :=
  ∀ n, P4020273291059975562.a n = A188171 (n + 1)

end A188171

/-! ## A188171.P812846779050540712

`A293451(2*(n+1))-A188169(n+1)`
-/

namespace A188171.P812846779050540712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293451 (2 * (n + 1)) - A188169 (n + 1)

end

end A188171.P812846779050540712

namespace A188171

/-- `A293451(2*(n+1))-A188169(n+1)` -/
def P812846779050540712.Spec : Prop :=
  ∀ n, P812846779050540712.a n = A188171 (n + 1)

end A188171

/-!
# A188172: Number of divisors d of n of the form d == 7 (mod 8).

The programs for A188172, the canonical program `A188172.P3980200347470981964` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188172 has offset 1).

The definition of A188172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188172.P8299621472645071782

`A188169(n+1)+A188170(n+1)-A188171(n+1)-A002325(n+1)`
-/

namespace A188172.P8299621472645071782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (n + 1) + A188170 (n + 1) - A188171 (n + 1) - A002325 (n + 1)

end

end A188172.P8299621472645071782

namespace A188172

/-- `A188169(n+1)+A188170(n+1)-A188171(n+1)-A002325(n+1)` -/
def P8299621472645071782.Spec : Prop :=
  ∀ n, P8299621472645071782.a n = A188172 (n + 1)

theorem P8299621472645071782.correct : P8299621472645071782.Spec := by
  intro n
  simp only [A188172, Nat.add_sub_cancel, A188172.P8299621472645071782.a, A188172.P3980200347470981964.f1, A188172.P3980200347470981964.a, A002325, A002325.P14825616568919519912.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A188170, A188170.P7143844993511574485.f1, A188170.P7143844993511574485.a, A188171, A188171.P17289095504074848112.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A002654, A002654.P11574922253888480122.a, A122046, A122046.P14111764381793131601.a, A253513, A253513.P7768194327896133816.a, A001826, A001826.P1518250824516108745.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188172

/-! ## A188172.P3980200347470981964

`∑{d}[n+1, C(#, 7)%2]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188172

/-- `∑{d}[n+1, C(#, 7)%2]` -/
def P3980200347470981964.Spec : Prop :=
  ∀ n, (P3980200347470981964.a n : ℤ) = A188172 (n + 1)

theorem P3980200347470981964.correct : P3980200347470981964.Spec := by
  intro n
  simp only [A188172, Nat.add_sub_cancel]

end A188172

/-! ## A188172.P1885835288505878203

`∑{d}[n+1, C(#, or(7, #))]`
-/

namespace A188172.P1885835288505878203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose d (Nat.lor 7 d)

end

end A188172.P1885835288505878203

namespace A188172

/-- `∑{d}[n+1, C(#, or(7, #))]` -/
def P1885835288505878203.Spec : Prop :=
  ∀ n, (P1885835288505878203.a n : ℤ) = A188172 (n + 1)

end A188172

/-! ## A188172.P2252928064181679718

`∑{d}[n+1, A253513(#+1)]`
-/

namespace A188172.P2252928064181679718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A253513 (d + 1)

end

end A188172.P2252928064181679718

namespace A188172

/-- `∑{d}[n+1, A253513(#+1)]` -/
def P2252928064181679718.Spec : Prop :=
  ∀ n, P2252928064181679718.a n = A188172 (n + 1)

end A188172

/-! ## A188172.P1954892468615268676

`∑{d}[(n+1)/2^val(n+1, 2), A072401(#)]`
-/

namespace A188172.P1954892468615268676
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A072401 d

end

end A188172.P1954892468615268676

namespace A188172

/-- `∑{d}[(n+1)/2^val(n+1, 2), A072401(#)]` -/
def P1954892468615268676.Spec : Prop :=
  ∀ n, P1954892468615268676.a n = A188172 (n + 1)

end A188172

/-! ## A188172.P6179255798986841404

`A001842(n+1)-A188170(n+1)`
-/

namespace A188172.P6179255798986841404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (n + 1) - A188170 (n + 1)

end

end A188172.P6179255798986841404

namespace A188172

/-- `A001842(n+1)-A188170(n+1)` -/
def P6179255798986841404.Spec : Prop :=
  ∀ n, P6179255798986841404.a n = A188172 (n + 1)

end A188172

/-! ## A188172.P17374010712088015013

`A188170(n+1)-A364032(n+1)`
-/

namespace A188172.P17374010712088015013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (n + 1) - A364032 (n + 1)

end

end A188172.P17374010712088015013

namespace A188172

/-- `A188170(n+1)-A364032(n+1)` -/
def P17374010712088015013.Spec : Prop :=
  ∀ n, P17374010712088015013.a n = A188172 (n + 1)

end A188172

/-! ## A188172.P8476605824830364383

`A001227(n+1)-(A188170(n+1)+A001826(n+1))`
-/

namespace A188172.P8476605824830364383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - (A188170 (n + 1) + A001826 (n + 1))

end

end A188172.P8476605824830364383

namespace A188172

/-- `A001227(n+1)-(A188170(n+1)+A001826(n+1))` -/
def P8476605824830364383.Spec : Prop :=
  ∀ n, P8476605824830364383.a n = A188172 (n + 1)

end A188172

/-! ## A188172.P14508548157285574602

`∑{d}[n+1, A014025(#+1)²]`
-/

namespace A188172.P14508548157285574602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A014025 (d + 1) ^ 2

end

end A188172.P14508548157285574602

namespace A188172

/-- `∑{d}[n+1, A014025(#+1)²]` -/
def P14508548157285574602.Spec : Prop :=
  ∀ n, P14508548157285574602.a n = A188172 (n + 1)

end A188172

/-! ## A188172.P15823639360695910477

`A293513(2*(n+1))-A188170(n+1)`
-/

namespace A188172.P15823639360695910477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (2 * (n + 1)) - A188170 (n + 1)

end

end A188172.P15823639360695910477

namespace A188172

/-- `A293513(2*(n+1))-A188170(n+1)` -/
def P15823639360695910477.Spec : Prop :=
  ∀ n, P15823639360695910477.a n = A188172 (n + 1)

end A188172

/-!
# A188173: Squarefree numbers m such that the equation x^2 == m (mod 10^k) has solutions for all k > 0.

The programs for A188173, there is no canonical definition to state claims against.
-/

/-! ## A188173.P16519530243779260198

`record[∏{p}[A241081(n+1), #]]`
-/

namespace A188173.P16519530243779260198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241081 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188173.P16519530243779260198

/-! ## A188173.P1135784273646698601

`record[A007913(A241081(n+1))]`
-/

namespace A188173.P1135784273646698601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A241081 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188173.P1135784273646698601

/-! ## A188173.P12219418441538292847

`filter[A241081(n+1), A008966(#)]`
-/

namespace A188173.P12219418441538292847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A188173.P12219418441538292847

/-! ## A188173.P734600359032384862

`filter[A241081(n+1), A181183(#)]`
-/

namespace A188173.P734600359032384862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A188173.P734600359032384862

/-! ## A188173.P1549529881550526651

`filter[A241081(n+1), A290098(#)]`
-/

namespace A188173.P1549529881550526651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A188173.P1549529881550526651

/-!
# A188174: Number of strictly increasing arrangements of n numbers in -(2n-2)..(2n-2) with sum zero.

The programs for A188174, there is no canonical definition to state claims against.
-/

/-! ## A188174.P7800001206435315637

`A188181(∑[4*n]+1)`
-/

namespace A188174.P7800001206435315637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188174.P7800001206435315637

/-! ## A188174.P3688126567568295704

`record[A188181(A266723(n))]`
-/

namespace A188174.P3688126567568295704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (A266723 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188174.P3688126567568295704

/-! ## A188174.P4182215216503685052

`record[A188181(∑[A266722(n)])]`
-/

namespace A188174.P4182215216503685052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188174.P4182215216503685052

/-! ## A188174.P11723598495018087718

`record[A188181(Δ[A235355(n)])]`
-/

namespace A188174.P11723598495018087718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188174.P11723598495018087718

/-! ## A188174.P11505645263409154811

`record[A188181(A330613(n+1))]`
-/

namespace A188174.P11505645263409154811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188174.P11505645263409154811

/-!
# A188175: Number of strictly increasing arrangements of n numbers in -(n+1)..(n+1) with sum zero.

The programs for A188175, there is no canonical definition to state claims against.
-/

/-! ## A188175.P5278630602245111349

`A046919(n+4)`
-/

namespace A188175.P5278630602245111349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046919 (n + 4)

end

end A188175.P5278630602245111349

/-! ## A188175.P12061273247306836914

`Δ[Δ[A210726(n+2)]]`
-/

namespace A188175.P12061273247306836914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210726 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188175.P12061273247306836914

/-! ## A188175.P14122133603554685724

`A188181(∑[n+3]+1)`
-/

namespace A188175.P14122133603554685724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188175.P14122133603554685724

/-! ## A188175.P8963259449533820719

`A201503((n+1)²+(n+3)²)`
-/

namespace A188175.P8963259449533820719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A188175.P8963259449533820719

/-! ## A188175.P9967734505786312325

`A188122(A141214(n))+A188116(n+1)`
-/

namespace A188175.P9967734505786312325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188122 (A141214 n).toNat + A188116 (n + 1)

end

end A188175.P9967734505786312325

/-!
# A188176: Number of strictly increasing arrangements of n numbers in -(n+2)..(n+2) with sum zero.

The programs for A188176, there is no canonical definition to state claims against.
-/

/-! ## A188176.P11136986948893121885

`A188181(∑[n+4]+3)`
-/

namespace A188176.P11136986948893121885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A188176.P11136986948893121885

/-! ## A188176.P7053749249125031892

`record[A188181(A019304(n))]`
-/

namespace A188176.P7053749249125031892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188176.P7053749249125031892

/-! ## A188176.P373237551151316439

`A201503(A004275((n+3)²))`
-/

namespace A188176.P373237551151316439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A004275 ((n + 3) ^ 2)).toNat

end

end A188176.P373237551151316439

/-! ## A188176.P6751805754419023502

`A201503(A001105(n+3)-2)`
-/

namespace A188176.P6751805754419023502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A001105 (n + 3) - 2).toNat

end

end A188176.P6751805754419023502

/-! ## A188176.P16018750492236641226

`A201503(A184636(n+3)-2)`
-/

namespace A188176.P16018750492236641226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A184636 (n + 3) - 2).toNat

end

end A188176.P16018750492236641226

/-!
# A188177: Number of strictly increasing arrangements of n numbers in -(n+3)..(n+3) with sum zero.

The programs for A188177, there is no canonical definition to state claims against.
-/

/-! ## A188177.P4454877298747194582

`A188181(∑[n+5]+6)`
-/

namespace A188177.P4454877298747194582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A188177.P4454877298747194582

/-! ## A188177.P4598827937440437209

`A201503(A014105(n+4)-n)`
-/

namespace A188177.P4598827937440437209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A014105 (n + 4) - (n : ℤ)).toNat

end

end A188177.P4598827937440437209

/-! ## A188177.P4746018836278732362

`A188181(Δ[A023545(n+1)])+char[28]`
-/

namespace A188177.P4746018836278732362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A188177.P4746018836278732362

/-! ## A188177.P752749981857975489

`A188181(A060577(n+4))+A185284(n)`
-/

namespace A188177.P752749981857975489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (A060577 (n + 4)).toNat + A185284 n

end

end A188177.P752749981857975489

/-! ## A188177.P17442203382367822776

`or(A000007(n), A188181(A060577(n+4)))`
-/

namespace A188177.P17442203382367822776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A188181 (A060577 (n + 4)).toNat)

end

end A188177.P17442203382367822776

/-!
# A188178: Number of strictly increasing arrangements of n numbers in -(n+4)..(n+4) with sum zero.

The programs for A188178, there is no canonical definition to state claims against.
-/

/-! ## A188178.P15211865824091929271

`A188181(∑[n+6]+10)`
-/

namespace A188178.P15211865824091929271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A188178.P15211865824091929271

/-! ## A188178.P8056354421825859176

`record[A201503(or(5, A184636(n+1)))]`
-/

namespace A188178.P8056354421825859176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (Int.lor 5 (A184636 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188178.P8056354421825859176

/-! ## A188178.P16815849735741737088

`A201503(A374011(2*n+1)-n)`
-/

namespace A188178.P16815849735741737088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A374011 (2 * n + 1) - (n : ℤ)).toNat

end

end A188178.P16815849735741737088

/-! ## A188178.P15385703995609469364

`or(char[2], A188181(A046691(n+4)-1))`
-/

namespace A188178.P15385703995609469364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A188181 (A046691 (n + 4) - 1).toNat)

end

end A188178.P15385703995609469364

/-! ## A188178.P4643937824262888611

`A007318(C(2, n))*A188181(A046691(n+4)-1)`
-/

namespace A188178.P4643937824262888611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A188181 (A046691 (n + 4) - 1).toNat

end

end A188178.P4643937824262888611

/-!
# A188179: Number of strictly increasing arrangements of n numbers in -(n+5)..(n+5) with sum zero.

The programs for A188179, there is no canonical definition to state claims against.
-/

/-! ## A188179.P12781583986813690478

`A188181(A055999(n+4))`
-/

namespace A188179.P12781583986813690478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (A055999 (n + 4)).toNat

end

end A188179.P12781583986813690478

/-! ## A188179.P8727223620132478428

`A188181(eq[4, A219347(n)])`
-/

namespace A188179.P8727223620132478428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188179.P8727223620132478428

/-! ## A188179.P7872245250078415541

`A188181(eq[6, A193592(n)])`
-/

namespace A188179.P7872245250078415541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188179.P7872245250078415541

/-! ## A188179.P17045353861332635698

`A188181(Δ[A023551(n+2)])`
-/

namespace A188179.P17045353861332635698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (f1 (n + 1) - f1 n).toNat

end

end A188179.P17045353861332635698

/-! ## A188179.P10052802076191339726

`A188181(A027379(n+5)-3)`
-/

namespace A188179.P10052802076191339726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (A027379 (n + 5) - 3).toNat

end

end A188179.P10052802076191339726

/-!
# A188180: Number of strictly increasing arrangements of n numbers in -(n+6)..(n+6) with sum zero.

The programs for A188180, there is no canonical definition to state claims against.
-/

/-! ## A188180.P7361619418564027127

`A188181(eq[7, A193592(n)])`
-/

namespace A188180.P7361619418564027127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188180.P7361619418564027127

/-! ## A188180.P15585923443292164083

`A201503(A020742((n+7)²))`
-/

namespace A188180.P15585923443292164083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A020742 ((n + 7) ^ 2)).toNat

end

end A188180.P15585923443292164083

/-! ## A188180.P16527815730836033217

`A188181(A055999(n+5)-1)`
-/

namespace A188180.P16527815730836033217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (A055999 (n + 5) - 1).toNat

end

end A188180.P16527815730836033217

/-! ## A188180.P15759176887760706898

`A188181(A046691(n+6)-3)`
-/

namespace A188180.P15759176887760706898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (A046691 (n + 6) - 3).toNat

end

end A188180.P15759176887760706898

/-! ## A188180.P11076477682964932574

`A188181(A000096(n+7)-6)`
-/

namespace A188180.P11076477682964932574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (A000096 (n + 7) - 6).toNat

end

end A188180.P11076477682964932574

/-!
# A188181: T(n,k) is the number of strictly increasing arrangements of n numbers in -(n+k-2)..(n+k-2) with sum zero.

The programs for A188181, there is no canonical definition to state claims against.
-/

/-! ## A188181.P10951771129345802909

`A047997(n+1-A003056(n+1)%(n+1))`
-/

namespace A188181.P10951771129345802909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047997 ((n + 1 : ℤ) - Int.tmod (A003056 (n + 1)) (n + 1 : ℤ)).toNat

end

end A188181.P10951771129345802909

/-! ## A188181.P15172070739212874318

`A067059(A341706(n-Δ[A193592(n)]))`
-/

namespace A188181.P15172070739212874318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (A341706 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat).toNat

end

end A188181.P15172070739212874318

/-! ## A188181.P11416763251267898298

`A067059(A341706(n+1))`
-/

namespace A188181.P11416763251267898298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (A341706 (n + 1)).toNat

end

end A188181.P11416763251267898298

/-! ## A188181.P7562448227136082737

`A067059(record[A341706(n)%A027379(n)])`
-/

namespace A188181.P7562448227136082737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341706 n) (A027379 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188181.P7562448227136082737

/-! ## A188181.P7266750935062215957

`A067059(A185869(n+1)-A002262(n))`
-/

namespace A188181.P7266750935062215957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (A185869 (n + 1) - A002262 n).toNat

end

end A188181.P7266750935062215957

/-! ## A188181.P1569713149283277639

`A067059(A185870(n+1)-A002260(n+1))`
-/

namespace A188181.P1569713149283277639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (A185870 (n + 1) - A002260 (n + 1)).toNat

end

end A188181.P1569713149283277639

/-!
# A188182: Number of strictly increasing arrangements of 4 numbers in -(n+2)..(n+2) with sum zero.

The programs for A188182, the canonical program `A188182.P4038164343130138337` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188182 has offset 1).

The definition of A188182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188182.P4038164343130138337

`∑[ceil(C(2*n+5, 2)/3)]+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188182

/-- `∑[ceil(C(2*n+5, 2)/3)]+1` -/
def P4038164343130138337.Spec : Prop :=
  ∀ n, P4038164343130138337.a n = A188182 (n + 1)

theorem P4038164343130138337.correct : P4038164343130138337.Spec := by
  intro n
  simp only [A188182, Nat.add_sub_cancel]

end A188182

/-! ## A188182.P8580755119879800258

`∑[floor((2*n+3)*(n+3)/3)+1]+1`
-/

namespace A188182.P8580755119879800258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 3) * (n + 3) : ℚ) / 3⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A188182.P8580755119879800258

namespace A188182

/-- `∑[floor((2*n+3)*(n+3)/3)+1]+1` -/
def P8580755119879800258.Spec : Prop :=
  ∀ n, P8580755119879800258.a n = A188182 (n + 1)

end A188182

/-! ## A188182.P7793452315244134073

`Δ[A377067(Δ[n²])]`
-/

namespace A188182.P7793452315244134073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377067 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188182.P7793452315244134073

namespace A188182

/-- `Δ[A377067(Δ[n²])]` -/
def P7793452315244134073.Spec : Prop :=
  ∀ n, P7793452315244134073.a n = A188182 (n + 1)

end A188182

/-! ## A188182.P16056078740002366289

`A001973(2*n+3)`
-/

namespace A188182.P16056078740002366289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (2 * n + 3)

end

end A188182.P16056078740002366289

namespace A188182

/-- `A001973(2*n+3)` -/
def P16056078740002366289.Spec : Prop :=
  ∀ n, P16056078740002366289.a n = A188182 (n + 1)

end A188182

/-! ## A188182.P9802586020786960204

`record[A001973(xor(1, n+2))]`
-/

namespace A188182.P9802586020786960204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (Nat.xor 1 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188182.P9802586020786960204

namespace A188182

/-- `record[A001973(xor(1, n+2))]` -/
def P9802586020786960204.Spec : Prop :=
  ∀ n, P9802586020786960204.a n = A188182 (n + 1)

end A188182

/-! ## A188182.P12567439737014856083

`record[A001973(A165754(n))]`
-/

namespace A188182.P12567439737014856083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (A165754 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188182.P12567439737014856083

namespace A188182

/-- `record[A001973(A165754(n))]` -/
def P12567439737014856083.Spec : Prop :=
  ∀ n, P12567439737014856083.a n = A188182 (n + 1)

end A188182

/-! ## A188182.P9344022380219410437

`record[A001973(A000265(n+3))]`
-/

namespace A188182.P9344022380219410437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (A000265 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188182.P9344022380219410437

namespace A188182

/-- `record[A001973(A000265(n+3))]` -/
def P9344022380219410437.Spec : Prop :=
  ∀ n, P9344022380219410437.a n = A188182 (n + 1)

end A188182

/-! ## A188182.P8251491194977418054

`record[A001973(Δ[A001318(n+2)])]`
-/

namespace A188182.P8251491194977418054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188182.P8251491194977418054

namespace A188182

/-- `record[A001973(Δ[A001318(n+2)])]` -/
def P8251491194977418054.Spec : Prop :=
  ∀ n, P8251491194977418054.a n = A188182 (n + 1)

end A188182

/-! ## A188182.P13239882616251976334

`A026924(4*n+10)`
-/

namespace A188182.P13239882616251976334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026924 (4 * n + 10)

end

end A188182.P13239882616251976334

namespace A188182

/-- `A026924(4*n+10)` -/
def P13239882616251976334.Spec : Prop :=
  ∀ n, P13239882616251976334.a n = A188182 (n + 1)

end A188182

/-! ## A188182.P9521919913425363540

`A062890(4*n+10)`
-/

namespace A188182.P9521919913425363540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062890 (4 * n + 10)

end

end A188182.P9521919913425363540

namespace A188182

/-- `A062890(4*n+10)` -/
def P9521919913425363540.Spec : Prop :=
  ∀ n, P9521919913425363540.a n = A188182 (n + 1)

end A188182

/-!
# A188183: Number of strictly increasing arrangements of 5 numbers in -(n+3)..(n+3) with sum zero.

The programs for A188183, there is no canonical definition to state claims against.
-/

/-! ## A188183.P8585090033519023423

`A188124(n+1)+A188123(n+2)`
-/

namespace A188183.P8585090033519023423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188124 (n + 1) + A188123 (n + 2)

end

end A188183.P8585090033519023423

/-! ## A188183.P16350076891094046773

`A201501(2*(n+2))`
-/

namespace A188183.P16350076891094046773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201501 (2 * (n + 2))

end

end A188183.P16350076891094046773

/-! ## A188183.P5229879132830563008

`A001975(2*(n+2))`
-/

namespace A188183.P5229879132830563008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001975 (2 * (n + 2))

end

end A188183.P5229879132830563008

/-! ## A188183.P4285031787657882419

`record[A001975(and(n, n+1)+4)]`
-/

namespace A188183.P4285031787657882419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001975 (Nat.land n (n + 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188183.P4285031787657882419

/-! ## A188183.P4747460732559494032

`record[A001975((n+3)/gcd(2, n+1)+1)]`
-/

namespace A188183.P4747460732559494032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001975 (SequenceMachineLib.roundAway ((n + 3 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188183.P4747460732559494032

/-! ## A188183.P11912344553508319227

`record[C(A001975(n+4), (3^(n%2))%3)]`
-/

namespace A188183.P11912344553508319227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001975 (n + 4)).toNat (3 ^ (n % 2) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188183.P11912344553508319227

/-! ## A188183.P10105615802842856179

`record[A001975(A014681(n+3))]`
-/

namespace A188183.P10105615802842856179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001975 (A014681 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188183.P10105615802842856179

/-! ## A188183.P2054990103522557935

`record[A001975(A133265(n+3))]`
-/

namespace A188183.P2054990103522557935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001975 (A133265 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188183.P2054990103522557935

/-! ## A188183.P14283534476928163433

`lcm(A001975(A103517(n+1)), A033999(n))`
-/

namespace A188183.P14283534476928163433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001975 (A103517 (n + 1)).toNat) (A033999 n)

end

end A188183.P14283534476928163433

/-!
# A188184: Number of strictly increasing arrangements of 6 numbers in -(n+4)..(n+4) with sum zero.

The programs for A188184, there is no canonical definition to state claims against.
-/

/-! ## A188184.P17897031686110986912

`A188125(n+1)+A188124(n+2)`
-/

namespace A188184.P17897031686110986912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188125 (n + 1) + A188124 (n + 2)

end

end A188184.P17897031686110986912

/-! ## A188184.P7910285386902188214

`A001977(2*n+5)`
-/

namespace A188184.P7910285386902188214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001977 (2 * n + 5)

end

end A188184.P7910285386902188214

/-! ## A188184.P14789675387236181389

`record[A001977(A004442(n+4))]`
-/

namespace A188184.P14789675387236181389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001977 (A004442 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188184.P14789675387236181389

/-! ## A188184.P17048778555249727555

`record[A001977(A000265(n+5))]`
-/

namespace A188184.P17048778555249727555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001977 (A000265 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188184.P17048778555249727555

/-! ## A188184.P17204711851128887080

`record[A001977(A026741(n+5))]`
-/

namespace A188184.P17204711851128887080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001977 (A026741 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188184.P17204711851128887080

/-! ## A188184.P13695276848484055949

`lcm((-1)^n, A001977(A004273(n+3)))`
-/

namespace A188184.P13695276848484055949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A001977 (A004273 (n + 3)).toNat)

end

end A188184.P13695276848484055949

/-! ## A188184.P7061030262438401751

`A001977(A004273(n+3))+A000007(n+1)`
-/

namespace A188184.P7061030262438401751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001977 (A004273 (n + 3)).toNat + A000007 (n + 1)

end

end A188184.P7061030262438401751

/-! ## A188184.P11687484592089477597

`A001977(A004273(n+3))/A007318(C(2, n))`
-/

namespace A188184.P11687484592089477597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001977 (A004273 (n + 3)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A188184.P11687484592089477597

/-! ## A188184.P11514072098177040023

`A001977(A004273(n+3))/(n-A023443(n))`
-/

namespace A188184.P11514072098177040023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001977 (A004273 (n + 3)).toNat : ℚ) / ((n : ℤ) - A023443 n : ℚ)

end

end A188184.P11514072098177040023

/-! ## A188184.P7479252039333275921

`A001977(A004273(n+3))/A014963(A298026(n))`
-/

namespace A188184.P7479252039333275921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001977 (A004273 (n + 3)).toNat : ℚ) / (A014963 (A298026 n).toNat : ℚ)

end

end A188184.P7479252039333275921

/-! ## A188184.P5203810288306019211

`A001977(A004273(n+3))%A250691(n+1)`
-/

namespace A188184.P5203810288306019211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001977 (A004273 (n + 3)).toNat) (A250691 (n + 1))

end

end A188184.P5203810288306019211

/-!
# A188185: Number of strictly increasing arrangements of 7 numbers in -(n+5)..(n+5) with sum zero.

The programs for A188185, there is no canonical definition to state claims against.
-/

/-! ## A188185.P5325385992455288408

`A188126(n+1)+A188125(n+2)`
-/

namespace A188185.P5325385992455288408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188126 (n + 1) + A188125 (n + 2)

end

end A188185.P5325385992455288408

/-! ## A188185.P10464762069441334414

`A201502(2*(n+3))`
-/

namespace A188185.P10464762069441334414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201502 (2 * (n + 3))

end

end A188185.P10464762069441334414

/-! ## A188185.P14254688078005745731

`A001979(2*(n+3))`
-/

namespace A188185.P14254688078005745731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001979 (2 * (n + 3))

end

end A188185.P14254688078005745731

/-! ## A188185.P519247304050656023

`record[A001979(xor(1, n)+5)]`
-/

namespace A188185.P519247304050656023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001979 (Nat.xor 1 n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188185.P519247304050656023

/-! ## A188185.P16777579356059481645

`record[A001979(A065166(n+1))]`
-/

namespace A188185.P16777579356059481645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001979 (A065166 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188185.P16777579356059481645

/-! ## A188185.P14092118253736933877

`or(char[1], A001979(A005843(n+3)))`
-/

namespace A188185.P14092118253736933877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001979 (A005843 (n + 3)).toNat)

end

end A188185.P14092118253736933877

/-! ## A188185.P5762104960705324970

`record[gcd(A001979(n+6), A035363(n+15))]`
-/

namespace A188185.P5762104960705324970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001979 (n + 6)) (A035363 (n + 15))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188185.P5762104960705324970

/-! ## A188185.P9711547201215388781

`A001979(A005843(n+3))/A033999(n)²`
-/

namespace A188185.P9711547201215388781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001979 (A005843 (n + 3)).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A188185.P9711547201215388781

/-! ## A188185.P12220653310424664378

`A001979(A005843(n+3))+char[A017489(n)]`
-/

namespace A188185.P12220653310424664378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017489 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001979 (A005843 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A188185.P12220653310424664378

/-! ## A188185.P15200002246459235392

`lcm(A000007(n)+1, A001979(A005843(n+3)))`
-/

namespace A188185.P15200002246459235392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000007 n + 1) (A001979 (A005843 (n + 3)).toNat)

end

end A188185.P15200002246459235392

/-! ## A188185.P1070387797828934663

`A001979(A005843(n+3))+char[A000108(n+14)]`
-/

namespace A188185.P1070387797828934663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 14)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001979 (A005843 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A188185.P1070387797828934663

/-! ## A188185.P7228780384708745775

`A001979(A005843(n+3))/A000041(C(2, n+2))`
-/

namespace A188185.P7228780384708745775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001979 (A005843 (n + 3)).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A188185.P7228780384708745775

/-! ## A188185.P12546209762806356626

`A001979(A005843(n+3))/A000108(C(2, n+2))`
-/

namespace A188185.P12546209762806356626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001979 (A005843 (n + 3)).toNat : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A188185.P12546209762806356626

/-! ## A188185.P12057562031407960516

`A001979(A005843(n+3))/A000041(round(n/(n+2)))`
-/

namespace A188185.P12057562031407960516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001979 (A005843 (n + 3)).toNat : ℚ) / (A000041 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 2 : ℚ))).toNat : ℚ)

end

end A188185.P12057562031407960516

/-! ## A188185.P10466964711692690494

`record[A001979(A196020(n+1)+5)]`
-/

namespace A188185.P10466964711692690494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001979 (A196020 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188185.P10466964711692690494

/-!
# A188186: Number of strictly increasing arrangements of 8 numbers in -(n+6)..(n+6) with sum zero.

The programs for A188186, there is no canonical definition to state claims against.
-/

/-! ## A188186.P4417698362585591808

`A188127(n+1)+A188126(n+2)`
-/

namespace A188186.P4417698362585591808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188127 (n + 1) + A188126 (n + 2)

end

end A188186.P4417698362585591808

/-! ## A188186.P3786061973549228851

`A001981(2*n+7)`
-/

namespace A188186.P3786061973549228851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001981 (2 * n + 7)

end

end A188186.P3786061973549228851

/-! ## A188186.P4402904292949577041

`record[A001981(xor(1, n+6))]`
-/

namespace A188186.P4402904292949577041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001981 (Nat.xor 1 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188186.P4402904292949577041

/-! ## A188186.P9364844965708541981

`record[A001981(A000265(n+7))]`
-/

namespace A188186.P9364844965708541981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001981 (A000265 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188186.P9364844965708541981

/-! ## A188186.P17530637520236725874

`or(char[5], A001981(A020742(n)))`
-/

namespace A188186.P17530637520236725874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001981 (A020742 n).toNat)

end

end A188186.P17530637520236725874

/-! ## A188186.P12401490203953175365

`record[gcd(A001981(n+7), A035363(n+15))]`
-/

namespace A188186.P12401490203953175365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001981 (n + 7)) (A035363 (n + 15))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188186.P12401490203953175365

/-! ## A188186.P13090519358353273561

`char[A173517(n)]*A001981(A020742(n))`
-/

namespace A188186.P13090519358353273561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A001981 (A020742 n).toNat

end

end A188186.P13090519358353273561

/-! ## A188186.P4249516201548423809

`A001981(A020742(n))+A000007(n+1)`
-/

namespace A188186.P4249516201548423809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001981 (A020742 n).toNat + A000007 (n + 1)

end

end A188186.P4249516201548423809

/-! ## A188186.P8760523767303722745

`A007318(C(2, n))*A001981(A020742(n))`
-/

namespace A188186.P8760523767303722745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A001981 (A020742 n).toNat

end

end A188186.P8760523767303722745

/-! ## A188186.P16519280106050690331

`A001981(A020742(n))^abs(-1%A000040(n+1))`
-/

namespace A188186.P16519280106050690331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001981 (A020742 n).toNat : ℚ) ^ (|Int.tmod (-1) (A000040 (n + 1))| : ℤ)

end

end A188186.P16519280106050690331

/-! ## A188186.P18038638583145050751

`A001981(A020742(n))*A057427(A348553(n))`
-/

namespace A188186.P18038638583145050751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001981 (A020742 n).toNat * A057427 (A348553 n).toNat

end

end A188186.P18038638583145050751

/-! ## A188186.P6663049660566637571

`A173517(A000188(n+1)²)+A001981(A020742(n))`
-/

namespace A188186.P6663049660566637571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 (A000188 (n + 1) ^ 2).toNat + A001981 (A020742 n).toNat

end

end A188186.P6663049660566637571

/-! ## A188186.P10649997357310722020

`A010051(∑[n+4])+A001981(A020742(n))`
-/

namespace A188186.P10649997357310722020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (∑ j ∈ Finset.range (n + 1), f1 j) + A001981 (A020742 n).toNat

end

end A188186.P10649997357310722020

/-!
# A188187: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(5), k=1, [ ]=floor.

The programs for A188187, the canonical program `A188187.P4964063636311275739` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188187 has offset 1).

The definition of A188187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188187.P13713378619366029361

`Δ[floor(n/ϕ^3)]`
-/

namespace A188187.P13713378619366029361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio ^ 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188187.P13713378619366029361

namespace A188187

/-- `Δ[floor(n/ϕ^3)]` -/
def P13713378619366029361.Spec : Prop :=
  ∀ n, P13713378619366029361.a n = A188187 (n + 1)

end A188187

/-! ## A188187.P15873761336890624723

`Δ[floor(n*sqrt(5))]%2`
-/

namespace A188187.P15873761336890624723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A188187.P15873761336890624723

namespace A188187

/-- `Δ[floor(n*sqrt(5))]%2` -/
def P15873761336890624723.Spec : Prop :=
  ∀ n, P15873761336890624723.a n = A188187 (n + 1)

end A188187

/-! ## A188187.P5670141109789983610

`val(Δ[floor(n*sqrt(5))], 3)`
-/

namespace A188187.P5670141109789983610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 3

end

end A188187.P5670141109789983610

namespace A188187

/-- `val(Δ[floor(n*sqrt(5))], 3)` -/
def P5670141109789983610.Spec : Prop :=
  ∀ n, (P5670141109789983610.a n : ℤ) = A188187 (n + 1)

end A188187

/-! ## A188187.P17913687886560652571

`and(1, Δ[floor(n*sqrt(5))])`
-/

namespace A188187.P17913687886560652571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A188187.P17913687886560652571

namespace A188187

/-- `and(1, Δ[floor(n*sqrt(5))])` -/
def P17913687886560652571.Spec : Prop :=
  ∀ n, P17913687886560652571.a n = A188187 (n + 1)

end A188187

/-! ## A188187.P16454894606720033949

`C(Δ[floor(n*sqrt(5))], 3)`
-/

namespace A188187.P16454894606720033949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 3

end

end A188187.P16454894606720033949

namespace A188187

/-- `C(Δ[floor(n*sqrt(5))], 3)` -/
def P16454894606720033949.Spec : Prop :=
  ∀ n, (P16454894606720033949.a n : ℤ) = A188187 (n + 1)

end A188187

/-! ## A188187.P11566687734745533554

`xor(2, Δ[floor(n*sqrt(5))])`
-/

namespace A188187.P11566687734745533554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f1 (n + 1) - f1 n)

end

end A188187.P11566687734745533554

namespace A188187

/-- `xor(2, Δ[floor(n*sqrt(5))])` -/
def P11566687734745533554.Spec : Prop :=
  ∀ n, P11566687734745533554.a n = A188187 (n + 1)

end A188187

/-! ## A188187.P13681174841598505374

`Δ[floor(2*n/ϕ)]!-1`
-/

namespace A188187.P13681174841598505374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℝ) / Real.goldenRatio)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) - 1

end

end A188187.P13681174841598505374

namespace A188187

/-- `Δ[floor(2*n/ϕ)]!-1` -/
def P13681174841598505374.Spec : Prop :=
  ∀ n, P13681174841598505374.a n = A188187 (n + 1)

end A188187

/-! ## A188187.P4459058117943722197

`gcd(2, Δ[floor(2*ϕ*n)])-1`
-/

namespace A188187.P4459058117943722197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.goldenRatio * (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (f1 (n + 1) - f1 n) : ℤ) - 1

end

end A188187.P4459058117943722197

namespace A188187

/-- `gcd(2, Δ[floor(2*ϕ*n)])-1` -/
def P4459058117943722197.Spec : Prop :=
  ∀ n, P4459058117943722197.a n = A188187 (n + 1)

end A188187

/-! ## A188187.P15124303209139930652

`Δ[floor(lcm(2, 2*n)/ϕ)]-1`
-/

namespace A188187.P15124303209139930652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 (2 * n) : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A188187.P15124303209139930652

namespace A188187

/-- `Δ[floor(lcm(2, 2*n)/ϕ)]-1` -/
def P15124303209139930652.Spec : Prop :=
  ∀ n, P15124303209139930652.a n = A188187 (n + 1)

end A188187

/-! ## A188187.P17530253213861137828

`1-and(1, Δ[floor(ϕ*2*n)])`
-/

namespace A188187.P17530253213861137828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (2 * n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 1 (f1 (n + 1) - f1 n)

end

end A188187.P17530253213861137828

namespace A188187

/-- `1-and(1, Δ[floor(ϕ*2*n)])` -/
def P17530253213861137828.Spec : Prop :=
  ∀ n, P17530253213861137828.a n = A188187 (n + 1)

end A188187

/-! ## A188187.P12565712478651982149

`and(2, Δ[floor(2*n/ϕ)])/2`
-/

namespace A188187.P12565712478651982149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℝ) / Real.goldenRatio)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A188187.P12565712478651982149

namespace A188187

/-- `and(2, Δ[floor(2*n/ϕ)])/2` -/
def P12565712478651982149.Spec : Prop :=
  ∀ n, P12565712478651982149.a n = (A188187 (n + 1) : ℚ)

end A188187

/-! ## A188187.P4964063636311275739

`A081147(n)-2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188187

/-- `A081147(n)-2` -/
def P4964063636311275739.Spec : Prop :=
  ∀ n, P4964063636311275739.a n = A188187 (n + 1)

theorem P4964063636311275739.correct : P4964063636311275739.Spec := by
  intro n
  simp only [A188187, Nat.add_sub_cancel]

end A188187

/-! ## A188187.P3865904677066174682

`1-Δ[A195172(n)]`
-/

namespace A188187.P3865904677066174682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A188187.P3865904677066174682

namespace A188187

/-- `1-Δ[A195172(n)]` -/
def P3865904677066174682.Spec : Prop :=
  ∀ n, P3865904677066174682.a n = A188187 (n + 1)

end A188187

/-! ## A188187.P4704517415924636444

`2-Δ[A195173(n)]`
-/

namespace A188187.P4704517415924636444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A188187.P4704517415924636444

namespace A188187

/-- `2-Δ[A195173(n)]` -/
def P4704517415924636444.Spec : Prop :=
  ∀ n, P4704517415924636444.a n = A188187 (n + 1)

end A188187

/-! ## A188187.P14018621665427073889

`Δ[A276854(n)]-3`
-/

namespace A188187.P14018621665427073889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A188187.P14018621665427073889

namespace A188187

/-- `Δ[A276854(n)]-3` -/
def P14018621665427073889.Spec : Prop :=
  ∀ n, P14018621665427073889.a n = A188187 (n + 1)

end A188187

/-! ## A188187.P4737360378266325053

`char[A004976(n+1)]`
-/

namespace A188187.P4737360378266325053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188187.P4737360378266325053

namespace A188187

/-- `char[A004976(n+1)]` -/
def P4737360378266325053.Spec : Prop :=
  ∀ n, (P4737360378266325053.a n : ℤ) = A188187 (n + 1)

end A188187

/-! ## A188187.P14847475304898948958

`char[A004958(n)-1]`
-/

namespace A188187.P14847475304898948958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188187.P14847475304898948958

namespace A188187

/-- `char[A004958(n)-1]` -/
def P14847475304898948958.Spec : Prop :=
  ∀ n, (P14847475304898948958.a n : ℤ) = A188187 (n + 1)

end A188187

/-! ## A188187.P16246083586291126379

`A276863(n+1)-3`
-/

namespace A188187.P16246083586291126379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276863 (n + 1) - 3

end

end A188187.P16246083586291126379

namespace A188187

/-- `A276863(n+1)-3` -/
def P16246083586291126379.Spec : Prop :=
  ∀ n, P16246083586291126379.a n = A188187 (n + 1)

theorem P16246083586291126379.correct : P16246083586291126379.Spec := by
  intro n
  simp only [A188187, Nat.add_sub_cancel, A188187.P16246083586291126379.a, A188187.P4964063636311275739.a, A081147, A081147.P562166116975668183.a, A276863, A276863.P5985261516785406471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A188187

/-!
# A188188: Positions of 0 in A188187; complement of A004958.

The programs for A188188, the canonical program `A188188.P12443416094707849401` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188188 has offset 1).

The definition of A188188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188188.P13638726263125136167

`comp[ceil(n*ϕ^3)]`
-/

namespace A188188.P13638726263125136167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 3⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188188.P13638726263125136167

namespace A188188

/-- `comp[ceil(n*ϕ^3)]` -/
def P13638726263125136167.Spec : Prop :=
  ∀ n, (P13638726263125136167.a n : ℤ) = A188188 (n + 1)

end A188188

/-! ## A188188.P7140287150126537516

`ceil((ϕ/sinh(acot(n))+n)/2)`
-/

namespace A188188.P7140287150126537516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.goldenRatio / Real.sinh (SequenceMachineLib.acot (n : ℝ)) + (n : ℝ)) / 2⌉

end

end A188188.P7140287150126537516

namespace A188188

/-- `ceil((ϕ/sinh(acot(n))+n)/2)` -/
def P7140287150126537516.Spec : Prop :=
  ∀ n, P7140287150126537516.a n = A188188 (n + 1)

end A188188

/-! ## A188188.P5009751508949145308

`ceil((cot(acot(n)/ϕ)+n)/2)`
-/

namespace A188188.P5009751508949145308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cot (SequenceMachineLib.acot (n : ℝ) / Real.goldenRatio) + (n : ℝ)) / 2⌉

end

end A188188.P5009751508949145308

namespace A188188

/-- `ceil((cot(acot(n)/ϕ)+n)/2)` -/
def P5009751508949145308.Spec : Prop :=
  ∀ n, P5009751508949145308.a n = A188188 (n + 1)

end A188188

/-! ## A188188.P4132858764207441276

`ceil((a(n-1)+1)/ϕ+n/2)` with `a(0)=1`
-/

namespace A188188.P4132858764207441276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) + 1 : ℝ) / Real.goldenRatio + ((n : ℚ) / 2 : ℝ)⌉

end

end A188188.P4132858764207441276

namespace A188188

/-- `ceil((a(n-1)+1)/ϕ+n/2)` -/
def P4132858764207441276.Spec : Prop :=
  ∀ n, P4132858764207441276.a n = A188188 (n + 1)

end A188188

/-! ## A188188.P18072297928313978979

`floor(a(n-1)/ϕ+n/2+ϕ)` with `a(0)=1`
-/

namespace A188188.P18072297928313978979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) / Real.goldenRatio + (((n : ℚ) / 2 : ℝ) + Real.goldenRatio)⌋

end

end A188188.P18072297928313978979

namespace A188188

/-- `floor(a(n-1)/ϕ+n/2+ϕ)` -/
def P18072297928313978979.Spec : Prop :=
  ∀ n, P18072297928313978979.a n = A188188 (n + 1)

end A188188

/-! ## A188188.P16122814552667886641

`ceil(sqrt(floor(a(n-1)²+n*ϕ²)))` with `a(0)=1`
-/

namespace A188188.P16122814552667886641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt (⌊(a (n - 1) ^ 2 : ℝ) + (n : ℝ) * Real.goldenRatio ^ 2⌋ : ℝ)⌉

end

end A188188.P16122814552667886641

namespace A188188

/-- `ceil(sqrt(floor(a(n-1)²+n*ϕ²)))` -/
def P16122814552667886641.Spec : Prop :=
  ∀ n, P16122814552667886641.a n = A188188 (n + 1)

end A188188

/-! ## A188188.P12443416094707849401

`ceil(A026352(n)/2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188188

/-- `ceil(A026352(n)/2)` -/
def P12443416094707849401.Spec : Prop :=
  ∀ n, P12443416094707849401.a n = A188188 (n + 1)

theorem P12443416094707849401.correct : P12443416094707849401.Spec := by
  intro n
  simp only [A188188, Nat.add_sub_cancel]

end A188188

/-! ## A188188.P983987982879726752

`floor(A026356(n+1)/2)`
-/

namespace A188188.P983987982879726752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026356 (n + 1) : ℚ) / 2⌋

end

end A188188.P983987982879726752

namespace A188188

/-- `floor(A026356(n+1)/2)` -/
def P983987982879726752.Spec : Prop :=
  ∀ n, P983987982879726752.a n = A188188 (n + 1)

end A188188

/-! ## A188188.P15135860908652663586

`comp[A004976(n+1)]+1`
-/

namespace A188188.P15135860908652663586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188188.P15135860908652663586

namespace A188188

/-- `comp[A004976(n+1)]+1` -/
def P15135860908652663586.Spec : Prop :=
  ∀ n, (P15135860908652663586.a n : ℤ) = A188188 (n + 1)

end A188188

/-! ## A188188.P1315099483937903330

`comp[A004958(n)-1]+1`
-/

namespace A188188.P1315099483937903330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188188.P1315099483937903330

namespace A188188

/-- `comp[A004958(n)-1]+1` -/
def P1315099483937903330.Spec : Prop :=
  ∀ n, (P1315099483937903330.a n : ℤ) = A188188 (n + 1)

end A188188

/-! ## A188188.P14123868878724568320

`ceil((A026351(n)+n)/2)`
-/

namespace A188188.P14123868878724568320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026351 n + (n : ℤ) : ℚ) / 2⌉

end

end A188188.P14123868878724568320

namespace A188188

/-- `ceil((A026351(n)+n)/2)` -/
def P14123868878724568320.Spec : Prop :=
  ∀ n, P14123868878724568320.a n = A188188 (n + 1)

theorem P14123868878724568320.correct : P14123868878724568320.Spec := by
  intro n
  simp only [A188188, Nat.add_sub_cancel, A188188.P14123868878724568320.a, A188188.P12443416094707849401.a, A026351, A026351.P16838321733923579855.a, A026352, A026352.P12148226438592254033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188188

/-! ## A188188.P17372936040482521973

`∑[char[A004956(2*n)]]+n`
-/

namespace A188188.P17372936040482521973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A188188.P17372936040482521973

namespace A188188

/-- `∑[char[A004956(2*n)]]+n` -/
def P17372936040482521973.Spec : Prop :=
  ∀ n, (P17372936040482521973.a n : ℤ) = A188188 (n + 1)

end A188188

/-! ## A188188.P9284089521143286311

`comp[A188259(2*(n+1))]+1`
-/

namespace A188188.P9284089521143286311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188259 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188188.P9284089521143286311

namespace A188188

/-- `comp[A188259(2*(n+1))]+1` -/
def P9284089521143286311.Spec : Prop :=
  ∀ n, (P9284089521143286311.a n : ℤ) = A188188 (n + 1)

end A188188

/-! ## A188188.P2953440878911323084

`floor((A099267(n+1)+n)/2)`
-/

namespace A188188.P2953440878911323084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A099267 (n + 1) + (n : ℤ) : ℚ) / 2⌋

end

end A188188.P2953440878911323084

namespace A188188

/-- `floor((A099267(n+1)+n)/2)` -/
def P2953440878911323084.Spec : Prop :=
  ∀ n, P2953440878911323084.a n = A188188 (n + 1)

end A188188

/-! ## A188188.P8890187958854228150

`comp[A001962(n+1)-(n+1)]+1`
-/

namespace A188188.P8890187958854228150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188188.P8890187958854228150

namespace A188188

/-- `comp[A001962(n+1)-(n+1)]+1` -/
def P8890187958854228150.Spec : Prop :=
  ∀ n, (P8890187958854228150.a n : ℤ) = A188188 (n + 1)

end A188188

/-! ## A188188.P10602098316144222029

`floor((comp[A001950(n+1)]+n)/2)+1`
-/

namespace A188188.P10602098316144222029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n : ℚ) / 2⌋ + 1

end

end A188188.P10602098316144222029

namespace A188188

/-- `floor((comp[A001950(n+1)]+n)/2)+1` -/
def P10602098316144222029.Spec : Prop :=
  ∀ n, P10602098316144222029.a n = A188188 (n + 1)

end A188188

/-! ## A188188.P11479032597809854919

`floor(A001961(abs(1-n)+1)/4)+n+1`
-/

namespace A188188.P11479032597809854919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001961 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 4⌋ + (n + 1 : ℤ)

end

end A188188.P11479032597809854919

namespace A188188

/-- `floor(A001961(abs(1-n)+1)/4)+n+1` -/
def P11479032597809854919.Spec : Prop :=
  ∀ n, P11479032597809854919.a n = A188188 (n + 1)

end A188188

/-! ## A188188.P9673069816335320620

`a(n-1)+A188221(a(n-1))+1` with `a(0)=1`
-/

namespace A188188.P9673069816335320620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A188221 (a (n - 1)).toNat + 1)

end

end A188188.P9673069816335320620

namespace A188188

/-- `a(n-1)+A188221(a(n-1))+1` -/
def P9673069816335320620.Spec : Prop :=
  ∀ n, P9673069816335320620.a n = A188188 (n + 1)

end A188188

/-! ## A188188.P1390598053985907129

`A188222(n+1)-A188187(A188222(n+1))`
-/

namespace A188188.P1390598053985907129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (n + 1) - A188187 (A188222 (n + 1)).toNat

end

end A188188.P1390598053985907129

namespace A188188

/-- `A188222(n+1)-A188187(A188222(n+1))` -/
def P1390598053985907129.Spec : Prop :=
  ∀ n, P1390598053985907129.a n = A188188 (n + 1)

end A188188

/-!
# A188189: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(5), k=2, [ ]=floor.

The programs for A188189, the canonical program `A188189.P7612428391995532335` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188189 has offset 1).

The definition of A188189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188189.P13660579458159836690

`A188257(abs(2-n)+1)`
-/

namespace A188189.P13660579458159836690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188257 (|2 - (n : ℤ)| + 1).toNat

end

end A188189.P13660579458159836690

namespace A188189

/-- `A188257(abs(2-n)+1)` -/
def P13660579458159836690.Spec : Prop :=
  ∀ n, P13660579458159836690.a n = A188189 (n + 1)

end A188189

/-! ## A188189.P4504813790281254022

`char[A188191(n+1)-1]`
-/

namespace A188189.P4504813790281254022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188191 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188189.P4504813790281254022

namespace A188189

/-- `char[A188191(n+1)-1]` -/
def P4504813790281254022.Spec : Prop :=
  ∀ n, (P4504813790281254022.a n : ℤ) = A188189 (n + 1)

end A188189

/-! ## A188189.P13202829054934323844

`A188221(n-a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A188189.P13202829054934323844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A188221 ((n : ℤ) - a (n - 1)).toNat

end

end A188189.P13202829054934323844

namespace A188189

/-- `A188221(n-a(n-1))` -/
def P13202829054934323844.Spec : Prop :=
  ∀ n, P13202829054934323844.a n = A188189 (n + 1)

end A188189

/-! ## A188189.P7612428391995532335

`A188187(n+1-a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A188189

/-- `A188187(n+1-a(n-1))` -/
def P7612428391995532335.Spec : Prop :=
  ∀ n, P7612428391995532335.a n = A188189 (n + 1)

theorem P7612428391995532335.correct : P7612428391995532335.Spec := by
  intro n
  simp only [A188189, Nat.add_sub_cancel]

end A188189

/-! ## A188189.P4087744856890054390

`char[A198082(Δ[A002620(n)])+n]`
-/

namespace A188189.P4087744856890054390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 (f2 (n + 1) - f2 n).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188189.P4087744856890054390

namespace A188189

/-- `char[A198082(Δ[A002620(n)])+n]` -/
def P4087744856890054390.Spec : Prop :=
  ∀ n, (P4087744856890054390.a n : ℤ) = A188189 (n + 1)

end A188189

/-! ## A188189.P6246749536752065666

`Δ[Δ[floor(2*ϕ*(n-1))]]²`
-/

namespace A188189.P6246749536752065666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.goldenRatio * ((n : ℤ) - 1 : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A188189.P6246749536752065666

namespace A188189

/-- `Δ[Δ[floor(2*ϕ*(n-1))]]²` -/
def P6246749536752065666.Spec : Prop :=
  ∀ n, P6246749536752065666.a n = A188189 (n + 1)

end A188189

/-! ## A188189.P1742878802408428608

`A188192(a(n-1)+1+n)` with `a(0)=1`
-/

namespace A188189.P1742878802408428608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188192 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A188189.P1742878802408428608

namespace A188189

/-- `A188192(a(n-1)+1+n)` -/
def P1742878802408428608.Spec : Prop :=
  ∀ n, P1742878802408428608.a n = A188189 (n + 1)

end A188189

/-! ## A188189.P11643312041646631526

`A188192(A188192(n+1)+1+n)`
-/

namespace A188189.P11643312041646631526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188192 (A188192 (n + 1) + 1 + (n : ℤ)).toNat

end

end A188189.P11643312041646631526

namespace A188189

/-- `A188192(A188192(n+1)+1+n)` -/
def P11643312041646631526.Spec : Prop :=
  ∀ n, P11643312041646631526.a n = A188189 (n + 1)

end A188189

/-! ## A188189.P6437469226793348271

`char[(n+2)*A188257(n+1)]`
-/

namespace A188189.P6437469226793348271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A188257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188189.P6437469226793348271

namespace A188189

/-- `char[(n+2)*A188257(n+1)]` -/
def P6437469226793348271.Spec : Prop :=
  ∀ n, (P6437469226793348271.a n : ℤ) = A188189 (n + 1)

end A188189

/-! ## A188189.P7788013971451562306

`A188014((n+1)*A014675(n+2))`
-/

namespace A188189.P7788013971451562306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 ((n + 1 : ℤ) * A014675 (n + 2)).toNat

end

end A188189.P7788013971451562306

namespace A188189

/-- `A188014((n+1)*A014675(n+2))` -/
def P7788013971451562306.Spec : Prop :=
  ∀ n, P7788013971451562306.a n = A188189 (n + 1)

end A188189

/-! ## A188189.P15963495581202561387

`A188014(2*(n+1))`
-/

namespace A188189.P15963495581202561387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (2 * (n + 1))

end

end A188189.P15963495581202561387

namespace A188189

/-- `A188014(2*(n+1))` -/
def P15963495581202561387.Spec : Prop :=
  ∀ n, P15963495581202561387.a n = A188189 (n + 1)

end A188189

/-! ## A188189.P510873412245533426

`and(1, A188014(n+2+n))`
-/

namespace A188189.P510873412245533426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A188014 (n + 2 + n))

end

end A188189.P510873412245533426

namespace A188189

/-- `and(1, A188014(n+2+n))` -/
def P510873412245533426.Spec : Prop :=
  ∀ n, P510873412245533426.a n = A188189 (n + 1)

end A188189

/-! ## A188189.P15574726855001889206

`A097805(C(2, A356749(2*n+1)))`
-/

namespace A188189.P15574726855001889206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (Nat.choose 2 (A356749 (2 * n + 1)).toNat)

end

end A188189.P15574726855001889206

namespace A188189

/-- `A097805(C(2, A356749(2*n+1)))` -/
def P15574726855001889206.Spec : Prop :=
  ∀ n, P15574726855001889206.a n = A188189 (n + 1)

end A188189

/-! ## A188189.P3606511454862463954

`A132393(C(2, A356749(2*n+1)))`
-/

namespace A188189.P3606511454862463954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (Nat.choose 2 (A356749 (2 * n + 1)).toNat)

end

end A188189.P3606511454862463954

namespace A188189

/-- `A132393(C(2, A356749(2*n+1)))` -/
def P3606511454862463954.Spec : Prop :=
  ∀ n, P3606511454862463954.a n = A188189 (n + 1)

end A188189

/-! ## A188189.P627320841621053933

`A188011(2*n+1)-A003849(2*n)`
-/

namespace A188189.P627320841621053933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188011 (2 * n + 1) - A003849 (2 * n)

end

end A188189.P627320841621053933

namespace A188189

/-- `A188011(2*n+1)-A003849(2*n)` -/
def P627320841621053933.Spec : Prop :=
  ∀ n, P627320841621053933.a n = A188189 (n + 1)

end A188189

/-! ## A188189.P14508948368572707202

`A005614(2*n)*A188011(2*n+1)`
-/

namespace A188189.P14508948368572707202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (2 * n) * A188011 (2 * n + 1)

end

end A188189.P14508948368572707202

namespace A188189

/-- `A005614(2*n)*A188011(2*n+1)` -/
def P14508948368572707202.Spec : Prop :=
  ∀ n, P14508948368572707202.a n = A188189 (n + 1)

end A188189

/-! ## A188189.P4621197153828981843

`A188011(2*n+1)-A188432(2*(n+1))`
-/

namespace A188189.P4621197153828981843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188011 (2 * n + 1) - A188432 (2 * (n + 1))

end

end A188189.P4621197153828981843

namespace A188189

/-- `A188011(2*n+1)-A188432(2*(n+1))` -/
def P4621197153828981843.Spec : Prop :=
  ∀ n, P4621197153828981843.a n = A188189 (n + 1)

end A188189

/-! ## A188189.P7735735251432937326

`A267871(2*n+1)-A188467(2*(n+1))`
-/

namespace A188189.P7735735251432937326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 (2 * n + 1) - A188467 (2 * (n + 1))

end

end A188189.P7735735251432937326

namespace A188189

/-- `A267871(2*n+1)-A188467(2*(n+1))` -/
def P7735735251432937326.Spec : Prop :=
  ∀ n, P7735735251432937326.a n = A188189 (n + 1)

end A188189

/-! ## A188189.P2405757089627610377

`A096270(2*n+1)*A188011(2*n+1)`
-/

namespace A188189.P2405757089627610377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * n + 1) * A188011 (2 * n + 1)

end

end A188189.P2405757089627610377

namespace A188189

/-- `A096270(2*n+1)*A188011(2*n+1)` -/
def P2405757089627610377.Spec : Prop :=
  ∀ n, P2405757089627610377.a n = A188189 (n + 1)

end A188189

/-! ## A188189.P14814512279584755150

`A188472(A019444(2*(n+1)))`
-/

namespace A188189.P14814512279584755150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188472 (A019444 (2 * (n + 1))).toNat

end

end A188189.P14814512279584755150

namespace A188189

/-- `A188472(A019444(2*(n+1)))` -/
def P14814512279584755150.Spec : Prop :=
  ∀ n, P14814512279584755150.a n = A188189 (n + 1)

end A188189

/-!
# A188190: Positions of 0 in A188189; complement of A188191.

The programs for A188190, the canonical program `A188190.P7299663739030871848` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188190 has offset 1).

The definition of A188190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188190.P7299663739030871848

`2*floor(n/sqrt(5))+2+n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188190

/-- `2*floor(n/sqrt(5))+2+n` -/
def P7299663739030871848.Spec : Prop :=
  ∀ n, P7299663739030871848.a n = A188190 (n + 1)

theorem P7299663739030871848.correct : P7299663739030871848.Spec := by
  intro n
  simp only [A188190, Nat.add_sub_cancel]

end A188190

/-! ## A188190.P7448471330643179470

`A188010(comp[A000201(2*(n+1))]+2)`
-/

namespace A188190.P7448471330643179470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A188190.P7448471330643179470

namespace A188190

/-- `A188010(comp[A000201(2*(n+1))]+2)` -/
def P7448471330643179470.Spec : Prop :=
  ∀ n, P7448471330643179470.a n = A188190 (n + 1)

end A188190

/-! ## A188190.P2672237658461901656

`∩[A188188(n+1)+1, A188188(n+1)]`
-/

namespace A188190.P2672237658461901656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188190.P2672237658461901656

namespace A188190

/-- `∩[A188188(n+1)+1, A188188(n+1)]` -/
def P2672237658461901656.Spec : Prop :=
  ∀ n, (P2672237658461901656.a n : ℤ) = A188190 (n + 1)

end A188190

/-! ## A188190.P6549967506802981451

`record[n+3-A083368(2*n+1)]`
-/

namespace A188190.P6549967506802981451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A083368 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188190.P6549967506802981451

namespace A188190

/-- `record[n+3-A083368(2*n+1)]` -/
def P6549967506802981451.Spec : Prop :=
  ∀ n, P6549967506802981451.a n = A188190 (n + 1)

end A188190

/-! ## A188190.P8528620896058627702

`record[A028242(A002251(n))+1]`
-/

namespace A188190.P8528620896058627702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A002251 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188190.P8528620896058627702

namespace A188190

/-- `record[A028242(A002251(n))+1]` -/
def P8528620896058627702.Spec : Prop :=
  ∀ n, P8528620896058627702.a n = A188190 (n + 1)

end A188190

/-! ## A188190.P1996435971834298488

`record[A080513(xor(1, A002251(n)))]`
-/

namespace A188190.P1996435971834298488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (Int.xor 1 (A002251 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188190.P1996435971834298488

namespace A188190

/-- `record[A080513(xor(1, A002251(n)))]` -/
def P1996435971834298488.Spec : Prop :=
  ∀ n, P1996435971834298488.a n = A188190 (n + 1)

end A188190

/-! ## A188190.P16352202503773786167

`record[(A028242(n)+1)/A001468(n)]`
-/

namespace A188190.P16352202503773786167
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 n + 1 : ℚ) / (A001468 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188190.P16352202503773786167

namespace A188190

/-- `record[(A028242(n)+1)/A001468(n)]` -/
def P16352202503773786167.Spec : Prop :=
  ∀ n, P16352202503773786167.a n = (A188190 (n + 1) : ℚ)

end A188190

/-! ## A188190.P10662835446433595823

`A080513(record[A097062(A002251(n))])`
-/

namespace A188190.P10662835446433595823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 (A002251 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188190.P10662835446433595823

namespace A188190

/-- `A080513(record[A097062(A002251(n))])` -/
def P10662835446433595823.Spec : Prop :=
  ∀ n, P10662835446433595823.a n = A188190 (n + 1)

end A188190

/-! ## A188190.P3753042576160033874

`lt[n*A188014(A004277(n)), n]`
-/

namespace A188190.P3753042576160033874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A188014 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A188190.P3753042576160033874

namespace A188190

/-- `lt[n*A188014(A004277(n)), n]` -/
def P3753042576160033874.Spec : Prop :=
  ∀ n, (P3753042576160033874.a n : ℤ) = A188190 (n + 1)

end A188190

/-! ## A188190.P1876912514719786513

`record[A028242(A026356(A052938(n)))]`
-/

namespace A188190.P1876912514719786513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A026356 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188190.P1876912514719786513

namespace A188190

/-- `record[A028242(A026356(A052938(n)))]` -/
def P1876912514719786513.Spec : Prop :=
  ∀ n, P1876912514719786513.a n = A188190 (n + 1)

end A188190

/-! ## A188190.P16763823143022129444

`A008619(record[A165754(A002251(n))])`
-/

namespace A188190.P16763823143022129444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 (A002251 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188190.P16763823143022129444

namespace A188190

/-- `A008619(record[A165754(A002251(n))])` -/
def P16763823143022129444.Spec : Prop :=
  ∀ n, P16763823143022129444.a n = A188190 (n + 1)

end A188190

/-! ## A188190.P2106980442346783817

`record[A028242(A026356(A133310(n)))]`
-/

namespace A188190.P2106980442346783817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A026356 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188190.P2106980442346783817

namespace A188190

/-- `record[A028242(A026356(A133310(n)))]` -/
def P2106980442346783817.Spec : Prop :=
  ∀ n, P2106980442346783817.a n = A188190 (n + 1)

end A188190

/-! ## A188190.P14914975330778417870

`lt[A188014(A028310(2*n)), A096270(2*n)]`
-/

namespace A188190.P14914975330778417870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A028310 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188190.P14914975330778417870

namespace A188190

/-- `lt[A188014(A028310(2*n)), A096270(2*n)]` -/
def P14914975330778417870.Spec : Prop :=
  ∀ n, (P14914975330778417870.a n : ℤ) = A188190 (n + 1)

end A188190

/-! ## A188190.P6060657645655182371

`lt[A188014(A028310(2*n)), A287523(2*(n+1))]`
-/

namespace A188190.P6060657645655182371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A028310 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188190.P6060657645655182371

namespace A188190

/-- `lt[A188014(A028310(2*n)), A287523(2*(n+1))]` -/
def P6060657645655182371.Spec : Prop :=
  ∀ n, (P6060657645655182371.a n : ℤ) = A188190 (n + 1)

end A188190

/-! ## A188190.P5958145912645949160

`record[A028242(A026356(A126759(n)))]`
-/

namespace A188190.P5958145912645949160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A026356 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188190.P5958145912645949160

namespace A188190

/-- `record[A028242(A026356(A126759(n)))]` -/
def P5958145912645949160.Spec : Prop :=
  ∀ n, P5958145912645949160.a n = A188190 (n + 1)

end A188190

/-! ## A188190.P8671772373301243171

`lt[A188436(A002251(2*n+1)), A096270(2*n)]`
-/

namespace A188190.P8671772373301243171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188436 (A002251 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188190.P8671772373301243171

namespace A188190

/-- `lt[A188436(A002251(2*n+1)), A096270(2*n)]` -/
def P8671772373301243171.Spec : Prop :=
  ∀ n, (P8671772373301243171.a n : ℤ) = A188190 (n + 1)

end A188190

/-! ## A188190.P12217201503524022359

`A000267(record[A008733(A002251(n))])`
-/

namespace A188190.P12217201503524022359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 (A002251 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188190.P12217201503524022359

namespace A188190

/-- `A000267(record[A008733(A002251(n))])` -/
def P12217201503524022359.Spec : Prop :=
  ∀ n, P12217201503524022359.a n = A188190 (n + 1)

end A188190

/-!
# A188191: Positions of 1 in A188189; complement of A188190.

The programs for A188191, the canonical program `A188191.P14924021026053288212` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188191 has offset 1).

The definition of A188191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188191.P1261434886220559585

`ceil(∑[2*ϕ/a(n-1)])` with `a(0)=1`
-/

namespace A188191.P1261434886220559585
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (Real.goldenRatio / f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A188191.P1261434886220559585

namespace A188191

/-- `ceil(∑[2*ϕ/a(n-1)])` -/
def P1261434886220559585.Spec : Prop :=
  ∀ n, P1261434886220559585.a n = A188191 (n + 1)

end A188191

/-! ## A188191.P16470989513159344986

`ceil(∑[ϕ^3-a(n-1)])` with `a(0)=1`
-/

namespace A188191.P16470989513159344986
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio ^ 3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A188191.P16470989513159344986

namespace A188191

/-- `ceil(∑[ϕ^3-a(n-1)])` -/
def P16470989513159344986.Spec : Prop :=
  ∀ n, P16470989513159344986.a n = A188191 (n + 1)

end A188191

/-! ## A188191.P11742555902195905134

`ceil(∑[(ϕ+ϕ)/a(n-1)])` with `a(0)=1`
-/

namespace A188191.P11742555902195905134
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  (Real.goldenRatio + Real.goldenRatio) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A188191.P11742555902195905134

namespace A188191

/-- `ceil(∑[(ϕ+ϕ)/a(n-1)])` -/
def P11742555902195905134.Spec : Prop :=
  ∀ n, P11742555902195905134.a n = A188191 (n + 1)

end A188191

/-! ## A188191.P15246922603381510494

`ceil(∑[ϕ²+ϕ-a(n-1)])` with `a(0)=1`
-/

namespace A188191.P15246922603381510494
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio ^ 2 + (Real.goldenRatio - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A188191.P15246922603381510494

namespace A188191

/-- `ceil(∑[ϕ²+ϕ-a(n-1)])` -/
def P15246922603381510494.Spec : Prop :=
  ∀ n, P15246922603381510494.a n = A188191 (n + 1)

end A188191

/-! ## A188191.P14924021026053288212

`A198082(ceil(n/2))+n+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188191

/-- `A198082(ceil(n/2))+n+1` -/
def P14924021026053288212.Spec : Prop :=
  ∀ n, P14924021026053288212.a n = A188191 (n + 1)

theorem P14924021026053288212.correct : P14924021026053288212.Spec := by
  intro n
  simp only [A188191, Nat.add_sub_cancel]

end A188191

/-! ## A188191.P14366916704566329321

`A040001(n)+A004976(A110654(n))`
-/

namespace A188191.P14366916704566329321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n + A004976 (A110654 n).toNat

end

end A188191.P14366916704566329321

namespace A188191

/-- `A040001(n)+A004976(A110654(n))` -/
def P14366916704566329321.Spec : Prop :=
  ∀ n, P14366916704566329321.a n = A188191 (n + 1)

end A188191

/-! ## A188191.P16744016088347415022

`A059841(n)+A004958(A110654(n))`
-/

namespace A188191.P16744016088347415022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A004958 (A110654 n).toNat

end

end A188191.P16744016088347415022

namespace A188191

/-- `A059841(n)+A004958(A110654(n))` -/
def P16744016088347415022.Spec : Prop :=
  ∀ n, P16744016088347415022.a n = A188191 (n + 1)

end A188191

/-! ## A188191.P11850992244783636221

`A276854(A110654(n))+A266977(n)`
-/

namespace A188191.P11850992244783636221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (A110654 n).toNat + A266977 n

end

end A188191.P11850992244783636221

namespace A188191

/-- `A276854(A110654(n))+A266977(n)` -/
def P11850992244783636221.Spec : Prop :=
  ∀ n, P11850992244783636221.a n = A188191 (n + 1)

end A188191

/-! ## A188191.P2312665561432198071

`A188218(A032766(n+1))`
-/

namespace A188191.P2312665561432198071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (A032766 (n + 1)).toNat

end

end A188191.P2312665561432198071

namespace A188191

/-- `A188218(A032766(n+1))` -/
def P2312665561432198071.Spec : Prop :=
  ∀ n, P2312665561432198071.a n = A188191 (n + 1)

end A188191

/-! ## A188191.P10825672332700339195

`∩[A188218(n+1)-1, A188218(n+1)]`
-/

namespace A188191.P10825672332700339195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188191.P10825672332700339195

namespace A188191

/-- `∩[A188218(n+1)-1, A188218(n+1)]` -/
def P10825672332700339195.Spec : Prop :=
  ∀ n, (P10825672332700339195.a n : ℤ) = A188191 (n + 1)

end A188191

/-! ## A188191.P1790896259067282096

`filter[n+1, A188189(#)]`
-/

namespace A188191.P1790896259067282096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188189 (f1 j) = 1) n)

end

end A188191.P1790896259067282096

namespace A188191

/-- `filter[n+1, A188189(#)]` -/
def P1790896259067282096.Spec : Prop :=
  ∀ n, (P1790896259067282096.a n : ℤ) = A188191 (n + 1)

end A188191

/-! ## A188191.P14100014717587180764

`lt[A188436(n+2), A188014(2*(n+1))]+1`
-/

namespace A188191.P14100014717587180764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188436 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A188191.P14100014717587180764

namespace A188191

/-- `lt[A188436(n+2), A188014(2*(n+1))]+1` -/
def P14100014717587180764.Spec : Prop :=
  ∀ n, (P14100014717587180764.a n : ℤ) = A188191 (n + 1)

end A188191

/-! ## A188191.P7561114392810416269

`lt[A003849(2*n), A188011(2*n+1)]+1`
-/

namespace A188191.P7561114392810416269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188011 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A188191.P7561114392810416269

namespace A188191

/-- `lt[A003849(2*n), A188011(2*n+1)]+1` -/
def P7561114392810416269.Spec : Prop :=
  ∀ n, (P7561114392810416269.a n : ℤ) = A188191 (n + 1)

end A188191

/-! ## A188191.P5336814416669464256

`eq[A096270(2*n+1), A188011(2*n+1)]+1`
-/

namespace A188191.P5336814416669464256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188011 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A188191.P5336814416669464256

namespace A188191

/-- `eq[A096270(2*n+1), A188011(2*n+1)]+1` -/
def P5336814416669464256.Spec : Prop :=
  ∀ n, (P5336814416669464256.a n : ℤ) = A188191 (n + 1)

end A188191

/-! ## A188191.P15809182089358856159

`lt[A188436(n+1), A188014(A004277(n))]`
-/

namespace A188191.P15809182089358856159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188191.P15809182089358856159

namespace A188191

/-- `lt[A188436(n+1), A188014(A004277(n))]` -/
def P15809182089358856159.Spec : Prop :=
  ∀ n, (P15809182089358856159.a n : ℤ) = A188191 (n + 1)

end A188191

/-! ## A188191.P1994737114182822677

`record[A028242(n*A188020(n+2))]`
-/

namespace A188191.P1994737114182822677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ((n : ℤ) * A188020 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188191.P1994737114182822677

namespace A188191

/-- `record[A028242(n*A188020(n+2))]` -/
def P1994737114182822677.Spec : Prop :=
  ∀ n, P1994737114182822677.a n = A188191 (n + 1)

end A188191

/-! ## A188191.P16996093641810456899

`lt[A189661(2*n+1), A188014(A028310(2*n))]`
-/

namespace A188191.P16996093641810456899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188191.P16996093641810456899

namespace A188191

/-- `lt[A189661(2*n+1), A188014(A028310(2*n))]` -/
def P16996093641810456899.Spec : Prop :=
  ∀ n, (P16996093641810456899.a n : ℤ) = A188191 (n + 1)

end A188191

/-!
# A188192: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(5), k=3, [ ]=floor.

The programs for A188192, the canonical program `A188192.P16228618120579595901` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188192 has offset 1).

The definition of A188192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188192.P3542970182584770273

`char[A188218(n+1)-1]`
-/

namespace A188192.P3542970182584770273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188192.P3542970182584770273

namespace A188192

/-- `char[A188218(n+1)-1]` -/
def P3542970182584770273.Spec : Prop :=
  ∀ n, (P3542970182584770273.a n : ℤ) = A188192 (n + 1)

end A188192

/-! ## A188192.P16228618120579595901

`A188189(a(n-3)+n)` with `a(0)=1, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188192

/-- `A188189(a(n-3)+n)` -/
def P16228618120579595901.Spec : Prop :=
  ∀ n, P16228618120579595901.a n = A188192 (n + 1)

theorem P16228618120579595901.correct : P16228618120579595901.Spec := by
  intro n
  simp only [A188192, Nat.add_sub_cancel]

end A188192

/-! ## A188192.P18265164371466646918

`A188189(A188189(n+1)+n)`
-/

namespace A188192.P18265164371466646918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188189 (A188189 (n + 1) + (n : ℤ)).toNat

end

end A188192.P18265164371466646918

namespace A188192

/-- `A188189(A188189(n+1)+n)` -/
def P18265164371466646918.Spec : Prop :=
  ∀ n, P18265164371466646918.a n = A188192 (n + 1)

end A188192

/-! ## A188192.P4449166440813018900

`char[A188191(n+1)]+char[A004976(n)]`
-/

namespace A188192.P4449166440813018900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A188192.P4449166440813018900

namespace A188192

/-- `char[A188191(n+1)]+char[A004976(n)]` -/
def P4449166440813018900.Spec : Prop :=
  ∀ n, (P4449166440813018900.a n : ℤ) = A188192 (n + 1)

end A188192

/-! ## A188192.P5121510403000585952

`A188017(2*(n+1))`
-/

namespace A188192.P5121510403000585952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188017 (2 * (n + 1))

end

end A188192.P5121510403000585952

namespace A188192

/-- `A188017(2*(n+1))` -/
def P5121510403000585952.Spec : Prop :=
  ∀ n, P5121510403000585952.a n = A188192 (n + 1)

end A188192

/-! ## A188192.P225297016403352584

`A188014(2*(A188014(2*(n+1))+n))`
-/

namespace A188192.P225297016403352584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (2 * (A188014 (2 * (n + 1)) + (n : ℤ))).toNat

end

end A188192.P225297016403352584

namespace A188192

/-- `A188014(2*(A188014(2*(n+1))+n))` -/
def P225297016403352584.Spec : Prop :=
  ∀ n, P225297016403352584.a n = A188192 (n + 1)

end A188192

/-! ## A188192.P1472216923807847758

`A188436(A002251(2*n+1))+A096270(2*n+1)`
-/

namespace A188192.P1472216923807847758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188436 (A002251 (2 * n + 1)).toNat + A096270 (2 * n + 1)

end

end A188192.P1472216923807847758

namespace A188192

/-- `A188436(A002251(2*n+1))+A096270(2*n+1)` -/
def P1472216923807847758.Spec : Prop :=
  ∀ n, P1472216923807847758.a n = A188192 (n + 1)

end A188192

/-! ## A188192.P3234536007233215171

`A188034(A003622(2*(n+1))-2)`
-/

namespace A188192.P3234536007233215171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A003622 (2 * (n + 1)) - 2).toNat

end

end A188192.P3234536007233215171

namespace A188192

/-- `A188034(A003622(2*(n+1))-2)` -/
def P3234536007233215171.Spec : Prop :=
  ∀ n, P3234536007233215171.a n = A188192 (n + 1)

end A188192

/-! ## A188192.P8613500438763013778

`A188031(A026274(2*n+1)-2)`
-/

namespace A188192.P8613500438763013778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188031 (A026274 (2 * n + 1) - 2).toNat

end

end A188192.P8613500438763013778

namespace A188192

/-- `A188031(A026274(2*n+1)-2)` -/
def P8613500438763013778.Spec : Prop :=
  ∀ n, P8613500438763013778.a n = A188192 (n + 1)

end A188192

/-! ## A188192.P4186105672686883792

`A085002(6*A003623(2*(n+1)))`
-/

namespace A188192.P4186105672686883792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (6 * A003623 (2 * (n + 1))).toNat

end

end A188192.P4186105672686883792

namespace A188192

/-- `A085002(6*A003623(2*(n+1)))` -/
def P4186105672686883792.Spec : Prop :=
  ∀ n, P4186105672686883792.a n = A188192 (n + 1)

end A188192

/-!
# A188193: G.f. satisfies: A(x) = Sum_{n>=0} log(1 + 2^n*x*A(x))^n/n!.

The programs for A188193, there is no canonical definition to state claims against.
-/

/-! ## A188193.P8643310535263734325

`∏[Δ[A004694(2*n)]]`
-/

namespace A188193.P8643310535263734325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004694 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A188193.P8643310535263734325

/-!
# A188194: G.f. satisfies: A(x) = Sum_{n>=0} log(1 + 2^n*x*A(x)^2)^n/n!.

The programs for A188194, there is no canonical definition to state claims against.
-/

/-! ## A188194.P4855321241718973519

`A065387((2*n-1)*a(n-1))` with `a(0)=1`
-/

namespace A188194.P4855321241718973519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065387 (((2 * n : ℤ) - 1) * a (n - 1)).toNat

end

end A188194.P4855321241718973519

/-!
# A188195: Base-3 Keith numbers.

The programs for A188195, there is no canonical definition to state claims against.
-/

/-! ## A188195.P12411680078403717148

`A093511(A324276(n+1))`
-/

namespace A188195.P12411680078403717148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093511 (A324276 (n + 1)).toNat

end

end A188195.P12411680078403717148

/-! ## A188195.P12600675586930713768

`A002426(n)*A104705(A271269(n+3))`
-/

namespace A188195.P12600675586930713768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n * A104705 (A271269 (n + 3)).toNat

end

end A188195.P12600675586930713768

