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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A046000: a(n) is the largest number m equal to the sum of digits of m^n.

The programs for A046000, there is no canonical definition to state claims against.
-/

/-! ## A046000.P18094843021573229124

`A152147(record[A028310(n)/A152147(n+1)])`
-/

namespace A046000.P18094843021573229124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A152147 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152147 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A046000.P18094843021573229124

/-! ## A046000.P2084219231159530060

`A152147(lt[A152147(n+1), A000005(3*n+1)])`
-/

namespace A046000.P2084219231159530060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152147 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046000.P2084219231159530060

/-! ## A046000.P12562694622036459561

`A152147(lt[A152147(n+1), A320110(3*n+1)])`
-/

namespace A046000.P12562694622036459561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320110 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152147 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046000.P12562694622036459561

/-! ## A046000.P8262942263772281904

`A152147(lt[A152147(n+1), A139713(2*n)])`
-/

namespace A046000.P8262942263772281904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139713 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152147 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046000.P8262942263772281904

/-! ## A046000.P5749729548176450584

`A152147(lt[A152147(n+1)², A355563(n)])`
-/

namespace A046000.P5749729548176450584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152147 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152147 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046000.P5749729548176450584

/-!
# A046002: Discriminants of imaginary quadratic fields with class number 5 (negated).

The programs for A046002, there is no canonical definition to state claims against.
-/

/-! ## A046002.P17426193634638514643

`A045344(eq[5, A165951(n+1)])`
-/

namespace A046002.P17426193634638514643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046002.P17426193634638514643

/-! ## A046002.P12966670723713220048

`A065091(eq[5, A165951(n+1)])`
-/

namespace A046002.P12966670723713220048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046002.P12966670723713220048

/-! ## A046002.P6242095765226809351

`eq[A323774(n)+2, A058305(n)]`
-/

namespace A046002.P6242095765226809351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323774 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046002.P6242095765226809351

/-! ## A046002.P10971199571295941008

`A002145(eq[5, A002143(n+1)]+1)`
-/

namespace A046002.P10971199571295941008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046002.P10971199571295941008

/-! ## A046002.P12522297113283568567

`p?[A282038(n+1)-A001749(n+1)]`
-/

namespace A046002.P12522297113283568567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (n + 1) - A001749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046002.P12522297113283568567

/-!
# A046003: Discriminants of imaginary quadratic fields with class number 6 (negated).

The programs for A046003, there is no canonical definition to state claims against.
-/

/-! ## A046003.P8644464462697316872

`eq[6, A191410(n+1)]+1`
-/

namespace A046003.P8644464462697316872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046003.P8644464462697316872

/-! ## A046003.P13648218156035249334

`eq[6, A191410(A028310(n))]`
-/

namespace A046003.P13648218156035249334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046003.P13648218156035249334

/-! ## A046003.P16167238740981691605

`A020725(eq[6, A191410(n+1)])`
-/

namespace A046003.P16167238740981691605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046003.P16167238740981691605

/-! ## A046003.P7916943357408575417

`A065475(eq[6, A191410(n+1)])`
-/

namespace A046003.P7916943357408575417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046003.P7916943357408575417

/-! ## A046003.P8015475319525328555

`eq[6, A191410(A066182(n+1))]`
-/

namespace A046003.P8015475319525328555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046003.P8015475319525328555

/-!
# A046004: Discriminants of imaginary quadratic fields with class number 7 (negated).

The programs for A046004, there is no canonical definition to state claims against.
-/

/-! ## A046004.P10059334010857794991

`A045344(eq[7, A165951(n+1)])`
-/

namespace A046004.P10059334010857794991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046004.P10059334010857794991

/-! ## A046004.P12928589075001442148

`A065091(eq[7, A165951(n+1)])`
-/

namespace A046004.P12928589075001442148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046004.P12928589075001442148

/-! ## A046004.P14773608872598723165

`A002145(eq[7, A002143(n+1)]+1)`
-/

namespace A046004.P14773608872598723165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046004.P14773608872598723165

/-! ## A046004.P10518680488585352398

`p?[A282037(n+1)-6*A002145(n+1)]`
-/

namespace A046004.P10518680488585352398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282037 (n + 1) - 6 * A002145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046004.P10518680488585352398

/-! ## A046004.P3106577383643230606

`p?[(8-A002143(n+1))*A002145(n+1)]`
-/

namespace A046004.P3106577383643230606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 - A002143 (n + 1)) * A002145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046004.P3106577383643230606

/-!
# A046005: Discriminants of imaginary quadratic fields with class number 8 (negated).

The programs for A046005, there is no canonical definition to state claims against.
-/

/-! ## A046005.P8797839602986443476

`eq[8, A191410(n+1)]+1`
-/

namespace A046005.P8797839602986443476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046005.P8797839602986443476

/-! ## A046005.P13874265962368334368

`eq[8, A191410(A028310(n))]`
-/

namespace A046005.P13874265962368334368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046005.P13874265962368334368

/-! ## A046005.P15907590181443780802

`A011760(eq[8, A191410(n+1)])`
-/

namespace A046005.P15907590181443780802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046005.P15907590181443780802

/-! ## A046005.P9012054398045625817

`A020725(eq[8, A191410(n+1)])`
-/

namespace A046005.P9012054398045625817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046005.P9012054398045625817

/-! ## A046005.P17954732703234827717

`A056699(eq[8, A191410(n+1)])`
-/

namespace A046005.P17954732703234827717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046005.P17954732703234827717

/-! ## A046005.P938940525088881470

`eq[8, A191410(A060000(n+1))]`
-/

namespace A046005.P938940525088881470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046005.P938940525088881470

/-!
# A046006: Discriminants of imaginary quadratic fields with class number 9 (negated).

The programs for A046006, there is no canonical definition to state claims against.
-/

/-! ## A046006.P12867845511146880590

`A045344(eq[9, A165951(n+1)])`
-/

namespace A046006.P12867845511146880590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046006.P12867845511146880590

/-! ## A046006.P4284186155756586631

`A065091(eq[9, A165951(n+1)])`
-/

namespace A046006.P4284186155756586631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046006.P4284186155756586631

/-! ## A046006.P6072232082650922642

`A000040(eq[9, A165951(n+1)]+1)`
-/

namespace A046006.P6072232082650922642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046006.P6072232082650922642

/-! ## A046006.P13182216137012518534

`p?[(10-A002143(n+1))*A002145(n+1)]`
-/

namespace A046006.P13182216137012518534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 - A002143 (n + 1)) * A002145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046006.P13182216137012518534

/-! ## A046006.P17185323075935808140

`p?[eq[9, A058305(n)]]`
-/

namespace A046006.P17185323075935808140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A046006.P17185323075935808140

/-!
# A046007: Discriminants of imaginary quadratic fields with class number 10 (negated).

The programs for A046007, there is no canonical definition to state claims against.
-/

/-! ## A046007.P7296849847747930764

`eq[10, A191410(A028310(n))]`
-/

namespace A046007.P7296849847747930764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046007.P7296849847747930764

/-! ## A046007.P11626660287720835215

`A020725(eq[10, A191410(n+1)])`
-/

namespace A046007.P11626660287720835215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046007.P11626660287720835215

/-! ## A046007.P16503908739688941974

`A065475(eq[10, A191410(n+1)])`
-/

namespace A046007.P16503908739688941974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046007.P16503908739688941974

/-! ## A046007.P17840558629530129619

`eq[10, A191410(A233583(n+1))]`
-/

namespace A046007.P17840558629530129619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046007.P17840558629530129619

/-!
# A046008: Discriminants of imaginary quadratic fields with class number 11 (negated).

The programs for A046008, there is no canonical definition to state claims against.
-/

/-! ## A046008.P17568425222325096400

`A045344(eq[11, A165951(n+1)])`
-/

namespace A046008.P17568425222325096400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046008.P17568425222325096400

/-! ## A046008.P15357956753643220183

`A065091(eq[11, A165951(n+1)])`
-/

namespace A046008.P15357956753643220183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046008.P15357956753643220183

/-! ## A046008.P7723994348764150507

`A000040(eq[11, A165951(n+1)]+1)`
-/

namespace A046008.P7723994348764150507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046008.P7723994348764150507

/-! ## A046008.P4847746933845861720

`p?[(A002143(n+1)-10)*A002145(n+1)]`
-/

namespace A046008.P4847746933845861720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002143 (n + 1) - 10) * A002145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046008.P4847746933845861720

/-! ## A046008.P16526159070766954441

`p?[A282038(n+1)-A008706(A100484(n+1))]`
-/

namespace A046008.P16526159070766954441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (n + 1) - A008706 (A100484 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046008.P16526159070766954441

/-!
# A046009: Discriminants of imaginary quadratic fields with class number 12 (negated).

The programs for A046009, there is no canonical definition to state claims against.
-/

/-! ## A046009.P13727037310334467747

`eq[12, A191410(A028310(n))]`
-/

namespace A046009.P13727037310334467747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046009.P13727037310334467747

/-! ## A046009.P3660368503077820997

`eq[12, A191410(A233583(n+1))]`
-/

namespace A046009.P3660368503077820997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046009.P3660368503077820997

/-!
# A046010: Discriminants of imaginary quadratic fields with class number 13 (negated).

The programs for A046010, there is no canonical definition to state claims against.
-/

/-! ## A046010.P1975065753153626612

`p?[eq[13, A058305(n)]]`
-/

namespace A046010.P1975065753153626612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A046010.P1975065753153626612

/-! ## A046010.P4136625614841310940

`eq[13, A191410(A028310(n))]`
-/

namespace A046010.P4136625614841310940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046010.P4136625614841310940

/-! ## A046010.P7239657969105472280

`A004442(eq[13, A191410(n+1)])`
-/

namespace A046010.P7239657969105472280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046010.P7239657969105472280

/-! ## A046010.P1193625061969843339

`eq[13, A191410(A066182(n+1))]`
-/

namespace A046010.P1193625061969843339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046010.P1193625061969843339

/-! ## A046010.P12231978126904816895

`eq[A017533(A032741(n)), A058305(n)]`
-/

namespace A046010.P12231978126904816895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046010.P12231978126904816895

/-!
# A046011: Discriminants of imaginary quadratic fields with class number 14 (negated).

The programs for A046011, there is no canonical definition to state claims against.
-/

/-! ## A046011.P4442137715773710177

`eq[14, A191410(A028310(n))]`
-/

namespace A046011.P4442137715773710177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046011.P4442137715773710177

/-! ## A046011.P14270644224724846767

`A056699(eq[14, A191410(n+1)])`
-/

namespace A046011.P14270644224724846767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046011.P14270644224724846767

/-!
# A046012: Discriminants of imaginary quadratic fields with class number 15 (negated).

The programs for A046012, there is no canonical definition to state claims against.
-/

/-! ## A046012.P16719356292265007310

`A045344(eq[15, A165951(n+1)])`
-/

namespace A046012.P16719356292265007310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046012.P16719356292265007310

/-! ## A046012.P7202955388416166588

`A065091(eq[15, A165951(n+1)])`
-/

namespace A046012.P7202955388416166588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046012.P7202955388416166588

/-! ## A046012.P7638267684974507502

`A000040(eq[15, A165951(n+1)]+1)`
-/

namespace A046012.P7638267684974507502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046012.P7638267684974507502

/-! ## A046012.P2270324201964684431

`A014601(eq[45, A166407(n)])`
-/

namespace A046012.P2270324201964684431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046012.P2270324201964684431

/-! ## A046012.P9889354083778939975

`p?[eq[15, A058305(n)]]`
-/

namespace A046012.P9889354083778939975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A046012.P9889354083778939975

/-!
# A046013: Discriminants of imaginary quadratic fields with class number 16 (negated).

The programs for A046013, there is no canonical definition to state claims against.
-/

/-! ## A046013.P18108937733623763562

`eq[16, A191410(A028310(n))]`
-/

namespace A046013.P18108937733623763562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046013.P18108937733623763562

/-! ## A046013.P11890767903686879584

`A020725(eq[16, A191410(n+1)])`
-/

namespace A046013.P11890767903686879584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046013.P11890767903686879584

/-!
# A046014: Discriminants of imaginary quadratic fields with class number 17 (negated).

The programs for A046014, there is no canonical definition to state claims against.
-/

/-! ## A046014.P9451344727444373330

`A045344(eq[17, A165951(n+1)])`
-/

namespace A046014.P9451344727444373330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046014.P9451344727444373330

/-! ## A046014.P5521580231011223667

`A065091(eq[17, A165951(n+1)])`
-/

namespace A046014.P5521580231011223667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046014.P5521580231011223667

/-!
# A046017: Least k > 1 with k = sum of digits of k^n, or 0 if no such k exists.

The programs for A046017, there is no canonical definition to state claims against.
-/

/-! ## A046017.P9446932502443651591

`A152147(∑[A046019(n)%A124367(n+1)]+1)`
-/

namespace A046017.P9446932502443651591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046019 n) (A124367 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152147 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A046017.P9446932502443651591

/-! ## A046017.P2203512961173921947

`A152147(∑[A046019(n)]%A124053(n+1)+1)`
-/

namespace A046017.P2203512961173921947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152147 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A124053 (n + 1)) + 1).toNat

end

end A046017.P2203512961173921947

/-! ## A046017.P7501435124421770067

`∑{digits}[A072408(n+1), #]`
-/

namespace A046017.P7501435124421770067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072408 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A046017.P7501435124421770067

/-! ## A046017.P494483173780170710

`root(A072408(n+1), A023443(n+2))`
-/

namespace A046017.P494483173780170710
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A072408 (n + 1) : ℝ) ^ (1 / (A023443 (n + 2) : ℝ))

end

end A046017.P494483173780170710

/-! ## A046017.P8298329619816837382

`root(A072408(n+1), A020725(n+1)-1)`
-/

namespace A046017.P8298329619816837382
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A072408 (n + 1) : ℝ) ^ (1 / (A020725 (n + 1) - 1 : ℝ))

end

end A046017.P8298329619816837382

/-!
# A046019: a(n) gives the number of different powers m^n for which the sum of the digits is equal to m > 0.

The programs for A046019, there is no canonical definition to state claims against.
-/

/-! ## A046019.P16069022449364342319

`A057427(a(n-1))+A046471(n)` with `a(0)=1`
-/

namespace A046019.P16069022449364342319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057427 (a (n - 1)).toNat + A046471 n

end

end A046019.P16069022449364342319

/-!
# A046020: Discriminants of imaginary quadratic fields with class number 23 (negated).

The programs for A046020, there is no canonical definition to state claims against.
-/

/-! ## A046020.P8879707630446627576

`A045319(eq[23, A165951(n+1)])`
-/

namespace A046020.P8879707630446627576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046020.P8879707630446627576

/-! ## A046020.P12879275397761021333

`A045344(eq[23, A165951(n+1)])`
-/

namespace A046020.P12879275397761021333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046020.P12879275397761021333

/-! ## A046020.P11604472980676797534

`A065091(eq[23, A165951(n+1)])`
-/

namespace A046020.P11604472980676797534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046020.P11604472980676797534

/-! ## A046020.P14992371719593894609

`A000040(eq[23, A165951(n+1)]+1)`
-/

namespace A046020.P14992371719593894609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046020.P14992371719593894609

/-! ## A046020.P1857806958590541069

`A182986(eq[23, A165951(n+1)]+2)`
-/

namespace A046020.P1857806958590541069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A046020.P1857806958590541069

/-!
# A046021: Least inverse of the Kempner function A002034.

The programs for A046021, there is no canonical definition to state claims against.
-/

/-! ## A046021.P6642691817130878964

`A006530(n+1)^A102048(n+1)`
-/

namespace A046021.P6642691817130878964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) ^ (A102048 (n + 1) : ℤ)

end

end A046021.P6642691817130878964

/-! ## A046021.P4353521287031772552

`A002034(A007947(n+1))^A102048(n+1)`
-/

namespace A046021.P4353521287031772552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002034 (A007947 (n + 1)).toNat : ℚ) ^ (A102048 (n + 1) : ℤ)

end

end A046021.P4353521287031772552

/-! ## A046021.P15695749331925722104

`A014963(A053585(n+1))^A102048(n+1)`
-/

namespace A046021.P15695749331925722104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (A053585 (n + 1)).toNat : ℚ) ^ (A102048 (n + 1) : ℤ)

end

end A046021.P15695749331925722104

/-! ## A046021.P16088032582906413016

`A002034(A088835(n+1))^A102048(n+1)`
-/

namespace A046021.P16088032582906413016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002034 (A088835 (n + 1)).toNat : ℚ) ^ (A102048 (n + 1) : ℤ)

end

end A046021.P16088032582906413016

/-! ## A046021.P13477656752726907878

`A002034(A109395(n+1))^A102048(n+1)`
-/

namespace A046021.P13477656752726907878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002034 (A109395 (n + 1)).toNat : ℚ) ^ (A102048 (n + 1) : ℤ)

end

end A046021.P13477656752726907878

/-! ## A046021.P3390481236168132561

`A020639(A298268(n+1))^A102048(n+1)`
-/

namespace A046021.P3390481236168132561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A298268 (n + 1)).toNat : ℚ) ^ (A102048 (n + 1) : ℤ)

end

end A046021.P3390481236168132561

/-! ## A046021.P14807764381354263472

`A014963(A304180(n+1))^A102048(n+1)`
-/

namespace A046021.P14807764381354263472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (A304180 (n + 1)).toNat : ℚ) ^ (A102048 (n + 1) : ℤ)

end

end A046021.P14807764381354263472

/-! ## A046021.P17207853759741237507

`A014963(A345941(n+1))^A102048(n+1)`
-/

namespace A046021.P17207853759741237507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (A345941 (n + 1)).toNat : ℚ) ^ (A102048 (n + 1) : ℤ)

end

end A046021.P17207853759741237507

/-! ## A046021.P14146463720204362101

`A014963(A068795(n+1))^A102048(n+1)`
-/

namespace A046021.P14146463720204362101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (A068795 (n + 1)).toNat : ℚ) ^ (A102048 (n + 1) : ℤ)

end

end A046021.P14146463720204362101

/-!
# A046022: Primes together with 1 and 4.

The programs for A046022, the canonical program `A046022.P4558940758189190591` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046022 has offset 1).

The definition of A046022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046022.P4558940758189190591

`A335402(n+1)+A130716(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A046022

/-- `A335402(n+1)+A130716(n)` -/
def P4558940758189190591.Spec : Prop :=
  ∀ n, P4558940758189190591.a n = A046022 (n + 1)

theorem P4558940758189190591.correct : P4558940758189190591.Spec := by
  intro n
  simp only [A046022, Nat.add_sub_cancel]

end A046022

/-! ## A046022.P2397241600234709290

`A329678(n)+A158611(n+1)`
-/

namespace A046022.P2397241600234709290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 n + A158611 (n + 1)

end

end A046022.P2397241600234709290

namespace A046022

/-- `A329678(n)+A158611(n+1)` -/
def P2397241600234709290.Spec : Prop :=
  ∀ n, P2397241600234709290.a n = A046022 (n + 1)

end A046022

/-! ## A046022.P17256036091341873268

`∪[A000040(n+1), A007885(n+1)]`
-/

namespace A046022.P17256036091341873268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046022.P17256036091341873268

namespace A046022

/-- `∪[A000040(n+1), A007885(n+1)]` -/
def P17256036091341873268.Spec : Prop :=
  ∀ n, (P17256036091341873268.a n : ℤ) = A046022 (n + 1)

end A046022

/-! ## A046022.P7970468632777548061

`A000007(n)+record[A085729(n+1)]`
-/

namespace A046022.P7970468632777548061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046022.P7970468632777548061

namespace A046022

/-- `A000007(n)+record[A085729(n+1)]` -/
def P7970468632777548061.Spec : Prop :=
  ∀ n, P7970468632777548061.a n = A046022 (n + 1)

end A046022

/-! ## A046022.P12771286040963512698

`filter[A062972(n+1), A324290(#)]`
-/

namespace A046022.P12771286040963512698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A046022.P12771286040963512698

namespace A046022

/-- `filter[A062972(n+1), A324290(#)]` -/
def P12771286040963512698.Spec : Prop :=
  ∀ n, P12771286040963512698.a n = A046022 (n + 1)

end A046022

/-! ## A046022.P8144779791124503255

`filter[A373789(n+1), A324290(#)]`
-/

namespace A046022.P8144779791124503255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A046022.P8144779791124503255

namespace A046022

/-- `filter[A373789(n+1), A324290(#)]` -/
def P8144779791124503255.Spec : Prop :=
  ∀ n, P8144779791124503255.a n = A046022 (n + 1)

end A046022

/-! ## A046022.P5461346507464484732

`record[A151800(n)-A227291(n+1)]`
-/

namespace A046022.P5461346507464484732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n - A227291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046022.P5461346507464484732

namespace A046022

/-- `record[A151800(n)-A227291(n+1)]` -/
def P5461346507464484732.Spec : Prop :=
  ∀ n, P5461346507464484732.a n = A046022 (n + 1)

end A046022

/-! ## A046022.P2837080536113024423

`record[C(A001414(n+1), n)]`
-/

namespace A046022.P2837080536113024423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001414 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046022.P2837080536113024423

namespace A046022

/-- `record[C(A001414(n+1), n)]` -/
def P2837080536113024423.Spec : Prop :=
  ∀ n, (P2837080536113024423.a n : ℤ) = A046022 (n + 1)

end A046022

/-! ## A046022.P17540538966818635776

`record[and(2, n^3)!*A020639(n+1)]`
-/

namespace A046022.P17540538966818635776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 2 (n ^ 3)) : ℤ) * A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046022.P17540538966818635776

namespace A046022

/-- `record[and(2, n^3)!*A020639(n+1)]` -/
def P17540538966818635776.Spec : Prop :=
  ∀ n, P17540538966818635776.a n = A046022 (n + 1)

end A046022

/-! ## A046022.P1369611294866798897

`filter[A062972(n+1), A175860(#)]`
-/

namespace A046022.P1369611294866798897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175860 (f1 j).toNat = 1) n)

end

end A046022.P1369611294866798897

namespace A046022

/-- `filter[A062972(n+1), A175860(#)]` -/
def P1369611294866798897.Spec : Prop :=
  ∀ n, P1369611294866798897.a n = A046022 (n + 1)

end A046022

/-! ## A046022.P3154316266515575834

`filter[A067126(n+1), A175860(#)]`
-/

namespace A046022.P3154316266515575834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175860 (f1 j).toNat = 1) n)

end

end A046022.P3154316266515575834

namespace A046022

/-- `filter[A067126(n+1), A175860(#)]` -/
def P3154316266515575834.Spec : Prop :=
  ∀ n, P3154316266515575834.a n = A046022 (n + 1)

end A046022

/-! ## A046022.P11729718242742678964

`filter[A174090(n+1), A212793(#)]`
-/

namespace A046022.P11729718242742678964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A046022.P11729718242742678964

namespace A046022

/-- `filter[A174090(n+1), A212793(#)]` -/
def P11729718242742678964.Spec : Prop :=
  ∀ n, P11729718242742678964.a n = A046022 (n + 1)

end A046022

/-! ## A046022.P387738485776885327

`filter[A066050(n+1), A358672(#)]`
-/

namespace A046022.P387738485776885327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358672 (f1 j).toNat = 1) n)

end

end A046022.P387738485776885327

namespace A046022

/-- `filter[A066050(n+1), A358672(#)]` -/
def P387738485776885327.Spec : Prop :=
  ∀ n, P387738485776885327.a n = A046022 (n + 1)

end A046022

/-! ## A046022.P2914427596384658729

`filter[A074583(n+1), A359834(#)]`
-/

namespace A046022.P2914427596384658729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A046022.P2914427596384658729

namespace A046022

/-- `filter[A074583(n+1), A359834(#)]` -/
def P2914427596384658729.Spec : Prop :=
  ∀ n, P2914427596384658729.a n = A046022 (n + 1)

end A046022

/-! ## A046022.P6635079386552393403

`filter[A074583(n+1), A365716(#)]`
-/

namespace A046022.P6635079386552393403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A046022.P6635079386552393403

namespace A046022

/-- `filter[A074583(n+1), A365716(#)]` -/
def P6635079386552393403.Spec : Prop :=
  ∀ n, P6635079386552393403.a n = A046022 (n + 1)

end A046022

/-! ## A046022.P2166837544500219119

`filter[A084400(n+1), A358672(#)]`
-/

namespace A046022.P2166837544500219119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358672 (f1 j).toNat = 1) n)

end

end A046022.P2166837544500219119

namespace A046022

/-- `filter[A084400(n+1), A358672(#)]` -/
def P2166837544500219119.Spec : Prop :=
  ∀ n, P2166837544500219119.a n = A046022 (n + 1)

end A046022

/-! ## A046022.P4560573541601901761

`filter[A123091(n+1), A355937(#)]`
-/

namespace A046022.P4560573541601901761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A046022.P4560573541601901761

namespace A046022

/-- `filter[A123091(n+1), A355937(#)]` -/
def P4560573541601901761.Spec : Prop :=
  ∀ n, P4560573541601901761.a n = A046022 (n + 1)

end A046022

/-! ## A046022.P9414796449341388426

`filter[A284696(n+1), A212793(#)]`
-/

namespace A046022.P9414796449341388426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A046022.P9414796449341388426

namespace A046022

/-- `filter[A284696(n+1), A212793(#)]` -/
def P9414796449341388426.Spec : Prop :=
  ∀ n, P9414796449341388426.a n = A046022 (n + 1)

end A046022

/-! ## A046022.P16415623508398683464

`filter[A166684(n+1), A358672(#)]`
-/

namespace A046022.P16415623508398683464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358672 (f1 j).toNat = 1) n)

end

end A046022.P16415623508398683464

namespace A046022

/-- `filter[A166684(n+1), A358672(#)]` -/
def P16415623508398683464.Spec : Prop :=
  ∀ n, P16415623508398683464.a n = A046022 (n + 1)

end A046022

/-! ## A046022.P881032995440830135

`filter[A166684(n+1), A359834(#)]`
-/

namespace A046022.P881032995440830135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A046022.P881032995440830135

namespace A046022

/-- `filter[A166684(n+1), A359834(#)]` -/
def P881032995440830135.Spec : Prop :=
  ∀ n, P881032995440830135.a n = A046022 (n + 1)

end A046022

/-!
# A046023: Number of ways to color edges of a tetrahedron using <= n colors.

The programs for A046023, the canonical program `A046023.P5534282175735841947` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046023 has offset 0).

The definition of A046023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046023.P5534282175735841947

`(n^6+3*n^4+8*n²)/12`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046023

/-- `(n^6+3*n^4+8*n²)/12` -/
def P5534282175735841947.Spec : Prop :=
  ∀ n, P5534282175735841947.a n = (A046023 n : ℚ)

end A046023

/-! ## A046023.P792595771875861865

`n²+(n²+4)*A002415(n)`
-/

namespace A046023.P792595771875861865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (n ^ 2 + 4 : ℤ) * A002415 n

end

end A046023.P792595771875861865

namespace A046023

/-- `n²+(n²+4)*A002415(n)` -/
def P792595771875861865.Spec : Prop :=
  ∀ n, P792595771875861865.a n = A046023 n

end A046023

/-! ## A046023.P7741702171731538654

`2*A047780(n)-A000578(n)`
-/

