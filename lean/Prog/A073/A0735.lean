import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A073500: Numbers k such that sigma(k) = sigma(k+1)+sigma(k-1).

The programs for A073500, there is no canonical definition to state claims against.
-/

/-! ## A073500.P14815313275447599003

`A076528(n+1)-1`
-/

namespace A073500.P14815313275447599003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076528 (n + 1) - 1

end

end A073500.P14815313275447599003

/-! ## A073500.P15905380287678849624

`xor(1, A076528(-xor(n, -1)))`
-/

namespace A073500.P15905380287678849624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A076528 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A073500.P15905380287678849624

/-! ## A073500.P2913957191483414681

`xor(1, A076528(1-(n-2*n)))`
-/

namespace A073500.P2913957191483414681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A076528 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A073500.P2913957191483414681

/-! ## A073500.P16220218113965632599

`A134824(n+2)+A076528(n+1)`
-/

namespace A073500.P16220218113965632599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A076528 (n + 1)

end

end A073500.P16220218113965632599

/-! ## A073500.P7763979445672956539

`A260196(n+2)+A076528(n+1)`
-/

namespace A073500.P7763979445672956539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A076528 (n + 1)

end

end A073500.P7763979445672956539

/-! ## A073500.P11305396297874318275

`xor(A076528(n+1), A158388(n+1))`
-/

namespace A073500.P11305396297874318275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A076528 (n + 1)) (A158388 (n + 1))

end

end A073500.P11305396297874318275

/-! ## A073500.P4541552658762313256

`lcm(xor(1, A076528(n+1)), A033999(n))`
-/

namespace A073500.P4541552658762313256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.xor 1 (A076528 (n + 1))) (A033999 n)

end

end A073500.P4541552658762313256

/-! ## A073500.P12453276085098463255

`A082551(2*n+1)+A076528(n+1)`
-/

namespace A073500.P12453276085098463255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (2 * n + 1) + A076528 (n + 1)

end

end A073500.P12453276085098463255

/-! ## A073500.P1221118114100983362

`xor(A076528(n+1), A168677(2*n+1))`
-/

namespace A073500.P1221118114100983362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A076528 (n + 1)) (A168677 (2 * n + 1))

end

end A073500.P1221118114100983362

/-! ## A073500.P2083357224569125824

`xor(A076528(n+1), A294935(2*n+1))`
-/

namespace A073500.P2083357224569125824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A076528 (n + 1)) (A294935 (2 * n + 1))

end

end A073500.P2083357224569125824

/-! ## A073500.P16015614711903166596

`abs(A076528(n+1)+A033999(2*n+1))`
-/

namespace A073500.P16015614711903166596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076528 (n + 1) + A033999 (2 * n + 1)|

end

end A073500.P16015614711903166596

/-! ## A073500.P17261587361373988777

`A316441(A000040(n+1))+A076528(n+1)`
-/

namespace A073500.P17261587361373988777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A076528 (n + 1)

end

end A073500.P17261587361373988777

/-! ## A073500.P6620391096226592345

`xor(A076528(n+1), A107286(A020639(n+1)))`
-/

namespace A073500.P6620391096226592345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A076528 (n + 1)) (A107286 (A020639 (n + 1)).toNat)

end

end A073500.P6620391096226592345

/-! ## A073500.P16584141999835368450

`xor(A076528(n+1), A076558(A076562(n+1)))`
-/

namespace A073500.P16584141999835368450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A076528 (n + 1)) (A076558 (A076562 (n + 1)).toNat)

end

end A073500.P16584141999835368450

/-! ## A073500.P5944668271000859679

`xor(A076528(n+1), A076558(A076566(n+1)))`
-/

namespace A073500.P5944668271000859679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A076528 (n + 1)) (A076558 (A076566 (n + 1)).toNat)

end

end A073500.P5944668271000859679

/-! ## A073500.P3397273236634205079

`xor(A076528(n+1), A225230(A006881(n+1)))`
-/

namespace A073500.P3397273236634205079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A076528 (n + 1)) (A225230 (A006881 (n + 1)).toNat)

end

end A073500.P3397273236634205079

/-! ## A073500.P8706657500911572018

`xor(A076528(n+1), A076558(A006530(n+2)))`
-/

namespace A073500.P8706657500911572018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A076528 (n + 1)) (A076558 (A006530 (n + 2)).toNat)

end

end A073500.P8706657500911572018

/-! ## A073500.P3665466566268873558

`xor(A076528(n+1), A210442(A020639(n+2)))`
-/

namespace A073500.P3665466566268873558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A076528 (n + 1)) (A210442 (A020639 (n + 2)).toNat)

end

end A073500.P3665466566268873558

/-! ## A073500.P1037403541257833127

`abs(A076528(n+1)+A008683(A006512(n+1)))`
-/

namespace A073500.P1037403541257833127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076528 (n + 1) + A008683 (A006512 (n + 1)).toNat|

end

end A073500.P1037403541257833127

/-! ## A073500.P8595568172954095372

`xor(A076528(n+1), A078401(A001222(6*n+5)))`
-/

namespace A073500.P8595568172954095372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A076528 (n + 1)) (A078401 (A001222 (6 * n + 5)).toNat)

end

end A073500.P8595568172954095372

/-!
# A073501: Primes p such that the largest prime factor of p^2+1 is less than p.

The programs for A073501, there is no canonical definition to state claims against.
-/

/-! ## A073501.P1153260497473273027

`p?[A256011(n+1)]`
-/

namespace A073501.P1153260497473273027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073501.P1153260497473273027

/-! ## A073501.P2504043633121166062

`filter[A256011(1+n), A010051(#)]`
-/

namespace A073501.P2504043633121166062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A073501.P2504043633121166062

/-! ## A073501.P11566454867953339146

`filter[A256011(n+1), A323152(#)]`
-/

namespace A073501.P11566454867953339146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A073501.P11566454867953339146

/-! ## A073501.P15446001736011993469

`filter[A256011(n+1), A323153(#)]`
-/

namespace A073501.P15446001736011993469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A073501.P15446001736011993469

/-! ## A073501.P6715525159500267040

`∩[A000040(n+1), A256011(n+1)]`
-/

namespace A073501.P6715525159500267040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073501.P6715525159500267040

/-! ## A073501.P5195828002379906192

`∩[A004139(n+1), A256011(n+1)]`
-/

namespace A073501.P5195828002379906192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073501.P5195828002379906192

/-! ## A073501.P10211785668141478977

`∩[A006005(n+1), A256011(n+1)]`
-/

namespace A073501.P10211785668141478977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073501.P10211785668141478977

/-! ## A073501.P12521249640155313598

`∩[A008578(n+1), A256011(n+1)]`
-/

namespace A073501.P12521249640155313598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073501.P12521249640155313598

/-! ## A073501.P4112180815710991179

`∩[A033946(n+1), A256011(n+1)]`
-/

namespace A073501.P4112180815710991179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073501.P4112180815710991179

/-! ## A073501.P8085578252071490604

`∩[A045319(n+1), A256011(n+1)]`
-/

namespace A073501.P8085578252071490604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073501.P8085578252071490604

/-! ## A073501.P3277642290403707895

`∩[A045344(n+1), A256011(n+1)]`
-/

namespace A073501.P3277642290403707895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073501.P3277642290403707895

/-! ## A073501.P10918366591721318764

`∩[A046022(n+1), A256011(n+1)]`
-/

namespace A073501.P10918366591721318764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073501.P10918366591721318764

/-! ## A073501.P15805930203922727567

`∩[A051948(n+1), A256011(n+1)]`
-/

namespace A073501.P15805930203922727567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073501.P15805930203922727567

/-! ## A073501.P3917166294877054844

`∩[A053813(n+1), A256011(n+1)]`
-/

namespace A073501.P3917166294877054844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073501.P3917166294877054844

/-! ## A073501.P14339140646966504571

`∩[A062972(n+1), A256011(n+1)]`
-/

namespace A073501.P14339140646966504571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073501.P14339140646966504571

/-! ## A073501.P2238792646112393321

`∩[A065091(n+1), A256011(n+1)]`
-/

namespace A073501.P2238792646112393321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073501.P2238792646112393321

/-! ## A073501.P595061732410111117

`∩[A066050(n+1), A256011(n+1)]`
-/

namespace A073501.P595061732410111117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073501.P595061732410111117

/-! ## A073501.P16396213224556335610

`∩[A067126(n+1), A256011(n+1)]`
-/

namespace A073501.P16396213224556335610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073501.P16396213224556335610

/-! ## A073501.P3869761872588687345

`∩[A083249(n+1), A256011(n+1)]`
-/

namespace A073501.P3869761872588687345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073501.P3869761872588687345

/-! ## A073501.P2215386259094637973

`∩[A161428(n+1), A256011(n+1)]`
-/

namespace A073501.P2215386259094637973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073501.P2215386259094637973

/-!
# A073503: Numbers n such that the number of solutions to x^4 == 1 (mod n) is twice the number of solutions of x^2 == 1 (mod n).

The programs for A073503, there is no canonical definition to state claims against.
-/

/-! ## A073503.P12668013122768333936

`eq[A046073(n+1)%2, A065205(A130124(n+1)+1)]+1`
-/

namespace A073503.P12668013122768333936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046073 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (A130124 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073503.P12668013122768333936

/-! ## A073503.P15102668038847030955

`eq[A046073(n+1)%2, A294936(A013611(n)+1)]+1`
-/

namespace A073503.P15102668038847030955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046073 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A013611 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073503.P15102668038847030955

/-!
# A073504: A possible basis for finite fractal sequences: let u(1) = 1, u(2) = n, u(k) = floor(u(k-1)/2) + floor(u(k-2)/2); then a(n) = lim_{k->infinity} u(k).

The programs for A073504, the canonical program `A073504.P14068879206626629400` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073504 has offset 1).

The definition of A073504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073504.P14068879206626629400

`∑[val((3*n+1)², 2)%4]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073504

/-- `∑[val((3*n+1)², 2)%4]` -/
def P14068879206626629400.Spec : Prop :=
  ∀ n, (P14068879206626629400.a n : ℤ) = A073504 (n + 1)

theorem P14068879206626629400.correct : P14068879206626629400.Spec := by
  intro n
  simp only [A073504, Nat.add_sub_cancel]

end A073504

/-! ## A073504.P11473176448934139717

`∑[2*val(3*n+1, 2)%2]`
-/

namespace A073504.P11473176448934139717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.valuation (3 * n + 1) 2 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073504.P11473176448934139717

namespace A073504

/-- `∑[2*val(3*n+1, 2)%2]` -/
def P11473176448934139717.Spec : Prop :=
  ∀ n, (P11473176448934139717.a n : ℤ) = A073504 (n + 1)

end A073504

/-! ## A073504.P10331217481363205321

`∑[and(3, 2*val(3*n+1, 2))]`
-/

namespace A073504.P10331217481363205321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (2 * SequenceMachineLib.valuation (3 * n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073504.P10331217481363205321

namespace A073504

/-- `∑[and(3, 2*val(3*n+1, 2))]` -/
def P10331217481363205321.Spec : Prop :=
  ∀ n, (P10331217481363205321.a n : ℤ) = A073504 (n + 1)

end A073504

/-! ## A073504.P10169480643963025152

`∑[and(3*n+1, 3*n)%3]`
-/

namespace A073504.P10169480643963025152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (3 * n + 1) (3 * n) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073504.P10169480643963025152

namespace A073504

/-- `∑[and(3*n+1, 3*n)%3]` -/
def P10169480643963025152.Spec : Prop :=
  ∀ n, (P10169480643963025152.a n : ℤ) = A073504 (n + 1)

end A073504

/-! ## A073504.P17369443477636813593

`∑[and(2, val((n+1+n+n)², 2))]`
-/

namespace A073504.P17369443477636813593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (SequenceMachineLib.valuation ((n + 1 + n + n) ^ 2) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073504.P17369443477636813593

namespace A073504

/-- `∑[and(2, val((n+1+n+n)², 2))]` -/
def P17369443477636813593.Spec : Prop :=
  ∀ n, (P17369443477636813593.a n : ℤ) = A073504 (n + 1)

end A073504

/-! ## A073504.P3995434372445856173

`∑[and(2, A101660(n))]`
-/

namespace A073504.P3995434372445856173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A101660 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073504.P3995434372445856173

namespace A073504

/-- `∑[and(2, A101660(n))]` -/
def P3995434372445856173.Spec : Prop :=
  ∀ n, P3995434372445856173.a n = A073504 (n + 1)

end A073504

/-! ## A073504.P14858048143698917230

`∑[and(2, Δ[A007302(n)])]`
-/

namespace A073504.P14858048143698917230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073504.P14858048143698917230

namespace A073504

/-- `∑[and(2, Δ[A007302(n)])]` -/
def P14858048143698917230.Spec : Prop :=
  ∀ n, P14858048143698917230.a n = A073504 (n + 1)

end A073504

/-! ## A073504.P8713764489241351971

`∑[and(2, Δ[A027615(n)])]`
-/

namespace A073504.P8713764489241351971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073504.P8713764489241351971

namespace A073504

/-- `∑[and(2, Δ[A027615(n)])]` -/
def P8713764489241351971.Spec : Prop :=
  ∀ n, P8713764489241351971.a n = A073504 (n + 1)

end A073504

/-! ## A073504.P15678898044127819508

`2*(n+1-A027615(n+1))/3`
-/

namespace A073504.P15678898044127819508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((n + 1 : ℤ) - A027615 (n + 1) : ℚ) / 3)

end

end A073504.P15678898044127819508

namespace A073504

/-- `2*(n+1-A027615(n+1))/3` -/
def P15678898044127819508.Spec : Prop :=
  ∀ n, P15678898044127819508.a n = (A073504 (n + 1) : ℚ)

end A073504

/-! ## A073504.P10949936015333192633

`∑[A371093(A371093(n)²)]`
-/

namespace A073504.P10949936015333192633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371093 (A371093 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073504.P10949936015333192633

namespace A073504

/-- `∑[A371093(A371093(n)²)]` -/
def P10949936015333192633.Spec : Prop :=
  ∀ n, P10949936015333192633.a n = A073504 (n + 1)

end A073504

/-! ## A073504.P4117892059227850119

`∑[2*A101660(2*n)]`
-/

namespace A073504.P4117892059227850119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101660 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073504.P4117892059227850119

namespace A073504

/-- `∑[2*A101660(2*n)]` -/
def P4117892059227850119.Spec : Prop :=
  ∀ n, P4117892059227850119.a n = A073504 (n + 1)

end A073504

/-! ## A073504.P12117292381615663928

`∑[log2(A045898(2*n+1))]`
-/

namespace A073504.P12117292381615663928
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A045898 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073504.P12117292381615663928

namespace A073504

/-- `∑[log2(A045898(2*n+1))]` -/
def P12117292381615663928.Spec : Prop :=
  ∀ n, P12117292381615663928.a n = (A073504 (n + 1) : ℝ)

end A073504

/-! ## A073504.P2723199123827515698

`A072894(n+2)-A320642(2*n+1)`
-/

namespace A073504.P2723199123827515698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072894 (n + 2) - A320642 (2 * n + 1)

end

end A073504.P2723199123827515698

namespace A073504

/-- `A072894(n+2)-A320642(2*n+1)` -/
def P2723199123827515698.Spec : Prop :=
  ∀ n, P2723199123827515698.a n = A073504 (n + 1)

end A073504

/-! ## A073504.P8925775978217915186

`∑[A101669(6*n)]`
-/

namespace A073504.P8925775978217915186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101669 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073504.P8925775978217915186

namespace A073504

/-- `∑[A101669(6*n)]` -/
def P8925775978217915186.Spec : Prop :=
  ∀ n, P8925775978217915186.a n = A073504 (n + 1)

end A073504

/-!
# A073505: Number of primes == 1 (mod 10) less than 10^n.

The programs for A073505, there is no canonical definition to state claims against.
-/

/-! ## A073505.P7330195865763161538

`A091167(n+1)+A091165(n+1)`
-/

namespace A073505.P7330195865763161538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091167 (n + 1) + A091165 (n + 1)

end

end A073505.P7330195865763161538

/-! ## A073505.P17987352647694984282

`∑[A087630(n+1)]`
-/

namespace A073505.P17987352647694984282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073505.P17987352647694984282

/-! ## A073505.P3645188337009565445

`∑[record[A087630(A000174(n))]]`
-/

namespace A073505.P3645188337009565445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087630 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073505.P3645188337009565445

/-! ## A073505.P565523781282498686

`∑[record[A087630(A020986(n))]]`
-/

namespace A073505.P565523781282498686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087630 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073505.P565523781282498686

/-! ## A073505.P17338556217272869569

`∑[record[A087630(A033930(n))]]`
-/

namespace A073505.P17338556217272869569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087630 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073505.P17338556217272869569

/-!
# A073506: Number of primes == 3 (mod 10) less than 10^n.

The programs for A073506, there is no canonical definition to state claims against.
-/

/-! ## A073506.P4486397626328047922

`∑[A087631(n+1)]`
-/

namespace A073506.P4486397626328047922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073506.P4486397626328047922

/-! ## A073506.P8420788944433612707

`∑[record[A087631(A000174(n))]]`
-/

namespace A073506.P8420788944433612707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087631 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073506.P8420788944433612707

/-! ## A073506.P15530247464097894918

`∑[record[A087631(A020986(n))]]`
-/

namespace A073506.P15530247464097894918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087631 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073506.P15530247464097894918

/-! ## A073506.P5815333916146510667

`∑[record[A087631(A033930(n))]]`
-/

namespace A073506.P5815333916146510667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087631 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073506.P5815333916146510667

/-! ## A073506.P7489140812238509629

`∑[record[A087631(A038568(n))]]`
-/

namespace A073506.P7489140812238509629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087631 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073506.P7489140812238509629

/-!
# A073507: Number of primes == 7 (mod 10) less than 10^n.

The programs for A073507, there is no canonical definition to state claims against.
-/

/-! ## A073507.P10258876089830011569

`A091117(n+1)-1`
-/

namespace A073507.P10258876089830011569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091117 (n + 1) - 1

end

end A073507.P10258876089830011569

/-! ## A073507.P12190978231932635219

`A091169(n+1)+A091166(n+1)`
-/

namespace A073507.P12190978231932635219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091169 (n + 1) + A091166 (n + 1)

end

end A073507.P12190978231932635219

/-! ## A073507.P14236332746675840202

`∑[A087632(n+1)]`
-/

namespace A073507.P14236332746675840202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073507.P14236332746675840202

/-! ## A073507.P9971932945118461953

`∑[record[A087632(A000174(n))]]`
-/

namespace A073507.P9971932945118461953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087632 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073507.P9971932945118461953

/-! ## A073507.P13287568659986660575

`∑[record[A087632(A020986(n))]]`
-/

namespace A073507.P13287568659986660575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087632 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073507.P13287568659986660575

/-!
# A073508: Number of primes == 9 (mod 10) less than 10^n.

The programs for A073508, there is no canonical definition to state claims against.
-/

/-! ## A073508.P11102384114970024324

`A091172(n+1)+A091170(n+1)`
-/

namespace A073508.P11102384114970024324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091172 (n + 1) + A091170 (n + 1)

end

end A073508.P11102384114970024324

/-! ## A073508.P16563369375675524214

`∑[A087633(n+1)]`
-/

namespace A073508.P16563369375675524214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073508.P16563369375675524214

/-! ## A073508.P2160762770832357999

`∑[record[A087633(A000119(n))]]`
-/

namespace A073508.P2160762770832357999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087633 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073508.P2160762770832357999

/-! ## A073508.P17090192348975715593

`∑[record[A087633(A000174(n))]]`
-/

namespace A073508.P17090192348975715593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087633 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073508.P17090192348975715593

/-! ## A073508.P17726836500999301267

`∑[record[A087633(A020986(n))]]`
-/

namespace A073508.P17726836500999301267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087633 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073508.P17726836500999301267

/-!
# A073509: Number of primes less than 10^n with initial digit 9.

The programs for A073509, there is no canonical definition to state claims against.
-/

/-! ## A073509.P11844410786448481123

`∑[A289500(10^n)]`
-/

namespace A073509.P11844410786448481123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289500 (10 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073509.P11844410786448481123

/-!
# A073510: Number of primes less than 10^n with initial digit 8.

The programs for A073510, there is no canonical definition to state claims against.
-/

/-! ## A073510.P14004543504337466091

`∑[A289499(10^n)]`
-/

namespace A073510.P14004543504337466091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289499 (10 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073510.P14004543504337466091

/-!
# A073511: Number of primes less than 10^n with initial digit 7.

The programs for A073511, there is no canonical definition to state claims against.
-/

/-! ## A073511.P12035560033992125965

`∑[A289498(10^n)]`
-/

namespace A073511.P12035560033992125965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289498 (10 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073511.P12035560033992125965

/-!
# A073512: Number of primes less than 10^n with initial digit 6.

The programs for A073512, there is no canonical definition to state claims against.
-/

/-! ## A073512.P3107744766375847995

`A065685(6^(n+1))`
-/

namespace A073512.P3107744766375847995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065685 (6 ^ (n + 1))

end

end A073512.P3107744766375847995

/-!
# A073513: Number of primes less than 10^n with initial digit 5.

The programs for A073513, there is no canonical definition to state claims against.
-/

/-! ## A073513.P1839547596256876566

`∑[A289496(10^n)]`
-/

namespace A073513.P1839547596256876566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (10 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073513.P1839547596256876566

/-!
# A073514: Number of primes less than 10^n with initial digit 4.

The programs for A073514, there is no canonical definition to state claims against.
-/

/-! ## A073514.P7133627225540848146

`A065683(C(21, n))`
-/

namespace A073514.P7133627225540848146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065683 (Nat.choose 21 n)

end

end A073514.P7133627225540848146

/-!
# A073515: Number of primes less than 10^n with initial digit 3.

The programs for A073515, there is no canonical definition to state claims against.
-/

/-! ## A073515.P15357858209752918428

`A065682((n+3)!)`
-/

namespace A073515.P15357858209752918428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065682 (Nat.factorial (n + 3))

end

end A073515.P15357858209752918428

/-!
# A073516: Number of primes less than 10^n with initial digit 2.

The programs for A073516, there is no canonical definition to state claims against.
-/

/-! ## A073516.P16836037331474244947

`A065681((n+3)!)`
-/

namespace A073516.P16836037331474244947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065681 (Nat.factorial (n + 3))

end

end A073516.P16836037331474244947

/-!
# A073517: Number of primes less than 10^n with initial digit 1.

The programs for A073517, there is no canonical definition to state claims against.
-/

/-! ## A073517.P12244421002767435317

`A065680(8^n)`
-/

namespace A073517.P12244421002767435317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065680 (8 ^ n)

end

end A073517.P12244421002767435317

/-!
# A073518: Cotangent of Pi/prime(n), rounded to nearest integer.

The programs for A073518, the canonical program `A073518.P11821529336065083572` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073518 has offset 1).

The definition of A073518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073518.P11821529336065083572

`round(cot(π/A000040(n+1)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A073518

/-- `round(cot(π/A000040(n+1)))` -/
def P11821529336065083572.Spec : Prop :=
  ∀ n, P11821529336065083572.a n = A073518 (n + 1)

theorem P11821529336065083572.correct : P11821529336065083572.Spec := by
  intro n
  simp only [A073518, Nat.add_sub_cancel]

end A073518

/-! ## A073518.P4795905958722288567

`A059995(A106744(n+1)+A001748(n+1))`
-/

namespace A073518.P4795905958722288567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A106744 (n + 1) + A001748 (n + 1)).toNat

end

end A073518.P4795905958722288567

namespace A073518

/-- `A059995(A106744(n+1)+A001748(n+1))` -/
def P4795905958722288567.Spec : Prop :=
  ∀ n, P4795905958722288567.a n = A073518 (n + 1)

end A073518

/-! ## A073518.P11566445271652253457

`A032615(∏{e}[A389824(n+1), A000040(n+1)+#])`
-/

namespace A073518.P11566445271652253457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000040 (n + 1) + (Nat.factorization (f1 n).natAbs p : ℤ))).toNat

end

end A073518.P11566445271652253457

namespace A073518

/-- `A032615(∏{e}[A389824(n+1), A000040(n+1)+#])` -/
def P11566445271652253457.Spec : Prop :=
  ∀ n, P11566445271652253457.a n = A073518 (n + 1)

