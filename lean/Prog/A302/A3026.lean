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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A302600: 1, 2, prime numbers of prime index, and prime numbers of prime index times 2.

The programs for A302600, there is no canonical definition to state claims against.
-/

/-! ## A302600.P1615680908566570854

`filter[A302539(n+1), A340363(#)]`
-/

namespace A302600.P1615680908566570854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A302600.P1615680908566570854

/-! ## A302600.P11135447285873920647

`filter[A302539(n+1), A340371(#)]`
-/

namespace A302600.P11135447285873920647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A302600.P11135447285873920647

/-! ## A302600.P3956107236070261249

`filter[A302539(n+1), A340372(#)]`
-/

namespace A302600.P3956107236070261249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A302600.P3956107236070261249

/-! ## A302600.P14295039642445062850

`filter[A302539(n+1), A354923(#)]`
-/

namespace A302600.P14295039642445062850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A302600.P14295039642445062850

/-! ## A302600.P10078068230040552011

`filter[A302539(n+1), A354924(#)]`
-/

namespace A302600.P10078068230040552011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A302600.P10078068230040552011

/-! ## A302600.P16389414174277821000

`filter[A302539(n+1), A365605(#)]`
-/

namespace A302600.P16389414174277821000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365605 (f1 j).toNat = 1) n)

end

end A302600.P16389414174277821000

/-! ## A302600.P8232243865905938466

`filter[A302539(n+1), A365716(#)]`
-/

namespace A302600.P8232243865905938466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A302600.P8232243865905938466

/-! ## A302600.P16526333013079679137

`∩[A033948(n+1), A302539(n+1)]`
-/

namespace A302600.P16526333013079679137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302600.P16526333013079679137

/-! ## A302600.P3473994771740451629

`∩[A066522(n+1), A302539(n+1)]`
-/

namespace A302600.P3473994771740451629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302600.P3473994771740451629

/-! ## A302600.P6298541949984666000

`∩[A093641(n+1), A302539(n+1)]`
-/

namespace A302600.P6298541949984666000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302600.P6298541949984666000

/-!
# A302601: Numbers that are powers of a prime number whose prime index is also a prime power (not including 1).

The programs for A302601, there is no canonical definition to state claims against.
-/

/-! ## A302601.P926306615697701030

`∩[2*n+1, A302498(n+1)]`
-/

namespace A302601.P926306615697701030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302601.P926306615697701030

/-! ## A302601.P12597997300162775184

`record[A000265(A302498(n+1))]`
-/

namespace A302601.P12597997300162775184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A302498 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302601.P12597997300162775184

/-! ## A302601.P388705468243970133

`record[A100994(A355743(n+1))]`
-/

namespace A302601.P388705468243970133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (A355743 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302601.P388705468243970133

/-! ## A302601.P7525222619403770194

`record[A336650(A302593(n+1))]`
-/

namespace A302601.P7525222619403770194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336650 (A302593 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302601.P7525222619403770194

/-! ## A302601.P18258956888125803129

`record[A026741(A302498(n+2))]`
-/

namespace A302601.P18258956888125803129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A302498 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302601.P18258956888125803129

/-! ## A302601.P8705355880350564879

`filter[A302498(n+1), A000035(#)]`
-/

namespace A302601.P8705355880350564879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A302601.P8705355880350564879

/-! ## A302601.P15140021100431711621

`filter[A302498(n+1), A039982(#)]`
-/

namespace A302601.P15140021100431711621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A302601.P15140021100431711621

/-! ## A302601.P4177175120985988489

`filter[A355743(n+1), A010055(#)]`
-/

namespace A302601.P4177175120985988489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A302601.P4177175120985988489

/-! ## A302601.P11502826115370927929

`filter[A302498(n+1), A093719(#)]`
-/

namespace A302601.P11502826115370927929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A302601.P11502826115370927929

/-! ## A302601.P8913458549731537371

`filter[A302498(n+1), A254651(#)]`
-/

namespace A302601.P8913458549731537371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A302601.P8913458549731537371

/-!
# A302602: Numbers that are powers of a prime number whose prime index is either 1 or also a prime number.

The programs for A302602, there is no canonical definition to state claims against.
-/

/-! ## A302602.P7910329652937228818

`∪[2^n, A302596(n+1)]`
-/

namespace A302602.P7910329652937228818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302602.P7910329652937228818

/-! ## A302602.P17191269025039624617

`record[A028233(A302540(n+1))]`
-/

namespace A302602.P17191269025039624617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A302540 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302602.P17191269025039624617

/-! ## A302602.P11721116774772590785

`filter[A302540(n+1), A010055(#)]`
-/

namespace A302602.P11721116774772590785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A302602.P11721116774772590785

/-! ## A302602.P18412857651559541713

`∪[A302596(n+1), A000079(n)]`
-/

namespace A302602.P18412857651559541713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302602.P18412857651559541713

/-! ## A302602.P18166530796979760431

`∪[A302596(n+1), A008862(n)]`
-/

namespace A302602.P18166530796979760431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302602.P18166530796979760431

/-! ## A302602.P16610885155471562288

`∪[A302596(n+1), A008863(n)]`
-/

namespace A302602.P16610885155471562288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302602.P16610885155471562288

/-! ## A302602.P11217851870425883333

`∪[A302596(n+1), A051535(n)]`
-/

namespace A302602.P11217851870425883333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302602.P11217851870425883333

/-! ## A302602.P16040061875108379993

`∪[A302596(n+1), A145116(n)]`
-/

namespace A302602.P16040061875108379993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145116 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302602.P16040061875108379993

/-! ## A302602.P16901307729211835881

`∪[A302596(n+1), A145117(n)]`
-/

namespace A302602.P16901307729211835881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145117 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302602.P16901307729211835881

/-! ## A302602.P16010586983146513308

`∪[A302596(n+1), A172319(n)]`
-/

namespace A302602.P16010586983146513308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172319 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302602.P16010586983146513308

/-!
# A302603: Number of total dominating sets in the wheel graph on n nodes.

The programs for A302603, the canonical program `A302603.P13268963148685604734` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302603 has offset 1).

The definition of A302603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302603.P10583427008704763404

`ogf((4-14x+16x^2-7x^3+2x^4-3x^5)/(1-4x+5x^2-3x^3+2x^4+x^5-2x^6))`
-/

namespace A302603.P10583427008704763404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -14, 16, -7, 2, -3] [1, -4, 5, -3, 2, 1, -2] n

end

end A302603.P10583427008704763404

namespace A302603

/-- `ogf((4-14x+16x^2-7x^3+2x^4-3x^5)/(1-4x+5x^2-3x^3+2x^4+x^5-2x^6))` -/
def P10583427008704763404.Spec : Prop :=
  ∀ n, P10583427008704763404.a n = A302603 (n + 1)

end A302603

/-! ## A302603.P13268963148685604734

`A000032(n)+2*sin((n+1)*π/2)+2^n-1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A302603

/-- `A000032(n)+2*sin((n+1)*π/2)+2^n-1` -/
def P13268963148685604734.Spec : Prop :=
  ∀ n, P13268963148685604734.a n = (A302603 (n + 1) : ℝ)

end A302603

/-! ## A302603.P12584902122894832315

`2^n+A001638(n)-1`
-/

namespace A302603.P12584902122894832315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A001638 n - 1)

end

end A302603.P12584902122894832315

namespace A302603

/-- `2^n+A001638(n)-1` -/
def P12584902122894832315.Spec : Prop :=
  ∀ n, P12584902122894832315.a n = A302603 (n + 1)

end A302603

/-! ## A302603.P2189208345289978905

`A001638(n)+A000225(n)`
-/

namespace A302603.P2189208345289978905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 n + A000225 n

end

end A302603.P2189208345289978905

namespace A302603

/-- `A001638(n)+A000225(n)` -/
def P2189208345289978905.Spec : Prop :=
  ∀ n, P2189208345289978905.a n = A302603 (n + 1)

end A302603

/-! ## A302603.P4282753346101032542

`A001638(n)+∑[A131577(n)]`
-/

namespace A302603.P4282753346101032542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302603.P4282753346101032542

namespace A302603

/-- `A001638(n)+∑[A131577(n)]` -/
def P4282753346101032542.Spec : Prop :=
  ∀ n, P4282753346101032542.a n = A302603 (n + 1)

end A302603

/-! ## A302603.P3447376386338742931

`A001638(n)+A000918(n)+1`
-/

namespace A302603.P3447376386338742931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 n + (A000918 n + 1)

end

end A302603.P3447376386338742931

namespace A302603

/-- `A001638(n)+A000918(n)+1` -/
def P3447376386338742931.Spec : Prop :=
  ∀ n, P3447376386338742931.a n = A302603 (n + 1)

end A302603

/-! ## A302603.P9572699495764149756

`A001638(n)+A000051(n)-2`
-/

namespace A302603.P9572699495764149756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 n + (A000051 n - 2)

end

end A302603.P9572699495764149756

namespace A302603

/-- `A001638(n)+A000051(n)-2` -/
def P9572699495764149756.Spec : Prop :=
  ∀ n, P9572699495764149756.a n = A302603 (n + 1)

end A302603

/-! ## A302603.P7125571171050519046

`A001638(n)+record[A302029(n+1)]`
-/

namespace A302603.P7125571171050519046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302603.P7125571171050519046

namespace A302603

/-- `A001638(n)+record[A302029(n+1)]` -/
def P7125571171050519046.Spec : Prop :=
  ∀ n, P7125571171050519046.a n = A302603 (n + 1)

end A302603

/-! ## A302603.P1129507960717718135

`A001638(n)+Δ[A000295(n)]`
-/

namespace A302603.P1129507960717718135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 n + (f1 (n + 1) - f1 n)

end

end A302603.P1129507960717718135

namespace A302603

/-- `A001638(n)+Δ[A000295(n)]` -/
def P1129507960717718135.Spec : Prop :=
  ∀ n, P1129507960717718135.a n = A302603 (n + 1)

end A302603

/-! ## A302603.P16413679190166190691

`A001638(n)+Δ[A000325(n)]`
-/

namespace A302603.P16413679190166190691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 n + (f1 (n + 1) - f1 n)

end

end A302603.P16413679190166190691

namespace A302603

/-- `A001638(n)+Δ[A000325(n)]` -/
def P16413679190166190691.Spec : Prop :=
  ∀ n, P16413679190166190691.a n = A302603 (n + 1)

end A302603

/-!
# A302604: Number of partitions of n into two parts such that the positive difference of the parts is squarefree.

The programs for A302604, the canonical program `A302604.P14110781985006537827` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302604 has offset 1).

The definition of A302604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302604.P14110781985006537827

`∑{#}[floor(n/2)-1, A008683(n+1-2*(#+1))²]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A302604

/-- `∑{#}[floor(n/2)-1, A008683(n+1-2*(#+1))²]` -/
def P14110781985006537827.Spec : Prop :=
  ∀ n, P14110781985006537827.a n = A302604 (n + 1)

theorem P14110781985006537827.correct : P14110781985006537827.Spec := by
  intro n
  simp only [A302604, Nat.add_sub_cancel]

end A302604

/-! ## A302604.P7026821419232201521

`A013928(n)-a(n-1)` with `a(0)=0`
-/

namespace A302604.P7026821419232201521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A013928 n - a (n - 1)

end

end A302604.P7026821419232201521

namespace A302604

/-- `A013928(n)-a(n-1)` -/
def P7026821419232201521.Spec : Prop :=
  ∀ n, P7026821419232201521.a n = A302604 (n + 1)

end A302604

/-! ## A302604.P16525674255028837388

`A107079(n)-(a(n-1)+1)` with `a(0)=0`
-/

namespace A302604.P16525674255028837388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A107079 n - (a (n - 1) + 1)

end

end A302604.P16525674255028837388

namespace A302604

/-- `A107079(n)-(a(n-1)+1)` -/
def P16525674255028837388.Spec : Prop :=
  ∀ n, P16525674255028837388.a n = A302604 (n + 1)

end A302604

/-! ## A302604.P408816352659174705

`A008966(n-1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A302604.P408816352659174705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A008966 (n - 1) + a (n - 2)

end

end A302604.P408816352659174705

namespace A302604

/-- `A008966(n-1)+a(n-2)` -/
def P408816352659174705.Spec : Prop :=
  ∀ n, P408816352659174705.a n = A302604 (n + 1)

end A302604

/-! ## A302604.P7606648845746067621

`a(n-2)+A008683(n-1)²` with `a(0)=0, a(1)=0`
-/

namespace A302604.P7606648845746067621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + A008683 (n - 1) ^ 2

end

end A302604.P7606648845746067621

namespace A302604

/-- `a(n-2)+A008683(n-1)²` -/
def P7606648845746067621.Spec : Prop :=
  ∀ n, P7606648845746067621.a n = A302604 (n + 1)

end A302604

/-! ## A302604.P17539007759816317736

`∑[char[∏{p}[n, #]+1]]-a(n-1)` with `a(0)=0`
-/

namespace A302604.P17539007759816317736
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A302604.P17539007759816317736

namespace A302604

/-- `∑[char[∏{p}[n, #]+1]]-a(n-1)` -/
def P17539007759816317736.Spec : Prop :=
  ∀ n, P17539007759816317736.a n = A302604 (n + 1)

end A302604

/-! ## A302604.P11799504478222375315

`A285881(A257088(n))`
-/

namespace A302604.P11799504478222375315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285881 (A257088 n).toNat

end

end A302604.P11799504478222375315

namespace A302604

/-- `A285881(A257088(n))` -/
def P11799504478222375315.Spec : Prop :=
  ∀ n, P11799504478222375315.a n = A302604 (n + 1)

end A302604

/-! ## A302604.P4684254439340313235

`A285881(A133090(n+1))`
-/

namespace A302604.P4684254439340313235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285881 (A133090 (n + 1)).toNat

end

end A302604.P4684254439340313235

namespace A302604

/-- `A285881(A133090(n+1))` -/
def P4684254439340313235.Spec : Prop :=
  ∀ n, P4684254439340313235.a n = A302604 (n + 1)

end A302604

/-!
# A302605: a(n) = n! * [x^n] exp(n*x)*arcsin(x).

The programs for A302605, there is no canonical definition to state claims against.
-/

/-! ## A302605.P3752246596141735705

`A067169(A002104(n))+((n+1)^n-(n-1)^n)/2`
-/

namespace A302605.P3752246596141735705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067169 ((A002104 n).toNat + 11) : ℚ) + (((n + 1) ^ n : ℤ) - ((n : ℤ) - 1) ^ n : ℚ) / 2

end

end A302605.P3752246596141735705

/-! ## A302605.P10873673294553280938

`((n+1)^n-(n-1)^n)/2-A260309(A302627(n+1))`
-/

namespace A302605.P10873673294553280938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ n : ℤ) - ((n : ℤ) - 1) ^ n : ℚ) / 2 - (A260309 (A302627 (n + 1)).toNat : ℚ)

end

end A302605.P10873673294553280938

/-!
# A302606: a(n) = n! * [x^n] exp(n*x)*arcsinh(x).

The programs for A302606, there is no canonical definition to state claims against.
-/

/-! ## A302606.P3453852984941293830

`A097508(A052622(n)+n)`
-/

namespace A302606.P3453852984941293830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A052622 n + (n : ℤ)).toNat

end

end A302606.P3453852984941293830

/-! ## A302606.P623724216776938245

`A097508(or(n, A052622(n)))`
-/

namespace A302606.P623724216776938245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (Int.lor (n : ℤ) (A052622 n)).toNat

end

end A302606.P623724216776938245

/-!
# A302607: a(n) is the greatest possible least prime in any partition of prime(n) into three primes; n >= 4.

The programs for A302607, there is no canonical definition to state claims against.
-/

/-! ## A302607.P10979149318157244226

`A164024(p?[A020742(n)]-A304794(n+4))`
-/

namespace A302607.P10979149318157244226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164024 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A304794 (n + 4)).toNat

end

end A302607.P10979149318157244226

/-! ## A302607.P4747277030764779156

`A164024(p?[A267873(n)]-A304794(n+4))`
-/

namespace A302607.P4747277030764779156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164024 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A304794 (n + 4)).toNat

end

end A302607.P4747277030764779156

/-! ## A302607.P16392914919377701218

`A164024(A090417(n+1)-A304794(n+4))`
-/

namespace A302607.P16392914919377701218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164024 (A090417 (n + 1) - A304794 (n + 4)).toNat

end

end A302607.P16392914919377701218

/-! ## A302607.P12642697343926175752

`A164024(A004139(n+2)-A304794(n+4))`
-/

namespace A302607.P12642697343926175752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164024 (A004139 (n + 2) - A304794 (n + 4)).toNat

end

end A302607.P12642697343926175752

/-! ## A302607.P9130595473634679146

`A164024(A066047(n+2)-A304794(n+4))`
-/

namespace A302607.P9130595473634679146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164024 (A066047 (n + 2) - A304794 (n + 4)).toNat

end

end A302607.P9130595473634679146

/-!
# A302608: a(n) = n! * [x^n] exp(n*x)*arctan(x).

The programs for A302608, there is no canonical definition to state claims against.
-/

/-! ## A302608.P4025029714731607012

`or(A023961(n^n), A302587(n))`
-/

namespace A302608.P4025029714731607012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023961 (n ^ n)) (A302587 n)

end

end A302608.P4025029714731607012

/-! ## A302608.P11085562373760477502

`A302587(n)+A067169(A002104(n))`
-/

namespace A302608.P11085562373760477502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302587 n + A067169 ((A002104 n).toNat + 11)

end

end A302608.P11085562373760477502

/-!
# A302609: a(n) = n! * [x^n] exp(n*x)*arctanh(x).

The programs for A302609, there is no canonical definition to state claims against.
-/

/-! ## A302609.P9923350413900518124

`A289207(A007559(n))+A007090(n)`
-/

namespace A302609.P9923350413900518124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A007559 n).toNat + A007090 n

end

end A302609.P9923350413900518124

/-! ## A302609.P9837289672712753327

`A326186(A007559(n))+A000695(n)`
-/

namespace A302609.P9837289672712753327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326186 (A007559 n).toNat + A000695 n

end

end A302609.P9837289672712753327

/-!
# A302610: Expansion of e.g.f. -log(1 - x)*arcsinh(x).

The programs for A302610, there is no canonical definition to state claims against.
-/

/-! ## A302610.P5454389232341810419

`A002372(A301481(n)+n)`
-/

namespace A302610.P5454389232341810419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (A301481 n + (n : ℤ)).toNat

end

end A302610.P5454389232341810419

/-! ## A302610.P13039674336461375342

`A233566(A280937(ceil(2^(n-1))+2))`
-/

namespace A302610.P13039674336461375342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233566 (A280937 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + 2).toNat).toNat

end

end A302610.P13039674336461375342

/-! ## A302610.P11500073734968284145

`A014085(A277340(n+1)-A327086(n+1))`
-/

namespace A302610.P11500073734968284145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A277340 (n + 1) - A327086 (n + 1)).toNat

end

end A302610.P11500073734968284145

/-!
# A302611: Expansion of e.g.f. -log(1 - x)*arctanh(x).

The programs for A302611, there is no canonical definition to state claims against.
-/

/-! ## A302611.P4215340670993754917