namespace A046023.P7741702171731538654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047780 n - A000578 n

end

end A046023.P7741702171731538654

namespace A046023

/-- `2*A047780(n)-A000578(n)` -/
def P7741702171731538654.Spec : Prop :=
  ∀ n, P7741702171731538654.a n = A046023 n

end A046023

/-! ## A046023.P3404457986790529194

`n*(A006527(n)+n*A002415(n))`
-/

namespace A046023.P3404457986790529194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A006527 n + (n : ℤ) * A002415 n)

end

end A046023.P3404457986790529194

namespace A046023

/-- `n*(A006527(n)+n*A002415(n))` -/
def P3404457986790529194.Spec : Prop :=
  ∀ n, P3404457986790529194.a n = A046023 n

end A046023

/-! ## A046023.P16820291933589208202

`A282819(n)+Δ[A282816(n)]`
-/

namespace A046023.P16820291933589208202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282819 n + (f1 (n + 1) - f1 n)

end

end A046023.P16820291933589208202

namespace A046023

/-- `A282819(n)+Δ[A282816(n)]` -/
def P16820291933589208202.Spec : Prop :=
  ∀ n, P16820291933589208202.a n = A046023 n

end A046023

/-! ## A046023.P5344865015885225934

`A282816(n+1)+A282816(n)`
-/

namespace A046023.P5344865015885225934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282816 (n + 1) + A282816 n

end

end A046023.P5344865015885225934

namespace A046023

/-- `A282816(n+1)+A282816(n)` -/
def P5344865015885225934.Spec : Prop :=
  ∀ n, P5344865015885225934.a n = A046023 n

end A046023

/-! ## A046023.P7996224652365194947

`A006527(∑[n]-n)+A006527(∑[n])`
-/

namespace A046023.P7996224652365194947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 (∑ j ∈ Finset.range (n + 1), f1 j - n) + A006527 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A046023.P7996224652365194947

namespace A046023

/-- `A006527(∑[n]-n)+A006527(∑[n])` -/
def P7996224652365194947.Spec : Prop :=
  ∀ n, P7996224652365194947.a n = A046023 n

end A046023

/-! ## A046023.P8752709439288298524

`A000125(A002522(n))/2-1`
-/

namespace A046023.P8752709439288298524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000125 (A002522 n).toNat : ℚ) / 2 - 1

end

end A046023.P8752709439288298524

namespace A046023

/-- `A000125(A002522(n))/2-1` -/
def P8752709439288298524.Spec : Prop :=
  ∀ n, P8752709439288298524.a n = (A046023 n : ℚ)

end A046023

/-!
# A046024: 

The programs for A046024, there is no canonical definition to state claims against.
-/

/-! ## A046024.P15852253542009764255

`A103591(∑[A103609(n)+1])`
-/

namespace A046024.P15852253542009764255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103591 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A046024.P15852253542009764255

/-!
# A046025: Numbers k such that 6*k+1, 12*k+1 and 18*k+1 are all primes.

The programs for A046025, there is no canonical definition to state claims against.
-/

/-! ## A046025.P4221681976046196824

`A064238(n+1)/6`
-/

namespace A046025.P4221681976046196824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064238 (n + 1) : ℚ) / 6

end

end A046025.P4221681976046196824

/-! ## A046025.P11470901604707442462

`A033503(n)+a(n-1)` with `a(0)=1`
-/

namespace A046025.P11470901604707442462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033503 n + a (n - 1)

end

end A046025.P11470901604707442462

/-! ## A046025.P13553049100602337669

`∑[A033503(n+1)]+1-A033503(n+1)`
-/

namespace A046025.P13553049100602337669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A033503 (n + 1))

end

end A046025.P13553049100602337669

/-! ## A046025.P7824848136723937946

`A124408(n+2)/3`
-/

namespace A046025.P7824848136723937946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124408 (n + 2) : ℚ) / 3

end

end A046025.P7824848136723937946

/-! ## A046025.P14143787297728389515

`(A105652(n+2)+1)/3`
-/

namespace A046025.P14143787297728389515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105652 (n + 2) + 1 : ℚ) / 3

end

end A046025.P14143787297728389515

/-! ## A046025.P14550486391619110817

`A000010(A174734(n+2))/6`
-/

namespace A046025.P14550486391619110817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A174734 (n + 2)).toNat : ℚ) / 6

end

end A046025.P14550486391619110817

/-! ## A046025.P5796311893979712239

`A353461(A174734(n+2))`
-/

namespace A046025.P5796311893979712239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353461 (A174734 (n + 2)).toNat

end

end A046025.P5796311893979712239

/-! ## A046025.P11811802618562658908

`A255591(A064238(n+1))`
-/

namespace A046025.P11811802618562658908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A064238 (n + 1)).toNat

end

end A046025.P11811802618562658908

/-! ## A046025.P1234071087574060432

`A008611(A105652(n+2))`
-/

namespace A046025.P1234071087574060432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A105652 (n + 2)).toNat

end

end A046025.P1234071087574060432

/-! ## A046025.P17798069049857726564

`A002264(A124408(n+2))`
-/

namespace A046025.P17798069049857726564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A124408 (n + 2)).toNat

end

end A046025.P17798069049857726564

/-!
# A046026: Smallest prime p dividing n#-1, n#, or n#+1, n squarefree.

The programs for A046026, there is no canonical definition to state claims against.
-/

/-! ## A046026.P3690627147531405111

`p?[A013586(n+1)]`
-/

namespace A046026.P3690627147531405111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046026.P3690627147531405111

/-! ## A046026.P13761008532759895826

`A013586(eq[n, ∏{p}[n, #]])`
-/

namespace A046026.P13761008532759895826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A046026.P13761008532759895826

/-! ## A046026.P693548700753995068

`A013586(A005117(n+1))`
-/

namespace A046026.P693548700753995068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (A005117 (n + 1)).toNat

end

end A046026.P693548700753995068

/-! ## A046026.P52329945768563206

`A013586(record[A007947(n+1)])`
-/

namespace A046026.P52329945768563206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046026.P52329945768563206

/-! ## A046026.P14168693654383552270

`A013586(record[A015052(n+1)])`
-/

namespace A046026.P14168693654383552270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046026.P14168693654383552270

/-! ## A046026.P8196819392575198889

`filter[A013586(n+1), A014306(#)]`
-/

namespace A046026.P8196819392575198889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A046026.P8196819392575198889

/-! ## A046026.P16575191343390887853

`filter[A013586(n+1), A097325(#)]`
-/

namespace A046026.P16575191343390887853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A046026.P16575191343390887853

/-! ## A046026.P4958093498789720427

`filter[A013586(n+1), A098725(#)]`
-/

namespace A046026.P4958093498789720427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A046026.P4958093498789720427

/-! ## A046026.P4741324244014532558

`filter[A013586(n+1), A165560(#)]`
-/

namespace A046026.P4741324244014532558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165560 (f1 j).toNat = 1) n)

end

end A046026.P4741324244014532558

/-! ## A046026.P7019302526314044796

`filter[A013586(n+1), A166486(#)]`
-/

namespace A046026.P7019302526314044796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A046026.P7019302526314044796

/-! ## A046026.P11542194629654764899

`filter[A013586(n+1), A168181(#)]`
-/

namespace A046026.P11542194629654764899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A046026.P11542194629654764899

/-! ## A046026.P12309049583189509334

`filter[A013586(n+1), A168182(#)]`
-/

namespace A046026.P12309049583189509334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A046026.P12309049583189509334

/-! ## A046026.P14866883799998425657

`filter[A013586(n+1), A168184(#)]`
-/

namespace A046026.P14866883799998425657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A046026.P14866883799998425657

/-! ## A046026.P12397226778853057480

`filter[A013586(n+1), A168185(#)]`
-/

namespace A046026.P12397226778853057480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A046026.P12397226778853057480

/-! ## A046026.P433944008853890829

`filter[A013586(n+1), A182067(#)]`
-/

namespace A046026.P433944008853890829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182067 (f1 j).toNat = 1) n)

end

end A046026.P433944008853890829

/-! ## A046026.P15332879934981975720

`filter[A013586(n+1), A257000(#)]`
-/

namespace A046026.P15332879934981975720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A046026.P15332879934981975720

/-! ## A046026.P1506643762221456967

`filter[A013586(n+1), A257680(#)]`
-/

namespace A046026.P1506643762221456967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257680 (f1 j).toNat = 1) n)

end

end A046026.P1506643762221456967

/-! ## A046026.P5138142269395549842

`filter[A013586(n+1), A341625(#)]`
-/

namespace A046026.P5138142269395549842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A046026.P5138142269395549842

/-! ## A046026.P5078295890086240706

`filter[A013586(n+1), A354874(#)]`
-/

namespace A046026.P5078295890086240706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A046026.P5078295890086240706

/-! ## A046026.P16181911750385243861

`filter[A013586(n+1), A358220(#)]`
-/

namespace A046026.P16181911750385243861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A046026.P16181911750385243861

/-!
# A046027: Smallest multiple prime factor of the n-th nonsquarefree number (A013929).

The programs for A046027, there is no canonical definition to state claims against.
-/

/-! ## A046027.P4387093085053064450

`A249739(A013929(n+1))`
-/

namespace A046027.P4387093085053064450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (A013929 (n + 1)).toNat

end

end A046027.P4387093085053064450

/-! ## A046027.P7939106837510056681

`sqrt(A283919(n+1))`
-/

namespace A046027.P7939106837510056681
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A283919 (n + 1) : ℝ)

end

end A046027.P7939106837510056681

/-! ## A046027.P13185155794707727472

`A020639(A084936(n+1))`
-/

namespace A046027.P13185155794707727472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A084936 (n + 1)).toNat

end

end A046027.P13185155794707727472

/-! ## A046027.P7799928442013959863

`A020639(A087050(n+1))`
-/

namespace A046027.P7799928442013959863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A087050 (n + 1)).toNat

end

end A046027.P7799928442013959863

/-! ## A046027.P8678637312820303575

`A006530(2*A283919(n+1))`
-/

namespace A046027.P8678637312820303575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A283919 (n + 1)).toNat

end

end A046027.P8678637312820303575

/-! ## A046027.P12245437713213201263

`A000027(root(A283919(n+1), 2))`
-/

namespace A046027.P12245437713213201263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A283919 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A046027.P12245437713213201263

/-! ## A046027.P10162477170819652195

`A007947(∏{p}[A283919(n+1), #])`
-/

namespace A046027.P10162477170819652195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A046027.P10162477170819652195

/-! ## A046027.P9825544987040054347

`∏{p}[A283919(n+1), A020639(#)]`
-/

namespace A046027.P9825544987040054347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 p

end

end A046027.P9825544987040054347

/-! ## A046027.P17797682242844668932

`A053585(∏{p}[A283919(n+1), #])`
-/

namespace A046027.P17797682242844668932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A046027.P17797682242844668932

/-! ## A046027.P10574712450893784690

`A013929(n+1)/A384064(n+1)`
-/

namespace A046027.P10574712450893784690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013929 (n + 1) : ℚ) / (A384064 (n + 1) : ℚ)

end

end A046027.P10574712450893784690

/-! ## A046027.P15768411052039426143

`gcd(A076333(n+1), A283919(n+1))`
-/

namespace A046027.P15768411052039426143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076333 (n + 1)) (A283919 (n + 1))

end

end A046027.P15768411052039426143

/-! ## A046027.P14665097128802860167

`A020639(A013929(n+1)/A015049(n+1))`
-/

namespace A046027.P14665097128802860167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A013929 (n + 1) : ℚ) / (A015049 (n + 1) : ℚ))).toNat

end

end A046027.P14665097128802860167

/-! ## A046027.P10640523500996428047

`A249739(A249739(A283919(n+1))²)`
-/

namespace A046027.P10640523500996428047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (A249739 (A283919 (n + 1)).toNat ^ 2).toNat

end

end A046027.P10640523500996428047

/-! ## A046027.P6823392415700729837

`A249739(A283919(n+1))/A249739(A249739(n+1))`
-/

namespace A046027.P6823392415700729837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249739 (A283919 (n + 1)).toNat : ℚ) / (A249739 (A249739 (n + 1)).toNat : ℚ)

end

end A046027.P6823392415700729837

/-! ## A046027.P2318869603212028215

`A014673(A368040(n+1))`
-/

namespace A046027.P2318869603212028215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A368040 (n + 1)).toNat

end

end A046027.P2318869603212028215

/-! ## A046027.P15383365076397220266

`p?[A249739(n+1)]`
-/

namespace A046027.P15383365076397220266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046027.P15383365076397220266

/-! ## A046027.P7654840819253930701

`p?[A392108(n+1)]`
-/

namespace A046027.P7654840819253930701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046027.P7654840819253930701

/-! ## A046027.P17285371675877520737

`p?[A020639(A003557(n+1))]`
-/

namespace A046027.P17285371675877520737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046027.P17285371675877520737

/-! ## A046027.P12392813490209631461

`filter[A249739(n+1), A010051(#)]`
-/

namespace A046027.P12392813490209631461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A046027.P12392813490209631461

/-! ## A046027.P14795401125576042511

`filter[A249739(n+1), A014306(#)]`
-/

namespace A046027.P14795401125576042511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A046027.P14795401125576042511

/-!
# A046028: Largest multiple prime factor of the n-th nonsquarefree number (A013929).

The programs for A046028, the canonical program `A046028.P7957653917597795699` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046028 has offset 1).

The definition of A046028 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A249740, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046028.P7957653917597795699

`A249740(A013929(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A046028

/-- `A249740(A013929(n+1))` -/
def P7957653917597795699.Spec : Prop :=
  ∀ n, P7957653917597795699.a n = A046028 (n + 1)

theorem P7957653917597795699.correct : P7957653917597795699.Spec := by
  intro n
  simp only [A046028, Nat.add_sub_cancel]

end A046028

/-! ## A046028.P11058733999179458115

`A006530(A084936(n+1))`
-/

namespace A046028.P11058733999179458115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A084936 (n + 1)).toNat

end

end A046028.P11058733999179458115

namespace A046028

/-- `A006530(A084936(n+1))` -/
def P11058733999179458115.Spec : Prop :=
  ∀ n, P11058733999179458115.a n = A046028 (n + 1)

end A046028

/-! ## A046028.P4935919975102187079

`A006530(A087050(n+1))`
-/

namespace A046028.P4935919975102187079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087050 (n + 1)).toNat

end

end A046028.P4935919975102187079

namespace A046028

/-- `A006530(A087050(n+1))` -/
def P4935919975102187079.Spec : Prop :=
  ∀ n, P4935919975102187079.a n = A046028 (n + 1)

end A046028

/-! ## A046028.P6151961875268440330

`A006530(A368040(n+1))`
-/

namespace A046028.P6151961875268440330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A368040 (n + 1)).toNat

end

end A046028.P6151961875268440330

namespace A046028

/-- `A006530(A368040(n+1))` -/
def P6151961875268440330.Spec : Prop :=
  ∀ n, P6151961875268440330.a n = A046028 (n + 1)

end A046028

/-! ## A046028.P6358691112132432385

`A006530(A013929(n+1)/A015049(n+1))`
-/

namespace A046028.P6358691112132432385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A013929 (n + 1) : ℚ) / (A015049 (n + 1) : ℚ))).toNat

end

end A046028.P6358691112132432385

namespace A046028

/-- `A006530(A013929(n+1)/A015049(n+1))` -/
def P6358691112132432385.Spec : Prop :=
  ∀ n, P6358691112132432385.a n = A046028 (n + 1)

end A046028

/-! ## A046028.P4591517487614662821

`A006530(A013929(n+1)/A076333(n+1))`
-/

namespace A046028.P4591517487614662821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A013929 (n + 1) : ℚ) / (A076333 (n + 1) : ℚ))).toNat

end

end A046028.P4591517487614662821

namespace A046028

/-- `A006530(A013929(n+1)/A076333(n+1))` -/
def P4591517487614662821.Spec : Prop :=
  ∀ n, P4591517487614662821.a n = A046028 (n + 1)

end A046028

/-! ## A046028.P10784644257064931567

`p?[A217581(A057521(n+1))]`
-/

namespace A046028.P10784644257064931567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A057521 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046028.P10784644257064931567

namespace A046028

/-- `p?[A217581(A057521(n+1))]` -/
def P10784644257064931567.Spec : Prop :=
  ∀ n, P10784644257064931567.a n = A046028 (n + 1)

end A046028

/-! ## A046028.P14539573137672340514

`p?[A249740(n+1)]`
-/

namespace A046028.P14539573137672340514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046028.P14539573137672340514

namespace A046028

/-- `p?[A249740(n+1)]` -/
def P14539573137672340514.Spec : Prop :=
  ∀ n, P14539573137672340514.a n = A046028 (n + 1)

end A046028

/-! ## A046028.P5228398536078034571

`p?[A392109(n+1)]`
-/

namespace A046028.P5228398536078034571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046028.P5228398536078034571

namespace A046028

/-- `p?[A392109(n+1)]` -/
def P5228398536078034571.Spec : Prop :=
  ∀ n, P5228398536078034571.a n = A046028 (n + 1)

end A046028

/-! ## A046028.P13652367571285636502

`A249740(A162966(n+2))`
-/

namespace A046028.P13652367571285636502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (A162966 (n + 2)).toNat

end

end A046028.P13652367571285636502

namespace A046028

/-- `A249740(A162966(n+2))` -/
def P13652367571285636502.Spec : Prop :=
  ∀ n, P13652367571285636502.a n = A046028 (n + 1)

end A046028

/-! ## A046028.P17375789638257747573

`filter[A249740(n+1), A010051(#)]`
-/

namespace A046028.P17375789638257747573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A046028.P17375789638257747573

namespace A046028

/-- `filter[A249740(n+1), A010051(#)]` -/
def P17375789638257747573.Spec : Prop :=
  ∀ n, P17375789638257747573.a n = A046028 (n + 1)

end A046028

/-! ## A046028.P3305683786578173549

`filter[A249740(n+1), A014306(#)]`
-/

namespace A046028.P3305683786578173549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A046028.P3305683786578173549

namespace A046028

/-- `filter[A249740(n+1), A014306(#)]` -/
def P3305683786578173549.Spec : Prop :=
  ∀ n, P3305683786578173549.a n = A046028 (n + 1)

end A046028

/-! ## A046028.P5343953989337111533

`filter[A249740(n+1), A049240(#)]`
-/

namespace A046028.P5343953989337111533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A046028.P5343953989337111533

namespace A046028

/-- `filter[A249740(n+1), A049240(#)]` -/
def P5343953989337111533.Spec : Prop :=
  ∀ n, P5343953989337111533.a n = A046028 (n + 1)

end A046028

/-! ## A046028.P3484857951521215346

`filter[A249740(n+1), A053867(#)]`
-/

namespace A046028.P3484857951521215346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A046028.P3484857951521215346

namespace A046028

/-- `filter[A249740(n+1), A053867(#)]` -/
def P3484857951521215346.Spec : Prop :=
  ∀ n, P3484857951521215346.a n = A046028 (n + 1)

end A046028

/-! ## A046028.P7845392459734604075

`filter[A249740(n+1), A066829(#)]`
-/

namespace A046028.P7845392459734604075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A046028.P7845392459734604075

namespace A046028

/-- `filter[A249740(n+1), A066829(#)]` -/
def P7845392459734604075.Spec : Prop :=
  ∀ n, P7845392459734604075.a n = A046028 (n + 1)

end A046028

/-! ## A046028.P6538765257047292044

`filter[A249740(n+1), A069513(#)]`
-/

namespace A046028.P6538765257047292044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A046028.P6538765257047292044

namespace A046028

/-- `filter[A249740(n+1), A069513(#)]` -/
def P6538765257047292044.Spec : Prop :=
  ∀ n, P6538765257047292044.a n = A046028 (n + 1)

end A046028

/-! ## A046028.P8769372060102967205

`filter[A249740(n+1), A092248(#)]`
-/

namespace A046028.P8769372060102967205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A046028.P8769372060102967205

namespace A046028

/-- `filter[A249740(n+1), A092248(#)]` -/
def P8769372060102967205.Spec : Prop :=
  ∀ n, P8769372060102967205.a n = A046028 (n + 1)

end A046028

/-! ## A046028.P17457349370760335208

`filter[A249740(n+1), A099104(#)]`
-/

namespace A046028.P17457349370760335208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A046028.P17457349370760335208

namespace A046028

/-- `filter[A249740(n+1), A099104(#)]` -/
def P17457349370760335208.Spec : Prop :=
  ∀ n, P17457349370760335208.a n = A046028 (n + 1)

end A046028

/-! ## A046028.P3069331695812514966

`filter[A249740(n+1), A101040(#)]`
-/

namespace A046028.P3069331695812514966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A046028.P3069331695812514966

namespace A046028

/-- `filter[A249740(n+1), A101040(#)]` -/
def P3069331695812514966.Spec : Prop :=
  ∀ n, P3069331695812514966.a n = A046028 (n + 1)

end A046028

/-!
# A046029: Numbers k such that (k!)^2 + 1 is prime.

The programs for A046029, there is no canonical definition to state claims against.
-/

/-! ## A046029.P5291676191660004096

`eq[1, A048858(n)]`
-/

namespace A046029.P5291676191660004096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046029.P5291676191660004096

/-! ## A046029.P15343841898073309210

`lt[A048858(round(acot(n)+n)), 2]`
-/

namespace A046029.P15343841898073309210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048858 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046029.P15343841898073309210

/-! ## A046029.P11543468646972943158

`lt[A048858(round(sqrt(n²+1))), 2]`
-/

namespace A046029.P11543468646972943158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048858 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046029.P11543468646972943158

/-! ## A046029.P14150758859927413667

`lt[A048858(n), 2]%A020549(n)`
-/

namespace A046029.P14150758859927413667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048858 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) (A020549 n)

end

end A046029.P14150758859927413667

/-! ## A046029.P14286395155845237375

`lt[A048858(n)², A157532(n+1)]`
-/

namespace A046029.P14286395155845237375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048858 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046029.P14286395155845237375

/-!
# A046030: Numbers whose digits are squares.

The programs for A046030, there is no canonical definition to state claims against.
-/

/-! ## A046030.P11622177072941628644

`∪[A061246(n+1), A157908(n+1)]`
-/

namespace A046030.P11622177072941628644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046030.P11622177072941628644

/-! ## A046030.P9100231491268246205

`A048385(A007090(n))`
-/

namespace A046030.P9100231491268246205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A007090 n).toNat

end

end A046030.P9100231491268246205

/-! ## A046030.P16639716914407911134

`A048385(lt[A054055(n), 4])`
-/

namespace A046030.P16639716914407911134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A046030.P16639716914407911134

/-! ## A046030.P1828098545987854213

`A048385(lt[A086066(n), 16])`
-/

namespace A046030.P1828098545987854213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A046030.P1828098545987854213

/-! ## A046030.P2052113193518979867

`A068522(A007090(n)%A008498(n))`
-/

namespace A046030.P2052113193518979867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068522 (Int.tmod (A007090 n) (A008498 n)).toNat

end

end A046030.P2052113193518979867

/-! ## A046030.P15087284856689512749

`A048385(A122840(2*n+3)+lt[A048385(n), 3*n+1])`
-/

namespace A046030.P15087284856689512749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A122840 (2 * n + 3) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)).toNat

end

end A046030.P15087284856689512749

/-! ## A046030.P15303813097409510468

`record[A222233(A222228(n))]`
-/

namespace A046030.P15303813097409510468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (A222228 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046030.P15303813097409510468

/-! ## A046030.P7100613018870299205

`A222228(record[A222239(n)])`
-/

namespace A046030.P7100613018870299205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046030.P7100613018870299205

/-! ## A046030.P597014286157703297

`record[A222228(A222244(n))]`
-/

namespace A046030.P597014286157703297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A222244 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046030.P597014286157703297

/-! ## A046030.P12963324534052187778

`record[A222251(A084984(n+1))]`
-/

namespace A046030.P12963324534052187778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A084984 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046030.P12963324534052187778

/-! ## A046030.P10010904275311154655

`record[2*A222246(n)-A035044(n)]`
-/

namespace A046030.P10010904275311154655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222246 n - A035044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046030.P10010904275311154655

/-! ## A046030.P16127614031847199907

`record[gcd(A068522(2*n), A068522(3*n))]`
-/

namespace A046030.P16127614031847199907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068522 (2 * n)) (A068522 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046030.P16127614031847199907

/-! ## A046030.P3514058999654004282

`eq[A102669(n), A102683(A048379(n)+n)]`
-/

namespace A046030.P3514058999654004282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A048379 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046030.P3514058999654004282

/-!
# A046031: Digits are cubes.

The programs for A046031, there is no canonical definition to state claims against.
-/

/-! ## A046031.P17314911991308791264

`A007284(A023713(n+1))`
-/

namespace A046031.P17314911991308791264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 (A023713 (n + 1)).toNat

end

end A046031.P17314911991308791264

/-! ## A046031.P725762308272810574

`A007284(record[gcd(n, A292372(n))])`
-/

namespace A046031.P725762308272810574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A292372 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A046031.P725762308272810574

/-! ## A046031.P10282915872260790450

`A007284(record[n-A292372(n)²])`
-/

namespace A046031.P10282915872260790450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292372 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046031.P10282915872260790450

/-! ## A046031.P7890116416504234951

`record[(1-A292372(n))*A007284(n)]`
-/

namespace A046031.P7890116416504234951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A292372 n) * A007284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046031.P7890116416504234951

/-! ## A046031.P12542396013383452776

`A007284(eq[0, A292372(n)])`
-/

namespace A046031.P12542396013383452776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046031.P12542396013383452776

/-! ## A046031.P12264370172787366589

`∪[A061247(n+1), A157911(n+1)]`
-/

namespace A046031.P12264370172787366589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046031.P12264370172787366589

/-! ## A046031.P17763097338771103425

`A007284(eq[2, A001316(A268444(n))])`
-/

namespace A046031.P17763097338771103425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A268444 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046031.P17763097338771103425

/-! ## A046031.P16070916609329460818

`A007284(A057300(record[A057300(n)]))`
-/

namespace A046031.P16070916609329460818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 (A057300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A046031.P16070916609329460818

/-! ## A046031.P12347111677138292902

`A007284(record[A163241(n)])`
-/

namespace A046031.P12347111677138292902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046031.P12347111677138292902

/-! ## A046031.P2780440845762861869

`A007284(eq[A139351(n), A160385(n)])`
-/

namespace A046031.P2780440845762861869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A046031.P2780440845762861869

/-! ## A046031.P1999556863698031222

`A007284(eq[A059906(n), A292373(n)])`
-/

namespace A046031.P1999556863698031222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A046031.P1999556863698031222

/-! ## A046031.P14076234669108259855

`∩[A007284(n), A054047(n)]`
-/

namespace A046031.P14076234669108259855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046031.P14076234669108259855

/-! ## A046031.P7271586398545278004

`∩[A080228(n+1), A007284(n)]`
-/

namespace A046031.P7271586398545278004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046031.P7271586398545278004

/-! ## A046031.P7518316094937108250

`∩[A080228(n+1), A054047(n)]`
-/

namespace A046031.P7518316094937108250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046031.P7518316094937108250

/-! ## A046031.P9163285848100025826

`∩[A084984(n+1), A007284(n)]`
-/

namespace A046031.P9163285848100025826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046031.P9163285848100025826

/-! ## A046031.P15763841294832009546

`∩[A080228(n+1), A084984(n+1)]`
-/

namespace A046031.P15763841294832009546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046031.P15763841294832009546

/-! ## A046031.P341890169814406647

`∩[A039128(n+1), A007284(n)]`
-/

namespace A046031.P341890169814406647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046031.P341890169814406647

/-! ## A046031.P15027060584316789736

`∩[A039135(n+1), A007284(n)]`
-/

namespace A046031.P15027060584316789736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046031.P15027060584316789736

/-! ## A046031.P1113680683447959674

`∩[A039136(n+1), A007284(n)]`
-/

namespace A046031.P1113680683447959674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046031.P1113680683447959674

/-! ## A046031.P4218162294798630240

`∩[A039137(n+1), A007284(n)]`
-/

namespace A046031.P4218162294798630240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046031.P4218162294798630240

/-!
# A046032: a(n) = (n!)^2 - 1.

The programs for A046032, the canonical program `A046032.P477538570283438794` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046032 has offset 1).