end A073518

/-!
# A073521: The set of 16 consecutive primes with the property that they form a 4 X 4 magic square with the smallest magic constant (258).

The programs for A073521, there is no canonical definition to state claims against.
-/

/-! ## A073521.P18395177341951350286

`p?[2*n+31]`
-/

namespace A073521.P18395177341951350286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A073521.P18395177341951350286

/-! ## A073521.P6355604696007484169

`or(1, p?[a(n-1)+2])` with `a(0)=31`
-/

namespace A073521.P6355604696007484169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [31] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A073521.P6355604696007484169

/-! ## A073521.P4913317487296237617

`record[p?[a(n-1)+2]]` with `a(0)=31, a(1)=1`
-/

namespace A073521.P4913317487296237617
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [31, 1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073521.P4913317487296237617

/-! ## A073521.P10191433637843738085

`A078138(n+4)`
-/

namespace A073521.P10191433637843738085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 4)

end

end A073521.P10191433637843738085

/-! ## A073521.P2078567800045618238

`A166063(n+4)`
-/

namespace A073521.P2078567800045618238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166063 (n + 4)

end

end A073521.P2078567800045618238

/-!
# A073522: A set of 25 consecutive primes that form a 5 X 5 magic square with the (non-minimal) magic constant 1703.

The programs for A073522, there is no canonical definition to state claims against.
-/

/-! ## A073522.P2841157747502820219

`p?[265+2*n]`
-/

namespace A073522.P2841157747502820219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  265 + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A073522.P2841157747502820219

/-! ## A073522.P11906255300114757670

`A193142(n+25)`
-/

namespace A073522.P11906255300114757670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193142 (n + 25)

end

end A073522.P11906255300114757670

/-! ## A073522.P12196977289220636531

`A316971(n+29)`
-/

namespace A073522.P12196977289220636531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316971 (n + 29)

end

end A073522.P12196977289220636531

/-! ## A073522.P6668457027586845316

`A318158(n+31)`
-/

namespace A073522.P6668457027586845316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318158 (n + 31)

end

end A073522.P6668457027586845316

/-! ## A073522.P1064720162532676484

`A127043(n+37)`
-/

namespace A073522.P1064720162532676484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127043 (n + 37)

end

end A073522.P1064720162532676484

/-!
# A073523: The set of 36 consecutive primes that form a 6 X 6 pandiagonal magic square with the smallest magic constant (930).

The programs for A073523, there is no canonical definition to state claims against.
-/

/-! ## A073523.P13120140510389101498

`p?[2*n+63]`
-/

namespace A073523.P13120140510389101498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 63

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A073523.P13120140510389101498

/-! ## A073523.P18206754749065737285

`or(1, p?[xor(1, n+64)])`
-/

namespace A073523.P18206754749065737285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 64)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A073523.P18206754749065737285

/-! ## A073523.P16731282119573133737

`or(1, p?[a(n-1)+2])` with `a(0)=63`
-/

namespace A073523.P16731282119573133737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [63] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A073523.P16731282119573133737

/-! ## A073523.P16024907042131480278

`xor(1, p?[a(n-1)+2]-1)` with `a(0)=63`
-/

namespace A073523.P16024907042131480278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [63] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1)

end

end A073523.P16024907042131480278

/-! ## A073523.P14810832217524985536

`A137675(n+7)`
-/

namespace A073523.P14810832217524985536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137675 (n + 7)

end

end A073523.P14810832217524985536

/-!
# A073525: Result of applying the transformation on generating functions A -> 1/((1-x)*(1-x*A)) to the g.f. for A024718.

The programs for A073525, there is no canonical definition to state claims against.
-/

/-! ## A073525.P10532111097859799372

`∑{#}[n, C(n, #)*A054391(#)]`
-/

namespace A073525.P10532111097859799372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A054391 k

end

end A073525.P10532111097859799372

/-! ## A073525.P2466326632570001333

`A031193((2^n+1)*(2^n+2)/6)/3`
-/

namespace A073525.P2466326632570001333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031193 (SequenceMachineLib.roundAway ((2 ^ n + 1 : ℚ) * ((2 ^ n + 2 : ℚ) / 6))).toNat : ℚ) / 3

end

end A073525.P2466326632570001333

/-! ## A073525.P4669297000357773732

`A185715(A072879(n+1))+A007581(n)`
-/

namespace A073525.P4669297000357773732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185715 (A072879 (n + 1)).toNat + A007581 n

end

end A073525.P4669297000357773732

/-!
# A073526: Denominator of Sum_{k=1..n} 1/k^2 is a square.

The programs for A073526, there is no canonical definition to state claims against.
-/

/-! ## A073526.P17565077331976728810

`comp[A073527(n+1)-1]+1`
-/

namespace A073526.P17565077331976728810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A073526.P17565077331976728810

/-! ## A073526.P12929015898519012870

`eq[char[A073527(n+1)], A151933(n)]`
-/

namespace A073526.P12929015898519012870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A073526.P12929015898519012870

/-! ## A073526.P2474518656242691887

`lt[A265746(n), A065256(n)+n]`
-/

namespace A073526.P2474518656242691887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265746 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065256 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A073526.P2474518656242691887

/-! ## A073526.P8569984527492470349

`eq[char[A073527(n+1)], A151622(n)]`
-/

namespace A073526.P8569984527492470349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A073526.P8569984527492470349

/-! ## A073526.P4802477551586580452

`∑[A051344(A020897(2*(n+2)))!]`
-/

namespace A073526.P4802477551586580452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A051344 (A020897 (2 * (n + 2))).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073526.P4802477551586580452

/-!
# A073527: Numbers n such that denominator of Sum_{k=1..n} 1/k^2 is not a square.

The programs for A073527, there is no canonical definition to state claims against.
-/

/-! ## A073527.P12719112719555980000

`eq[char[A073526(n+1)], A151933(n)]`
-/

namespace A073527.P12719112719555980000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073526 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A073527.P12719112719555980000

/-! ## A073527.P12450403108004024089

`∑[A230849(A107066(n))]+9`
-/

namespace A073527.P12450403108004024089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (A107066 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 9

end

end A073527.P12450403108004024089

/-! ## A073527.P9068111084019505464

`A228915(∑[A230849(A107066(n))])`
-/

namespace A073527.P9068111084019505464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (A107066 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228915 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073527.P9068111084019505464

/-!
# A073528: n at which A073524(n) sets a new record.

The programs for A073528, there is no canonical definition to state claims against.
-/

/-! ## A073528.P16280118884278344668

`A053784(A351707(n))+A051783(n+1)`
-/

namespace A073528.P16280118884278344668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053784 (A351707 n).toNat + A051783 (n + 1)

end

end A073528.P16280118884278344668

/-! ## A073528.P5991961294154889478

`lt[∑[3^floor(n/2)], A178197(n)]`
-/

namespace A073528.P5991961294154889478
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178197 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A073528.P5991961294154889478

/-! ## A073528.P15776038711342617511

`A345965(A352819(n+2))`
-/

namespace A073528.P15776038711342617511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345965 (A352819 (n + 2)).toNat

end

end A073528.P15776038711342617511

/-! ## A073528.P154907705335968084

`record[A094802(A303525(n+1))]`
-/

namespace A073528.P154907705335968084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A303525 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073528.P154907705335968084

/-! ## A073528.P9259416397223865702

`A090501(A335209(n+1)+n)`
-/

namespace A073528.P9259416397223865702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090501 (A335209 (n + 1) + (n : ℤ)).toNat

end

end A073528.P9259416397223865702

/-!
# A073529: Record values in A073524.

The programs for A073529, there is no canonical definition to state claims against.
-/

/-! ## A073529.P13720421285089442970

`record[A073524(n+1)]`
-/

namespace A073529.P13720421285089442970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073529.P13720421285089442970

/-! ## A073529.P4888842086686473112

`A073524(A073528(n+1))`
-/

namespace A073529.P4888842086686473112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073524 (A073528 (n + 1)).toNat

end

end A073529.P4888842086686473112

/-! ## A073529.P7455134939808831262

`∑{d}[A073528(n+1), A074970(#)]`
-/

namespace A073529.P7455134939808831262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A074970 d

end

end A073529.P7455134939808831262

/-!
# A073530: a(n) = (1/n)*Sum_{k=0..n} binomial(n, k)*binomial(n+k, k+1)*binomial(n+k, k) with a(0) = 1.

The programs for A073530, there is no canonical definition to state claims against.
-/

/-! ## A073530.P14087835614944947364

`C(2*n, n)²-A013940(C(2*n, n)²)`
-/

namespace A073530.P14087835614944947364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n ^ 2 : ℤ) - A013940 (Nat.choose (2 * n) n ^ 2)

end

end A073530.P14087835614944947364

/-!
# A073531: Number of n-digit positive integers with all digits distinct.

The programs for A073531, the canonical program `A073531.P5950911680790858027` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073531 has offset 1).

The definition of A073531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073531.P5950911680790858027

`(10-n)*a(n-1)` with `a(0)=9`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073531

/-- `(10-n)*a(n-1)` -/
def P5950911680790858027.Spec : Prop :=
  ∀ n, P5950911680790858027.a n = A073531 (n + 1)

theorem P5950911680790858027.correct : P5950911680790858027.Spec := by
  intro n
  simp only [A073531, Nat.add_sub_cancel]

end A073531

/-!
# A073532: Number of n-digit primes with all digits distinct.

The programs for A073532, there is no canonical definition to state claims against.
-/

/-! ## A073532.P13035204393538006084

`Δ[A006880(n)]-A098227(n+1)`
-/

namespace A073532.P13035204393538006084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A098227 (n + 1)

end

end A073532.P13035204393538006084

/-!
# A073533: Let x(1)=1, x(n+1) = (4/3)*x(n) - floor((4/3)*x(n)); then a(n)=x(n)*3^n.

The programs for A073533, the canonical program `A073533.P3688575347898376950` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073533 has offset 1).

The definition of A073533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073533.P3688575347898376950

`(4*a(n-1))%(3^(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073533

/-- `(4*a(n-1))%(3^(n+1))` -/
def P3688575347898376950.Spec : Prop :=
  ∀ n, (P3688575347898376950.a n : ℤ) = A073533 (n + 1)

theorem P3688575347898376950.correct : P3688575347898376950.Spec := by
  intro n
  simp only [A073533, Nat.add_sub_cancel]

end A073533

/-! ## A073533.P14696166292167810977

`(2*2*a(n-1))%(3*3^n)` with `a(0)=1`
-/

namespace A073533.P14696166292167810977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * a (n - 1)) % (3 * 3 ^ n)

end

end A073533.P14696166292167810977

namespace A073533

/-- `(2*2*a(n-1))%(3*3^n)` -/
def P14696166292167810977.Spec : Prop :=
  ∀ n, (P14696166292167810977.a n : ℤ) = A073533 (n + 1)

theorem P14696166292167810977.correct : P14696166292167810977.Spec := by
  intro n
  simp only [A073533, Nat.add_sub_cancel, A073533.P14696166292167810977.a, A073533.P3688575347898376950.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A073533

/-! ## A073533.P5455537164823268101

`abs(4*a(n-1))%A000244(n+1)` with `a(0)=1`
-/

namespace A073533.P5455537164823268101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod |4 * a (n - 1)| (A000244 (n + 1))

end

end A073533.P5455537164823268101

namespace A073533

/-- `abs(4*a(n-1))%A000244(n+1)` -/
def P5455537164823268101.Spec : Prop :=
  ∀ n, P5455537164823268101.a n = A073533 (n + 1)

end A073533

/-!
# A073534: Numbers n such that S(n+2) = S(n)+2, where S(n) is the Kempner function A002034.

The programs for A073534, there is no canonical definition to state claims against.
-/

/-! ## A073534.P17494163222395066675

`eq[A072480(n+2-C(2, n)), A072480(n)]`
-/

namespace A073534.P17494163222395066675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (n + 2 - Nat.choose 2 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073534.P17494163222395066675

/-! ## A073534.P15546840959406292823

`A000007(n)+eq[A072480(n+2), A072480(n)]`
-/

namespace A073534.P15546840959406292823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A073534.P15546840959406292823

/-! ## A073534.P17665498161994822462

`A057428(n)+eq[A072480(n+2), A072480(n)]+1`
-/

namespace A073534.P17665498161994822462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1 : ℤ)

end

end A073534.P17665498161994822462

/-! ## A073534.P6131595984851729368

`eq[A072480(n+2), A072480(n)]+1-A052409(n²+1)`
-/

namespace A073534.P6131595984851729368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1 : ℤ) - A052409 (n ^ 2 + 1)

end

end A073534.P6131595984851729368

/-! ## A073534.P16052151467661149514

`A028310(eq[A072480(n+2), A072480(n)])`
-/

namespace A073534.P16052151467661149514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A073534.P16052151467661149514

/-!
# A073536: Breaking indices for A058842 (i.e., n such that A058842(n) is not equal to 3*A058842 (n-1) ).

The programs for A073536, the canonical program `A073536.P2156523048821770055` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073536 has offset 1).

The definition of A073536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073536.P2156523048821770055

`∑[A058841(n+1)+1]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073536

/-- `∑[A058841(n+1)+1]+1` -/
def P2156523048821770055.Spec : Prop :=
  ∀ n, P2156523048821770055.a n = A073536 (n + 1)

theorem P2156523048821770055.correct : P2156523048821770055.Spec := by
  intro n
  simp only [A073536, Nat.add_sub_cancel]

end A073536

/-! ## A073536.P4664112573143962680

`lt[1, n*A058840(n)]`
-/

namespace A073536.P4664112573143962680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A058840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A073536.P4664112573143962680

namespace A073536

/-- `lt[1, n*A058840(n)]` -/
def P4664112573143962680.Spec : Prop :=
  ∀ n, (P4664112573143962680.a n : ℤ) = A073536 (n + 1)

end A073536

/-! ## A073536.P13189688975748074222

`eq[1, A058840(n+2)]+2`
-/

namespace A073536.P13189688975748074222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A073536.P13189688975748074222

namespace A073536

/-- `eq[1, A058840(n+2)]+2` -/
def P13189688975748074222.Spec : Prop :=
  ∀ n, (P13189688975748074222.a n : ℤ) = A073536 (n + 1)

end A073536

/-! ## A073536.P3446700462852509769

`lt[0, A058840(round(acot(n)+n))]`
-/

namespace A073536.P3446700462852509769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A073536.P3446700462852509769

namespace A073536

/-- `lt[0, A058840(round(acot(n)+n))]` -/
def P3446700462852509769.Spec : Prop :=
  ∀ n, (P3446700462852509769.a n : ℤ) = A073536 (n + 1)

end A073536

/-! ## A073536.P13202792865191643049

`record[(n+3)*A058840(n+3)]`
-/

namespace A073536.P13202792865191643049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A058840 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073536.P13202792865191643049

namespace A073536

/-- `record[(n+3)*A058840(n+3)]` -/
def P13202792865191643049.Spec : Prop :=
  ∀ n, P13202792865191643049.a n = A073536 (n + 1)

end A073536

/-! ## A073536.P402736987053912642

`eq[A058840(n), A141044(n)]`
-/

namespace A073536.P402736987053912642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073536.P402736987053912642

namespace A073536

/-- `eq[A058840(n), A141044(n)]` -/
def P402736987053912642.Spec : Prop :=
  ∀ n, (P402736987053912642.a n : ℤ) = A073536 (n + 1)

end A073536

/-! ## A073536.P1797809868905775388

`eq[A058840(n), A157928(n)]`
-/

namespace A073536.P1797809868905775388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073536.P1797809868905775388

namespace A073536

/-- `eq[A058840(n), A157928(n)]` -/
def P1797809868905775388.Spec : Prop :=
  ∀ n, (P1797809868905775388.a n : ℤ) = A073536 (n + 1)

end A073536

/-! ## A073536.P930976833426300587

`eq[A058840(n), A261143(n)]`
-/

namespace A073536.P930976833426300587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073536.P930976833426300587

namespace A073536

/-- `eq[A058840(n), A261143(n)]` -/
def P930976833426300587.Spec : Prop :=
  ∀ n, (P930976833426300587.a n : ℤ) = A073536 (n + 1)

end A073536

/-! ## A073536.P12201499526999384626

`eq[A058840(n), A319610(n)]`
-/

namespace A073536.P12201499526999384626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073536.P12201499526999384626

namespace A073536

/-- `eq[A058840(n), A319610(n)]` -/
def P12201499526999384626.Spec : Prop :=
  ∀ n, (P12201499526999384626.a n : ℤ) = A073536 (n + 1)

end A073536

/-! ## A073536.P3156530223300548404

`filter[A057716(n+1), A058840(#)]`
-/

namespace A073536.P3156530223300548404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A058840 (f1 j).toNat = 1) n)

end

end A073536.P3156530223300548404

namespace A073536

/-- `filter[A057716(n+1), A058840(#)]` -/
def P3156530223300548404.Spec : Prop :=
  ∀ n, P3156530223300548404.a n = A073536 (n + 1)

end A073536

/-! ## A073536.P2974144297478922311

`filter[A063992(n+1), A058840(#)]`
-/

namespace A073536.P2974144297478922311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A058840 (f1 j).toNat = 1) n)

end

end A073536.P2974144297478922311

namespace A073536

/-- `filter[A063992(n+1), A058840(#)]` -/
def P2974144297478922311.Spec : Prop :=
  ∀ n, P2974144297478922311.a n = A073536 (n + 1)

end A073536

/-! ## A073536.P7941176182444733422

`filter[A116966(n+1), A058840(#)]`
-/

namespace A073536.P7941176182444733422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A058840 (f1 j).toNat = 1) n)

end

end A073536.P7941176182444733422

namespace A073536

/-- `filter[A116966(n+1), A058840(#)]` -/
def P7941176182444733422.Spec : Prop :=
  ∀ n, P7941176182444733422.a n = A073536 (n + 1)

end A073536

/-! ## A073536.P15965690162966178451

`filter[A373868(n+1), A058840(#)]`
-/

namespace A073536.P15965690162966178451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A058840 (f1 j).toNat = 1) n)

end

end A073536.P15965690162966178451

namespace A073536

/-- `filter[A373868(n+1), A058840(#)]` -/
def P15965690162966178451.Spec : Prop :=
  ∀ n, P15965690162966178451.a n = A073536 (n + 1)

end A073536

/-! ## A073536.P1462267314312602406

`filter[A004442(n+2), A058840(#)]`
-/

namespace A073536.P1462267314312602406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A058840 (f1 j).toNat = 1) n)

end

end A073536.P1462267314312602406

namespace A073536

/-- `filter[A004442(n+2), A058840(#)]` -/
def P1462267314312602406.Spec : Prop :=
  ∀ n, P1462267314312602406.a n = A073536 (n + 1)

end A073536

/-! ## A073536.P11946588222851161278

`filter[A305980(n+2), A058840(#)]`
-/

namespace A073536.P11946588222851161278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A058840 (f1 j).toNat = 1) n)

end

end A073536.P11946588222851161278

namespace A073536

/-- `filter[A305980(n+2), A058840(#)]` -/
def P11946588222851161278.Spec : Prop :=
  ∀ n, P11946588222851161278.a n = A073536 (n + 1)

end A073536

/-! ## A073536.P8872524817535521374

`eq[A058840(n), A174965(n+1)]`
-/

namespace A073536.P8872524817535521374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073536.P8872524817535521374

namespace A073536

/-- `eq[A058840(n), A174965(n+1)]` -/
def P8872524817535521374.Spec : Prop :=
  ∀ n, (P8872524817535521374.a n : ℤ) = A073536 (n + 1)

end A073536

/-! ## A073536.P5267320273431809762

`comp[xor(n, A058840(n))]`
-/

namespace A073536.P5267320273431809762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A058840 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A073536.P5267320273431809762

namespace A073536

/-- `comp[xor(n, A058840(n))]` -/
def P5267320273431809762.Spec : Prop :=
  ∀ n, (P5267320273431809762.a n : ℤ) = A073536 (n + 1)

end A073536

/-! ## A073536.P9458916525655648938

`filter[A038459(n+2), A058840(#)]`
-/

namespace A073536.P9458916525655648938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A058840 (f1 j).toNat = 1) n)

end

end A073536.P9458916525655648938

namespace A073536

/-- `filter[A038459(n+2), A058840(#)]` -/
def P9458916525655648938.Spec : Prop :=
  ∀ n, P9458916525655648938.a n = A073536 (n + 1)

end A073536

/-! ## A073536.P12859654059132919743

`eq[A058840(n), A294619(2*n)]`
-/

namespace A073536.P12859654059132919743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073536.P12859654059132919743

namespace A073536

/-- `eq[A058840(n), A294619(2*n)]` -/
def P12859654059132919743.Spec : Prop :=
  ∀ n, (P12859654059132919743.a n : ℤ) = A073536 (n + 1)

end A073536

/-!
# A073537: Rearrangement of cubes such that the sum of two consecutive terms + 1 is a prime.

The programs for A073537, there is no canonical definition to state claims against.
-/

/-! ## A073537.P17431543921271831370

`A332808(A174813(n+1)^3)`
-/

namespace A073537.P17431543921271831370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A174813 (n + 1) ^ 3).toNat

end

end A073537.P17431543921271831370

/-! ## A073537.P17521414570580343260

`∑{digits}[A319787(A060462(n+1)-1), #]^3`
-/

namespace A073537.P17521414570580343260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319787 (A060462 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum ^ 3

end

end A073537.P17521414570580343260

/-!
# A073538: Let c(0)=n>=2 and c(k+1) = floor(3*c(k)/2); then a(n) is the smallest value such that c(a(n)) is prime.

The programs for A073538, there is no canonical definition to state claims against.
-/

/-! ## A073538.P4547935375419220051

`A005171(n+2)*A080758(n+2)`
-/

namespace A073538.P4547935375419220051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 2) * A080758 (n + 2)

end

end A073538.P4547935375419220051

/-! ## A073538.P8651418088439213537

`lcm(A056051(n+2), A080758(n+2))`
-/

namespace A073538.P8651418088439213537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056051 (n + 2)) (A080758 (n + 2))

end

end A073538.P8651418088439213537

/-! ## A073538.P11767495095034873419

`Δ[A062298(n+1)]*A080758(n+2)`
-/

namespace A073538.P11767495095034873419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A080758 (n + 2)

end

end A073538.P11767495095034873419

/-! ## A073538.P1090036680350324598

`A080758(n+2)%(A322382(n+2)^6)`
-/

namespace A073538.P1090036680350324598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080758 (n + 2)) (A322382 (n + 2) ^ 6)

end

end A073538.P1090036680350324598

/-! ## A073538.P15261095730691768335

`A080758(n+2)*A332500(C(2, A000005(n+2)))`
-/

namespace A073538.P15261095730691768335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080758 (n + 2) * A332500 (Nat.choose 2 (A000005 (n + 2)).toNat + 1)

end

end A073538.P15261095730691768335

/-! ## A073538.P17797811455564923118

`gcd(A053205(n+2), A056051(n+2))*A080758(n+2)`
-/

namespace A073538.P17797811455564923118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A053205 (n + 2)) (A056051 (n + 2)) : ℤ) * A080758 (n + 2)

end

end A073538.P17797811455564923118

/-! ## A073538.P12743493142179954549

`A080758(n+2)%A005408(A053205(n+2))`
-/

namespace A073538.P12743493142179954549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080758 (n + 2)) (A005408 (A053205 (n + 2)).toNat)

end

end A073538.P12743493142179954549

/-!
# A073539: Numbers k such that if p is a prime dividing k then p divides phi(k).

The programs for A073539, there is no canonical definition to state claims against.
-/

/-! ## A073539.P3177956017126987465

`A090779(n+1)`
-/

namespace A073539.P3177956017126987465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090779 (n + 1)

end

end A073539.P3177956017126987465

/-! ## A073539.P17397796911392618727

`∪[(n+1)², A069236(n+1)]`
-/

namespace A073539.P17397796911392618727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073539.P17397796911392618727

/-! ## A073539.P12454643139074872038

`∪[A069236(n+1), A001597(n+1)]`
-/

namespace A073539.P12454643139074872038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073539.P12454643139074872038

/-! ## A073539.P17487751629092966957

`∪[A069236(n+1), A001694(n+1)]`
-/

namespace A073539.P17487751629092966957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073539.P17487751629092966957