`A205153(A205152((n-2)*a(n-2)+n*a(n-1)))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A302611.P4215340670993754917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  A205153 (A205152 (((n : ℤ) - 2) * a (n - 2) + (n : ℤ) * a (n - 1)).toNat).toNat

end

end A302611.P4215340670993754917

/-! ## A302611.P15896838277413428061

`A280783(A000041(n))-A005614(n+2)`
-/

namespace A302611.P15896838277413428061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280783 (A000041 n).toNat - A005614 (n + 2)

end

end A302611.P15896838277413428061

/-! ## A302611.P2521565520068774237

`A268598(n)+A273685(n)%A091218(n+1)`
-/

namespace A302611.P2521565520068774237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268598 n + Int.tmod (A273685 n) (A091218 (n + 1))

end

end A302611.P2521565520068774237

/-!
# A302612: a(n) = (n+1)*(n^4-4*n^3+11*n^2-8*n+12)/12.

The programs for A302612, the canonical program `A302612.P84146940592871108` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302612 has offset 0).

The definition of A302612 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n^4-4*n^3+11*n²-8*n+12)/12` (program `A302612.P2872648606694628759`, by `A302612.P2872648606694628759.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302612.P15079608878118573367

`ogf((1-4x+9x^2-6x^3+10x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A302612.P15079608878118573367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 9, -6, 10] [1, -6, 15, -20, 15, -6, 1] n

end

end A302612.P15079608878118573367

namespace A302612

/-- `ogf((1-4x+9x^2-6x^3+10x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P15079608878118573367.Spec : Prop :=
  ∀ n, P15079608878118573367.a n = A302612 n

end A302612

/-! ## A302612.P5176082316248560564

`(n+1)*((n-1)*n*((n-3)*n+8)/12+1)`
-/

namespace A302612.P5176082316248560564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((((n : ℤ) - 1) * (n : ℤ) * (((n : ℤ) - 3) * (n : ℤ) + 8) : ℚ) / 12 + 1)

end

end A302612.P5176082316248560564

namespace A302612

/-- `(n+1)*((n-1)*n*((n-3)*n+8)/12+1)` -/
def P5176082316248560564.Spec : Prop :=
  ∀ n, P5176082316248560564.a n = (A302612 n : ℚ)

theorem P5176082316248560564.correct : P5176082316248560564.Spec := by
  intro n
  simp only [A302612, Nat.add_sub_cancel, A302612.P5176082316248560564.a, A302612.P84146940592871108.a, A000125, A000125.P10762125132202112265.a, A008911, A008911.P13273812959186450040.a, A152947, A152947.P16367813442806996368.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A302612

/-! ## A302612.P2872648606694628759

`(n+1)*(n^4-4*n^3+11*n²-8*n+12)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302612.P2872648606694628759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((n ^ 4 : ℤ) - (4 * n ^ 3 : ℤ) + (11 * n ^ 2 : ℤ) - (8 * n : ℤ) + 12) : ℚ) / 12

end

end A302612.P2872648606694628759

namespace A302612

/-- `(n+1)*(n^4-4*n^3+11*n²-8*n+12)/12` -/
def P2872648606694628759.Spec : Prop :=
  ∀ n, P2872648606694628759.a n = (A302612 n : ℚ)

theorem P2872648606694628759.correct : P2872648606694628759.Spec := by
  intro n
  simp only [A302612, Nat.add_sub_cancel, A302612.P2872648606694628759.a, A302612.P84146940592871108.a, A000125, A000125.P10762125132202112265.a, A008911, A008911.P13273812959186450040.a, A152947, A152947.P16367813442806996368.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A302612

/-! ## A302612.P1222297464919273191

`C(n+1, 3)*A016028(n+1)+n+1`
-/

namespace A302612.P1222297464919273191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 3 : ℤ) * A016028 (n + 1) + (n + 1 : ℤ)

end

end A302612.P1222297464919273191

namespace A302612

/-- `C(n+1, 3)*A016028(n+1)+n+1` -/
def P1222297464919273191.Spec : Prop :=
  ∀ n, P1222297464919273191.a n = A302612 n

end A302612

/-! ## A302612.P12221385389502824076

`A116701(n)+n*A116701(n)`
-/

namespace A302612.P12221385389502824076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116701 n + (n : ℤ) * A116701 n

end

end A302612.P12221385389502824076

namespace A302612

/-- `A116701(n)+n*A116701(n)` -/
def P12221385389502824076.Spec : Prop :=
  ∀ n, P12221385389502824076.a n = A302612 n

end A302612

/-! ## A302612.P84146940592871108

`A000125(n)*A152947(n+1)-A008911(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A302612

/-- `A000125(n)*A152947(n+1)-A008911(n)` -/
def P84146940592871108.Spec : Prop :=
  ∀ n, P84146940592871108.a n = A302612 n

theorem P84146940592871108.correct : P84146940592871108.Spec := by
  intro n
  simp only [A302612]

end A302612

/-! ## A302612.P9317425699369419374

`A004302(n+1)-A028552(A002378(n))`
-/

namespace A302612.P9317425699369419374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004302 (n + 1) - A028552 (A002378 n).toNat

end

end A302612.P9317425699369419374

namespace A302612

/-- `A004302(n+1)-A028552(A002378(n))` -/
def P9317425699369419374.Spec : Prop :=
  ∀ n, P9317425699369419374.a n = A302612 n

end A302612

/-! ## A302612.P6923693171411135532

`∑[A117066(n+1)]-A028552(A002378(n))`
-/

namespace A302612.P6923693171411135532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028552 (A002378 n).toNat

end

end A302612.P6923693171411135532

namespace A302612

/-- `∑[A117066(n+1)]-A028552(A002378(n))` -/
def P6923693171411135532.Spec : Prop :=
  ∀ n, P6923693171411135532.a n = A302612 n

end A302612

/-!
# A302613: Total domination number of the n-folded cube graph.

The programs for A302613, there is no canonical definition to state claims against.
-/

/-! ## A302613.P5158479059760430526

`ogf((-2+2x+2x^2+4x^5+8x^6)/(-1+2x))`
-/

namespace A302613.P5158479059760430526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -2, 0, 0, -4, -8] [1, -2] n

end

end A302613.P5158479059760430526

/-! ## A302613.P17459880463841137145

`a(n-1)+gcd(2^a(n-3), a(n-1))` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A302613.P17459880463841137145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2] fun n a =>
  a (n - 1) + Nat.gcd (2 ^ a (n - 3)) (a (n - 1))

end

end A302613.P17459880463841137145

/-! ## A302613.P8924075304614480403

`or(C(n, 2), A112486(n))+1`
-/

namespace A302613.P8924075304614480403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose n 2 : ℤ) (A112486 n) + 1

end

end A302613.P8924075304614480403

/-! ## A302613.P3561334654416759939

`2*A353867(floor(4^(n/5)))`
-/

namespace A302613.P3561334654416759939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353867 ⌊(4 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋.toNat

end

end A302613.P3561334654416759939

/-! ## A302613.P3477671357305548520

`lcm(2, A045674(comp[or(2, n)+n]))`
-/

namespace A302613.P3477671357305548520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A045674 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A302613.P3477671357305548520

/-!
# A302614: G.f.: Sum_{n>=0} (2 + (1+x)^n)^n / (3 + (1+x)^n)^(n+1).

The programs for A302614, there is no canonical definition to state claims against.
-/

/-! ## A302614.P5303087540228654332

`A327953(A001105(n!))`
-/

namespace A302614.P5303087540228654332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327953 (A001105 (Nat.factorial n)).toNat

end

end A302614.P5303087540228654332

/-!
# A302615: G.f.: Sum_{n>=0} (3 + (1+x)^n)^n / (4 + (1+x)^n)^(n+1).

The programs for A302615, there is no canonical definition to state claims against.
-/

/-! ## A302615.P4048876751184693136

`A161790(A218676(n))`
-/

namespace A302615.P4048876751184693136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (A218676 n).toNat

end

end A302615.P4048876751184693136

/-!
# A302617: Number of n X n 0..1 arrays with every element equal to 0, 1, 2 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302617, there is no canonical definition to state claims against.
-/

/-! ## A302617.P16786597764789730321

`A302623(∑[4*n]+1)`
-/

namespace A302617.P16786597764789730321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302617.P16786597764789730321

/-! ## A302617.P13499215672206913536

`A302623(A001844(n))+A185238(n)`
-/

namespace A302617.P13499215672206913536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A001844 n).toNat + A185238 n

end

end A302617.P13499215672206913536

/-! ## A302617.P15478475705649092023

`A302623(A001844(n))+A185284(n)`
-/

namespace A302617.P15478475705649092023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A001844 n).toNat + A185284 n

end

end A302617.P15478475705649092023

/-! ## A302617.P7517177208667278765

`A302623(A001844(n))%A033934(n)`
-/

namespace A302617.P7517177208667278765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302623 (A001844 n).toNat) (A033934 n)

end

end A302617.P7517177208667278765

/-! ## A302617.P16273718767714336570

`or(A067898(n), A302623(A001844(n)))`
-/

namespace A302617.P16273718767714336570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067898 n) (A302623 (A001844 n).toNat)

end

end A302617.P16273718767714336570

/-!
# A302618: Number of nX3 0..1 arrays with every element equal to 0, 1, 2 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302618, there is no canonical definition to state claims against.
-/

/-! ## A302618.P15356054896613810122

`A302623(∑[n+3]+1)`
-/

namespace A302618.P15356054896613810122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302618.P15356054896613810122

/-! ## A302618.P4620240454586374823

`A302623(A034856(n+2))+A025466(n)`
-/

namespace A302618.P4620240454586374823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A034856 (n + 2)).toNat + A025466 n

end

end A302618.P4620240454586374823

/-! ## A302618.P16380887391999248269

`A302623(A034856(n+2))%A302619(n+1)`
-/

namespace A302618.P16380887391999248269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302623 (A034856 (n + 2)).toNat) (A302619 (n + 1))

end

end A302618.P16380887391999248269

/-!
# A302619: Number of nX4 0..1 arrays with every element equal to 0, 1, 2 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302619, there is no canonical definition to state claims against.
-/

/-! ## A302619.P274167945030679838

`A302623(∑[n+3]+n+4)`
-/

namespace A302619.P274167945030679838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A302619.P274167945030679838

/-! ## A302619.P12987056032899280671

`A302623(A166136(n+3)-9)+A025466(n)`
-/

namespace A302619.P12987056032899280671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A166136 (n + 3) - 9).toNat + A025466 n

end

end A302619.P12987056032899280671

/-! ## A302619.P2964529574321562772

`A302623(A141214(n+1))%A316206(n+1)`
-/

namespace A302619.P2964529574321562772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302623 (A141214 (n + 1)).toNat) (A316206 (n + 1))

end

end A302619.P2964529574321562772

/-! ## A302619.P14034496243244232790

`A302623(Δ[A006503(n+1)])%A000081(n+8)`
-/

namespace A302619.P14034496243244232790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302623 (f1 (n + 1) - f1 n).toNat) (A000081 (n + 8))

end

end A302619.P14034496243244232790

/-! ## A302619.P1390087007179947881

`A001222(A340817(n+2))*A302623(A141214(n+1))`
-/

namespace A302619.P1390087007179947881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A340817 (n + 2)).toNat * A302623 (A141214 (n + 1)).toNat

end

end A302619.P1390087007179947881

/-!
# A302620: Number of nX5 0..1 arrays with every element equal to 0, 1, 2 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302620, there is no canonical definition to state claims against.
-/

/-! ## A302620.P379392826202303089

`A302623(Δ[A264443(n)])`
-/

namespace A302620.P379392826202303089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (f1 (n + 1) - f1 n).toNat

end

end A302620.P379392826202303089

/-! ## A302620.P5249820610571029870

`A302623(A046691(n+3))`
-/

namespace A302620.P5249820610571029870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A046691 (n + 3)).toNat

end

end A302620.P5249820610571029870

/-! ## A302620.P3091960749553805002

`A302623(A060577(n+4))`
-/

namespace A302620.P3091960749553805002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A060577 (n + 4)).toNat

end

end A302620.P3091960749553805002

/-! ## A302620.P16826389293014221378

`A302623(A056115(n)+11)`
-/

namespace A302620.P16826389293014221378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A056115 n + 11).toNat

end

end A302620.P16826389293014221378

/-! ## A302620.P5541161415848200519

`A302623(Δ[A023545(n+1)])`
-/

namespace A302620.P5541161415848200519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (f1 (n + 1) - f1 n).toNat

end

end A302620.P5541161415848200519

/-!
# A302621: Number of nX6 0..1 arrays with every element equal to 0, 1, 2 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302621, there is no canonical definition to state claims against.
-/

/-! ## A302621.P7014273459620608919

`A302623(A052905(n+3))`
-/

namespace A302621.P7014273459620608919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A052905 (n + 3)).toNat

end

end A302621.P7014273459620608919

/-! ## A302621.P8701694638998211022

`A302623(A056119(n)+16)`
-/

namespace A302621.P8701694638998211022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A056119 n + 16).toNat

end

end A302621.P8701694638998211022

/-! ## A302621.P4563945035240596959

`A302623(A000124(n+6)-6)`
-/

namespace A302621.P4563945035240596959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A000124 (n + 6) - 6).toNat

end

end A302621.P4563945035240596959

/-! ## A302621.P6251677405986394915

`A302623(A167614(n+5)-8)`
-/

namespace A302621.P6251677405986394915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A167614 (n + 5) - 8).toNat

end

end A302621.P6251677405986394915

/-! ## A302621.P1106282186784111520

`A302623(Δ[Δ[A006504(n+1)]])`
-/

namespace A302621.P1106282186784111520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (f1 (n + 1) - f1 n).toNat

end

end A302621.P1106282186784111520

/-!
# A302622: Number of nX7 0..1 arrays with every element equal to 0, 1, 2 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302622, there is no canonical definition to state claims against.
-/

/-! ## A302622.P2274449366704447199

`A302623(Δ[A023551(n+2)])`
-/

namespace A302622.P2274449366704447199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (f1 (n + 1) - f1 n).toNat

end

end A302622.P2274449366704447199

/-! ## A302622.P13325017861443075057

`A302623(A000096(n+6)-5)`
-/

namespace A302622.P13325017861443075057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A000096 (n + 6) - 5).toNat

end

end A302622.P13325017861443075057

/-! ## A302622.P9714918785864241086

`A302623(A000217(n+7)-6)`
-/

namespace A302622.P9714918785864241086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A000217 (n + 7) - 6).toNat

end

end A302622.P9714918785864241086

/-! ## A302622.P14612879562612497268

`A302623(A000124(n+7)-7)`
-/

namespace A302622.P14612879562612497268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A000124 (n + 7) - 7).toNat

end

end A302622.P14612879562612497268

/-! ## A302622.P9204012478957218775

`A302623(Δ[n²]+A000217(n+5)+6)`
-/

namespace A302622.P9204012478957218775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000217 (n + 5) + 6)).toNat

end

end A302622.P9204012478957218775

/-!
# A302623: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302623, there is no canonical definition to state claims against.
-/

/-! ## A302623.P4623560159470047473

`A281469(n+1)+A025466(A001296(n))`
-/

namespace A302623.P4623560159470047473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (n + 1) + A025466 (A001296 n).toNat

end

end A302623.P4623560159470047473

/-! ## A302623.P17765095035953823437

`A281469(n+1)+A011737(A022171(n))`
-/

namespace A302623.P17765095035953823437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (n + 1) + A011737 (A022171 n).toNat

end

end A302623.P17765095035953823437

/-! ## A302623.P6226577798090625497

`A281469(n+1)+A025465(A022345(n))`
-/

namespace A302623.P6226577798090625497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (n + 1) + A025465 (A022345 n).toNat

end

end A302623.P6226577798090625497

/-! ## A302623.P1117788004185734497

`A281469(n+1)+A127326(A059328(n))`
-/

namespace A302623.P1117788004185734497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (n + 1) + A127326 (A059328 n).toNat

end

end A302623.P1117788004185734497

/-! ## A302623.P5000829396652953303

`A281469(n+1)+A185163(A132311(n))`
-/

namespace A302623.P5000829396652953303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (n + 1) + A185163 (A132311 n).toNat

end

end A302623.P5000829396652953303

/-!
# A302624: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 2 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302624, the canonical program `A302624.P4580965422522901121` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302624 has offset 1).

The definition of A302624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302624.P4580965422522901121

`2*a(n-1)+a(n-3)-2*a(n-4)` with `a(0)=4, a(1)=25, a(2)=25, a(3)=45, a(4)=79, a(5)=146, a(6)=286, a(7)=563`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302624

/-- `2*a(n-1)+a(n-3)-2*a(n-4)` -/
def P4580965422522901121.Spec : Prop :=
  ∀ n, P4580965422522901121.a n = A302624 (n + 1)

theorem P4580965422522901121.correct : P4580965422522901121.Spec := by
  intro n
  simp only [A302624, Nat.add_sub_cancel]

end A302624

/-! ## A302624.P10945938293449860716

`A302623(∑[n+2]+4)`
-/

namespace A302624.P10945938293449860716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302624.P10945938293449860716

namespace A302624

/-- `A302623(∑[n+2]+4)` -/
def P10945938293449860716.Spec : Prop :=
  ∀ n, P10945938293449860716.a n = A302624 (n + 1)

end A302624

/-! ## A302624.P12514847679253223610

`A302623(A167614(n+1))+A025466(n)`
-/

namespace A302624.P12514847679253223610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A167614 (n + 1)).toNat + A025466 n

end

end A302624.P12514847679253223610

namespace A302624

/-- `A302623(A167614(n+1))+A025466(n)` -/
def P12514847679253223610.Spec : Prop :=
  ∀ n, P12514847679253223610.a n = A302624 (n + 1)

end A302624

/-! ## A302624.P15223390355461215088

`A302623(A167614(n+1))%A122041(n+1)`
-/

namespace A302624.P15223390355461215088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302623 (A167614 (n + 1)).toNat) (A122041 (n + 1))

end

end A302624.P15223390355461215088

namespace A302624

/-- `A302623(A167614(n+1))%A122041(n+1)` -/
def P15223390355461215088.Spec : Prop :=
  ∀ n, P15223390355461215088.a n = A302624 (n + 1)

end A302624

/-! ## A302624.P11482000318877503638

`A302623(A167499(n)+n)+A000007(n+1)`
-/

namespace A302624.P11482000318877503638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A167499 n + (n : ℤ)).toNat + A000007 (n + 1)

end

end A302624.P11482000318877503638

namespace A302624

/-- `A302623(A167499(n)+n)+A000007(n+1)` -/
def P11482000318877503638.Spec : Prop :=
  ∀ n, P11482000318877503638.a n = A302624 (n + 1)

end A302624

/-!
# A302625: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 2 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302625, there is no canonical definition to state claims against.
-/

/-! ## A302625.P9604618430701422552

`A302623(A141214(n)+7)`
-/

namespace A302625.P9604618430701422552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A141214 n + 7).toNat

end

end A302625.P9604618430701422552

/-! ## A302625.P3633734401660745283

`A302623(A052905(n)+9)`
-/

namespace A302625.P3633734401660745283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A052905 n + 9).toNat

end

end A302625.P3633734401660745283

/-! ## A302625.P6874724343338144027

`A302623(A055999(n)+10)`
-/

namespace A302625.P6874724343338144027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A055999 n + 10).toNat

end

end A302625.P6874724343338144027

/-! ## A302625.P14518681078766310775

`A302623(A167614(n+2)+1)`
-/

namespace A302625.P14518681078766310775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A167614 (n + 2) + 1).toNat

end

end A302625.P14518681078766310775

/-! ## A302625.P13024496763551268966

`A302623(A167499(n+2)-1)`
-/

namespace A302625.P13024496763551268966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A167499 (n + 2) - 1).toNat

end

end A302625.P13024496763551268966

/-!
# A302626: Number of 5 X n 0..1 arrays with every element equal to 0, 1, 2 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302626, there is no canonical definition to state claims against.
-/

/-! ## A302626.P1163123378261367389

`A302623(A167499(n+3))`
-/

namespace A302626.P1163123378261367389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A167499 (n + 3)).toNat

end

end A302626.P1163123378261367389

/-! ## A302626.P3660257625439810605

`A302623(A155212(n)+13)`
-/

namespace A302626.P3660257625439810605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A155212 n + 13).toNat

end

end A302626.P3660257625439810605

/-! ## A302626.P12416349612043925874

`A302623(A056000(n)+15)`
-/

namespace A302626.P12416349612043925874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A056000 n + 15).toNat

end

end A302626.P12416349612043925874

/-! ## A302626.P9250145054498827184

`A302623(A141214(n+1)+8)`
-/

namespace A302626.P9250145054498827184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A141214 (n + 1) + 8).toNat

end

end A302626.P9250145054498827184

/-! ## A302626.P10544026923595945685

`A302623(A038722(Δ[A264443(n)]))`
-/

namespace A302626.P10544026923595945685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A302626.P10544026923595945685

/-!
# A302627: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 2 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302627, there is no canonical definition to state claims against.
-/

/-! ## A302627.P16400407913645343273

`A302623(A167487(n+4)-1)`
-/

namespace A302627.P16400407913645343273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A167487 (n + 4) - 1).toNat

end

end A302627.P16400407913645343273

/-! ## A302627.P16167520122274247272

`A302623(A000124(n+5)+5)`
-/

namespace A302627.P16167520122274247272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A000124 (n + 5) + 5).toNat

end

end A302627.P16167520122274247272

/-! ## A302627.P14698870359357224501

`A302623(A000217(n+5)+6)`
-/

namespace A302627.P14698870359357224501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A000217 (n + 5) + 6).toNat

end

end A302627.P14698870359357224501

/-! ## A302627.P16743860497025647111

`A302623(A141214(n+2)+9)`
-/

namespace A302627.P16743860497025647111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A141214 (n + 2) + 9).toNat

end

end A302627.P16743860497025647111

/-! ## A302627.P11544381347646332553

`A302623(A034856(n+4)+8)`
-/

namespace A302627.P11544381347646332553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A034856 (n + 4) + 8).toNat

end

end A302627.P11544381347646332553

/-!
# A302628: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 2 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302628, there is no canonical definition to state claims against.
-/

/-! ## A302628.P735259507097110183

`A302623(A167487(n+5))`
-/

namespace A302628.P735259507097110183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A167487 (n + 5)).toNat

end

end A302628.P735259507097110183

/-! ## A302628.P12082806427079311255

`A302623(A000217(n+6)+7)`
-/

namespace A302628.P12082806427079311255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A000217 (n + 6) + 7).toNat

end

end A302628.P12082806427079311255

/-! ## A302628.P9664692497603185792

`A302623(A056000(n+2)+17)`
-/

namespace A302628.P9664692497603185792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A056000 (n + 2) + 17).toNat

end

end A302628.P9664692497603185792

/-! ## A302628.P10191906552406495474

`A302623(A000096(n+6)-(n-1))`
-/

namespace A302628.P10191906552406495474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A000096 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A302628.P10191906552406495474

/-! ## A302628.P7640156425928607436

`A302623(A133263(n+4)+A005843(n+8))`
-/

namespace A302628.P7640156425928607436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (A133263 (n + 4) + A005843 (n + 8)).toNat

end

end A302628.P7640156425928607436

/-!
# A302629: Number of n X n 0..1 arrays with every element equal to 0, 1, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302629, there is no canonical definition to state claims against.
-/

/-! ## A302629.P18442560707778198830

`A302635(∑[4*n]+1)`
-/

namespace A302629.P18442560707778198830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302629.P18442560707778198830

/-! ## A302629.P11442888455250075248

`A302635(A001844(n))+char[19]`
-/

namespace A302629.P11442888455250075248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302629.P11442888455250075248

/-! ## A302629.P12368282521562641117

`record[A003982(n)*A302635(n+1)]`
-/

namespace A302629.P12368282521562641117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302629.P12368282521562641117

/-! ## A302629.P4681996923104785982

`record[gcd(A157654(n), A302635(n+1))]`
-/

namespace A302629.P4681996923104785982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157654 n) (A302635 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302629.P4681996923104785982

/-! ## A302629.P1083402471629887534

`record[and(A185917(n+1), A302635(n+1))]`
-/

namespace A302629.P1083402471629887534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A302635 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302629.P1083402471629887534

/-!
# A302630: Number of nX3 0..1 arrays with every element equal to 0, 1, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302630, there is no canonical definition to state claims against.
-/

/-! ## A302630.P6405859638259968564

`A302635(∑[n+3]+1)`
-/

namespace A302630.P6405859638259968564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302630.P6405859638259968564

/-! ## A302630.P8664276669210509636

`A302635(Δ[A008778(n)])%A001552(n)`
-/

namespace A302630.P8664276669210509636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302635 (f1 (n + 1) - f1 n).toNat) (A001552 n)

end

end A302630.P8664276669210509636

/-!
# A302631: Number of nX4 0..1 arrays with every element equal to 0, 1, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302631, there is no canonical definition to state claims against.
-/

/-! ## A302631.P3586485923808462903

`A302635(A141214(n+1))`
-/

namespace A302631.P3586485923808462903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A141214 (n + 1)).toNat

end

end A302631.P3586485923808462903

/-! ## A302631.P15325564091568930015

`A302635(A027379(n+2))`
-/

namespace A302631.P15325564091568930015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A027379 (n + 2)).toNat

end

end A302631.P15325564091568930015

/-! ## A302631.P13578651187584919259

`A302635(A055998(n+2))`
-/

namespace A302631.P13578651187584919259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A055998 (n + 2)).toNat

end

end A302631.P13578651187584919259

/-! ## A302631.P15904647093588786511

`A302635(A155212(n)+5)`
-/

namespace A302631.P15904647093588786511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A155212 n + 5).toNat

end

end A302631.P15904647093588786511

/-! ## A302631.P17833040985407105474

`A302635(A056000(n)+7)`
-/

namespace A302631.P17833040985407105474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A056000 n + 7).toNat

end

end A302631.P17833040985407105474

/-!
# A302632: Number of nX5 0..1 arrays with every element equal to 0, 1, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302632, there is no canonical definition to state claims against.
-/

/-! ## A302632.P1726383991575202024

`A302635(∑[n+5]+6)`
-/

namespace A302632.P1726383991575202024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A302632.P1726383991575202024

/-! ## A302632.P4605650275790713335

`or(char[9], A302635(A055999(n+2)+2))`
-/

namespace A302632.P4605650275790713335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A302635 (A055999 (n + 2) + 2).toNat)

end

end A302632.P4605650275790713335

/-! ## A302632.P16749772814332843084

`or(n%2, A302635(A167614(n+4)-7))`
-/

namespace A302632.P16749772814332843084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A302635 (A167614 (n + 4) - 7).toNat)

end

end A302632.P16749772814332843084

/-! ## A302632.P15679208994350277854

`A302635(Δ[A023545(n+1)])%(5^(n+3))`
-/

namespace A302632.P15679208994350277854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302635 (f1 (n + 1) - f1 n).toNat) (5 ^ (n + 3) : ℤ)

end

end A302632.P15679208994350277854

/-! ## A302632.P1647332369340684791

`or(A000035(n), A302635(A046691(n+3)))`
-/

namespace A302632.P1647332369340684791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A302635 (A046691 (n + 3)).toNat)

end

end A302632.P1647332369340684791

/-!
# A302633: Number of nX6 0..1 arrays with every element equal to 0, 1, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302633, there is no canonical definition to state claims against.
-/

/-! ## A302633.P15796391740297305657

`A302635(A027379(n+4)-2)`
-/

namespace A302633.P15796391740297305657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A027379 (n + 4) - 2).toNat

end

end A302633.P15796391740297305657

/-! ## A302633.P7578826444909755200

`A302635(A000217(n+6)-5)`
-/

namespace A302633.P7578826444909755200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A000217 (n + 6) - 5).toNat

end

end A302633.P7578826444909755200

/-! ## A302633.P14103034653865502768

`A302635(A000124(n+6)-6)`
-/

namespace A302633.P14103034653865502768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A000124 (n + 6) - 6).toNat

end

end A302633.P14103034653865502768

/-! ## A302633.P9587786398114638418

`A302635(Δ[Δ[A006504(n+1)]])`
-/

namespace A302633.P9587786398114638418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (f1 (n + 1) - f1 n).toNat

end

end A302633.P9587786398114638418

/-! ## A302633.P14952108285345266758

`A302635(Δ[A023551(n+1)]+1)`
-/

namespace A302633.P14952108285345266758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (f1 (n + 1) - f1 n + 1).toNat

end

end A302633.P14952108285345266758

/-!
# A302634: Number of nX7 0..1 arrays with every element equal to 0, 1, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302634, there is no canonical definition to state claims against.
-/

/-! ## A302634.P8619276628439188033

`A302635(A055999(n+4))`
-/

namespace A302634.P8619276628439188033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A055999 (n + 4)).toNat

end

end A302634.P8619276628439188033

/-! ## A302634.P17811223401742439700

`A302635(Δ[A023551(n+2)])`
-/

namespace A302634.P17811223401742439700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (f1 (n + 1) - f1 n).toNat

end

end A302634.P17811223401742439700

/-! ## A302634.P17884993998694174601

`A302635(A052905(n+4)-1)`
-/

namespace A302634.P17884993998694174601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A052905 (n + 4) - 1).toNat

end

end A302634.P17884993998694174601

/-! ## A302634.P3045954857157396823

`A302635(A000096(n+6)-5)`
-/

namespace A302634.P3045954857157396823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A000096 (n + 6) - 5).toNat

end

end A302634.P3045954857157396823

/-! ## A302634.P8584563211026312834

`A302635(A000217(n+7)-6)`
-/

namespace A302634.P8584563211026312834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A000217 (n + 7) - 6).toNat

end

end A302634.P8584563211026312834

/-!
# A302635: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302635, there is no canonical definition to state claims against.
-/

/-! ## A302635.P3617486709709009977

`A302163(n+1)+A276167(A331278(n))`
-/

namespace A302635.P3617486709709009977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (n + 1) + A276167 (A331278 n).toNat

end

end A302635.P3617486709709009977

/-! ## A302635.P11832751403725938818

`A302163(n+1)+A186034(A022167(n))`
-/

namespace A302635.P11832751403725938818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (n + 1) + A186034 (A022167 n).toNat

end

end A302635.P11832751403725938818

/-! ## A302635.P5254610212956175720

`A302163(n+1)+A037912(A174527(n))`
-/

namespace A302635.P5254610212956175720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (n + 1) + A037912 (A174527 n).toNat

end

end A302635.P5254610212956175720

/-! ## A302635.P976269806768158374

`A302163(n+1)+A124763(A099594(n))`
-/

namespace A302635.P976269806768158374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (n + 1) + A124763 (A099594 n).toNat

end

end A302635.P976269806768158374

/-! ## A302635.P5153658442406711356

`A302163(n+1)+A007814(A157151(n))`
-/

namespace A302635.P5153658442406711356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (n + 1) + A007814 (A157151 n).toNat

end

end A302635.P5153658442406711356

/-!
# A302636: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302636, the canonical program `A302636.P1079062824787648426` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302636 has offset 1).

The definition of A302636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 390 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302636.P1079062824787648426

`a(n-1)+a(n-2)+2*a(n-4)-a(n-5)` with `a(0)=4, a(1)=6, a(2)=8, a(3)=14, a(4)=25, a(5)=47, a(6)=83`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302636

/-- `a(n-1)+a(n-2)+2*a(n-4)-a(n-5)` -/
def P1079062824787648426.Spec : Prop :=
  ∀ n, P1079062824787648426.a n = A302636 (n + 1)

theorem P1079062824787648426.correct : P1079062824787648426.Spec := by
  intro n
  simp only [A302636, Nat.add_sub_cancel]

end A302636

/-! ## A302636.P18194689575064419915

`A302635(∑[n+2]+4)`
-/

namespace A302636.P18194689575064419915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302636.P18194689575064419915

namespace A302636

/-- `A302635(∑[n+2]+4)` -/
def P18194689575064419915.Spec : Prop :=
  ∀ n, P18194689575064419915.a n = A302636 (n + 1)

end A302636

/-! ## A302636.P14410197370334911196

`A302635(A167614(n+1))+A185284(n)`
-/

namespace A302636.P14410197370334911196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A167614 (n + 1)).toNat + A185284 n

end

end A302636.P14410197370334911196

namespace A302636

/-- `A302635(A167614(n+1))+A185284(n)` -/
def P14410197370334911196.Spec : Prop :=
  ∀ n, P14410197370334911196.a n = A302636 (n + 1)

end A302636

/-! ## A302636.P10757894995667791096

`A007318(C(n+1, 2))*A302635(A167614(n+1))`
-/

namespace A302636.P10757894995667791096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 1) 2) * A302635 (A167614 (n + 1)).toNat

end

end A302636.P10757894995667791096

namespace A302636

/-- `A007318(C(n+1, 2))*A302635(A167614(n+1))` -/
def P10757894995667791096.Spec : Prop :=
  ∀ n, P10757894995667791096.a n = A302636 (n + 1)

end A302636

/-! ## A302636.P4308942493293137900

`A000010(((-1)^n)²)*A302635(A167614(n+1))`
-/

namespace A302636.P4308942493293137900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((-1) ^ n) ^ 2).toNat * A302635 (A167614 (n + 1)).toNat

end

end A302636.P4308942493293137900

namespace A302636

/-- `A000010(((-1)^n)²)*A302635(A167614(n+1))` -/
def P4308942493293137900.Spec : Prop :=
  ∀ n, P4308942493293137900.a n = A302636 (n + 1)

end A302636

/-!
# A302637: Number of 4 X n 0..1 arrays with every element equal to 0, 1, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302637, there is no canonical definition to state claims against.
-/

/-! ## A302637.P14325576426671330323

`A302635(A141214(n)+7)`
-/

namespace A302637.P14325576426671330323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A141214 n + 7).toNat

end

end A302637.P14325576426671330323

/-! ## A302637.P9420354022308820695

`A302635(A052905(n)+9)`
-/

namespace A302637.P9420354022308820695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A052905 n + 9).toNat

end

end A302637.P9420354022308820695

/-! ## A302637.P13132572967828638

`A302635(A055999(n)+10)`
-/

namespace A302637.P13132572967828638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A055999 n + 10).toNat

end

end A302637.P13132572967828638

/-! ## A302637.P2705952716702980941

`A302635(A167614(n+2)+1)`
-/

namespace A302637.P2705952716702980941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A167614 (n + 2) + 1).toNat

end

end A302637.P2705952716702980941

/-! ## A302637.P12544211761225721482

`A302635(Δ[A023545(n+1)-n²])`
-/

namespace A302637.P12544211761225721482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (f1 (n + 1) - f1 n).toNat

end

end A302637.P12544211761225721482

/-!
# A302638: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302638, there is no canonical definition to state claims against.
-/

/-! ## A302638.P8909618561696492221

`A302635(A167499(n+3))`
-/

namespace A302638.P8909618561696492221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A167499 (n + 3)).toNat

end

end A302638.P8909618561696492221

/-! ## A302638.P2387910517001922712

`A302635(A000124(n+4)+4)`
-/

namespace A302638.P2387910517001922712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A000124 (n + 4) + 4).toNat

end

end A302638.P2387910517001922712

/-! ## A302638.P1408817779173784803

`A302635(A000217(n+4)+5)`
-/

namespace A302638.P1408817779173784803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A000217 (n + 4) + 5).toNat

end

end A302638.P1408817779173784803

/-! ## A302638.P7763522752075357670

`A302635(A141214(n+1)+8)`
-/

namespace A302638.P7763522752075357670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A141214 (n + 1) + 8).toNat

end

end A302638.P7763522752075357670

/-! ## A302638.P17991205847737159338

`A302635(A052905(n+1)+10)`
-/

namespace A302638.P17991205847737159338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A052905 (n + 1) + 10).toNat

end

end A302638.P17991205847737159338

/-!
# A302639: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302639, there is no canonical definition to state claims against.
-/

/-! ## A302639.P2081208457549674240

`A302635(A167499(n+4)+1)`
-/

namespace A302639.P2081208457549674240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A167499 (n + 4) + 1).toNat

end

end A302639.P2081208457549674240

/-! ## A302639.P10752819406493185242

`A302635(A000217(n+5)+6)`
-/

namespace A302639.P10752819406493185242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A000217 (n + 5) + 6).toNat

end

end A302639.P10752819406493185242

/-! ## A302639.P11242388955212765980

`A302635(A052905(n+2)+11)`
-/

namespace A302639.P11242388955212765980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A052905 (n + 2) + 11).toNat

end

end A302639.P11242388955212765980

/-! ## A302639.P11250568567060096179

`A302635(A055999(n+4)-(2*n+1))`
-/

namespace A302639.P11250568567060096179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A055999 (n + 4) - (2 * n + 1 : ℤ)).toNat

end

end A302639.P11250568567060096179

/-! ## A302639.P9265589106453394764

`A302635(A141214(n)+A004277(n+9))`
-/

namespace A302639.P9265589106453394764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A141214 n + A004277 (n + 9)).toNat

end

end A302639.P9265589106453394764

/-!
# A302640: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302640, there is no canonical definition to state claims against.
-/

/-! ## A302640.P12796320265096255083

`A302635(A167499(n+5)+2)`
-/

namespace A302640.P12796320265096255083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A167499 (n + 5) + 2).toNat

end

end A302640.P12796320265096255083

/-! ## A302640.P15135820934801548841

`A302635(A000217(n+6)+7)`
-/

namespace A302640.P15135820934801548841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A000217 (n + 6) + 7).toNat

end

end A302640.P15135820934801548841

/-! ## A302640.P16833979269753589665

`A302635(A141214(n+3)+10)`
-/

namespace A302640.P16833979269753589665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A141214 (n + 3) + 10).toNat

end

end A302640.P16833979269753589665

/-! ## A302640.P18255191575681266635

`A302635(A052905(n+3)+12)`
-/

namespace A302640.P18255191575681266635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A052905 (n + 3) + 12).toNat

end

end A302640.P18255191575681266635

/-! ## A302640.P15366773174799331132

`A302635(A133263(n+7)-(n+2))`
-/

namespace A302640.P15366773174799331132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A133263 (n + 7) - (n + 2 : ℤ)).toNat

end

end A302640.P15366773174799331132

/-!
# A302641: Number of nonnegative integers k such that n^2 - 3*2^k can be written as x^2 + 2*y^2 with x and y integers.

The programs for A302641, there is no canonical definition to state claims against.
-/

/-! ## A302641.P1728652200380501363

`A061775(n+1)-A063775(A184628(n+1))`
-/

namespace A302641.P1728652200380501363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - A063775 (A184628 (n + 1)).toNat

end

end A302641.P1728652200380501363

/-! ## A302641.P12317616653228038190

`Δ[A325544(n)]+1-A063775(A184628(n+1))`
-/

namespace A302641.P12317616653228038190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 - A063775 (A184628 (n + 1)).toNat

end

end A302641.P12317616653228038190

/-! ## A302641.P15784836189420523723

`A196050(n+1)+1-A063775(A184628(n+1))`
-/

namespace A302641.P15784836189420523723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) + (1 - A063775 (A184628 (n + 1)).toNat)

end

end A302641.P15784836189420523723

/-! ## A302641.P481109155871658043

`A005496(A196050(n+1))-A063775(A184628(n+1))`
-/

namespace A302641.P481109155871658043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A196050 (n + 1)).toNat - A063775 (A184628 (n + 1)).toNat

end

end A302641.P481109155871658043

/-! ## A302641.P4104930904210815780

`A001222(A324922(n+1))+1-A063775(A184628(n+1))`
-/

namespace A302641.P4104930904210815780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A324922 (n + 1)).toNat + 1 - A063775 (A184628 (n + 1)).toNat

end

end A302641.P4104930904210815780

/-!
# A302642: Number of partitions of n into two parts such that the positive difference of the parts is semiprime.

The programs for A302642, there is no canonical definition to state claims against.
-/

/-! ## A302642.P11029855022467785636

`A102669(A117172(n+1)^A003056(n))`
-/

namespace A302642.P11029855022467785636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (SequenceMachineLib.roundAway ((A117172 (n + 1) : ℚ) ^ (A003056 n : ℤ))).toNat

end

end A302642.P11029855022467785636

/-! ## A302642.P13467387469070721556

`A151843(A073521(n+1)%A080014(n))`
-/

namespace A302642.P13467387469070721556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 (Int.tmod (A073521 (n + 1)) (A080014 n)).toNat

end

end A302642.P13467387469070721556

/-! ## A302642.P2127683061204160666

`A124832(2*(n+1))%A173173(A124776(n))`
-/

namespace A302642.P2127683061204160666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124832 (2 * (n + 1))) (A173173 (A124776 n).toNat)

end

end A302642.P2127683061204160666

/-! ## A302642.P3249866816463499527

`A105518(A000463(n+1))%A119894(3*n+4)`
-/

namespace A302642.P3249866816463499527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105518 (A000463 (n + 1)).toNat) (A119894 (3 * n + 4))

end

end A302642.P3249866816463499527

/-! ## A302642.P16522372686289750586

`A059995(A351393(2*n+5)%A308217(3*n+4))`
-/

namespace A302642.P16522372686289750586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Int.tmod (A351393 (2 * n + 5)) (A308217 (3 * n + 4))).toNat

end

end A302642.P16522372686289750586

/-!
# A302643: Number of partitions of n into two parts such that the positive difference of the parts is a squarefree semiprime.

The programs for A302643, the canonical program `A302643.P12863085819704118716` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302643 has offset 1).

The definition of A302643 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A280710, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A302643.P12863085819704118716

`∑{#}[floor(n/2)-1, A280710(n+1-2*(#+1))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A302643

/-- `∑{#}[floor(n/2)-1, A280710(n+1-2*(#+1))]` -/
def P12863085819704118716.Spec : Prop :=
  ∀ n, P12863085819704118716.a n = A302643 (n + 1)

theorem P12863085819704118716.correct : P12863085819704118716.Spec := by
  intro n
  simp only [A302643, Nat.add_sub_cancel]

end A302643

/-! ## A302643.P13259090290116656622

`A280710(n-1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A302643.P13259090290116656622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A280710 (n - 1) + a (n - 2)

end

end A302643.P13259090290116656622

namespace A302643

/-- `A280710(n-1)+a(n-2)` -/
def P13259090290116656622.Spec : Prop :=
  ∀ n, P13259090290116656622.a n = A302643 (n + 1)

end A302643

/-! ## A302643.P9473085144847785049

`A001221(abs(Δ[A352833(n)])!)`
-/

namespace A302643.P9473085144847785049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial |f1 (n + 1) - f1 n|.toNat)

end

end A302643.P9473085144847785049

namespace A302643

/-- `A001221(abs(Δ[A352833(n)])!)` -/
def P9473085144847785049.Spec : Prop :=
  ∀ n, P9473085144847785049.a n = A302643 (n + 1)

end A302643

/-! ## A302643.P6103682958553232723

`A297036(gcd(A001590(n), A077957(n)))`
-/

namespace A302643.P6103682958553232723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297036 (Int.gcd (A001590 n) (A077957 n))

end

end A302643.P6103682958553232723

namespace A302643

/-- `A297036(gcd(A001590(n), A077957(n)))` -/
def P6103682958553232723.Spec : Prop :=
  ∀ n, P6103682958553232723.a n = A302643 (n + 1)

end A302643

/-! ## A302643.P14558365099962465392

`A054899(A029578(3*n)-A217032(n+1))`
-/

namespace A302643.P14558365099962465392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A029578 (3 * n) - A217032 (n + 1)).toNat

end

end A302643.P14558365099962465392

namespace A302643

/-- `A054899(A029578(3*n)-A217032(n+1))` -/
def P14558365099962465392.Spec : Prop :=
  ∀ n, P14558365099962465392.a n = A302643 (n + 1)

end A302643

/-!
# A302644: a(n) = (n+2)*(n+1)*(n^6-12*n^5+70*n^4-210*n^3+409*n^2-378*n+360)/720.

The programs for A302644, there is no canonical definition to state claims against.
-/

/-! ## A302644.P9683692747575413957

`(n+1)*A023193(A149576(n))`
-/

namespace A302644.P9683692747575413957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023193 (A149576 n).toNat

end

end A302644.P9683692747575413957

/-! ## A302644.P2560857736334394472

`(n+1)*A023193(A149577(n))`
-/

namespace A302644.P2560857736334394472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023193 (A149577 n).toNat

end

end A302644.P2560857736334394472

/-! ## A302644.P7996165738914932328

`(n+1)*(A109680(A000108(n)+1)-1)`
-/

namespace A302644.P7996165738914932328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A109680 (A000108 n + 1).toNat - 1)

end

end A302644.P7996165738914932328

/-!
# A302645: Values of unimodal polynomial analogous to A302612 and A302644 arising from a partition size <= 4 restriction.

The programs for A302645, there is no canonical definition to state claims against.
-/

/-! ## A302645.P17293161383782191984

`A350463(∑[n]+1)`
-/

namespace A302645.P17293161383782191984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350463 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302645.P17293161383782191984

/-! ## A302645.P7585391506086294758

`lcm(n, A336524(∑[n]))`
-/

namespace A302645.P7585391506086294758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A336524 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A302645.P7585391506086294758

/-! ## A302645.P4466559448875084253

`n*A108429(n²-n)`
-/

namespace A302645.P4466559448875084253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A108429 (n ^ 2 - n)

end

end A302645.P4466559448875084253

/-! ## A302645.P16109416978897240493

`∑{e}[5^n, #*A000108(n-1)]`
-/

namespace A302645.P16109416978897240493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℤ) * A000108 (n - 1)

end

end A302645.P16109416978897240493

/-! ## A302645.P4255929232414376763

`∪[A014681(C(2*n, n)-1), C(2*n, n)]`
-/

namespace A302645.P4255929232414376763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (Nat.choose (2 * n) n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A302645.P4255929232414376763

/-!
# A302646: Values of unimodal polynomial analogous to A302612 and A302644 arising from a partition size <= 5 restriction.

The programs for A302646, there is no canonical definition to state claims against.
-/

/-! ## A302646.P6689894190799189688

`lcm(n, A189175(∑[n]))`
-/

namespace A302646.P6689894190799189688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A189175 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A302646.P6689894190799189688

/-! ## A302646.P16469263297818152569

`n*A090285(C(n, 2))`
-/

namespace A302646.P16469263297818152569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A090285 (Nat.choose n 2)

end

end A302646.P16469263297818152569

/-! ## A302646.P14957866155015897123

`n*A145890(C(n, 2))`
-/

namespace A302646.P14957866155015897123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A145890 (Nat.choose n 2)

end

end A302646.P14957866155015897123

/-! ## A302646.P702088321466210887

`n*A163946(C(n, 2))`
-/

namespace A302646.P702088321466210887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A163946 (Nat.choose n 2)

end

end A302646.P702088321466210887

/-! ## A302646.P7854247295035884759

`n*A178518(∑[n+1])`
-/

namespace A302646.P7854247295035884759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A178518 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302646.P7854247295035884759

/-!
# A302647: a(n) = (2*n^2*(n^2 - 3) - (2*n^2 + 1)*(-1)^n + 1)/64.

The programs for A302647, the canonical program `A302647.P17326867078062831670` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302647 has offset 1).

The definition of A302647 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A302647.anchor (n : ℕ) : (A302647 (n + 1) : ℚ) = ((2 * (n + 1) ^ 2 : ℤ) * (((n + 1) ^ 2 : ℤ) - 3) - (2 * (n + 1) ^ 2 + 1 : ℤ) * (-1) ^ (n + 1) + 1 : ℚ) / 64` in `Proof.A302.A302647`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302647.P15915266449434340416

`ogf((2x^2+2x^3+2x^4)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`
-/

namespace A302647.P15915266449434340416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 2, 2] [1, -2, -2, 6, 0, -6, 2, 2, -1] n

end

end A302647.P15915266449434340416

namespace A302647

/-- `ogf((2x^2+2x^3+2x^4)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P15915266449434340416.Spec : Prop :=
  ∀ n, P15915266449434340416.a n = A302647 (n + 1)

end A302647

/-! ## A302647.P1049029118980094729

`2*C(floor((n+2)/2), 2)*C(floor((n+3)/2), 2)`
-/

namespace A302647.P1049029118980094729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ⌊(n + 2 : ℚ) / 2⌋.toNat 2 * Nat.choose ⌊(n + 3 : ℚ) / 2⌋.toNat 2

end

end A302647.P1049029118980094729

namespace A302647

/-- `2*C(floor((n+2)/2), 2)*C(floor((n+3)/2), 2)` -/
def P1049029118980094729.Spec : Prop :=
  ∀ n, (P1049029118980094729.a n : ℤ) = A302647 (n + 1)

end A302647

/-! ## A302647.P17326867078062831670

`(2*(n+1)²*((n+1)²-3)-(2*(n+1)²+1)*(-1)^(n+1)+1)/64`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302647

/-- `(2*(n+1)²*((n+1)²-3)-(2*(n+1)²+1)*(-1)^(n+1)+1)/64` -/
def P17326867078062831670.Spec : Prop :=
  ∀ n, P17326867078062831670.a n = (A302647 (n + 1) : ℚ)

end A302647

/-! ## A302647.P13224449467457886449

`∑{#}[floor((n+1)/2)-1, (#+1)*(n+1-(#+1))*(n+1-2*(#+1))]`
-/

namespace A302647.P13224449467457886449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + 1 : ℤ) * ((n + 1 : ℤ) - (k + 1 : ℤ)) * ((n + 1 : ℤ) - (2 * (k + 1) : ℤ))

end

end A302647.P13224449467457886449

namespace A302647

/-- `∑{#}[floor((n+1)/2)-1, (#+1)*(n+1-(#+1))*(n+1-2*(#+1))]` -/
def P13224449467457886449.Spec : Prop :=
  ∀ n, P13224449467457886449.a n = A302647 (n + 1)

end A302647

/-! ## A302647.P18055170127969132985

`∑[∑[gcd(2, n)*floor((n/2)²)]]`
-/

namespace A302647.P18055170127969132985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * ⌊((n : ℚ) / 2) ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302647.P18055170127969132985

namespace A302647

/-- `∑[∑[gcd(2, n)*floor((n/2)²)]]` -/
def P18055170127969132985.Spec : Prop :=
  ∀ n, P18055170127969132985.a n = A302647 (n + 1)

end A302647

/-! ## A302647.P13748168166770593975

`a(n-2)+n*floor((n/2)²)` with `a(0)=0, a(1)=0`
-/

namespace A302647.P13748168166770593975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + (n : ℤ) * ⌊((n : ℚ) / 2) ^ 2⌋

end

end A302647.P13748168166770593975

namespace A302647

/-- `a(n-2)+n*floor((n/2)²)` -/
def P13748168166770593975.Spec : Prop :=
  ∀ n, P13748168166770593975.a n = A302647 (n + 1)

end A302647

/-! ## A302647.P14126543886343174802

`2*∑[∑[A123596(n)]]`
-/

namespace A302647.P14126543886343174802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302647.P14126543886343174802

namespace A302647

/-- `2*∑[∑[A123596(n)]]` -/
def P14126543886343174802.Spec : Prop :=
  ∀ n, P14126543886343174802.a n = A302647 (n + 1)

end A302647

/-! ## A302647.P17363254881962397273

`A330520(n)-a(n-1)` with `a(0)=0`
-/

namespace A302647.P17363254881962397273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A330520 n - a (n - 1)

end

end A302647.P17363254881962397273

namespace A302647

/-- `A330520(n)-a(n-1)` -/
def P17363254881962397273.Spec : Prop :=
  ∀ n, P17363254881962397273.a n = A302647 (n + 1)

end A302647

/-! ## A302647.P7154345836388452695

`∑[∑[char[2*n]/2]]*A002620(n)`
-/

namespace A302647.P7154345836388452695
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A002620 n : ℚ)

end

end A302647.P7154345836388452695

namespace A302647

/-- `∑[∑[char[2*n]/2]]*A002620(n)` -/
def P7154345836388452695.Spec : Prop :=
  ∀ n, P7154345836388452695.a n = (A302647 (n + 1) : ℚ)

end A302647

/-! ## A302647.P8177494845403043887

`A000217(A110654(n))*A110660(n)`
-/

namespace A302647.P8177494845403043887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A110654 n).toNat * A110660 n

end

end A302647.P8177494845403043887

namespace A302647

/-- `A000217(A110654(n))*A110660(n)` -/
def P8177494845403043887.Spec : Prop :=
  ∀ n, P8177494845403043887.a n = A302647 (n + 1)

end A302647

/-! ## A302647.P9967648593373418251

`A000217(n-A004526(n))*A110660(n)`
-/

namespace A302647.P9967648593373418251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n : ℤ) - A004526 n).toNat * A110660 n