The definition of A046032 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!²-1` (program `A046032.P477538570283438794`, by `A046032.P477538570283438794.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A046032.P477538570283438794

`(n+1)!²-1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046032

/-- `(n+1)!²-1` -/
def P477538570283438794.Spec : Prop :=
  ∀ n, P477538570283438794.a n = A046032 (n + 1)

theorem P477538570283438794.correct : P477538570283438794.Spec := by
  intro n
  simp only [A046032, Nat.add_sub_cancel]

end A046032

/-! ## A046032.P8664370179549360762

`∑[abs(Δ[n!²])]`
-/

namespace A046032.P8664370179549360762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046032.P8664370179549360762

namespace A046032

/-- `∑[abs(Δ[n!²])]` -/
def P8664370179549360762.Spec : Prop :=
  ∀ n, P8664370179549360762.a n = A046032 (n + 1)

end A046032

/-! ## A046032.P13045139635190008103

`∏[(n+1)²]-1`
-/

namespace A046032.P13045139635190008103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A046032.P13045139635190008103

namespace A046032

/-- `∏[(n+1)²]-1` -/
def P13045139635190008103.Spec : Prop :=
  ∀ n, P13045139635190008103.a n = A046032 (n + 1)

end A046032

/-! ## A046032.P13709190908028724865

`Δ[∑[n!²]-n]`
-/

namespace A046032.P13709190908028724865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046032.P13709190908028724865

namespace A046032

/-- `Δ[∑[n!²]-n]` -/
def P13709190908028724865.Spec : Prop :=
  ∀ n, P13709190908028724865.a n = A046032 (n + 1)

end A046032

/-! ## A046032.P5004021970296194157

`∑[-Δ[-n!²]]`
-/

namespace A046032.P5004021970296194157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046032.P5004021970296194157

namespace A046032

/-- `∑[-Δ[-n!²]]` -/
def P5004021970296194157.Spec : Prop :=
  ∀ n, P5004021970296194157.a n = A046032 (n + 1)

end A046032

/-!
# A046033: a(n) = (n!)^3 - 1.

The programs for A046033, the canonical program `A046033.P6165565600451813712` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046033 has offset 1).

The definition of A046033 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!^3-1` (program `A046033.P6165565600451813712`, by `A046033.P6165565600451813712.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A046033.P6165565600451813712

`(n+1)!^3-1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046033

/-- `(n+1)!^3-1` -/
def P6165565600451813712.Spec : Prop :=
  ∀ n, P6165565600451813712.a n = A046033 (n + 1)

theorem P6165565600451813712.correct : P6165565600451813712.Spec := by
  intro n
  simp only [A046033, Nat.add_sub_cancel]

end A046033

/-! ## A046033.P15542657672143615280

`∑[abs(Δ[n!^3])]`
-/

namespace A046033.P15542657672143615280
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046033.P15542657672143615280

namespace A046033

/-- `∑[abs(Δ[n!^3])]` -/
def P15542657672143615280.Spec : Prop :=
  ∀ n, P15542657672143615280.a n = A046033 (n + 1)

end A046033

/-! ## A046033.P6193186843767177269

`∏[Δ[∑[n]²]]-1`
-/

namespace A046033.P6193186843767177269
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A046033.P6193186843767177269

namespace A046033

/-- `∏[Δ[∑[n]²]]-1` -/
def P6193186843767177269.Spec : Prop :=
  ∀ n, P6193186843767177269.a n = A046033 (n + 1)

end A046033

/-! ## A046033.P18183989595873689980

`Δ[∑[n!^3]-n]`
-/

namespace A046033.P18183989595873689980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046033.P18183989595873689980

namespace A046033

/-- `Δ[∑[n!^3]-n]` -/
def P18183989595873689980.Spec : Prop :=
  ∀ n, P18183989595873689980.a n = A046033 (n + 1)

end A046033

/-! ## A046033.P1129081044704749830

`∑[-Δ[-n!^3]]`
-/

namespace A046033.P1129081044704749830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial n ^ 3 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046033.P1129081044704749830

namespace A046033

/-- `∑[-Δ[-n!^3]]` -/
def P1129081044704749830.Spec : Prop :=
  ∀ n, P1129081044704749830.a n = A046033 (n + 1)

end A046033

/-!
# A046034: Numbers whose digits are primes.

The programs for A046034, there is no canonical definition to state claims against.
-/

/-! ## A046034.P8128533512694696450

`∪[A019546(n+1), A061371(n+1)]`
-/

namespace A046034.P8128533512694696450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046034.P8128533512694696450

/-! ## A046034.P2194777587456891412

`∪[A061371(n+1), A062087(n+1)]`
-/

namespace A046034.P2194777587456891412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046034.P2194777587456891412

/-! ## A046034.P11784603650520908373

`∩[A001742(n+1), A037344(n+1)]`
-/

namespace A046034.P11784603650520908373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046034.P11784603650520908373

/-! ## A046034.P2619338336161213023

`∩[A037344(n+1), A202267(n+1)]`
-/

namespace A046034.P2619338336161213023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046034.P2619338336161213023

/-! ## A046034.P7401235740281094637

`∩[A037344(n+1), A329150(n+1)]`
-/

namespace A046034.P7401235740281094637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046034.P7401235740281094637

/-! ## A046034.P7613055851007165639

`∩[A085557(n+1), A365472(n+1)]`
-/

namespace A046034.P7613055851007165639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046034.P7613055851007165639

/-! ## A046034.P7780887665454263793

`∩[A001742(n+1), A039112(n+1)]`
-/

namespace A046034.P7780887665454263793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046034.P7780887665454263793

/-! ## A046034.P13344520535080631449

`∩[A001742(n+1), A039122(n+1)]`
-/

namespace A046034.P13344520535080631449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046034.P13344520535080631449

/-! ## A046034.P11446041489268997284

`∩[A001742(n+1), A039124(n+1)]`
-/

namespace A046034.P11446041489268997284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046034.P11446041489268997284

/-! ## A046034.P4380646548563849443

`∩[A001742(n+1), A039126(n+1)]`
-/

namespace A046034.P4380646548563849443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046034.P4380646548563849443

/-! ## A046034.P12328109479752278401

`∩[A001742(n+1), A039127(n+1)]`
-/

namespace A046034.P12328109479752278401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046034.P12328109479752278401

/-! ## A046034.P16286255277601134084

`∩[A001742(n+1), A052383(n+1)]`
-/

namespace A046034.P16286255277601134084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046034.P16286255277601134084

/-! ## A046034.P1767237644548559963

`∩[A320584(n+1), A365472(n+1)]`
-/

namespace A046034.P1767237644548559963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046034.P1767237644548559963

/-! ## A046034.P10854559150304080634

`∩[A260181(n+1), A365472(n+1)]`
-/

namespace A046034.P10854559150304080634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046034.P10854559150304080634

/-! ## A046034.P2381695893728326653

`eq[0, A276729(n)]`
-/

namespace A046034.P2381695893728326653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046034.P2381695893728326653

/-! ## A046034.P10888292619724587458

`comp[A365471(n+1)]`
-/

namespace A046034.P10888292619724587458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A046034.P10888292619724587458

/-! ## A046034.P7901275885155715884

`eq[1, A342992(n+1)]+1`
-/

namespace A046034.P7901275885155715884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046034.P7901275885155715884

/-!
# A046035: Numbers k such that the concatenation of the first k primes (A019518) is a prime.

The programs for A046035, there is no canonical definition to state claims against.
-/

/-! ## A046035.P7851868296356563079

`A000720(A046284(n+1))`
-/

namespace A046035.P7851868296356563079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A046284 (n + 1)).toNat

end

end A046035.P7851868296356563079

/-!
# A046036: Indices of the concatenation of the first k odd numbers (A019519) which are primes.

The programs for A046036, there is no canonical definition to state claims against.
-/

/-! ## A046036.P1551475409484522530

`(A066811(n+1)+1)/2`
-/

namespace A046036.P1551475409484522530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066811 (n + 1) + 1 : ℚ) / 2

end

end A046036.P1551475409484522530

/-!
# A046037: Numbers n for which floor((3/2)^n) is composite.

The programs for A046037, there is no canonical definition to state claims against.
-/

/-! ## A046037.P7017985560276442466

`comp[A070759(n+1)-2]+2`
-/

namespace A046037.P7017985560276442466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070759 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A046037.P7017985560276442466

/-! ## A046037.P5750740642028139697

`A262681(A083356(n))+7+n`
-/

namespace A046037.P5750740642028139697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 (A083356 n).toNat + 7 + (n : ℤ)

end

end A046037.P5750740642028139697

/-! ## A046037.P378382519071875406

`A020719(A262681(A083356(n))+n)`
-/

namespace A046037.P378382519071875406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 (A262681 (A083356 n).toNat + (n : ℤ)).toNat

end

end A046037.P378382519071875406

/-! ## A046037.P194271473471408232

`A262681(A273425(n))+7+n`
-/

namespace A046037.P194271473471408232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 (A273425 n).toNat + 7 + (n : ℤ)

end

end A046037.P194271473471408232

/-! ## A046037.P42077335093391177

`A020719(A262681(A273425(n))+n)`
-/

namespace A046037.P42077335093391177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 (A262681 (A273425 n).toNat + (n : ℤ)).toNat

end

end A046037.P42077335093391177

/-! ## A046037.P8285917797833920140

`A113724(A080606(A130149(n+3)))+n+2`
-/

namespace A046037.P8285917797833920140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113724 (A080606 (A130149 (n + 3)).toNat).toNat + (n + 2 : ℤ)

end

end A046037.P8285917797833920140

/-! ## A046037.P16035698189689695555

`2*A140823(n+2)-(n-2)`
-/

namespace A046037.P16035698189689695555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140823 (n + 2) - ((n : ℤ) - 2)

end

end A046037.P16035698189689695555

/-! ## A046037.P7457257895181625576

`record[A160642(A160642(n+10))]`
-/

namespace A046037.P7457257895181625576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160642 (A160642 (n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046037.P7457257895181625576

/-!
# A046038: Numbers k for which [ (4/3)^k ] is composite.

The programs for A046038, there is no canonical definition to state claims against.
-/

/-! ## A046038.P13548829017956952239

`eq[char[A070762(n+1)], A263013(n)]`
-/

namespace A046038.P13548829017956952239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070762 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A046038.P13548829017956952239

/-! ## A046038.P1731125125491257643

`lt[char[A068438(n+1)], A344606(2*n+5)]`
-/

namespace A046038.P1731125125491257643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068438 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344606 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A046038.P1731125125491257643

/-! ## A046038.P2077200358748489511

`lt[1, A001222(A064628(n))]`
-/

namespace A046038.P2077200358748489511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A064628 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A046038.P2077200358748489511

/-! ## A046038.P17194360265373351944

`lt[A020639(A064628(n)), A000009(n)]`
-/

namespace A046038.P17194360265373351944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A064628 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046038.P17194360265373351944

/-! ## A046038.P6107912684049495056

`lt[A020639(A064628(n)), A325768(n)]`
-/

namespace A046038.P6107912684049495056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A064628 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046038.P6107912684049495056

/-!
# A046039: Numbers which cannot be represented as a sum of distinct 4th powers.

The programs for A046039, there is no canonical definition to state claims against.
-/

/-! ## A046039.P18141104949200438877

`A122553(A146167(n+1))+n+1`
-/

namespace A046039.P18141104949200438877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 (A146167 (n + 1)).toNat + (n + 1 : ℤ)

end

end A046039.P18141104949200438877

/-! ## A046039.P2212563895141392115

`2*(A140823(n+1)-1)-n`
-/

namespace A046039.P2212563895141392115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A140823 (n + 1) - 1) - (n : ℤ)

end

end A046039.P2212563895141392115

/-!
# A046040: Numbers that are the sum of 6 but no fewer positive cubes.

The programs for A046040, there is no canonical definition to state claims against.
-/

/-! ## A046040.P4145412930370474720

`∩[A003329(n+1), A069136(n+1)]`
-/

namespace A046040.P4145412930370474720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046040.P4145412930370474720

/-! ## A046040.P1080363682894435699

`∩[A004828(n+1), A069136(n+1)]`
-/

namespace A046040.P1080363682894435699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046040.P1080363682894435699

/-! ## A046040.P7984448406478416131

`eq[6, A002376(n+1)]+1`
-/

namespace A046040.P7984448406478416131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046040.P7984448406478416131

/-! ## A046040.P4477208591893657441

`A153152(eq[6, A002376(n+1)])`
-/

namespace A046040.P4477208591893657441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046040.P4477208591893657441

/-! ## A046040.P4641756382850033391

`eq[6, A002376(A060000(n+1))]`
-/

namespace A046040.P4641756382850033391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046040.P4641756382850033391

/-! ## A046040.P14501554640313381423

`eq[A000007(A173680(n)), A173679(n)]`
-/

namespace A046040.P14501554640313381423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A173680 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046040.P14501554640313381423

/-! ## A046040.P15630701697715979928

`eq[A010057(A173680(n)+1), A173679(n)]`
-/

namespace A046040.P15630701697715979928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A173680 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046040.P15630701697715979928

/-! ## A046040.P14376413561770902538

`eq[A010057(3*A173680(n)), A173679(n)]`
-/

namespace A046040.P14376413561770902538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (3 * A173680 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046040.P14376413561770902538

/-! ## A046040.P14665870733348749591

`eq[6, A002376(A233583(n+1))]`
-/

namespace A046040.P14665870733348749591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046040.P14665870733348749591

/-!
# A046042: Number of partitions of n into fourth powers.

The programs for A046042, there is no canonical definition to state claims against.
-/

/-! ## A046042.P1520475377465133911

`∑[A295884(n+1)^A337322(n+1)]`
-/

namespace A046042.P1520475377465133911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295884 (n + 1) : ℚ) ^ (A337322 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046042.P1520475377465133911

/-! ## A046042.P6364314550627561707

`A038548(∏[∏{e}[n+1, floor(#/4)+1]²])`
-/

namespace A046042.P6364314550627561707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), (⌊(Nat.factorization (f2 n) p : ℚ) / 4⌋ + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A046042.P6364314550627561707

/-! ## A046042.P6325817080682995527

`A046951(∏[A063775(n+1)²])`
-/

namespace A046042.P6325817080682995527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A046042.P6325817080682995527

/-! ## A046042.P10649074383664427902

`A084558(∏[sqrt(A008835(n+1))])`
-/

namespace A046042.P10649074383664427902
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008835 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A046042.P10649074383664427902

/-! ## A046042.P7125485564948761431

`A335458(∏[A063775(n+1)]-1)`
-/

namespace A046042.P7125485564948761431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335458 (∏ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A046042.P7125485564948761431

/-! ## A046042.P14145867212385481507

`A001222(lcm(2, ∏[A318497(n+1)]))`
-/

namespace A046042.P14145867212385481507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 2 (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A046042.P14145867212385481507

/-! ## A046042.P14932532630364221808

`A000005(7^∑[A295884(n+1)])`
-/

namespace A046042.P14932532630364221808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A046042.P14932532630364221808

/-! ## A046042.P11151268678147047811

`A000005(∏[gcd(7, A007426(n+1))])`
-/

namespace A046042.P11151268678147047811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A007426 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A046042.P11151268678147047811

/-! ## A046042.P1714759584465850576

`A000005(∏[dr(A063775(n+1)²²)])`
-/

namespace A046042.P1714759584465850576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((A063775 (n + 1) ^ 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A046042.P1714759584465850576

/-! ## A046042.P14108360539979586263

`A000005(∏[A300909(n+1)])`
-/

namespace A046042.P14108360539979586263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A046042.P14108360539979586263

/-!
# A046043: Autobiographical numbers (or curious numbers): list of numbers m = x_0 x_1 x_2 ... x_{b-1} (written in base b) such that x_i is the number of "digits" in m that are equal to i, for all i=0,...,b-1.

The programs for A046043, there is no canonical definition to state claims against.
-/

/-! ## A046043.P1870663180044382144

`lcm(2, A358538(n+1))`
-/

namespace A046043.P1870663180044382144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A358538 (n + 1))

end

end A046043.P1870663180044382144

/-! ## A046043.P4503364268345379646

`lcm(5, A358711(n+1))`
-/

namespace A046043.P4503364268345379646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A358711 (n + 1))

end

end A046043.P4503364268345379646

/-! ## A046043.P3108912421556056603

`lcm(10, A359049(n+1))`
-/

namespace A046043.P3108912421556056603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 10 (A359049 (n + 1))

end

end A046043.P3108912421556056603

/-!
# A046044: Sum of 13 but no fewer nonzero fourth powers.

The programs for A046044, there is no canonical definition to state claims against.
-/

/-! ## A046044.P1171536509236374065

`1+eq[13, A002377(n+1)]`
-/

namespace A046044.P1171536509236374065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046044.P1171536509236374065

/-! ## A046044.P17725489573194606824

`eq[13, A002377(A028310(n))]`
-/

namespace A046044.P17725489573194606824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046044.P17725489573194606824

/-! ## A046044.P5960224106694662735

`A020725(eq[13, A002377(n+1)])`
-/

namespace A046044.P5960224106694662735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046044.P5960224106694662735

/-! ## A046044.P9540819114121949399

`eq[13, A002377(A060000(n+1))]`
-/

namespace A046044.P9540819114121949399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046044.P9540819114121949399

/-! ## A046044.P7036181752010276899

`A065475(eq[13, A002377(n+1)])`
-/

namespace A046044.P7036181752010276899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046044.P7036181752010276899

/-! ## A046044.P5905048783010903541

`A153152(eq[13, A002377(n+1)])`
-/

namespace A046044.P5905048783010903541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046044.P5905048783010903541

/-! ## A046044.P4889444046179975308

`eq[13, A002377(A138153(n+1))]`
-/

namespace A046044.P4889444046179975308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046044.P4889444046179975308

/-! ## A046044.P9814745509070071704

`eq[13, A002377(A233583(n+1))]`
-/

namespace A046044.P9814745509070071704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046044.P9814745509070071704

/-!
# A046045: Sum of 14 but no fewer nonzero fourth powers.

The programs for A046045, there is no canonical definition to state claims against.
-/

/-! ## A046045.P17741312781130431373

`eq[14, A002377(n+2)]+2`
-/

namespace A046045.P17741312781130431373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A046045.P17741312781130431373

/-! ## A046045.P15883849573470958918

`eq[14, A002377(A028310(n))]`
-/

namespace A046045.P15883849573470958918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046045.P15883849573470958918

/-! ## A046045.P772886762287062063

`A020725(eq[14, A002377(n+1)])`
-/

namespace A046045.P772886762287062063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046045.P772886762287062063

/-! ## A046045.P11940254528146528723

`eq[14, A002377(A060000(n+1))]`
-/

namespace A046045.P11940254528146528723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046045.P11940254528146528723

/-! ## A046045.P17580758669441644473

`A153152(eq[14, A002377(n+1)])`
-/

namespace A046045.P17580758669441644473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046045.P17580758669441644473

/-! ## A046045.P12755884758223016535

`eq[14, A002377(A138153(n+1))]`
-/

namespace A046045.P12755884758223016535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046045.P12755884758223016535

/-! ## A046045.P9151795205666240789

`eq[14, A002377(A233583(n+1))]`
-/

namespace A046045.P9151795205666240789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046045.P9151795205666240789

/-!
# A046046: Sum of 15 but no fewer nonzero fourth powers.

The programs for A046046, there is no canonical definition to state claims against.
-/

/-! ## A046046.P1909083277054764383

`1+eq[15, A002377(n+1)]`
-/

namespace A046046.P1909083277054764383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046046.P1909083277054764383

/-! ## A046046.P6385228413023983366

`lt[4, A353861(A002377(n+1)+1)]+1`
-/

namespace A046046.P6385228413023983366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353861 (A002377 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046046.P6385228413023983366

/-! ## A046046.P5178024656939055250

`eq[15, A002377(A028310(n))]`
-/

namespace A046046.P5178024656939055250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046046.P5178024656939055250

/-! ## A046046.P18384081094489010333

`A020725(eq[15, A002377(n+1)])`
-/

namespace A046046.P18384081094489010333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046046.P18384081094489010333

/-! ## A046046.P15008027599689203006

`A065475(eq[15, A002377(n+1)])`
-/

namespace A046046.P15008027599689203006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046046.P15008027599689203006

/-! ## A046046.P17809339287116226189

`A153152(eq[15, A002377(n+1)])`
-/

namespace A046046.P17809339287116226189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046046.P17809339287116226189

/-! ## A046046.P1440884611902709537

`eq[15, A002377(A000038(n)+n)]`
-/

namespace A046046.P1440884611902709537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046046.P1440884611902709537

/-! ## A046046.P14158158336265748830

`eq[15, A002377(A233583(n+1))]`
-/

namespace A046046.P14158158336265748830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046046.P14158158336265748830

/-!
# A046047: Sum of 16 but no fewer nonzero fourth powers.

The programs for A046047, there is no canonical definition to state claims against.
-/

/-! ## A046047.P13460827401172443214

`eq[16, A002377(n+1)]+1`
-/

namespace A046047.P13460827401172443214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046047.P13460827401172443214

/-! ## A046047.P5257472255387210768

`eq[16, A002377(A028310(n))]`
-/

namespace A046047.P5257472255387210768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046047.P5257472255387210768

/-! ## A046047.P17198230868556994979

`A020725(eq[16, A002377(n+1)])`
-/

namespace A046047.P17198230868556994979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046047.P17198230868556994979

/-! ## A046047.P2802699159198229241

`A114637(eq[16, A002377(n+1)])`
-/

namespace A046047.P2802699159198229241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046047.P2802699159198229241

/-! ## A046047.P7623651263145373395

`eq[16, A002377(A065033(2*n))]`
-/

namespace A046047.P7623651263145373395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046047.P7623651263145373395

/-!
# A046048: Numbers that are the sum of 17 but no fewer nonzero fourth powers.

The programs for A046048, there is no canonical definition to state claims against.
-/

/-! ## A046048.P7492293042684796798

`eq[17, A002377(n+1)]+1`
-/

namespace A046048.P7492293042684796798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046048.P7492293042684796798

/-! ## A046048.P16664246290256772940

`eq[17, A002377(A028310(n))]`
-/

namespace A046048.P16664246290256772940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046048.P16664246290256772940

/-! ## A046048.P15715250112211592015

`A020725(eq[17, A002377(n+1)])`
-/

namespace A046048.P15715250112211592015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046048.P15715250112211592015

/-! ## A046048.P6613200039750666985

`eq[A082626(n+1), A374014(n)]`
-/

namespace A046048.P6613200039750666985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046048.P6613200039750666985

/-!
# A046049: Sum of 18 but no fewer nonzero fourth powers.

The programs for A046049, there is no canonical definition to state claims against.
-/

/-! ## A046049.P14767016360092022128

`eq[18, A002377(A028310(n))]`
-/

namespace A046049.P14767016360092022128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046049.P14767016360092022128

/-! ## A046049.P14917413434407068849

`eq[A152890(n), A374014(n)]`
-/

namespace A046049.P14917413434407068849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152890 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046049.P14917413434407068849

/-! ## A046049.P5854001541928225368

`A020725(eq[18, A002377(n+1)])`
-/

namespace A046049.P5854001541928225368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046049.P5854001541928225368

/-! ## A046049.P2864241049845218147

`A065475(eq[18, A002377(n+1)])`
-/

namespace A046049.P2864241049845218147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046049.P2864241049845218147

/-! ## A046049.P7047994973364659636

`eq[18, A002377(A138153(n+1))]`
-/

namespace A046049.P7047994973364659636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046049.P7047994973364659636

/-!
# A046051: Number of prime factors of Mersenne number M(n) = 2^n - 1 (counted with multiplicity).

The programs for A046051, the canonical program `A046051.P13542807281275416355` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046051 has offset 1).

The definition of A046051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046051.P13542807281275416355

`A001222(2^(n+1)-1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046051

/-- `A001222(2^(n+1)-1)` -/
def P13542807281275416355.Spec : Prop :=
  ∀ n, P13542807281275416355.a n = A046051 (n + 1)

theorem P13542807281275416355.correct : P13542807281275416355.Spec := by
  intro n
  simp only [A046051, Nat.add_sub_cancel]

end A046051

/-! ## A046051.P9541209855346072139

`∑{d}[n+1, A085021(#)]`
-/

namespace A046051.P9541209855346072139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085021 d

end

end A046051.P9541209855346072139

namespace A046051

/-- `∑{d}[n+1, A085021(#)]` -/
def P9541209855346072139.Spec : Prop :=
  ∀ n, P9541209855346072139.a n = A046051 (n + 1)

end A046051

/-! ## A046051.P4650633310923822690

`A057957(n+1)-A054992(n+1)`
-/

namespace A046051.P4650633310923822690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057957 (n + 1) - A054992 (n + 1)

end

end A046051.P4650633310923822690

namespace A046051

/-- `A057957(n+1)-A054992(n+1)` -/
def P4650633310923822690.Spec : Prop :=
  ∀ n, P4650633310923822690.a n = A046051 (n + 1)

theorem P4650633310923822690.correct : P4650633310923822690.Spec := by
  intro n
  simp only [A046051, Nat.add_sub_cancel, A046051.P4650633310923822690.a, A046051.P13542807281275416355.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A054992, A054992.P12592111826039149461.a, A057957, A057957.P2044955254362379841.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046051

/-! ## A046051.P1573922821563822927

`A057957(n+1)-A342655(A073582(n+1))`
-/

namespace A046051.P1573922821563822927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057957 (n + 1) - A342655 (A073582 (n + 1)).toNat

end

end A046051.P1573922821563822927

namespace A046051

/-- `A057957(n+1)-A342655(A073582(n+1))` -/
def P1573922821563822927.Spec : Prop :=
  ∀ n, P1573922821563822927.a n = A046051 (n + 1)

end A046051

/-! ## A046051.P11065802518152572731

`A057957(n+1)-A342655(A100484(n+1))`
-/

namespace A046051.P11065802518152572731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057957 (n + 1) - A342655 (A100484 (n + 1)).toNat

end

end A046051.P11065802518152572731

namespace A046051

/-- `A057957(n+1)-A342655(A100484(n+1))` -/
def P11065802518152572731.Spec : Prop :=
  ∀ n, P11065802518152572731.a n = A046051 (n + 1)

end A046051

/-! ## A046051.P18164174904278835309

`A057957(n+1)-A342655(2*A000040(n+1))`
-/

namespace A046051.P18164174904278835309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057957 (n + 1) - A342655 (2 * A000040 (n + 1)).toNat

end

end A046051.P18164174904278835309

namespace A046051

/-- `A057957(n+1)-A342655(2*A000040(n+1))` -/
def P18164174904278835309.Spec : Prop :=
  ∀ n, P18164174904278835309.a n = A046051 (n + 1)

end A046051

/-! ## A046051.P16861928685880083993

`A057957(n+1)-A342656(2*A000040(n+1))`
-/

namespace A046051.P16861928685880083993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057957 (n + 1) - A342656 (2 * A000040 (n + 1)).toNat

end

end A046051.P16861928685880083993

namespace A046051

/-- `A057957(n+1)-A342656(2*A000040(n+1))` -/
def P16861928685880083993.Spec : Prop :=
  ∀ n, P16861928685880083993.a n = A046051 (n + 1)

end A046051

/-! ## A046051.P8924504617718553708

`A057957(n+1)-A277892(2*A000040(n+2))`
-/

namespace A046051.P8924504617718553708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057957 (n + 1) - A277892 (2 * A000040 (n + 2)).toNat

end

end A046051.P8924504617718553708

namespace A046051

/-- `A057957(n+1)-A277892(2*A000040(n+2))` -/
def P8924504617718553708.Spec : Prop :=
  ∀ n, P8924504617718553708.a n = A046051 (n + 1)

end A046051

/-!
# A046053: Total number of prime factors of the repunit R(n) = (10^n-1)/9.

The programs for A046053, there is no canonical definition to state claims against.
-/

/-! ## A046053.P4872695974581057337

`A057951(n+1)-2`
-/

namespace A046053.P4872695974581057337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057951 (n + 1) - 2

end

end A046053.P4872695974581057337

/-! ## A046053.P17053490800442946015

`A023444(A057951(n+1))`
-/

namespace A046053.P17053490800442946015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A057951 (n + 1)).toNat

end

end A046053.P17053490800442946015

/-! ## A046053.P7496810110440634482

`A023445(A057951(n+1)+1)`
-/

namespace A046053.P7496810110440634482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A057951 (n + 1) + 1).toNat

end

end A046053.P7496810110440634482

/-! ## A046053.P15111312774852369803

`A063277(2*A057951(n+1))`
-/

namespace A046053.P15111312774852369803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063277 (2 * A057951 (n + 1)).toNat

end

end A046053.P15111312774852369803

/-! ## A046053.P3120048037090482544

`(A057951(n+1)+A017137(n))%(n+1)`
-/

namespace A046053.P3120048037090482544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057951 (n + 1) + A017137 n) (n + 1 : ℤ)

end

end A046053.P3120048037090482544

/-! ## A046053.P8998031338865766446

`A254078(n+2)%A057951(n+1)`
-/

namespace A046053.P8998031338865766446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254078 (n + 2)) (A057951 (n + 1))

end

end A046053.P8998031338865766446

/-!
# A046054: Incrementally largest number of nonisomorphic finite Abelian groups as a function of order.

The programs for A046054, there is no canonical definition to state claims against.
-/

/-! ## A046054.P3751729069242332662

`A000688(A046055(n+1))`
-/

namespace A046054.P3751729069242332662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A046055 (n + 1)).toNat

end

end A046054.P3751729069242332662

/-! ## A046054.P12298427968555509729

`record[A212646(n+1)]`
-/

namespace A046054.P12298427968555509729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046054.P12298427968555509729

/-! ## A046054.P13093019682362499226

`record[A050360(n+1)]`
-/

namespace A046054.P13093019682362499226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046054.P13093019682362499226

/-! ## A046054.P327782263965438192

`record[A299200(A181820(n+1))]`
-/

namespace A046054.P327782263965438192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A181820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046054.P327782263965438192

/-! ## A046054.P12760747848637760641

`A210765(∑[n]+1)`
-/

namespace A046054.P12760747848637760641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210765 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A046054.P12760747848637760641

/-!
# A046055: Orders of finite Abelian groups having the incrementally largest numbers of nonisomorphic forms (A046054).

The programs for A046055, there is no canonical definition to state claims against.
-/

/-! ## A046055.P17048186690703105906

`A046056(A046054(n+1))`
-/

namespace A046055.P17048186690703105906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046056 (A046054 (n + 1)).toNat

end

end A046055.P17048186690703105906

/-! ## A046055.P8001795650884021231

`A046056(A210765(∑[n]+1))`
-/

namespace A046055.P8001795650884021231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046056 (A210765 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A046055.P8001795650884021231

/-! ## A046055.P987653757312425506

`A046056(record[A050360(n+1)])`
-/

namespace A046055.P987653757312425506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046055.P987653757312425506

/-! ## A046055.P13823462551660405384

`A046056(record[A210765(n+1)])`
-/

namespace A046055.P13823462551660405384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046055.P13823462551660405384

/-! ## A046055.P7523727632589569726

`A046056(record[A212646(n+1)])`
-/

namespace A046055.P7523727632589569726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046055.P7523727632589569726

/-!
# A046056: Smallest order for which there are n nonisomorphic finite Abelian groups, or 0 if no such order exists.

The programs for A046056, there is no canonical definition to state claims against.
-/

/-! ## A046056.P14262249034187027496

`A086141(A005941(2*(n+1))-1)`
-/

namespace A046056.P14262249034187027496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086141 (A005941 (2 * (n + 1)) - 1).toNat

end

end A046056.P14262249034187027496

/-! ## A046056.P177595026010266249

`A181821(A003961(n+1)^A174544(n))`
-/

namespace A046056.P177595026010266249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) ^ (A174544 n : ℤ))).toNat