/-! ## A073539.P9501559232324187290

`∪[A069236(n+1), A266918(n+1)]`
-/

namespace A073539.P9501559232324187290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073539.P9501559232324187290

/-! ## A073539.P7383011733329404660

`∪[A069236(n+1), A353485(n+1)]`
-/

namespace A073539.P7383011733329404660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073539.P7383011733329404660

/-! ## A073539.P18291036243244537029

`∪[A069236(n+1), A370785(n+1)]`
-/

namespace A073539.P18291036243244537029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073539.P18291036243244537029

/-! ## A073539.P16981017598652611925

`∪[A069236(n+1), A371010(n+1)]`
-/

namespace A073539.P16981017598652611925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073539.P16981017598652611925

/-! ## A073539.P8318060557213599870

`∪[A069236(n+1), A376170(n+1)]`
-/

namespace A073539.P8318060557213599870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073539.P8318060557213599870

/-! ## A073539.P14071643200508309236

`∪[A069236(n+1), A376172(n+1)]`
-/

namespace A073539.P14071643200508309236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073539.P14071643200508309236

/-! ## A073539.P6901366378283660204

`∪[A069236(n+1), A377821(n+1)]`
-/

namespace A073539.P6901366378283660204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073539.P6901366378283660204

/-! ## A073539.P18167331025423417003

`record[gcd(n+1, A000010(n+1)²)]`
-/

namespace A073539.P18167331025423417003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000010 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073539.P18167331025423417003

/-! ## A073539.P15696993658303263700

`eq[1, A128853(n+1)]+1`
-/

namespace A073539.P15696993658303263700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073539.P15696993658303263700

/-! ## A073539.P14036912073436852191

`A018252(record[(n+1)/A128853(A018252(n+1))])`
-/

namespace A073539.P14036912073436852191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A128853 (A018252 (n + 1)).toNat : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A073539.P14036912073436852191

/-! ## A073539.P11139501552921930764

`eq[0, A127473(n+1)%(n+1)]+1`
-/

namespace A073539.P11139501552921930764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127473 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073539.P11139501552921930764

/-! ## A073539.P7057118412461924899

`record[A050399(A009195(n+1))]`
-/

namespace A073539.P7057118412461924899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050399 (A009195 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073539.P7057118412461924899

/-! ## A073539.P4078110523993939453

`record[gcd(A009195(n+1)², A002378(n))]`
-/

namespace A073539.P4078110523993939453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009195 (n + 1) ^ 2) (A002378 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073539.P4078110523993939453

/-! ## A073539.P4433086124398520269

`record[gcd((1-A039649(n+1))², A000027(n+1))]`
-/

namespace A073539.P4433086124398520269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((1 - A039649 (n + 1)) ^ 2) (A000027 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073539.P4433086124398520269

/-! ## A073539.P4836980879462248407

`eq[A001221(n+1), A001221(A009195(n+1))]+1`
-/

namespace A073539.P4836980879462248407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A009195 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073539.P4836980879462248407

/-! ## A073539.P11459796205906758744

`eq[A109395(A009195(n+1)), A109395(n+1)]+1`
-/

namespace A073539.P11459796205906758744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A009195 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073539.P11459796205906758744

/-!
# A073545: Least k such that 1/tau(k) + 1/tau(k+1) + 1/tau(k+2) + ... + 1/tau(k+n) is equal to 1 (where tau(k)=A000005(k) is the number of divisors of k).

The programs for A073545, there is no canonical definition to state claims against.
-/

/-! ## A073545.P10232424568052765266

`A129832(A087080(n)+1)`
-/

namespace A073545.P10232424568052765266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129832 (A087080 n + 1).toNat

end

end A073545.P10232424568052765266

/-! ## A073545.P15811388307535198381

`A255072(A025547(n+1)-A126859(n))`
-/

namespace A073545.P15811388307535198381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A025547 (n + 1) - A126859 n).toNat

end

end A073545.P15811388307535198381

/-!
# A073547: Numbers k such that antid(k) = antid(k+1), where antid(k) = A066272(k).

The programs for A073547, there is no canonical definition to state claims against.
-/

/-! ## A073547.P10135537864136241611

`eq[0, Δ[A066272(n+1)]]+1`
-/

namespace A073547.P10135537864136241611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073547.P10135537864136241611

/-! ## A073547.P1002381170868576401

`eq[A066241(n+1), A066241(n+2)]+1`
-/

namespace A073547.P1002381170868576401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066241 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073547.P1002381170868576401

/-! ## A073547.P8264644933249253893

`eq[A066272(n+1), A066272(n+2)]+1`
-/

namespace A073547.P8264644933249253893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073547.P8264644933249253893

/-!
# A073548: Number of Fibonacci numbers F(k), k <= 10^n, which end in 2.

The programs for A073548, the canonical program `A073548.P705914149476959956` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073548 has offset 1).

The definition of A073548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073548.P10761544450679264242

`ogf((1-5x+10x^2)/(1-11x+10x^2))`
-/

namespace A073548.P10761544450679264242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 10] [1, -11, 10] n

end

end A073548.P10761544450679264242

namespace A073548

/-- `ogf((1-5x+10x^2)/(1-11x+10x^2))` -/
def P10761544450679264242.Spec : Prop :=
  ∀ n, P10761544450679264242.a n = A073548 (n + 1)

end A073548

/-! ## A073548.P705914149476959956

`11*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=6, a(2)=66`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073548

/-- `11*a(n-1)-10*a(n-2)` -/
def P705914149476959956.Spec : Prop :=
  ∀ n, P705914149476959956.a n = A073548 (n + 1)

theorem P705914149476959956.correct : P705914149476959956.Spec := by
  intro n
  simp only [A073548, Nat.add_sub_cancel]

end A073548

/-! ## A073548.P9375505680929825775

`A073551(n+1)/2`
-/

namespace A073548.P9375505680929825775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073551 (n + 1) : ℚ) / 2

end

end A073548.P9375505680929825775

namespace A073548

/-- `A073551(n+1)/2` -/
def P9375505680929825775.Spec : Prop :=
  ∀ n, P9375505680929825775.a n = (A073548 (n + 1) : ℚ)

end A073548

/-! ## A073548.P17749725702742049707

`6+10*a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A073548.P17749725702742049707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  6 + 10 * a (n - 1)

end

end A073548.P17749725702742049707

namespace A073548

/-- `6+10*a(n-1)` -/
def P17749725702742049707.Spec : Prop :=
  ∀ n, (P17749725702742049707.a n : ℤ) = A073548 (n + 1)

end A073548

/-! ## A073548.P16680137302800608970

`lcm(20, a(n-1))+6` with `a(0)=1, a(1)=6`
-/

namespace A073548.P16680137302800608970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  Nat.lcm 20 (a (n - 1)) + 6

end

end A073548.P16680137302800608970

namespace A073548

/-- `lcm(20, a(n-1))+6` -/
def P16680137302800608970.Spec : Prop :=
  ∀ n, (P16680137302800608970.a n : ℤ) = A073548 (n + 1)

end A073548

/-! ## A073548.P17234214839344727630

`∑[10*a(n-1)]` with `a(0)=1, a(1)=5, a(2)=60`
-/

namespace A073548.P17234214839344727630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 60] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073548.P17234214839344727630

namespace A073548

/-- `∑[10*a(n-1)]` -/
def P17234214839344727630.Spec : Prop :=
  ∀ n, (P17234214839344727630.a n : ℤ) = A073548 (n + 1)

end A073548

/-! ## A073548.P1864724122532993939

`10*or(1, a(n-1))-4` with `a(0)=1`
-/

namespace A073548.P1864724122532993939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * Int.lor 1 (a (n - 1)) - 4

end

end A073548.P1864724122532993939

namespace A073548

/-- `10*or(1, a(n-1))-4` -/
def P1864724122532993939.Spec : Prop :=
  ∀ n, P1864724122532993939.a n = A073548 (n + 1)

end A073548

/-! ## A073548.P11924342946544116233

`floor(2/3*10^n)+floor(acot(n))`
-/

namespace A073548.P11924342946544116233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) / 3 * (10 ^ n : ℚ)⌋ + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A073548.P11924342946544116233

namespace A073548

/-- `floor(2/3*10^n)+floor(acot(n))` -/
def P11924342946544116233.Spec : Prop :=
  ∀ n, P11924342946544116233.a n = A073548 (n + 1)

end A073548

/-! ## A073548.P2531053361576505544

`gcd(floor(2/3*10^n), floor(acot(n)))`
-/

namespace A073548.P2531053361576505544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(2 : ℚ) / 3 * (10 ^ n : ℚ)⌋ ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A073548.P2531053361576505544

namespace A073548

/-- `gcd(floor(2/3*10^n), floor(acot(n)))` -/
def P2531053361576505544.Spec : Prop :=
  ∀ n, (P2531053361576505544.a n : ℤ) = A073548 (n + 1)

end A073548

/-! ## A073548.P13965343192495569462

`xor(floor(2/3*10^n), floor(acot(n)))`
-/

namespace A073548.P13965343192495569462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(2 : ℚ) / 3 * (10 ^ n : ℚ)⌋ ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A073548.P13965343192495569462

namespace A073548

/-- `xor(floor(2/3*10^n), floor(acot(n)))` -/
def P13965343192495569462.Spec : Prop :=
  ∀ n, P13965343192495569462.a n = A073548 (n + 1)

end A073548

/-! ## A073548.P11429658352338865137

`record[A308900(n+1)]`
-/

namespace A073548.P11429658352338865137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073548.P11429658352338865137

namespace A073548

/-- `record[A308900(n+1)]` -/
def P11429658352338865137.Spec : Prop :=
  ∀ n, P11429658352338865137.a n = A073548 (n + 1)

end A073548

/-! ## A073548.P11715177372947143711

`record[xor(1, A067275(n))]`
-/

namespace A073548.P11715177372947143711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A067275 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073548.P11715177372947143711

namespace A073548

/-- `record[xor(1, A067275(n))]` -/
def P11715177372947143711.Spec : Prop :=
  ∀ n, P11715177372947143711.a n = A073548 (n + 1)

end A073548

/-! ## A073548.P1702253127622140891

`A237345(5*n+1)`
-/

namespace A073548.P1702253127622140891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237345 (5 * n + 1)

end

end A073548.P1702253127622140891

namespace A073548

/-- `A237345(5*n+1)` -/
def P1702253127622140891.Spec : Prop :=
  ∀ n, P1702253127622140891.a n = A073548 (n + 1)

end A073548

/-! ## A073548.P12729068864978197769

`A090019(n)+a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A073548.P12729068864978197769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A090019 n + a (n - 1)

end

end A073548.P12729068864978197769

namespace A073548

/-- `A090019(n)+a(n-1)` -/
def P12729068864978197769.Spec : Prop :=
  ∀ n, P12729068864978197769.a n = A073548 (n + 1)

end A073548

/-! ## A073548.P4995154954020762031

`floor(A067275(n+1)-n/(n+1))`
-/

namespace A073548.P4995154954020762031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067275 (n + 1) : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋

end

end A073548.P4995154954020762031

namespace A073548

/-- `floor(A067275(n+1)-n/(n+1))` -/
def P4995154954020762031.Spec : Prop :=
  ∀ n, P4995154954020762031.a n = A073548 (n + 1)

end A073548

/-! ## A073548.P16344718613800924635

`A010785(A122709(n))`
-/

namespace A073548.P16344718613800924635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (A122709 n).toNat

end

end A073548.P16344718613800924635

namespace A073548

/-- `A010785(A122709(n))` -/
def P16344718613800924635.Spec : Prop :=
  ∀ n, P16344718613800924635.a n = A073548 (n + 1)

end A073548

/-! ## A073548.P4374030699964301119

`A308900(A004277(n))`
-/

namespace A073548.P4374030699964301119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308900 (A004277 n).toNat

end

end A073548.P4374030699964301119

namespace A073548

/-- `A308900(A004277(n))` -/
def P4374030699964301119.Spec : Prop :=
  ∀ n, P4374030699964301119.a n = A073548 (n + 1)

end A073548

/-! ## A073548.P7322359666958387410

`A308900(A004275(n+1))`
-/

namespace A073548.P7322359666958387410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308900 (A004275 (n + 1)).toNat

end

end A073548.P7322359666958387410

namespace A073548

/-- `A308900(A004275(n+1))` -/
def P7322359666958387410.Spec : Prop :=
  ∀ n, P7322359666958387410.a n = A073548 (n + 1)

end A073548

/-! ## A073548.P12039954184549694177

`A289006(A033627(n+2))`
-/

namespace A073548.P12039954184549694177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289006 (A033627 (n + 2)).toNat

end

end A073548.P12039954184549694177

namespace A073548

/-- `A289006(A033627(n+2))` -/
def P12039954184549694177.Spec : Prop :=
  ∀ n, P12039954184549694177.a n = A073548 (n + 1)

end A073548

/-! ## A073548.P4097827128064914702

`A002280(n)+A008706(n)%5`
-/

namespace A073548.P4097827128064914702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 n + Int.tmod (A008706 n) 5

end

end A073548.P4097827128064914702

namespace A073548

/-- `A002280(n)+A008706(n)%5` -/
def P4097827128064914702.Spec : Prop :=
  ∀ n, P4097827128064914702.a n = A073548 (n + 1)

end A073548

/-!
# A073550: Number of Fibonacci numbers F(k), k <= 10^n, which end in 1.

The programs for A073550, the canonical program `A073550.P17637856028216834610` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073550 has offset 1).

The definition of A073550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073550.P17637856028216834610