end

end A302647.P9967648593373418251

namespace A302647

/-- `A000217(n-A004526(n))*A110660(n)` -/
def P9967648593373418251.Spec : Prop :=
  ∀ n, P9967648593373418251.a n = A302647 (n + 1)

end A302647

/-! ## A302647.P7749604640908419746

`(A028724(n+1)+A001318(n))*A004526(n)`
-/

namespace A302647.P7749604640908419746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028724 (n + 1) + A001318 n) * A004526 n

end

end A302647.P7749604640908419746

namespace A302647

/-- `(A028724(n+1)+A001318(n))*A004526(n)` -/
def P7749604640908419746.Spec : Prop :=
  ∀ n, P7749604640908419746.a n = A302647 (n + 1)

end A302647

/-! ## A302647.P12399374915276045607

`A131174(n+1)*A131174(n)`
-/

namespace A302647.P12399374915276045607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131174 (n + 1) * A131174 n

end

end A302647.P12399374915276045607

namespace A302647

/-- `A131174(n+1)*A131174(n)` -/
def P12399374915276045607.Spec : Prop :=
  ∀ n, P12399374915276045607.a n = A302647 (n + 1)

end A302647

/-! ## A302647.P815847200090737058

`A008619(n+1)*A028724(n+2)`
-/