end

end A046056.P177595026010266249

/-! ## A046056.P8325642756465645251

`A181821(A003961(n+1)^A196879(n))`
-/

namespace A046056.P8325642756465645251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) ^ (A196879 n : ℤ))).toNat

end

end A046056.P8325642756465645251

/-! ## A046056.P6097521555080568519

`A064549(A181821(n+1)^A174544(n))`
-/

namespace A046056.P6097521555080568519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (SequenceMachineLib.roundAway ((A181821 (n + 1) : ℚ) ^ (A174544 n : ℤ))).toNat

end

end A046056.P6097521555080568519

/-! ## A046056.P8679489684444594192

`A181821(A003961(n+1)^A251072(n))`
-/

namespace A046056.P8679489684444594192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) ^ (A251072 n : ℤ))).toNat

end

end A046056.P8679489684444594192

/-!
# A046058: Incrementally largest numbers of nonisomorphic finite groups of order n.

The programs for A046058, there is no canonical definition to state claims against.
-/

/-! ## A046058.P14116880007171302253

`A000001(A046059(n+1))`
-/

namespace A046058.P14116880007171302253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A046059 (n + 1)).toNat

end

end A046058.P14116880007171302253

/-! ## A046058.P8616087517983309743

`record[A000001(n+1)]`
-/

namespace A046058.P8616087517983309743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046058.P8616087517983309743

/-! ## A046058.P7411637931108834171

`record[A098887(n+1)]`
-/

namespace A046058.P7411637931108834171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046058.P7411637931108834171

/-! ## A046058.P9997168325091059307

`record[sqrt(A297420(n+1))]`
-/

namespace A046058.P9997168325091059307
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046058.P9997168325091059307

/-! ## A046058.P4118088918746656841

`record[A275422(n)*A319171(n)]`
-/

namespace A046058.P4118088918746656841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 n * A319171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046058.P4118088918746656841

/-!
# A046059: Orders of finite groups having the incrementally largest numbers of nonisomorphic forms A046058.

The programs for A046059, there is no canonical definition to state claims against.
-/

/-! ## A046059.P6508762030012160969

`record[∏{e}[n+1, #+1]*A278221(n+1)]`
-/

namespace A046059.P6508762030012160969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) * A278221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046059.P6508762030012160969

/-! ## A046059.P6996371350711575533

`record[∏{e}[n+1, #+1]*A279350(n+1)]`
-/

namespace A046059.P6996371350711575533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) * A279350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046059.P6996371350711575533

/-! ## A046059.P3802870907819612029

`record[2^∑{p}[n+1, ceil(1/#)]*A122111(n+1)]`
-/

namespace A046059.P3802870907819612029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ⌈1 / (p : ℚ)⌉ : ℤ) * (A122111 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046059.P3802870907819612029

/-! ## A046059.P13503036536659699587

`A263660(A173186(n+1))`
-/

namespace A046059.P13503036536659699587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263660 (A173186 (n + 1)).toNat

end

end A046059.P13503036536659699587

/-! ## A046059.P6779545749987411632

`record[A034444(n+1)*A122111(n+1)]`
-/

namespace A046059.P6779545749987411632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046059.P6779545749987411632

/-!
# A046060: 5-multiperfect numbers.

The programs for A046060, there is no canonical definition to state claims against.
-/

/-! ## A046060.P2365730214320334459

`A348032(A325105(n)+A240039(2*(n+2)))`
-/

namespace A046060.P2365730214320334459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348032 (A325105 n + A240039 (2 * (n + 2))).toNat

end

end A046060.P2365730214320334459

/-!
# A046062: Primes of the form n*phi(n)+1 where phi(n) is the Euler function.

The programs for A046062, the canonical program `A046062.P12626048693260367706` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046062 has offset 1).

The definition of A046062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046062.P920045982485229289

`p?[A046152(n+1)]`
-/

namespace A046062.P920045982485229289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046062.P920045982485229289

namespace A046062

/-- `p?[A046152(n+1)]` -/
def P920045982485229289.Spec : Prop :=
  ∀ n, P920045982485229289.a n = A046062 (n + 1)

theorem P920045982485229289.correct : P920045982485229289.Spec := by
  intro n
  simp only [A046062, Nat.add_sub_cancel, A046062.P920045982485229289.f1, A046062.P920045982485229289.a, A046062.P12626048693260367706.f1, A046062.P12626048693260367706.a, A005563, A005563.P13300161655551567421.a, A046152, A046152.P7809861723130686075.a, A053650, A053650.P6469571087341810863.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046062

/-! ## A046062.P3911602414610616857

`p?[A002618(n+1)+1]`
-/

namespace A046062.P3911602414610616857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046062.P3911602414610616857

namespace A046062

/-- `p?[A002618(n+1)+1]` -/
def P3911602414610616857.Spec : Prop :=
  ∀ n, P3911602414610616857.a n = A046062 (n + 1)

theorem P3911602414610616857.correct : P3911602414610616857.Spec := by
  intro n
  simp only [A046062, Nat.add_sub_cancel, A046062.P3911602414610616857.f1, A046062.P3911602414610616857.a, A046062.P12626048693260367706.f1, A046062.P12626048693260367706.a, A002618, A002618.P8397693677428532773.a, A005563, A005563.P13300161655551567421.a, A053650, A053650.P6469571087341810863.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046062

/-! ## A046062.P7345677363538125946

`p?[A046151(n+1)+2]`
-/

namespace A046062.P7345677363538125946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046062.P7345677363538125946

namespace A046062

/-- `p?[A046151(n+1)+2]` -/
def P7345677363538125946.Spec : Prop :=
  ∀ n, P7345677363538125946.a n = A046062 (n + 1)

theorem P7345677363538125946.correct : P7345677363538125946.Spec := by
  intro n
  simp only [A046062, Nat.add_sub_cancel, A046062.P7345677363538125946.f1, A046062.P7345677363538125946.a, A046062.P12626048693260367706.f1, A046062.P12626048693260367706.a, A005563, A005563.P13300161655551567421.a, A046151, A046151.P159560385155613916.a, A053650, A053650.P6469571087341810863.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046062

/-! ## A046062.P11099184896781894863

`p?[(n+1)*A000010(n+1)+1]`
-/

namespace A046062.P11099184896781894863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046062.P11099184896781894863

namespace A046062

/-- `p?[(n+1)*A000010(n+1)+1]` -/
def P11099184896781894863.Spec : Prop :=
  ∀ n, P11099184896781894863.a n = A046062 (n + 1)

theorem P11099184896781894863.correct : P11099184896781894863.Spec := by
  intro n
  simp only [A046062, Nat.add_sub_cancel, A046062.P11099184896781894863.f1, A046062.P11099184896781894863.a, A046062.P12626048693260367706.f1, A046062.P12626048693260367706.a, A000010, A000010.P4673923239450215316.a, A005563, A005563.P13300161655551567421.a, A053650, A053650.P6469571087341810863.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046062

/-! ## A046062.P7101887075513580868

`p?[(n+1)*A039649(n+1)-n]`
-/

namespace A046062.P7101887075513580868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A039649 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046062.P7101887075513580868

namespace A046062

/-- `p?[(n+1)*A039649(n+1)-n]` -/
def P7101887075513580868.Spec : Prop :=
  ∀ n, P7101887075513580868.a n = A046062 (n + 1)

theorem P7101887075513580868.correct : P7101887075513580868.Spec := by
  intro n
  simp only [A046062, Nat.add_sub_cancel, A046062.P7101887075513580868.f1, A046062.P7101887075513580868.a, A046062.P12626048693260367706.f1, A046062.P12626048693260367706.a, A005563, A005563.P13300161655551567421.a, A039649, A039649.P16717312505280968063.a, A053650, A053650.P6469571087341810863.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046062

/-! ## A046062.P7504250284528438519

`p?[(n+1)*(A109606(n+1)+1)+1]`
-/

namespace A046062.P7504250284528438519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A109606 (n + 1) + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046062.P7504250284528438519

namespace A046062

/-- `p?[(n+1)*(A109606(n+1)+1)+1]` -/
def P7504250284528438519.Spec : Prop :=
  ∀ n, P7504250284528438519.a n = A046062 (n + 1)

theorem P7504250284528438519.correct : P7504250284528438519.Spec := by
  intro n
  simp only [A046062, Nat.add_sub_cancel, A046062.P7504250284528438519.f1, A046062.P7504250284528438519.a, A046062.P12626048693260367706.f1, A046062.P12626048693260367706.a, A005563, A005563.P13300161655551567421.a, A053650, A053650.P6469571087341810863.a, A109606, A109606.P2415810041766612210.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046062

/-! ## A046062.P4322493472950742269

`p?[A062955(n+1)+A039649(n+1)]`
-/

namespace A046062.P4322493472950742269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062955 (n + 1) + A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046062.P4322493472950742269

namespace A046062

/-- `p?[A062955(n+1)+A039649(n+1)]` -/
def P4322493472950742269.Spec : Prop :=
  ∀ n, P4322493472950742269.a n = A046062 (n + 1)

theorem P4322493472950742269.correct : P4322493472950742269.Spec := by
  intro n
  simp only [A046062, Nat.add_sub_cancel, A046062.P4322493472950742269.f1, A046062.P4322493472950742269.a, A046062.P12626048693260367706.f1, A046062.P12626048693260367706.a, A005563, A005563.P13300161655551567421.a, A039649, A039649.P16717312505280968063.a, A053650, A053650.P6469571087341810863.a, A062955, A062955.P10591233305349930181.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046062

/-! ## A046062.P12626048693260367706

`p?[A005563(n)+2-A053650(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A046062

/-- `p?[A005563(n)+2-A053650(n+1)]` -/
def P12626048693260367706.Spec : Prop :=
  ∀ n, P12626048693260367706.a n = A046062 (n + 1)

theorem P12626048693260367706.correct : P12626048693260367706.Spec := by
  intro n
  simp only [A046062, Nat.add_sub_cancel]

end A046062

/-! ## A046062.P4401261329636903347

`p?[A000010((n+1)²)+1]`
-/

namespace A046062.P4401261329636903347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046062.P4401261329636903347

namespace A046062

/-- `p?[A000010((n+1)²)+1]` -/
def P4401261329636903347.Spec : Prop :=
  ∀ n, P4401261329636903347.a n = A046062 (n + 1)

end A046062

/-! ## A046062.P7892174906063142856

`filter[A046152(n+1), A010051(#)]`
-/

namespace A046062.P7892174906063142856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A046062.P7892174906063142856

namespace A046062

/-- `filter[A046152(n+1), A010051(#)]` -/
def P7892174906063142856.Spec : Prop :=
  ∀ n, P7892174906063142856.a n = A046062 (n + 1)

end A046062

/-! ## A046062.P17770028252705340720

`filter[A046152(n+1), A365716(#)]`
-/

namespace A046062.P17770028252705340720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A046062.P17770028252705340720

namespace A046062

/-- `filter[A046152(n+1), A365716(#)]` -/
def P17770028252705340720.Spec : Prop :=
  ∀ n, P17770028252705340720.a n = A046062 (n + 1)

end A046062

/-! ## A046062.P13629334484748914910

`filter[A046152(n+1), A380467(#)]`
-/

namespace A046062.P13629334484748914910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A046062.P13629334484748914910

namespace A046062

/-- `filter[A046152(n+1), A380467(#)]` -/
def P13629334484748914910.Spec : Prop :=
  ∀ n, P13629334484748914910.a n = A046062 (n + 1)

end A046062

/-!
# A046063: Numbers k such that the k-th partition number A000041(k) is prime.

The programs for A046063, there is no canonical definition to state claims against.
-/

/-! ## A046063.P4742306848333186287

`eq[1, A085561(n)]`
-/

namespace A046063.P4742306848333186287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046063.P4742306848333186287

/-! ## A046063.P15038410721991376756

`eq[2, A085543(n)]`
-/

namespace A046063.P15038410721991376756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046063.P15038410721991376756

/-! ## A046063.P9608271644749122521

`eq[2, A278241(n)]`
-/

namespace A046063.P9608271644749122521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046063.P9608271644749122521

/-! ## A046063.P2551928328568543301

`eq[1, A087175(n+1)]+1`
-/

namespace A046063.P2551928328568543301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046063.P2551928328568543301

/-! ## A046063.P9444550857622876788

`eq[1, A087175(A028310(n))]`
-/

namespace A046063.P9444550857622876788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046063.P9444550857622876788

/-! ## A046063.P7412870038126373923

`lt[A085561(n), atan(A085537(n))]`
-/

namespace A046063.P7412870038126373923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A085537 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A046063.P7412870038126373923

/-! ## A046063.P300226866097993933

`lt[A085561(n), atan(A085538(n))]`
-/

namespace A046063.P300226866097993933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A085538 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A046063.P300226866097993933

/-! ## A046063.P6451937225308777220

`lt[A085561(n), atan(A085539(n))]`
-/

namespace A046063.P6451937225308777220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A085539 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A046063.P6451937225308777220

/-! ## A046063.P10978686707246917854

`lt[A085537(A085561(n)²), A085561(n)]`
-/

namespace A046063.P10978686707246917854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 (A085561 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046063.P10978686707246917854

/-!
# A046064: Not a product of partition numbers (A000041).

The programs for A046064, there is no canonical definition to state claims against.
-/

/-! ## A046064.P14871241349440139254

`eq[0, A046056(A257088(n))]`
-/

namespace A046064.P14871241349440139254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046056 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046064.P14871241349440139254

/-! ## A046064.P7171360911492328420

`eq[0, A046056(A008574(n))]`
-/

namespace A046064.P7171360911492328420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046056 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046064.P7171360911492328420

/-! ## A046064.P5959107522282388743

`lt[A046056(A008574(n)), A000217(n)]`
-/

namespace A046064.P5959107522282388743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046056 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046064.P5959107522282388743

/-! ## A046064.P1967542842123033920

`lt[A046056(A008574(n)), A062383(n)]`
-/

namespace A046064.P1967542842123033920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046056 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046064.P1967542842123033920

/-! ## A046064.P4276796306852925242

`eq[0, A046056(A008706(n))]`
-/

namespace A046064.P4276796306852925242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046056 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046064.P4276796306852925242

/-!
# A046065: a(n) = n^(n+2) - (n+2)^n.

The programs for A046065, the canonical program `A046065.P8548137458240919049` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046065 has offset 0).

The definition of A046065 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+2)-(n+2)^n` (program `A046065.P8548137458240919049`, by `A046065.P8548137458240919049.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A046065.P8548137458240919049

`n^(n+2)-(n+2)^n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046065

/-- `n^(n+2)-(n+2)^n` -/
def P8548137458240919049.Spec : Prop :=
  ∀ n, P8548137458240919049.a n = A046065 n

theorem P8548137458240919049.correct : P8548137458240919049.Spec := by
  intro n
  simp only [A046065]

end A046065

/-! ## A046065.P6725202821120295684

`A055651((n+1)²+(n+2)²)`
-/

namespace A046065.P6725202821120295684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A046065.P6725202821120295684

namespace A046065

/-- `A055651((n+1)²+(n+2)²)` -/
def P6725202821120295684.Spec : Prop :=
  ∀ n, P6725202821120295684.a n = A046065 n

end A046065

/-! ## A046065.P6264122251722941515

`A054977(n+3)*A055651(A001844(n+1))`
-/

namespace A046065.P6264122251722941515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 3) * A055651 (A001844 (n + 1)).toNat

end

end A046065.P6264122251722941515

namespace A046065

/-- `A054977(n+3)*A055651(A001844(n+1))` -/
def P6264122251722941515.Spec : Prop :=
  ∀ n, P6264122251722941515.a n = A046065 n

end A046065

/-! ## A046065.P16976013806863106663

`A220417(A054977(n)+A001844(n))`
-/

namespace A046065.P16976013806863106663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220417 (A054977 n + A001844 n).toNat

end

end A046065.P16976013806863106663

namespace A046065

/-- `A220417(A054977(n)+A001844(n))` -/
def P16976013806863106663.Spec : Prop :=
  ∀ n, P16976013806863106663.a n = A046065 n

end A046065

/-! ## A046065.P14001623941125857620

`A055651(A001844(n+1))%A007778(2*n+3)`
-/

namespace A046065.P14001623941125857620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055651 (A001844 (n + 1)).toNat) (A007778 (2 * n + 3))

end

end A046065.P14001623941125857620

namespace A046065

/-- `A055651(A001844(n+1))%A007778(2*n+3)` -/
def P14001623941125857620.Spec : Prop :=
  ∀ n, P14001623941125857620.a n = A046065 n

end A046065

/-!
# A046066: Fortunate primes (A005235) in numerical order with duplicates removed.

The programs for A046066, there is no canonical definition to state claims against.
-/

/-! ## A046066.P16706060016723683758

`eq[1, char[A005235(n+1)]]`
-/

namespace A046066.P16706060016723683758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005235 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046066.P16706060016723683758

/-! ## A046066.P7285825534743056358

`filter[A197300(n+1), A376451(#)]`
-/

namespace A046066.P7285825534743056358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A376451 (f1 j).toNat = 1) n)

end

end A046066.P7285825534743056358

/-! ## A046066.P12326842792814439518

`∩[A137624(n+1), A197300(n+1)]`
-/

namespace A046066.P12326842792814439518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046066.P12326842792814439518

/-! ## A046066.P11292092407892171555

`p?[C(A239968(n+1), A166948(n+1))]`
-/

namespace A046066.P11292092407892171555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A239968 (n + 1)).toNat (A166948 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A046066.P11292092407892171555

/-! ## A046066.P16471522699199942388

`A000040(lt[A380690(2*n+3), A328391(n+1)])`
-/

namespace A046066.P16471522699199942388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380690 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046066.P16471522699199942388

/-!
# A046067: Smallest m such that (2n-1)2^m+1 is prime, or -1 if no such value exists.

The programs for A046067, there is no canonical definition to state claims against.
-/

/-! ## A046067.P6777526835823470325

`A186742(A283670(n+1))+A040076(2*n+1)`
-/

namespace A046067.P6777526835823470325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186742 (A283670 (n + 1)).toNat + A040076 (2 * n + 1)

end

end A046067.P6777526835823470325

/-! ## A046067.P1732790093009434690

`A040076(2*n+1)+A011655(3*n)`
-/

namespace A046067.P1732790093009434690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (2 * n + 1) + A011655 (3 * n)

end

end A046067.P1732790093009434690

/-! ## A046067.P2295560695680473825

`A040076(A004526(3*(n+1))+A004526(n))`
-/

namespace A046067.P2295560695680473825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A004526 (3 * (n + 1)) + A004526 n).toNat

end

end A046067.P2295560695680473825

/-! ## A046067.P15489164719601905837

`A040076(2*n+1)*A318829(A253893(3*(n+1)))`
-/

namespace A046067.P15489164719601905837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (2 * n + 1) * A318829 (A253893 (3 * (n + 1))).toNat

end

end A046067.P15489164719601905837

/-! ## A046067.P7679270842047436299

`A001222(A008578(3*n+1))*A040076(2*n+1)`
-/

namespace A046067.P7679270842047436299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (3 * n + 1)).toNat * A040076 (2 * n + 1)

end

end A046067.P7679270842047436299

/-! ## A046067.P14342188221098422781

`A040076(2*n+1)+A000122(A003273(3*n+2))`
-/

namespace A046067.P14342188221098422781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (2 * n + 1) + A000122 (A003273 (3 * n + 2)).toNat

end

end A046067.P14342188221098422781

/-! ## A046067.P3904793785658890235

`A033809(n+1)-A000007(n)`
-/

namespace A046067.P3904793785658890235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033809 (n + 1) - A000007 n

end

end A046067.P3904793785658890235

/-! ## A046067.P3087487103363916506

`A033809(n+1)*A057427(n)`
-/

namespace A046067.P3087487103363916506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033809 (n + 1) * A057427 n

end

end A046067.P3087487103363916506

/-! ## A046067.P14800331238898503297

`A033809(n+1)%A000156(n)`
-/

namespace A046067.P14800331238898503297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033809 (n + 1)) (A000156 n)

end

end A046067.P14800331238898503297

/-! ## A046067.P4265634364512823249

`and(A033809(n+1), A057428(n))`
-/

namespace A046067.P4265634364512823249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033809 (n + 1)) (A057428 n)

end

end A046067.P4265634364512823249

/-! ## A046067.P10389374077617429038

`and(A033809(n+1), A134824(n))`
-/

namespace A046067.P10389374077617429038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033809 (n + 1)) (A134824 n)

end

end A046067.P10389374077617429038

/-! ## A046067.P8853855894314668495

`A033809(n+1)-A129186(3*n)`
-/

namespace A046067.P8853855894314668495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033809 (n + 1) - A129186 (3 * n)

end

end A046067.P8853855894314668495

/-! ## A046067.P2750879767154921836

`A033809(n+1)-A010051(2*(n+1))`
-/

namespace A046067.P2750879767154921836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033809 (n + 1) - A010051 (2 * (n + 1))

end

end A046067.P2750879767154921836

/-!
# A046069: Riesel Problem: Smallest m >= 0 such that (2n-1)2^m-1 is prime, or -1 if no such value exists.

The programs for A046069, there is no canonical definition to state claims against.
-/

/-! ## A046069.P17137478486519219812

`A040081(Δ[n²])`
-/

namespace A046069.P17137478486519219812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046069.P17137478486519219812

/-! ## A046069.P1165109565935694429

`A040081(2*n+1)+A010051(2*(n+2))`
-/

namespace A046069.P1165109565935694429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (2 * n + 1) + A010051 (2 * (n + 2))

end

end A046069.P1165109565935694429

/-! ## A046069.P4161632736966729125

`A063377(2*(n+2))+A040081(2*n+1)`
-/

namespace A046069.P4161632736966729125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (2 * (n + 2)) + A040081 (2 * n + 1)

end

end A046069.P4161632736966729125

/-! ## A046069.P15236608924926058184

`A040081(2*n+1)+A027870(A112605(n))`
-/

namespace A046069.P15236608924926058184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (2 * n + 1) + A027870 (A112605 n).toNat

end

end A046069.P15236608924926058184

/-! ## A046069.P7702272659554992631

`A107247(A279060(n))+A040081(2*n+1)`
-/

namespace A046069.P7702272659554992631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107247 (A279060 n).toNat + A040081 (2 * n + 1)

end

end A046069.P7702272659554992631

/-! ## A046069.P6059114058666581054

`A003484(A225017(n))*A040081(2*n+1)`
-/

namespace A046069.P6059114058666581054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (A225017 n).toNat * A040081 (2 * n + 1)

end

end A046069.P6059114058666581054

/-! ## A046069.P6732987503320436293

`A040081(A181983(2*n+1))+A000007(n+3)`
-/

namespace A046069.P6732987503320436293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A181983 (2 * n + 1)).toNat + A000007 (n + 3)

end

end A046069.P6732987503320436293

/-! ## A046069.P12445095199033561827

`A003484(A009195(2*n+1))*A040081(2*n+1)`
-/

namespace A046069.P12445095199033561827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (A009195 (2 * n + 1)).toNat * A040081 (2 * n + 1)

end

end A046069.P12445095199033561827

/-! ## A046069.P10692164448278373134

`A108129(n+1)-char[1]`
-/

namespace A046069.P10692164448278373134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108129 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A046069.P10692164448278373134

/-! ## A046069.P3557280843838498995

`A159075(n)+A108129(n+1)`
-/

namespace A046069.P3557280843838498995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A108129 (n + 1)

end

end A046069.P3557280843838498995

/-! ## A046069.P242766733772690361

`A060576(n)*A108129(n+1)`
-/

namespace A046069.P242766733772690361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A108129 (n + 1)

end

end A046069.P242766733772690361

/-! ## A046069.P6991318069472227814

`A108129(n+1)%A001644(n)`
-/

namespace A046069.P6991318069472227814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108129 (n + 1)) (A001644 n)

end

end A046069.P6991318069472227814

/-! ## A046069.P4045537858073387547

`lcm(A105812(n), A108129(n+1))`
-/

namespace A046069.P4045537858073387547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105812 n) (A108129 (n + 1))