`ogf((3-19x+10x^2)/(1-11x+10x^2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073550

/-- `ogf((3-19x+10x^2)/(1-11x+10x^2))` -/
def P17637856028216834610.Spec : Prop :=
  ∀ n, P17637856028216834610.a n = A073550 (n + 1)

theorem P17637856028216834610.correct : P17637856028216834610.Spec := by
  intro n
  simp only [A073550, Nat.add_sub_cancel]

end A073550

/-! ## A073550.P16452837964274190549

`11*a(n-1)-10*a(n-2)` with `a(0)=3, a(1)=14, a(2)=134`
-/

namespace A073550.P16452837964274190549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 14, 134] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A073550.P16452837964274190549

namespace A073550

/-- `11*a(n-1)-10*a(n-2)` -/
def P16452837964274190549.Spec : Prop :=
  ∀ n, P16452837964274190549.a n = A073550 (n + 1)

end A073550

/-! ## A073550.P11264719288039307136

`10*a(n-1)-6` with `a(0)=3, a(1)=14`
-/

namespace A073550.P11264719288039307136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 14] fun n a =>
  10 * a (n - 1) - 6

end

end A073550.P11264719288039307136

namespace A073550

/-- `10*a(n-1)-6` -/
def P11264719288039307136.Spec : Prop :=
  ∀ n, P11264719288039307136.a n = A073550 (n + 1)

end A073550

/-! ## A073550.P15490035827737443789

`xor(3, A073556(n+1))`
-/

namespace A073550.P15490035827737443789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A073556 (n + 1))

end

end A073550.P15490035827737443789

namespace A073550

/-- `xor(3, A073556(n+1))` -/
def P15490035827737443789.Spec : Prop :=
  ∀ n, P15490035827737443789.a n = A073550 (n + 1)

end A073550

/-! ## A073550.P16940626222113347411

`ceil(A097166(n)+acot(n))`
-/

namespace A073550.P16940626222113347411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A097166 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌉

end

end A073550.P16940626222113347411

namespace A073550

/-- `ceil(A097166(n)+acot(n))` -/
def P16940626222113347411.Spec : Prop :=
  ∀ n, P16940626222113347411.a n = A073550 (n + 1)

end A073550

/-! ## A073550.P14631654006729118404

`A097166(n)+A054977(n)`
-/

namespace A073550.P14631654006729118404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097166 n + A054977 n

end

end A073550.P14631654006729118404

namespace A073550

/-- `A097166(n)+A054977(n)` -/
def P14631654006729118404.Spec : Prop :=
  ∀ n, P14631654006729118404.a n = A073550 (n + 1)

end A073550

/-! ## A073550.P16141963816705436929

`A000007(n)+A097166(n)+1`
-/

namespace A073550.P16141963816705436929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A097166 n + 1)

end

end A073550.P16141963816705436929

namespace A073550

/-- `A000007(n)+A097166(n)+1` -/
def P16141963816705436929.Spec : Prop :=
  ∀ n, P16141963816705436929.a n = A073550 (n + 1)

end A073550

/-! ## A073550.P17830268657858147998

`A097166(n)+2-char[A007318(n)]`
-/

namespace A073550.P17830268657858147998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097166 n + (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A073550.P17830268657858147998

namespace A073550

/-- `A097166(n)+2-char[A007318(n)]` -/
def P17830268657858147998.Spec : Prop :=
  ∀ n, P17830268657858147998.a n = A073550 (n + 1)

end A073550

/-! ## A073550.P1410985700021221357

`A097166(n)+2-char[A004736(n+1)]`
-/

namespace A073550.P1410985700021221357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097166 n + (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A073550.P1410985700021221357

namespace A073550

/-- `A097166(n)+2-char[A004736(n+1)]` -/
def P1410985700021221357.Spec : Prop :=
  ∀ n, P1410985700021221357.a n = A073550 (n + 1)

end A073550

/-! ## A073550.P9659145721901145456

`A097166(n)+2-char[A060819(n+1)]`
-/

namespace A073550.P9659145721901145456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097166 n + (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A073550.P9659145721901145456

namespace A073550

/-- `A097166(n)+2-char[A060819(n+1)]` -/
def P9659145721901145456.Spec : Prop :=
  ∀ n, P9659145721901145456.a n = A073550 (n + 1)

end A073550

/-! ## A073550.P15889304400178792642

`A094626(2*n)+A328332(2*n)+2`
-/

namespace A073550.P15889304400178792642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094626 (2 * n) + (A328332 (2 * n) + 2)

end

end A073550.P15889304400178792642

namespace A073550

/-- `A094626(2*n)+A328332(2*n)+2` -/
def P15889304400178792642.Spec : Prop :=
  ∀ n, P15889304400178792642.a n = A073550 (n + 1)

end A073550

/-! ## A073550.P6087294306154674225

`A097166(n)+A000108(C(2, A097166(n)))`
-/

namespace A073550.P6087294306154674225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097166 n + A000108 (Nat.choose 2 (A097166 n).toNat)

end

end A073550.P6087294306154674225

namespace A073550

/-- `A097166(n)+A000108(C(2, A097166(n)))` -/
def P6087294306154674225.Spec : Prop :=
  ∀ n, P6087294306154674225.a n = A073550 (n + 1)

end A073550

/-!
# A073551: Number of Fibonacci numbers F(k), k <= 10^n, which end in 3.

The programs for A073551, the canonical program `A073551.P8082415137627704628` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073551 has offset 1).

The definition of A073551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073551.P3019965848466442115

`ogf((2-10x+20x^2)/(1-11x+10x^2))`
-/

namespace A073551.P3019965848466442115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -10, 20] [1, -11, 10] n

end

end A073551.P3019965848466442115

namespace A073551

/-- `ogf((2-10x+20x^2)/(1-11x+10x^2))` -/
def P3019965848466442115.Spec : Prop :=
  ∀ n, P3019965848466442115.a n = A073551 (n + 1)

end A073551

/-! ## A073551.P8082415137627704628

`11*a(n-1)-10*a(n-2)` with `a(0)=2, a(1)=12, a(2)=132`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073551

/-- `11*a(n-1)-10*a(n-2)` -/
def P8082415137627704628.Spec : Prop :=
  ∀ n, P8082415137627704628.a n = A073551 (n + 1)

theorem P8082415137627704628.correct : P8082415137627704628.Spec := by
  intro n
  simp only [A073551, Nat.add_sub_cancel]

end A073551

/-! ## A073551.P3434043249882684473

`2*A073548(n+1)`
-/

namespace A073551.P3434043249882684473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073548 (n + 1)

end

end A073551.P3434043249882684473

namespace A073551

/-- `2*A073548(n+1)` -/
def P3434043249882684473.Spec : Prop :=
  ∀ n, P3434043249882684473.a n = A073551 (n + 1)

end A073551

/-! ## A073551.P3873573182167154284

`10*a(n-1)+12` with `a(0)=2, a(1)=12`
-/

namespace A073551.P3873573182167154284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 12] fun n a =>
  10 * a (n - 1) + 12

end

end A073551.P3873573182167154284

namespace A073551

/-- `10*a(n-1)+12` -/
def P3873573182167154284.Spec : Prop :=
  ∀ n, (P3873573182167154284.a n : ℤ) = A073551 (n + 1)

end A073551

/-! ## A073551.P16807378177316676121

`10*or(2, a(n-1))-8` with `a(0)=2`
-/

namespace A073551.P16807378177316676121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  10 * Int.lor 2 (a (n - 1)) - 8

end

end A073551.P16807378177316676121

namespace A073551

/-- `10*or(2, a(n-1))-8` -/
def P16807378177316676121.Spec : Prop :=
  ∀ n, P16807378177316676121.a n = A073551 (n + 1)

end A073551

/-! ## A073551.P3277292012802721616

`lcm(20, a(n-1)+2)-8` with `a(0)=2`
-/

namespace A073551.P3277292012802721616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Int.lcm 20 (a (n - 1) + 2) : ℤ) - 8

end

end A073551.P3277292012802721616

namespace A073551

/-- `lcm(20, a(n-1)+2)-8` -/
def P3277292012802721616.Spec : Prop :=
  ∀ n, P3277292012802721616.a n = A073551 (n + 1)

end A073551

/-! ## A073551.P1718642657124784277

`10^n+abs((10^n-4)/3)`
-/

namespace A073551.P1718642657124784277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℚ) + |((10 ^ n : ℤ) - 4 : ℚ) / 3|

end

end A073551.P1718642657124784277

namespace A073551

/-- `10^n+abs((10^n-4)/3)` -/
def P1718642657124784277.Spec : Prop :=
  ∀ n, P1718642657124784277.a n = (A073551 (n + 1) : ℚ)

end A073551

/-! ## A073551.P249867289882933134

`xor(2, A073554(n+1))`
-/

namespace A073551.P249867289882933134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A073554 (n + 1))

end

end A073551.P249867289882933134

namespace A073551

/-- `xor(2, A073554(n+1))` -/
def P249867289882933134.Spec : Prop :=
  ∀ n, P249867289882933134.a n = A073551 (n + 1)

end A073551

/-! ## A073551.P4350983517210420938

`record[2*A308900(n+1)]`
-/

namespace A073551.P4350983517210420938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073551.P4350983517210420938

namespace A073551

/-- `record[2*A308900(n+1)]` -/
def P4350983517210420938.Spec : Prop :=
  ∀ n, P4350983517210420938.a n = A073551 (n + 1)

end A073551

/-! ## A073551.P9987859409922898029

`record[2*xor(1, A067275(n))]`
-/

namespace A073551.P9987859409922898029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor 1 (A067275 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073551.P9987859409922898029

namespace A073551

/-- `record[2*xor(1, A067275(n))]` -/
def P9987859409922898029.Spec : Prop :=
  ∀ n, P9987859409922898029.a n = A073551 (n + 1)

end A073551

/-! ## A073551.P13725511709717529362

`A152966(A122709(n))`
-/

namespace A073551.P13725511709717529362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152966 (A122709 n).toNat

end

end A073551.P13725511709717529362

namespace A073551

/-- `A152966(A122709(n))` -/
def P13725511709717529362.Spec : Prop :=
  ∀ n, P13725511709717529362.a n = A073551 (n + 1)

end A073551

/-! ## A073551.P2276495139716941925

`2*A308900(A004277(n))`
-/

namespace A073551.P2276495139716941925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308900 (A004277 n).toNat

end

end A073551.P2276495139716941925

namespace A073551

/-- `2*A308900(A004277(n))` -/
def P2276495139716941925.Spec : Prop :=
  ∀ n, P2276495139716941925.a n = A073551 (n + 1)

end A073551

/-! ## A073551.P5844795571288038233

`2*A308900(A004275(n+1))`
-/

namespace A073551.P5844795571288038233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308900 (A004275 (n + 1)).toNat

end

end A073551.P5844795571288038233

namespace A073551

/-- `2*A308900(A004275(n+1))` -/
def P5844795571288038233.Spec : Prop :=
  ∀ n, P5844795571288038233.a n = A073551 (n + 1)

end A073551

/-! ## A073551.P13343965461543957830

`2*A289006(A033627(n+2))`
-/

namespace A073551.P13343965461543957830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A289006 (A033627 (n + 2)).toNat

end

end A073551.P13343965461543957830

namespace A073551

/-- `2*A289006(A033627(n+2))` -/
def P13343965461543957830.Spec : Prop :=
  ∀ n, P13343965461543957830.a n = A073551 (n + 1)

end A073551

/-! ## A073551.P15119026301714275233

`2*(A249572(2*n)-A094626(2*n))`
-/

namespace A073551.P15119026301714275233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A249572 (2 * n) - A094626 (2 * n))

end

end A073551.P15119026301714275233

namespace A073551

/-- `2*(A249572(2*n)-A094626(2*n))` -/
def P15119026301714275233.Spec : Prop :=
  ∀ n, P15119026301714275233.a n = A073551 (n + 1)

end A073551

/-!
# A073553: Number of Fibonacci numbers F(k), k <= 10^n, which end in 5.

The programs for A073553, the canonical program `A073553.P4040748666770731968` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073553 has offset 1).

The definition of A073553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073553.P15462216255620690075

`ogf((2-8x)/(1-11x+10x^2))`
-/

namespace A073553.P15462216255620690075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -8] [1, -11, 10] n

end

end A073553.P15462216255620690075

namespace A073553

/-- `ogf((2-8x)/(1-11x+10x^2))` -/
def P15462216255620690075.Spec : Prop :=
  ∀ n, P15462216255620690075.a n = A073553 (n + 1)

end A073553

/-! ## A073553.P4040748666770731968

`11*a(n-1)-10*a(n-2)` with `a(0)=2, a(1)=14`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073553

/-- `11*a(n-1)-10*a(n-2)` -/
def P4040748666770731968.Spec : Prop :=
  ∀ n, P4040748666770731968.a n = A073553 (n + 1)

theorem P4040748666770731968.correct : P4040748666770731968.Spec := by
  intro n
  simp only [A073553, Nat.add_sub_cancel]

end A073553

/-! ## A073553.P6459655560803596581

`2*A067275(n+1)`
-/

namespace A073553.P6459655560803596581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067275 (n + 1)

end

end A073553.P6459655560803596581

namespace A073553

/-- `2*A067275(n+1)` -/
def P6459655560803596581.Spec : Prop :=
  ∀ n, P6459655560803596581.a n = A073553 (n + 1)

end A073553

/-! ## A073553.P8534243407346981297

`(2*10^(n+1)+10)/15`
-/

namespace A073553.P8534243407346981297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 10 ^ (n + 1) + 10 : ℚ) / 15

end

end A073553.P8534243407346981297

namespace A073553

/-- `(2*10^(n+1)+10)/15` -/
def P8534243407346981297.Spec : Prop :=
  ∀ n, P8534243407346981297.a n = (A073553 (n + 1) : ℚ)

theorem P8534243407346981297.correct : P8534243407346981297.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A073553, Nat.add_sub_cancel, A073553.P8534243407346981297.a, A073553.P4040748666770731968.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A073553, Nat.add_sub_cancel, A073553.P8534243407346981297.a, A073553.P4040748666770731968.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A073553

/-! ## A073553.P3989436414555839597

`10*a(n-1)-6` with `a(0)=2`
-/

namespace A073553.P3989436414555839597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  10 * a (n - 1) - 6

end

end A073553.P3989436414555839597

namespace A073553

/-- `10*a(n-1)-6` -/
def P3989436414555839597.Spec : Prop :=
  ∀ n, P3989436414555839597.a n = A073553 (n + 1)

end A073553

/-! ## A073553.P17332718893838047943

`lcm(4, floor(10^n/3))+2`
-/

namespace A073553.P17332718893838047943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 ⌊(10 ^ n : ℚ) / 3⌋ + 2

end

end A073553.P17332718893838047943

namespace A073553

/-- `lcm(4, floor(10^n/3))+2` -/
def P17332718893838047943.Spec : Prop :=
  ∀ n, (P17332718893838047943.a n : ℤ) = A073553 (n + 1)

end A073553

/-! ## A073553.P3731421646547327905

`xor(3, floor(4/3*10^n))`
-/

namespace A073553.P3731421646547327905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ⌊(4 : ℚ) / 3 * (10 ^ n : ℚ)⌋

end

end A073553.P3731421646547327905

namespace A073553

/-- `xor(3, floor(4/3*10^n))` -/
def P3731421646547327905.Spec : Prop :=
  ∀ n, P3731421646547327905.a n = A073553 (n + 1)

end A073553

/-! ## A073553.P4558761656513704562

`lcm(2, 3-lcm(5, a(n-1)))` with `a(0)=2`
-/

namespace A073553.P4558761656513704562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm 2 (3 - (Nat.lcm 5 (a (n - 1)) : ℤ))

end

end A073553.P4558761656513704562

namespace A073553

/-- `lcm(2, 3-lcm(5, a(n-1)))` -/
def P4558761656513704562.Spec : Prop :=
  ∀ n, (P4558761656513704562.a n : ℤ) = A073553 (n + 1)

end A073553

/-! ## A073553.P17343941752118097322

`A097166(n)+1`
-/

namespace A073553.P17343941752118097322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097166 n + 1

end

end A073553.P17343941752118097322

namespace A073553

/-- `A097166(n)+1` -/
def P17343941752118097322.Spec : Prop :=
  ∀ n, P17343941752118097322.a n = A073553 (n + 1)

end A073553

/-! ## A073553.P16541479865533213990

`round(A199684(n)/3)`
-/

namespace A073553.P16541479865533213990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A199684 n : ℚ) / 3)

end

end A073553.P16541479865533213990

namespace A073553

/-- `round(A199684(n)/3)` -/
def P16541479865533213990.Spec : Prop :=
  ∀ n, P16541479865533213990.a n = A073553 (n + 1)

end A073553

/-! ## A073553.P14782719903582857134

`∑[2*A090019(n)]`
-/

namespace A073553.P14782719903582857134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073553.P14782719903582857134

namespace A073553

/-- `∑[2*A090019(n)]` -/
def P14782719903582857134.Spec : Prop :=
  ∀ n, P14782719903582857134.a n = A073553 (n + 1)

end A073553

/-! ## A073553.P9221824169078928163

`2*(A002280(n)+1)`
-/

namespace A073553.P9221824169078928163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002280 n + 1)

end

end A073553.P9221824169078928163

namespace A073553

/-- `2*(A002280(n)+1)` -/
def P9221824169078928163.Spec : Prop :=
  ∀ n, P9221824169078928163.a n = A073553 (n + 1)

end A073553

/-! ## A073553.P11741782226154475501

`A097169(2*n)+1`
-/

namespace A073553.P11741782226154475501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097169 (2 * n) + 1

end

end A073553.P11741782226154475501

namespace A073553

/-- `A097169(2*n)+1` -/
def P11741782226154475501.Spec : Prop :=
  ∀ n, P11741782226154475501.a n = A073553 (n + 1)

end A073553

/-! ## A073553.P7918791826108441589

`3*A002278(n)+2`
-/

namespace A073553.P7918791826108441589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002278 n + 2

end

end A073553.P7918791826108441589

namespace A073553

/-- `3*A002278(n)+2` -/
def P7918791826108441589.Spec : Prop :=
  ∀ n, P7918791826108441589.a n = A073553 (n + 1)

end A073553

/-! ## A073553.P3912126472117230693

`3*A093140(n)-1`
-/

namespace A073553.P3912126472117230693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A093140 n - 1

end

end A073553.P3912126472117230693

namespace A073553

/-- `3*A093140(n)-1` -/
def P3912126472117230693.Spec : Prop :=
  ∀ n, P3912126472117230693.a n = A073553 (n + 1)

end A073553

/-! ## A073553.P17564453805488999273

`A198970(n)/3+1`
-/

namespace A073553.P17564453805488999273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198970 n : ℚ) / 3 + 1

end

end A073553.P17564453805488999273

namespace A073553

/-- `A198970(n)/3+1` -/
def P17564453805488999273.Spec : Prop :=
  ∀ n, P17564453805488999273.a n = (A073553 (n + 1) : ℚ)

theorem P17564453805488999273.correct : P17564453805488999273.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A073553, Nat.add_sub_cancel, A073553.P17564453805488999273.a, A073553.P4040748666770731968.a, A198970, A198970.P3896718093538154325.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A073553, Nat.add_sub_cancel, A073553.P17564453805488999273.a, A073553.P4040748666770731968.a, A198970, A198970.P3896718093538154325.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A073553

/-! ## A073553.P14790411847317083264

`4*A002277(n)+2`
-/

namespace A073553.P14790411847317083264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002277 n + 2

end

end A073553.P14790411847317083264

namespace A073553

/-- `4*A002277(n)+2` -/
def P14790411847317083264.Spec : Prop :=
  ∀ n, P14790411847317083264.a n = A073553 (n + 1)

end A073553

/-! ## A073553.P3901994341851132125

`A086575(n)/3+2`
-/

namespace A073553.P3901994341851132125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086575 n : ℚ) / 3 + 2

end

end A073553.P3901994341851132125

namespace A073553

/-- `A086575(n)/3+2` -/
def P3901994341851132125.Spec : Prop :=
  ∀ n, P3901994341851132125.a n = (A073553 (n + 1) : ℚ)

theorem P3901994341851132125.correct : P3901994341851132125.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A073553, Nat.add_sub_cancel, A073553.P3901994341851132125.a, A073553.P4040748666770731968.a, A086575, A086575.P2017417620639071348.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A073553, Nat.add_sub_cancel, A073553.P3901994341851132125.a, A073553.P4040748666770731968.a, A086575, A086575.P2017417620639071348.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A073553

/-! ## A073553.P1028153760716107317

`4*A093137(n)-2`
-/

namespace A073553.P1028153760716107317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A093137 n - 2

end

end A073553.P1028153760716107317

namespace A073553

/-- `4*A093137(n)-2` -/
def P1028153760716107317.Spec : Prop :=
  ∀ n, P1028153760716107317.a n = A073553 (n + 1)

end A073553

/-! ## A073553.P13343822263010719339

`2/3*A199682(n)`
-/

namespace A073553.P13343822263010719339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A199682 n : ℚ)

end

end A073553.P13343822263010719339

namespace A073553

/-- `2/3*A199682(n)` -/
def P13343822263010719339.Spec : Prop :=
  ∀ n, P13343822263010719339.a n = (A073553 (n + 1) : ℚ)

theorem P13343822263010719339.correct : P13343822263010719339.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A073553, Nat.add_sub_cancel, A073553.P13343822263010719339.a, A073553.P4040748666770731968.a, A199682, A199682.P5052991062542411670.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A073553, Nat.add_sub_cancel, A073553.P13343822263010719339.a, A073553.P4040748666770731968.a, A199682, A199682.P5052991062542411670.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A073553

/-!
# A073554: Number of Fibonacci numbers F(k), k <= 10^n, which end in 7.

The programs for A073554, the canonical program `A073554.P7089641247556209187` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073554 has offset 1).

The definition of A073554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073554.P18421120986860412514

`ogf((14x-20x^2)/(1-11x+10x^2))`
-/

namespace A073554.P18421120986860412514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 14, -20] [1, -11, 10] n

end

end A073554.P18421120986860412514

namespace A073554

/-- `ogf((14x-20x^2)/(1-11x+10x^2))` -/
def P18421120986860412514.Spec : Prop :=
  ∀ n, P18421120986860412514.a n = A073554 (n + 1)

end A073554

/-! ## A073554.P7089641247556209187

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=14, a(2)=134`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073554

/-- `11*a(n-1)-10*a(n-2)` -/
def P7089641247556209187.Spec : Prop :=
  ∀ n, P7089641247556209187.a n = A073554 (n + 1)

theorem P7089641247556209187.correct : P7089641247556209187.Spec := by
  intro n
  simp only [A073554, Nat.add_sub_cancel]

end A073554

/-! ## A073554.P11701528705949146944

`10*a(n-1)-6` with `a(0)=0, a(1)=14`
-/

namespace A073554.P11701528705949146944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 14] fun n a =>
  10 * a (n - 1) - 6

end

end A073554.P11701528705949146944

namespace A073554

/-- `10*a(n-1)-6` -/
def P11701528705949146944.Spec : Prop :=
  ∀ n, P11701528705949146944.a n = A073554 (n + 1)

end A073554

/-! ## A073554.P16889727365713196905

`Δ[floor(10^n/3)]%floor(10^(n+1)/6)`
-/

namespace A073554.P16889727365713196905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ⌊(10 ^ (n + 1) : ℚ) / 6⌋

end

end A073554.P16889727365713196905

namespace A073554

/-- `Δ[floor(10^n/3)]%floor(10^(n+1)/6)` -/
def P16889727365713196905.Spec : Prop :=
  ∀ n, P16889727365713196905.a n = A073554 (n + 1)

end A073554

/-! ## A073554.P11818450499528740158

`xor(2, A073551(n+1))`
-/

namespace A073554.P11818450499528740158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A073551 (n + 1))

end

end A073554.P11818450499528740158

namespace A073554

/-- `xor(2, A073551(n+1))` -/
def P11818450499528740158.Spec : Prop :=
  ∀ n, P11818450499528740158.a n = A073554 (n + 1)

end A073554

/-! ## A073554.P10907182256784543018

`2*(A073555(n+1)-1)`
-/

namespace A073554.P10907182256784543018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A073555 (n + 1) - 1)

end

end A073554.P10907182256784543018

namespace A073554

/-- `2*(A073555(n+1)-1)` -/
def P10907182256784543018.Spec : Prop :=
  ∀ n, P10907182256784543018.a n = A073554 (n + 1)

end A073554

/-! ## A073554.P7866162701231125237

`A246057(n)-abs(A323639(n))`
-/

namespace A073554.P7866162701231125237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246057 n - |A323639 n|

end

end A073554.P7866162701231125237

namespace A073554

/-- `A246057(n)-abs(A323639(n))` -/
def P7866162701231125237.Spec : Prop :=
  ∀ n, P7866162701231125237.a n = A073554 (n + 1)

end A073554

/-! ## A073554.P11579861290128583280

`2*(A178500(n)-A002277(n))`
-/

namespace A073554.P11579861290128583280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A178500 n - A002277 n)

end

end A073554.P11579861290128583280

namespace A073554

/-- `2*(A178500(n)-A002277(n))` -/
def P11579861290128583280.Spec : Prop :=
  ∀ n, P11579861290128583280.a n = A073554 (n + 1)

end A073554

/-! ## A073554.P1581929583551794672

`(A097166(n)+1)*char[A007318(n)]`
-/

namespace A073554.P1581929583551794672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097166 n + 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A073554.P1581929583551794672

namespace A073554

/-- `(A097166(n)+1)*char[A007318(n)]` -/
def P1581929583551794672.Spec : Prop :=
  ∀ n, P1581929583551794672.a n = A073554 (n + 1)

end A073554

/-! ## A073554.P1839068219800355999

`(A097166(n)+1)*char[A004736(n+1)]`
-/

namespace A073554.P1839068219800355999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097166 n + 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A073554.P1839068219800355999

namespace A073554

/-- `(A097166(n)+1)*char[A004736(n+1)]` -/
def P1839068219800355999.Spec : Prop :=
  ∀ n, P1839068219800355999.a n = A073554 (n + 1)

end A073554

/-! ## A073554.P17391018404114157171

`(A097166(n)+1)*char[A060819(n+1)]`
-/

namespace A073554.P17391018404114157171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097166 n + 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A073554.P17391018404114157171

namespace A073554

/-- `(A097166(n)+1)*char[A060819(n+1)]` -/
def P17391018404114157171.Spec : Prop :=
  ∀ n, P17391018404114157171.a n = A073554 (n + 1)

end A073554

/-!
# A073555: Number of Fibonacci numbers F(k), k <= 10^n, which end in 8.

The programs for A073555, the canonical program `A073555.P17596033027166786150` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073555 has offset 1).

The definition of A073555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073555.P4489982137410915972

`ogf((1-3x-10x^2)/(1-11x+10x^2))`
-/

namespace A073555.P4489982137410915972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -10] [1, -11, 10] n

end

end A073555.P4489982137410915972

namespace A073555

/-- `ogf((1-3x-10x^2)/(1-11x+10x^2))` -/
def P4489982137410915972.Spec : Prop :=
  ∀ n, P4489982137410915972.a n = A073555 (n + 1)

end A073555

/-! ## A073555.P17596033027166786150

`11*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=8, a(2)=68`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073555

/-- `11*a(n-1)-10*a(n-2)` -/
def P17596033027166786150.Spec : Prop :=
  ∀ n, P17596033027166786150.a n = A073555 (n + 1)

theorem P17596033027166786150.correct : P17596033027166786150.Spec := by
  intro n
  simp only [A073555, Nat.add_sub_cancel]

end A073555

/-! ## A073555.P9060854392882245732

`∑[ogf((-1+3x+10x^2)/(-1+10x))]`
-/

namespace A073555.P9060854392882245732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -10] [1, -10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073555.P9060854392882245732

namespace A073555

/-- `∑[ogf((-1+3x+10x^2)/(-1+10x))]` -/
def P9060854392882245732.Spec : Prop :=
  ∀ n, P9060854392882245732.a n = A073555 (n + 1)

end A073555

/-! ## A073555.P11450943462128126418

`10*a(n-1)-12` with `a(0)=1, a(1)=8`
-/

namespace A073555.P11450943462128126418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  10 * a (n - 1) - 12

end

end A073555.P11450943462128126418

namespace A073555

/-- `10*a(n-1)-12` -/
def P11450943462128126418.Spec : Prop :=
  ∀ n, P11450943462128126418.a n = A073555 (n + 1)

end A073555

/-! ## A073555.P12461194837283544231

`A020639((n%2)^n+n)+floor(2/3*10^n)`
-/

namespace A073555.P12461194837283544231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n % 2) ^ n + n) + ⌊(2 : ℚ) / 3 * (10 ^ n : ℚ)⌋

end

end A073555.P12461194837283544231

namespace A073555

/-- `A020639((n%2)^n+n)+floor(2/3*10^n)` -/
def P12461194837283544231.Spec : Prop :=
  ∀ n, P12461194837283544231.a n = A073555 (n + 1)

end A073555

/-! ## A073555.P1577080414048787770

`A178500(n)+1-A002277(n)`
-/

namespace A073555.P1577080414048787770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 n + (1 - A002277 n)

end

end A073555.P1577080414048787770

namespace A073555

/-- `A178500(n)+1-A002277(n)` -/
def P1577080414048787770.Spec : Prop :=
  ∀ n, P1577080414048787770.a n = A073555 (n + 1)

end A073555

/-! ## A073555.P6042568536383678713

`(4*n+2-A004277(2*n))*A308900(2*n+1)`
-/

namespace A073555.P6042568536383678713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n + 2 : ℤ) - A004277 (2 * n)) * A308900 (2 * n + 1)

end

end A073555.P6042568536383678713

namespace A073555

/-- `(4*n+2-A004277(2*n))*A308900(2*n+1)` -/
def P6042568536383678713.Spec : Prop :=
  ∀ n, P6042568536383678713.a n = A073555 (n + 1)

end A073555

/-! ## A073555.P2613177356500234600

`A104484(A104484(n))+A067275(n+1)`
-/

namespace A073555.P2613177356500234600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104484 (A104484 n).toNat + A067275 (n + 1)

end

end A073555.P2613177356500234600

namespace A073555

/-- `A104484(A104484(n))+A067275(n+1)` -/
def P2613177356500234600.Spec : Prop :=
  ∀ n, P2613177356500234600.a n = A073555 (n + 1)

end A073555

/-! ## A073555.P7899721949401602944

`A002280(n)+∑[A011782(n)]/A011782(n)`
-/

namespace A073555.P7899721949401602944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002280 n : ℚ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A011782 n : ℚ)

end

end A073555.P7899721949401602944

namespace A073555

/-- `A002280(n)+∑[A011782(n)]/A011782(n)` -/
def P7899721949401602944.Spec : Prop :=
  ∀ n, P7899721949401602944.a n = (A073555 (n + 1) : ℚ)

end A073555

/-! ## A073555.P482562170109648453

`(A092900(2*n+1)+A092900(2*n))*A040000(n)`
-/

namespace A073555.P482562170109648453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092900 (2 * n + 1) + A092900 (2 * n)) * A040000 n

end

end A073555.P482562170109648453

namespace A073555

/-- `(A092900(2*n+1)+A092900(2*n))*A040000(n)` -/
def P482562170109648453.Spec : Prop :=
  ∀ n, P482562170109648453.a n = A073555 (n + 1)

end A073555

/-! ## A073555.P13228236465919092219

`A004275(2*n+1)/A004275(n+1)*A308900(2*n+1)`
-/

namespace A073555.P13228236465919092219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (2 * n + 1) : ℚ) / (A004275 (n + 1) : ℚ) * (A308900 (2 * n + 1) : ℚ)

end

end A073555.P13228236465919092219

namespace A073555

/-- `A004275(2*n+1)/A004275(n+1)*A308900(2*n+1)` -/
def P13228236465919092219.Spec : Prop :=
  ∀ n, P13228236465919092219.a n = (A073555 (n + 1) : ℚ)

end A073555

/-! ## A073555.P4167600479279177314

`(A004275(2*n+1)-A004275(2*n))*A308900(2*n+1)`
-/

namespace A073555.P4167600479279177314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004275 (2 * n + 1) - A004275 (2 * n)) * A308900 (2 * n + 1)

end

end A073555.P4167600479279177314

namespace A073555

/-- `(A004275(2*n+1)-A004275(2*n))*A308900(2*n+1)` -/
def P4167600479279177314.Spec : Prop :=
  ∀ n, P4167600479279177314.a n = A073555 (n + 1)

end A073555

/-! ## A073555.P18401469751614057128

`and(-2, 10^n)+1-floor(10^n/3)`
-/

namespace A073555.P18401469751614057128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (10 ^ n : ℤ) + 1 - ⌊(10 ^ n : ℚ) / 3⌋

end

end A073555.P18401469751614057128

namespace A073555

/-- `and(-2, 10^n)+1-floor(10^n/3)` -/
def P18401469751614057128.Spec : Prop :=
  ∀ n, P18401469751614057128.a n = A073555 (n + 1)

end A073555

/-! ## A073555.P13166107158023961040

`A073554(n+1)/2+1`
-/

namespace A073555.P13166107158023961040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073554 (n + 1) : ℚ) / 2 + 1

end

end A073555.P13166107158023961040

namespace A073555

/-- `A073554(n+1)/2+1` -/
def P13166107158023961040.Spec : Prop :=
  ∀ n, P13166107158023961040.a n = (A073555 (n + 1) : ℚ)

end A073555

/-! ## A073555.P546075521240149491

`A000533(n)-A002277(n)`
-/

namespace A073555.P546075521240149491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 n - A002277 n

end

end A073555.P546075521240149491

namespace A073555

/-- `A000533(n)-A002277(n)` -/
def P546075521240149491.Spec : Prop :=
  ∀ n, P546075521240149491.a n = A073555 (n + 1)

end A073555

/-! ## A073555.P2004485917087284636

`A073553(n+1)-A073548(n+1)`
-/

namespace A073555.P2004485917087284636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073553 (n + 1) - A073548 (n + 1)

end

end A073555.P2004485917087284636

namespace A073555

/-- `A073553(n+1)-A073548(n+1)` -/
def P2004485917087284636.Spec : Prop :=
  ∀ n, P2004485917087284636.a n = A073555 (n + 1)

end A073555

/-! ## A073555.P16937198531040107220

`2*A328333(2*n)-A328332(2*n)`
-/

namespace A073555.P16937198531040107220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A328333 (2 * n) - A328332 (2 * n)

end

end A073555.P16937198531040107220

namespace A073555

/-- `2*A328333(2*n)-A328332(2*n)` -/
def P16937198531040107220.Spec : Prop :=
  ∀ n, P16937198531040107220.a n = A073555 (n + 1)

end A073555

/-!
# A073556: Number of Fibonacci numbers F(k), k <= 10^n, which end in 9.

The programs for A073556, the canonical program `A073556.P5913882023356729492` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073556 has offset 1).

The definition of A073556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073556.P7700070689181694517