namespace A302647.P815847200090737058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) * A028724 (n + 2)

end

end A302647.P815847200090737058

namespace A302647

/-- `A008619(n+1)*A028724(n+2)` -/
def P815847200090737058.Spec : Prop :=
  ∀ n, P815847200090737058.a n = A302647 (n + 1)

end A302647

/-! ## A302647.P3122432211639554341

`A110660(n+1)/2*A110660(n)`
-/

namespace A302647.P3122432211639554341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 (n + 1) : ℚ) / 2 * (A110660 n : ℚ)

end

end A302647.P3122432211639554341

namespace A302647

/-- `A110660(n+1)/2*A110660(n)` -/
def P3122432211639554341.Spec : Prop :=
  ∀ n, P3122432211639554341.a n = (A302647 (n + 1) : ℚ)

end A302647

/-! ## A302647.P10065928204291978884

`A002620(n+1)²-A317714(n+2)`
-/

namespace A302647.P10065928204291978884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) ^ 2 - A317714 (n + 2)

end

end A302647.P10065928204291978884

namespace A302647

/-- `A002620(n+1)²-A317714(n+2)` -/
def P10065928204291978884.Spec : Prop :=
  ∀ n, P10065928204291978884.a n = A302647 (n + 1)

end A302647

/-! ## A302647.P8925734125561386065

`A000217(A004526(n+1))*A110660(n)`
-/

namespace A302647.P8925734125561386065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004526 (n + 1)).toNat * A110660 n

end

end A302647.P8925734125561386065

namespace A302647

/-- `A000217(A004526(n+1))*A110660(n)` -/
def P8925734125561386065.Spec : Prop :=
  ∀ n, P8925734125561386065.a n = A302647 (n + 1)

end A302647

/-! ## A302647.P560243980293367407

`(A008805(n)-A110654(n+1))*A110660(n+1)`
-/

namespace A302647.P560243980293367407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008805 n - A110654 (n + 1)) * A110660 (n + 1)

end

end A302647.P560243980293367407

namespace A302647

/-- `(A008805(n)-A110654(n+1))*A110660(n+1)` -/
def P560243980293367407.Spec : Prop :=
  ∀ n, P560243980293367407.a n = A302647 (n + 1)

end A302647

/-! ## A302647.P9631749869912778860

`A004526(n)*A028724(n+3)`
-/

namespace A302647.P9631749869912778860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A028724 (n + 3)

end

end A302647.P9631749869912778860

namespace A302647

/-- `A004526(n)*A028724(n+3)` -/
def P9631749869912778860.Spec : Prop :=
  ∀ n, P9631749869912778860.a n = A302647 (n + 1)

end A302647

/-! ## A302647.P18209967500652152040

`2*A000241(n+3)`
-/

namespace A302647.P18209967500652152040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000241 (n + 3)

end

end A302647.P18209967500652152040

namespace A302647

/-- `2*A000241(n+3)` -/
def P18209967500652152040.Spec : Prop :=
  ∀ n, P18209967500652152040.a n = A302647 (n + 1)

end A302647

/-!
# A302648: a(n) is the largest integer b_n such that there exists a set of n integers b_1=0, b_2, ..., b_n whose pairwise sums cover all integers between 0 and 2*b_n.

The programs for A302648, there is no canonical definition to state claims against.
-/

/-! ## A302648.P7172051596309298131

`A004526(A234941(n+1)-1)-char[10]`
-/

namespace A302648.P7172051596309298131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A234941 (n + 1) - 1).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302648.P7172051596309298131

/-! ## A302648.P3044296939174541029

`A028242(A234941(n+1)-1)-char[10]`
-/

namespace A302648.P3044296939174541029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A234941 (n + 1) - 1).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302648.P3044296939174541029

/-! ## A302648.P13938626319584979882

`∑[A007302(record[A006143(n+4)])]`
-/

namespace A302648.P13938626319584979882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006143 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302648.P13938626319584979882

/-!
# A302650: Number of minimal total dominating sets in the n-barbell graph.

The programs for A302650, the canonical program `A302650.P11560490973862608510` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302650 has offset 1).

The definition of A302650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302650.P10257047097232784842

`C(n+1, 2)²-n²+1`
-/

namespace A302650.P10257047097232784842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 ^ 2 : ℤ) - (n ^ 2 : ℤ) + 1

end

end A302650.P10257047097232784842

namespace A302650

/-- `C(n+1, 2)²-n²+1` -/
def P10257047097232784842.Spec : Prop :=
  ∀ n, P10257047097232784842.a n = A302650 (n + 1)

end A302650

/-! ## A302650.P1559847927067190411