end

end A046069.P4045537858073387547

/-! ## A046069.P13417788405577786958

`and(A057026(n), A108129(n+1))`
-/

namespace A046069.P13417788405577786958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057026 n) (A108129 (n + 1))

end

end A046069.P13417788405577786958

/-! ## A046069.P2396728141288576828

`and(A108129(n+1), A239678(n))`
-/

namespace A046069.P2396728141288576828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108129 (n + 1)) (A239678 n)

end

end A046069.P2396728141288576828

/-! ## A046069.P10180752592820264466

`xor(A063524(n), A108129(n+1))`
-/

namespace A046069.P10180752592820264466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A108129 (n + 1))

end

end A046069.P10180752592820264466

/-! ## A046069.P1558743053469355813

`and(A087522(n), A108129(n+1))`
-/

namespace A046069.P1558743053469355813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087522 n) (A108129 (n + 1))

end

end A046069.P1558743053469355813

/-!
# A046070: Second smallest m such that (2n-1)2^m-1 is prime, or -1 if no such value exists.

The programs for A046070, there is no canonical definition to state claims against.
-/

/-! ## A046070.P13497955074285844253

`A050412(A057026(n))+A046069(n+1)`
-/

namespace A046070.P13497955074285844253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A057026 n).toNat + A046069 (n + 1)

end

end A046070.P13497955074285844253

/-! ## A046070.P2187696044189993048

`A050412(A057026(n))+A040081(Δ[n²])`
-/

namespace A046070.P2187696044189993048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A057026 n).toNat + A040081 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046070.P2187696044189993048

/-! ## A046070.P12571575336576184150

`A050412(A057026(n))+A108129(n+1)-char[1]`
-/

namespace A046070.P12571575336576184150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A057026 n).toNat + (A108129 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A046070.P12571575336576184150

/-! ## A046070.P17052796238607074903

`A050412(A038699(2*n+1))+A046069(n+1)`
-/

namespace A046070.P17052796238607074903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A038699 (2 * n + 1)).toNat + A046069 (n + 1)

end

end A046070.P17052796238607074903

/-! ## A046070.P15404199050389672854

`A050412(A038699(2*n+1))+A040081(2*n+1)`
-/

namespace A046070.P15404199050389672854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A038699 (2 * n + 1)).toNat + A040081 (2 * n + 1)

end

end A046070.P15404199050389672854

/-!
# A046071: Triangle of nonzero quadratic residues mod n.

The programs for A046071, there is no canonical definition to state claims against.
-/

/-! ## A046071.P14463742569555516649

`gcd(A010702(A329879(n+1)), A107948(n))`
-/

namespace A046071.P14463742569555516649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010702 (A329879 (n + 1)).toNat) (A107948 n)

end

end A046071.P14463742569555516649

/-! ## A046071.P17844949738460910733

`A329316(A027423(n)%A037461(2*n+5))`
-/

namespace A046071.P17844949738460910733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329316 (Int.tmod (A027423 n) (A037461 (2 * n + 5))).toNat

end

end A046071.P17844949738460910733

/-! ## A046071.P1916239262709229965

`A300119(A143105(n)+1)`
-/

namespace A046071.P1916239262709229965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300119 (A143105 n + 1).toNat

end

end A046071.P1916239262709229965

/-! ## A046071.P13280876745638776548

`A335917(or(7, A181815(n+1)))`
-/

namespace A046071.P13280876745638776548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335917 (Int.lor 7 (A181815 (n + 1))).toNat

end

end A046071.P13280876745638776548

/-! ## A046071.P17466527984444008276

`gcd(A197947(lcm(2, xor(n, -2))/2), A257278(n+1))`
-/

namespace A046071.P17466527984444008276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197947 (SequenceMachineLib.roundAway ((Int.lcm 2 (Int.xor (n : ℤ) (-2)) : ℚ) / 2)).toNat) (A257278 (n + 1))

end

end A046071.P17466527984444008276

/-!
# A046072: Decompose multiplicative group of integers modulo n as a product of cyclic groups C_{k_1} x C_{k_2} x ... x C_{k_m}, where k_i divides k_j for i < j; then a(n) = m.

The programs for A046072, the canonical program `A046072.P3486266862875082890` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046072 has offset 1).

The definition of A046072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046072.P3486266862875082890

`∏{e}[A060594(n+1), #]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A046072

/-- `∏{e}[A060594(n+1), #]` -/
def P3486266862875082890.Spec : Prop :=
  ∀ n, (P3486266862875082890.a n : ℤ) = A046072 (n + 1)

theorem P3486266862875082890.correct : P3486266862875082890.Spec := by
  intro n
  simp only [A046072, Nat.add_sub_cancel]

end A046072

/-! ## A046072.P2286286766234109250

`∏{e}[A155828(n+1)+1, #]`
-/

namespace A046072.P2286286766234109250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155828 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A046072.P2286286766234109250

namespace A046072

/-- `∏{e}[A155828(n+1)+1, #]` -/
def P2286286766234109250.Spec : Prop :=
  ∀ n, (P2286286766234109250.a n : ℤ) = A046072 (n + 1)

theorem P2286286766234109250.correct : P2286286766234109250.Spec := by
  intro n
  simp only [A046072, Nat.add_sub_cancel, A046072.P2286286766234109250.f1, A046072.P2286286766234109250.a, A046072.P3486266862875082890.f1, A046072.P3486266862875082890.a, A060594, A060594.P2818484457649056228.f1, A060594.P2818484457649056228.a, A155828, A155828.P14308889291480101554.a, A114643, A114643.P3385208476335884825.a, A050361, A050361.P4609984906141832222.f1, A050361.P4609984906141832222.a, A063659, A063659.P17976112420004081821.a, A063658, A063658.P15417569516115138274.f1, A063658.P15417569516115138274.a, A347586, A347586.P6878572311121842152.f1, A347586.P6878572311121842152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046072

/-! ## A046072.P10087174756447559289

`A072273(n+1)+C(n, n²)`
-/

namespace A046072.P10087174756447559289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)

end

end A046072.P10087174756447559289

namespace A046072

/-- `A072273(n+1)+C(n, n²)` -/
def P10087174756447559289.Spec : Prop :=
  ∀ n, P10087174756447559289.a n = A046072 (n + 1)

end A046072

/-! ## A046072.P4633002188136590998

`A072273(a(a(n-1))+n)` with `a(0)=1, a(1)=1`
-/

namespace A046072.P4633002188136590998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A072273 (a (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A046072.P4633002188136590998

namespace A046072

/-- `A072273(a(a(n-1))+n)` -/
def P4633002188136590998.Spec : Prop :=
  ∀ n, P4633002188136590998.a n = A046072 (n + 1)

end A046072

/-! ## A046072.P1148773174807111929

`A072273(round(2/(n+1)+n)+1)`
-/

namespace A046072.P1148773174807111929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (SequenceMachineLib.roundAway (2 / (n + 1 : ℚ) + (n : ℚ)) + 1).toNat

end

end A046072.P1148773174807111929

namespace A046072

/-- `A072273(round(2/(n+1)+n)+1)` -/
def P1148773174807111929.Spec : Prop :=
  ∀ n, P1148773174807111929.a n = A046072 (n + 1)

end A046072

/-! ## A046072.P11972506868557447817

`A033273(A060594(n+1))`
-/

namespace A046072.P11972506868557447817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A060594 (n + 1)).toNat

end

end A046072.P11972506868557447817

namespace A046072

/-- `A033273(A060594(n+1))` -/
def P11972506868557447817.Spec : Prop :=
  ∀ n, P11972506868557447817.a n = A046072 (n + 1)

end A046072

/-! ## A046072.P12634304759619912823

`A003558(A157230(n+1))`
-/

namespace A046072.P12634304759619912823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A157230 (n + 1)).toNat

end

end A046072.P12634304759619912823

namespace A046072

/-- `A003558(A157230(n+1))` -/
def P12634304759619912823.Spec : Prop :=
  ∀ n, P12634304759619912823.a n = A046072 (n + 1)

end A046072

/-! ## A046072.P7651669633393251320

`A028310(log2(A060594(n+1)))`
-/

namespace A046072.P7651669633393251320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.logb 2 (A060594 (n + 1) : ℝ))).toNat

end

end A046072.P7651669633393251320

namespace A046072

/-- `A028310(log2(A060594(n+1)))` -/
def P7651669633393251320.Spec : Prop :=
  ∀ n, P7651669633393251320.a n = A046072 (n + 1)

end A046072

/-! ## A046072.P11037762632737746190

`A007735(A060594(n+1)+1)`
-/

namespace A046072.P11037762632737746190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (A060594 (n + 1) + 1).toNat

end

end A046072.P11037762632737746190

namespace A046072

/-- `A007735(A060594(n+1)+1)` -/
def P11037762632737746190.Spec : Prop :=
  ∀ n, P11037762632737746190.a n = A046072 (n + 1)

end A046072

/-! ## A046072.P15989881933166229279

`A002487(A157230(n+1)+1)`
-/

namespace A046072.P15989881933166229279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A157230 (n + 1) + 1).toNat

end

end A046072.P15989881933166229279

namespace A046072

/-- `A002487(A157230(n+1)+1)` -/
def P15989881933166229279.Spec : Prop :=
  ∀ n, P15989881933166229279.a n = A046072 (n + 1)

end A046072

/-! ## A046072.P9525314433344264064

`A072411(A155828(n+1)+1)`
-/

namespace A046072.P9525314433344264064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A155828 (n + 1) + 1).toNat

end

end A046072.P9525314433344264064

namespace A046072

/-- `A072411(A155828(n+1)+1)` -/
def P9525314433344264064.Spec : Prop :=
  ∀ n, P9525314433344264064.a n = A046072 (n + 1)

end A046072

/-! ## A046072.P18162237885335793627

`A000523(A155828(n+1)+2)`
-/

namespace A046072.P18162237885335793627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A155828 (n + 1) + 2).toNat

end

end A046072.P18162237885335793627

namespace A046072

/-- `A000523(A155828(n+1)+2)` -/
def P18162237885335793627.Spec : Prop :=
  ∀ n, P18162237885335793627.a n = A046072 (n + 1)

end A046072

/-! ## A046072.P11147767876959324404

`A087179(3*A060594(n+1))`
-/

namespace A046072.P11147767876959324404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (3 * A060594 (n + 1)).toNat

end

end A046072.P11147767876959324404

namespace A046072

/-- `A087179(3*A060594(n+1))` -/
def P11147767876959324404.Spec : Prop :=
  ∀ n, P11147767876959324404.a n = A046072 (n + 1)

end A046072

/-! ## A046072.P10489115004713786651

`A319092(val(A319100(n+1), 2))`
-/

namespace A046072.P10489115004713786651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319092 (SequenceMachineLib.valuation (A319100 (n + 1)).toNat 2)

end

end A046072.P10489115004713786651

namespace A046072

/-- `A319092(val(A319100(n+1), 2))` -/
def P10489115004713786651.Spec : Prop :=
  ∀ n, P10489115004713786651.a n = A046072 (n + 1)

end A046072

/-! ## A046072.P9223579256323522137

`A000120(A155828(n+1)²+1)`
-/

namespace A046072.P9223579256323522137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A155828 (n + 1) ^ 2 + 1).toNat

end

end A046072.P9223579256323522137

namespace A046072

/-- `A000120(A155828(n+1)²+1)` -/
def P9223579256323522137.Spec : Prop :=
  ∀ n, P9223579256323522137.a n = A046072 (n + 1)

end A046072

/-! ## A046072.P8487103839359040641

`A284556(A060594(n+1)²+2)`
-/

namespace A046072.P8487103839359040641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (A060594 (n + 1) ^ 2 + 2).toNat

end

end A046072.P8487103839359040641

namespace A046072

/-- `A284556(A060594(n+1)²+2)` -/
def P8487103839359040641.Spec : Prop :=
  ∀ n, P8487103839359040641.a n = A046072 (n + 1)

end A046072

/-! ## A046072.P10010387073609119143

`A000005(ceil(A060594(n+1)/2))`
-/

namespace A046072.P10010387073609119143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌈(A060594 (n + 1) : ℚ) / 2⌉.toNat

end

end A046072.P10010387073609119143

namespace A046072

/-- `A000005(ceil(A060594(n+1)/2))` -/
def P10010387073609119143.Spec : Prop :=
  ∀ n, P10010387073609119143.a n = A046072 (n + 1)

end A046072

/-! ## A046072.P13164895125234833330

`A072273(n+1)+A019590(n+1)`
-/

namespace A046072.P13164895125234833330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (n + 1) + A019590 (n + 1)

end

end A046072.P13164895125234833330

namespace A046072

/-- `A072273(n+1)+A019590(n+1)` -/
def P13164895125234833330.Spec : Prop :=
  ∀ n, P13164895125234833330.a n = A046072 (n + 1)

end A046072

/-! ## A046072.P10545479245448039073

`A000005(A086669(A097272(n+1)))`
-/

namespace A046072.P10545479245448039073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A086669 (A097272 (n + 1)).toNat).toNat

end

end A046072.P10545479245448039073

namespace A046072

/-- `A000005(A086669(A097272(n+1)))` -/
def P10545479245448039073.Spec : Prop :=
  ∀ n, P10545479245448039073.a n = A046072 (n + 1)

end A046072

/-! ## A046072.P10852672777188878936

`A046951(A001615(A060594(n+1)²))`
-/

namespace A046072.P10852672777188878936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A001615 (A060594 (n + 1) ^ 2).toNat).toNat

end

end A046072.P10852672777188878936

namespace A046072

/-- `A046951(A001615(A060594(n+1)²))` -/
def P10852672777188878936.Spec : Prop :=
  ∀ n, P10852672777188878936.a n = A046072 (n + 1)

end A046072

/-!
# A046073: Number of squares in multiplicative group modulo n.

The programs for A046073, the canonical program `A046073.P10200195514330048430` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046073 has offset 1).

The definition of A046073 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046073.P10200195514330048430

`A000010(n+1)/A060594(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A046073

/-- `A000010(n+1)/A060594(n+1)` -/
def P10200195514330048430.Spec : Prop :=
  ∀ n, P10200195514330048430.a n = (A046073 (n + 1) : ℚ)

end A046073

/-! ## A046073.P4817196352807492331

`A089692(A060819(n+1))`
-/

namespace A046073.P4817196352807492331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089692 (A060819 (n + 1)).toNat

end

end A046073.P4817196352807492331

namespace A046073

/-- `A089692(A060819(n+1))` -/
def P4817196352807492331.Spec : Prop :=
  ∀ n, P4817196352807492331.a n = A046073 (n + 1)

end A046073

/-! ## A046073.P13453516153314386182

`Δ[A002088(n)]/A060594(n+1)`
-/

namespace A046073.P13453516153314386182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A060594 (n + 1) : ℚ)

end

end A046073.P13453516153314386182

namespace A046073

/-- `Δ[A002088(n)]/A060594(n+1)` -/
def P13453516153314386182.Spec : Prop :=
  ∀ n, P13453516153314386182.a n = (A046073 (n + 1) : ℚ)

end A046073

/-! ## A046073.P5540569374097191171

`Δ[A005728(n)]/A060594(n+1)`
-/

namespace A046073.P5540569374097191171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A060594 (n + 1) : ℚ)

end

end A046073.P5540569374097191171

namespace A046073

/-- `Δ[A005728(n)]/A060594(n+1)` -/
def P5540569374097191171.Spec : Prop :=
  ∀ n, P5540569374097191171.a n = (A046073 (n + 1) : ℚ)

end A046073

/-! ## A046073.P789579037741253187

`A060839(n+1)*A293483(n+1)`
-/

namespace A046073.P789579037741253187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060839 (n + 1) * A293483 (n + 1)

end

end A046073.P789579037741253187

namespace A046073

/-- `A060839(n+1)*A293483(n+1)` -/
def P789579037741253187.Spec : Prop :=
  ∀ n, P789579037741253187.a n = A046073 (n + 1)

end A046073

/-! ## A046073.P8677667642184083970

`A300915(n+1)/A000082(n+1)`
-/

namespace A046073.P8677667642184083970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300915 (n + 1) : ℚ) / (A000082 (n + 1) : ℚ)

end

end A046073.P8677667642184083970

namespace A046073

/-- `A300915(n+1)/A000082(n+1)` -/
def P8677667642184083970.Spec : Prop :=
  ∀ n, P8677667642184083970.a n = (A046073 (n + 1) : ℚ)

end A046073

/-! ## A046073.P16089374817285400179

`lcm(A053575(n+1), A293483(n+1))`
-/

namespace A046073.P16089374817285400179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053575 (n + 1)) (A293483 (n + 1))

end

end A046073.P16089374817285400179

namespace A046073

/-- `lcm(A053575(n+1), A293483(n+1))` -/
def P16089374817285400179.Spec : Prop :=
  ∀ n, (P16089374817285400179.a n : ℤ) = A046073 (n + 1)

end A046073

/-! ## A046073.P15133223685331398159

`A000010(n+1)/(A155828(n+1)+1)`
-/

namespace A046073.P15133223685331398159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A155828 (n + 1) + 1 : ℚ)

end

end A046073.P15133223685331398159

namespace A046073

/-- `A000010(n+1)/(A155828(n+1)+1)` -/
def P15133223685331398159.Spec : Prop :=
  ∀ n, P15133223685331398159.a n = (A046073 (n + 1) : ℚ)

end A046073

/-! ## A046073.P304626173104154180

`(A109606(n+1)+1)/A060594(n+1)`
-/

namespace A046073.P304626173104154180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1 : ℚ) / (A060594 (n + 1) : ℚ)

end

end A046073.P304626173104154180

namespace A046073

/-- `(A109606(n+1)+1)/A060594(n+1)` -/
def P304626173104154180.Spec : Prop :=
  ∀ n, P304626173104154180.a n = (A046073 (n + 1) : ℚ)

end A046073

/-! ## A046073.P13585355082688858878

`(A039649(n+1)-1)/A060594(n+1)`
-/

namespace A046073.P13585355082688858878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) / (A060594 (n + 1) : ℚ)

end

end A046073.P13585355082688858878

namespace A046073

/-- `(A039649(n+1)-1)/A060594(n+1)` -/
def P13585355082688858878.Spec : Prop :=
  ∀ n, P13585355082688858878.a n = (A046073 (n + 1) : ℚ)

end A046073

/-! ## A046073.P14129717500190276299

`(n-A219428(n+1))/A060594(n+1)`
-/

namespace A046073.P14129717500190276299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A219428 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ)

end

end A046073.P14129717500190276299

namespace A046073

/-- `(n-A219428(n+1))/A060594(n+1)` -/
def P14129717500190276299.Spec : Prop :=
  ∀ n, P14129717500190276299.a n = (A046073 (n + 1) : ℚ)

end A046073

/-! ## A046073.P1369823551270778306

`A000010(n+1)/A322362(A319100(n+1))`
-/

namespace A046073.P1369823551270778306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A322362 (A319100 (n + 1)).toNat : ℚ)

end

end A046073.P1369823551270778306

namespace A046073

/-- `A000010(n+1)/A322362(A319100(n+1))` -/
def P1369823551270778306.Spec : Prop :=
  ∀ n, P1369823551270778306.a n = (A046073 (n + 1) : ℚ)

end A046073

/-! ## A046073.P1242669301401869337

`(A002088(n+1)-A002088(n))/A060594(n+1)`
-/

namespace A046073.P1242669301401869337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n : ℚ) / (A060594 (n + 1) : ℚ)

end

end A046073.P1242669301401869337

namespace A046073

/-- `(A002088(n+1)-A002088(n))/A060594(n+1)` -/
def P1242669301401869337.Spec : Prop :=
  ∀ n, P1242669301401869337.a n = (A046073 (n + 1) : ℚ)

end A046073

/-! ## A046073.P12148854121470706135

`A000252(n+1)/(A000056(n+1)*A060594(n+1))`
-/

namespace A046073.P12148854121470706135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A000056 (n + 1) * A060594 (n + 1) : ℚ)

end

end A046073.P12148854121470706135

namespace A046073

/-- `A000252(n+1)/(A000056(n+1)*A060594(n+1))` -/
def P12148854121470706135.Spec : Prop :=
  ∀ n, P12148854121470706135.a n = (A046073 (n + 1) : ℚ)

end A046073

/-! ## A046073.P10651819139921547064

`A002322(n+1)*A034380(n+1)/A060594(n+1)`
-/

namespace A046073.P10651819139921547064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) * A034380 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ)

end

end A046073.P10651819139921547064

namespace A046073

/-- `A002322(n+1)*A034380(n+1)/A060594(n+1)` -/
def P10651819139921547064.Spec : Prop :=
  ∀ n, P10651819139921547064.a n = (A046073 (n + 1) : ℚ)

end A046073

/-! ## A046073.P12812836981482763991

`A000010(n+1)*A060968(n+1)/A182039(n+1)`
-/

namespace A046073.P12812836981482763991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A060968 (n + 1) : ℚ) / (A182039 (n + 1) : ℚ)

end

end A046073.P12812836981482763991

namespace A046073

/-- `A000010(n+1)*A060968(n+1)/A182039(n+1)` -/
def P12812836981482763991.Spec : Prop :=
  ∀ n, P12812836981482763991.a n = (A046073 (n + 1) : ℚ)

end A046073

/-! ## A046073.P1947439190841389443

`A000010(n+1)*A060839(n+1)/A319100(n+1)`
-/

namespace A046073.P1947439190841389443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A060839 (n + 1) : ℚ) / (A319100 (n + 1) : ℚ)

end

end A046073.P1947439190841389443

namespace A046073

/-- `A000010(n+1)*A060839(n+1)/A319100(n+1)` -/
def P1947439190841389443.Spec : Prop :=
  ∀ n, P1947439190841389443.a n = (A046073 (n + 1) : ℚ)

end A046073

/-! ## A046073.P5772740780547888450

`A000010(n+1)/A087692(n+1)*A293483(n+1)`
-/

namespace A046073.P5772740780547888450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A087692 (n + 1) : ℚ) * (A293483 (n + 1) : ℚ)

end

end A046073.P5772740780547888450

namespace A046073

/-- `A000010(n+1)/A087692(n+1)*A293483(n+1)` -/
def P5772740780547888450.Spec : Prop :=
  ∀ n, P5772740780547888450.a n = (A046073 (n + 1) : ℚ)

end A046073

/-! ## A046073.P4613019857625958096

`A073103(n+1)/A060594(n+1)*A250207(n+1)`
-/

namespace A046073.P4613019857625958096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073103 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ) * (A250207 (n + 1) : ℚ)

end

end A046073.P4613019857625958096

namespace A046073

/-- `A073103(n+1)/A060594(n+1)*A250207(n+1)` -/
def P4613019857625958096.Spec : Prop :=
  ∀ n, P4613019857625958096.a n = (A046073 (n + 1) : ℚ)

end A046073

/-! ## A046073.P11729622879351432639

`A247257(n+1)/A060594(n+1)*A293485(n+1)`
-/

namespace A046073.P11729622879351432639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247257 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ) * (A293485 (n + 1) : ℚ)

end

end A046073.P11729622879351432639

namespace A046073

/-- `A247257(n+1)/A060594(n+1)*A293485(n+1)` -/
def P11729622879351432639.Spec : Prop :=
  ∀ n, P11729622879351432639.a n = (A046073 (n + 1) : ℚ)

end A046073

/-!
# A046075: Nontrivial undulants; base 10 numbers >100 which are of the form aba, abab, ababa, ..., where a != b.

The programs for A046075, there is no canonical definition to state claims against.
-/

/-! ## A046075.P18239933195133685026

`∩[A033619(n+1), A152054(n+1)]`
-/

namespace A046075.P18239933195133685026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046075.P18239933195133685026

/-! ## A046075.P12764145533623633645

`∩[A033619(n+1), A301516(n+1)]`
-/

namespace A046075.P12764145533623633645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046075.P12764145533623633645

/-! ## A046075.P12465650439720623244

`∩[A033619(n+1), A328996(n+1)]`
-/

namespace A046075.P12465650439720623244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046075.P12465650439720623244

/-! ## A046075.P38679399371803796

`A056142(record[A073731(n)])`
-/

namespace A046075.P38679399371803796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046075.P38679399371803796

/-! ## A046075.P6891156071319273195

`A056525(record[A073731(n)])`
-/

namespace A046075.P6891156071319273195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046075.P6891156071319273195

/-! ## A046075.P18414279558355662943

`A082216(record[A073731(n)])`
-/

namespace A046075.P18414279558355662943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046075.P18414279558355662943

/-! ## A046075.P11694848635623552956

`A004151(A261453(n+1))`
-/

namespace A046075.P11694848635623552956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A261453 (n + 1)).toNat

end

end A046075.P11694848635623552956

/-! ## A046075.P559159595653925221

`A004151(A050783(n+11))`
-/

namespace A046075.P559159595653925221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A050783 (n + 11)).toNat

end

end A046075.P559159595653925221

/-! ## A046075.P7885381971866092270

`eq[1, A025444(A139337(n))]`
-/

namespace A046075.P7885381971866092270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046075.P7885381971866092270

/-! ## A046075.P13389476167296441529

`A056142(eq[4, A196222(n)])`
-/

namespace A046075.P13389476167296441529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046075.P13389476167296441529

/-!
# A046078: Primes of the form n*phi(n)-1 where phi is the Euler function (in order of appearance).

The programs for A046078, there is no canonical definition to state claims against.
-/

/-! ## A046078.P9419593153156340252

`A000010(A059109(n+1))*A059109(n+1)-1`
-/

namespace A046078.P9419593153156340252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A059109 (n + 1)).toNat * A059109 (n + 1) - 1

end

end A046078.P9419593153156340252

/-! ## A046078.P18350341868896884837

`A046151(A059109(n+1))`
-/

namespace A046078.P18350341868896884837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (A059109 (n + 1)).toNat

end

end A046078.P18350341868896884837

/-! ## A046078.P16014496797565805237

`p?[A046151(n+1)]`
-/

namespace A046078.P16014496797565805237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046078.P16014496797565805237

/-! ## A046078.P16897934094150770586

`p?[A002618(n+1)-1]`
-/

namespace A046078.P16897934094150770586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046078.P16897934094150770586

/-! ## A046078.P430692992330513135

`p?[A046152(n+1)-2]`
-/

namespace A046078.P430692992330513135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046152 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046078.P430692992330513135

/-! ## A046078.P2742420751680793415

`p?[2*A023896(n+1)-1]`
-/

namespace A046078.P2742420751680793415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023896 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046078.P2742420751680793415

/-! ## A046078.P8880723106573319025

`p?[(n+1)*A000010(n+1)-1]`
-/

namespace A046078.P8880723106573319025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046078.P8880723106573319025

/-! ## A046078.P6734315981403200996

`p?[(n+1)*(A109606(n+1)+1)-1]`
-/

namespace A046078.P6734315981403200996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A109606 (n + 1) + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046078.P6734315981403200996

/-! ## A046078.P13340902364324396465

`p?[(n+1)*(A039649(n+1)-1)-1]`
-/

namespace A046078.P13340902364324396465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A039649 (n + 1) - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046078.P13340902364324396465

/-! ## A046078.P15185077377160933816

`p?[A005563(n)-A053650(n+1)]`
-/

namespace A046078.P15185077377160933816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n - A053650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046078.P15185077377160933816

/-! ## A046078.P4518234774686807697

`p?[A039649(n+1)+A062955(n+1)-2]`
-/

namespace A046078.P4518234774686807697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) + (A062955 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046078.P4518234774686807697

/-! ## A046078.P6187118408651264319

`p?[n*A225530(n)-1]`
-/

namespace A046078.P6187118408651264319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A225530 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046078.P6187118408651264319

/-!
# A046079: Number of Pythagorean triangles with leg n.

The programs for A046079, the canonical program `A046079.P18422331483105200768` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046079 has offset 1).

The definition of A046079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046079.P6561248337391282951

`sqrt(A221837(n+1))`
-/

namespace A046079.P6561248337391282951
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A221837 (n + 1) : ℝ)

end

end A046079.P6561248337391282951

namespace A046079

/-- `sqrt(A221837(n+1))` -/
def P6561248337391282951.Spec : Prop :=
  ∀ n, P6561248337391282951.a n = (A046079 (n + 1) : ℝ)

end A046079

/-! ## A046079.P3237892222229780198

`floor(sqrt(A221838(n+1)))`
-/

namespace A046079.P3237892222229780198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A221838 (n + 1))

end

end A046079.P3237892222229780198

namespace A046079

/-- `floor(sqrt(A221838(n+1)))` -/
def P3237892222229780198.Spec : Prop :=
  ∀ n, P3237892222229780198.a n = A046079 (n + 1)

end A046079

/-! ## A046079.P18422331483105200768

`∑{d}[n+1, A024361(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046079

/-- `∑{d}[n+1, A024361(#)]` -/
def P18422331483105200768.Spec : Prop :=
  ∀ n, P18422331483105200768.a n = A046079 (n + 1)

theorem P18422331483105200768.correct : P18422331483105200768.Spec := by
  intro n
  simp only [A046079, Nat.add_sub_cancel]

end A046079

/-! ## A046079.P9726021277335055808

`A176835(2*(n+1))-1`
-/

namespace A046079.P9726021277335055808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176835 (2 * (n + 1)) - 1

end

end A046079.P9726021277335055808

namespace A046079

/-- `A176835(2*(n+1))-1` -/
def P9726021277335055808.Spec : Prop :=
  ∀ n, P9726021277335055808.a n = A046079 (n + 1)

end A046079

/-! ## A046079.P13566221865450925284

`A023443(A176835(2*(n+1)))`
-/

namespace A046079.P13566221865450925284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A176835 (2 * (n + 1))).toNat

end

end A046079.P13566221865450925284

namespace A046079

/-- `A023443(A176835(2*(n+1)))` -/
def P13566221865450925284.Spec : Prop :=
  ∀ n, P13566221865450925284.a n = A046079 (n + 1)

end A046079

/-! ## A046079.P2525037009305645348

`A065423(2*A176835(2*(n+1)))`
-/

namespace A046079.P2525037009305645348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A176835 (2 * (n + 1))).toNat