`ogf((13x-10x^2)/(1-11x+10x^2))`
-/

namespace A073556.P7700070689181694517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 13, -10] [1, -11, 10] n

end

end A073556.P7700070689181694517

namespace A073556

/-- `ogf((13x-10x^2)/(1-11x+10x^2))` -/
def P7700070689181694517.Spec : Prop :=
  ∀ n, P7700070689181694517.a n = A073556 (n + 1)

end A073556

/-! ## A073556.P5913882023356729492

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=13, a(2)=133`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073556

/-- `11*a(n-1)-10*a(n-2)` -/
def P5913882023356729492.Spec : Prop :=
  ∀ n, P5913882023356729492.a n = A073556 (n + 1)

theorem P5913882023356729492.correct : P5913882023356729492.Spec := by
  intro n
  simp only [A073556, Nat.add_sub_cancel]

end A073556

/-! ## A073556.P10452098057442446063

`10*a(n-1)+3` with `a(0)=0, a(1)=13`
-/

namespace A073556.P10452098057442446063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 13] fun n a =>
  10 * a (n - 1) + 3

end

end A073556.P10452098057442446063

namespace A073556

/-- `10*a(n-1)+3` -/
def P10452098057442446063.Spec : Prop :=
  ∀ n, (P10452098057442446063.a n : ℤ) = A073556 (n + 1)

end A073556

/-! ## A073556.P1425634185313117392

`lcm(10, a(n-1))+3` with `a(0)=0, a(1)=13`
-/

namespace A073556.P1425634185313117392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 13] fun n a =>
  Nat.lcm 10 (a (n - 1)) + 3

end

end A073556.P1425634185313117392

namespace A073556

/-- `lcm(10, a(n-1))+3` -/
def P1425634185313117392.Spec : Prop :=
  ∀ n, (P1425634185313117392.a n : ℤ) = A073556 (n + 1)

end A073556

/-! ## A073556.P8828906488378358402

`floor(10^n/3)+and(10^n, -2)`
-/

namespace A073556.P8828906488378358402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 3⌋ + Int.land (10 ^ n : ℤ) (-2)

end

end A073556.P8828906488378358402

namespace A073556

/-- `floor(10^n/3)+and(10^n, -2)` -/
def P8828906488378358402.Spec : Prop :=
  ∀ n, P8828906488378358402.a n = A073556 (n + 1)

end A073556

/-! ## A073556.P14890619865933250036

`and(-2, 10^n)+(10^n-1)/3`
-/

namespace A073556.P14890619865933250036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (10 ^ n : ℤ) : ℚ) + ((10 ^ n : ℤ) - 1 : ℚ) / 3

end

end A073556.P14890619865933250036

namespace A073556

/-- `and(-2, 10^n)+(10^n-1)/3` -/
def P14890619865933250036.Spec : Prop :=
  ∀ n, P14890619865933250036.a n = (A073556 (n + 1) : ℚ)

end A073556

/-! ## A073556.P10978915771991839595

`floor(4/3*10^n)%∑[floor(4/3*10^n)]`
-/

namespace A073556.P10978915771991839595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 3 * (10 ^ n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(4 : ℚ) / 3 * (10 ^ n : ℚ)⌋ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073556.P10978915771991839595

namespace A073556

/-- `floor(4/3*10^n)%∑[floor(4/3*10^n)]` -/
def P10978915771991839595.Spec : Prop :=
  ∀ n, P10978915771991839595.a n = A073556 (n + 1)

end A073556

/-! ## A073556.P6665812189489133610

`xor(3, A073550(n+1))`
-/

namespace A073556.P6665812189489133610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A073550 (n + 1))

end

end A073556.P6665812189489133610

namespace A073556

/-- `xor(3, A073550(n+1))` -/
def P6665812189489133610.Spec : Prop :=
  ∀ n, P6665812189489133610.a n = A073556 (n + 1)

end A073556

/-! ## A073556.P3804751464015485414

`A097166(n)-floor(acot(n))`
-/

namespace A073556.P3804751464015485414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097166 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A073556.P3804751464015485414

namespace A073556

/-- `A097166(n)-floor(acot(n))` -/
def P3804751464015485414.Spec : Prop :=
  ∀ n, P3804751464015485414.a n = A073556 (n + 1)

end A073556

/-! ## A073556.P6514687974747910680

`A178500(n)+A002277(n)`
-/

namespace A073556.P6514687974747910680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 n + A002277 n

end

end A073556.P6514687974747910680

namespace A073556

/-- `A178500(n)+A002277(n)` -/
def P6514687974747910680.Spec : Prop :=
  ∀ n, P6514687974747910680.a n = A073556 (n + 1)

end A073556

/-! ## A073556.P2163936398086516126

`A097166(n)-A000007(n)`
-/

namespace A073556.P2163936398086516126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097166 n - A000007 n

end

end A073556.P2163936398086516126

namespace A073556

/-- `A097166(n)-A000007(n)` -/
def P2163936398086516126.Spec : Prop :=
  ∀ n, P2163936398086516126.a n = A073556 (n + 1)

end A073556

/-! ## A073556.P7690197757106982259

`char[A007318(n)]*A097166(n)`
-/

namespace A073556.P7690197757106982259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A097166 n

end

end A073556.P7690197757106982259

namespace A073556

/-- `char[A007318(n)]*A097166(n)` -/
def P7690197757106982259.Spec : Prop :=
  ∀ n, P7690197757106982259.a n = A073556 (n + 1)

end A073556

/-! ## A073556.P1158460849644460770

`A000533(n)+A002277(n)-1`
-/

namespace A073556.P1158460849644460770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 n + (A002277 n - 1)

end

end A073556.P1158460849644460770

namespace A073556

/-- `A000533(n)+A002277(n)-1` -/
def P1158460849644460770.Spec : Prop :=
  ∀ n, P1158460849644460770.a n = A073556 (n + 1)

end A073556

/-! ## A073556.P7825088429567586734

`A097166(n)+1-A054977(n)`
-/

namespace A073556.P7825088429567586734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097166 n + (1 - A054977 n)

end

end A073556.P7825088429567586734

namespace A073556

/-- `A097166(n)+1-A054977(n)` -/
def P7825088429567586734.Spec : Prop :=
  ∀ n, P7825088429567586734.a n = A073556 (n + 1)

end A073556

/-! ## A073556.P10736954320262870199

`char[A004736(n+1)]*A097166(n)`
-/

namespace A073556.P10736954320262870199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A097166 n

end

end A073556.P10736954320262870199

namespace A073556

/-- `char[A004736(n+1)]*A097166(n)` -/
def P10736954320262870199.Spec : Prop :=
  ∀ n, P10736954320262870199.a n = A073556 (n + 1)

end A073556

/-! ## A073556.P2790431234780483911

`char[A060819(n+1)]*A097166(n)`
-/

namespace A073556.P2790431234780483911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A097166 n

end

end A073556.P2790431234780483911

namespace A073556

/-- `char[A060819(n+1)]*A097166(n)` -/
def P2790431234780483911.Spec : Prop :=
  ∀ n, P2790431234780483911.a n = A073556 (n + 1)

end A073556

/-! ## A073556.P8405436425539228317

`A094620(2*n)+1-A328332(2*n)`
-/

namespace A073556.P8405436425539228317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094620 (2 * n) + (1 - A328332 (2 * n))

end

end A073556.P8405436425539228317

namespace A073556

/-- `A094620(2*n)+1-A328332(2*n)` -/
def P8405436425539228317.Spec : Prop :=
  ∀ n, P8405436425539228317.a n = A073556 (n + 1)

end A073556

/-! ## A073556.P16462450116942223730

`A099914(n)-A002275(A028310(n))`
-/

namespace A073556.P16462450116942223730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099914 n - A002275 (A028310 n).toNat

end

end A073556.P16462450116942223730

namespace A073556

/-- `A099914(n)-A002275(A028310(n))` -/
def P16462450116942223730.Spec : Prop :=
  ∀ n, P16462450116942223730.a n = A073556 (n + 1)

end A073556

/-! ## A073556.P8713144062414041764

`A001221(A001316(n))+4*A002277(n)`
-/

namespace A073556.P8713144062414041764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 n).toNat + 4 * A002277 n

end

end A073556.P8713144062414041764

namespace A073556

/-- `A001221(A001316(n))+4*A002277(n)` -/
def P8713144062414041764.Spec : Prop :=
  ∀ n, P8713144062414041764.a n = A073556 (n + 1)

end A073556

/-! ## A073556.P639720642919800500

`C(A097166(n), A014963(A000217(n+2)))`
-/

namespace A073556.P639720642919800500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A097166 n).toNat (A014963 (A000217 (n + 2)).toNat).toNat

end

end A073556.P639720642919800500

namespace A073556

/-- `C(A097166(n), A014963(A000217(n+2)))` -/
def P639720642919800500.Spec : Prop :=
  ∀ n, (P639720642919800500.a n : ℤ) = A073556 (n + 1)

end A073556

/-!
# A073557: Number of Fibonacci numbers F(k), k <= 10^n, whose initial digit is 1.

The programs for A073557, there is no canonical definition to state claims against.
-/

/-! ## A073557.P12896318337135630372

`A114475(n+1)-A114483(A114438(2*n+5))`
-/

namespace A073557.P12896318337135630372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114475 (n + 1) - A114483 (A114438 (2 * n + 5)).toNat

end

end A073557.P12896318337135630372

/-!
# A073558: Number of Fibonacci numbers F(k), k <= 10^n, whose initial digit is 2.

The programs for A073558, there is no canonical definition to state claims against.
-/

/-! ## A073558.P17014607112089808282

`A091087(floor(7/9*10^n)+1)+ceil(10^n/9)`
-/

namespace A073558.P17014607112089808282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 (⌊(7 : ℚ) / 9 * (10 ^ n : ℚ)⌋ + 1).toNat + ⌈(10 ^ n : ℚ) / 9⌉

end

end A073558.P17014607112089808282

/-!
# A073559: Number of Fibonacci numbers F(k), k <= 10^n, whose initial digit is 3.

The programs for A073559, there is no canonical definition to state claims against.
-/

/-! ## A073559.P13121770095393946922

`A188087(ceil(10^n/9))+∑[10^n]`
-/

namespace A073559.P13121770095393946922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188087 ⌈(10 ^ n : ℚ) / 9⌉.toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A073559.P13121770095393946922

/-!
# A073560: Number of Fibonacci numbers F(k), k <= 10^n, whose initial digit is 4.

The programs for A073560, there is no canonical definition to state claims against.
-/

/-! ## A073560.P1802393320622295130

`10^n-A195184(A195194(n+1))`
-/

namespace A073560.P1802393320622295130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - A195184 (A195194 (n + 1)).toNat

end

end A073560.P1802393320622295130

/-!
# A073562: Number of Fibonacci numbers F(k), k <= 10^n, whose initial digit is 6.

The programs for A073562, there is no canonical definition to state claims against.
-/

/-! ## A073562.P9741607801348583314

`A316655(A000108(n))+A002280(n)`
-/

namespace A073562.P9741607801348583314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316655 (A000108 n).toNat + A002280 n

end

end A073562.P9741607801348583314

/-!
# A073563: Number of Fibonacci numbers F(k), k <= 10^n, whose initial digit is 7.

The programs for A073563, there is no canonical definition to state claims against.
-/

/-! ## A073563.P5787338144597509043

`A315399(A329360(n))-1`
-/

namespace A073563.P5787338144597509043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315399 (A329360 n).toNat - 1

end

end A073563.P5787338144597509043

/-!
# A073565: Number of Fibonacci numbers F(k), k <= 10^n, whose initial digit is 9.

The programs for A073565, there is no canonical definition to state claims against.
-/

/-! ## A073565.P11940360258918682914

`A327139(a(n-1)+10^(n-1)+1)` with `a(0)=0`
-/

namespace A073565.P11940360258918682914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A327139 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1)).toNat

end

end A073565.P11940360258918682914

/-!
# A073566: Numbers n such that n, n+1 and n+2 have the same number of anti-divisors.

The programs for A073566, there is no canonical definition to state claims against.
-/

/-! ## A073566.P7855227128514845624

`∩[A073547(n+1)-1, A073547(n+1)]`
-/

namespace A073566.P7855227128514845624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073547 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073566.P7855227128514845624

/-! ## A073566.P1045270407318480500

`∩[A073547(n+1), A023443(A073547(n+1))]`
-/

namespace A073566.P1045270407318480500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A073547 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073566.P1045270407318480500

/-!
# A073568: Number of anti-divisors of n divides the number of divisors of n.

The programs for A073568, there is no canonical definition to state claims against.
-/

/-! ## A073568.P14132954619130931100

`∑[A340786(A000108(n))]+2`
-/

namespace A073568.P14132954619130931100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340786 (A000108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A073568.P14132954619130931100

/-! ## A073568.P2604823445411578435

`lt[A181786(3*n), A078458(A299255(n))]`
-/

namespace A073568.P2604823445411578435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078458 (A299255 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A073568.P2604823445411578435

/-! ## A073568.P5551397659506079645

`eq[1, A211487(A135318(n))]`
-/

namespace A073568.P5551397659506079645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (A135318 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073568.P5551397659506079645

/-! ## A073568.P4799001088488881775

`record[A205789(A125624(n+1))]`
-/

namespace A073568.P4799001088488881775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205789 (A125624 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073568.P4799001088488881775

/-! ## A073568.P6965883492212908828

`record[A000005(A241638(n)+3)]`
-/

namespace A073568.P6965883492212908828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A241638 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073568.P6965883492212908828

/-!
# A073569: Numbers k such that A002034(k) = A066272(k).

The programs for A073569, there is no canonical definition to state claims against.
-/

/-! ## A073569.P14503111135386154812

`eq[A002034(n+1), A066272(n+1)]+1`
-/

namespace A073569.P14503111135386154812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073569.P14503111135386154812

/-! ## A073569.P8491909435167089064

`A065475(eq[A002034(n+1), A066272(n+1)])`
-/

namespace A073569.P8491909435167089064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A073569.P8491909435167089064

/-!
# A073570: G.f.: Sum_{n >= 1} x^n/(1-x^n)^5.

The programs for A073570, the canonical program `A073570.P7558039498727251644` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073570 has offset 1).

The definition of A073570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073570.P7558039498727251644

`∑{d}[n+1, C(#+3, 4)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073570

/-- `∑{d}[n+1, C(#+3, 4)]` -/
def P7558039498727251644.Spec : Prop :=
  ∀ n, (P7558039498727251644.a n : ℤ) = A073570 (n + 1)

theorem P7558039498727251644.correct : P7558039498727251644.Spec := by
  intro n
  simp only [A073570, Nat.add_sub_cancel]

end A073570

/-! ## A073570.P14264734209822759777

`∑{d}[n+1, A000332(#+3)]`
-/

namespace A073570.P14264734209822759777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000332 (d + 3)

end

end A073570.P14264734209822759777

namespace A073570

/-- `∑{d}[n+1, A000332(#+3)]` -/
def P14264734209822759777.Spec : Prop :=
  ∀ n, P14264734209822759777.a n = A073570 (n + 1)

theorem P14264734209822759777.correct : P14264734209822759777.Spec := by
  intro n
  simp only [A073570, Nat.add_sub_cancel, A073570.P14264734209822759777.f1, A073570.P14264734209822759777.a, A073570.P7558039498727251644.f1, A073570.P7558039498727251644.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073570

/-! ## A073570.P1316161055098987671

`A363695(n+1)-∑{d}[n+1, (#+1)*(#+2)*(#+3)/6]`
-/

namespace A073570.P1316161055098987671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363695 (n + 1) : ℚ) - ∑ d ∈ Nat.divisors (f1 n), ((d + 1) * (d + 2) * (d + 3) : ℚ) / 6

end

end A073570.P1316161055098987671

namespace A073570

/-- `A363695(n+1)-∑{d}[n+1, (#+1)*(#+2)*(#+3)/6]` -/
def P1316161055098987671.Spec : Prop :=
  ∀ n, P1316161055098987671.a n = (A073570 (n + 1) : ℚ)

end A073570

/-! ## A073570.P17830011831490228217

`A101289(n+1)-A363606(n+1)`
-/

namespace A073570.P17830011831490228217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101289 (n + 1) - A363606 (n + 1)

end

end A073570.P17830011831490228217

namespace A073570

/-- `A101289(n+1)-A363606(n+1)` -/
def P17830011831490228217.Spec : Prop :=
  ∀ n, P17830011831490228217.a n = A073570 (n + 1)

end A073570

/-! ## A073570.P12449563265293120436

`A363695(n+1)-A116963(n+1)`
-/

namespace A073570.P12449563265293120436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363695 (n + 1) - A116963 (n + 1)

end

end A073570.P12449563265293120436

namespace A073570

/-- `A363695(n+1)-A116963(n+1)` -/
def P12449563265293120436.Spec : Prop :=
  ∀ n, P12449563265293120436.a n = A073570 (n + 1)

end A073570

/-! ## A073570.P12635756524291892653

`∑{d}[n+1, A000005(#)*A117109((n+1)/#)]`
-/

namespace A073570.P12635756524291892653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A117109 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A073570.P12635756524291892653

namespace A073570

/-- `∑{d}[n+1, A000005(#)*A117109((n+1)/#)]` -/
def P12635756524291892653.Spec : Prop :=
  ∀ n, P12635756524291892653.a n = A073570 (n + 1)

end A073570

/-! ## A073570.P14489036983930518592

`∑{d}[n+1, A023900(#)*A343545((n+1)/#)]`
-/

namespace A073570.P14489036983930518592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A343545 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A073570.P14489036983930518592

namespace A073570

/-- `∑{d}[n+1, A023900(#)*A343545((n+1)/#)]` -/
def P14489036983930518592.Spec : Prop :=
  ∀ n, P14489036983930518592.a n = A073570 (n + 1)

end A073570

/-! ## A073570.P10847723802465353179

`∑{d}[n+1, A130054(#)*A343518((n+1)/#)]`
-/

namespace A073570.P10847723802465353179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A343518 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A073570.P10847723802465353179

namespace A073570

/-- `∑{d}[n+1, A130054(#)*A343518((n+1)/#)]` -/
def P10847723802465353179.Spec : Prop :=
  ∀ n, P10847723802465353179.a n = A073570 (n + 1)

end A073570

/-! ## A073570.P16336214687603600379

`∑{d}[n+1, A189923(#)*A366934((n+1)/#)]`
-/

namespace A073570.P16336214687603600379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189923 d * A366934 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A073570.P16336214687603600379

namespace A073570

/-- `∑{d}[n+1, A189923(#)*A366934((n+1)/#)]` -/
def P16336214687603600379.Spec : Prop :=
  ∀ n, P16336214687603600379.a n = A073570 (n + 1)

end A073570

/-! ## A073570.P16117410046313065214

`∑{d}[n+1, A099894(#-1)*A366814((n+1)/#)]`
-/

namespace A073570.P16117410046313065214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A366814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A073570.P16117410046313065214

namespace A073570

/-- `∑{d}[n+1, A099894(#-1)*A366814((n+1)/#)]` -/
def P16117410046313065214.Spec : Prop :=
  ∀ n, P16117410046313065214.a n = A073570 (n + 1)

end A073570

/-! ## A073570.P18161757184197726962

`A363696(n+1)-(A116963(n+1)+A101289(n+1))`
-/

namespace A073570.P18161757184197726962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363696 (n + 1) - (A116963 (n + 1) + A101289 (n + 1))

end

end A073570.P18161757184197726962

namespace A073570

/-- `A363696(n+1)-(A116963(n+1)+A101289(n+1))` -/
def P18161757184197726962.Spec : Prop :=
  ∀ n, P18161757184197726962.a n = A073570 (n + 1)

end A073570

/-! ## A073570.P17225451297626140047

`A116963(n+1)+A363605(n+1)-A363628(n+1)`
-/

namespace A073570.P17225451297626140047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116963 (n + 1) + (A363605 (n + 1) - A363628 (n + 1))

end

end A073570.P17225451297626140047

namespace A073570

/-- `A116963(n+1)+A363605(n+1)-A363628(n+1)` -/
def P17225451297626140047.Spec : Prop :=
  ∀ n, P17225451297626140047.a n = A073570 (n + 1)

end A073570

/-! ## A073570.P13871968774701256987

`A363696(n+1)-(A363695(n+1)+A363606(n+1))`
-/

namespace A073570.P13871968774701256987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363696 (n + 1) - (A363695 (n + 1) + A363606 (n + 1))

end

end A073570.P13871968774701256987

namespace A073570

/-- `A363696(n+1)-(A363695(n+1)+A363606(n+1))` -/
def P13871968774701256987.Spec : Prop :=
  ∀ n, P13871968774701256987.a n = A073570 (n + 1)

end A073570

/-! ## A073570.P18044535212590200399

`∑{d}[n+1, A145126(#)-1]`
-/

namespace A073570.P18044535212590200399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A145126 d - 1)

end

end A073570.P18044535212590200399

namespace A073570

/-- `∑{d}[n+1, A145126(#)-1]` -/
def P18044535212590200399.Spec : Prop :=
  ∀ n, P18044535212590200399.a n = A073570 (n + 1)

theorem P18044535212590200399.correct : P18044535212590200399.Spec := by
  intro n
  simp only [A073570, Nat.add_sub_cancel, A073570.P18044535212590200399.f1, A073570.P18044535212590200399.a, A073570.P7558039498727251644.f1, A073570.P7558039498727251644.a, A145126, A145126.P13807080772124324529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073570

/-! ## A073570.P4785349452100217993

`A363605(n+1)+A059358(n+1)`
-/

namespace A073570.P4785349452100217993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363605 (n + 1) + A059358 (n + 1)

end

end A073570.P4785349452100217993

namespace A073570

/-- `A363605(n+1)+A059358(n+1)` -/
def P4785349452100217993.Spec : Prop :=
  ∀ n, P4785349452100217993.a n = A073570 (n + 1)

end A073570

/-! ## A073570.P15838422834870685156

`∑{d}[n+1, A261721(A000217(#))]`
-/

namespace A073570.P15838422834870685156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A261721 (A000217 d).toNat

end

end A073570.P15838422834870685156

namespace A073570

/-- `∑{d}[n+1, A261721(A000217(#))]` -/
def P15838422834870685156.Spec : Prop :=
  ∀ n, P15838422834870685156.a n = A073570 (n + 1)

end A073570

/-!
# A073571: Irreducible trinomials: numbers n such that x^n + x^k + 1 is an irreducible polynomial (mod 2) for some k with 0 < k < n.

The programs for A073571, there is no canonical definition to state claims against.
-/

/-! ## A073571.P237011342967170737

`comp[A057486(n+1)-2]+2`
-/

namespace A073571.P237011342967170737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057486 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A073571.P237011342967170737

/-! ## A073571.P9523304519369549831

`eq[char[A057486(n+1)], A130706(n)]`
-/

namespace A073571.P9523304519369549831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057486 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A073571.P9523304519369549831

/-! ## A073571.P17725212049602000473

`eq[char[A057486(n+1)], A019590(n+1)]`
-/

namespace A073571.P17725212049602000473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057486 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A073571.P17725212049602000473

/-! ## A073571.P6361106425486265292

`eq[char[A057486(n+1)], A154955(n+1)]`
-/

namespace A073571.P6361106425486265292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057486 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A073571.P6361106425486265292

/-! ## A073571.P3898383660114784108

`eq[A000010(n+1)%2, char[A057486(n+1)]]`
-/

namespace A073571.P3898383660114784108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057486 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A073571.P3898383660114784108

/-! ## A073571.P8889906589864091476

`lt[atan(1), A057646(n+2)]+2`
-/

namespace A073571.P8889906589864091476
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057646 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 2

end

end A073571.P8889906589864091476

/-! ## A073571.P6560174394895728618

`lt[1, n*A057646(A233583(n+1))]`
-/

namespace A073571.P6560174394895728618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057646 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A073571.P6560174394895728618

/-!
# A073572: Largest k such that the arithmetic mean of phi(n),phi(n+1),....,phi(n+x) is an integer for any x 0<=x<=k.

The programs for A073572, there is no canonical definition to state claims against.
-/

/-! ## A073572.P8960922675579331259

`A000688(A347783(n+7))%A000032(n)`
-/

namespace A073572.P8960922675579331259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000688 (A347783 (n + 7)).toNat) (A000032 n)

end

end A073572.P8960922675579331259

/-! ## A073572.P6757502635579038551

`and(A000688(A347783(n+7)), A172426(n+1))`
-/

namespace A073572.P6757502635579038551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000688 (A347783 (n + 7)).toNat) (A172426 (n + 1))