`ogf((1-4x+11x^2-2x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A302650.P1559847927067190411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 11, -2] [1, -5, 10, -10, 5, -1] n

end

end A302650.P1559847927067190411

namespace A302650

/-- `ogf((1-4x+11x^2-2x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P1559847927067190411.Spec : Prop :=
  ∀ n, P1559847927067190411.a n = A302650 (n + 1)

end A302650

/-! ## A302650.P2774429567749331357

`(2+(n-2)*(n+1)*(n+2)/4)*(n+1)`
-/

namespace A302650.P2774429567749331357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (((n : ℤ) - 2) * (n + 1 : ℤ) * (n + 2 : ℤ) : ℚ) / 4) * (n + 1 : ℚ)

end

end A302650.P2774429567749331357

namespace A302650

/-- `(2+(n-2)*(n+1)*(n+2)/4)*(n+1)` -/
def P2774429567749331357.Spec : Prop :=
  ∀ n, P2774429567749331357.a n = (A302650 (n + 1) : ℚ)

theorem P2774429567749331357.correct : P2774429567749331357.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A302650, Nat.add_sub_cancel, A302650.P2774429567749331357.a, A302650.P11560490973862608510.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A302650, Nat.add_sub_cancel, A302650.P2774429567749331357.a, A302650.P11560490973862608510.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A302650

/-! ## A302650.P11560490973862608510

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=6, a(3)=28, a(4)=85`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302650

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11560490973862608510.Spec : Prop :=
  ∀ n, P11560490973862608510.a n = A302650 (n + 1)

theorem P11560490973862608510.correct : P11560490973862608510.Spec := by
  intro n
  simp only [A302650, Nat.add_sub_cancel]

end A302650

/-! ## A302650.P7119159135737557776

`∑[or(1, n^3-n)-n]`
-/

namespace A302650.P7119159135737557776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n ^ 3 : ℤ) - (n : ℤ)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302650.P7119159135737557776

namespace A302650

/-- `∑[or(1, n^3-n)-n]` -/
def P7119159135737557776.Spec : Prop :=
  ∀ n, P7119159135737557776.a n = A302650 (n + 1)

end A302650

/-! ## A302650.P2207957166236041804

`∑[lcm(1-∑[2*n], 1-n)]`
-/

namespace A302650.P2207957166236041804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302650.P2207957166236041804

namespace A302650

/-- `∑[lcm(1-∑[2*n], 1-n)]` -/
def P2207957166236041804.Spec : Prop :=
  ∀ n, (P2207957166236041804.a n : ℤ) = A302650 (n + 1)

end A302650

/-! ## A302650.P12455613842626776854

`∑[∑[6*C(n, 2)]-n+1]`
-/

namespace A302650.P12455613842626776854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302650.P12455613842626776854

namespace A302650

/-- `∑[∑[6*C(n, 2)]-n+1]` -/
def P12455613842626776854.Spec : Prop :=
  ∀ n, P12455613842626776854.a n = A302650 (n + 1)

end A302650

/-! ## A302650.P10490899661141902254

`∑[lcm(n, 1-n²)-(n-1)]`
-/

namespace A302650.P10490899661141902254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (1 - (n ^ 2 : ℤ)) : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302650.P10490899661141902254

namespace A302650

/-- `∑[lcm(n, 1-n²)-(n-1)]` -/
def P10490899661141902254.Spec : Prop :=
  ∀ n, P10490899661141902254.a n = A302650 (n + 1)

end A302650

/-! ## A302650.P14603762406722403946

`a(n-1)+1-n*(2-n²)` with `a(0)=1`
-/

namespace A302650.P14603762406722403946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (n : ℤ) * (2 - (n ^ 2 : ℤ))

end

end A302650.P14603762406722403946

namespace A302650

/-- `a(n-1)+1-n*(2-n²)` -/
def P14603762406722403946.Spec : Prop :=
  ∀ n, P14603762406722403946.a n = A302650 (n + 1)

end A302650

/-! ## A302650.P18252241150457412021

`∑[(n-1)*or(1, (n+2)*(n-1))]`
-/

namespace A302650.P18252241150457412021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.lor 1 ((n + 2 : ℤ) * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302650.P18252241150457412021

namespace A302650

/-- `∑[(n-1)*or(1, (n+2)*(n-1))]` -/
def P18252241150457412021.Spec : Prop :=
  ∀ n, P18252241150457412021.a n = A302650 (n + 1)

end A302650

/-! ## A302650.P11879591813332236588

`∑[(n-1)*xor(1, (n+2)*(n-1))]`
-/

namespace A302650.P11879591813332236588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.xor 1 ((n + 2 : ℤ) * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302650.P11879591813332236588

namespace A302650

/-- `∑[(n-1)*xor(1, (n+2)*(n-1))]` -/
def P11879591813332236588.Spec : Prop :=
  ∀ n, P11879591813332236588.a n = A302650 (n + 1)

end A302650

/-! ## A302650.P1012650860237741501

`∑[a(n-1)-∑[a(n-1)-6]]` with `a(0)=1, a(1)=0`
-/

namespace A302650.P1012650860237741501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302650.P1012650860237741501

namespace A302650

/-- `∑[a(n-1)-∑[a(n-1)-6]]` -/
def P1012650860237741501.Spec : Prop :=
  ∀ n, P1012650860237741501.a n = A302650 (n + 1)

end A302650

/-! ## A302650.P16353860277996643531

`∑[(C(2*n, 2)-(1-n)²)*(n-1)]`
-/

namespace A302650.P16353860277996643531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) 2 : ℤ) - (1 - (n : ℤ)) ^ 2) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302650.P16353860277996643531

namespace A302650

/-- `∑[(C(2*n, 2)-(1-n)²)*(n-1)]` -/
def P16353860277996643531.Spec : Prop :=
  ∀ n, P16353860277996643531.a n = A302650 (n + 1)

end A302650

/-! ## A302650.P5972485589310888189

`∑[(∑[2*n]-gcd(n, n+1))*(n-1)]`
-/

namespace A302650.P5972485589310888189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.gcd n (n + 1) : ℤ)) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302650.P5972485589310888189

namespace A302650

/-- `∑[(∑[2*n]-gcd(n, n+1))*(n-1)]` -/
def P5972485589310888189.Spec : Prop :=
  ∀ n, P5972485589310888189.a n = A302650 (n + 1)

end A302650

/-! ## A302650.P6822569195890652590

`∑[(n-1)*∑[2*n-C(n, 2*n)]]`
-/

namespace A302650.P6822569195890652590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.choose n (2 * n) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302650.P6822569195890652590

namespace A302650

/-- `∑[(n-1)*∑[2*n-C(n, 2*n)]]` -/
def P6822569195890652590.Spec : Prop :=
  ∀ n, P6822569195890652590.a n = A302650 (n + 1)

end A302650

/-! ## A302650.P12255543967049856715

`floor(a(n-1)+1-n*(2-n*n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A302650.P12255543967049856715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (n : ℤ) * (2 - (n * n : ℤ))

end

end A302650.P12255543967049856715

namespace A302650

/-- `floor(a(n-1)+1-n*(2-n*n))` -/
def P12255543967049856715.Spec : Prop :=
  ∀ n, P12255543967049856715.a n = A302650 (n + 1)

end A302650

/-! ## A302650.P10566658446735345995

`∑[(∑[and(2*n+1, 2*n)]-1)*(n-1)]`
-/

namespace A302650.P10566658446735345995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302650.P10566658446735345995

namespace A302650

/-- `∑[(∑[and(2*n+1, 2*n)]-1)*(n-1)]` -/
def P10566658446735345995.Spec : Prop :=
  ∀ n, P10566658446735345995.a n = A302650 (n + 1)

end A302650

/-! ## A302650.P4709608624470194901

`∑[A033445(n)]`
-/

namespace A302650.P4709608624470194901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302650.P4709608624470194901

namespace A302650

/-- `∑[A033445(n)]` -/
def P4709608624470194901.Spec : Prop :=
  ∀ n, P4709608624470194901.a n = A302650 (n + 1)

end A302650

/-! ## A302650.P6353299406797465910

`A085740(n)+1`
-/

namespace A302650.P6353299406797465910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085740 n + 1

end

end A302650.P6353299406797465910

namespace A302650

/-- `A085740(n)+1` -/
def P6353299406797465910.Spec : Prop :=
  ∀ n, P6353299406797465910.a n = A302650 (n + 1)

end A302650

/-! ## A302650.P14916676678372554738

`∑[A242135(n)+1]`
-/

namespace A302650.P14916676678372554738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242135 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302650.P14916676678372554738

namespace A302650

/-- `∑[A242135(n)+1]` -/
def P14916676678372554738.Spec : Prop :=
  ∀ n, P14916676678372554738.a n = A302650 (n + 1)

end A302650

/-!
# A302651: Numbers that are the product of some fixed power of the digits of their ten's complement.

The programs for A302651, there is no canonical definition to state claims against.
-/

/-! ## A302651.P12854458641002360702

`A053901(n+1)*A325534(A340526(n+4))`
-/

namespace A302651.P12854458641002360702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053901 (n + 1) * A325534 (A340526 (n + 4)).toNat

end

end A302651.P12854458641002360702

/-!
# A302653: Number of minimum total dominating sets in the n-cycle graph.

The programs for A302653, the canonical program `A302653.P13391598555934270034` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302653 has offset 1).

The definition of A302653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302653.P13391598555934270034

`ogf((1+x+3x^2+4x^3+2x^4+6x^5-2x^6-8x^7-3x^8+x^9-x^10+4x^11)/(1-3x^4+3x^8-x^12))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302653

/-- `ogf((1+x+3x^2+4x^3+2x^4+6x^5-2x^6-8x^7-3x^8+x^9-x^10+4x^11)/(1-3x^4+3x^8-x^12))` -/
def P13391598555934270034.Spec : Prop :=
  ∀ n, P13391598555934270034.a n = A302653 (n + 1)

theorem P13391598555934270034.correct : P13391598555934270034.Spec := by
  intro n
  simp only [A302653, Nat.add_sub_cancel]

end A302653

/-! ## A302653.P14404281146180943553

`4*(4/(n+1))^∑[(-1)^∑[n+1]]`
-/

namespace A302653.P14404281146180943553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (4 / (n + 1 : ℚ)) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A302653.P14404281146180943553

namespace A302653

/-- `4*(4/(n+1))^∑[(-1)^∑[n+1]]` -/
def P14404281146180943553.Spec : Prop :=
  ∀ n, P14404281146180943553.a n = (A302653 (n + 1) : ℚ)

end A302653

/-! ## A302653.P3156457646885453986

`A382534(n+1)/A010707(n)`
-/

namespace A302653.P3156457646885453986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382534 (n + 1) : ℚ) / (A010707 n : ℚ)

end

end A302653.P3156457646885453986

namespace A302653

/-- `A382534(n+1)/A010707(n)` -/
def P3156457646885453986.Spec : Prop :=
  ∀ n, P3156457646885453986.a n = (A302653 (n + 1) : ℚ)

end A302653

/-! ## A302653.P12437367069294794384

`gcd(A004442(A057979(n))², A079097(n))`
-/

namespace A302653.P12437367069294794384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004442 (A057979 n).toNat ^ 2) (A079097 n)

end

end A302653.P12437367069294794384

namespace A302653

/-- `gcd(A004442(A057979(n))², A079097(n))` -/
def P12437367069294794384.Spec : Prop :=
  ∀ n, (P12437367069294794384.a n : ℤ) = A302653 (n + 1)

end A302653

/-! ## A302653.P1850094730036502976

`A079097(A005408(n)-A222259(n+1))`
-/

namespace A302653.P1850094730036502976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (A005408 n - A222259 (n + 1)).toNat

end

end A302653.P1850094730036502976

namespace A302653

/-- `A079097(A005408(n)-A222259(n+1))` -/
def P1850094730036502976.Spec : Prop :=
  ∀ n, P1850094730036502976.a n = A302653 (n + 1)

end A302653

/-! ## A302653.P7100224256464394337

`A141310(A065423(n+1))^A000034(n)`
-/

namespace A302653.P7100224256464394337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141310 (A065423 (n + 1)).toNat : ℚ) ^ (A000034 n : ℤ)

end

end A302653.P7100224256464394337

namespace A302653

/-- `A141310(A065423(n+1))^A000034(n)` -/
def P7100224256464394337.Spec : Prop :=
  ∀ n, P7100224256464394337.a n = (A302653 (n + 1) : ℚ)

end A302653

/-! ## A302653.P8912752876677996444

`A079097(A005408(n)%A222259(n+1))`
-/

namespace A302653.P8912752876677996444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (Int.tmod (A005408 n) (A222259 (n + 1))).toNat

end

end A302653.P8912752876677996444

namespace A302653

/-- `A079097(A005408(n)%A222259(n+1))` -/
def P8912752876677996444.Spec : Prop :=
  ∀ n, P8912752876677996444.a n = A302653 (n + 1)

end A302653

/-! ## A302653.P13243757080700582415

`4/(4/(n+1))^A007877(n+1)`
-/

namespace A302653.P13243757080700582415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (4 / (n + 1 : ℚ)) ^ (A007877 (n + 1) : ℤ)

end

end A302653.P13243757080700582415

namespace A302653

/-- `4/(4/(n+1))^A007877(n+1)` -/
def P13243757080700582415.Spec : Prop :=
  ∀ n, P13243757080700582415.a n = (A302653 (n + 1) : ℚ)

end A302653

/-! ## A302653.P12170935146425788928

`(A016789(n+2)%A065259(n+3))^A000034(n)`
-/

namespace A302653.P12170935146425788928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A016789 (n + 2)) (A065259 (n + 3)) : ℚ) ^ (A000034 n : ℤ)

end

end A302653.P12170935146425788928

namespace A302653

/-- `(A016789(n+2)%A065259(n+3))^A000034(n)` -/
def P12170935146425788928.Spec : Prop :=
  ∀ n, P12170935146425788928.a n = (A302653 (n + 1) : ℚ)

end A302653

/-! ## A302653.P17352909159890292119

`A230089(A079097(n))`
-/

namespace A302653.P17352909159890292119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230089 (A079097 n).toNat

end

end A302653.P17352909159890292119

namespace A302653

/-- `A230089(A079097(n))` -/
def P17352909159890292119.Spec : Prop :=
  ∀ n, P17352909159890292119.a n = A302653 (n + 1)

end A302653

/-! ## A302653.P17009399761685109355

`A079097(n)²/A079097(A079097(n)-1)`
-/

namespace A302653.P17009399761685109355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079097 n ^ 2 : ℚ) / (A079097 (A079097 n - 1).toNat : ℚ)

end

end A302653.P17009399761685109355

namespace A302653

/-- `A079097(n)²/A079097(A079097(n)-1)` -/
def P17009399761685109355.Spec : Prop :=
  ∀ n, P17009399761685109355.a n = (A302653 (n + 1) : ℚ)

end A302653

/-!
# A302654: Number of minimum total dominating sets in the n-path graph.

The programs for A302654, the canonical program `A302654.P13953149958891949344` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302654 has offset 1).

The definition of A302654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302654.P13953149958891949344

`ogf((x+2x^2+x^3+x^4+x^5-3x^6-2x^7-x^8+x^10+x^11)/(1-3x^4+3x^8-x^12))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302654

/-- `ogf((x+2x^2+x^3+x^4+x^5-3x^6-2x^7-x^8+x^10+x^11)/(1-3x^4+3x^8-x^12))` -/
def P13953149958891949344.Spec : Prop :=
  ∀ n, P13953149958891949344.a n = A302654 (n + 1)

theorem P13953149958891949344.correct : P13953149958891949344.Spec := by
  intro n
  simp only [A302654, Nat.add_sub_cancel]

end A302654

/-! ## A302654.P9699993451691573189

`A110657(n)^∑[1-and(2, n)]`
-/

namespace A302654.P9699993451691573189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110657 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A302654.P9699993451691573189

namespace A302654

/-- `A110657(n)^∑[1-and(2, n)]` -/
def P9699993451691573189.Spec : Prop :=
  ∀ n, P9699993451691573189.a n = (A302654 (n + 1) : ℚ)

end A302654

/-! ## A302654.P3144648889918313500

`A110657(n)^∑[A057077(n)]`
-/

namespace A302654.P3144648889918313500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110657 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A302654.P3144648889918313500

namespace A302654

/-- `A110657(n)^∑[A057077(n)]` -/
def P3144648889918313500.Spec : Prop :=
  ∀ n, P3144648889918313500.a n = (A302654 (n + 1) : ℚ)

end A302654

/-! ## A302654.P4562144453454496338

`A110657(n)^and(3, A006519(n+1))`
-/

namespace A302654.P4562144453454496338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110657 n : ℚ) ^ (Int.land 3 (A006519 (n + 1)) : ℤ)

end

end A302654.P4562144453454496338

namespace A302654

/-- `A110657(n)^and(3, A006519(n+1))` -/
def P4562144453454496338.Spec : Prop :=
  ∀ n, P4562144453454496338.a n = (A302654 (n + 1) : ℚ)

end A302654

/-! ## A302654.P11411801572969837039

`A110657(n)^and(n+1, A000034(n))`
-/

namespace A302654.P11411801572969837039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110657 n : ℚ) ^ (Int.land (n + 1 : ℤ) (A000034 n) : ℤ)

end

end A302654.P11411801572969837039

namespace A302654

/-- `A110657(n)^and(n+1, A000034(n))` -/
def P11411801572969837039.Spec : Prop :=
  ∀ n, P11411801572969837039.a n = (A302654 (n + 1) : ℚ)

end A302654

/-! ## A302654.P12595644930718249307

`A110657(n)^A033735(A135481(n))`
-/

namespace A302654.P12595644930718249307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110657 n : ℚ) ^ (A033735 (A135481 n).toNat : ℤ)

end

end A302654.P12595644930718249307

namespace A302654

/-- `A110657(n)^A033735(A135481(n))` -/
def P12595644930718249307.Spec : Prop :=
  ∀ n, P12595644930718249307.a n = (A302654 (n + 1) : ℚ)

end A302654

/-! ## A302654.P16597441965856054259

`A030451(A030451(n))^and(n+1, A001511(n+1))`
-/

namespace A302654.P16597441965856054259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030451 (A030451 n).toNat : ℚ) ^ (Int.land (n + 1 : ℤ) (A001511 (n + 1)) : ℤ)

end

end A302654.P16597441965856054259

namespace A302654

/-- `A030451(A030451(n))^and(n+1, A001511(n+1))` -/
def P16597441965856054259.Spec : Prop :=
  ∀ n, P16597441965856054259.a n = (A302654 (n + 1) : ℚ)

end A302654

/-! ## A302654.P12610357206593396465

`A110657(n)^A110657(Δ[A235700(n+1)])`
-/

namespace A302654.P12610357206593396465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235700 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110657 n : ℚ) ^ (A110657 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A302654.P12610357206593396465

namespace A302654

/-- `A110657(n)^A110657(Δ[A235700(n+1)])` -/
def P12610357206593396465.Spec : Prop :=
  ∀ n, P12610357206593396465.a n = (A302654 (n + 1) : ℚ)

end A302654

/-! ## A302654.P13006723105966922211

`A110657(n)^A000122(A135534(n+1))`
-/

namespace A302654.P13006723105966922211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110657 n : ℚ) ^ (A000122 (A135534 (n + 1)).toNat : ℤ)

end

end A302654.P13006723105966922211

namespace A302654

/-- `A110657(n)^A000122(A135534(n+1))` -/
def P13006723105966922211.Spec : Prop :=
  ∀ n, P13006723105966922211.a n = (A302654 (n + 1) : ℚ)

end A302654

/-! ## A302654.P16930743925379978718

`A110657(n)^A327172(A236313(n+1))`
-/

namespace A302654.P16930743925379978718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110657 n : ℚ) ^ (A327172 (A236313 (n + 1)).toNat : ℤ)

end

end A302654.P16930743925379978718

namespace A302654

/-- `A110657(n)^A327172(A236313(n+1))` -/
def P16930743925379978718.Spec : Prop :=
  ∀ n, P16930743925379978718.a n = (A302654 (n + 1) : ℚ)

end A302654

/-! ## A302654.P9203121612828698123

`A004525(A347650(n+1)+n+1)-A004525(n+1)`
-/

namespace A302654.P9203121612828698123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A347650 (n + 1) + (n + 1 : ℤ)).toNat - A004525 (n + 1)

end

end A302654.P9203121612828698123

namespace A302654

/-- `A004525(A347650(n+1)+n+1)-A004525(n+1)` -/
def P9203121612828698123.Spec : Prop :=
  ∀ n, P9203121612828698123.a n = A302654 (n + 1)

end A302654

/-!
# A302655: Number of minimal total dominating sets in the n-path graph.

The programs for A302655, the canonical program `A302655.P665436148993416073` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302655 has offset 1).

The definition of A302655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302655.P13650599439344102932

`ogf((x+2x^2+x^3+x^4+x^5-x^6-2x^7-x^8)/(1-x^3-x^4-x^5-x^6+x^8+x^9))`
-/

namespace A302655.P13650599439344102932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 1, 1, 1, -1, -2, -1] [1, 0, 0, -1, -1, -1, -1, 0, 1, 1] n

end

end A302655.P13650599439344102932

namespace A302655

/-- `ogf((x+2x^2+x^3+x^4+x^5-x^6-2x^7-x^8)/(1-x^3-x^4-x^5-x^6+x^8+x^9))` -/
def P13650599439344102932.Spec : Prop :=
  ∀ n, P13650599439344102932.a n = A302655 (n + 1)

end A302655

/-! ## A302655.P665436148993416073

`a(n-3)+a(n-4)+a(n-5)+a(n-6)-a(n-8)-a(n-9)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=2, a(5)=4, a(6)=3, a(7)=4, a(8)=8`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302655

/-- `a(n-3)+a(n-4)+a(n-5)+a(n-6)-a(n-8)-a(n-9)` -/
def P665436148993416073.Spec : Prop :=
  ∀ n, P665436148993416073.a n = A302655 (n + 1)

theorem P665436148993416073.correct : P665436148993416073.Spec := by
  intro n
  simp only [A302655, Nat.add_sub_cancel]

end A302655

/-! ## A302655.P14546045695616587999

`A127682(n+1)*A127682(n+4)`
-/

namespace A302655.P14546045695616587999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (n + 1) * A127682 (n + 4)

end

end A302655.P14546045695616587999

namespace A302655

/-- `A127682(n+1)*A127682(n+4)` -/
def P14546045695616587999.Spec : Prop :=
  ∀ n, P14546045695616587999.a n = A302655 (n + 1)

end A302655

/-! ## A302655.P4288797144798659591

`A134816(A052938(n+1))*A182097(A052938(n))`
-/

namespace A302655.P4288797144798659591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A052938 (n + 1)).toNat * A182097 (A052938 n).toNat

end

end A302655.P4288797144798659591

namespace A302655

/-- `A134816(A052938(n+1))*A182097(A052938(n))` -/
def P4288797144798659591.Spec : Prop :=
  ∀ n, P4288797144798659591.a n = A302655 (n + 1)

end A302655

/-! ## A302655.P8265732062336302916

`A182097(A052938(n+3))*A182097(A052938(n))`
-/

namespace A302655.P8265732062336302916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A052938 (n + 3)).toNat * A182097 (A052938 n).toNat

end

end A302655.P8265732062336302916

namespace A302655

/-- `A182097(A052938(n+3))*A182097(A052938(n))` -/
def P8265732062336302916.Spec : Prop :=
  ∀ n, P8265732062336302916.a n = A302655 (n + 1)

end A302655

/-!
# A302656: Replacing each term of this sequence S with its digit-sum produces a new sequence S' such that S' and S share the same succession of digits.

The programs for A302656, there is no canonical definition to state claims against.
-/

/-! ## A302656.P1609048072631516088

`A061479(a(n-1)+1)` with `a(0)=1`
-/

namespace A302656.P1609048072631516088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061479 (a (n - 1) + 1).toNat

end

end A302656.P1609048072631516088

/-! ## A302656.P4177055635946299575

`A077726(a(n-1)+1)` with `a(0)=1`
-/

namespace A302656.P4177055635946299575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077726 (a (n - 1) + 1).toNat

end

end A302656.P4177055635946299575

/-! ## A302656.P4438966789534553884

`A143572(a(n-1))²+n` with `a(0)=1`
-/

namespace A302656.P4438966789534553884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143572 (a (n - 1)).toNat ^ 2 + (n : ℤ)

end

end A302656.P4438966789534553884

/-! ## A302656.P8857657267998564490

`A061479(C(n², dr(n)²)+n)`
-/

namespace A302656.P8857657267998564490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061479 (Nat.choose (n ^ 2) (SequenceMachineLib.digitalRoot (n : ℤ) ^ 2) + n)

end

end A302656.P8857657267998564490

/-! ## A302656.P4491474353869656100

`A061479((n+1)^(∑{digits}[n, 10^#]%9))`
-/

namespace A302656.P4491474353869656100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061479 ((n + 1) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9))

end

end A302656.P4491474353869656100

/-!
# A302657: a(n) = [x^n] 1 + x*(1 + 2*x*(1 + 3*x*(1 + 4*x*(1 + 5*x*(1 + ...)^n)^n)^n)^n)^n.

The programs for A302657, there is no canonical definition to state claims against.
-/

/-! ## A302657.P15222869252182580403

`∏{p}[A104238(a(n-1)), #-1]` with `a(0)=1`
-/

namespace A302657.P15222869252182580403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A104238 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A302657.P15222869252182580403

/-!
# A302658: Number of minimal total dominating sets in the wheel graph on n nodes.

The programs for A302658, the canonical program `A302658.P14429019079959570714` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302658 has offset 2).

The definition of A302658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302658.P916973796031478639

`ogf((1+3x^2-3x^3-x^4-x^5-8x^6-2x^7+8x^8+11x^9-9x^10)/(1-2x+x^2-x^3+x^4+x^7-x^9-x^10+x^11))`
-/

namespace A302658.P916973796031478639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3, -3, -1, -1, -8, -2, 8, 11, -9] [1, -2, 1, -1, 1, 0, 0, 1, 0, -1, -1, 1] n

end

end A302658.P916973796031478639

namespace A302658

/-- `ogf((1+3x^2-3x^3-x^4-x^5-8x^6-2x^7+8x^8+11x^9-9x^10)/(1-2x+x^2-x^3+x^4+x^7-x^9-x^10+x^11))` -/
def P916973796031478639.Spec : Prop :=
  ∀ n, P916973796031478639.a n = A302658 (n + 2)

end A302658

/-! ## A302658.P14429019079959570714