end

end A046079.P2525037009305645348

namespace A046079

/-- `A065423(2*A176835(2*(n+1)))` -/
def P2525037009305645348.Spec : Prop :=
  ∀ n, P2525037009305645348.a n = A046079 (n + 1)

end A046079

/-! ## A046079.P17228606151075617368

`A056138(n+1)+A056137(n+1)`
-/

namespace A046079.P17228606151075617368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056138 (n + 1) + A056137 (n + 1)

end

end A046079.P17228606151075617368

namespace A046079

/-- `A056138(n+1)+A056137(n+1)` -/
def P17228606151075617368.Spec : Prop :=
  ∀ n, P17228606151075617368.a n = A046079 (n + 1)

end A046079

/-! ## A046079.P7233297004914204413

`A328708(n+1)+A024361(n+1)`
-/

namespace A046079.P7233297004914204413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328708 (n + 1) + A024361 (n + 1)

end

end A046079.P7233297004914204413

namespace A046079

/-- `A328708(n+1)+A024361(n+1)` -/
def P7233297004914204413.Spec : Prop :=
  ∀ n, P7233297004914204413.a n = A046079 (n + 1)

theorem P7233297004914204413.correct : P7233297004914204413.Spec := by
  intro n
  simp only [A046079, Nat.add_sub_cancel, A046079.P7233297004914204413.a, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A024361, A024361.P1146025692209475519.a, A328708, A328708.P9117693535644354588.a, A004526, A004526.P10084182425416171735.a, A317528, A317528.P12745314278989265988.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A034444, A034444.P6574915864346323298.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046079

/-! ## A046079.P700683826250838954

`A046081(n+1)-A046080(n+1)`
-/

namespace A046079.P700683826250838954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1) - A046080 (n + 1)

end

end A046079.P700683826250838954

namespace A046079

/-- `A046081(n+1)-A046080(n+1)` -/
def P700683826250838954.Spec : Prop :=
  ∀ n, P700683826250838954.a n = A046079 (n + 1)

theorem P700683826250838954.correct : P700683826250838954.Spec := by
  intro n
  simp only [A046079, Nat.add_sub_cancel, A046079.P700683826250838954.a, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A024361, A024361.P1146025692209475519.a, A046080, A046080.P16111352627053334427.a, A046081, A046081.P5098545024402691022.a, A004526, A004526.P10084182425416171735.a, A063014, A063014.P2435970929241132637.a, A317528, A317528.P12745314278989265988.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A034444, A034444.P6574915864346323298.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046079

/-! ## A046079.P2048425324195411362

`A221838(n+1)-A221837(n+1)`
-/

namespace A046079.P2048425324195411362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221838 (n + 1) - A221837 (n + 1)

end

end A046079.P2048425324195411362

namespace A046079

/-- `A221838(n+1)-A221837(n+1)` -/
def P2048425324195411362.Spec : Prop :=
  ∀ n, P2048425324195411362.a n = A046079 (n + 1)

theorem P2048425324195411362.correct : P2048425324195411362.Spec := by
  intro n
  simp only [A046079, Nat.add_sub_cancel, A046079.P2048425324195411362.a, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A024361, A024361.P1146025692209475519.a, A221837, A221837.P10112316691659458481.a, A221838, A221838.P16241372166790464696.a, A004526, A004526.P10084182425416171735.a, A317528, A317528.P12745314278989265988.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A034444, A034444.P6574915864346323298.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046079

/-! ## A046079.P13608573076707371514

`A146564(n+1)%A078644(n+1)`
-/

namespace A046079.P13608573076707371514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146564 (n + 1)) (A078644 (n + 1))

end

end A046079.P13608573076707371514

namespace A046079

/-- `A146564(n+1)%A078644(n+1)` -/
def P13608573076707371514.Spec : Prop :=
  ∀ n, P13608573076707371514.a n = A046079 (n + 1)

end A046079

/-! ## A046079.P8313088278994935220

`∑{d}[n+1, A035263(#)*A157230((n+1)/#)]`
-/

namespace A046079.P8313088278994935220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A157230 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046079.P8313088278994935220

namespace A046079

/-- `∑{d}[n+1, A035263(#)*A157230((n+1)/#)]` -/
def P8313088278994935220.Spec : Prop :=
  ∀ n, P8313088278994935220.a n = A046079 (n + 1)

end A046079

/-! ## A046079.P13195546054943914770

`∑{d}[n+1, A008683(#)*A241534((n+1)/#)]`
-/

namespace A046079.P13195546054943914770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A241534 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046079.P13195546054943914770

namespace A046079

/-- `∑{d}[n+1, A008683(#)*A241534((n+1)/#)]` -/
def P13195546054943914770.Spec : Prop :=
  ∀ n, P13195546054943914770.a n = A046079 (n + 1)

end A046079

/-! ## A046079.P15532398210672367178

`A024359(n+1)+A328708(n+1)+A024360(n+1)`
-/

namespace A046079.P15532398210672367178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (n + 1) + (A328708 (n + 1) + A024360 (n + 1))

end

end A046079.P15532398210672367178

namespace A046079

/-- `A024359(n+1)+A328708(n+1)+A024360(n+1)` -/
def P15532398210672367178.Spec : Prop :=
  ∀ n, P15532398210672367178.a n = A046079 (n + 1)

end A046079

/-! ## A046079.P9260440438263942426

`A024363(n+1)+A328708(n+1)-A024362(n+1)`
-/

namespace A046079.P9260440438263942426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (n + 1) + (A328708 (n + 1) - A024362 (n + 1))

end

end A046079.P9260440438263942426

namespace A046079

/-- `A024363(n+1)+A328708(n+1)-A024362(n+1)` -/
def P9260440438263942426.Spec : Prop :=
  ∀ n, P9260440438263942426.a n = A046079 (n + 1)

theorem P9260440438263942426.correct : P9260440438263942426.Spec := by
  intro n
  simp only [A046079, Nat.add_sub_cancel, A046079.P9260440438263942426.a, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A024361, A024361.P1146025692209475519.a, A024362, A024362.P4327117018867467884.a, A024363, A024363.P18199515356215548539.a, A328708, A328708.P9117693535644354588.a, A004526, A004526.P10084182425416171735.a, A157228, A157228.P6044199204996125931.a, A317528, A317528.P12745314278989265988.a, A000089, A000089.P6732950680245443794.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A019590, A019590.P10517823757212113743.a, A034444, A034444.P6574915864346323298.a, A000010, A000010.P4673923239450215316.a, A000035, A000035.P2023072528413494694.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A026741, A026741.P7397200255647832146.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046079

/-! ## A046079.P12457765543653563149

`A046081(n+1)-(A328712(n+1)+A024362(n+1))`
-/

namespace A046079.P12457765543653563149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1) - (A328712 (n + 1) + A024362 (n + 1))

end

end A046079.P12457765543653563149

namespace A046079

/-- `A046081(n+1)-(A328712(n+1)+A024362(n+1))` -/
def P12457765543653563149.Spec : Prop :=
  ∀ n, P12457765543653563149.a n = A046079 (n + 1)

theorem P12457765543653563149.correct : P12457765543653563149.Spec := by
  intro n
  simp only [A046079, Nat.add_sub_cancel, A046079.P12457765543653563149.a, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A024361, A024361.P1146025692209475519.a, A024362, A024362.P4327117018867467884.a, A046081, A046081.P5098545024402691022.a, A328712, A328712.P8522307854513457100.a, A004526, A004526.P10084182425416171735.a, A046080, A046080.P16111352627053334427.a, A157228, A157228.P6044199204996125931.a, A317528, A317528.P12745314278989265988.a, A000089, A000089.P6732950680245443794.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A019590, A019590.P10517823757212113743.a, A034444, A034444.P6574915864346323298.a, A063014, A063014.P2435970929241132637.a, A000010, A000010.P4673923239450215316.a, A000035, A000035.P2023072528413494694.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A026741, A026741.P7397200255647832146.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046079

/-! ## A046079.P16417774556635700252

`A024361(n+1)+A328949(n+1)-A328712(n+1)`
-/

namespace A046079.P16417774556635700252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1) + (A328949 (n + 1) - A328712 (n + 1))

end

end A046079.P16417774556635700252

namespace A046079

/-- `A024361(n+1)+A328949(n+1)-A328712(n+1)` -/
def P16417774556635700252.Spec : Prop :=
  ∀ n, P16417774556635700252.a n = A046079 (n + 1)

theorem P16417774556635700252.correct : P16417774556635700252.Spec := by
  intro n
  simp only [A046079, Nat.add_sub_cancel, A046079.P16417774556635700252.a, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A024361, A024361.P1146025692209475519.a, A328712, A328712.P8522307854513457100.a, A328949, A328949.P9082150225325732429.a, A004526, A004526.P10084182425416171735.a, A024362, A024362.P4327117018867467884.a, A046080, A046080.P16111352627053334427.a, A317528, A317528.P12745314278989265988.a, A328708, A328708.P9117693535644354588.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A034444, A034444.P6574915864346323298.a, A063014, A063014.P2435970929241132637.a, A157228, A157228.P6044199204996125931.a, A000089, A000089.P6732950680245443794.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A019590, A019590.P10517823757212113743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046079

/-! ## A046079.P15506735744784574808

`A046081(n+1)+A224921(n+1)-A224921(n+2)`
-/

namespace A046079.P15506735744784574808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1) + (A224921 (n + 1) - A224921 (n + 2))

end

end A046079.P15506735744784574808

namespace A046079

/-- `A046081(n+1)+A224921(n+1)-A224921(n+2)` -/
def P15506735744784574808.Spec : Prop :=
  ∀ n, P15506735744784574808.a n = A046079 (n + 1)

end A046079

/-! ## A046079.P4429047235208917645

`A115878(A022998(n+1))`
-/

namespace A046079.P4429047235208917645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (A022998 (n + 1)).toNat

end

end A046079.P4429047235208917645

namespace A046079

/-- `A115878(A022998(n+1))` -/
def P4429047235208917645.Spec : Prop :=
  ∀ n, P4429047235208917645.a n = A046079 (n + 1)

end A046079

/-! ## A046079.P1103355627282621861

`A115878(A257088(n+1))`
-/

namespace A046079.P1103355627282621861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (A257088 (n + 1)).toNat

end

end A046079.P1103355627282621861

namespace A046079

/-- `A115878(A257088(n+1))` -/
def P1103355627282621861.Spec : Prop :=
  ∀ n, P1103355627282621861.a n = A046079 (n + 1)

end A046079

/-!
# A046080: a(n) is the number of integer-sided right triangles with hypotenuse n.

The programs for A046080, the canonical program `A046080.P16111352627053334427` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046080 has offset 1).

The definition of A046080 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063014, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046080.P16111352627053334427

`A063014(n+1)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A046080

/-- `A063014(n+1)-1` -/
def P16111352627053334427.Spec : Prop :=
  ∀ n, P16111352627053334427.a n = A046080 (n + 1)

theorem P16111352627053334427.correct : P16111352627053334427.Spec := by
  intro n
  simp only [A046080, Nat.add_sub_cancel]

end A046080

/-! ## A046080.P3296389400186417635

`(A256452(n+1)-1)/2`
-/

namespace A046080.P3296389400186417635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256452 (n + 1) - 1 : ℚ) / 2

end

end A046080.P3296389400186417635

namespace A046080

/-- `(A256452(n+1)-1)/2` -/
def P3296389400186417635.Spec : Prop :=
  ∀ n, P3296389400186417635.a n = (A046080 (n + 1) : ℚ)

theorem P3296389400186417635.correct : P3296389400186417635.Spec := by
  intro n
  simp only [A046080, Nat.add_sub_cancel, A046080.P3296389400186417635.a, A046080.P16111352627053334427.a, A063014, A063014.P2435970929241132637.a, A256452, A256452.P9976460767317744789.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, A237526, A237526.P3622557248388023722.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046080

/-! ## A046080.P4089564824939628488

`A092147(A000265(n+1))/2`
-/

namespace A046080.P4089564824939628488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092147 (A000265 (n + 1)).toNat : ℚ) / 2

end

end A046080.P4089564824939628488

namespace A046080

/-- `A092147(A000265(n+1))/2` -/
def P4089564824939628488.Spec : Prop :=
  ∀ n, P4089564824939628488.a n = (A046080 (n + 1) : ℚ)

end A046080

/-! ## A046080.P3269338011418069100

`A328712(n+1)+A024362(n+1)`
-/

namespace A046080.P3269338011418069100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (n + 1) + A024362 (n + 1)

end

end A046080.P3269338011418069100

namespace A046080

/-- `A328712(n+1)+A024362(n+1)` -/
def P3269338011418069100.Spec : Prop :=
  ∀ n, P3269338011418069100.a n = A046080 (n + 1)

theorem P3269338011418069100.correct : P3269338011418069100.Spec := by
  intro n
  simp only [A046080, Nat.add_sub_cancel, A046080.P3269338011418069100.a, A046080.P16111352627053334427.a, A024362, A024362.P4327117018867467884.a, A063014, A063014.P2435970929241132637.a, A328712, A328712.P8522307854513457100.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A157228, A157228.P6044199204996125931.a, A000089, A000089.P6732950680245443794.a, A019590, A019590.P10517823757212113743.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, A000010, A000010.P4673923239450215316.a, A000035, A000035.P2023072528413494694.a, A026741, A026741.P7397200255647832146.a, A237526, A237526.P3622557248388023722.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046080

/-! ## A046080.P1949905109286121257

`A063725((n+1)²)/2`
-/

namespace A046080.P1949905109286121257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063725 ((n + 1) ^ 2) : ℚ) / 2

end

end A046080.P1949905109286121257

namespace A046080

/-- `A063725((n+1)²)/2` -/
def P1949905109286121257.Spec : Prop :=
  ∀ n, P1949905109286121257.a n = (A046080 (n + 1) : ℚ)

end A046080

/-! ## A046080.P8531256422661398959

`∑{d}[n+1, A024362(#)]`
-/

namespace A046080.P8531256422661398959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024362 d

end

end A046080.P8531256422661398959

namespace A046080

/-- `∑{d}[n+1, A024362(#)]` -/
def P8531256422661398959.Spec : Prop :=
  ∀ n, P8531256422661398959.a n = A046080 (n + 1)

end A046080

/-! ## A046080.P456609211950877492

`floor(A256452(n+1)/2)`
-/

namespace A046080.P456609211950877492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A256452 (n + 1) : ℚ) / 2⌋

end

end A046080.P456609211950877492

namespace A046080

/-- `floor(A256452(n+1)/2)` -/
def P456609211950877492.Spec : Prop :=
  ∀ n, P456609211950877492.a n = A046080 (n + 1)

end A046080

/-! ## A046080.P16650271967584432004

`A025480(A092147(n+1))`
-/

namespace A046080.P16650271967584432004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A092147 (n + 1)).toNat

end

end A046080.P16650271967584432004

namespace A046080

/-- `A025480(A092147(n+1))` -/
def P16650271967584432004.Spec : Prop :=
  ∀ n, P16650271967584432004.a n = A046080 (n + 1)

end A046080

/-! ## A046080.P7147164552063501034

`A046079(A170818(n+1))`
-/

namespace A046080.P7147164552063501034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A170818 (n + 1)).toNat

end

end A046080.P7147164552063501034

namespace A046080

/-- `A046079(A170818(n+1))` -/
def P7147164552063501034.Spec : Prop :=
  ∀ n, P7147164552063501034.a n = A046080 (n + 1)

end A046080

/-! ## A046080.P13914971176418723674

`A004526(A256452(n+1))`
-/

namespace A046080.P13914971176418723674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A256452 (n + 1)).toNat

end

end A046080.P13914971176418723674

namespace A046080

/-- `A004526(A256452(n+1))` -/
def P13914971176418723674.Spec : Prop :=
  ∀ n, P13914971176418723674.a n = A046080 (n + 1)

end A046080

/-! ## A046080.P8058321223409896821

`A001281(A256452(n+1)-1)`
-/

namespace A046080.P8058321223409896821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A256452 (n + 1) - 1).toNat

end

end A046080.P8058321223409896821

namespace A046080

/-- `A001281(A256452(n+1)-1)` -/
def P8058321223409896821.Spec : Prop :=
  ∀ n, P8058321223409896821.a n = A046080 (n + 1)

end A046080

/-! ## A046080.P17830813292193368697

`A046081(n+1)-A046079(n+1)`
-/

namespace A046080.P17830813292193368697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1) - A046079 (n + 1)

end

end A046080.P17830813292193368697

namespace A046080

/-- `A046081(n+1)-A046079(n+1)` -/
def P17830813292193368697.Spec : Prop :=
  ∀ n, P17830813292193368697.a n = A046080 (n + 1)

theorem P17830813292193368697.correct : P17830813292193368697.Spec := by
  intro n
  simp only [A046080, Nat.add_sub_cancel, A046080.P17830813292193368697.a, A046080.P16111352627053334427.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A046081, A046081.P5098545024402691022.a, A063014, A063014.P2435970929241132637.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A024361, A024361.P1146025692209475519.a, A004526, A004526.P10084182425416171735.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, A317528, A317528.P12745314278989265988.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A034444, A034444.P6574915864346323298.a, A237526, A237526.P3622557248388023722.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046080

/-! ## A046080.P7463311433074111443

`A046079(n+1)%A256452(n+1)`
-/

namespace A046080.P7463311433074111443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046079 (n + 1)) (A256452 (n + 1))

end

end A046080.P7463311433074111443

namespace A046080

/-- `A046079(n+1)%A256452(n+1)` -/
def P7463311433074111443.Spec : Prop :=
  ∀ n, P7463311433074111443.a n = A046080 (n + 1)

end A046080

/-! ## A046080.P14583594265940362362

`∑{d}[n+1, A035263(#)*A157228((n+1)/#)]`
-/

namespace A046080.P14583594265940362362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A157228 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046080.P14583594265940362362

namespace A046080

/-- `∑{d}[n+1, A035263(#)*A157228((n+1)/#)]` -/
def P14583594265940362362.Spec : Prop :=
  ∀ n, P14583594265940362362.a n = A046080 (n + 1)

end A046080

/-! ## A046080.P17928203866850113228

`∑{d}[n+1, A025441(#)*A323239((n+1)/#)]`
-/

namespace A046080.P17928203866850113228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A025441 d * A323239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046080.P17928203866850113228

namespace A046080

/-- `∑{d}[n+1, A025441(#)*A323239((n+1)/#)]` -/
def P17928203866850113228.Spec : Prop :=
  ∀ n, P17928203866850113228.a n = A046080 (n + 1)

end A046080

/-! ## A046080.P4397230239210827938

`Δ[A224921(n+1)]`
-/

namespace A046080.P4397230239210827938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046080.P4397230239210827938

namespace A046080

/-- `Δ[A224921(n+1)]` -/
def P4397230239210827938.Spec : Prop :=
  ∀ n, P4397230239210827938.a n = A046080 (n + 1)

end A046080

/-! ## A046080.P2542957336438143167

`floor(A046109(n+1)/8)`
-/

namespace A046080.P2542957336438143167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046109 (n + 1) : ℚ) / 8⌋

end

end A046080.P2542957336438143167

namespace A046080

/-- `floor(A046109(n+1)/8)` -/
def P2542957336438143167.Spec : Prop :=
  ∀ n, P2542957336438143167.a n = A046080 (n + 1)

end A046080

/-! ## A046080.P18315395567934152109

`A224921(n+2)-A224921(n+1)`
-/

namespace A046080.P18315395567934152109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (n + 2) - A224921 (n + 1)

end

end A046080.P18315395567934152109

namespace A046080

/-- `A224921(n+2)-A224921(n+1)` -/
def P18315395567934152109.Spec : Prop :=
  ∀ n, P18315395567934152109.a n = A046080 (n + 1)

end A046080

/-! ## A046080.P2400458138491571609

`A328712(2*(n+1))`
-/

namespace A046080.P2400458138491571609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (2 * (n + 1))

end

end A046080.P2400458138491571609

namespace A046080

/-- `A328712(2*(n+1))` -/
def P2400458138491571609.Spec : Prop :=
  ∀ n, P2400458138491571609.a n = A046080 (n + 1)

end A046080

/-! ## A046080.P11707814596020990803

`(A338939(2*(n+1))-1)/2`
-/

namespace A046080.P11707814596020990803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338939 (2 * (n + 1)) - 1 : ℚ) / 2

end

end A046080.P11707814596020990803

namespace A046080

/-- `(A338939(2*(n+1))-1)/2` -/
def P11707814596020990803.Spec : Prop :=
  ∀ n, P11707814596020990803.a n = (A046080 (n + 1) : ℚ)

end A046080

/-!
# A046081: Number of integer-sided right triangles with n as a hypotenuse or leg.

The programs for A046081, the canonical program `A046081.P5098545024402691022` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046081 has offset 1).

The definition of A046081 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, A046080, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046081.P5098545024402691022