end

end A073572.P6757502635579038551

/-! ## A073572.P8785044184038783107

`and(A000688(A347783(n+7)), A008611(2*n))`
-/

namespace A073572.P8785044184038783107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000688 (A347783 (n + 7)).toNat) (A008611 (2 * n))

end

end A073572.P8785044184038783107

/-!
# A073573: Numbers n such that n^3 + 4 is prime.

The programs for A073573, there is no canonical definition to state claims against.
-/

/-! ## A073573.P14388338114156034888

`floor(root(A201307(1+n), 3))`
-/

namespace A073573.P14388338114156034888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A201307 (1 + n) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A073573.P14388338114156034888

/-! ## A073573.P10851155234092213724

`ceil(root(A201307(n+1), 3))-A091338(n+1)²!`
-/

namespace A073573.P10851155234092213724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A201307 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ - (Nat.factorial (A091338 (n + 1) ^ 2).toNat : ℤ)

end

end A073573.P10851155234092213724

/-! ## A073573.P17330700340964703223

`ceil(root(A201307(n+1), 3))-(A000040(n+1)%2)!`
-/

namespace A073573.P17330700340964703223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A201307 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ - (Nat.factorial (Int.tmod (A000040 (n + 1)) 2).toNat : ℤ)

end

end A073573.P17330700340964703223

/-! ## A073573.P17428749586309491407

`ceil(root(A201307(n+1), 3))-A056594(2*n)²`
-/

namespace A073573.P17428749586309491407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A201307 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ - A056594 (2 * n) ^ 2

end

end A073573.P17428749586309491407

/-! ## A073573.P10883151639640632511

`A023443(ceil(root(A201307(n+1), 3)))`
-/

namespace A073573.P10883151639640632511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌈(A201307 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉.toNat

end

end A073573.P10883151639640632511

/-! ## A073573.P9181515822225728249

`ceil(root(A201307(n+1), 3))-A091338((n+1)²)!`
-/

namespace A073573.P9181515822225728249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A201307 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ - (Nat.factorial (A091338 ((n + 1) ^ 2)).toNat : ℤ)

end

end A073573.P9181515822225728249

/-!
# A073574: Numbers n such that n^3 + 6 is prime.

The programs for A073574, there is no canonical definition to state claims against.
-/

/-! ## A073574.P1928628393983465613

`floor(root(A201308(n+1), 3))`
-/

namespace A073574.P1928628393983465613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A201308 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A073574.P1928628393983465613

/-!
# A073575: Sum of factorial numbers dividing n.

The programs for A073575, the canonical program `A073575.P12510821698240124249` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073575 has offset 1).

The definition of A073575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073575.P14659675240795739288

`Δ[A153880(n)]-1`
-/

namespace A073575.P14659675240795739288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A073575.P14659675240795739288

namespace A073575

/-- `Δ[A153880(n)]-1` -/
def P14659675240795739288.Spec : Prop :=
  ∀ n, P14659675240795739288.a n = A073575 (n + 1)

end A073575

/-! ## A073575.P12510821698240124249

`∑{d}[n+1, #*A012245(#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073575

/-- `∑{d}[n+1, #*A012245(#)]` -/
def P12510821698240124249.Spec : Prop :=
  ∀ n, P12510821698240124249.a n = A073575 (n + 1)

theorem P12510821698240124249.correct : P12510821698240124249.Spec := by
  intro n
  simp only [A073575, Nat.add_sub_cancel]

end A073575

/-! ## A073575.P8193600900644378961

`A153880(n+1)-(A153880(n)+1)`
-/

namespace A073575.P8193600900644378961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (n + 1) - (A153880 n + 1)

end

end A073575.P8193600900644378961

namespace A073575

/-- `A153880(n+1)-(A153880(n)+1)` -/
def P8193600900644378961.Spec : Prop :=
  ∀ n, P8193600900644378961.a n = A073575 (n + 1)

end A073575

/-! ## A073575.P12112087354219952266

`Δ[A153880(n)+A022972(n)]`
-/

namespace A073575.P12112087354219952266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 n + A022972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073575.P12112087354219952266

namespace A073575

/-- `Δ[A153880(n)+A022972(n)]` -/
def P12112087354219952266.Spec : Prop :=
  ∀ n, P12112087354219952266.a n = A073575 (n + 1)

end A073575

/-! ## A073575.P13482803045500439312

`Δ[A153880(n)+A024000(n)]`
-/

namespace A073575.P13482803045500439312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 n + A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073575.P13482803045500439312

namespace A073575

/-- `Δ[A153880(n)+A024000(n)]` -/
def P13482803045500439312.Spec : Prop :=
  ∀ n, P13482803045500439312.a n = A073575 (n + 1)

end A073575

/-! ## A073575.P2497513972862856173

`Δ[lt[A275832(n), 2]]-1`
-/

namespace A073575.P2497513972862856173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275832 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A073575.P2497513972862856173

namespace A073575

/-- `Δ[lt[A275832(n), 2]]-1` -/
def P2497513972862856173.Spec : Prop :=
  ∀ n, P2497513972862856173.a n = A073575 (n + 1)

end A073575

/-! ## A073575.P2252946304469435761

`Δ[record[A276009(n)]]-1`
-/

namespace A073575.P2252946304469435761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A073575.P2252946304469435761

namespace A073575

/-- `Δ[record[A276009(n)]]-1` -/
def P2252946304469435761.Spec : Prop :=
  ∀ n, P2252946304469435761.a n = A073575 (n + 1)

end A073575

/-! ## A073575.P8145030053472039086

`Δ[A276009(A231720(n))]-1`
-/

namespace A073575.P8145030053472039086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 (A231720 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A073575.P8145030053472039086

namespace A073575

/-- `Δ[A276009(A231720(n))]-1` -/
def P8145030053472039086.Spec : Prop :=
  ∀ n, P8145030053472039086.a n = A073575 (n + 1)

end A073575

/-! ## A073575.P5916286529031645438

`A273670(A257684(A225901(n+1)+n))`
-/

namespace A073575.P5916286529031645438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 (A257684 (A225901 (n + 1) + (n : ℤ)).toNat).toNat

end

end A073575.P5916286529031645438

namespace A073575

/-- `A273670(A257684(A225901(n+1)+n))` -/
def P5916286529031645438.Spec : Prop :=
  ∀ n, P5916286529031645438.a n = A073575 (n + 1)

end A073575

/-! ## A073575.P2713017117642889638

`Δ[eq[0, A213890(n)]]-1`
-/

namespace A073575.P2713017117642889638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213890 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A073575.P2713017117642889638

namespace A073575

/-- `Δ[eq[0, A213890(n)]]-1` -/
def P2713017117642889638.Spec : Prop :=
  ∀ n, P2713017117642889638.a n = A073575 (n + 1)

end A073575

/-! ## A073575.P13490427061695706265

`Δ[A275846(A276340(n)+A276339(n))]-1`
-/

namespace A073575.P13490427061695706265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275846 (A276340 n + A276339 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A073575.P13490427061695706265

namespace A073575

/-- `Δ[A275846(A276340(n)+A276339(n))]-1` -/
def P13490427061695706265.Spec : Prop :=
  ∀ n, P13490427061695706265.a n = A073575 (n + 1)

end A073575

/-! ## A073575.P10341412554807647096

`A276075(A002110(A055396(A275733(n+1))))`
-/

namespace A073575.P10341412554807647096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276075 (A002110 (A055396 (A275733 (n + 1)).toNat).toNat).toNat

end

end A073575.P10341412554807647096

namespace A073575

/-- `A276075(A002110(A055396(A275733(n+1))))` -/
def P10341412554807647096.Spec : Prop :=
  ∀ n, P10341412554807647096.a n = A073575 (n + 1)

end A073575

/-! ## A073575.P12578717595401488020

`Δ[A277011(2*A277012(n))]-1`
-/

namespace A073575.P12578717595401488020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (2 * A277012 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A073575.P12578717595401488020

namespace A073575

/-- `Δ[A277011(2*A277012(n))]-1` -/
def P12578717595401488020.Spec : Prop :=
  ∀ n, P12578717595401488020.a n = A073575 (n + 1)

end A073575

/-!
# A073576: Number of partitions of n into squarefree parts.

The programs for A073576, there is no canonical definition to state claims against.
-/

/-! ## A073576.P10045874782264764546

`∑[A280127(n)]`
-/

namespace A073576.P10045874782264764546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073576.P10045874782264764546

/-! ## A073576.P8764429370110329339

`A280127(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A073576.P8764429370110329339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280127 n + a (A023443 n).toNat

end

end A073576.P8764429370110329339

/-! ## A073576.P12265953336572159426

`A280127(n)+a(A005408(n)-n-2)` with `a(0)=1`
-/

namespace A073576.P12265953336572159426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280127 n + a (A005408 n - (n : ℤ) - 2).toNat

end

end A073576.P12265953336572159426

/-! ## A073576.P6136278529749364026

`A280127(n)+a(n-A007318(C(2, n)))` with `a(0)=1`
-/

namespace A073576.P6136278529749364026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280127 n + a ((n : ℤ) - A007318 (Nat.choose 2 n)).toNat

end

end A073576.P6136278529749364026

/-! ## A073576.P16321448957488615498

`A280127(n)+gcd(3, A338341(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A073576.P16321448957488615498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280127 n + (Int.gcd 3 (A338341 (n + 1)) : ℤ) * a (n - 1)

end

end A073576.P16321448957488615498

/-!
# A073577: a(n) = 4*n^2 + 4*n - 1.

The programs for A073577, the canonical program `A073577.P5757622279188489472` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073577 has offset 1).

The definition of A073577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)²+4*(n+1)-1` (program `A073577.P5757622279188489472`, by `A073577.P5757622279188489472.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073577.P13147874874200609485

`ogf((7+2x-x^2)/(1-3x+3x^2-x^3))`
-/

namespace A073577.P13147874874200609485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 2, -1] [1, -3, 3, -1] n

end

end A073577.P13147874874200609485

namespace A073577

/-- `ogf((7+2x-x^2)/(1-3x+3x^2-x^3))` -/
def P13147874874200609485.Spec : Prop :=
  ∀ n, P13147874874200609485.a n = A073577 (n + 1)

end A073577

/-! ## A073577.P16188776665439397546

`(2*(n+1)+1)²-2`
-/

namespace A073577.P16188776665439397546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) + 1) ^ 2 : ℤ) - 2

end

end A073577.P16188776665439397546

namespace A073577

/-- `(2*(n+1)+1)²-2` -/
def P16188776665439397546.Spec : Prop :=
  ∀ n, P16188776665439397546.a n = A073577 (n + 1)

theorem P16188776665439397546.correct : P16188776665439397546.Spec := by
  intro n
  simp only [A073577, Nat.add_sub_cancel, A073577.P16188776665439397546.a, A073577.P5757622279188489472.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A073577

/-! ## A073577.P5757622279188489472

`4*(n+1)²+4*(n+1)-1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073577

/-- `4*(n+1)²+4*(n+1)-1` -/
def P5757622279188489472.Spec : Prop :=
  ∀ n, P5757622279188489472.a n = A073577 (n + 1)

theorem P5757622279188489472.correct : P5757622279188489472.Spec := by
  intro n
  simp only [A073577, Nat.add_sub_cancel]

end A073577

/-! ## A073577.P10279751280931994589

`∑[record[xor(7, n)]]+n`
-/

namespace A073577.P10279751280931994589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A073577.P10279751280931994589

namespace A073577

/-- `∑[record[xor(7, n)]]+n` -/
def P10279751280931994589.Spec : Prop :=
  ∀ n, (P10279751280931994589.a n : ℤ) = A073577 (n + 1)

end A073577

/-! ## A073577.P5814260947126451024

`filter[n²-2, #%2]`
-/

namespace A073577.P5814260947126451024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A073577.P5814260947126451024

namespace A073577

/-- `filter[n²-2, #%2]` -/
def P5814260947126451024.Spec : Prop :=
  ∀ n, P5814260947126451024.a n = A073577 (n + 1)

end A073577

/-! ## A073577.P13083720872595205255

`or(7, 8*(∑[n]+n))`
-/

namespace A073577.P13083720872595205255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 (8 * (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A073577.P13083720872595205255

namespace A073577

/-- `or(7, 8*(∑[n]+n))` -/
def P13083720872595205255.Spec : Prop :=
  ∀ n, (P13083720872595205255.a n : ℤ) = A073577 (n + 1)

end A073577

/-! ## A073577.P4510269155086737917

`xor(7, 8*(∑[n]+n))`
-/

namespace A073577.P4510269155086737917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 (8 * (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A073577.P4510269155086737917

namespace A073577

/-- `xor(7, 8*(∑[n]+n))` -/
def P4510269155086737917.Spec : Prop :=
  ∀ n, (P4510269155086737917.a n : ℤ) = A073577 (n + 1)

end A073577

/-! ## A073577.P12402943428886731860

`∑[a(n-1)+8]` with `a(0)=7, a(1)=16`
-/

namespace A073577.P12402943428886731860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 16] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073577.P12402943428886731860

namespace A073577

/-- `∑[a(n-1)+8]` -/
def P12402943428886731860.Spec : Prop :=
  ∀ n, (P12402943428886731860.a n : ℤ) = A073577 (n + 1)

end A073577

/-! ## A073577.P703680317942393468

`record[(2*n-3)²-2]`
-/

namespace A073577.P703680317942393468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 3) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073577.P703680317942393468

namespace A073577

/-- `record[(2*n-3)²-2]` -/
def P703680317942393468.Spec : Prop :=
  ∀ n, P703680317942393468.a n = A073577 (n + 1)

end A073577

/-! ## A073577.P16548693716953658985

`∑[ogf((7+2x-x^2)/(1-2x+x^2))]`
-/

namespace A073577.P16548693716953658985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 2, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073577.P16548693716953658985

namespace A073577

/-- `∑[ogf((7+2x-x^2)/(1-2x+x^2))]` -/
def P16548693716953658985.Spec : Prop :=
  ∀ n, P16548693716953658985.a n = A073577 (n + 1)

end A073577

/-! ## A073577.P14255692218717319025

`filter[(n+2)²-2, gcd(2, #)]`
-/

namespace A073577.P14255692218717319025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.gcd 2 (f1 j) = 1) n)

end

end A073577.P14255692218717319025

namespace A073577

/-- `filter[(n+2)²-2, gcd(2, #)]` -/
def P14255692218717319025.Spec : Prop :=
  ∀ n, P14255692218717319025.a n = A073577 (n + 1)

end A073577

/-! ## A073577.P2073870141458895747

`filter[(n+2)²-2, and(1, #)]`
-/

namespace A073577.P2073870141458895747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.land 1 (f1 j) = 1) n)

end

end A073577.P2073870141458895747

namespace A073577

/-- `filter[(n+2)²-2, and(1, #)]` -/
def P2073870141458895747.Spec : Prop :=
  ∀ n, P2073870141458895747.a n = A073577 (n + 1)

end A073577

/-! ## A073577.P13686255450427913180

`abs(1-4*lcm(n+1, n+2))`
-/

namespace A073577.P13686255450427913180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (4 * Nat.lcm (n + 1) (n + 2) : ℤ)|

end

end A073577.P13686255450427913180

namespace A073577

/-- `abs(1-4*lcm(n+1, n+2))` -/
def P13686255450427913180.Spec : Prop :=
  ∀ n, P13686255450427913180.a n = A073577 (n + 1)

end A073577

/-! ## A073577.P16045462219710749636

`abs(a(n-1)+8*(n+1))` with `a(0)=7`
-/

namespace A073577.P16045462219710749636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 8 * (n + 1)

end

end A073577.P16045462219710749636

namespace A073577

/-- `abs(a(n-1)+8*(n+1))` -/
def P16045462219710749636.Spec : Prop :=
  ∀ n, (P16045462219710749636.a n : ℤ) = A073577 (n + 1)

theorem P16045462219710749636.correct : P16045462219710749636.Spec := by
  intro n
  induction n with
  | zero => simp [A073577, A073577.P16045462219710749636.a, A073577.P5757622279188489472.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A073577, Nat.add_sub_cancel, A073577.P16045462219710749636.a, A073577.P5757622279188489472.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A073577

/-! ## A073577.P12544657153493362301

`Δ[C(2*n+3, 3)-2*n]`
-/

namespace A073577.P12544657153493362301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 3) 3 : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073577.P12544657153493362301

namespace A073577

/-- `Δ[C(2*n+3, 3)-2*n]` -/
def P12544657153493362301.Spec : Prop :=
  ∀ n, P12544657153493362301.a n = A073577 (n + 1)

theorem P12544657153493362301.correct : P12544657153493362301.Spec := by
  intro n
  simp only [A073577, Nat.add_sub_cancel, A073577.P12544657153493362301.f1, A073577.P12544657153493362301.a, A073577.P5757622279188489472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073577

/-! ## A073577.P667945137993527476

`floor(a(n-1)+8*(n+1))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A073577.P667945137993527476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 8 * (n + 1)

end

end A073577.P667945137993527476

namespace A073577

/-- `floor(a(n-1)+8*(n+1))` -/
def P667945137993527476.Spec : Prop :=
  ∀ n, (P667945137993527476.a n : ℤ) = A073577 (n + 1)

theorem P667945137993527476.correct : P667945137993527476.Spec := by
  intro n
  induction n with
  | zero => simp [A073577, A073577.P667945137993527476.a, A073577.P5757622279188489472.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A073577, Nat.add_sub_cancel, A073577.P667945137993527476.a, A073577.P5757622279188489472.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A073577

/-! ## A073577.P4150110609236689441

`ceil(a(n-1)+8*(n+1))` with `a(0)=7`

`ceil` is left out, it is the identity on integers.
-/

namespace A073577.P4150110609236689441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 8 * (n + 1)

end

end A073577.P4150110609236689441

namespace A073577

/-- `ceil(a(n-1)+8*(n+1))` -/
def P4150110609236689441.Spec : Prop :=
  ∀ n, (P4150110609236689441.a n : ℤ) = A073577 (n + 1)

theorem P4150110609236689441.correct : P4150110609236689441.Spec := by
  intro n
  induction n with
  | zero => simp [A073577, A073577.P4150110609236689441.a, A073577.P5757622279188489472.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A073577, Nat.add_sub_cancel, A073577.P4150110609236689441.a, A073577.P5757622279188489472.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A073577

/-! ## A073577.P7786742274516239127

`round(a(n-1)+8*(n+1))` with `a(0)=7`

`round` is left out, it is the identity on integers.
-/

namespace A073577.P7786742274516239127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 8 * (n + 1)

end

end A073577.P7786742274516239127

namespace A073577

/-- `round(a(n-1)+8*(n+1))` -/
def P7786742274516239127.Spec : Prop :=
  ∀ n, (P7786742274516239127.a n : ℤ) = A073577 (n + 1)

theorem P7786742274516239127.correct : P7786742274516239127.Spec := by
  intro n
  induction n with
  | zero => simp [A073577, A073577.P7786742274516239127.a, A073577.P5757622279188489472.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A073577, Nat.add_sub_cancel, A073577.P7786742274516239127.a, A073577.P5757622279188489472.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A073577

/-! ## A073577.P14603526380073059942

`8*(a(n-1)/8+n+1)` with `a(0)=7`
-/

namespace A073577.P14603526380073059942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  8 * (a (n - 1) / 8 + (n + 1 : ℚ))

end

end A073577.P14603526380073059942

namespace A073577

/-- `8*(a(n-1)/8+n+1)` -/
def P14603526380073059942.Spec : Prop :=
  ∀ n, P14603526380073059942.a n = (A073577 (n + 1) : ℚ)

theorem P14603526380073059942.correct : P14603526380073059942.Spec := by
  intro n
  induction n with
  | zero => simp [A073577, A073577.P14603526380073059942.a, A073577.P5757622279188489472.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A073577, Nat.add_sub_cancel, A073577.P14603526380073059942.a, A073577.P5757622279188489472.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A073577

/-! ## A073577.P452825383545483562

`Δ[∑[(2*n)²]+C(2*n+1, 2)]`
-/

namespace A073577.P452825383545483562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A073577.P452825383545483562

namespace A073577

/-- `Δ[∑[(2*n)²]+C(2*n+1, 2)]` -/
def P452825383545483562.Spec : Prop :=
  ∀ n, P452825383545483562.a n = A073577 (n + 1)

end A073577

/-!
# A073578: a(n) = Sum_{k=1..n} mu(2*k).

The programs for A073578, the canonical program `A073578.P5875671179012432649` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073578 has offset 1).

The definition of A073578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073578.P952382511206817672

`∑[-(∏{e}[n+1, -floor(1/#)]%gcd(4, n))]`
-/

namespace A073578.P952382511206817672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (∏ p ∈ Nat.primeFactors (f2 n), (-⌊1 / (Nat.factorization (f2 n) p : ℚ)⌋)) (Nat.gcd 4 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073578.P952382511206817672

namespace A073578

/-- `∑[-(∏{e}[n+1, -floor(1/#)]%gcd(4, n))]` -/
def P952382511206817672.Spec : Prop :=
  ∀ n, P952382511206817672.a n = A073578 (n + 1)

end A073578

/-! ## A073578.P15834578324688392101

`∑[-(((n+1)*round(1/∏{e}[n+1, -#²]))%2)]`
-/

namespace A073578.P15834578324688392101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod ((n + 1 : ℤ) * SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorization (f2 n) p ^ 2 : ℤ)) : ℤ) : ℚ))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073578.P15834578324688392101

namespace A073578

/-- `∑[-(((n+1)*round(1/∏{e}[n+1, -#²]))%2)]` -/
def P15834578324688392101.Spec : Prop :=
  ∀ n, P15834578324688392101.a n = A073578 (n + 1)

end A073578

/-! ## A073578.P16432474244382682930

`-∑[(C(∏{p}[n+1, #], n)*∏{p}[n+1, -#])%2]`
-/

namespace A073578.P16432474244382682930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n : ℤ) * (∏ p ∈ Nat.primeFactors (f3 n), (-(p : ℤ)))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073578.P16432474244382682930

namespace A073578

/-- `-∑[(C(∏{p}[n+1, #], n)*∏{p}[n+1, -#])%2]` -/
def P16432474244382682930.Spec : Prop :=
  ∀ n, P16432474244382682930.a n = A073578 (n + 1)

end A073578

/-! ## A073578.P4881364234004581710

`∑[A099991(n+1)]`
-/

namespace A073578.P4881364234004581710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073578.P4881364234004581710

namespace A073578

/-- `∑[A099991(n+1)]` -/
def P4881364234004581710.Spec : Prop :=
  ∀ n, P4881364234004581710.a n = A073578 (n + 1)

end A073578

/-! ## A073578.P6573513488808089131

`∑[-A087003(n+1)]`
-/

namespace A073578.P6573513488808089131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A087003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073578.P6573513488808089131

namespace A073578

/-- `∑[-A087003(n+1)]` -/
def P6573513488808089131.Spec : Prop :=
  ∀ n, P6573513488808089131.a n = A073578 (n + 1)

end A073578

/-! ## A073578.P13233268009057833232

`∑[A008683(2*(n+1))]`
-/

namespace A073578.P13233268009057833232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073578.P13233268009057833232

namespace A073578

/-- `∑[A008683(2*(n+1))]` -/
def P13233268009057833232.Spec : Prop :=
  ∀ n, P13233268009057833232.a n = A073578 (n + 1)

end A073578

/-! ## A073578.P18376661386407316865

`∑[A359591(4*(n+1))]`
-/

namespace A073578.P18376661386407316865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359591 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073578.P18376661386407316865

namespace A073578

/-- `∑[A359591(4*(n+1))]` -/
def P18376661386407316865.Spec : Prop :=
  ∀ n, P18376661386407316865.a n = A073578 (n + 1)

end A073578

/-! ## A073578.P11239572250122222090

`∑[-A292273(2*(n+1))]`
-/

namespace A073578.P11239572250122222090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A292273 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073578.P11239572250122222090

namespace A073578

/-- `∑[-A292273(2*(n+1))]` -/
def P11239572250122222090.Spec : Prop :=
  ∀ n, P11239572250122222090.a n = A073578 (n + 1)

end A073578

/-! ## A073578.P12366816563908940323

`∑[A008683(n+2+n)^3]`
-/

namespace A073578.P12366816563908940323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2 + n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073578.P12366816563908940323

namespace A073578

/-- `∑[A008683(n+2+n)^3]` -/
def P12366816563908940323.Spec : Prop :=
  ∀ n, P12366816563908940323.a n = A073578 (n + 1)

end A073578

/-! ## A073578.P3627404412117253609

`∑[A008683(Δ[n²]+1)-1]+n+1`
-/

namespace A073578.P3627404412117253609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A073578.P3627404412117253609

namespace A073578

/-- `∑[A008683(Δ[n²]+1)-1]+n+1` -/
def P3627404412117253609.Spec : Prop :=
  ∀ n, P3627404412117253609.a n = A073578 (n + 1)

end A073578

/-! ## A073578.P2696568915257340747

`∑[(n-A109613(n))*A092673(n+1)]`
-/

namespace A073578.P2696568915257340747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A109613 n) * A092673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073578.P2696568915257340747