`A300738(n+1)+n+1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A302658

/-- `A300738(n+1)+n+1` -/
def P14429019079959570714.Spec : Prop :=
  ∀ n, P14429019079959570714.a n = A302658 (n + 2)

theorem P14429019079959570714.correct : P14429019079959570714.Spec := by
  intro n
  simp only [A302658, Nat.add_sub_cancel]

end A302658

/-! ## A302658.P15185203441903069007

`A298823(n+1)-(n+1)`
-/

namespace A302658.P15185203441903069007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298823 (n + 1) - (n + 1 : ℤ)

end

end A302658.P15185203441903069007

namespace A302658

/-- `A298823(n+1)-(n+1)` -/
def P15185203441903069007.Spec : Prop :=
  ∀ n, P15185203441903069007.a n = A302658 (n + 2)

end A302658

/-! ## A302658.P14250300948397958940

`A298823(Δ[n²]-n)-n-1`
-/

namespace A302658.P14250300948397958940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298823 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (n : ℤ) - 1

end

end A302658.P14250300948397958940

namespace A302658

/-- `A298823(Δ[n²]-n)-n-1` -/
def P14250300948397958940.Spec : Prop :=
  ∀ n, P14250300948397958940.a n = A302658 (n + 2)

end A302658

/-! ## A302658.P10607230464377156456

`A001608(A026741(n+1))^A000034(n)+n+1`
-/

namespace A302658.P10607230464377156456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001608 (A026741 (n + 1)).toNat : ℚ) ^ (A000034 n : ℤ) + (n + 1 : ℚ)

end

end A302658.P10607230464377156456

namespace A302658

/-- `A001608(A026741(n+1))^A000034(n)+n+1` -/
def P10607230464377156456.Spec : Prop :=
  ∀ n, P10607230464377156456.a n = (A302658 (n + 2) : ℚ)

end A302658

/-! ## A302658.P12000602458179606488

`round(sqrt((A298823(n+1)+A001489(n+1))²+1))`
-/

namespace A302658.P12000602458179606488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A298823 (n + 1) + A001489 (n + 1)) ^ 2 + 1 : ℝ))

end

end A302658.P12000602458179606488

namespace A302658

/-- `round(sqrt((A298823(n+1)+A001489(n+1))²+1))` -/
def P12000602458179606488.Spec : Prop :=
  ∀ n, P12000602458179606488.a n = A302658 (n + 2)

end A302658

/-!
# A302660: a(n) = (prime(n) mod 9) + (prime(n) mod 10).

The programs for A302660, the canonical program `A302660.P1050621792242828620` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302660 has offset 1).

The definition of A302660 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)%9+A000040(n+1)%10` (program `A302660.P1050621792242828620`, by `A302660.P1050621792242828620.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302660.P1292737769851460668

`A038194(n+1)+A007652(n+1)`
-/

namespace A302660.P1292737769851460668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1) + A007652 (n + 1)

end

end A302660.P1292737769851460668

namespace A302660

/-- `A038194(n+1)+A007652(n+1)` -/
def P1292737769851460668.Spec : Prop :=
  ∀ n, P1292737769851460668.a n = A302660 (n + 1)

end A302660

/-! ## A302660.P1050621792242828620

`A000040(n+1)%9+A000040(n+1)%10`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A302660

/-- `A000040(n+1)%9+A000040(n+1)%10` -/
def P1050621792242828620.Spec : Prop :=
  ∀ n, P1050621792242828620.a n = A302660 (n + 1)

theorem P1050621792242828620.correct : P1050621792242828620.Spec := by
  intro n
  simp only [A302660, Nat.add_sub_cancel]

end A302660

/-! ## A302660.P784749594992530699

`A007652(n+1)+dr(A000040(n+1))`
-/

namespace A302660.P784749594992530699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1) + (SequenceMachineLib.digitalRoot (A000040 (n + 1)) : ℤ)

end

end A302660.P784749594992530699

namespace A302660

/-- `A007652(n+1)+dr(A000040(n+1))` -/
def P784749594992530699.Spec : Prop :=
  ∀ n, P784749594992530699.a n = A302660 (n + 1)

end A302660

/-! ## A302660.P7776329630928241250

`A038194(n+1)+A000040(n+1)%10`
-/

namespace A302660.P7776329630928241250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1) + Int.tmod (A000040 (n + 1)) 10

end

end A302660.P7776329630928241250

namespace A302660

/-- `A038194(n+1)+A000040(n+1)%10` -/
def P7776329630928241250.Spec : Prop :=
  ∀ n, P7776329630928241250.a n = A302660 (n + 1)

end A302660

/-! ## A302660.P12502631653015562693

`A038194(n+1)+A110923(n+1)%10`
-/

namespace A302660.P12502631653015562693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1) + Int.tmod (A110923 (n + 1)) 10

end

end A302660.P12502631653015562693

namespace A302660

/-- `A038194(n+1)+A110923(n+1)%10` -/
def P12502631653015562693.Spec : Prop :=
  ∀ n, P12502631653015562693.a n = A302660 (n + 1)

end A302660

/-! ## A302660.P16481354227448433493

`A038194(n+1)+sqrt(A001248(n+1))%10`
-/

namespace A302660.P16481354227448433493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1) + Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 10

end

end A302660.P16481354227448433493

namespace A302660

/-- `A038194(n+1)+sqrt(A001248(n+1))%10` -/
def P16481354227448433493.Spec : Prop :=
  ∀ n, P16481354227448433493.a n = A302660 (n + 1)

end A302660

/-! ## A302660.P12700181675122859549

`dr(A000040(n+1))+10-A072003(n+1)`
-/

namespace A302660.P12700181675122859549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A000040 (n + 1)) : ℤ) + (10 - A072003 (n + 1))

end

end A302660.P12700181675122859549

namespace A302660

/-- `dr(A000040(n+1))+10-A072003(n+1)` -/
def P12700181675122859549.Spec : Prop :=
  ∀ n, P12700181675122859549.a n = A302660 (n + 1)

end A302660

/-! ## A302660.P17394697222877646707

`A007652(n+1)+dr(A095116(n+1)-n)`
-/

namespace A302660.P17394697222877646707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1) + (SequenceMachineLib.digitalRoot (A095116 (n + 1) - (n : ℤ)) : ℤ)

end

end A302660.P17394697222877646707

namespace A302660

/-- `A007652(n+1)+dr(A095116(n+1)-n)` -/
def P17394697222877646707.Spec : Prop :=
  ∀ n, P17394697222877646707.a n = A302660 (n + 1)

end A302660

/-! ## A302660.P11334615490749046716

`A038194(n+1)+A010879(A110923(n+1))`
-/

namespace A302660.P11334615490749046716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1) + A010879 (A110923 (n + 1)).toNat

end

end A302660.P11334615490749046716

namespace A302660

/-- `A038194(n+1)+A010879(A110923(n+1))` -/
def P11334615490749046716.Spec : Prop :=
  ∀ n, P11334615490749046716.a n = A302660 (n + 1)

end A302660

/-! ## A302660.P10296931827797071638

`A038194(n+1)+A010879(A137589(n+1))`
-/

namespace A302660.P10296931827797071638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1) + A010879 (A137589 (n + 1)).toNat

end

end A302660.P10296931827797071638

namespace A302660

/-- `A038194(n+1)+A010879(A137589(n+1))` -/
def P10296931827797071638.Spec : Prop :=
  ∀ n, P10296931827797071638.a n = A302660 (n + 1)

end A302660

/-! ## A302660.P1223915981057397825

`A038194(n+1)+A010879(A138840(n+1))`
-/

namespace A302660.P1223915981057397825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1) + A010879 (A138840 (n + 1)).toNat

end

end A302660.P1223915981057397825

namespace A302660

/-- `A038194(n+1)+A010879(A138840(n+1))` -/
def P1223915981057397825.Spec : Prop :=
  ∀ n, P1223915981057397825.a n = A302660 (n + 1)

end A302660

/-! ## A302660.P6660325449547883960

`A007652(n+1)+dr(eq[2, A152061(n)])`
-/

namespace A302660.P6660325449547883960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1) + (SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) : ℤ)

end

end A302660.P6660325449547883960

namespace A302660

/-- `A007652(n+1)+dr(eq[2, A152061(n)])` -/
def P6660325449547883960.Spec : Prop :=
  ∀ n, P6660325449547883960.a n = A302660 (n + 1)

end A302660

/-!
# A302661: Real part of Product_{k=1..n} (k+(n-k+1)i), with i=sqrt(-1).

The programs for A302661, there is no canonical definition to state claims against.
-/

/-! ## A302661.P1794673255681648945

`2*n!-A350356(2*n!)`
-/

namespace A302661.P1794673255681648945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial n : ℤ) - A350356 (2 * Nat.factorial n)

end

end A302661.P1794673255681648945

/-!
# A302662: Imaginary part of Product_{k=1..n} (k+(n-k+1)i), with i=sqrt(-1).

The programs for A302662, there is no canonical definition to state claims against.
-/

/-! ## A302662.P4275409613920482039

`A000142(n+1)-A304407(A168562(n))`
-/

namespace A302662.P4275409613920482039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A304407 (A168562 n).toNat

end

end A302662.P4275409613920482039

/-!
# A302664: Number of n X n 0..1 arrays with every element equal to 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302664, there is no canonical definition to state claims against.
-/

/-! ## A302664.P18197080906455969598

`A302670(∑[4*n]+1)`
-/

namespace A302664.P18197080906455969598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302664.P18197080906455969598

/-! ## A302664.P9658453258897249490

`record[A302670(Δ[A235355(n)])]`
-/

namespace A302664.P9658453258897249490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302664.P9658453258897249490

/-! ## A302664.P2515980151655650437

`record[A302670(A330613(n+1))]`
-/

namespace A302664.P2515980151655650437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302664.P2515980151655650437

/-! ## A302664.P5501744971959802793

`A302670(A001844(n))+floor(n/10)`
-/

namespace A302664.P5501744971959802793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A001844 n).toNat + ⌊(n : ℚ) / 10⌋

end

end A302664.P5501744971959802793

/-! ## A302664.P16356810737185831966

`record[A003982(n)*A302670(n+1)]`
-/

namespace A302664.P16356810737185831966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302664.P16356810737185831966

/-!
# A302665: Number of nX3 0..1 arrays with every element equal to 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302665, there is no canonical definition to state claims against.
-/

/-! ## A302665.P18187424205913605601

`A302670(∑[n+3]+1)`
-/

namespace A302665.P18187424205913605601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302665.P18187424205913605601

/-! ## A302665.P179118112052365797

`A302670(A034856(n+2))+char[18]`
-/

namespace A302665.P179118112052365797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302665.P179118112052365797

/-! ## A302665.P3924972433041202349

`A302670(A052905(n)+3)+A217156(n+1)`
-/

namespace A302665.P3924972433041202349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A052905 n + 3).toNat + A217156 (n + 1)

end

end A302665.P3924972433041202349

/-! ## A302665.P4602451399950969838

`A302670(A034856(n+2))%A000108(n+5)`
-/

namespace A302665.P4602451399950969838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302670 (A034856 (n + 2)).toNat) (A000108 (n + 5))

end

end A302665.P4602451399950969838

/-! ## A302665.P16941204860724251583

`A007318(C(2, n))*A302670(A034856(n+2))`
-/

namespace A302665.P16941204860724251583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A302670 (A034856 (n + 2)).toNat

end

end A302665.P16941204860724251583

/-!
# A302666: Number of nX4 0..1 arrays with every element equal to 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302666, there is no canonical definition to state claims against.
-/

/-! ## A302666.P6503651203006429817

`A302670(∑[n+4]+3)`
-/

namespace A302666.P6503651203006429817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A302666.P6503651203006429817

/-! ## A302666.P12849142999891763977

`A302670(A000096(n+3)-2)+char[19]`
-/

namespace A302666.P12849142999891763977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A000096 (n + 3) - 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302666.P12849142999891763977

/-! ## A302666.P18348796470507966946

`A302670(A055998(n+2))+A025469(n)`
-/

namespace A302666.P18348796470507966946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A055998 (n + 2)).toNat + A025469 n

end

end A302666.P18348796470507966946

/-! ## A302666.P2690507441195576278

`A302670(A055998(n+2))+A185238(n)`
-/

namespace A302666.P2690507441195576278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A055998 (n + 2)).toNat + A185238 n

end

end A302666.P2690507441195576278

/-! ## A302666.P17703408167428577144

`or(A102683(n), A302670(A055998(n+2)))`
-/

namespace A302666.P17703408167428577144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 n) (A302670 (A055998 (n + 2)).toNat)

end

end A302666.P17703408167428577144

/-!
# A302667: Number of nX5 0..1 arrays with every element equal to 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302667, there is no canonical definition to state claims against.
-/

/-! ## A302667.P286475159238905676

`A302670(Δ[A264443(n)])`
-/

namespace A302667.P286475159238905676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (f1 (n + 1) - f1 n).toNat

end

end A302667.P286475159238905676

/-! ## A302667.P3752493975145379673

`A302670(A046691(n+3))`
-/

namespace A302667.P3752493975145379673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A046691 (n + 3)).toNat

end

end A302667.P3752493975145379673

/-! ## A302667.P4992766054554458799

`A302670(A056115(n)+11)`
-/

namespace A302667.P4992766054554458799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A056115 n + 11).toNat

end

end A302667.P4992766054554458799

/-! ## A302667.P17178846555446049094

`A302670(eq[2, A092921(n)])`
-/

namespace A302667.P17178846555446049094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302667.P17178846555446049094

/-! ## A302667.P5295842235773142455

`A302670(eq[3, A152157(n)])`
-/

namespace A302667.P5295842235773142455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302667.P5295842235773142455

/-!
# A302668: Number of nX6 0..1 arrays with every element equal to 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302668, there is no canonical definition to state claims against.
-/

/-! ## A302668.P6435935185513808928

`A302670(A052905(n+3))`
-/

namespace A302668.P6435935185513808928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A052905 (n + 3)).toNat

end

end A302668.P6435935185513808928

/-! ## A302668.P18131031890364325416

`A302670(A302537(n)+15)`
-/

namespace A302668.P18131031890364325416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A302537 n + 15).toNat

end

end A302668.P18131031890364325416

/-! ## A302668.P5721127762851219295

`A302670(A056119(n)+16)`
-/

namespace A302668.P5721127762851219295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A056119 n + 16).toNat

end

end A302668.P5721127762851219295

/-! ## A302668.P2826512612785869386

`A302670(eq[3, A219347(n)])`
-/

namespace A302668.P2826512612785869386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302668.P2826512612785869386

/-! ## A302668.P13787112550834956771

`A302670(eq[5, A193592(n)])`
-/

namespace A302668.P13787112550834956771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302668.P13787112550834956771

/-!
# A302669: Number of nX7 0..1 arrays with every element equal to 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302669, there is no canonical definition to state claims against.
-/

/-! ## A302669.P3905737252096677776

`A302670(A055999(n+4))`
-/

namespace A302669.P3905737252096677776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A055999 (n + 4)).toNat

end

end A302669.P3905737252096677776

/-! ## A302669.P12450928883574420435

`A302670(eq[4, A219347(n)])`
-/

namespace A302669.P12450928883574420435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302669.P12450928883574420435

/-! ## A302669.P3743229164814801288

`A302670(eq[6, A193592(n)])`
-/

namespace A302669.P3743229164814801288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302669.P3743229164814801288

/-! ## A302669.P14450968894656471623

`A302670(A052905(n+4)-1)`
-/

namespace A302669.P14450968894656471623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A052905 (n + 4) - 1).toNat

end

end A302669.P14450968894656471623

/-! ## A302669.P13728197129018665194

`A302670(A056000(n+3)+4)`
-/

namespace A302669.P13728197129018665194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A056000 (n + 3) + 4).toNat

end

end A302669.P13728197129018665194

/-!
# A302671: Number of 5Xn 0..1 arrays with every element equal to 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302671, there is no canonical definition to state claims against.
-/

/-! ## A302671.P1398661109030517159

`A302670(A167499(n+3))`
-/

namespace A302671.P1398661109030517159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A167499 (n + 3)).toNat

end

end A302671.P1398661109030517159

/-! ## A302671.P7323206475272907233

`A302670(A155212(n)+13)`
-/

namespace A302671.P7323206475272907233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A155212 n + 13).toNat

end

end A302671.P7323206475272907233

/-! ## A302671.P4223793155864599980

`A302670(A056000(n)+15)`
-/

namespace A302671.P4223793155864599980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A056000 n + 15).toNat

end

end A302671.P4223793155864599980

/-! ## A302671.P17351830397046756479

`A302670(eq[7, A066657(n)])`
-/

namespace A302671.P17351830397046756479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302671.P17351830397046756479

/-! ## A302671.P11487353833548382403

`A302670(A167614(n+3)+2)`
-/

namespace A302671.P11487353833548382403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A167614 (n + 3) + 2).toNat

end

end A302671.P11487353833548382403

/-!
# A302672: Number of 6Xn 0..1 arrays with every element equal to 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302672, there is no canonical definition to state claims against.
-/

/-! ## A302672.P1890710805342091004

`A302670(∑[n+5]+16)`
-/

namespace A302672.P1890710805342091004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A302672.P1890710805342091004

/-! ## A302672.P1318212230239520640

`A302670(A167499(n+4)+1)^A001222(A063904(n+1))`
-/

namespace A302672.P1318212230239520640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302670 (A167499 (n + 4) + 1).toNat : ℚ) ^ (A001222 (A063904 (n + 1)).toNat : ℤ)

end

end A302672.P1318212230239520640

/-! ## A302672.P462642306711044677

`A302670(A167614(n+4)+3)^A001222(A063904(n+1))`
-/

namespace A302672.P462642306711044677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302670 (A167614 (n + 4) + 3).toNat : ℚ) ^ (A001222 (A063904 (n + 1)).toNat : ℤ)

end

end A302672.P462642306711044677

/-! ## A302672.P6674037098966923202

`A302670(A000124(n+5)+5)^A001222(A063904(n+1))`
-/

namespace A302672.P6674037098966923202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302670 (A000124 (n + 5) + 5).toNat : ℚ) ^ (A001222 (A063904 (n + 1)).toNat : ℤ)

end

end A302672.P6674037098966923202

/-! ## A302672.P13208813404814151897

`A302670(A141214(n+2)+9)^A001222(A063904(n+1))`
-/

namespace A302672.P13208813404814151897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302670 (A141214 (n + 2) + 9).toNat : ℚ) ^ (A001222 (A063904 (n + 1)).toNat : ℤ)

end

end A302672.P13208813404814151897

/-!
# A302673: Number of 7Xn 0..1 arrays with every element equal to 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302673, there is no canonical definition to state claims against.
-/

/-! ## A302673.P6151207541124611351

`A302670(A167487(n+5))`
-/

namespace A302673.P6151207541124611351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A167487 (n + 5)).toNat

end

end A302673.P6151207541124611351

/-! ## A302673.P15831511723646175404

`A302670(A056119(n)+28)`
-/

namespace A302673.P15831511723646175404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A056119 n + 28).toNat

end

end A302673.P15831511723646175404

/-! ## A302673.P17624416247844183967

`A302670(eq[11, A066657(n)])`
-/

namespace A302673.P17624416247844183967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302673.P17624416247844183967

/-! ## A302673.P1447834184220686192

`A302670(eq[8, A131818(n+1)])`
-/

namespace A302673.P1447834184220686192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302673.P1447834184220686192

/-! ## A302673.P5753568678123006635

`A302670(A000124(n+7)-(n+1))`
-/

namespace A302673.P5753568678123006635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A302673.P5753568678123006635

/-!
# A302674: Number of n X n 0..1 arrays with every element equal to 0, 1, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302674, there is no canonical definition to state claims against.
-/

/-! ## A302674.P5046926263451993106

`A302680((n+1)²+n²)`
-/

namespace A302674.P5046926263451993106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 ((n + 1) ^ 2 + n ^ 2)

end

end A302674.P5046926263451993106

/-! ## A302674.P7022046667680022373

`record[A003982(n)*A302680(n+1)]`
-/

namespace A302674.P7022046667680022373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302674.P7022046667680022373

/-! ## A302674.P8710971617648798657

`record[gcd(A231713(n), A302680(n+1))]`
-/

namespace A302674.P8710971617648798657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A231713 n) (A302680 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302674.P8710971617648798657

/-! ## A302674.P2301357061653876643

`A302680(A001844(n))+A025469(n)`
-/

namespace A302674.P2301357061653876643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A001844 n).toNat + A025469 n

end

end A302674.P2301357061653876643

/-! ## A302674.P7711170698090027930

`A302680(A001844(n))^A178334(n)`
-/

namespace A302674.P7711170698090027930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302680 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A302674.P7711170698090027930

/-!
# A302675: Number of nX3 0..1 arrays with every element equal to 0, 1, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302675, the canonical program `A302675.P14722737427642546389` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302675 has offset 1).

The definition of A302675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302675.P16584427571254985358

`ogf((-3-2x^2+4x^3+4x^4)/(-1+x+x^2))`
-/

namespace A302675.P16584427571254985358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 2, -4, -4] [1, -1, -1] n

end

end A302675.P16584427571254985358

namespace A302675

/-- `ogf((-3-2x^2+4x^3+4x^4)/(-1+x+x^2))` -/
def P16584427571254985358.Spec : Prop :=
  ∀ n, P16584427571254985358.a n = A302675 (n + 1)

end A302675

/-! ## A302675.P5631905315975960674

`round(ϕ*a(n-1))` with `a(0)=3, a(1)=3, a(2)=8, a(3)=7`
-/

namespace A302675.P5631905315975960674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 8, 7] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A302675.P5631905315975960674

namespace A302675

/-- `round(ϕ*a(n-1))` -/
def P5631905315975960674.Spec : Prop :=
  ∀ n, P5631905315975960674.a n = A302675 (n + 1)

end A302675

/-! ## A302675.P14722737427642546389

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=3, a(2)=8, a(3)=7, a(4)=11`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302675

/-- `a(n-1)+a(n-2)` -/
def P14722737427642546389.Spec : Prop :=
  ∀ n, (P14722737427642546389.a n : ℤ) = A302675 (n + 1)

theorem P14722737427642546389.correct : P14722737427642546389.Spec := by
  intro n
  simp only [A302675, Nat.add_sub_cancel]

end A302675

/-! ## A302675.P3046447077540531299

`A000032((n+1)%a(n-1))` with `a(0)=3, a(1)=3, a(2)=8`
-/

namespace A302675.P3046447077540531299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 8] fun n a =>
  A000032 (Int.tmod (n + 1 : ℤ) (a (n - 1))).toNat

end

end A302675.P3046447077540531299

namespace A302675

/-- `A000032((n+1)%a(n-1))` -/
def P3046447077540531299.Spec : Prop :=
  ∀ n, P3046447077540531299.a n = A302675 (n + 1)

end A302675

/-! ## A302675.P7951895263296095870

`val(4*(n+2), n+2)*A000032(n+1)`
-/

namespace A302675.P7951895263296095870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (4 * (n + 2)) (n + 2) : ℤ) * A000032 (n + 1)

end

end A302675.P7951895263296095870

namespace A302675

/-- `val(4*(n+2), n+2)*A000032(n+1)` -/
def P7951895263296095870.Spec : Prop :=
  ∀ n, P7951895263296095870.a n = A302675 (n + 1)