`A046079(n+1)+A046080(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A046081

/-- `A046079(n+1)+A046080(n+1)` -/
def P5098545024402691022.Spec : Prop :=
  ∀ n, P5098545024402691022.a n = A046081 (n + 1)

theorem P5098545024402691022.correct : P5098545024402691022.Spec := by
  intro n
  simp only [A046081, Nat.add_sub_cancel]

end A046081

/-! ## A046081.P15275359595833580003

`A024363(n+1)+A328949(n+1)`
-/

namespace A046081.P15275359595833580003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (n + 1) + A328949 (n + 1)

end

end A046081.P15275359595833580003

namespace A046081

/-- `A024363(n+1)+A328949(n+1)` -/
def P15275359595833580003.Spec : Prop :=
  ∀ n, P15275359595833580003.a n = A046081 (n + 1)

theorem P15275359595833580003.correct : P15275359595833580003.Spec := by
  intro n
  simp only [A046081, Nat.add_sub_cancel, A046081.P15275359595833580003.a, A046081.P5098545024402691022.a, A024363, A024363.P18199515356215548539.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A046080, A046080.P16111352627053334427.a, A328949, A328949.P9082150225325732429.a, A024361, A024361.P1146025692209475519.a, A024362, A024362.P4327117018867467884.a, A063014, A063014.P2435970929241132637.a, A328708, A328708.P9117693535644354588.a, A328712, A328712.P8522307854513457100.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A004526, A004526.P10084182425416171735.a, A157228, A157228.P6044199204996125931.a, A317528, A317528.P12745314278989265988.a, A000089, A000089.P6732950680245443794.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A019590, A019590.P10517823757212113743.a, A034444, A034444.P6574915864346323298.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046081

/-! ## A046081.P12756481214288191418

`A024361(n+1)+A024362(n+1)+A328708(n+1)+A328712(n+1)`
-/

namespace A046081.P12756481214288191418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1) + A024362 (n + 1) + A328708 (n + 1) + A328712 (n + 1)

end

end A046081.P12756481214288191418

namespace A046081

/-- `A024361(n+1)+A024362(n+1)+A328708(n+1)+A328712(n+1)` -/
def P12756481214288191418.Spec : Prop :=
  ∀ n, P12756481214288191418.a n = A046081 (n + 1)

theorem P12756481214288191418.correct : P12756481214288191418.Spec := by
  intro n
  simp only [A046081, Nat.add_sub_cancel, A046081.P12756481214288191418.a, A046081.P5098545024402691022.a, A024361, A024361.P1146025692209475519.a, A024362, A024362.P4327117018867467884.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A046080, A046080.P16111352627053334427.a, A328708, A328708.P9117693535644354588.a, A328712, A328712.P8522307854513457100.a, A004526, A004526.P10084182425416171735.a, A063014, A063014.P2435970929241132637.a, A157228, A157228.P6044199204996125931.a, A317528, A317528.P12745314278989265988.a, A000089, A000089.P6732950680245443794.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A019590, A019590.P10517823757212113743.a, A034444, A034444.P6574915864346323298.a, A000010, A000010.P4673923239450215316.a, A000035, A000035.P2023072528413494694.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A026741, A026741.P7397200255647832146.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046081

/-! ## A046081.P6326530200993852661

`∑{d}[n+1, A024363(#)]`
-/

namespace A046081.P6326530200993852661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024363 d

end

end A046081.P6326530200993852661

namespace A046081

/-- `∑{d}[n+1, A024363(#)]` -/
def P6326530200993852661.Spec : Prop :=
  ∀ n, P6326530200993852661.a n = A046081 (n + 1)

end A046081

/-! ## A046081.P14805728158736800626

`floor(A046080(n+1)+sqrt(A221838(n+1)))`
-/

namespace A046081.P14805728158736800626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046080 (n + 1) : ℝ) + Real.sqrt (A221838 (n + 1) : ℝ)⌋

end

end A046081.P14805728158736800626

namespace A046081

/-- `floor(A046080(n+1)+sqrt(A221838(n+1)))` -/
def P14805728158736800626.Spec : Prop :=
  ∀ n, P14805728158736800626.a n = A046081 (n + 1)

end A046081

/-! ## A046081.P17798210168460472808

`A046079(n+1)+A046079(A170818(n+1))`
-/

namespace A046081.P17798210168460472808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) + A046079 (A170818 (n + 1)).toNat

end

end A046081.P17798210168460472808

namespace A046081

/-- `A046079(n+1)+A046079(A170818(n+1))` -/
def P17798210168460472808.Spec : Prop :=
  ∀ n, P17798210168460472808.a n = A046081 (n + 1)

end A046081

/-! ## A046081.P4221821577488878562

`A046080(n+1)+A056138(n+1)+A056137(n+1)`
-/

namespace A046081.P4221821577488878562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1) + (A056138 (n + 1) + A056137 (n + 1))

end

end A046081.P4221821577488878562

namespace A046081

/-- `A046080(n+1)+A056138(n+1)+A056137(n+1)` -/
def P4221821577488878562.Spec : Prop :=
  ∀ n, P4221821577488878562.a n = A046081 (n + 1)

end A046081

/-! ## A046081.P17048963968438306549

`A024361(n+1)+A328949(n+1)+A024362(n+1)`
-/

namespace A046081.P17048963968438306549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1) + (A328949 (n + 1) + A024362 (n + 1))

end

end A046081.P17048963968438306549

namespace A046081

/-- `A024361(n+1)+A328949(n+1)+A024362(n+1)` -/
def P17048963968438306549.Spec : Prop :=
  ∀ n, P17048963968438306549.a n = A046081 (n + 1)

theorem P17048963968438306549.correct : P17048963968438306549.Spec := by
  intro n
  simp only [A046081, Nat.add_sub_cancel, A046081.P17048963968438306549.a, A046081.P5098545024402691022.a, A024361, A024361.P1146025692209475519.a, A024362, A024362.P4327117018867467884.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A046080, A046080.P16111352627053334427.a, A328949, A328949.P9082150225325732429.a, A004526, A004526.P10084182425416171735.a, A063014, A063014.P2435970929241132637.a, A157228, A157228.P6044199204996125931.a, A317528, A317528.P12745314278989265988.a, A328708, A328708.P9117693535644354588.a, A328712, A328712.P8522307854513457100.a, A000089, A000089.P6732950680245443794.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A019590, A019590.P10517823757212113743.a, A034444, A034444.P6574915864346323298.a, A000010, A000010.P4673923239450215316.a, A000035, A000035.P2023072528413494694.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A026741, A026741.P7397200255647832146.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046081

/-! ## A046081.P6241615952296835225

`A024362(n+1)+A328712(n+1)+A046079(n+1)`
-/

namespace A046081.P6241615952296835225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (n + 1) + (A328712 (n + 1) + A046079 (n + 1))

end

end A046081.P6241615952296835225

namespace A046081

/-- `A024362(n+1)+A328712(n+1)+A046079(n+1)` -/
def P6241615952296835225.Spec : Prop :=
  ∀ n, P6241615952296835225.a n = A046081 (n + 1)

theorem P6241615952296835225.correct : P6241615952296835225.Spec := by
  intro n
  simp only [A046081, Nat.add_sub_cancel, A046081.P6241615952296835225.a, A046081.P5098545024402691022.a, A024362, A024362.P4327117018867467884.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A046080, A046080.P16111352627053334427.a, A328712, A328712.P8522307854513457100.a, A024361, A024361.P1146025692209475519.a, A063014, A063014.P2435970929241132637.a, A157228, A157228.P6044199204996125931.a, A000089, A000089.P6732950680245443794.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A004526, A004526.P10084182425416171735.a, A019590, A019590.P10517823757212113743.a, A317528, A317528.P12745314278989265988.a, A000010, A000010.P4673923239450215316.a, A000035, A000035.P2023072528413494694.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A026741, A026741.P7397200255647832146.a, A034444, A034444.P6574915864346323298.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046081

/-! ## A046081.P16656239222340909764

`A024363(n+1)+A328712(n+1)+A328708(n+1)`
-/

namespace A046081.P16656239222340909764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (n + 1) + (A328712 (n + 1) + A328708 (n + 1))

end

end A046081.P16656239222340909764

namespace A046081

/-- `A024363(n+1)+A328712(n+1)+A328708(n+1)` -/
def P16656239222340909764.Spec : Prop :=
  ∀ n, P16656239222340909764.a n = A046081 (n + 1)

theorem P16656239222340909764.correct : P16656239222340909764.Spec := by
  intro n
  simp only [A046081, Nat.add_sub_cancel, A046081.P16656239222340909764.a, A046081.P5098545024402691022.a, A024363, A024363.P18199515356215548539.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A046080, A046080.P16111352627053334427.a, A328708, A328708.P9117693535644354588.a, A328712, A328712.P8522307854513457100.a, A024361, A024361.P1146025692209475519.a, A024362, A024362.P4327117018867467884.a, A063014, A063014.P2435970929241132637.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A004526, A004526.P10084182425416171735.a, A157228, A157228.P6044199204996125931.a, A317528, A317528.P12745314278989265988.a, A000089, A000089.P6732950680245443794.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A019590, A019590.P10517823757212113743.a, A034444, A034444.P6574915864346323298.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046081

/-! ## A046081.P5345007012109394797

`A046079(n+1)+A224921(n+2)-A224921(n+1)`
-/

namespace A046081.P5345007012109394797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) + (A224921 (n + 2) - A224921 (n + 1))

end

end A046081.P5345007012109394797

namespace A046081

/-- `A046079(n+1)+A224921(n+2)-A224921(n+1)` -/
def P5345007012109394797.Spec : Prop :=
  ∀ n, P5345007012109394797.a n = A046081 (n + 1)

end A046081

/-! ## A046081.P7052906893011325281

`A328712(2*(n+1))+A046079(n+1)`
-/

namespace A046081.P7052906893011325281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (2 * (n + 1)) + A046079 (n + 1)

end

end A046081.P7052906893011325281

namespace A046081

/-- `A328712(2*(n+1))+A046079(n+1)` -/
def P7052906893011325281.Spec : Prop :=
  ∀ n, P7052906893011325281.a n = A046081 (n + 1)

end A046081

/-!
# A046082: Number of ultraconnected graphs on n unlabeled nodes.

The programs for A046082, there is no canonical definition to state claims against.
-/

/-! ## A046082.P16700985679602709612

`A363947(ceil(2^(n-1)))`
-/

namespace A046082.P16700985679602709612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363947 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A046082.P16700985679602709612

/-! ## A046082.P1379857930861759170

`A119889(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A046082.P1379857930861759170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 4] fun n a =>
  A119889 (a (n - 1)).toNat

end

end A046082.P1379857930861759170

/-! ## A046082.P1251002768928338525

`A130057(a(n-1)+3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A046082.P1251002768928338525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 4] fun n a =>
  A130057 (a (n - 1) + 3).toNat

end

end A046082.P1251002768928338525

/-!
# A046083: The smallest member 'a' of the Pythagorean triples (a,b,c) ordered by increasing c.

The programs for A046083, there is no canonical definition to state claims against.
-/

/-! ## A046083.P17383977105633899166

`sqrt(A009000(n+1)²-A046084(n+1)²)`
-/

namespace A046083.P17383977105633899166
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A009000 (n + 1) ^ 2 - A046084 (n + 1) ^ 2 : ℝ)

end

end A046083.P17383977105633899166

/-!
# A046084: The middle member 'b' of the Pythagorean triples (a,b,c) ordered by increasing c.

The programs for A046084, there is no canonical definition to state claims against.
-/

/-! ## A046084.P13980629856383261350

`sqrt(A009000(n+1)²-A046083(n+1)²)`
-/

namespace A046084.P13980629856383261350
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A009000 (n + 1) ^ 2 - A046083 (n + 1) ^ 2 : ℝ)

end

end A046084.P13980629856383261350

/-!
# A046085: Numbers n such that Q(sqrt(-n)) has class number 4.

The programs for A046085, there is no canonical definition to state claims against.
-/

/-! ## A046085.P6328744593037857613

`A020725(eq[4, A008966(n+1)*A202084(n+1)])`
-/

namespace A046085.P6328744593037857613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046085.P6328744593037857613

/-! ## A046085.P11125200833888091466

`A065475(eq[4, A008966(n+1)*A202084(n+1)])`
-/

namespace A046085.P11125200833888091466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046085.P11125200833888091466

/-! ## A046085.P17155208698241219207

`A020725(eq[4, lcm(A008683(n+1), A202084(n+1))])`
-/

namespace A046085.P17155208698241219207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (n + 1)) (A202084 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A046085.P17155208698241219207

/-! ## A046085.P2865987982326061372

`A020725(eq[4, abs(A080323(n+1)*A202084(n+1))])`
-/

namespace A046085.P2865987982326061372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080323 (n + 1) * A202084 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046085.P2865987982326061372

/-! ## A046085.P17727246284003574778

`A065475(eq[4, abs(A080323(n+1)*A202084(n+1))])`
-/

namespace A046085.P17727246284003574778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080323 (n + 1) * A202084 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046085.P17727246284003574778

/-!
# A046086: Smallest member 'a' of the primitive Pythagorean triples (a,b,c) ordered by increasing c, then b.

The programs for A046086, there is no canonical definition to state claims against.
-/

/-! ## A046086.P15056449998812233018

`A118961(n+1)+A087459(n+1)`
-/

namespace A046086.P15056449998812233018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118961 (n + 1) + A087459 (n + 1)

end

end A046086.P15056449998812233018

/-! ## A046086.P12476029656059447903

`A020882(n+1)-A118962(n+1)`
-/

namespace A046086.P12476029656059447903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) - A118962 (n + 1)

end

end A046086.P12476029656059447903

/-! ## A046086.P14954466251611275387

`A046087(n+1)-A120682(n+1)`
-/

namespace A046086.P14954466251611275387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046087 (n + 1) - A120682 (n + 1)

end

end A046086.P14954466251611275387

/-! ## A046086.P3075839596262784441

`A120681(n+1)-A046087(n+1)`
-/

namespace A046086.P3075839596262784441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120681 (n + 1) - A046087 (n + 1)

end

end A046086.P3075839596262784441

/-! ## A046086.P4880318765443201198

`A120644(n+1)/A046087(n+1)`
-/

namespace A046086.P4880318765443201198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120644 (n + 1) : ℚ) / (A046087 (n + 1) : ℚ)

end

end A046086.P4880318765443201198

/-! ## A046086.P4752287204285729578

`A118961(n+1)+2*A014498(n+1)`
-/

namespace A046086.P4752287204285729578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118961 (n + 1) + 2 * A014498 (n + 1)

end

end A046086.P4752287204285729578

/-! ## A046086.P1068553092305144010

`A020882(n+1)+A087459(n+1)-A046087(n+1)`
-/

namespace A046086.P1068553092305144010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) + (A087459 (n + 1) - A046087 (n + 1))

end

end A046086.P1068553092305144010

/-! ## A046086.P6161454517828669540

`A020882(n+1)-(A120682(n+1)+A118961(n+1))`
-/

namespace A046086.P6161454517828669540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) - (A120682 (n + 1) + A118961 (n + 1))

end

end A046086.P6161454517828669540

/-! ## A046086.P14913878961837161324

`A118961(n+1)+A120681(n+1)-A020882(n+1)`
-/

namespace A046086.P14913878961837161324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118961 (n + 1) + (A120681 (n + 1) - A020882 (n + 1))

end

end A046086.P14913878961837161324

/-! ## A046086.P7970678757275995693

`A046087(n+1)+A118961(n+1)-A118962(n+1)`
-/

namespace A046086.P7970678757275995693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046087 (n + 1) + (A118961 (n + 1) - A118962 (n + 1))

end

end A046086.P7970678757275995693

/-! ## A046086.P11517834249944946417

`A087459(n+1)+A118962(n+1)-A120682(n+1)`
-/

namespace A046086.P11517834249944946417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087459 (n + 1) + (A118962 (n + 1) - A120682 (n + 1))

end

end A046086.P11517834249944946417

/-! ## A046086.P12307783943204472704

`A120644(n+1)/(A020882(n+1)-A118961(n+1))`
-/

namespace A046086.P12307783943204472704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120644 (n + 1) : ℚ) / (A020882 (n + 1) - A118961 (n + 1) : ℚ)

end

end A046086.P12307783943204472704

/-! ## A046086.P8663775075727842933

`A132981(2*(n+1))-A118962(n+1)`
-/

namespace A046086.P8663775075727842933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132981 (2 * (n + 1)) - A118962 (n + 1)

end

end A046086.P8663775075727842933

/-!
# A046087: Middle member 'b' of the primitive Pythagorean triples (a,b,c) ordered by increasing c, then b.

The programs for A046087, there is no canonical definition to state claims against.
-/

/-! ## A046087.P1591241961046695207

`A120682(n+1)+A046086(n+1)`
-/

namespace A046087.P1591241961046695207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120682 (n + 1) + A046086 (n + 1)

end

end A046087.P1591241961046695207

/-! ## A046087.P633921723129144243

`A118962(n+1)+A087459(n+1)`
-/

namespace A046087.P633921723129144243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118962 (n + 1) + A087459 (n + 1)

end

end A046087.P633921723129144243

/-! ## A046087.P3545215479108753199

`A020882(n+1)-A118961(n+1)`
-/

namespace A046087.P3545215479108753199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) - A118961 (n + 1)

end

end A046087.P3545215479108753199

/-! ## A046087.P12137331572881456449

`A120681(n+1)-A046086(n+1)`
-/

namespace A046087.P12137331572881456449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120681 (n + 1) - A046086 (n + 1)

end

end A046087.P12137331572881456449

/-! ## A046087.P1228736847506975702

`A120644(n+1)/A046086(n+1)`
-/

namespace A046087.P1228736847506975702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120644 (n + 1) : ℚ) / (A046086 (n + 1) : ℚ)

end

end A046087.P1228736847506975702

/-! ## A046087.P17251090481539556726

`A118962(n+1)+2*A014498(n+1)`
-/

namespace A046087.P17251090481539556726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118962 (n + 1) + 2 * A014498 (n + 1)

end

end A046087.P17251090481539556726

/-! ## A046087.P12186190483639824033

`A087459(n+1)+A120682(n+1)+A118961(n+1)`
-/

namespace A046087.P12186190483639824033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087459 (n + 1) + (A120682 (n + 1) + A118961 (n + 1))

end

end A046087.P12186190483639824033

/-! ## A046087.P531369308026925896

`A020882(n+1)+A087459(n+1)-A046086(n+1)`
-/

namespace A046087.P531369308026925896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) + (A087459 (n + 1) - A046086 (n + 1))

end

end A046087.P531369308026925896

/-! ## A046087.P17079531535028236508

`A020882(n+1)+A120682(n+1)-A118962(n+1)`
-/

namespace A046087.P17079531535028236508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) + (A120682 (n + 1) - A118962 (n + 1))

end

end A046087.P17079531535028236508

/-! ## A046087.P9957289223575822325

`A118962(n+1)+A120681(n+1)-A020882(n+1)`
-/

namespace A046087.P9957289223575822325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118962 (n + 1) + (A120681 (n + 1) - A020882 (n + 1))

end

end A046087.P9957289223575822325

/-! ## A046087.P1124017365738040530

`A046086(n+1)+A118962(n+1)-A118961(n+1)`
-/

namespace A046087.P1124017365738040530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046086 (n + 1) + (A118962 (n + 1) - A118961 (n + 1))

end

end A046087.P1124017365738040530

/-! ## A046087.P16455014394550809562

`A120644(n+1)/(A020882(n+1)-A118962(n+1))`
-/

namespace A046087.P16455014394550809562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120644 (n + 1) : ℚ) / (A020882 (n + 1) - A118962 (n + 1) : ℚ)

end

end A046087.P16455014394550809562

/-! ## A046087.P6596835952483780447

`A118962(n+1)*A328971(n+1)/A328972(n+1)`
-/

namespace A046087.P6596835952483780447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118962 (n + 1) * A328971 (n + 1) : ℚ) / (A328972 (n + 1) : ℚ)

end

end A046087.P6596835952483780447

/-! ## A046087.P1514710282848974195

`A132981(2*(n+1))-A118961(n+1)`
-/

namespace A046087.P1514710282848974195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132981 (2 * (n + 1)) - A118961 (n + 1)

end

end A046087.P1514710282848974195

/-!
# A046089: Triangle read by rows, the Bell transform of (n+2)!/2 without column 0.

The programs for A046089, the canonical program `A046089.P14716140437352535864` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046089 has offset 1).

The definition of A046089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046089.P14716140437352535864

`T(n-1,k-1)+(row(n)+2*(col(n)+1))*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046089

/-- `T(n-1,k-1)+(row(n)+2*(col(n)+1))*T(n-1,k)` -/
def P14716140437352535864.Spec : Prop :=
  ∀ n, (P14716140437352535864.a n : ℤ) = A046089 (n + 1)

theorem P14716140437352535864.correct : P14716140437352535864.Spec := by
  intro n
  simp only [A046089, Nat.add_sub_cancel]

end A046089

/-! ## A046089.P3375925917833847361

`A210754(n+1)/A059268(n)*A094587(n)`
-/

namespace A046089.P3375925917833847361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210754 (n + 1) : ℚ) / (A059268 n : ℚ) * (A094587 n : ℚ)

end

end A046089.P3375925917833847361

namespace A046089

/-- `A210754(n+1)/A059268(n)*A094587(n)` -/
def P3375925917833847361.Spec : Prop :=
  ∀ n, P3375925917833847361.a n = (A046089 (n + 1) : ℚ)

end A046089

/-! ## A046089.P10059542841175256957

`A210754(n+1)/A000079(A002262(n))*A094587(n)`
-/

namespace A046089.P10059542841175256957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210754 (n + 1) : ℚ) / (A000079 (A002262 n).toNat : ℚ) * (A094587 n : ℚ)

end

end A046089.P10059542841175256957

namespace A046089

/-- `A210754(n+1)/A000079(A002262(n))*A094587(n)` -/
def P10059542841175256957.Spec : Prop :=
  ∀ n, P10059542841175256957.a n = (A046089 (n + 1) : ℚ)

end A046089

/-! ## A046089.P2966258688036446801

`A210754(n+1)/A036561(A112367(n))*A094587(n)`
-/

namespace A046089.P2966258688036446801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210754 (n + 1) : ℚ) / (A036561 (A112367 n).toNat : ℚ) * (A094587 n : ℚ)

end

end A046089.P2966258688036446801

namespace A046089

/-- `A210754(n+1)/A036561(A112367(n))*A094587(n)` -/
def P2966258688036446801.Spec : Prop :=
  ∀ n, P2966258688036446801.a n = (A046089 (n + 1) : ℚ)

end A046089

/-! ## A046089.P15368655194738193375

`A210754(n+1)/A072084(A036561(n))*A094587(n)`
-/

namespace A046089.P15368655194738193375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210754 (n + 1) : ℚ) / (A072084 (A036561 n).toNat : ℚ) * (A094587 n : ℚ)

end

end A046089.P15368655194738193375

namespace A046089

/-- `A210754(n+1)/A072084(A036561(n))*A094587(n)` -/
def P15368655194738193375.Spec : Prop :=
  ∀ n, P15368655194738193375.a n = (A046089 (n + 1) : ℚ)

end A046089

/-!
# A046090: Consider all Pythagorean triples (X,X+1,Z) ordered by increasing Z; sequence gives X+1 values.

The programs for A046090, the canonical program `A046090.P5392901098654976716` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046090 has offset 0).

The definition of A046090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046090.P5392901098654976716

`6*a(n-1)-a(n-2)-2` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046090

/-- `6*a(n-1)-a(n-2)-2` -/
def P5392901098654976716.Spec : Prop :=
  ∀ n, P5392901098654976716.a n = A046090 n

theorem P5392901098654976716.correct : P5392901098654976716.Spec := by
  intro n
  simp only [A046090]

end A046090

/-! ## A046090.P4684226858432307250

`A001652(n)+1`
-/

namespace A046090.P4684226858432307250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n + 1

end

end A046090.P4684226858432307250

namespace A046090

/-- `A001652(n)+1` -/
def P4684226858432307250.Spec : Prop :=
  ∀ n, P4684226858432307250.a n = A046090 n

end A046090

/-! ## A046090.P871262715324009050

`(A002315(n)+1)/2`
-/

namespace A046090.P871262715324009050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002315 n + 1 : ℚ) / 2

end

end A046090.P871262715324009050

namespace A046090

/-- `(A002315(n)+1)/2` -/
def P871262715324009050.Spec : Prop :=
  ∀ n, P871262715324009050.a n = (A046090 n : ℚ)

end A046090

/-! ## A046090.P2818202567267617009

`A001109(n+1)-A053141(n)`
-/

namespace A046090.P2818202567267617009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1) - A053141 n

end

end A046090.P2818202567267617009

namespace A046090

/-- `A001109(n+1)-A053141(n)` -/
def P2818202567267617009.Spec : Prop :=
  ∀ n, P2818202567267617009.a n = A046090 n

end A046090

/-! ## A046090.P8803645598736109859

`∑[ogf((1-3x)/(1-6x+x^2))]`
-/

namespace A046090.P8803645598736109859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046090.P8803645598736109859

namespace A046090

/-- `∑[ogf((1-3x)/(1-6x+x^2))]` -/
def P8803645598736109859.Spec : Prop :=
  ∀ n, P8803645598736109859.a n = A046090 n

end A046090

/-! ## A046090.P4601363281853044222

`ogf((1-3x)/(1-7x+7x^2-x^3))`
-/

namespace A046090.P4601363281853044222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -7, 7, -1] n

end

end A046090.P4601363281853044222

namespace A046090

/-- `ogf((1-3x)/(1-7x+7x^2-x^3))` -/
def P4601363281853044222.Spec : Prop :=
  ∀ n, P4601363281853044222.a n = A046090 n

end A046090

/-! ## A046090.P3815868244389486555

`ceil(ceil(∑[((sqrt(2)+1)^n)²])/2)`
-/

namespace A046090.P3815868244389486555
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ : ℚ) / 2⌉

end

end A046090.P3815868244389486555

namespace A046090

/-- `ceil(ceil(∑[((sqrt(2)+1)^n)²])/2)` -/
def P3815868244389486555.Spec : Prop :=
  ∀ n, P3815868244389486555.a n = A046090 n

end A046090

/-! ## A046090.P695795193057330560

`round(a(n-1)/(3-sqrt(8)))-2` with `a(0)=1`
-/

namespace A046090.P695795193057330560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))) - 2

end

end A046090.P695795193057330560

namespace A046090

/-- `round(a(n-1)/(3-sqrt(8)))-2` -/
def P695795193057330560.Spec : Prop :=
  ∀ n, P695795193057330560.a n = A046090 n

end A046090

/-! ## A046090.P344438544675400713

`∑[floor(a(n-1)/(3-sqrt(8)))]` with `a(0)=1, a(1)=3`
-/

namespace A046090.P344438544675400713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046090.P344438544675400713

namespace A046090

/-- `∑[floor(a(n-1)/(3-sqrt(8)))]` -/
def P344438544675400713.Spec : Prop :=
  ∀ n, P344438544675400713.a n = A046090 n

end A046090

/-! ## A046090.P12574368255141138692

`∑[6*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=3`
-/

namespace A046090.P12574368255141138692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  6 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046090.P12574368255141138692

namespace A046090

/-- `∑[6*a(n-1)-a(n-2)]` -/
def P12574368255141138692.Spec : Prop :=
  ∀ n, P12574368255141138692.a n = A046090 n

end A046090

/-! ## A046090.P16490399636517961893

`record[1-floor((sqrt(2)+1)*a(n-1))]` with `a(0)=1`
-/

namespace A046090.P16490399636517961893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - ⌊(Real.sqrt (2 : ℝ) + 1) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046090.P16490399636517961893

namespace A046090

/-- `record[1-floor((sqrt(2)+1)*a(n-1))]` -/
def P16490399636517961893.Spec : Prop :=
  ∀ n, P16490399636517961893.a n = A046090 n

end A046090

/-! ## A046090.P7109328825904373114

`∑[A001541(n)]`
-/

namespace A046090.P7109328825904373114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046090.P7109328825904373114

namespace A046090

/-- `∑[A001541(n)]` -/
def P7109328825904373114.Spec : Prop :=
  ∀ n, P7109328825904373114.a n = A046090 n

end A046090

/-! ## A046090.P17590837534242580047

`record[A077921(n)]`
-/

namespace A046090.P17590837534242580047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046090.P17590837534242580047

namespace A046090

/-- `record[A077921(n)]` -/
def P17590837534242580047.Spec : Prop :=
  ∀ n, P17590837534242580047.a n = A046090 n

end A046090

/-! ## A046090.P16426858762443703255

`A182435(n+1)`
-/

namespace A046090.P16426858762443703255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182435 (n + 1)

end

end A046090.P16426858762443703255

namespace A046090

/-- `A182435(n+1)` -/
def P16426858762443703255.Spec : Prop :=
  ∀ n, P16426858762443703255.a n = A046090 n

end A046090

/-! ## A046090.P14584067357907660104

`A009759(n)+4`
-/

namespace A046090.P14584067357907660104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009759 n + 4

end

end A046090.P14584067357907660104

namespace A046090

/-- `A009759(n)+4` -/
def P14584067357907660104.Spec : Prop :=
  ∀ n, P14584067357907660104.a n = A046090 n

end A046090

/-! ## A046090.P17965133819164529784

`A024537(2*n)`
-/

namespace A046090.P17965133819164529784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 (2 * n)

end

end A046090.P17965133819164529784

namespace A046090

/-- `A024537(2*n)` -/
def P17965133819164529784.Spec : Prop :=
  ∀ n, P17965133819164529784.a n = A046090 n

end A046090

/-! ## A046090.P9743129910388384247

`A077921(2*n)`
-/

namespace A046090.P9743129910388384247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077921 (2 * n)

end

end A046090.P9743129910388384247

namespace A046090

/-- `A077921(2*n)` -/
def P9743129910388384247.Spec : Prop :=
  ∀ n, P9743129910388384247.a n = A046090 n

end A046090

/-! ## A046090.P11618946365025505002

`A097076(Δ[n²])`
-/

namespace A046090.P11618946365025505002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046090.P11618946365025505002

namespace A046090

/-- `A097076(Δ[n²])` -/
def P11618946365025505002.Spec : Prop :=
  ∀ n, P11618946365025505002.a n = A046090 n

end A046090

/-! ## A046090.P1937328712597013593

`A171842(Δ[n²])`
-/

namespace A046090.P1937328712597013593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046090.P1937328712597013593

namespace A046090

/-- `A171842(Δ[n²])` -/
def P1937328712597013593.Spec : Prop :=
  ∀ n, P1937328712597013593.a n = A046090 n

end A046090

/-! ## A046090.P18420049359116546640

`record[∑[A077985(n)]]`
-/

namespace A046090.P18420049359116546640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046090.P18420049359116546640

namespace A046090

/-- `record[∑[A077985(n)]]` -/
def P18420049359116546640.Spec : Prop :=
  ∀ n, P18420049359116546640.a n = A046090 n

end A046090

/-!
# A046091: Number of connected planar graphs with n edges.

The programs for A046091, there is no canonical definition to state claims against.
-/

/-! ## A046091.P7182943572978190741

`A014099(A317111(n))+A002905(n)`
-/

namespace A046091.P7182943572978190741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014099 (A317111 n).toNat + A002905 n

end

end A046091.P7182943572978190741

/-! ## A046091.P14667527678365351167

`A002905(n)-A006925(A006926(n))`
-/

namespace A046091.P14667527678365351167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002905 n - A006925 (A006926 n).toNat

end

end A046091.P14667527678365351167

/-! ## A046091.P17372630136948499704

`A002905(n)-A011817(A002998(n))`
-/

namespace A046091.P17372630136948499704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002905 n - A011817 (A002998 n).toNat

end

end A046091.P17372630136948499704

/-! ## A046091.P7360759446132902372

`A002905(n)-A003422(A011817(n))`
-/

namespace A046091.P7360759446132902372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002905 n - A003422 (A011817 n).toNat

end

end A046091.P7360759446132902372

/-! ## A046091.P7537466232234947064

`A002905(n)-A293162(A186576(n))`
-/

namespace A046091.P7537466232234947064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002905 n - A293162 (A186576 n).toNat

end

end A046091.P7537466232234947064

/-!
# A046092: 4 times triangular numbers: a(n) = 2*n*(n+1).

The programs for A046092, the canonical program `A046092.P16411658895297056450` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046092 has offset 0).

The definition of A046092 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(n+1)` (program `A046092.P16411658895297056450`, by `A046092.P16411658895297056450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A046092.P16411658895297056450

`2*n*(n+1)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046092

/-- `2*n*(n+1)` -/
def P16411658895297056450.Spec : Prop :=
  ∀ n, (P16411658895297056450.a n : ℤ) = A046092 n

theorem P16411658895297056450.correct : P16411658895297056450.Spec := by
  intro n
  simp only [A046092]

end A046092

/-! ## A046092.P2729137672797818818

`A001844(n)-1`
-/

namespace A046092.P2729137672797818818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - 1

end

end A046092.P2729137672797818818

namespace A046092

/-- `A001844(n)-1` -/
def P2729137672797818818.Spec : Prop :=
  ∀ n, P2729137672797818818.a n = A046092 n

theorem P2729137672797818818.correct : P2729137672797818818.Spec := by
  intro n
  simp only [A046092, Nat.add_sub_cancel, A046092.P2729137672797818818.a, A046092.P16411658895297056450.a, A001844, A001844.P5037395199076350534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046092

/-! ## A046092.P5312100980686665838

`∑[n]/tan(acot(4))`
-/

namespace A046092.P5312100980686665838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (4 : ℝ))

end

end A046092.P5312100980686665838

namespace A046092

/-- `∑[n]/tan(acot(4))` -/
def P5312100980686665838.Spec : Prop :=
  ∀ n, P5312100980686665838.a n = (A046092 n : ℝ)

end A046092

/-! ## A046092.P2375843365416518418

`∑[n]/cot(atan(4))`
-/

namespace A046092.P2375843365416518418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.cot (Real.arctan (4 : ℝ))

end

end A046092.P2375843365416518418

namespace A046092

/-- `∑[n]/cot(atan(4))` -/
def P2375843365416518418.Spec : Prop :=
  ∀ n, P2375843365416518418.a n = (A046092 n : ℝ)

end A046092

/-! ## A046092.P16520109739504176905

`C(Δ[n²], 2)+n`
-/

namespace A046092.P16520109739504176905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2 + n

end

end A046092.P16520109739504176905

namespace A046092

/-- `C(Δ[n²], 2)+n` -/
def P16520109739504176905.Spec : Prop :=
  ∀ n, (P16520109739504176905.a n : ℤ) = A046092 n

end A046092

/-! ## A046092.P1813619663292015488

`floor(cot(Δ[atan(2*n)]))`
-/

namespace A046092.P1813619663292015488
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (f1 (n + 1) - f1 n)⌋

end

end A046092.P1813619663292015488

namespace A046092

/-- `floor(cot(Δ[atan(2*n)]))` -/
def P1813619663292015488.Spec : Prop :=
  ∀ n, P1813619663292015488.a n = A046092 n

end A046092

/-! ## A046092.P589039831041951257

`xor(1, Δ[n²]²)/2`
-/

namespace A046092.P589039831041951257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) : ℚ) / 2