namespace A073578

/-- `∑[(n-A109613(n))*A092673(n+1)]` -/
def P2696568915257340747.Spec : Prop :=
  ∀ n, P2696568915257340747.a n = A073578 (n + 1)

end A073578

/-! ## A073578.P5875671179012432649

`∑[∑[A033999(n+1)]*A067856(2*(n+1))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073578

/-- `∑[∑[A033999(n+1)]*A067856(2*(n+1))]` -/
def P5875671179012432649.Spec : Prop :=
  ∀ n, P5875671179012432649.a n = A073578 (n + 1)

theorem P5875671179012432649.correct : P5875671179012432649.Spec := by
  intro n
  simp only [A073578, Nat.add_sub_cancel]

end A073578

/-! ## A073578.P2934759847124141109

`∑[A292273(2*n+1)-A292273(2*(n+1))]`
-/

namespace A073578.P2934759847124141109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292273 (2 * n + 1) - A292273 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073578.P2934759847124141109

namespace A073578

/-- `∑[A292273(2*n+1)-A292273(2*(n+1))]` -/
def P2934759847124141109.Spec : Prop :=
  ∀ n, P2934759847124141109.a n = A073578 (n + 1)

end A073578

/-! ## A073578.P11853359730029974641

`∑[A007423(2*(n+1))-1]`
-/

namespace A073578.P11853359730029974641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073578.P11853359730029974641

namespace A073578

/-- `∑[A007423(2*(n+1))-1]` -/
def P11853359730029974641.Spec : Prop :=
  ∀ n, P11853359730029974641.a n = A073578 (n + 1)

end A073578

/-! ## A073578.P3551392375038485291

`∑[A080847(2*(n+1))-2]`
-/

namespace A073578.P3551392375038485291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (2 * (n + 1)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073578.P3551392375038485291

namespace A073578

/-- `∑[A080847(2*(n+1))-2]` -/
def P3551392375038485291.Spec : Prop :=
  ∀ n, P3551392375038485291.a n = A073578 (n + 1)

end A073578

/-! ## A073578.P5689241826219526348

`∑[2-A129979(2*(n+1))]`
-/

namespace A073578.P5689241826219526348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A129979 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073578.P5689241826219526348

namespace A073578

/-- `∑[2-A129979(2*(n+1))]` -/
def P5689241826219526348.Spec : Prop :=
  ∀ n, P5689241826219526348.a n = A073578 (n + 1)

end A073578

/-! ## A073578.P18021205199927569726

`∑[round(acot(A162512(2*(n+1))))]`
-/

namespace A073578.P18021205199927569726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A162512 (2 * (n + 1)) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073578.P18021205199927569726

namespace A073578

/-- `∑[round(acot(A162512(2*(n+1))))]` -/
def P18021205199927569726.Spec : Prop :=
  ∀ n, P18021205199927569726.a n = A073578 (n + 1)

end A073578

/-! ## A073578.P1846824565608630962

`∑[floor(A262804(2*(n+1))/2)]`
-/

namespace A073578.P1846824565608630962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262804 (2 * (n + 1)) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073578.P1846824565608630962

namespace A073578

/-- `∑[floor(A262804(2*(n+1))/2)]` -/
def P1846824565608630962.Spec : Prop :=
  ∀ n, P1846824565608630962.a n = A073578 (n + 1)

end A073578

/-! ## A073578.P13162376849655762947

`∑[A004718(A074823(2*(n+1)))]`
-/

namespace A073578.P13162376849655762947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A074823 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073578.P13162376849655762947

namespace A073578

/-- `∑[A004718(A074823(2*(n+1)))]` -/
def P13162376849655762947.Spec : Prop :=
  ∀ n, P13162376849655762947.a n = A073578 (n + 1)

end A073578

/-! ## A073578.P14915342697916139667

`∑[A154271(A145501(2*(n+1)))]`
-/

namespace A073578.P14915342697916139667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (A145501 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073578.P14915342697916139667

namespace A073578

/-- `∑[A154271(A145501(2*(n+1)))]` -/
def P14915342697916139667.Spec : Prop :=
  ∀ n, P14915342697916139667.a n = A073578 (n + 1)

end A073578

/-!
# A073579: Signed primes: if prime(n) even, a(n) = 0; if prime(n) == 1 (mod 4), a(n) = prime(n); if prime(n) == -1 (mod 4), a(n) = -prime(n).

The programs for A073579, the canonical program `A073579.P1739749270450137857` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073579 has offset 1).

The definition of A073579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073579.P1739749270450137857

`A000040(n+1)*A070750(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073579

/-- `A000040(n+1)*A070750(n+1)` -/
def P1739749270450137857.Spec : Prop :=
  ∀ n, P1739749270450137857.a n = A073579 (n + 1)

theorem P1739749270450137857.correct : P1739749270450137857.Spec := by
  intro n
  simp only [A073579, Nat.add_sub_cancel]

end A073579

/-! ## A073579.P13363498654966632163

`A006005(n+1)*A070750(n+1)`
-/

namespace A073579.P13363498654966632163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) * A070750 (n + 1)

end

end A073579.P13363498654966632163

namespace A073579

/-- `A006005(n+1)*A070750(n+1)` -/
def P13363498654966632163.Spec : Prop :=
  ∀ n, P13363498654966632163.a n = A073579 (n + 1)

end A073579

/-! ## A073579.P11380477932155573991

`sqrt(A001248(n+1))*A070750(n+1)`
-/

namespace A073579.P11380477932155573991
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A070750 (n + 1) : ℝ)

end

end A073579.P11380477932155573991

namespace A073579

/-- `sqrt(A001248(n+1))*A070750(n+1)` -/
def P11380477932155573991.Spec : Prop :=
  ∀ n, P11380477932155573991.a n = (A073579 (n + 1) : ℝ)

end A073579

/-! ## A073579.P7917149924102252503

`(A006093(n+1)+1)*A070750(n+1)`
-/

namespace A073579.P7917149924102252503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A070750 (n + 1)

end

end A073579.P7917149924102252503

namespace A073579

/-- `(A006093(n+1)+1)*A070750(n+1)` -/
def P7917149924102252503.Spec : Prop :=
  ∀ n, P7917149924102252503.a n = A073579 (n + 1)

theorem P7917149924102252503.correct : P7917149924102252503.Spec := by
  intro n
  simp only [A073579, Nat.add_sub_cancel, A073579.P7917149924102252503.a, A073579.P1739749270450137857.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A070750, A070750.P13196581040963341553.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073579

/-! ## A073579.P5700155493095437961

`(2-A039702(n+1))*A000040(n+1)`
-/

namespace A073579.P5700155493095437961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A039702 (n + 1)) * A000040 (n + 1)

end

end A073579.P5700155493095437961

namespace A073579

/-- `(2-A039702(n+1))*A000040(n+1)` -/
def P5700155493095437961.Spec : Prop :=
  ∀ n, P5700155493095437961.a n = A073579 (n + 1)

theorem P5700155493095437961.correct : P5700155493095437961.Spec := by
  intro n
  simp only [A073579, Nat.add_sub_cancel, A073579.P5700155493095437961.a, A073579.P1739749270450137857.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039702, A039702.P9525350324369181383.a, A070750, A070750.P13196581040963341553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073579

/-! ## A073579.P6087279864642135059

`(A052147(n+1)-2)*A070750(n+1)`
-/

namespace A073579.P6087279864642135059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052147 (n + 1) - 2) * A070750 (n + 1)

end

end A073579.P6087279864642135059

namespace A073579

/-- `(A052147(n+1)-2)*A070750(n+1)` -/
def P6087279864642135059.Spec : Prop :=
  ∀ n, P6087279864642135059.a n = A073579 (n + 1)

theorem P6087279864642135059.correct : P6087279864642135059.Spec := by
  intro n
  simp only [A073579, Nat.add_sub_cancel, A073579.P6087279864642135059.a, A073579.P1739749270450137857.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, A070750, A070750.P13196581040963341553.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073579

/-! ## A073579.P3246950388409110299

`A070750(n+1)*A082542(n+1)-A057427(n)`
-/

namespace A073579.P3246950388409110299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1) * A082542 (n + 1) - A057427 n

end

end A073579.P3246950388409110299

namespace A073579

/-- `A070750(n+1)*A082542(n+1)-A057427(n)` -/
def P3246950388409110299.Spec : Prop :=
  ∀ n, P3246950388409110299.a n = A073579 (n + 1)

end A073579

/-! ## A073579.P16489507536061084996

`(A076342(n+1)+A070750(n+1))*A070750(n+1)`
-/

namespace A073579.P16489507536061084996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076342 (n + 1) + A070750 (n + 1)) * A070750 (n + 1)

end

end A073579.P16489507536061084996

namespace A073579

/-- `(A076342(n+1)+A070750(n+1))*A070750(n+1)` -/
def P16489507536061084996.Spec : Prop :=
  ∀ n, P16489507536061084996.a n = A073579 (n + 1)

theorem P16489507536061084996.correct : P16489507536061084996.Spec := by
  intro n
  simp only [A073579, Nat.add_sub_cancel, A073579.P16489507536061084996.a, A073579.P1739749270450137857.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070750, A070750.P13196581040963341553.a, A076342, A076342.P17182392044292318344.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073579

/-! ## A073579.P2353098254974108622

`(A000040(n+1)-A076342(n+1))*A000040(n+1)`
-/

namespace A073579.P2353098254974108622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A076342 (n + 1)) * A000040 (n + 1)

end

end A073579.P2353098254974108622

namespace A073579

/-- `(A000040(n+1)-A076342(n+1))*A000040(n+1)` -/
def P2353098254974108622.Spec : Prop :=
  ∀ n, P2353098254974108622.a n = A073579 (n + 1)

theorem P2353098254974108622.correct : P2353098254974108622.Spec := by
  intro n
  simp only [A073579, Nat.add_sub_cancel, A073579.P2353098254974108622.a, A073579.P1739749270450137857.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070750, A070750.P13196581040963341553.a, A076342, A076342.P17182392044292318344.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073579

/-! ## A073579.P12172433826099328832

`(A082542(n+1)-A000040(n+1))*A000040(n+1)`
-/

namespace A073579.P12172433826099328832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082542 (n + 1) - A000040 (n + 1)) * A000040 (n + 1)

end

end A073579.P12172433826099328832

namespace A073579

/-- `(A082542(n+1)-A000040(n+1))*A000040(n+1)` -/
def P12172433826099328832.Spec : Prop :=
  ∀ n, P12172433826099328832.a n = A073579 (n + 1)

theorem P12172433826099328832.correct : P12172433826099328832.Spec := by
  intro n
  simp only [A073579, Nat.add_sub_cancel, A073579.P12172433826099328832.a, A073579.P1739749270450137857.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070750, A070750.P13196581040963341553.a, A082542, A082542.P17184651886074543973.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073579

/-! ## A073579.P16911517712231881002

`(A098033(n+1)-A100672(n+1))*A000040(n+1)`
-/

namespace A073579.P16911517712231881002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098033 (n + 1) - A100672 (n + 1)) * A000040 (n + 1)

end

end A073579.P16911517712231881002

namespace A073579

/-- `(A098033(n+1)-A100672(n+1))*A000040(n+1)` -/
def P16911517712231881002.Spec : Prop :=
  ∀ n, P16911517712231881002.a n = A073579 (n + 1)

end A073579

/-! ## A073579.P7819980620434500772

`A070750(n+1)*A158611(n+3)`
-/

namespace A073579.P7819980620434500772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1) * A158611 (n + 3)

end

end A073579.P7819980620434500772

namespace A073579

/-- `A070750(n+1)*A158611(n+3)` -/
def P7819980620434500772.Spec : Prop :=
  ∀ n, P7819980620434500772.a n = A073579 (n + 1)

end A073579

/-! ## A073579.P16594941920027636294

`record[A006530(n+2)]*A070750(n+1)`
-/

namespace A073579.P16594941920027636294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A070750 (n + 1)

end

end A073579.P16594941920027636294

namespace A073579

/-- `record[A006530(n+2)]*A070750(n+1)` -/
def P16594941920027636294.Spec : Prop :=
  ∀ n, P16594941920027636294.a n = A073579 (n + 1)

end A073579

/-! ## A073579.P13621062291396278298

`record[A020639(n+2)]*A070750(n+1)`
-/

namespace A073579.P13621062291396278298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A070750 (n + 1)

end

end A073579.P13621062291396278298

namespace A073579

/-- `record[A020639(n+2)]*A070750(n+1)` -/
def P13621062291396278298.Spec : Prop :=
  ∀ n, P13621062291396278298.a n = A073579 (n + 1)

end A073579

/-! ## A073579.P11055069344575957208

`(2-A039702(n+1))*p?[A039698(n+1)]`
-/

namespace A073579.P11055069344575957208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A039702 (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073579.P11055069344575957208

namespace A073579

/-- `(2-A039702(n+1))*p?[A039698(n+1)]` -/
def P11055069344575957208.Spec : Prop :=
  ∀ n, P11055069344575957208.a n = A073579 (n + 1)

end A073579

/-! ## A073579.P16864849668277008788

`(lt[A000005(n+2), 3]+2)*A070750(n+1)`
-/

namespace A073579.P16864849668277008788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 : ℤ) * A070750 (n + 1)

end

end A073579.P16864849668277008788

namespace A073579

/-- `(lt[A000005(n+2), 3]+2)*A070750(n+1)` -/
def P16864849668277008788.Spec : Prop :=
  ∀ n, P16864849668277008788.a n = A073579 (n + 1)

end A073579

/-! ## A073579.P16710814662263350020

`(eq[n, A000010(n+1)]+1)*A070750(n+1)`
-/

namespace A073579.P16710814662263350020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) * A070750 (n + 1)

end

end A073579.P16710814662263350020

namespace A073579

/-- `(eq[n, A000010(n+1)]+1)*A070750(n+1)` -/
def P16710814662263350020.Spec : Prop :=
  ∀ n, P16710814662263350020.a n = A073579 (n + 1)

end A073579

/-! ## A073579.P16438851471268516308

`(eq[n, A000010(n+1)]+1)*(1-A006093(n+1)%4)`
-/

namespace A073579.P16438851471268516308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) * (1 - Int.tmod (A006093 (n + 1)) 4)

end

end A073579.P16438851471268516308

namespace A073579

/-- `(eq[n, A000010(n+1)]+1)*(1-A006093(n+1)%4)` -/
def P16438851471268516308.Spec : Prop :=
  ∀ n, P16438851471268516308.a n = A073579 (n + 1)

end A073579

/-! ## A073579.P2060626701521977413

`(2-A039702(n+1))*p?[A207790(n+1)]`
-/

namespace A073579.P2060626701521977413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A039702 (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073579.P2060626701521977413

namespace A073579

/-- `(2-A039702(n+1))*p?[A207790(n+1)]` -/
def P2060626701521977413.Spec : Prop :=
  ∀ n, P2060626701521977413.a n = A073579 (n + 1)

end A073579

/-! ## A073579.P3072249811853724891

`A050457(A000040(n+1))-1`
-/

namespace A073579.P3072249811853724891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050457 (A000040 (n + 1)).toNat - 1

end

end A073579.P3072249811853724891

namespace A073579

/-- `A050457(A000040(n+1))-1` -/
def P3072249811853724891.Spec : Prop :=
  ∀ n, P3072249811853724891.a n = A073579 (n + 1)

end A073579

/-!
# A073581: Factorials successively exponentiated.

The programs for A073581, there is no canonical definition to state claims against.
-/

/-! ## A073581.P15401026478121955925

`n!^a(n-1)` with `a(0)=1`
-/

namespace A073581.P15401026478121955925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial n ^ a (n - 1)

end

end A073581.P15401026478121955925

/-!
# A073582: Numbers k such that S(k) = k/2, where S(k) is the Kempner function A002034.

The programs for A073582, the canonical program `A073582.P16120339472927722873` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073582 has offset 1).

The definition of A073582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073582.P16120339472927722873

`2*(A123123(n+1)-2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073582

/-- `2*(A123123(n+1)-2)` -/
def P16120339472927722873.Spec : Prop :=
  ∀ n, P16120339472927722873.a n = A073582 (n + 1)

theorem P16120339472927722873.correct : P16120339472927722873.Spec := by
  intro n
  simp only [A073582, Nat.add_sub_cancel]

end A073582

/-! ## A073582.P9872591666748607484

`A166496(n+1)+A134824(n)`
-/

namespace A073582.P9872591666748607484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1) + A134824 n

end

end A073582.P9872591666748607484

namespace A073582

/-- `A166496(n+1)+A134824(n)` -/
def P9872591666748607484.Spec : Prop :=
  ∀ n, P9872591666748607484.a n = A073582 (n + 1)

end A073582

/-! ## A073582.P8901887563394568166

`A001748(n+1)-A171577(n+1)`
-/

namespace A073582.P8901887563394568166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - A171577 (n + 1)

end

end A073582.P8901887563394568166

namespace A073582

/-- `A001748(n+1)-A171577(n+1)` -/
def P8901887563394568166.Spec : Prop :=
  ∀ n, P8901887563394568166.a n = A073582 (n + 1)

end A073582

/-! ## A073582.P1573348929881530882

`A161344(2+n)`
-/

namespace A073582.P1573348929881530882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161344 (2 + n)

end

end A073582.P1573348929881530882

namespace A073582

/-- `A161344(2+n)` -/
def P1573348929881530882.Spec : Prop :=
  ∀ n, P1573348929881530882.a n = A073582 (n + 1)

end A073582

/-! ## A073582.P12147220169829132328

`2*A175787(n+2)`
-/

namespace A073582.P12147220169829132328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175787 (n + 2)

end

end A073582.P12147220169829132328

namespace A073582

/-- `2*A175787(n+2)` -/
def P12147220169829132328.Spec : Prop :=
  ∀ n, P12147220169829132328.a n = A073582 (n + 1)

end A073582

/-! ## A073582.P4949309662942140885

`A074845(A326178(n+1))`
-/

namespace A073582.P4949309662942140885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (A326178 (n + 1)).toNat

end

end A073582.P4949309662942140885

namespace A073582

/-- `A074845(A326178(n+1))` -/
def P4949309662942140885.Spec : Prop :=
  ∀ n, P4949309662942140885.a n = A073582 (n + 1)

end A073582

/-! ## A073582.P382429495566971111

`2*A046022(3+n)`
-/

namespace A073582.P382429495566971111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046022 (3 + n)

end

end A073582.P382429495566971111

namespace A073582

/-- `2*A046022(3+n)` -/
def P382429495566971111.Spec : Prop :=
  ∀ n, P382429495566971111.a n = A073582 (n + 1)

end A073582

/-! ## A073582.P10686752532831897520

`A175787(n+2)+A046022(n+3)`
-/

namespace A073582.P10686752532831897520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 2) + A046022 (n + 3)

end

end A073582.P10686752532831897520

namespace A073582

/-- `A175787(n+2)+A046022(n+3)` -/
def P10686752532831897520.Spec : Prop :=
  ∀ n, P10686752532831897520.a n = A073582 (n + 1)

end A073582

/-! ## A073582.P15448288117729234849

`2*(xor(1, p?[xor(1, n)])+3)-4`
-/

namespace A073582.P15448288117729234849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 3) : ℤ) - 4

end

end A073582.P15448288117729234849

namespace A073582

/-- `2*(xor(1, p?[xor(1, n)])+3)-4` -/
def P15448288117729234849.Spec : Prop :=
  ∀ n, P15448288117729234849.a n = A073582 (n + 1)

end A073582

/-! ## A073582.P14143083568923866166

`record[2*A001414(n+3)]`
-/

namespace A073582.P14143083568923866166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001414 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073582.P14143083568923866166

namespace A073582

/-- `record[2*A001414(n+3)]` -/
def P14143083568923866166.Spec : Prop :=
  ∀ n, P14143083568923866166.a n = A073582 (n + 1)

end A073582

/-! ## A073582.P1821738232076232412

`∩[2*n, A074845(n+1)]`
-/

namespace A073582.P1821738232076232412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073582.P1821738232076232412

namespace A073582

/-- `∩[2*n, A074845(n+1)]` -/
def P1821738232076232412.Spec : Prop :=
  ∀ n, (P1821738232076232412.a n : ℤ) = A073582 (n + 1)

end A073582

/-! ## A073582.P11097858789046454172

`2*(lt[n, A000010(n+3)]+3)`
-/

namespace A073582.P11097858789046454172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3)

end

end A073582.P11097858789046454172

namespace A073582

/-- `2*(lt[n, A000010(n+3)]+3)` -/
def P11097858789046454172.Spec : Prop :=
  ∀ n, (P11097858789046454172.a n : ℤ) = A073582 (n + 1)

end A073582

/-! ## A073582.P3578446467024412959

`2*(lt[n, A006530(n+3)]+3)`
-/

namespace A073582.P3578446467024412959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3)

end

end A073582.P3578446467024412959

namespace A073582

/-- `2*(lt[n, A006530(n+3)]+3)` -/
def P3578446467024412959.Spec : Prop :=
  ∀ n, (P3578446467024412959.a n : ℤ) = A073582 (n + 1)

end A073582

/-! ## A073582.P2573928540807876740

`2*(lt[n, A020639(n+3)]+3)`
-/

namespace A073582.P2573928540807876740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3)

end

end A073582.P2573928540807876740

namespace A073582

/-- `2*(lt[n, A020639(n+3)]+3)` -/
def P2573928540807876740.Spec : Prop :=
  ∀ n, (P2573928540807876740.a n : ℤ) = A073582 (n + 1)

end A073582

/-! ## A073582.P17438354849631082251

`filter[A050990(n+1), A354927(#)]`
-/

namespace A073582.P17438354849631082251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A073582.P17438354849631082251

namespace A073582

/-- `filter[A050990(n+1), A354927(#)]` -/
def P17438354849631082251.Spec : Prop :=
  ∀ n, P17438354849631082251.a n = A073582 (n + 1)

end A073582

/-! ## A073582.P9006484546512038536

`filter[A066664(n+1), A354927(#)]`
-/

namespace A073582.P9006484546512038536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A073582.P9006484546512038536

namespace A073582

/-- `filter[A066664(n+1), A354927(#)]` -/
def P9006484546512038536.Spec : Prop :=
  ∀ n, P9006484546512038536.a n = A073582 (n + 1)

end A073582

/-! ## A073582.P16870682609494011621

`filter[A069148(n+1), A354927(#)]`
-/

namespace A073582.P16870682609494011621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A073582.P16870682609494011621

namespace A073582

/-- `filter[A069148(n+1), A354927(#)]` -/
def P16870682609494011621.Spec : Prop :=
  ∀ n, P16870682609494011621.a n = A073582 (n + 1)

end A073582

/-! ## A073582.P3913345569861420150

`filter[A138929(n+1), A354927(#)]`
-/

namespace A073582.P3913345569861420150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A073582.P3913345569861420150

namespace A073582

/-- `filter[A138929(n+1), A354927(#)]` -/
def P3913345569861420150.Spec : Prop :=
  ∀ n, P3913345569861420150.a n = A073582 (n + 1)

end A073582

/-! ## A073582.P15356388086618900155

`filter[A284665(n+1), A354927(#)]`
-/

namespace A073582.P15356388086618900155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A073582.P15356388086618900155

namespace A073582

/-- `filter[A284665(n+1), A354927(#)]` -/
def P15356388086618900155.Spec : Prop :=
  ∀ n, P15356388086618900155.a n = A073582 (n + 1)

end A073582

/-! ## A073582.P7871401288892966522

`filter[A050990(n+2), A354923(#)]`
-/

namespace A073582.P7871401288892966522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050990 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A073582.P7871401288892966522

namespace A073582

/-- `filter[A050990(n+2), A354923(#)]` -/
def P7871401288892966522.Spec : Prop :=
  ∀ n, P7871401288892966522.a n = A073582 (n + 1)

end A073582

/-!
# A073584: Commuting even permutations: number of ordered pairs g, h in the alternating group A_n such that gh = hg.

The programs for A073584, there is no canonical definition to state claims against.
-/

/-! ## A073584.P16119288849405740092

`A000702(n+1)*A001710(n+1)`
-/

namespace A073584.P16119288849405740092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000702 (n + 1) * A001710 (n + 1)

end

end A073584.P16119288849405740092

/-! ## A073584.P5039807346842434479

`A000702(n+1)*A187741(2*n)`
-/

namespace A073584.P5039807346842434479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000702 (n + 1) * A187741 (2 * n)

end

end A073584.P5039807346842434479

/-! ## A073584.P12163001089369458235

`(A242101(n+1)-A000701(n+1))*A001710(n+1)`
-/

namespace A073584.P12163001089369458235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A242101 (n + 1) - A000701 (n + 1)) * A001710 (n + 1)

end

end A073584.P12163001089369458235

/-! ## A073584.P13431209311333915096

`(A046682(n+1)+A000700(n+1)%A000041(n))*A001710(n+1)`
-/

namespace A073584.P13431209311333915096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046682 (n + 1) + Int.tmod (A000700 (n + 1)) (A000041 n)) * A001710 (n + 1)