end A302675

/-! ## A302675.P10384473983192650767

`ceil(3/A123225(n))*A000032(n+1)`
-/

namespace A302675.P10384473983192650767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / (A123225 n : ℚ)⌉ * A000032 (n + 1)

end

end A302675.P10384473983192650767

namespace A302675

/-- `ceil(3/A123225(n))*A000032(n+1)` -/
def P10384473983192650767.Spec : Prop :=
  ∀ n, P10384473983192650767.a n = A302675 (n + 1)

end A302675

/-! ## A302675.P13941254985905327493

`round(ratio[A000201(n+1)])*A000204(n+1)`
-/

namespace A302675.P13941254985905327493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) * A000204 (n + 1)

end

end A302675.P13941254985905327493

namespace A302675

/-- `round(ratio[A000201(n+1)])*A000204(n+1)` -/
def P13941254985905327493.Spec : Prop :=
  ∀ n, P13941254985905327493.a n = A302675 (n + 1)

end A302675

/-! ## A302675.P14782780538804534455

`A130123(A008578(n+2))+A000204(n+1)`
-/

namespace A302675.P14782780538804534455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 (A008578 (n + 2)).toNat + A000204 (n + 1)

end

end A302675.P14782780538804534455

namespace A302675

/-- `A130123(A008578(n+2))+A000204(n+1)` -/
def P14782780538804534455.Spec : Prop :=
  ∀ n, P14782780538804534455.a n = A302675 (n + 1)

end A302675

/-! ## A302675.P10819271160160910363

`ceil((n+3)/A205971(n))*A000032(n+1)`
-/

namespace A302675.P10819271160160910363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℚ) / (A205971 n : ℚ)⌉ * A000032 (n + 1)

end

end A302675.P10819271160160910363

namespace A302675

/-- `ceil((n+3)/A205971(n))*A000032(n+1)` -/
def P10819271160160910363.Spec : Prop :=
  ∀ n, P10819271160160910363.a n = A302675 (n + 1)

end A302675

/-! ## A302675.P12987123378657018142

`A130123(A249644(n+1))+A000204(n+1)`
-/

namespace A302675.P12987123378657018142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 (A249644 (n + 1)).toNat + A000204 (n + 1)

end

end A302675.P12987123378657018142

namespace A302675

/-- `A130123(A249644(n+1))+A000204(n+1)` -/
def P12987123378657018142.Spec : Prop :=
  ∀ n, P12987123378657018142.a n = A302675 (n + 1)

end A302675

/-! ## A302675.P14874027900704024512

`A000204(n+1)+and(6, A163062(n))`
-/

namespace A302675.P14874027900704024512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + Int.land 6 (A163062 n)

end

end A302675.P14874027900704024512

namespace A302675

/-- `A000204(n+1)+and(6, A163062(n))` -/
def P14874027900704024512.Spec : Prop :=
  ∀ n, P14874027900704024512.a n = A302675 (n + 1)

end A302675

/-!
# A302676: Number of n X 4 0..1 arrays with every element equal to 0, 1, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302676, the canonical program `A302676.P9183785797666970163` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302676 has offset 1).

The definition of A302676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302676.P5643299763717274779

`ogf((5-3x^2-2x^3-6x^4-4x^5+3x^6+2x^7)/(1-x-2x^2+x^4))`
-/

namespace A302676.P5643299763717274779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 0, -3, -2, -6, -4, 3, 2] [1, -1, -2, 0, 1] n

end

end A302676.P5643299763717274779

namespace A302676

/-- `ogf((5-3x^2-2x^3-6x^4-4x^5+3x^6+2x^7)/(1-x-2x^2+x^4))` -/
def P5643299763717274779.Spec : Prop :=
  ∀ n, P5643299763717274779.a n = A302676 (n + 1)

end A302676

/-! ## A302676.P9183785797666970163

`a(n-1)+2*a(n-2)-a(n-4)` with `a(0)=5, a(1)=5, a(2)=12, a(3)=20, a(4)=33, a(5)=64, a(6)=121, a(7)=231`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302676

/-- `a(n-1)+2*a(n-2)-a(n-4)` -/
def P9183785797666970163.Spec : Prop :=
  ∀ n, P9183785797666970163.a n = A302676 (n + 1)

theorem P9183785797666970163.correct : P9183785797666970163.Spec := by
  intro n
  simp only [A302676, Nat.add_sub_cancel]

end A302676

/-! ## A302676.P7895826524110389624

`A302680(∑[n+3]+n+4)`
-/

namespace A302676.P7895826524110389624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A302676.P7895826524110389624

namespace A302676

/-- `A302680(∑[n+3]+n+4)` -/
def P7895826524110389624.Spec : Prop :=
  ∀ n, P7895826524110389624.a n = A302676 (n + 1)

end A302676

/-! ## A302676.P3041972580107074813

`A302680(A027379(n+2))%A017466(n)`
-/

namespace A302676.P3041972580107074813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302680 (A027379 (n + 2)).toNat) (A017466 n)

end

end A302676.P3041972580107074813

namespace A302676

/-- `A302680(A027379(n+2))%A017466(n)` -/
def P3041972580107074813.Spec : Prop :=
  ∀ n, P3041972580107074813.a n = A302676 (n + 1)

end A302676

/-! ## A302676.P17839679363546259479

`or(A000007(n), A302680(A027379(n+2)))`
-/

namespace A302676.P17839679363546259479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A302680 (A027379 (n + 2)).toNat)

end

end A302676.P17839679363546259479

namespace A302676

/-- `or(A000007(n), A302680(A027379(n+2)))` -/
def P17839679363546259479.Spec : Prop :=
  ∀ n, P17839679363546259479.a n = A302676 (n + 1)

end A302676

/-!
# A302677: Number of nX5 0..1 arrays with every element equal to 0, 1, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302677, there is no canonical definition to state claims against.
-/

/-! ## A302677.P10696487580103840198

`A302680(A046691(n+3))`
-/

namespace A302677.P10696487580103840198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A046691 (n + 3)).toNat

end

end A302677.P10696487580103840198

/-! ## A302677.P12726166388773272677

`A302680(Δ[A023545(n+1)])`
-/

namespace A302677.P12726166388773272677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (f1 (n + 1) - f1 n).toNat

end

end A302677.P12726166388773272677

/-! ## A302677.P17772436409513906559

`A302680(A000096(n+4)-3)`
-/

namespace A302677.P17772436409513906559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A000096 (n + 4) - 3).toNat

end

end A302677.P17772436409513906559

/-! ## A302677.P16471850830608574299

`A302680(A000217(n+5)-4)`
-/

namespace A302677.P16471850830608574299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A000217 (n + 5) - 4).toNat

end

end A302677.P16471850830608574299

/-! ## A302677.P2551970658926083755

`A302680(A000124(n+5)-5)`
-/

namespace A302677.P2551970658926083755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A000124 (n + 5) - 5).toNat

end

end A302677.P2551970658926083755

/-!
# A302678: Number of nX6 0..1 arrays with every element equal to 0, 1, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302678, there is no canonical definition to state claims against.
-/

/-! ## A302678.P16302260660141642776

`A302680(A052905(n+3))`
-/

namespace A302678.P16302260660141642776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A052905 (n + 3)).toNat

end

end A302678.P16302260660141642776

/-! ## A302678.P7132061513624040954

`A302680(A000217(n+6)-5)`
-/

namespace A302678.P7132061513624040954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A000217 (n + 6) - 5).toNat

end

end A302678.P7132061513624040954

/-! ## A302678.P7821939518160532061

`A302680(A000124(n+6)-6)`
-/

namespace A302678.P7821939518160532061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A000124 (n + 6) - 6).toNat

end

end A302678.P7821939518160532061

/-! ## A302678.P942992793713692237

`A302680(eq[8, A243070(n+1)])`
-/

namespace A302678.P942992793713692237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302678.P942992793713692237

/-! ## A302678.P17821203434756429301

`A302680(Δ[A023551(n+1)]+1)`
-/

namespace A302678.P17821203434756429301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (f1 (n + 1) - f1 n + 1).toNat

end

end A302678.P17821203434756429301

/-!
# A302679: Number of nX7 0..1 arrays with every element equal to 0, 1, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302679, there is no canonical definition to state claims against.
-/

/-! ## A302679.P8185037499113471799

`A302680(Δ[A023551(n+2)])`
-/

namespace A302679.P8185037499113471799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (f1 (n + 1) - f1 n).toNat

end

end A302679.P8185037499113471799

/-! ## A302679.P8935224907351018549

`A302680(Δ[A026054(n+4)])`
-/

namespace A302679.P8935224907351018549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (f1 (n + 1) - f1 n).toNat

end

end A302679.P8935224907351018549

/-! ## A302679.P6209650416553068401

`A302680(A000217(n+7)-6)`
-/

namespace A302679.P6209650416553068401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A000217 (n + 7) - 6).toNat

end

end A302679.P6209650416553068401

/-! ## A302679.P11806812009970978488

`A302680(A000124(n+7)-7)`
-/

namespace A302679.P11806812009970978488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A000124 (n + 7) - 7).toNat

end

end A302679.P11806812009970978488

/-! ## A302679.P14946350173900636716

`A302680(A000217(n+6)+n+1)`
-/

namespace A302679.P14946350173900636716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A000217 (n + 6) + (n : ℤ) + 1).toNat

end

end A302679.P14946350173900636716

/-!
# A302680: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302680, there is no canonical definition to state claims against.
-/

/-! ## A302680.P8869931617919888806

`A302515(n+1)-A175267(A022166(n))`
-/

namespace A302680.P8869931617919888806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (n + 1) - A175267 (A022166 n).toNat

end

end A302680.P8869931617919888806

/-! ## A302680.P326952156053729289

`A303314(n+1)-A228360(A086645(n))`
-/

namespace A302680.P326952156053729289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (n + 1) - A228360 (A086645 n).toNat

end

end A302680.P326952156053729289

/-! ## A302680.P5062860192607322521

`A303314(n+1)-A183063(A157156(n))`
-/

namespace A302680.P5062860192607322521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (n + 1) - A183063 (A157156 n).toNat

end

end A302680.P5062860192607322521

/-! ## A302680.P12249944184031209007

`A303314(n+1)-A217155(A144463(n))`
-/

namespace A302680.P12249944184031209007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (n + 1) - A217155 (A144463 n).toNat

end

end A302680.P12249944184031209007

/-! ## A302680.P17644106144122631255

`A303314(n+1)-A217155(A174038(n))`
-/

namespace A302680.P17644106144122631255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (n + 1) - A217155 (A174038 n).toNat

end

end A302680.P17644106144122631255

/-!
# A302681: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302681, the canonical program `A302681.P10174157638296005927` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302681 has offset 1).

The definition of A302681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302681.P10174157638296005927

`a(n-1)+3*a(n-3)+3*a(n-4)` with `a(0)=4, a(1)=4, a(2)=8, a(3)=12, a(4)=18, a(5)=40, a(6)=94`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302681

/-- `a(n-1)+3*a(n-3)+3*a(n-4)` -/
def P10174157638296005927.Spec : Prop :=
  ∀ n, (P10174157638296005927.a n : ℤ) = A302681 (n + 1)

theorem P10174157638296005927.correct : P10174157638296005927.Spec := by
  intro n
  simp only [A302681, Nat.add_sub_cancel]

end A302681

/-! ## A302681.P7279427232891713319

`A302680(∑[n+2]+4)`
-/

namespace A302681.P7279427232891713319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302681.P7279427232891713319

namespace A302681

/-- `A302680(∑[n+2]+4)` -/
def P7279427232891713319.Spec : Prop :=
  ∀ n, P7279427232891713319.a n = A302681 (n + 1)

end A302681

/-! ## A302681.P7655300600569721862

`lcm(2, A302680(A046691(n)+7))`
-/

namespace A302681.P7655300600569721862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A302680 (A046691 n + 7).toNat)

end

end A302681.P7655300600569721862

namespace A302681

/-- `lcm(2, A302680(A046691(n)+7))` -/
def P7655300600569721862.Spec : Prop :=
  ∀ n, (P7655300600569721862.a n : ℤ) = A302681 (n + 1)

end A302681

/-! ## A302681.P16702445720576940351

`A302680(A046691(n)+7)+n-A118759(n)`
-/

namespace A302681.P16702445720576940351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A046691 n + 7).toNat + ((n : ℤ) - A118759 n)

end

end A302681.P16702445720576940351

namespace A302681

/-- `A302680(A046691(n)+7)+n-A118759(n)` -/
def P16702445720576940351.Spec : Prop :=
  ∀ n, P16702445720576940351.a n = A302681 (n + 1)

end A302681

/-! ## A302681.P14378948732076696308

`A000005(gcd(n, n+1))*A302680(A046691(n)+7)`
-/

namespace A302681.P14378948732076696308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A302680 (A046691 n + 7).toNat

end

end A302681.P14378948732076696308

namespace A302681

/-- `A000005(gcd(n, n+1))*A302680(A046691(n)+7)` -/
def P14378948732076696308.Spec : Prop :=
  ∀ n, P14378948732076696308.a n = A302681 (n + 1)

end A302681

/-!
# A302682: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302682, there is no canonical definition to state claims against.
-/

/-! ## A302682.P6158610065095047445

`A302680(A052905(n)+9)`
-/

namespace A302682.P6158610065095047445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A052905 n + 9).toNat

end

end A302682.P6158610065095047445

/-! ## A302682.P14336384667646536845

`A302680(A055999(n)+10)`
-/

namespace A302682.P14336384667646536845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A055999 n + 10).toNat

end

end A302682.P14336384667646536845

/-! ## A302682.P5968793669989805060

`A302680(A167614(n+2)+1)`
-/

namespace A302682.P5968793669989805060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A167614 (n + 2) + 1).toNat

end

end A302682.P5968793669989805060

/-! ## A302682.P16811160923935970088

`A302680(A167487(n+2)-3)`
-/

namespace A302682.P16811160923935970088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A167487 (n + 2) - 3).toNat

end

end A302682.P16811160923935970088

/-! ## A302682.P5195806614202789758

`A302680(Δ[A023545(n+1)-n²])`
-/

namespace A302682.P5195806614202789758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (f1 (n + 1) - f1 n).toNat

end

end A302682.P5195806614202789758

/-!
# A302683: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302683, there is no canonical definition to state claims against.
-/

/-! ## A302683.P8808639010459581428

`A302680(A167499(n+3))`
-/

namespace A302683.P8808639010459581428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A167499 (n + 3)).toNat

end

end A302683.P8808639010459581428

/-! ## A302683.P17558832681874865495

`A302680(A155212(n)+13)`
-/

namespace A302683.P17558832681874865495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A155212 n + 13).toNat

end

end A302683.P17558832681874865495

/-! ## A302683.P8017347801835230657

`A302680(A056000(n)+15)`
-/

namespace A302683.P8017347801835230657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A056000 n + 15).toNat

end

end A302683.P8017347801835230657

/-! ## A302683.P8674975582282781573

`A302680(A167614(n+3)+2)`
-/

namespace A302683.P8674975582282781573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A167614 (n + 3) + 2).toNat

end

end A302683.P8674975582282781573

/-! ## A302683.P14198634803081899076

`A302680(A000124(n+4)+4)`
-/

namespace A302683.P14198634803081899076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A000124 (n + 4) + 4).toNat

end

end A302683.P14198634803081899076

/-!
# A302684: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302684, there is no canonical definition to state claims against.
-/

/-! ## A302684.P4057676298945393510

`A302680(A167499(n+4)+1)`
-/

namespace A302684.P4057676298945393510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A167499 (n + 4) + 1).toNat

end

end A302684.P4057676298945393510

/-! ## A302684.P13443755073835059143

`A302680(A000217(n+5)+6)`
-/

namespace A302684.P13443755073835059143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A000217 (n + 5) + 6).toNat

end

end A302684.P13443755073835059143

/-! ## A302684.P7306519433240512226

`A302680(A052905(n+2)+11)`
-/

namespace A302684.P7306519433240512226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A052905 (n + 2) + 11).toNat

end

end A302684.P7306519433240512226

/-! ## A302684.P4746775388453145038

`A302680(Δ[A023545(n+1)]+10)`
-/

namespace A302684.P4746775388453145038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (f1 (n + 1) - f1 n + 10).toNat

end

end A302684.P4746775388453145038

/-!
# A302685: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302685, there is no canonical definition to state claims against.
-/

/-! ## A302685.P4282448302341900733

`A302680(A167487(n+5))`
-/

namespace A302685.P4282448302341900733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A167487 (n + 5)).toNat

end

end A302685.P4282448302341900733

/-! ## A302685.P4046061769156117958

`A302680(A167614(n+5)+4)`
-/

namespace A302685.P4046061769156117958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A167614 (n + 5) + 4).toNat

end

end A302685.P4046061769156117958

/-! ## A302685.P3821037318642109021

`A302680(A000217(n+6)+7)`
-/

namespace A302685.P3821037318642109021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A000217 (n + 6) + 7).toNat

end

end A302685.P3821037318642109021

/-! ## A302685.P15249045619827017778

`A302680(A000124(n+10)-A008574(n+7))`
-/

namespace A302685.P15249045619827017778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (A000124 (n + 10) - A008574 (n + 7)).toNat

end

end A302685.P15249045619827017778

/-!
# A302686: a(n) = [x^n] 1 + x*(1 + x*(1 + x*(1 + x*(1 + ...)^(4*n))^(3*n))^(2*n))^n.

The programs for A302686, there is no canonical definition to state claims against.
-/

/-! ## A302686.P7527027399268246460

`abs(5-A288243(n!))`
-/

namespace A302686.P7527027399268246460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A288243 (Nat.factorial n)|

end

end A302686.P7527027399268246460

/-!
# A302687: a(1) = 1; a(2) = 2; then a(n) is the smallest number > a(n-1) such that a(n) divides concat(a(1), a(2), ..., a(n-1)).

The programs for A302687, there is no canonical definition to state claims against.
-/

/-! ## A302687.P4924537830022176605

`∩[A354361(n+1), A358459(n+1)]`
-/

namespace A302687.P4924537830022176605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302687.P4924537830022176605

/-!
# A302688: Expansion of 1 + x*(1 + 2*x*(1 + 3*x*(1 + 4*x*(1 + 5*x*(1 + ...)^5)^4)^3)^2).

The programs for A302688, there is no canonical definition to state claims against.
-/

/-! ## A302688.P8687018698445230052

`A195013((1-n)²*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A302688.P8687018698445230052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A195013 ((1 - (n : ℤ)) ^ 2 * a (n - 1)).toNat

end

end A302688.P8687018698445230052

/-! ## A302688.P8707476628839413970

`A355582(A336745(n!))`
-/

namespace A302688.P8707476628839413970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (A336745 (Nat.factorial n)).toNat

end

end A302688.P8707476628839413970

/-!
# A302689: a(n) = 4 + 2^n - 4*n.

The programs for A302689, the canonical program `A302689.P12957386915617573721` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302689 has offset 1).

The definition of A302689 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4+2^(n+1)-4*(n+1)` (program `A302689.P12957386915617573721`, by `A302689.P12957386915617573721.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302689.P15727057633425161481

`ogf((2-8x+10x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A302689.P15727057633425161481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -8, 10] [1, -4, 5, -2] n

end

end A302689.P15727057633425161481

namespace A302689

/-- `ogf((2-8x+10x^2)/(1-4x+5x^2-2x^3))` -/
def P15727057633425161481.Spec : Prop :=
  ∀ n, P15727057633425161481.a n = A302689 (n + 1)

end A302689

/-! ## A302689.P12957386915617573721

`4+2^(n+1)-4*(n+1)`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302689

/-- `4+2^(n+1)-4*(n+1)` -/
def P12957386915617573721.Spec : Prop :=
  ∀ n, P12957386915617573721.a n = A302689 (n + 1)

theorem P12957386915617573721.correct : P12957386915617573721.Spec := by
  intro n
  simp only [A302689, Nat.add_sub_cancel]

end A302689

/-! ## A302689.P6182518177950127558

`2*A005803(n)`
-/

namespace A302689.P6182518177950127558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005803 n

end

end A302689.P6182518177950127558

namespace A302689

/-- `2*A005803(n)` -/
def P6182518177950127558.Spec : Prop :=
  ∀ n, P6182518177950127558.a n = A302689 (n + 1)

theorem P6182518177950127558.correct : P6182518177950127558.Spec := by
  intro n
  simp only [A302689, Nat.add_sub_cancel, A302689.P6182518177950127558.a, A302689.P12957386915617573721.a, A005803, A005803.P14873078838690914956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A302689

/-! ## A302689.P17896952169029979879

`∑[ogf((2-8x+10x^2)/(1-3x+2x^2))]`
-/

namespace A302689.P17896952169029979879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -8, 10] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302689.P17896952169029979879

namespace A302689

/-- `∑[ogf((2-8x+10x^2)/(1-3x+2x^2))]` -/
def P17896952169029979879.Spec : Prop :=
  ∀ n, P17896952169029979879.a n = A302689 (n + 1)

end A302689

/-! ## A302689.P5346122607678552932

`lcm(2, 2^(n+1)-4*n)`
-/

namespace A302689.P5346122607678552932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((2 ^ (n + 1) : ℤ) - (4 * n : ℤ))

end

end A302689.P5346122607678552932

namespace A302689

/-- `lcm(2, 2^(n+1)-4*n)` -/
def P5346122607678552932.Spec : Prop :=
  ∀ n, (P5346122607678552932.a n : ℤ) = A302689 (n + 1)

end A302689

/-! ## A302689.P12779658053813522483

`2^n+a(n-1)-4` with `a(0)=2`
-/

namespace A302689.P12779658053813522483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (2 ^ n : ℤ) + (a (n - 1) - 4)

end

end A302689.P12779658053813522483

namespace A302689

/-- `2^n+a(n-1)-4` -/
def P12779658053813522483.Spec : Prop :=
  ∀ n, P12779658053813522483.a n = A302689 (n + 1)

theorem P12779658053813522483.correct : P12779658053813522483.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A302689, Nat.add_sub_cancel, A302689.P12779658053813522483.a, A302689.P12957386915617573721.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A302689, Nat.add_sub_cancel, A302689.P12779658053813522483.a, A302689.P12957386915617573721.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A302689

/-! ## A302689.P13817462730669589537

`2^n-(4-a(n-1))` with `a(0)=2`
-/

namespace A302689.P13817462730669589537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (2 ^ n : ℤ) - (4 - a (n - 1))

end

end A302689.P13817462730669589537

namespace A302689

/-- `2^n-(4-a(n-1))` -/
def P13817462730669589537.Spec : Prop :=
  ∀ n, P13817462730669589537.a n = A302689 (n + 1)

theorem P13817462730669589537.correct : P13817462730669589537.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A302689, Nat.add_sub_cancel, A302689.P13817462730669589537.a, A302689.P12957386915617573721.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A302689, Nat.add_sub_cancel, A302689.P13817462730669589537.a, A302689.P12957386915617573721.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A302689

/-! ## A302689.P16903546434129486796

`∑[2*(a(n-1)+2)]` with `a(0)=2, a(1)=-2`
-/

namespace A302689.P16903546434129486796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -2] fun n f1 =>
  2 * (f1 (n - 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302689.P16903546434129486796

namespace A302689

/-- `∑[2*(a(n-1)+2)]` -/
def P16903546434129486796.Spec : Prop :=
  ∀ n, P16903546434129486796.a n = A302689 (n + 1)

end A302689

/-! ## A302689.P15962676453442924884

`∑[∑[2*a(n-1)]]` with `a(0)=2, a(1)=-4, a(2)=2`
-/

namespace A302689.P15962676453442924884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, -4, 2] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302689.P15962676453442924884

namespace A302689

/-- `∑[∑[2*a(n-1)]]` -/
def P15962676453442924884.Spec : Prop :=
  ∀ n, P15962676453442924884.a n = A302689 (n + 1)

end A302689

/-! ## A302689.P1937629665250618874

`2*(a(n-1)+2*(n-2))` with `a(0)=2`
-/

namespace A302689.P1937629665250618874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) + 2 * ((n : ℤ) - 2))