end

end A046092.P589039831041951257

namespace A046092

/-- `xor(1, Δ[n²]²)/2` -/
def P589039831041951257.Spec : Prop :=
  ∀ n, P589039831041951257.a n = (A046092 n : ℚ)

end A046092

/-! ## A046092.P1908788453727970443

`∑[n]/(cosh(log(2))-1)`
-/

namespace A046092.P1908788453727970443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / (Real.cosh (Real.log (2 : ℝ)) - 1)

end

end A046092.P1908788453727970443

namespace A046092

/-- `∑[n]/(cosh(log(2))-1)` -/
def P1908788453727970443.Spec : Prop :=
  ∀ n, P1908788453727970443.a n = (A046092 n : ℝ)

end A046092

/-! ## A046092.P15948144743240235862

`∑[n]/(1-sinh(log(2)))`
-/

namespace A046092.P15948144743240235862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / (1 - Real.sinh (Real.log (2 : ℝ)))

end

end A046092.P15948144743240235862

namespace A046092

/-- `∑[n]/(1-sinh(log(2)))` -/
def P15948144743240235862.Spec : Prop :=
  ∀ n, P15948144743240235862.a n = (A046092 n : ℝ)

end A046092

/-! ## A046092.P7663296314773290454

`floor(1/Δ[atan(2*n)])`
-/

namespace A046092.P7663296314773290454
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (f1 (n + 1) - f1 n)⌋

end

end A046092.P7663296314773290454

namespace A046092

/-- `floor(1/Δ[atan(2*n)])` -/
def P7663296314773290454.Spec : Prop :=
  ∀ n, P7663296314773290454.a n = A046092 n

end A046092

/-! ## A046092.P5449253794924475217

`∑[n]/cos(atan(1))²²`
-/

namespace A046092.P5449253794924475217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / (Real.cos (Real.arctan (1 : ℝ)) ^ 2) ^ 2

end

end A046092.P5449253794924475217

namespace A046092

/-- `∑[n]/cos(atan(1))²²` -/
def P5449253794924475217.Spec : Prop :=
  ∀ n, P5449253794924475217.a n = (A046092 n : ℝ)

end A046092

/-! ## A046092.P16565794193940666726

`∑[n]/sin(atan(1))²²`
-/

namespace A046092.P16565794193940666726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / (Real.sin (Real.arctan (1 : ℝ)) ^ 2) ^ 2

end

end A046092.P16565794193940666726

namespace A046092

/-- `∑[n]/sin(atan(1))²²` -/
def P16565794193940666726.Spec : Prop :=
  ∀ n, P16565794193940666726.a n = (A046092 n : ℝ)

end A046092

/-! ## A046092.P11192783620796877891

`∑[n]/cos(acot(1))²²`
-/

namespace A046092.P11192783620796877891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / (Real.cos (SequenceMachineLib.acot (1 : ℝ)) ^ 2) ^ 2

end

end A046092.P11192783620796877891

namespace A046092

/-- `∑[n]/cos(acot(1))²²` -/
def P11192783620796877891.Spec : Prop :=
  ∀ n, P11192783620796877891.a n = (A046092 n : ℝ)

end A046092

/-! ## A046092.P1433985964070928576

`∑[n]/sin(acot(1))²²`
-/

namespace A046092.P1433985964070928576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / (Real.sin (SequenceMachineLib.acot (1 : ℝ)) ^ 2) ^ 2

end

end A046092.P1433985964070928576

namespace A046092

/-- `∑[n]/sin(acot(1))²²` -/
def P1433985964070928576.Spec : Prop :=
  ∀ n, P1433985964070928576.a n = (A046092 n : ℝ)

end A046092

/-! ## A046092.P11236663120684638463

`floor(cot(abs(Δ[acot(2*n)])))`
-/

namespace A046092.P11236663120684638463
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot |f1 (n + 1) - f1 n|⌋

end

end A046092.P11236663120684638463

namespace A046092

/-- `floor(cot(abs(Δ[acot(2*n)])))` -/
def P11236663120684638463.Spec : Prop :=
  ∀ n, P11236663120684638463.a n = A046092 n

end A046092

/-! ## A046092.P16282377076318736516

`floor(cot(Δ[acot(-(2*n))]))`
-/

namespace A046092.P16282377076318736516
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (-(2 * n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (f1 (n + 1) - f1 n)⌋

end

end A046092.P16282377076318736516

namespace A046092

/-- `floor(cot(Δ[acot(-(2*n))]))` -/
def P16282377076318736516.Spec : Prop :=
  ∀ n, P16282377076318736516.a n = A046092 n

end A046092

/-! ## A046092.P14985916156410886301

`abs(ceil(cot(Δ[acot(2*n)])))`
-/

namespace A046092.P14985916156410886301
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.cot (f1 (n + 1) - f1 n)⌉|

end

end A046092.P14985916156410886301

namespace A046092

/-- `abs(ceil(cot(Δ[acot(2*n)])))` -/
def P14985916156410886301.Spec : Prop :=
  ∀ n, P14985916156410886301.a n = A046092 n

end A046092

/-! ## A046092.P15406781008352120253

`∑[ogf(4x/(1-2x+x^2))]`
-/

namespace A046092.P15406781008352120253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046092.P15406781008352120253

namespace A046092

/-- `∑[ogf(4x/(1-2x+x^2))]` -/
def P15406781008352120253.Spec : Prop :=
  ∀ n, P15406781008352120253.a n = A046092 n

end A046092

/-! ## A046092.P9406885016993244070

`(2*n-1)*a(n-1)-n*((2*n)²-8*n)` with `a(0)=0`
-/

namespace A046092.P9406885016993244070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n : ℤ) - 1) * a (n - 1) - (n : ℤ) * (((2 * n) ^ 2 : ℤ) - (8 * n : ℤ))

end

end A046092.P9406885016993244070

namespace A046092

/-- `(2*n-1)*a(n-1)-n*((2*n)²-8*n)` -/
def P9406885016993244070.Spec : Prop :=
  ∀ n, P9406885016993244070.a n = A046092 n

theorem P9406885016993244070.correct : P9406885016993244070.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A046092, Nat.add_sub_cancel, A046092.P9406885016993244070.a, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A046092, Nat.add_sub_cancel, A046092.P9406885016993244070.a, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A046092

/-! ## A046092.P5124601122374080425

`n+A014105(n)`
-/

namespace A046092.P5124601122374080425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A014105 n

end

end A046092.P5124601122374080425

namespace A046092

/-- `n+A014105(n)` -/
def P5124601122374080425.Spec : Prop :=
  ∀ n, P5124601122374080425.a n = A046092 n

theorem P5124601122374080425.correct : P5124601122374080425.Spec := by
  intro n
  simp only [A046092, Nat.add_sub_cancel, A046092.P5124601122374080425.a, A046092.P16411658895297056450.a, A014105, A014105.P182524374866796289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046092

/-!
# A046094: Agoh's congruence; a(n) is conjectured to be 1 iff n is prime.

The programs for A046094, there is no canonical definition to state claims against.
-/

/-! ## A046094.P495782127762037509

`A228037(A254667(n)-A026741(n))`
-/

namespace A046094.P495782127762037509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228037 (A254667 n - A026741 n).toNat

end

end A046094.P495782127762037509

/-! ## A046094.P8589905587227024490

`A228037(A026741(n)%A114112(n+1))`
-/

namespace A046094.P8589905587227024490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228037 (Int.tmod (A026741 n) (A114112 (n + 1))).toNat

end

end A046094.P8589905587227024490

/-! ## A046094.P7298231837096619954

`A228037(A142150(n))+A142150(A326584(n+1))`
-/

namespace A046094.P7298231837096619954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228037 (A142150 n).toNat + A142150 (A326584 (n + 1)).toNat

end

end A046094.P7298231837096619954

/-! ## A046094.P5487722295577940132

`A000035(A169814(n+1))*A228037(A026741(n))`
-/

namespace A046094.P5487722295577940132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A169814 (n + 1)).toNat * A228037 (A026741 n).toNat

end

end A046094.P5487722295577940132

/-! ## A046094.P2017189359702310029

`A228037(A142150(A008578(n+1))+A142150(n))`
-/

namespace A046094.P2017189359702310029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228037 (A142150 (A008578 (n + 1)).toNat + A142150 n).toNat

end

end A046094.P2017189359702310029

/-! ## A046094.P18008897340555428321

`A228037(A000217(n)%A233583(n+1))`
-/

namespace A046094.P18008897340555428321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228037 (Int.tmod (A000217 n) (A233583 (n + 1))).toNat

end

end A046094.P18008897340555428321

/-! ## A046094.P6538376667736395012

`A228037(val(A281179(n), 2))`
-/

namespace A046094.P6538376667736395012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228037 (SequenceMachineLib.valuation (A281179 n).toNat 2)

end

end A046094.P6538376667736395012

/-! ## A046094.P14841842520846145216

`A228037(and(A116921(n+1), A282413(n)))`
-/

namespace A046094.P14841842520846145216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228037 (Int.land (A116921 (n + 1)) (A282413 n)).toNat

end

end A046094.P14841842520846145216

/-!
# A046096: Continued fraction for Calabi's constant.

The programs for A046096, there is no canonical definition to state claims against.
-/

/-! ## A046096.P15101333879936445747

`gcd(A165122(A000285(n)), A165137(n))`
-/

namespace A046096.P15101333879936445747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165122 (A000285 n).toNat) (A165137 n)

end

end A046096.P15101333879936445747

/-! ## A046096.P4477918208660787038

`gcd(A005206(A215335(n+1)), A149964(n))`
-/

namespace A046096.P4477918208660787038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005206 (A215335 (n + 1)).toNat) (A149964 n)

end

end A046096.P4477918208660787038

/-! ## A046096.P16307109804360025514

`gcd(A061775(A000740(n+1)), A320802(n))`
-/

namespace A046096.P16307109804360025514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061775 (A000740 (n + 1)).toNat) (A320802 n)

end

end A046096.P16307109804360025514

/-! ## A046096.P612141120031041816

`A080577(A049200(3*(n+1))+A041008(n))`
-/

namespace A046096.P612141120031041816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (A049200 (3 * (n + 1)) + A041008 n).toNat

end

end A046096.P612141120031041816

/-!
# A046097: Values of n for which binomial(2n-1, n) is squarefree.

The programs for A046097, there is no canonical definition to state claims against.
-/

/-! ## A046097.P8356885596160181662

`eq[36, lcm(36, A222217(n))]`
-/

namespace A046097.P8356885596160181662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 36 (A222217 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046097.P8356885596160181662

/-! ## A046097.P12220487481480197477

`record[∏{digits}[A138857(n+1), #]]`
-/

namespace A046097.P12220487481480197477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138857 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046097.P12220487481480197477

/-! ## A046097.P16883835821972367132

`lt[A361077(n), record[xor(1, n)]]`
-/

namespace A046097.P16883835821972367132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361077 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046097.P16883835821972367132

/-! ## A046097.P171681530892041189

`record[∏{e}[A201353(n+1), #+1]]`
-/

namespace A046097.P171681530892041189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046097.P171681530892041189

/-! ## A046097.P15049997043873431664

`eq[0, A048243(2*n+1)]+1`
-/

namespace A046097.P15049997043873431664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048243 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046097.P15049997043873431664

/-!
# A046098: Numbers n such that central binomial coefficient C(n, floor(n/2)) is squarefree.

The programs for A046098, there is no canonical definition to state claims against.
-/

/-! ## A046098.P7530987540255935959

`eq[floor(n/2), A238892(n)]`
-/

namespace A046098.P7530987540255935959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046098.P7530987540255935959

/-! ## A046098.P13309322436368994012

`eq[0, A056175(C(2, n)+n)]`
-/

namespace A046098.P13309322436368994012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (Nat.choose 2 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046098.P13309322436368994012

/-! ## A046098.P13564517074447628540

`eq[1, A056056(C(2, n)+n)]`
-/

namespace A046098.P13564517074447628540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (Nat.choose 2 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046098.P13564517074447628540

/-! ## A046098.P13812798504927210355

`eq[0, A048243(round(acot(n)+n))]`
-/

namespace A046098.P13812798504927210355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048243 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046098.P13812798504927210355

/-! ## A046098.P18103764413258689564

`eq[0, A056175(round(acot(n)+n))]`
-/

namespace A046098.P18103764413258689564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046098.P18103764413258689564

/-!
# A046099: Numbers that are not cubefree. Numbers divisible by a cube greater than 1. Complement of A004709.

The programs for A046099, the canonical program `A046099.P4464155253018047528` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046099 has offset 1).

The definition of A046099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8403 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046099.P13567118965630045789

`∪[A059172(n+1), A074451(n+1)]`
-/

namespace A046099.P13567118965630045789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046099.P13567118965630045789

namespace A046099

/-- `∪[A059172(n+1), A074451(n+1)]` -/
def P13567118965630045789.Spec : Prop :=
  ∀ n, (P13567118965630045789.a n : ℤ) = A046099 (n + 1)

end A046099

/-! ## A046099.P16124514661541486092

`∪[A046101(n+1), A176297(n+1)]`
-/

namespace A046099.P16124514661541486092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046099.P16124514661541486092

namespace A046099

/-- `∪[A046101(n+1), A176297(n+1)]` -/
def P16124514661541486092.Spec : Prop :=
  ∀ n, (P16124514661541486092.a n : ℤ) = A046099 (n + 1)

end A046099

/-! ## A046099.P1700838767433220359

`∪[A046101(n+1), A295661(n+1)]`
-/

namespace A046099.P1700838767433220359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046099.P1700838767433220359

namespace A046099

/-- `∪[A046101(n+1), A295661(n+1)]` -/
def P1700838767433220359.Spec : Prop :=
  ∀ n, (P1700838767433220359.a n : ℤ) = A046099 (n + 1)

end A046099

/-! ## A046099.P3928469284178720803

`∪[A046101(n+1), A336593(n+1)]`
-/

namespace A046099.P3928469284178720803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046099.P3928469284178720803

namespace A046099

/-- `∪[A046101(n+1), A336593(n+1)]` -/
def P3928469284178720803.Spec : Prop :=
  ∀ n, (P3928469284178720803.a n : ℤ) = A046099 (n + 1)

end A046099

/-! ## A046099.P11908971723963394546

`∪[A320966(n+1), A074451(n+1)]`
-/

namespace A046099.P11908971723963394546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046099.P11908971723963394546

namespace A046099

/-- `∪[A320966(n+1), A074451(n+1)]` -/
def P11908971723963394546.Spec : Prop :=
  ∀ n, (P11908971723963394546.a n : ℤ) = A046099 (n + 1)

end A046099

/-! ## A046099.P12040865765916123670

`∪[A046101(n+1), A366761(n+1)]`
-/

namespace A046099.P12040865765916123670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046099.P12040865765916123670

namespace A046099

/-- `∪[A046101(n+1), A366761(n+1)]` -/
def P12040865765916123670.Spec : Prop :=
  ∀ n, (P12040865765916123670.a n : ℤ) = A046099 (n + 1)

end A046099

/-! ## A046099.P3978243296864412312

`∪[A354561(n+1), A074451(n+1)]`
-/

namespace A046099.P3978243296864412312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046099.P3978243296864412312

namespace A046099

/-- `∪[A354561(n+1), A074451(n+1)]` -/
def P3978243296864412312.Spec : Prop :=
  ∀ n, (P3978243296864412312.a n : ℤ) = A046099 (n + 1)

end A046099

/-! ## A046099.P7056249560797845550

`∪[A391319(n+1), A059172(n+1)]`
-/

namespace A046099.P7056249560797845550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046099.P7056249560797845550

namespace A046099

/-- `∪[A391319(n+1), A059172(n+1)]` -/
def P7056249560797845550.Spec : Prop :=
  ∀ n, (P7056249560797845550.a n : ℤ) = A046099 (n + 1)

end A046099

/-! ## A046099.P3855674630169627066

`∪[A295661(n+1), A360723(n+1)]`
-/

namespace A046099.P3855674630169627066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046099.P3855674630169627066

namespace A046099

/-- `∪[A295661(n+1), A360723(n+1)]` -/
def P3855674630169627066.Spec : Prop :=
  ∀ n, (P3855674630169627066.a n : ℤ) = A046099 (n + 1)

end A046099

/-! ## A046099.P4464155253018047528

`lt[1, A050361(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046099

/-- `lt[1, A050361(n+1)]+1` -/
def P4464155253018047528.Spec : Prop :=
  ∀ n, (P4464155253018047528.a n : ℤ) = A046099 (n + 1)

theorem P4464155253018047528.correct : P4464155253018047528.Spec := by
  intro n
  simp only [A046099, Nat.add_sub_cancel]

end A046099

/-! ## A046099.P11061613508222285881

`lt[A212793(n+1), 1]+1`
-/

namespace A046099.P11061613508222285881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A046099.P11061613508222285881

namespace A046099

/-- `lt[A212793(n+1), 1]+1` -/
def P11061613508222285881.Spec : Prop :=
  ∀ n, (P11061613508222285881.a n : ℤ) = A046099 (n + 1)

end A046099

/-! ## A046099.P2159186541231766197

`lt[2, A051903(n+1)]+1`
-/

namespace A046099.P2159186541231766197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046099.P2159186541231766197

namespace A046099

/-- `lt[2, A051903(n+1)]+1` -/
def P2159186541231766197.Spec : Prop :=
  ∀ n, (P2159186541231766197.a n : ℤ) = A046099 (n + 1)

end A046099

/-! ## A046099.P15700636652893766913

`lt[1, A317941(n+1)²]+1`
-/

namespace A046099.P15700636652893766913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317941 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046099.P15700636652893766913

namespace A046099

/-- `lt[1, A317941(n+1)²]+1` -/
def P15700636652893766913.Spec : Prop :=
  ∀ n, (P15700636652893766913.a n : ℤ) = A046099 (n + 1)

end A046099

/-! ## A046099.P16011593706026281762

`lt[A328722(n+1)², 1]+1`
-/

namespace A046099.P16011593706026281762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328722 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A046099.P16011593706026281762

namespace A046099

/-- `lt[A328722(n+1)², 1]+1` -/
def P16011593706026281762.Spec : Prop :=
  ∀ n, (P16011593706026281762.a n : ℤ) = A046099 (n + 1)

end A046099

/-! ## A046099.P4141743080472461369

`lt[1, A113061(n+1)]+1`
-/

namespace A046099.P4141743080472461369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046099.P4141743080472461369

namespace A046099

/-- `lt[1, A113061(n+1)]+1` -/
def P4141743080472461369.Spec : Prop :=
  ∀ n, (P4141743080472461369.a n : ℤ) = A046099 (n + 1)

end A046099

/-! ## A046099.P7081926923018634435

`eq[A000203(n+1), A323403(n+1)]+1`
-/

namespace A046099.P7081926923018634435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323403 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046099.P7081926923018634435

namespace A046099

/-- `eq[A000203(n+1), A323403(n+1)]+1` -/
def P7081926923018634435.Spec : Prop :=
  ∀ n, (P7081926923018634435.a n : ℤ) = A046099 (n + 1)

end A046099

/-! ## A046099.P13294919748880092886

`lt[2, A072411(n+1)]+1`
-/

namespace A046099.P13294919748880092886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046099.P13294919748880092886

namespace A046099

/-- `lt[2, A072411(n+1)]+1` -/
def P13294919748880092886.Spec : Prop :=
  ∀ n, (P13294919748880092886.a n : ℤ) = A046099 (n + 1)

end A046099

/-! ## A046099.P13638167244749173501

`eq[0, A046692(n+1)]+1`
-/

namespace A046099.P13638167244749173501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046099.P13638167244749173501

namespace A046099

/-- `eq[0, A046692(n+1)]+1` -/
def P13638167244749173501.Spec : Prop :=
  ∀ n, (P13638167244749173501.a n : ℤ) = A046099 (n + 1)

end A046099

/-! ## A046099.P16181433432781805059

`lt[0, A056626(n+1)]+1`
-/

namespace A046099.P16181433432781805059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056626 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046099.P16181433432781805059

namespace A046099

/-- `lt[0, A056626(n+1)]+1` -/
def P16181433432781805059.Spec : Prop :=
  ∀ n, (P16181433432781805059.a n : ℤ) = A046099 (n + 1)

end A046099