end

end A073584.P13431209311333915096

/-! ## A073584.P2583810742394868111

`(A000700(n+1)+A242101(n+1)-A046682(n+1))*A001710(n+1)`
-/

namespace A073584.P2583810742394868111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000700 (n + 1) + (A242101 (n + 1) - A046682 (n + 1))) * A001710 (n + 1)

end

end A073584.P2583810742394868111

/-!
# A073585: Square root of n has the same nonzero digit in each of the first 4 places to the right of the decimal point.

The programs for A073585, there is no canonical definition to state claims against.
-/

/-! ## A073585.P3194432642492851293

`A157507(n+8)^Δ[A077342(n+1)]`
-/

namespace A073585.P3194432642492851293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077342 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157507 (n + 8) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A073585.P3194432642492851293

/-! ## A073585.P6705576359925884059

`A157507(n+8)^A001263(A102480(n))`
-/

namespace A073585.P6705576359925884059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157507 (n + 8) : ℚ) ^ (A001263 (A102480 n).toNat : ℤ)

end

end A073585.P6705576359925884059

/-! ## A073585.P1071689592993664362

`A157507(n+8)%A180408(A009766(n))`
-/

namespace A073585.P1071689592993664362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157507 (n + 8)) (A180408 (A009766 n).toNat)

end

end A073585.P1071689592993664362

/-!
# A073587: a(n) = a(n-1)*2^n + 1 where a(0)=1.

The programs for A073587, the canonical program `A073587.P17791984978103731696` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073587 has offset 0).

The definition of A073587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*2^n+1` (program `A073587.P17791984978103731696`, by `A073587.P17791984978103731696.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073587.P17791984978103731696

`a(n-1)*2^n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073587

/-- `a(n-1)*2^n+1` -/
def P17791984978103731696.Spec : Prop :=
  ∀ n, (P17791984978103731696.a n : ℤ) = A073587 n

theorem P17791984978103731696.correct : P17791984978103731696.Spec := by
  intro n
  simp only [A073587]

end A073587

/-! ## A073587.P15602114611661415736

`1+2^n*a(n-1)` with `a(0)=1`
-/

namespace A073587.P15602114611661415736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + 2 ^ n * a (n - 1)

end

end A073587.P15602114611661415736

namespace A073587

/-- `1+2^n*a(n-1)` -/
def P15602114611661415736.Spec : Prop :=
  ∀ n, (P15602114611661415736.a n : ℤ) = A073587 n

theorem P15602114611661415736.correct : P15602114611661415736.Spec := by
  intro n
  simp only [A073587, Nat.add_sub_cancel, A073587.P15602114611661415736.a, A073587.P17791984978103731696.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A073587

/-! ## A073587.P5157050979535204657

`lcm(2^n, a(n-1))+1` with `a(0)=1`
-/

namespace A073587.P5157050979535204657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (2 ^ n) (a (n - 1)) + 1

end

end A073587.P5157050979535204657

namespace A073587

/-- `lcm(2^n, a(n-1))+1` -/
def P5157050979535204657.Spec : Prop :=
  ∀ n, (P5157050979535204657.a n : ℤ) = A073587 n

end A073587

/-! ## A073587.P10826351655175368307

`or(1, 2^n*a(n-1))` with `a(0)=1`
-/

namespace A073587.P10826351655175368307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (2 ^ n * a (n - 1))

end

end A073587.P10826351655175368307

namespace A073587

/-- `or(1, 2^n*a(n-1))` -/
def P10826351655175368307.Spec : Prop :=
  ∀ n, (P10826351655175368307.a n : ℤ) = A073587 n

end A073587

/-! ## A073587.P7060802231951528468

`xor(1, 2^n*a(n-1))` with `a(0)=1`
-/

namespace A073587.P7060802231951528468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (2 ^ n * a (n - 1))

end

end A073587.P7060802231951528468

namespace A073587

/-- `xor(1, 2^n*a(n-1))` -/
def P7060802231951528468.Spec : Prop :=
  ∀ n, (P7060802231951528468.a n : ℤ) = A073587 n

end A073587

/-!
# A073588: a(n) = a(n-1)*2^n-1 with a(1)=1.

The programs for A073588, the canonical program `A073588.P13982601725182745620` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073588 has offset 1).

The definition of A073588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*2^(n+1)-1` (program `A073588.P13982601725182745620`, by `A073588.P13982601725182745620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073588.P13982601725182745620

`a(n-1)*2^(n+1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073588

/-- `a(n-1)*2^(n+1)-1` -/
def P13982601725182745620.Spec : Prop :=
  ∀ n, P13982601725182745620.a n = A073588 (n + 1)

theorem P13982601725182745620.correct : P13982601725182745620.Spec := by
  intro n
  simp only [A073588, Nat.add_sub_cancel]

end A073588

/-! ## A073588.P18419373834251497971

`2^(n+1)*a(n-1)-1` with `a(0)=1`
-/

namespace A073588.P18419373834251497971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ (n + 1) : ℤ) * a (n - 1) - 1

end

end A073588.P18419373834251497971

namespace A073588

/-- `2^(n+1)*a(n-1)-1` -/
def P18419373834251497971.Spec : Prop :=
  ∀ n, P18419373834251497971.a n = A073588 (n + 1)

theorem P18419373834251497971.correct : P18419373834251497971.Spec := by
  intro n
  simp only [A073588, Nat.add_sub_cancel, A073588.P18419373834251497971.a, A073588.P13982601725182745620.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A073588

/-! ## A073588.P12409259398691268113

`2*2^n*a(n-1)-1` with `a(0)=1`
-/

namespace A073588.P12409259398691268113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((2 ^ n : ℤ) * a (n - 1)) - 1

end

end A073588.P12409259398691268113

namespace A073588

/-- `2*2^n*a(n-1)-1` -/
def P12409259398691268113.Spec : Prop :=
  ∀ n, P12409259398691268113.a n = A073588 (n + 1)

theorem P12409259398691268113.correct : P12409259398691268113.Spec := by
  intro n
  simp only [A073588, Nat.add_sub_cancel, A073588.P12409259398691268113.a, A073588.P13982601725182745620.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A073588

/-! ## A073588.P12445512059242515613

`lcm(2^(n+1), a(n-1))-1` with `a(0)=1`
-/

namespace A073588.P12445512059242515613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (2 ^ (n + 1) : ℤ) (a (n - 1)) : ℤ) - 1

end

end A073588.P12445512059242515613

namespace A073588

/-- `lcm(2^(n+1), a(n-1))-1` -/
def P12445512059242515613.Spec : Prop :=
  ∀ n, P12445512059242515613.a n = A073588 (n + 1)

end A073588

/-! ## A073588.P13765142084964492439

`a(n-1)/(1/2)^(n+1)-1` with `a(0)=1`
-/

namespace A073588.P13765142084964492439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ (n + 1) - 1

end

end A073588.P13765142084964492439

namespace A073588

/-- `a(n-1)/(1/2)^(n+1)-1` -/
def P13765142084964492439.Spec : Prop :=
  ∀ n, P13765142084964492439.a n = (A073588 (n + 1) : ℚ)

end A073588

/-!
# A073589: a(n)=a(n-1)^2*2^n-1 where a(0)=1.

The programs for A073589, the canonical program `A073589.P7144295369099796569` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073589 has offset 0).

The definition of A073589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²*2^n-1` (program `A073589.P7144295369099796569`, by `A073589.P7144295369099796569.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073589.P7144295369099796569

`a(n-1)²*2^n-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073589

/-- `a(n-1)²*2^n-1` -/
def P7144295369099796569.Spec : Prop :=
  ∀ n, P7144295369099796569.a n = A073589 n

theorem P7144295369099796569.correct : P7144295369099796569.Spec := by
  intro n
  simp only [A073589]

end A073589

/-! ## A073589.P14125570183720291625

`2^n*a(n-1)*a(n-1)-1` with `a(0)=1`
-/

namespace A073589.P14125570183720291625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) * a (n - 1) * a (n - 1) - 1

end

end A073589.P14125570183720291625

namespace A073589

/-- `2^n*a(n-1)*a(n-1)-1` -/
def P14125570183720291625.Spec : Prop :=
  ∀ n, P14125570183720291625.a n = A073589 n

theorem P14125570183720291625.correct : P14125570183720291625.Spec := by
  intro n
  simp only [A073589, Nat.add_sub_cancel, A073589.P14125570183720291625.a, A073589.P7144295369099796569.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A073589

/-!
# A073590: Expansion of e.g.f. exp(x) * log(1+x)/(1-x).

The programs for A073590, there is no canonical definition to state claims against.
-/

/-! ## A073590.P17735953993370933417

`A030854(n+1)-A132784(A132785(n+1))`
-/

namespace A073590.P17735953993370933417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030854 (n + 1) - A132784 (A132785 (n + 1)).toNat

end

end A073590.P17735953993370933417

/-!
# A073591: a(n) = A000522(n) + 1.

The programs for A073591, the canonical program `A073591.P4345016296114240383` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073591 has offset 0).

The definition of A073591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000522(n)+1` (program `A073591.P4345016296114240383`, by `A073591.P4345016296114240383.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073591.P16794784272649633029

`n*(a(n-1)-1)+2` with `a(0)=2`
-/

namespace A073591.P16794784272649633029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℤ) * (a (n - 1) - 1) + 2

end

end A073591.P16794784272649633029

namespace A073591

/-- `n*(a(n-1)-1)+2` -/
def P16794784272649633029.Spec : Prop :=
  ∀ n, P16794784272649633029.a n = A073591 n

end A073591

/-! ## A073591.P4345016296114240383

`A000522(n)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A073591

/-- `A000522(n)+1` -/
def P4345016296114240383.Spec : Prop :=
  ∀ n, P4345016296114240383.a n = A073591 n

theorem P4345016296114240383.correct : P4345016296114240383.Spec := by
  intro n
  simp only [A073591]

end A073591

/-! ## A073591.P624228408612430736

`∑{#}[n, n!/#!]+1`
-/

namespace A073591.P624228408612430736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial n : ℚ) / (Nat.factorial k : ℚ) + 1

end

end A073591.P624228408612430736

namespace A073591

/-- `∑{#}[n, n!/#!]+1` -/
def P624228408612430736.Spec : Prop :=
  ∀ n, P624228408612430736.a n = (A073591 n : ℚ)

end A073591

/-! ## A073591.P8789094947206803463

`n!*∑[1/n!]+1`
-/

namespace A073591.P8789094947206803463
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A073591.P8789094947206803463

namespace A073591

/-- `n!*∑[1/n!]+1` -/
def P8789094947206803463.Spec : Prop :=
  ∀ n, P8789094947206803463.a n = (A073591 n : ℚ)

end A073591

/-! ## A073591.P7086495313301951365

`∑{#}[n, C(n, #)*#!]+1`
-/

namespace A073591.P7086495313301951365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k * Nat.factorial k + 1

end

end A073591.P7086495313301951365

namespace A073591

/-- `∑{#}[n, C(n, #)*#!]+1` -/
def P7086495313301951365.Spec : Prop :=
  ∀ n, (P7086495313301951365.a n : ℤ) = A073591 n

end A073591

/-! ## A073591.P14053669283679256822

`(a(n-1)-1)*n+2` with `a(0)=2`
-/

namespace A073591.P14053669283679256822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) - 1) * (n : ℤ) + 2

end

end A073591.P14053669283679256822

namespace A073591

/-- `(a(n-1)-1)*n+2` -/
def P14053669283679256822.Spec : Prop :=
  ∀ n, P14053669283679256822.a n = A073591 n

end A073591

/-! ## A073591.P7403827372777029227

`2-n*(1-a(n-1))` with `a(0)=2`
-/

namespace A073591.P7403827372777029227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - (n : ℤ) * (1 - a (n - 1))

end

end A073591.P7403827372777029227

namespace A073591

/-- `2-n*(1-a(n-1))` -/
def P7403827372777029227.Spec : Prop :=
  ∀ n, P7403827372777029227.a n = A073591 n

end A073591

/-! ## A073591.P16687073957290281297

`abs(xor(n!*∑[1/n!], -1))`
-/

namespace A073591.P16687073957290281297
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))) (-1)|

end

end A073591.P16687073957290281297

namespace A073591

/-- `abs(xor(n!*∑[1/n!], -1))` -/
def P16687073957290281297.Spec : Prop :=
  ∀ n, P16687073957290281297.a n = A073591 n

end A073591

/-! ## A073591.P3888793735786839166

`lcm(n, 2-a(n-1))+n+2` with `a(0)=2`
-/

namespace A073591.P3888793735786839166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (n : ℤ) (2 - (a (n - 1) : ℤ)) + (n + 2)

end

end A073591.P3888793735786839166

namespace A073591

/-- `lcm(n, 2-a(n-1))+n+2` -/
def P3888793735786839166.Spec : Prop :=
  ∀ n, (P3888793735786839166.a n : ℤ) = A073591 n

end A073591

/-! ## A073591.P211654848031937807

`a(n-1)/tan(acot(n))-(n-2)` with `a(0)=2`
-/

namespace A073591.P211654848031937807
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ)) - ((n : ℤ) - 2 : ℝ)

end

end A073591.P211654848031937807

namespace A073591

/-- `a(n-1)/tan(acot(n))-(n-2)` -/
def P211654848031937807.Spec : Prop :=
  ∀ n, P211654848031937807.a n = (A073591 n : ℝ)

end A073591

/-!
# A073592: Euler transform of negative integers.

The programs for A073592, there is no canonical definition to state claims against.
-/

/-! ## A073592.P2735823324871324724

`Δ[A298599(abs(1-n))]`
-/

namespace A073592.P2735823324871324724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298599 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073592.P2735823324871324724

/-! ## A073592.P2714431757681056159

`A298599(n)-A298599(abs(1-n))`
-/

namespace A073592.P2714431757681056159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298599 n - A298599 |1 - (n : ℤ)|.toNat

end

end A073592.P2714431757681056159

/-! ## A073592.P1319065626849884207

`A276554(∑[n+2]-1)`
-/

namespace A073592.P1319065626849884207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A073592.P1319065626849884207

/-! ## A073592.P5845283377011146254

`A276554(A034856(n+1))%A020706(n)`
-/

namespace A073592.P5845283377011146254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276554 (A034856 (n + 1)).toNat) (A020706 n)

end

end A073592.P5845283377011146254

/-! ## A073592.P12327558341913674858

`or(A000007(n), A276554(A034856(n+1)))`
-/

namespace A073592.P12327558341913674858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A276554 (A034856 (n + 1)).toNat)

end

end A073592.P12327558341913674858

/-! ## A073592.P13467452697069624447

`A276554(A034856(n+1))+A000007(n+1)`
-/

namespace A073592.P13467452697069624447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (A034856 (n + 1)).toNat + A000007 (n + 1)

end

end A073592.P13467452697069624447

/-! ## A073592.P12668897050398451390

`A007318(floor(1/(n+1)))*A276554(A034856(n+1))`
-/

namespace A073592.P12668897050398451390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat * A276554 (A034856 (n + 1)).toNat

end

end A073592.P12668897050398451390

/-! ## A073592.P13648927105025828490

`A276554(A034856(n+1))^A001065(A020639(n+1))`
-/

namespace A073592.P13648927105025828490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276554 (A034856 (n + 1)).toNat : ℚ) ^ (A001065 (A020639 (n + 1)).toNat : ℤ)

end

end A073592.P13648927105025828490

/-! ## A073592.P14626106632474495664

`A057427(A144215(n+1))*A276554(A034856(n+1))`
-/

namespace A073592.P14626106632474495664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A144215 (n + 1)).toNat * A276554 (A034856 (n + 1)).toNat

end

end A073592.P14626106632474495664

/-! ## A073592.P7419923212645898676

`A294580(∑[n]+n)`
-/

namespace A073592.P7419923212645898676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294580 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A073592.P7419923212645898676

/-!
# A073593: Number of cards needed to be drawn (with replacement) from a deck of n cards to have a 50% or greater chance of seeing each card at least once.

The programs for A073593, there is no canonical definition to state claims against.
-/

/-! ## A073593.P12006969557212107689

`A002266(A291068(3*n+1)-∑{digits}[n, 10^#]%9)`
-/

namespace A073593.P12006969557212107689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A291068 (3 * n + 1) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9 : ℕ) : ℤ)).toNat

end

end A073593.P12006969557212107689

/-! ## A073593.P8859429228266026484

`A394247(A053134(n))`
-/

namespace A073593.P8859429228266026484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394247 (A053134 n).toNat

end

end A073593.P8859429228266026484

/-! ## A073593.P8926032538623539172

`A394247(∑[A000330(2*n+1)])`
-/

namespace A073593.P8926032538623539172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394247 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073593.P8926032538623539172

/-! ## A073593.P14994431861103686669

`A394247((2*n+1)*A000330(n+1))`
-/

namespace A073593.P14994431861103686669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394247 ((2 * n + 1 : ℤ) * A000330 (n + 1)).toNat

end

end A073593.P14994431861103686669

/-! ## A073593.P12502640438601168651

`A390813(A054254(n+1))`
-/

namespace A073593.P12502640438601168651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390813 (A054254 (n + 1)).toNat

end

end A073593.P12502640438601168651

/-!
# A073594: Numerator of b(n) = Sum_{k=1..n} (-1)^(k+1)/k*Sum_{i=0..k-1} (-1)^i/(2*i+1).

The programs for A073594, there is no canonical definition to state claims against.
-/

/-! ## A073594.P8184736260973228349

`A167831(or(A167898(n), A204512(2*(n+1))))`
-/

namespace A073594.P8184736260973228349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 (Int.lor (A167898 n) (A204512 (2 * (n + 1)))).toNat

end

end A073594.P8184736260973228349

/-!
# A073595: Denominator of b(n) = Sum_{k=1..n} (-1)^(k+1)/k*Sum_{i=0..k-1} (-1)^i/(2*i+1).

The programs for A073595, there is no canonical definition to state claims against.
-/

/-! ## A073595.P5124788058121454609

`A002555(n+1)/record[A046644(3*n+1)]`
-/

namespace A073595.P5124788058121454609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (3 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002555 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A073595.P5124788058121454609

/-! ## A073595.P5399208752909884258

`A002555(n+1)/A046644(A000302(n))`
-/

namespace A073595.P5399208752909884258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002555 (n + 1) : ℚ) / (A046644 (A000302 n).toNat : ℚ)

end

end A073595.P5399208752909884258

/-!
# A073596: Expansion of e.g.f. exp(x) * log(1-x)/(x-1).

The programs for A073596, there is no canonical definition to state claims against.
-/

/-! ## A073596.P15532517117415754682

`abs(1-∑[(n-1)*a(n-1)+1])+n*a(n-1)+1` with `a(0)=0`
-/

namespace A073596.P15532517117415754682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j| + ((n : ℤ) * a (n - 1) + 1)

end

end A073596.P15532517117415754682

/-! ## A073596.P6534270509283055626

`Δ[A381021(n)]`
-/

namespace A073596.P6534270509283055626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073596.P6534270509283055626

/-! ## A073596.P431663953205777471

`A269951(∑[n+1]+2)`
-/

namespace A073596.P431663953205777471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269951 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A073596.P431663953205777471

/-! ## A073596.P4056850306251517288

`∑{#}[n, C(n, #)*A000254(#)]`
-/

namespace A073596.P4056850306251517288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A000254 k

end

end A073596.P4056850306251517288

/-! ## A073596.P13985217601110945032

`A002104(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A073596.P13985217601110945032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002104 n + (n : ℤ) * a (n - 1)

end

end A073596.P13985217601110945032

/-! ## A073596.P5956543887433341496

`A001338(n)+n*a(n-1)+1` with `a(0)=0`
-/

namespace A073596.P5956543887433341496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001338 n + ((n : ℤ) * a (n - 1) + 1)

end

end A073596.P5956543887433341496

/-! ## A073596.P11410965020238162269

`n*a((2*n)%(n+1))+∑[n]+2*A002807(n)` with `a(0)=0, a(1)=1`
-/

namespace A073596.P11410965020238162269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) * a (2 * n % (n + 1)) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A002807 n)

end

end A073596.P11410965020238162269

/-! ## A073596.P15384011106771245444

`A381107(n)+A000254(n)`
-/

namespace A073596.P15384011106771245444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381107 n + A000254 n

end

end A073596.P15384011106771245444

/-! ## A073596.P15215440152661261709

`A381021(n+1)-A381021(n)`
-/

namespace A073596.P15215440152661261709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381021 (n + 1) - A381021 n

end

end A073596.P15215440152661261709

/-! ## A073596.P1241872987610005883

`A001338(n)+floor(n*a(-A024000(n)))+1` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A073596.P1241872987610005883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001338 n + ((n : ℤ) * a (-A024000 n).toNat + 1)

end

end A073596.P1241872987610005883

/-!
# A073598: Numbers n such that n^3 + 5 is prime.

The programs for A073598, there is no canonical definition to state claims against.
-/

/-! ## A073598.P10532180744235111595

`floor(root(A201260(n+2), 3))`
-/

namespace A073598.P10532180744235111595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A201260 (n + 2) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A073598.P10532180744235111595

/-! ## A073598.P5102338652880507134

`floor(root(p?[(n+1)^3+5], 3))`
-/

namespace A073598.P5102338652880507134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3 + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A073598.P5102338652880507134

/-!
# A073599: Numbers k such that the denominator of Sum_{j=1..k} 1/phi(j) divides the denominator of H(k) = Sum_{j=1..k} 1/j, the k-th harmonic number.

The programs for A073599, there is no canonical definition to state claims against.
-/

/-! ## A073599.P1153025225931109469

`∑[gcd(A146473(n+1), A255716(n+1))]`
-/

namespace A073599.P1153025225931109469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A146473 (n + 1)) (A255716 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073599.P1153025225931109469

/-! ## A073599.P4107343351837040647

`record[gcd(n, A141245(n))+n]`
-/

namespace A073599.P4107343351837040647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A141245 n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073599.P4107343351837040647

/-! ## A073599.P1845137533652651278

`∑[gcd(9, A325044(3*(n+1)))]`
-/

namespace A073599.P1845137533652651278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 9 (A325044 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073599.P1845137533652651278

/-! ## A073599.P128289466064880960

`eq[1, A102677(A048656(n+4))]`
-/

namespace A073599.P128289466064880960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A048656 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073599.P128289466064880960

/-! ## A073599.P9307297001368672669

`∑[A125162(A123125(n+2)+1)]`
-/

namespace A073599.P9307297001368672669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125162 (A123125 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073599.P9307297001368672669