end

end A302689.P1937629665250618874

namespace A302689

/-- `2*(a(n-1)+2*(n-2))` -/
def P1937629665250618874.Spec : Prop :=
  ∀ n, P1937629665250618874.a n = A302689 (n + 1)

theorem P1937629665250618874.correct : P1937629665250618874.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A302689, Nat.add_sub_cancel, A302689.P1937629665250618874.a, A302689.P12957386915617573721.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A302689, Nat.add_sub_cancel, A302689.P1937629665250618874.a, A302689.P12957386915617573721.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A302689

/-! ## A302689.P5084872705529097779

`2*(2*n-(4-a(n-1)))` with `a(0)=2`
-/

namespace A302689.P5084872705529097779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * ((2 * n : ℤ) - (4 - a (n - 1)))

end

end A302689.P5084872705529097779

namespace A302689

/-- `2*(2*n-(4-a(n-1)))` -/
def P5084872705529097779.Spec : Prop :=
  ∀ n, P5084872705529097779.a n = A302689 (n + 1)

theorem P5084872705529097779.correct : P5084872705529097779.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A302689, Nat.add_sub_cancel, A302689.P5084872705529097779.a, A302689.P12957386915617573721.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A302689, Nat.add_sub_cancel, A302689.P5084872705529097779.a, A302689.P12957386915617573721.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A302689

/-! ## A302689.P5525626602202423214

`∑[a(n-1)+a(n-1)+4]` with `a(0)=2, a(1)=-2`
-/

namespace A302689.P5525626602202423214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302689.P5525626602202423214

namespace A302689

/-- `∑[a(n-1)+a(n-1)+4]` -/
def P5525626602202423214.Spec : Prop :=
  ∀ n, P5525626602202423214.a n = A302689 (n + 1)

end A302689

/-! ## A302689.P14839062209578666229

`2*(A070313(n)+1)`
-/

namespace A302689.P14839062209578666229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A070313 n + 1)

end

end A302689.P14839062209578666229

namespace A302689

/-- `2*(A070313(n)+1)` -/
def P14839062209578666229.Spec : Prop :=
  ∀ n, P14839062209578666229.a n = A302689 (n + 1)

theorem P14839062209578666229.correct : P14839062209578666229.Spec := by
  intro n
  simp only [A302689, Nat.add_sub_cancel, A302689.P14839062209578666229.a, A302689.P12957386915617573721.a, A070313, A070313.P8694605406940819949.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A302689

/-! ## A302689.P7845335713983172333

`2*A356185(2*n)`
-/

namespace A302689.P7845335713983172333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A356185 (2 * n)

end

end A302689.P7845335713983172333

namespace A302689

/-- `2*A356185(2*n)` -/
def P7845335713983172333.Spec : Prop :=
  ∀ n, P7845335713983172333.a n = A302689 (n + 1)

end A302689

/-! ## A302689.P4068947247753674198

`2*(A000325(n)-n)`
-/

namespace A302689.P4068947247753674198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000325 n - (n : ℤ))

end

end A302689.P4068947247753674198

namespace A302689

/-- `2*(A000325(n)-n)` -/
def P4068947247753674198.Spec : Prop :=
  ∀ n, P4068947247753674198.a n = A302689 (n + 1)

theorem P4068947247753674198.correct : P4068947247753674198.Spec := by
  intro n
  simp only [A302689, Nat.add_sub_cancel, A302689.P4068947247753674198.a, A302689.P12957386915617573721.a, A000325, A000325.P17729744711211405807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A302689

/-! ## A302689.P160888178785123842

`2*(Δ[A024012(n)]+1)`
-/

namespace A302689.P160888178785123842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A302689.P160888178785123842

namespace A302689

/-- `2*(Δ[A024012(n)]+1)` -/
def P160888178785123842.Spec : Prop :=
  ∀ n, P160888178785123842.a n = A302689 (n + 1)

theorem P160888178785123842.correct : P160888178785123842.Spec := by
  intro n
  simp only [A302689, Nat.add_sub_cancel, A302689.P160888178785123842.f1, A302689.P160888178785123842.a, A302689.P12957386915617573721.a, A024012, A024012.P5170461396986632698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A302689

/-! ## A302689.P7880630131419598047

`2*(Δ[A030110(n)]+1)`
-/

namespace A302689.P7880630131419598047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A302689.P7880630131419598047

namespace A302689

/-- `2*(Δ[A030110(n)]+1)` -/
def P7880630131419598047.Spec : Prop :=
  ∀ n, P7880630131419598047.a n = A302689 (n + 1)

theorem P7880630131419598047.correct : P7880630131419598047.Spec := by
  intro n
  simp only [A302689, Nat.add_sub_cancel, A302689.P7880630131419598047.f1, A302689.P7880630131419598047.a, A302689.P12957386915617573721.a, A030110, A030110.P6847496981912939315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A302689

/-! ## A302689.P2504385357118986932

`2*Δ[A142974(n+1)]`
-/

namespace A302689.P2504385357118986932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A302689.P2504385357118986932

namespace A302689

/-- `2*Δ[A142974(n+1)]` -/
def P2504385357118986932.Spec : Prop :=
  ∀ n, P2504385357118986932.a n = A302689 (n + 1)

theorem P2504385357118986932.correct : P2504385357118986932.Spec := by
  intro n
  simp only [A302689, Nat.add_sub_cancel, A302689.P2504385357118986932.f1, A302689.P2504385357118986932.a, A302689.P12957386915617573721.a, A142974, A142974.P3482987154250714936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A302689

/-! ## A302689.P8813981618162872912

`2*(2-∑[A122958(n)])`
-/

namespace A302689.P8813981618162872912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302689.P8813981618162872912

namespace A302689

/-- `2*(2-∑[A122958(n)])` -/
def P8813981618162872912.Spec : Prop :=
  ∀ n, P8813981618162872912.a n = A302689 (n + 1)

end A302689

/-! ## A302689.P10437261327209025767

`Δ[A243860(n)-n²]`
-/

namespace A302689.P10437261327209025767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243860 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302689.P10437261327209025767

namespace A302689

/-- `Δ[A243860(n)-n²]` -/
def P10437261327209025767.Spec : Prop :=
  ∀ n, P10437261327209025767.a n = A302689 (n + 1)

theorem P10437261327209025767.correct : P10437261327209025767.Spec := by
  intro n
  simp only [A302689, Nat.add_sub_cancel, A302689.P10437261327209025767.f1, A302689.P10437261327209025767.a, A302689.P12957386915617573721.a, A243860, A243860.P16506229345030888936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A302689

/-!
# A302690: a(n) is the smallest integer m such that m*n is a sum of two squares but not one.

The programs for A302690, there is no canonical definition to state claims against.
-/

/-! ## A302690.P1512977836525190339

`A160400(A007913(2*(n+1))^A049455(n+2))`
-/

namespace A302690.P1512977836525190339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160400 (SequenceMachineLib.roundAway ((A007913 (2 * (n + 1)) : ℚ) ^ (A049455 (n + 2) : ℤ))).toNat

end

end A302690.P1512977836525190339

/-! ## A302690.P3963083387134254523

`A007913(A007913(2*(n+1))^A284345(n))`
-/

namespace A302690.P3963083387134254523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A007913 (2 * (n + 1)) : ℚ) ^ (A284345 n : ℤ))).toNat

end

end A302690.P3963083387134254523

/-! ## A302690.P9642759965318490714

`gcd(A007913(2*(n+1)), A025426(A116411(n)))`
-/

namespace A302690.P9642759965318490714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007913 (2 * (n + 1))) (A025426 (A116411 n).toNat)

end

end A302690.P9642759965318490714

/-!
# A302691: Number of broken alternating permutations of n things.

The programs for A302691, there is no canonical definition to state claims against.
-/

/-! ## A302691.P9482226647827948599

`A001250(n+1)-A065619(n+1)`
-/

namespace A302691.P9482226647827948599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 (n + 1) - A065619 (n + 1)

end

end A302691.P9482226647827948599

/-! ## A302691.P11445171513655092305

`A001250(n+1)-A109449(A000124(n+1))`
-/

namespace A302691.P11445171513655092305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 (n + 1) - A109449 (A000124 (n + 1)).toNat

end

end A302691.P11445171513655092305

/-! ## A302691.P4336671145719803556

`A010094(A000096(n+1))-A109449(A000124(n+1))`
-/

namespace A302691.P4336671145719803556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (A000096 (n + 1)).toNat - A109449 (A000124 (n + 1)).toNat

end

end A302691.P4336671145719803556

/-! ## A302691.P8169680204074354885

`A008282(A238531(n+2))-A109449(A000124(n+1))`
-/

namespace A302691.P8169680204074354885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A238531 (n + 2)).toNat - A109449 (A000124 (n + 1)).toNat

end

end A302691.P8169680204074354885

/-! ## A302691.P4171992153289131408

`A008281(A238531(n+3))-A109449(A000124(n+1))`
-/

namespace A302691.P4171992153289131408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A238531 (n + 3)).toNat - A109449 (A000124 (n + 1)).toNat

end

end A302691.P4171992153289131408

/-!
# A302692: Primes p that are the sum of another prime q and the greatest k such that k! < p.

The programs for A302692, the canonical program `A302692.P6992755302281173742` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302692 has offset 1).

The definition of A302692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302692.P6992755302281173742

`p?[A063992(p?[2*n+1])]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A302692

/-- `p?[A063992(p?[2*n+1])]` -/
def P6992755302281173742.Spec : Prop :=
  ∀ n, P6992755302281173742.a n = A302692 (n + 1)

theorem P6992755302281173742.correct : P6992755302281173742.Spec := by
  intro n
  simp only [A302692, Nat.add_sub_cancel]

end A302692

/-! ## A302692.P1838884710396387739

`p?[A063992(A000040(n+1))]`
-/

namespace A302692.P1838884710396387739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063992 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302692.P1838884710396387739

namespace A302692

/-- `p?[A063992(A000040(n+1))]` -/
def P1838884710396387739.Spec : Prop :=
  ∀ n, P1838884710396387739.a n = A302692 (n + 1)

end A302692

/-! ## A302692.P10799015885116854939

`p?[A063992(A004139(n+1))]`
-/

namespace A302692.P10799015885116854939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063992 (A004139 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302692.P10799015885116854939

namespace A302692

/-- `p?[A063992(A004139(n+1))]` -/
def P10799015885116854939.Spec : Prop :=
  ∀ n, P10799015885116854939.a n = A302692 (n + 1)

end A302692

/-! ## A302692.P17433234393639418448

`p?[A063992(A008578(n+2))]`
-/

namespace A302692.P17433234393639418448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063992 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302692.P17433234393639418448

namespace A302692

/-- `p?[A063992(A008578(n+2))]` -/
def P17433234393639418448.Spec : Prop :=
  ∀ n, P17433234393639418448.a n = A302692 (n + 1)

end A302692

/-! ## A302692.P417535678605659743

`∩[A000040(n+1), A063992(A000040(n+2))]`
-/

namespace A302692.P417535678605659743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063992 (A000040 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302692.P417535678605659743

namespace A302692

/-- `∩[A000040(n+1), A063992(A000040(n+2))]` -/
def P417535678605659743.Spec : Prop :=
  ∀ n, (P417535678605659743.a n : ℤ) = A302692 (n + 1)

end A302692

/-!
# A302695: Number of 6-cycles in the (n+5)-path complement graph.

The programs for A302695, the canonical program `A302695.P7718694342182822545` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302695 has offset 0).

The definition of A302695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302695.P3020759845127364638

`ogf((5x+15x^2+20x^3+16x^4+3x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A302695.P3020759845127364638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 15, 20, 16, 3, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A302695.P3020759845127364638

namespace A302695

/-- `ogf((5x+15x^2+20x^3+16x^4+3x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P3020759845127364638.Spec : Prop :=
  ∀ n, P3020759845127364638.a n = A302695 n

end A302695

/-! ## A302695.P7718694342182822545

`n*(4+22*n+17*n²+13*n^3+3*n^4+n^5)/12`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302695

/-- `n*(4+22*n+17*n²+13*n^3+3*n^4+n^5)/12` -/
def P7718694342182822545.Spec : Prop :=
  ∀ n, P7718694342182822545.a n = (A302695 n : ℚ)

end A302695

/-!
# A302696: Numbers whose prime indices (with repetition) are pairwise coprime. Nonprime Heinz numbers of integer partitions with pairwise coprime parts.

The programs for A302696, there is no canonical definition to state claims against.
-/

/-! ## A302696.P11732570162594242771

`record[A327512(n+1)]`
-/

namespace A302696.P11732570162594242771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302696.P11732570162594242771

/-! ## A302696.P10561934053768666737

`lt[n, A327512(A000027(n+1))]+1`
-/

namespace A302696.P10561934053768666737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (A000027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A302696.P10561934053768666737

/-! ## A302696.P5946753154676514548

`A327512(lt[n-1, A327512(n+1)]+1)`
-/

namespace A302696.P5946753154676514548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A302696.P5946753154676514548

/-! ## A302696.P10763688981925207693

`eq[n, A327512(A028310(n))]`
-/

namespace A302696.P10763688981925207693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302696.P10763688981925207693

/-! ## A302696.P6666632980816926656

`lt[A105512(A000404(n+1)), A327512(n+1)]+1`
-/

namespace A302696.P6666632980816926656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105512 (A000404 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A302696.P6666632980816926656

/-!
# A302697: Odd numbers whose prime indices are relatively prime. Heinz numbers of integer partitions with no 1's and with relatively prime parts.

The programs for A302697, there is no canonical definition to state claims against.
-/

/-! ## A302697.P4244211020980652704

`record[A327529(2*n+15)]`
-/

namespace A302697.P4244211020980652704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (2 * n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302697.P4244211020980652704

/-! ## A302697.P57284503476629442

`filter[2*n+1, A289508(#)]`
-/

namespace A302697.P57284503476629442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289508 (f1 j) = 1) n)

end

end A302697.P57284503476629442

/-! ## A302697.P16666333573447500839

`eq[1, A289508(n^(n%2))]`
-/

namespace A302697.P16666333573447500839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302697.P16666333573447500839

/-! ## A302697.P3049027715596321724

`record[A316437(2*(n+7)+1)]`
-/

namespace A302697.P3049027715596321724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (2 * (n + 7) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302697.P3049027715596321724

/-! ## A302697.P13706173242937374458

`∩[2*n+1, A289509(n+1)]`
-/

namespace A302697.P13706173242937374458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302697.P13706173242937374458

/-! ## A302697.P17726567449901907648

`eq[1, A289508(A093178(n))]`
-/

namespace A302697.P17726567449901907648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302697.P17726567449901907648

/-! ## A302697.P5623135726083671812

`record[A000265(A289509(n+8))]`
-/

namespace A302697.P5623135726083671812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A289509 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302697.P5623135726083671812

/-! ## A302697.P13415717284696386774

`filter[A289509(n+1), A000035(#)]`
-/

namespace A302697.P13415717284696386774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A302697.P13415717284696386774

/-!
# A302698: Number of integer partitions of n into relatively prime parts that are all greater than 1.

The programs for A302698, there is no canonical definition to state claims against.
-/

/-! ## A302698.P9526612371838555351

`A002865(n+1)-A018783(n+1)`
-/

namespace A302698.P9526612371838555351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) - A018783 (n + 1)

end

end A302698.P9526612371838555351

/-! ## A302698.P2155908982070407610

`A083751(n+1)-A108572(n+1)`
-/

namespace A302698.P2155908982070407610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (n + 1) - A108572 (n + 1)

end

end A302698.P2155908982070407610

/-! ## A302698.P11775579575413257862

`Δ[A000837(n)]-A018783(n)`
-/

namespace A302698.P11775579575413257862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A018783 n

end

end A302698.P11775579575413257862

/-! ## A302698.P15556961240325643188

`A000837(n+1)-A000041(n)`
-/

namespace A302698.P15556961240325643188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) - A000041 n

end

end A302698.P15556961240325643188

/-! ## A302698.P10267730221369360581

`Δ[A000041(n)-∑[A018783(n)]]`
-/

namespace A302698.P10267730221369360581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302698.P10267730221369360581

/-! ## A302698.P3374349424922034079

`A000837(n+1)-(A018783(n)+A000837(n))`
-/

namespace A302698.P3374349424922034079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) - (A018783 n + A000837 n)

end

end A302698.P3374349424922034079

/-! ## A302698.P12990816774177643370

`A000837(n+1)-(A338554(n)+A338553(n))`
-/

namespace A302698.P12990816774177643370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) - (A338554 n + A338553 n)

end

end A302698.P12990816774177643370

/-! ## A302698.P1979768969272293485

`A000041(n+1)-(A018783(n+1)+A000041(n))`
-/

namespace A302698.P1979768969272293485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A018783 (n + 1) + A000041 n)

end

end A302698.P1979768969272293485

/-! ## A302698.P9847864962046018405

`A306912(n+1)-(A306912(n)+A000041(n))`
-/

namespace A302698.P9847864962046018405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306912 (n + 1) - (A306912 n + A000041 n)

end

end A302698.P9847864962046018405

/-! ## A302698.P3418915418573102065

`A000837(n+1)-(A183558(n)+A007690(n))`
-/

namespace A302698.P3418915418573102065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) - (A183558 n + A007690 n)

end

end A302698.P3418915418573102065

/-! ## A302698.P6337867958365615500

`A000837(n+1)-A035363(2*n)`
-/

namespace A302698.P6337867958365615500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) - A035363 (2 * n)

end

end A302698.P6337867958365615500

/-! ## A302698.P8881282055967667624

`A000837(n+1)-A119620(2*n)`
-/

namespace A302698.P8881282055967667624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) - A119620 (2 * n)

end

end A302698.P8881282055967667624

/-! ## A302698.P679294915207424887

`A300486(n+1)-A052810(n)`
-/

namespace A302698.P679294915207424887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300486 (n + 1) - A052810 n

end

end A302698.P679294915207424887

/-! ## A302698.P13263888909573876477

`A000837(n+1)-A100824(2*n)`
-/

namespace A302698.P13263888909573876477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) - A100824 (2 * n)

end

end A302698.P13263888909573876477

/-!
# A302699: G.f. A(x) satisfies: A(x) = 1 + x * A(x) * (A(x) + 3*x*A'(x)) / (A(x) + x*A'(x)).

The programs for A302699, there is no canonical definition to state claims against.
-/

/-! ## A302699.P17372597313821031562

`or(A054531(A337105(n)), A294202(n))`
-/

namespace A302699.P17372597313821031562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054531 (A337105 n).toNat) (A294202 n)

end

end A302699.P17372597313821031562

