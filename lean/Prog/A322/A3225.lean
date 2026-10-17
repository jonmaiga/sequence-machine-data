import SequenceMachineLib
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A322500: Number of tilings of a 7 X n rectangle using V (2m+1)-ominoes (m >= 0) in standard orientation.

The programs for A322500, there is no canonical definition to state claims against.
-/

/-! ## A322500.P5085308880972596038

`A322494(eq[7, A002262(n)])`
-/

namespace A322500.P5085308880972596038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322500.P5085308880972596038

/-! ## A322500.P4994447759458379002

`A322494(eq[7, A025581(n)])`
-/

namespace A322500.P4994447759458379002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322500.P4994447759458379002

/-! ## A322500.P8521565315118222379

`A322494(A000096(n+6)+8)`
-/

namespace A322500.P8521565315118222379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (A000096 (n + 6) + 8).toNat

end

end A322500.P8521565315118222379

/-! ## A322500.P4751431129454208082

`A322494(eq[8, A002260(n+1)])`
-/

namespace A322500.P4751431129454208082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322500.P4751431129454208082

/-! ## A322500.P13570722653459576206

`A322494(eq[8, A004736(n+1)])`
-/

namespace A322500.P13570722653459576206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322500.P13570722653459576206

/-!
# A322501: Number of tilings of an 8 X n rectangle using V (2m+1)-ominoes (m >= 0) in standard orientation.

The programs for A322501, there is no canonical definition to state claims against.
-/

/-! ## A322501.P9991430283276727110

`A322494(eq[8, A002262(n)])`
-/

namespace A322501.P9991430283276727110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322501.P9991430283276727110

/-! ## A322501.P8038123736065489201

`A322494(eq[8, A025581(n)])`
-/

namespace A322501.P8038123736065489201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322501.P8038123736065489201

/-! ## A322501.P12015318297784290816

`A322494(eq[8, A130270(n+1)])`
-/

namespace A322501.P12015318297784290816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322501.P12015318297784290816

/-! ## A322501.P10403118003693946720

`A322494(eq[9, A002260(n+1)])`
-/

namespace A322501.P10403118003693946720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322501.P10403118003693946720

/-! ## A322501.P11160089253361808609

`A322494(eq[9, A004736(n+1)])`
-/

namespace A322501.P11160089253361808609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322501.P11160089253361808609

/-!
# A322502: Number of tilings of a 9 X n rectangle using V (2m+1)-ominoes (m >= 0) in standard orientation.

The programs for A322502, there is no canonical definition to state claims against.
-/

/-! ## A322502.P1018947506246945381

`A322494(A056000(n+6))`
-/

namespace A322502.P1018947506246945381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (A056000 (n + 6)).toNat

end

end A322502.P1018947506246945381

/-! ## A322502.P4677331424498046833

`A322494(eq[9, A002262(n)])`
-/

namespace A322502.P4677331424498046833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322502.P4677331424498046833

/-! ## A322502.P13397830537999412740

`A322494(eq[9, A025581(n)])`
-/

namespace A322502.P13397830537999412740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322502.P13397830537999412740

/-! ## A322502.P15767627080180211540

`A322494(eq[9, A130270(n+1)])`
-/

namespace A322502.P15767627080180211540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322502.P15767627080180211540

/-! ## A322502.P2272265728703049651

`A322494(eq[10, A002260(n+1)])`
-/

namespace A322502.P2272265728703049651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322502.P2272265728703049651

/-!
# A322503: Number of tilings of a 10 X n rectangle using V (2m+1)-ominoes (m >= 0) in standard orientation.

The programs for A322503, there is no canonical definition to state claims against.
-/

/-! ## A322503.P2053366708750824225

`A322494(eq[10, A002262(n)])`
-/

namespace A322503.P2053366708750824225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322503.P2053366708750824225

/-! ## A322503.P8513960301518380317

`A322494(eq[10, A025581(n)])`
-/

namespace A322503.P8513960301518380317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322503.P8513960301518380317

/-! ## A322503.P8968146228305278789

`A322494(eq[11, A002260(n+1)])`
-/

namespace A322503.P8968146228305278789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322503.P8968146228305278789

/-! ## A322503.P17035028619995470836

`A322494(eq[11, A004736(n+1)])`
-/

namespace A322503.P17035028619995470836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322503.P17035028619995470836

/-!
# A322504: a(n) = -4*a(n-1) - 3*a(n-2) + a(n-3), a(0) = 1, a(1) = -2, a(2) = 4.

The programs for A322504, the canonical program `A322504.P2936547908977995018` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322504 has offset 0).

The definition of A322504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322504.P2936547908977995018

`∑[A085810(A028310(n))]*A033999(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A322504

/-- `∑[A085810(A028310(n))]*A033999(n)` -/
def P2936547908977995018.Spec : Prop :=
  ∀ n, P2936547908977995018.a n = A322504 n

theorem P2936547908977995018.correct : P2936547908977995018.Spec := by
  intro n
  simp only [A322504]

end A322504

/-! ## A322504.P2784911670788307232

`∑[A085810(A028310(n))]*A062157(n+1)`
-/

namespace A322504.P2784911670788307232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085810 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A062157 (n + 1)

end

end A322504.P2784911670788307232

namespace A322504

/-- `∑[A085810(A028310(n))]*A062157(n+1)` -/
def P2784911670788307232.Spec : Prop :=
  ∀ n, P2784911670788307232.a n = A322504 n

end A322504

/-! ## A322504.P16843512883325882313

`(A085810(n+1)-A215404(n))*A033999(n)`
-/

namespace A322504.P16843512883325882313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085810 (n + 1) - A215404 n) * A033999 n

end

end A322504.P16843512883325882313

namespace A322504

/-- `(A085810(n+1)-A215404(n))*A033999(n)` -/
def P16843512883325882313.Spec : Prop :=
  ∀ n, P16843512883325882313.a n = A322504 n

end A322504

/-! ## A322504.P306885106429621917

`∑[-A085810(A028310(n))]/A033999(n+1)`
-/

namespace A322504.P306885106429621917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A085810 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 (n + 1) : ℚ)

end

end A322504.P306885106429621917

namespace A322504

/-- `∑[-A085810(A028310(n))]/A033999(n+1)` -/
def P306885106429621917.Spec : Prop :=
  ∀ n, P306885106429621917.a n = (A322504 n : ℚ)

end A322504

/-! ## A322504.P13865947156013053193

`(A085810(n+1)-A215404(n))*A056594(2*n)`
-/

namespace A322504.P13865947156013053193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085810 (n + 1) - A215404 n) * A056594 (2 * n)

end

end A322504.P13865947156013053193

namespace A322504

/-- `(A085810(n+1)-A215404(n))*A056594(2*n)` -/
def P13865947156013053193.Spec : Prop :=
  ∀ n, P13865947156013053193.a n = A322504 n

end A322504

/-! ## A322504.P3133877417036138187

`(A085810(n+1)-A215404(n))*A309873(A266303(n))`
-/

namespace A322504.P3133877417036138187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085810 (n + 1) - A215404 n) * A309873 (A266303 n).toNat

end

end A322504.P3133877417036138187

namespace A322504

/-- `(A085810(n+1)-A215404(n))*A309873(A266303(n))` -/
def P3133877417036138187.Spec : Prop :=
  ∀ n, P3133877417036138187.a n = A322504 n

end A322504

/-!
# A322505: Factorial expansion of 1/sqrt(2) = Sum_{n>=1} a(n)/n!.

The programs for A322505, there is no canonical definition to state claims against.
-/

/-! ## A322505.P11815834463000972489

`floor((n+1)!/sqrt(2))%(n+1)`
-/

namespace A322505.P11815834463000972489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(Nat.factorial (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌋ (n + 1 : ℤ)

end

end A322505.P11815834463000972489

/-! ## A322505.P12260366213909423497

`floor(∏[n+1]/sqrt(2))%(n+1)`
-/

namespace A322505.P12260366213909423497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.sqrt (2 : ℝ)⌋ (n + 1 : ℤ)

end

end A322505.P12260366213909423497

/-!
# A322506: Factorial expansion of 1/exp(2) = Sum_{n>=1} a(n)/n!.

The programs for A322506, there is no canonical definition to state claims against.
-/

/-! ## A322506.P16765276487187650880

`floor((n+1)!/exp(2))%(n+1)`
-/

namespace A322506.P16765276487187650880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(Nat.factorial (n + 1) : ℝ) / Real.exp (2 : ℝ)⌋ (n + 1 : ℤ)

end

end A322506.P16765276487187650880

/-!
# A322512: Triangle read by rows of the 2-adic valuation (A007814) of Stirling numbers of first kind (A008275).

The programs for A322512, there is no canonical definition to state claims against.
-/

/-! ## A322512.P14699582144357538760

`val(A130534(n), 2)`
-/

namespace A322512.P14699582144357538760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130534 n).toNat 2

end

end A322512.P14699582144357538760

/-! ## A322512.P7600510928231056347

`val(A132393(comp[∑[n]]), 2)`
-/

namespace A322512.P7600510928231056347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A132393 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat 2

end

end A322512.P7600510928231056347

/-! ## A322512.P16973919595595812097

`val(abs(A008275(n+1)), 2)`
-/

namespace A322512.P16973919595595812097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A008275 (n + 1)|.toNat 2

end

end A322512.P16973919595595812097

/-! ## A322512.P15790912876661757989

`val(abs(A048994(comp[∑[n]])), 2)`
-/

namespace A322512.P15790912876661757989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A048994 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|.toNat 2

end

end A322512.P15790912876661757989

/-! ## A322512.P8603664384221592658

`val(abs(A051141(n+1)), 2)`
-/

namespace A322512.P8603664384221592658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A051141 (n + 1)|.toNat 2

end

end A322512.P8603664384221592658

/-! ## A322512.P8589451833764170740

`val(abs(A051186(n+1)), 2)`
-/

namespace A322512.P8589451833764170740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A051186 (n + 1)|.toNat 2

end

end A322512.P8589451833764170740

/-! ## A322512.P2308396683898151862

`val(abs(A051231(n+1)), 2)`
-/

namespace A322512.P2308396683898151862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A051231 (n + 1)|.toNat 2

end

end A322512.P2308396683898151862

/-! ## A322512.P15987855709510100844

`log2(gcd(A000079(n), A130534(n)))`
-/

namespace A322512.P15987855709510100844
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A000079 n) (A130534 n) : ℝ)

end

end A322512.P15987855709510100844

/-! ## A322512.P3465923579360503800

`A001222(gcd(floor(2^(n-1)), A008275(n+1)))`
-/

namespace A322512.P3465923579360503800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A008275 (n + 1)))

end

end A322512.P3465923579360503800

/-!
# A322516: Unstuffable numbers.

The programs for A322516, there is no canonical definition to state claims against.
-/

/-! ## A322516.P15821865740586887639

`eq[1, exp(a(A322515(n)))]` with `a(0)=0`
-/

namespace A322516.P15821865740586887639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0] fun n f2 =>
  Real.exp (f2 (A322515 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A322516.P15821865740586887639

/-! ## A322516.P17966194093815891832

`eq[0, A322515(n+1)]+1`
-/

namespace A322516.P17966194093815891832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A322516.P17966194093815891832

/-! ## A322516.P17141772795921165554

`comp[A322322(n+1)-1]+1`
-/

namespace A322516.P17141772795921165554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322322 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A322516.P17141772795921165554

/-! ## A322516.P2566534227194225096

`eq[1, A000079(a(A322515(n)))]` with `a(0)=0`
-/

namespace A322516.P2566534227194225096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000079 (f2 (A322515 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322516.P2566534227194225096

/-! ## A322516.P5892673313442242906

`eq[1, A008574(a(A322515(n)))]` with `a(0)=0`
-/

namespace A322516.P5892673313442242906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A008574 (f2 (A322515 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322516.P5892673313442242906

/-! ## A322516.P7878622626798859226

`eq[2, A000032(a(A322515(n)))]` with `a(0)=0`
-/

namespace A322516.P7878622626798859226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A322515 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322516.P7878622626798859226

/-! ## A322516.P1452287071629425060

`eq[2, A000040(a(A322515(n)))]` with `a(0)=1`
-/

namespace A322516.P1452287071629425060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A322515 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322516.P1452287071629425060

/-! ## A322516.P1781550274625728044

`eq[2, A324030(a(A322515(n)))]` with `a(0)=1`
-/

namespace A322516.P1781550274625728044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A324030 (f2 (A322515 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322516.P1781550274625728044

/-! ## A322516.P5012596902965949618

`eq[3, A112773(a(A322515(n)))]` with `a(0)=1`
-/

namespace A322516.P5012596902965949618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A112773 (f2 (A322515 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322516.P5012596902965949618

/-! ## A322516.P11979842062417748543

`eq[2, A000010(a(A322515(n)))]` with `a(0)=3`
-/

namespace A322516.P11979842062417748543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A322515 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322516.P11979842062417748543

/-! ## A322516.P1964048697720060808

`eq[2, A000045(a(A322515(n)))]` with `a(0)=3`
-/

namespace A322516.P1964048697720060808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A322515 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322516.P1964048697720060808

/-! ## A322516.P9988957778931629683

`eq[3, A000203(a(A322515(n)))]` with `a(0)=2`
-/

namespace A322516.P9988957778931629683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A000203 (f2 (A322515 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322516.P9988957778931629683

/-! ## A322516.P12319961065031208634

`eq[3, A033498(a(A322515(n)))]` with `a(0)=2`
-/

namespace A322516.P12319961065031208634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A033498 (f2 (A322515 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322516.P12319961065031208634

/-! ## A322516.P7255658515048323513

`eq[2, A007318(a(A322515(n)))]` with `a(0)=4`
-/

namespace A322516.P7255658515048323513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (A322515 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322516.P7255658515048323513

/-! ## A322516.P10808120287279111375

`eq[3, A000005(a(A322515(n)))]` with `a(0)=4`
-/

namespace A322516.P10808120287279111375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000005 (f2 (A322515 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322516.P10808120287279111375

/-!
# A322518: Binomial transform of the Apéry numbers (A005259).

The programs for A322518, there is no canonical definition to state claims against.
-/

/-! ## A322518.P5995519685978088244

`A085244(n+1)*A316495(A026597(n))`
-/

namespace A322518.P5995519685978088244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085244 (n + 1) * A316495 (A026597 n).toNat

end

end A322518.P5995519685978088244

/-!
# A322520: Word binomial coefficient for fib(n+1), fib(n), where fib(n) is the n-th Fibonacci word.

The programs for A322520, there is no canonical definition to state claims against.
-/

/-! ## A322520.P3166819704721836925

`A309839(a(n-1)+3)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A322520.P3166819704721836925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 4] fun n a =>
  A309839 (a (n - 1) + 3).toNat

end

end A322520.P3166819704721836925

/-! ## A322520.P13019318685953002459

`A002264(C(A004250(n+1)+1, n)+2*n)`
-/

namespace A322520.P13019318685953002459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Nat.choose (A004250 (n + 1) + 1).toNat n + 2 * n)

end

end A322520.P13019318685953002459

/-! ## A322520.P3808280641090044186

`A051626(A377467(6*a(n-2)-a(n-4)))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A322520.P3808280641090044186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 4] fun n a =>
  A051626 (A377467 (6 * a (n - 2) - a (n - 4)).toNat).toNat

end

end A322520.P3808280641090044186

/-!
# A322521: If A319303(k) = n for some k, then a(n) = k, else a(n) = -1.

The programs for A322521, there is no canonical definition to state claims against.
-/

/-! ## A322521.P5741782054935086565

`lcm(A006368(n), A322452(A334037(n+1)))`
-/

namespace A322521.P5741782054935086565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006368 n) (A322452 (A334037 (n + 1)).toNat)

end

end A322521.P5741782054935086565

/-!
# A322523: a(n) is the least nonnegative integer k for which there does not exist i < j with i+j=n and a(i)=a(j)=k.

The programs for A322523, there is no canonical definition to state claims against.
-/

/-! ## A322523.P8047329047117141920

`A382109(n+1)-1`
-/

namespace A322523.P8047329047117141920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382109 (n + 1) - 1

end

end A322523.P8047329047117141920

/-! ## A322523.P12684537047336700462

`A127229(n+5)%A382109(n+1)`
-/

namespace A322523.P12684537047336700462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A382109 (n + 1))

end

end A322523.P12684537047336700462

/-! ## A322523.P11471435090460667971

`A200748(n)%A382109(n+1)`
-/

namespace A322523.P11471435090460667971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A382109 (n + 1))

end

end A322523.P11471435090460667971

/-! ## A322523.P2786285743691239201

`A058197(n+1)%A382109(n+1)`
-/

namespace A322523.P2786285743691239201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A382109 (n + 1))

end

end A322523.P2786285743691239201

/-! ## A322523.P7989719821430872460

`A153823(n)%A382109(n+1)`
-/

namespace A322523.P7989719821430872460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153823 n) (A382109 (n + 1))

end

end A322523.P7989719821430872460

/-! ## A322523.P3886605884276862509

`A196305(n)%A382109(n+1)`
-/

namespace A322523.P3886605884276862509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196305 n) (A382109 (n + 1))

end

end A322523.P3886605884276862509

/-! ## A322523.P3995452439119234239

`A083800(n+1)%A382109(n+1)`
-/

namespace A322523.P3995452439119234239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A382109 (n + 1))

end

end A322523.P3995452439119234239

/-! ## A322523.P11108218260722071660

`A070198(n)%A382109(n+1)`
-/

namespace A322523.P11108218260722071660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A382109 (n + 1))

end

end A322523.P11108218260722071660

/-! ## A322523.P5242460723370315748

`A079782(n+1)%A382109(n+1)`
-/

namespace A322523.P5242460723370315748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A382109 (n + 1))

end

end A322523.P5242460723370315748

/-! ## A322523.P17071740733965910656

`A083685(n+1)%A382109(n+1)`
-/

namespace A322523.P17071740733965910656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A382109 (n + 1))

end

end A322523.P17071740733965910656

/-! ## A322523.P4611139477615306354

`A121934(n+1)%A382109(n+1)`
-/

namespace A322523.P4611139477615306354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A382109 (n + 1))

end

end A322523.P4611139477615306354

/-! ## A322523.P4476361603903493145

`A030494(n+1)%A382109(n+1)`
-/

namespace A322523.P4476361603903493145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A382109 (n + 1))

end

end A322523.P4476361603903493145

/-! ## A322523.P14772717976408670486

`A072828(n+1)%A382109(n+1)`
-/

namespace A322523.P14772717976408670486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A382109 (n + 1))

end

end A322523.P14772717976408670486

/-! ## A322523.P16781036440298010224

`A198277(n)%A382109(n+1)`
-/

namespace A322523.P16781036440298010224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A382109 (n + 1))

end

end A322523.P16781036440298010224

/-!
# A322526: Number of integer partitions of n whose product of parts is a squarefree number.

The programs for A322526, there is no canonical definition to state claims against.
-/

/-! ## A322526.P9433180451144956731

`∑[A322530(n)]`
-/

namespace A322526.P9433180451144956731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322526.P9433180451144956731

/-! ## A322526.P11058655171411681279

`A322530(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A322526.P11058655171411681279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322530 n + a (A023443 n).toNat

end

end A322526.P11058655171411681279

/-! ## A322526.P15629275926015966563

`A322530(A000027(n))+a(n-1)` with `a(0)=1`
-/

namespace A322526.P15629275926015966563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322530 (A000027 n).toNat + a (n - 1)

end

end A322526.P15629275926015966563

/-! ## A322526.P17324929019267812932

`A322530(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A322526.P17324929019267812932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322530 n + a (A028310 n - 1).toNat

end

end A322526.P17324929019267812932

/-! ## A322526.P2302294904405104428

`A322530(n)-A001489(a(n-1))` with `a(0)=1`
-/

namespace A322526.P2302294904405104428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322530 n - A001489 (a (n - 1)).toNat

end

end A322526.P2302294904405104428

/-! ## A322526.P9162745347285820684

`A322530(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A322526.P9162745347285820684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322530 n + a (A004273 n - (n : ℤ)).toNat

end

end A322526.P9162745347285820684

/-! ## A322526.P10155349030241861184

`A322530(n)+a(A000007(n)-1+n)` with `a(0)=1`
-/

namespace A322526.P10155349030241861184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322530 n + a (A000007 n - 1 + (n : ℤ)).toNat

end

end A322526.P10155349030241861184

/-! ## A322526.P1024942960656696872

`A322530(n)+A000038(n)+a(n-1)` with `a(0)=1`
-/

namespace A322526.P1024942960656696872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322530 n + (A000038 n + a (n - 1))

end

end A322526.P1024942960656696872

/-! ## A322526.P446979472172974401

`A322530(A005843(n)-n)+a(n-1)` with `a(0)=1`
-/

namespace A322526.P446979472172974401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322530 (A005843 n - (n : ℤ)).toNat + a (n - 1)

end

end A322526.P446979472172974401

/-! ## A322526.P2803076221292914488

`a(n-1)+A322530(n)%A000031(n)` with `a(0)=1`
-/

namespace A322526.P2803076221292914488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A322530 n) (A000031 n)

end

end A322526.P2803076221292914488

/-!
# A322527: Number of integer partitions of n whose product of parts is a power of a squarefree number (A072774).

The programs for A322527, there is no canonical definition to state claims against.
-/

/-! ## A322527.P3923564115594864050

`A330346(2^∑{digits}[n, #%C(n, #)])+A330224(n)`
-/

namespace A322527.P3923564115594864050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330346 (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum) + A330224 n

end

end A322527.P3923564115594864050

/-! ## A322527.P9129455326700752356

`or(A008768(n), A261466(A008771(n)))`
-/

namespace A322527.P9129455326700752356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008768 n) (A261466 (A008771 n).toNat)

end

end A322527.P9129455326700752356

/-! ## A322527.P16957234958316030526

`or(A330166(A330212(n+1)), A330224(n))`
-/

namespace A322527.P16957234958316030526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A330166 (A330212 (n + 1)).toNat) (A330224 n)

end

end A322527.P16957234958316030526

/-! ## A322527.P795775417650974082

`A330224(n)+A062977(A067771(n))`
-/

namespace A322527.P795775417650974082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330224 n + A062977 (A067771 n).toNat

end

end A322527.P795775417650974082

/-! ## A322527.P8656323420027744110

`A330224(n)+A102683(A111435(n))`
-/

namespace A322527.P8656323420027744110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330224 n + A102683 (A111435 n).toNat

end

end A322527.P8656323420027744110

/-!
# A322529: Number of integer partitions of n whose parts all have the same number of prime factors (counted with or without multiplicity) and whose product of parts is a squarefree number.

The programs for A322529, there is no canonical definition to state claims against.
-/

/-! ## A322529.P15556573211502450319

`A001221((A340013(n+3)+1)*A000032(n))`
-/

namespace A322529.P15556573211502450319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((A340013 (n + 3) + 1) * A000032 n).toNat

end

end A322529.P15556573211502450319

/-! ## A322529.P657818561741217061

`A171170(A238589(n+1)+6)`
-/

namespace A322529.P657818561741217061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171170 (A238589 (n + 1) + 6).toNat

end

end A322529.P657818561741217061

/-! ## A322529.P7910085812643449184

`A334440(A000126(n+3)-A004525(n))`
-/

namespace A322529.P7910085812643449184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334440 (A000126 (n + 3) - A004525 n).toNat

end

end A322529.P7910085812643449184

/-! ## A322529.P14656947565629807452

`A001221(A049970(n+1)*A132983(n+1))`
-/

namespace A322529.P14656947565629807452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A049970 (n + 1) * A132983 (n + 1)).toNat

end

end A322529.P14656947565629807452

/-! ## A322529.P12575355304633328119

`A124768(∪[A005117(n+1), A035117(n+1)])`
-/

namespace A322529.P12575355304633328119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035117 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A322529.P12575355304633328119

/-!
# A322530: Number of integer partitions of n with no 1's whose product of parts is a squarefree number.

The programs for A322530, there is no canonical definition to state claims against.
-/

/-! ## A322530.P17035218166673359162

`A029176(ceil(log(A091410(n+1))))`
-/

namespace A322530.P17035218166673359162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029176 ⌈Real.log (A091410 (n + 1) : ℝ)⌉.toNat

end

end A322530.P17035218166673359162

/-! ## A322530.P2937563775060425064

`A077267(xor(A302017(n), A311289(n)))`
-/

namespace A322530.P2937563775060425064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (Int.xor (A302017 n) (A311289 n)).toNat

end

end A322530.P2937563775060425064

/-! ## A322530.P2036638427225290419

`A000120(and(A001846(n+4), A266721(n)))`
-/

namespace A322530.P2036638427225290419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A001846 (n + 4)) (A266721 n)).toNat

end

end A322530.P2036638427225290419

/-! ## A322530.P13147837824523224063

`A087116(C(A085970(2*n+5), A028242(n)))`
-/

namespace A322530.P13147837824523224063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (Nat.choose (A085970 (2 * n + 5)).toNat (A028242 n).toNat)

end

end A322530.P13147837824523224063

/-! ## A322530.P12048125940529520615

`A230415(A183203(n)+A056789(n+1))`
-/

namespace A322530.P12048125940529520615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230415 (A183203 n + A056789 (n + 1)).toNat

end

end A322530.P12048125940529520615

/-!
# A322531: Heinz numbers of integer partitions whose parts all have the same number of prime factors (counted with or without multiplicity) and whose product of parts is a squarefree number.

The programs for A322531, there is no canonical definition to state claims against.
-/

/-! ## A322531.P466512162705998957

`∪[A302590(n+1), A302591(n+1)]`
-/

namespace A322531.P466512162705998957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322531.P466512162705998957

/-! ## A322531.P2798881890730704808

`filter[A302505(n+1), A378442(#)]`
-/

namespace A322531.P2798881890730704808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A322531.P2798881890730704808

/-! ## A322531.P15649389174606255490

`∩[A302505(n+1), A316476(n+1)]`
-/

namespace A322531.P15649389174606255490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322531.P15649389174606255490

/-! ## A322531.P12774697928275445167

`∩[A302505(n+1), A320324(n+1)]`
-/

namespace A322531.P12774697928275445167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322531.P12774697928275445167

/-! ## A322531.P3660404550523372993

`∩[A302505(n+1), A328674(n+1)]`
-/

namespace A322531.P3660404550523372993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322531.P3660404550523372993

/-!
# A322532: Position of 1/2^n in the sequence of all numbers 1/2^m, 1/3^m, 2/3^m arranged in decreasing order.

The programs for A322532, the canonical program `A322532.P11398704863402622686` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322532 has offset 1).

The definition of A322532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322532.P11398704863402622686

`∑[A020915(n+2)-A136409(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A322532

/-- `∑[A020915(n+2)-A136409(n)]` -/
def P11398704863402622686.Spec : Prop :=
  ∀ n, P11398704863402622686.a n = A322532 (n + 1)

theorem P11398704863402622686.correct : P11398704863402622686.Spec := by
  intro n
  simp only [A322532, Nat.add_sub_cancel]

end A322532

/-! ## A322532.P3243276024749179730

`A206805(n+1)+A136409(n+2)`
-/

namespace A322532.P3243276024749179730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206805 (n + 1) + A136409 (n + 2)

end

end A322532.P3243276024749179730

namespace A322532

/-- `A206805(n+1)+A136409(n+2)` -/
def P3243276024749179730.Spec : Prop :=
  ∀ n, P3243276024749179730.a n = A322532 (n + 1)

end A322532

/-! ## A322532.P7919161883620186616

`A105566(A342831(n+1))`
-/

namespace A322532.P7919161883620186616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105566 (A342831 (n + 1)).toNat

end

end A322532.P7919161883620186616

namespace A322532

/-- `A105566(A342831(n+1))` -/
def P7919161883620186616.Spec : Prop :=
  ∀ n, P7919161883620186616.a n = A322532 (n + 1)

end A322532

/-! ## A322532.P17195788791424507091

`∑[A285963(A072946(n))+2]`
-/

namespace A322532.P17195788791424507091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285963 (A072946 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322532.P17195788791424507091

namespace A322532

/-- `∑[A285963(A072946(n))+2]` -/
def P17195788791424507091.Spec : Prop :=
  ∀ n, P17195788791424507091.a n = A322532 (n + 1)

end A322532

/-! ## A322532.P3915889732099056131

`∑[A067694(∑[A235497(n+3)])]`
-/

namespace A322532.P3915889732099056131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235497 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067694 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322532.P3915889732099056131

namespace A322532

/-- `∑[A067694(∑[A235497(n+3)])]` -/
def P3915889732099056131.Spec : Prop :=
  ∀ n, P3915889732099056131.a n = A322532 (n + 1)

end A322532

/-!
# A322533: Position of 1/3^n in the sequence of all numbers 1/2^m, 1/3^m, 2/3^m arranged in decreasing order.

The programs for A322533, the canonical program `A322533.P7587936727415565415` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322533 has offset 1).

The definition of A322533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322533.P582856791465649060

`floor((n+1)*log2(12))`
-/

namespace A322533.P582856791465649060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.logb 2 (12 : ℝ)⌋

end

end A322533.P582856791465649060

namespace A322533

/-- `floor((n+1)*log2(12))` -/
def P582856791465649060.Spec : Prop :=
  ∀ n, P582856791465649060.a n = A322533 (n + 1)

end A322533

/-! ## A322533.P7587936727415565415

`∑[A022921(n)+2]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A322533

/-- `∑[A022921(n)+2]` -/
def P7587936727415565415.Spec : Prop :=
  ∀ n, P7587936727415565415.a n = A322533 (n + 1)

theorem P7587936727415565415.correct : P7587936727415565415.Spec := by
  intro n
  simp only [A322533, Nat.add_sub_cancel]

end A322533

/-! ## A322533.P17360137189208959088

`Δ[A025712(n)]+n`
-/

namespace A322533.P17360137189208959088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A322533.P17360137189208959088

namespace A322533

/-- `Δ[A025712(n)]+n` -/
def P17360137189208959088.Spec : Prop :=
  ∀ n, P17360137189208959088.a n = A322533 (n + 1)

end A322533

/-! ## A322533.P8751313101711373690

`A322534(n+1)+2`
-/

namespace A322533.P8751313101711373690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322534 (n + 1) + 2

end

end A322533.P8751313101711373690

namespace A322533

/-- `A322534(n+1)+2` -/
def P8751313101711373690.Spec : Prop :=
  ∀ n, P8751313101711373690.a n = A322533 (n + 1)

end A322533

/-! ## A322533.P4218926781940887824

`∑[Δ[A020914(n)]+2]`
-/

namespace A322533.P4218926781940887824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322533.P4218926781940887824

namespace A322533

/-- `∑[Δ[A020914(n)]+2]` -/
def P4218926781940887824.Spec : Prop :=
  ∀ n, P4218926781940887824.a n = A322533 (n + 1)

end A322533

/-! ## A322533.P15058749951696995148

`∑[Δ[A056576(n)]+2]`
-/

namespace A322533.P15058749951696995148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322533.P15058749951696995148

namespace A322533

/-- `∑[Δ[A056576(n)]+2]` -/
def P15058749951696995148.Spec : Prop :=
  ∀ n, P15058749951696995148.a n = A322533 (n + 1)

end A322533

/-! ## A322533.P2679631706655548709

`Δ[A022330(n)+n²]`
-/

namespace A322533.P2679631706655548709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022330 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A322533.P2679631706655548709

namespace A322533

/-- `Δ[A022330(n)+n²]` -/
def P2679631706655548709.Spec : Prop :=
  ∀ n, P2679631706655548709.a n = A322533 (n + 1)

end A322533

/-! ## A322533.P17553447224046451024

`A206807(n+1)+1+n`
-/

namespace A322533.P17553447224046451024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206807 (n + 1) + 1 + (n : ℤ)

end

end A322533.P17553447224046451024

namespace A322533

/-- `A206807(n+1)+1+n` -/
def P17553447224046451024.Spec : Prop :=
  ∀ n, P17553447224046451024.a n = A322533 (n + 1)

end A322533

/-! ## A322533.P16923357703206107707

`A020914(n+1)+Δ[n²]`
-/

namespace A322533.P16923357703206107707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A322533.P16923357703206107707

namespace A322533

/-- `A020914(n+1)+Δ[n²]` -/
def P16923357703206107707.Spec : Prop :=
  ∀ n, P16923357703206107707.a n = A322533 (n + 1)

end A322533

/-! ## A322533.P4760795885237458169

`A056576(n+1)+2*(n+1)`
-/

namespace A322533.P4760795885237458169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 (n + 1) + (2 * (n + 1) : ℤ)

end

end A322533.P4760795885237458169

namespace A322533

/-- `A056576(n+1)+2*(n+1)` -/
def P4760795885237458169.Spec : Prop :=
  ∀ n, P4760795885237458169.a n = A322533 (n + 1)

end A322533

/-! ## A322533.P8886393189234531573

`A098295(n+1)+3*(n+1)`
-/

namespace A322533.P8886393189234531573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098295 (n + 1) + (3 * (n + 1) : ℤ)

end

end A322533.P8886393189234531573

namespace A322533

/-- `A098295(n+1)+3*(n+1)` -/
def P8886393189234531573.Spec : Prop :=
  ∀ n, P8886393189234531573.a n = A322533 (n + 1)

end A322533

/-! ## A322533.P11930957919079217374

`A122437(n+2)+n`
-/

namespace A322533.P11930957919079217374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122437 (n + 2) + (n : ℤ)

end

end A322533.P11930957919079217374

namespace A322533

/-- `A122437(n+2)+n` -/
def P11930957919079217374.Spec : Prop :=
  ∀ n, P11930957919079217374.a n = A322533 (n + 1)

end A322533

/-! ## A322533.P4987331558437435352

`A204399(n+1)+Δ[n²]`
-/

namespace A322533.P4987331558437435352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A322533.P4987331558437435352

namespace A322533

/-- `A204399(n+1)+Δ[n²]` -/
def P4987331558437435352.Spec : Prop :=
  ∀ n, P4987331558437435352.a n = A322533 (n + 1)

end A322533

/-! ## A322533.P17253618323968350735

`A028310(2*n+1)+A020914(n+1)`
-/

namespace A322533.P17253618323968350735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n + 1) + A020914 (n + 1)

end

end A322533.P17253618323968350735

namespace A322533

/-- `A028310(2*n+1)+A020914(n+1)` -/
def P17253618323968350735.Spec : Prop :=
  ∀ n, P17253618323968350735.a n = A322533 (n + 1)

end A322533

/-! ## A322533.P565087556474740481

`A020915(A020914(2*n))+A020914(n+1)`
-/

namespace A322533.P565087556474740481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A020914 (2 * n)).toNat + A020914 (n + 1)

end

end A322533.P565087556474740481

namespace A322533

/-- `A020915(A020914(2*n))+A020914(n+1)` -/
def P565087556474740481.Spec : Prop :=
  ∀ n, P565087556474740481.a n = A322533 (n + 1)

end A322533

/-! ## A322533.P656233595838215123

`A136409(A020914(2*n+1))+A020914(n+1)`
-/

namespace A322533.P656233595838215123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136409 (A020914 (2 * n + 1)).toNat + A020914 (n + 1)

end

end A322533.P656233595838215123

namespace A322533

/-- `A136409(A020914(2*n+1))+A020914(n+1)` -/
def P656233595838215123.Spec : Prop :=
  ∀ n, P656233595838215123.a n = A322533 (n + 1)

end A322533

/-! ## A322533.P16037651280999464613

`A009056(A322534(n+1))`
-/

namespace A322533.P16037651280999464613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A322534 (n + 1)).toNat

end

end A322533.P16037651280999464613

namespace A322533

/-- `A009056(A322534(n+1))` -/
def P16037651280999464613.Spec : Prop :=
  ∀ n, P16037651280999464613.a n = A322533 (n + 1)

end A322533

/-! ## A322533.P3049824471121056657

`A206805(A056576(n+1))+n+2`
-/

namespace A322533.P3049824471121056657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206805 (A056576 (n + 1)).toNat + (n + 2 : ℤ)

end

end A322533.P3049824471121056657

namespace A322533

/-- `A206805(A056576(n+1))+n+2` -/
def P3049824471121056657.Spec : Prop :=
  ∀ n, P3049824471121056657.a n = A322533 (n + 1)

end A322533

/-!
# A322534: Position of 2/3^n in the sequence of all numbers 1/2^m, 1/3^m, 2/3^m arranged in decreasing order.

The programs for A322534, the canonical program `A322534.P16082892566407553595` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322534 has offset 1).

The definition of A322534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322534.P17212445063548291184

`floor((n+1)*log2(12))-2`
-/

namespace A322534.P17212445063548291184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.logb 2 (12 : ℝ)⌋ - 2

end

end A322534.P17212445063548291184

namespace A322534

/-- `floor((n+1)*log2(12))-2` -/
def P17212445063548291184.Spec : Prop :=
  ∀ n, P17212445063548291184.a n = A322534 (n + 1)

end A322534

/-! ## A322534.P16082892566407553595

`abs(2-A322533(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A322534

/-- `abs(2-A322533(n+1))` -/
def P16082892566407553595.Spec : Prop :=
  ∀ n, P16082892566407553595.a n = A322534 (n + 1)

theorem P16082892566407553595.correct : P16082892566407553595.Spec := by
  intro n
  simp only [A322534, Nat.add_sub_cancel]

end A322534

/-! ## A322534.P5033351836073840570

`Δ[A022330(n)+(1-n)²]`
-/

namespace A322534.P5033351836073840570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022330 n + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A322534.P5033351836073840570

namespace A322534

/-- `Δ[A022330(n)+(1-n)²]` -/
def P5033351836073840570.Spec : Prop :=
  ∀ n, P5033351836073840570.a n = A322534 (n + 1)

end A322534

/-! ## A322534.P10125125887094532611

`abs(1-(∑[A022921(n)+1]+n))`
-/

namespace A322534.P10125125887094532611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022921 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))|

end

end A322534.P10125125887094532611

namespace A322534

/-- `abs(1-(∑[A022921(n)+1]+n))` -/
def P10125125887094532611.Spec : Prop :=
  ∀ n, P10125125887094532611.a n = A322534 (n + 1)

end A322534

/-! ## A322534.P16003949556172432535

`A000027(A322533(n+1)-2)`
-/

namespace A322534.P16003949556172432535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A322533 (n + 1) - 2).toNat

end

end A322534.P16003949556172432535

namespace A322534

/-- `A000027(A322533(n+1)-2)` -/
def P16003949556172432535.Spec : Prop :=
  ∀ n, P16003949556172432535.a n = A322534 (n + 1)

end A322534

/-! ## A322534.P12354366322541145272

`A000027(A056576(n+1)+2*n)`
-/

namespace A322534.P12354366322541145272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A056576 (n + 1) + (2 * n : ℤ)).toNat

end

end A322534.P12354366322541145272

namespace A322534

/-- `A000027(A056576(n+1)+2*n)` -/
def P12354366322541145272.Spec : Prop :=
  ∀ n, P12354366322541145272.a n = A322534 (n + 1)

end A322534

/-! ## A322534.P129862191924880068

`floor(A322533(n+1)-log2(A081168(n)))`
-/

namespace A322534.P129862191924880068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322533 (n + 1) : ℝ) - Real.logb 2 (A081168 n : ℝ)⌋

end

end A322534.P129862191924880068

namespace A322534

/-- `floor(A322533(n+1)-log2(A081168(n)))` -/
def P129862191924880068.Spec : Prop :=
  ∀ n, P129862191924880068.a n = A322534 (n + 1)

end A322534

/-! ## A322534.P13982415016654044586

`(A322533(n+1)-2)%A141869(n+1)`
-/

namespace A322534.P13982415016654044586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322533 (n + 1) - 2) (A141869 (n + 1))

end

end A322534.P13982415016654044586

namespace A322534

/-- `(A322533(n+1)-2)%A141869(n+1)` -/
def P13982415016654044586.Spec : Prop :=
  ∀ n, P13982415016654044586.a n = A322534 (n + 1)

end A322534

/-! ## A322534.P14794054960466804517

`A000027(2*n+A098294(n+1)+n)`
-/

namespace A322534.P14794054960466804517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((2 * n : ℤ) + (A098294 (n + 1) + (n : ℤ))).toNat

end

end A322534.P14794054960466804517

namespace A322534

/-- `A000027(2*n+A098294(n+1)+n)` -/
def P14794054960466804517.Spec : Prop :=
  ∀ n, P14794054960466804517.a n = A322534 (n + 1)

end A322534

/-! ## A322534.P14209863146371955844

`A028310(A056576(n+1)+2*n)`
-/

namespace A322534.P14209863146371955844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A056576 (n + 1) + (2 * n : ℤ)).toNat

end

end A322534.P14209863146371955844

namespace A322534

/-- `A028310(A056576(n+1)+2*n)` -/
def P14209863146371955844.Spec : Prop :=
  ∀ n, P14209863146371955844.a n = A322534 (n + 1)

end A322534

/-! ## A322534.P5534374687086523131

`A023444(A322533(n+1))`
-/

namespace A322534.P5534374687086523131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A322533 (n + 1)).toNat

end

end A322534.P5534374687086523131

namespace A322534

/-- `A023444(A322533(n+1))` -/
def P5534374687086523131.Spec : Prop :=
  ∀ n, P5534374687086523131.a n = A322534 (n + 1)

end A322534

/-! ## A322534.P16181613669105640971

`A023443(A322533(n+1)-1)`
-/

namespace A322534.P16181613669105640971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A322533 (n + 1) - 1).toNat

end

end A322534.P16181613669105640971

namespace A322534

/-- `A023443(A322533(n+1)-1)` -/
def P16181613669105640971.Spec : Prop :=
  ∀ n, P16181613669105640971.a n = A322534 (n + 1)

end A322534

/-! ## A322534.P11085069807897051330

`A023443(A020914(n+1)+2*n)`
-/

namespace A322534.P11085069807897051330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A020914 (n + 1) + (2 * n : ℤ)).toNat

end

end A322534.P11085069807897051330

namespace A322534

/-- `A023443(A020914(n+1)+2*n)` -/
def P11085069807897051330.Spec : Prop :=
  ∀ n, P11085069807897051330.a n = A322534 (n + 1)

end A322534

/-! ## A322534.P2627266781866021134

`A023443(A023443(floor((n+1)*log2(12))))`
-/

namespace A322534.P2627266781866021134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A023443 ⌊(n + 1 : ℝ) * Real.logb 2 (12 : ℝ)⌋.toNat).toNat

end

end A322534.P2627266781866021134

namespace A322534

/-- `A023443(A023443(floor((n+1)*log2(12))))` -/
def P2627266781866021134.Spec : Prop :=
  ∀ n, P2627266781866021134.a n = A322534 (n + 1)

end A322534

/-! ## A322534.P17704953710447485556

`A023443(A204399(n+1)+n+n)`
-/

namespace A322534.P17704953710447485556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A204399 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A322534.P17704953710447485556

namespace A322534

/-- `A023443(A204399(n+1)+n+n)` -/
def P17704953710447485556.Spec : Prop :=
  ∀ n, P17704953710447485556.a n = A322534 (n + 1)

end A322534

/-! ## A322534.P15311632190746466648

`A023443(A122437(n+2)+A023443(n))`
-/

namespace A322534.P15311632190746466648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A122437 (n + 2) + A023443 n).toNat

end

end A322534.P15311632190746466648

namespace A322534

/-- `A023443(A122437(n+2)+A023443(n))` -/
def P15311632190746466648.Spec : Prop :=
  ∀ n, P15311632190746466648.a n = A322534 (n + 1)

end A322534

/-! ## A322534.P16195426907318444949

`A020915(A056576(A056576(n+1)+2*n))`
-/

namespace A322534.P16195426907318444949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A056576 (A056576 (n + 1) + (2 * n : ℤ)).toNat).toNat

end

end A322534.P16195426907318444949

namespace A322534

/-- `A020915(A056576(A056576(n+1)+2*n))` -/
def P16195426907318444949.Spec : Prop :=
  ∀ n, P16195426907318444949.a n = A322534 (n + 1)

end A322534

/-!
# A322535: Number of arrays of 8 integers in -n..n with sum zero.

The programs for A322535, there is no canonical definition to state claims against.
-/

/-! ## A322535.P5933145085970879367

`A229735(Δ[n²])`
-/

namespace A322535.P5933145085970879367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229735 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A322535.P5933145085970879367

/-! ## A322535.P9349958561525252516

`record[A229735(n^(n%2))]`
-/

namespace A322535.P9349958561525252516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229735 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322535.P9349958561525252516

/-! ## A322535.P11219964630702163925

`record[A229735(abs(A030640(n)))]`
-/

namespace A322535.P11219964630702163925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229735 |A030640 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322535.P11219964630702163925

/-! ## A322535.P6395455643143220948

`record[A229735(Δ[A001318(n)])]`
-/

namespace A322535.P6395455643143220948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229735 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322535.P6395455643143220948

/-! ## A322535.P9863231491160100324

`record[A229735(A000265(n+1))]`
-/

namespace A322535.P9863231491160100324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229735 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322535.P9863231491160100324

/-! ## A322535.P12746826476728539979

`record[A229735(A026741(n+1))]`
-/

namespace A322535.P12746826476728539979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229735 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322535.P12746826476728539979

/-! ## A322535.P3966642898452760590

`A229735(2*n+1)^A284289(A006530(n+1))`
-/

namespace A322535.P3966642898452760590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229735 (2 * n + 1) : ℚ) ^ (A284289 (A006530 (n + 1)).toNat : ℤ)

end

end A322535.P3966642898452760590

/-! ## A322535.P5949673828005803163

`A243822(A284170(n+1))+A229735(n+1+n)`
-/

namespace A322535.P5949673828005803163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (A284170 (n + 1)).toNat + A229735 (n + 1 + n)

end

end A322535.P5949673828005803163

/-! ## A322535.P14158071664656381921

`A229735(A000265(2*n+1))²/A229735(2*n+1)`
-/

namespace A322535.P14158071664656381921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229735 (A000265 (2 * n + 1)).toNat ^ 2 : ℚ) / (A229735 (2 * n + 1) : ℚ)

end

end A322535.P14158071664656381921

/-! ## A322535.P377616881166659395

`A229735(A026741(2*n+1))²/A229735(2*n+1)`
-/

namespace A322535.P377616881166659395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229735 (A026741 (2 * n + 1)).toNat ^ 2 : ℚ) / (A229735 (2 * n + 1) : ℚ)

end

end A322535.P377616881166659395

/-! ## A322535.P7737599665905155728

`gcd(A008593(n+1)*A229735(2*n+1), A229735(2*n+1))`
-/

namespace A322535.P7737599665905155728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008593 (n + 1) * A229735 (2 * n + 1)) (A229735 (2 * n + 1))

end

end A322535.P7737599665905155728

/-! ## A322535.P975711252846090994

`A229735(2*n+1)+A000122(record[A006530(n+2)])`
-/

namespace A322535.P975711252846090994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229735 (2 * n + 1) + A000122 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322535.P975711252846090994

/-! ## A322535.P11689235073432874357

`A229735(2*n+1)+A000122(record[A014963(n+2)])`
-/

namespace A322535.P11689235073432874357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229735 (2 * n + 1) + A000122 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322535.P11689235073432874357

/-! ## A322535.P4221468769832652781

`record[A229735(A099375(n))]`
-/

namespace A322535.P4221468769832652781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229735 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322535.P4221468769832652781

/-! ## A322535.P16668033660332157241

`record[A229735(A158405(n+1))]`
-/

namespace A322535.P16668033660332157241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229735 (A158405 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322535.P16668033660332157241

/-!
# A322537: Number of arrays of 10 integers in -n..n with sum zero.

The programs for A322537, there is no canonical definition to state claims against.
-/

/-! ## A322537.P13677704204650446956

`A201552(A167614(n+7)+7)`
-/

namespace A322537.P13677704204650446956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A167614 (n + 7) + 7).toNat

end

end A322537.P13677704204650446956

/-! ## A322537.P5353704129058904175

`A201552(A000096(n+7)+11)`
-/

namespace A322537.P5353704129058904175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A000096 (n + 7) + 11).toNat

end

end A322537.P5353704129058904175

/-! ## A322537.P5515805834573082363

`A201552(eq[9, A002260(n+1)]+2)`
-/

namespace A322537.P5515805834573082363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A322537.P5515805834573082363

/-! ## A322537.P13200053859338510389

`A163269(A091823(n+2)-2)`
-/

namespace A322537.P13200053859338510389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163269 (A091823 (n + 2) - 2).toNat

end

end A322537.P13200053859338510389

/-! ## A322537.P15873250251500324969

`A163269(A034856(2*n+5)-A020744(n))`
-/

namespace A322537.P15873250251500324969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163269 (A034856 (2 * n + 5) - A020744 n).toNat

end

end A322537.P15873250251500324969

/-!
# A322538: Number of arrays of n integers in -8..8 with sum zero.

The programs for A322538, there is no canonical definition to state claims against.
-/

/-! ## A322538.P1648780895572103623

`A201552(A057428(n)+A055999(n+4))`
-/

namespace A322538.P1648780895572103623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A057428 n + A055999 (n + 4)).toNat

end

end A322538.P1648780895572103623

/-! ## A322538.P13708602831431426502

`A201552(A028310(n)+A000217(n+6))`
-/

namespace A322538.P13708602831431426502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A028310 n + A000217 (n + 6)).toNat

end

end A322538.P13708602831431426502

/-! ## A322538.P5578656727545347667

`A201552(A004277(n)+A056115(n)+21)`
-/

namespace A322538.P5578656727545347667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A004277 n + (A056115 n + 21)).toNat

end

end A322538.P5578656727545347667

/-! ## A322538.P12224981737386888829

`A201552(A004277(n)+Δ[A264443(n)]+10)`
-/

namespace A322538.P12224981737386888829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A004277 n + (f1 (n + 1) - f1 n + 10)).toNat

end

end A322538.P12224981737386888829

/-! ## A322538.P11644525049055688902

`A201552(A004277(n)+A167499(n+4)+1)`
-/

namespace A322538.P11644525049055688902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A004277 n + (A167499 (n + 4) + 1)).toNat

end

end A322538.P11644525049055688902

/-!
# A322539: Number of arrays of n integers in -9..9 with sum zero.

The programs for A322539, there is no canonical definition to state claims against.
-/

/-! ## A322539.P11154182969396709849

`A077042(eq[20, A002260(n+1)])`
-/

namespace A322539.P11154182969396709849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322539.P11154182969396709849

/-! ## A322539.P9671689808551903897

`A201552((A056126(n)+28)%A002148(n))`
-/

namespace A322539.P9671689808551903897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (Int.tmod (A056126 n + 28) (A002148 n)).toNat

end

end A322539.P9671689808551903897

/-!
# A322540: Number of arrays of n integers in -10..10 with sum zero.

The programs for A322540, there is no canonical definition to state claims against.
-/

/-! ## A322540.P1232301666460590639

`A000069(A261504(n))`
-/

namespace A322540.P1232301666460590639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A261504 n).toNat

end

end A322540.P1232301666460590639

/-!
# A322541: Lesser of semi-unitary amicable numbers pair: numbers (m, n) such that susigma(m) = susigma(n) = m + n, where susigma(n) is the sum of the semi-unitary divisors of n (A322485).

The programs for A322541, there is no canonical definition to state claims against.
-/

/-! ## A322541.P9477028410361918065

`A205406(A323758(n+1))`
-/

namespace A322541.P9477028410361918065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205406 (A323758 (n + 1)).toNat

end

end A322541.P9477028410361918065

/-! ## A322541.P16349755925604462688

`A323758(A032551(n+2))`
-/

namespace A322541.P16349755925604462688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323758 (A032551 (n + 2)).toNat

end

end A322541.P16349755925604462688

/-! ## A322541.P4099810748786246740

`A323758(∑[A329074(n)!])`
-/

namespace A322541.P4099810748786246740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A329074 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323758 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322541.P4099810748786246740

/-!
# A322542: Larger of semi-unitary amicable numbers pair: numbers (m, n) such that susigma(m) = susigma(n) = m + n, where susigma(n) is the sum of the semi-unitary divisors of n (A322485).

The programs for A322542, there is no canonical definition to state claims against.
-/

/-! ## A322542.P16118436361985483288

`A241405(A322541(n+1))-A322541(n+1)`
-/

namespace A322542.P16118436361985483288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241405 (A322541 (n + 1)).toNat - A322541 (n + 1)

end

end A322542.P16118436361985483288

/-! ## A322542.P5989143533450159481

`A053814(A323759(n+1))`
-/

namespace A322542.P5989143533450159481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053814 (A323759 (n + 1)).toNat

end

end A322542.P5989143533450159481

/-! ## A322542.P1952248966669611792

`A323759(A032551(n+2))`
-/

namespace A322542.P1952248966669611792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323759 (A032551 (n + 2)).toNat

end

end A322542.P1952248966669611792

/-!
# A322543: Number of triadic partitions of the unit square into (2n+1) subrectangles.

The programs for A322543, there is no canonical definition to state claims against.
-/

/-! ## A322543.P6987722569717933927

`A130103(A199969(n+1))+A038722(A291744(n+1))`
-/

namespace A322543.P6987722569717933927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130103 (A199969 (n + 1)).toNat + A038722 (A291744 (n + 1)).toNat

end

end A322543.P6987722569717933927

/-! ## A322543.P3569879911557917296

`A038722(A291744(n+1))+A130103(n*A060576(n))`
-/

namespace A322543.P3569879911557917296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A291744 (n + 1)).toNat + A130103 ((n : ℤ) * A060576 n).toNat

end

end A322543.P3569879911557917296

/-!
# A322544: a(n) is the reciprocal of the coefficient of x^n in the power series defined by ((1+2x)*exp(x) + 3*exp(-x) - 4)/ (4x^2).

The programs for A322544, the canonical program `A322544.P3047130991815940660` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322544 has offset 0).

The definition of A322544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322544.P3047130991815940660

`4*(n+2)!/(2*n+5+3*(-1)^n)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A322544

/-- `4*(n+2)!/(2*n+5+3*(-1)^n)` -/
def P3047130991815940660.Spec : Prop :=
  ∀ n, P3047130991815940660.a n = (A322544 n : ℚ)

end A322544

/-! ## A322544.P8127614204382618401

`(n+2)!/(A028242(n)+1)`
-/

namespace A322544.P8127614204382618401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / (A028242 n + 1 : ℚ)

end

end A322544.P8127614204382618401

namespace A322544

/-- `(n+2)!/(A028242(n)+1)` -/
def P8127614204382618401.Spec : Prop :=
  ∀ n, P8127614204382618401.a n = (A322544 n : ℚ)

end A322544

/-! ## A322544.P5835181794342746920

`(n+2)!/A030451(n+1)`
-/

namespace A322544.P5835181794342746920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / (A030451 (n + 1) : ℚ)

end

end A322544.P5835181794342746920

namespace A322544

/-- `(n+2)!/A030451(n+1)` -/
def P5835181794342746920.Spec : Prop :=
  ∀ n, P5835181794342746920.a n = (A322544 n : ℚ)

end A322544

/-! ## A322544.P18411674352144218188

`(n+2)!/∑[gcd(2, n)²-2]`
-/

namespace A322544.P18411674352144218188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A322544.P18411674352144218188

namespace A322544

/-- `(n+2)!/∑[gcd(2, n)²-2]` -/
def P18411674352144218188.Spec : Prop :=
  ∀ n, P18411674352144218188.a n = (A322544 n : ℚ)

end A322544

/-! ## A322544.P1149530897607743897

`(n+2)!/∑[1-a(n-1)]` with `a(0)=2`
-/

namespace A322544.P1149530897607743897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A322544.P1149530897607743897

namespace A322544

/-- `(n+2)!/∑[1-a(n-1)]` -/
def P1149530897607743897.Spec : Prop :=
  ∀ n, P1149530897607743897.a n = (A322544 n : ℚ)

end A322544

/-! ## A322544.P3507697760859222096

`∏[n+2]/∑[1-a(n-1)]` with `a(0)=2`
-/

namespace A322544.P3507697760859222096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  1 - f2 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A322544.P3507697760859222096

namespace A322544

/-- `∏[n+2]/∑[1-a(n-1)]` -/
def P3507697760859222096.Spec : Prop :=
  ∀ n, P3507697760859222096.a n = (A322544 n : ℚ)

end A322544

/-! ## A322544.P4594180284480098399

`A094310(A028242((n+2)²))`
-/

namespace A322544.P4594180284480098399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (A028242 ((n + 2) ^ 2)).toNat

end

end A322544.P4594180284480098399

namespace A322544

/-- `A094310(A028242((n+2)²))` -/
def P4594180284480098399.Spec : Prop :=
  ∀ n, P4594180284480098399.a n = A322544 n

end A322544

/-! ## A322544.P7847231956105021796

`A000142(n+2)/(A028242(n)+1)`
-/

namespace A322544.P7847231956105021796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 2) : ℚ) / (A028242 n + 1 : ℚ)

end

end A322544.P7847231956105021796

namespace A322544

/-- `A000142(n+2)/(A028242(n)+1)` -/
def P7847231956105021796.Spec : Prop :=
  ∀ n, P7847231956105021796.a n = (A322544 n : ℚ)

end A322544

/-! ## A322544.P14351626955120529583

`A094310(∑[A005408(A028242(n))])`
-/

namespace A322544.P14351626955120529583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322544.P14351626955120529583

namespace A322544

/-- `A094310(∑[A005408(A028242(n))])` -/
def P14351626955120529583.Spec : Prop :=
  ∀ n, P14351626955120529583.a n = A322544 n

end A322544

/-! ## A322544.P17187683839766338493

`A094310(A028242(n)+A000124(n+1))`
-/

namespace A322544.P17187683839766338493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (A028242 n + A000124 (n + 1)).toNat

end

end A322544.P17187683839766338493

namespace A322544

/-- `A094310(A028242(n)+A000124(n+1))` -/
def P17187683839766338493.Spec : Prop :=
  ∀ n, P17187683839766338493.a n = A322544 n

end A322544

/-!
# A322547: Numbers k such that every integer partition of k contains a 1, a squarefree number, or a prime power.

The programs for A322547, there is no canonical definition to state claims against.
-/

/-! ## A322547.P1209871724645947739

`eq[0, A321936(n)]`
-/

namespace A322547.P1209871724645947739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322547.P1209871724645947739

/-! ## A322547.P6867714051768368901

`lt[A321936(n+1), 1]+1`
-/

namespace A322547.P6867714051768368901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A322547.P6867714051768368901

/-! ## A322547.P17012839271247090283

`A000027(lt[A321936(n), 1])`
-/

namespace A322547.P17012839271247090283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A322547.P17012839271247090283

/-! ## A322547.P15997461140615160381

`A028310(lt[A321936(n), 1])`
-/

namespace A322547.P15997461140615160381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A322547.P15997461140615160381

/-! ## A322547.P15501138474602619929

`lt[A057428(n), -A321936(n)]`
-/

namespace A322547.P15501138474602619929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A321936 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322547.P15501138474602619929

/-!
# A322548: Integers x such that x^2 + 119 = 15*2^y.

The programs for A322548, there is no canonical definition to state claims against.
-/

/-! ## A322548.P3940730979963498388

`or(A046089(A056355(n)), A225493(n+1))`
-/

namespace A322548.P3940730979963498388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046089 (A056355 n).toNat) (A225493 (n + 1))

end

end A322548.P3940730979963498388

/-!
# A322549: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where A(n,k) is the constant term in the expansion of (Sum_{j=0..n} j*(x^j + x^(-j)))^k.

The programs for A322549, there is no canonical definition to state claims against.
-/

/-! ## A322549.P11809356505847927392

`∑{e}[A274526(A327751(n)), #]`
-/

namespace A322549.P11809356505847927392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274526 (A327751 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A322549.P11809356505847927392

/-! ## A322549.P16180690979926806021

`A327751(n)+A102683(A099571(n))`
-/

namespace A322549.P16180690979926806021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327751 n + A102683 (A099571 n).toNat

end

end A322549.P16180690979926806021

/-! ## A322549.P854006464660669747

`A327751(n)+A132349(A155516(n))`
-/

namespace A322549.P854006464660669747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327751 n + A132349 (A155516 n).toNat

end

end A322549.P854006464660669747

/-! ## A322549.P9883818970536473251

`A104684(n)%A220498(A046802(n))`
-/

namespace A322549.P9883818970536473251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104684 n) (A220498 (A046802 n).toNat)

end

end A322549.P9883818970536473251

/-! ## A322549.P13998683380596286454

`A046521(n)%A038207(A347811(n))`
-/

namespace A322549.P13998683380596286454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046521 n) (A038207 (A347811 n).toNat)

end

end A322549.P13998683380596286454

/-!
# A322550: Table read by ascending antidiagonals: T(n, k) is the minimum number of cubes necessary to fill a right square prism with base area n^2 and height k.

The programs for A322550, the canonical program `A322550.P8618684598971273122` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322550 has offset 1).

The definition of A322550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322550.P8618684598971273122

`A003990(n+1)²/(A002260(n+1)*A003989(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A322550

/-- `A003990(n+1)²/(A002260(n+1)*A003989(n+1))` -/
def P8618684598971273122.Spec : Prop :=
  ∀ n, P8618684598971273122.a n = (A322550 (n + 1) : ℚ)

end A322550

/-! ## A322550.P5759458492669005532

`A003990(n+1)/A002260(n+1)*A089913(n+1)`
-/

namespace A322550.P5759458492669005532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A089913 (n + 1) : ℚ)

end

end A322550.P5759458492669005532

namespace A322550

/-- `A003990(n+1)/A002260(n+1)*A089913(n+1)` -/
def P5759458492669005532.Spec : Prop :=
  ∀ n, P5759458492669005532.a n = (A322550 (n + 1) : ℚ)

end A322550

/-! ## A322550.P4982457774900383281

`A003989(n+1)/A002260(n+1)*A089913(n+1)²`
-/

namespace A322550.P4982457774900383281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003989 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A089913 (n + 1) ^ 2 : ℚ)

end

end A322550.P4982457774900383281

namespace A322550

/-- `A003989(n+1)/A002260(n+1)*A089913(n+1)²` -/
def P4982457774900383281.Spec : Prop :=
  ∀ n, P4982457774900383281.a n = (A322550 (n + 1) : ℚ)

end A322550

/-! ## A322550.P3528482179225138084

`A089913(n+1)*A112543(n+1)`
-/

namespace A322550.P3528482179225138084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089913 (n + 1) * A112543 (n + 1)

end

end A322550.P3528482179225138084

namespace A322550

/-- `A089913(n+1)*A112543(n+1)` -/
def P3528482179225138084.Spec : Prop :=
  ∀ n, P3528482179225138084.a n = A322550 (n + 1)

end A322550

/-! ## A322550.P7601012306112445315

`A112543(n+1)²*A112543(A038722(n+1))`
-/

namespace A322550.P7601012306112445315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112543 (n + 1) ^ 2 * A112543 (A038722 (n + 1)).toNat

end

end A322550.P7601012306112445315

namespace A322550

/-- `A112543(n+1)²*A112543(A038722(n+1))` -/
def P7601012306112445315.Spec : Prop :=
  ∀ n, P7601012306112445315.a n = A322550 (n + 1)

end A322550

/-! ## A322550.P13958303374064444865

`A002260(n+1)/A003989(n+1)*A112543(n+1)²`
-/

namespace A322550.P13958303374064444865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A003989 (n + 1) : ℚ) * (A112543 (n + 1) ^ 2 : ℚ)

end

end A322550.P13958303374064444865

namespace A322550

/-- `A002260(n+1)/A003989(n+1)*A112543(n+1)²` -/
def P13958303374064444865.Spec : Prop :=
  ∀ n, P13958303374064444865.a n = (A322550 (n + 1) : ℚ)

end A322550

/-! ## A322550.P12636283792359065981

`A112543(n+1)²*A112544(n+1)`
-/

namespace A322550.P12636283792359065981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112543 (n + 1) ^ 2 * A112544 (n + 1)

end

end A322550.P12636283792359065981

namespace A322550

/-- `A112543(n+1)²*A112544(n+1)` -/
def P12636283792359065981.Spec : Prop :=
  ∀ n, P12636283792359065981.a n = A322550 (n + 1)

end A322550

/-! ## A322550.P11509504246478730324

`A089913(n+1)²/A112544(n+1)`
-/

namespace A322550.P11509504246478730324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089913 (n + 1) ^ 2 : ℚ) / (A112544 (n + 1) : ℚ)

end

end A322550.P11509504246478730324

namespace A322550

/-- `A089913(n+1)²/A112544(n+1)` -/
def P11509504246478730324.Spec : Prop :=
  ∀ n, P11509504246478730324.a n = (A322550 (n + 1) : ℚ)

end A322550

/-! ## A322550.P15032384026352475536

`A112544(A038722(n+1))²*A112544(n+1)`
-/

namespace A322550.P15032384026352475536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (A038722 (n + 1)).toNat ^ 2 * A112544 (n + 1)

end

end A322550.P15032384026352475536

namespace A322550

/-- `A112544(A038722(n+1))²*A112544(n+1)` -/
def P15032384026352475536.Spec : Prop :=
  ∀ n, P15032384026352475536.a n = A322550 (n + 1)

end A322550

/-! ## A322550.P2315307059641958072

`A000290(A112543(n+1)*A112544(n+1))/A112544(n+1)`
-/

namespace A322550.P2315307059641958072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A112543 (n + 1) * A112544 (n + 1)).toNat : ℚ) / (A112544 (n + 1) : ℚ)

end

end A322550.P2315307059641958072

namespace A322550

/-- `A000290(A112543(n+1)*A112544(n+1))/A112544(n+1)` -/
def P2315307059641958072.Spec : Prop :=
  ∀ n, P2315307059641958072.a n = (A322550 (n + 1) : ℚ)

end A322550

/-!
# A322551: Primes indexed by squarefree semiprimes.

The programs for A322551, there is no canonical definition to state claims against.
-/

/-! ## A322551.P11548931700771212006

`p?[A062007(n+2)]`
-/

namespace A322551.P11548931700771212006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062007 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322551.P11548931700771212006

/-! ## A322551.P7226600576764513683

`p?[Δ[A062820(n+1)]]`
-/

namespace A322551.P7226600576764513683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062820 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322551.P7226600576764513683

/-! ## A322551.P17143950587359177108

`record[A062007(abs(1-n)+5)]`
-/

namespace A322551.P17143950587359177108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062007 (|1 - (n : ℤ)| + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322551.P17143950587359177108

/-! ## A322551.P8336627394319528558

`A000040(A006881(n+1))`
-/

namespace A322551.P8336627394319528558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006881 (n + 1)).toNat

end

end A322551.P8336627394319528558

/-! ## A322551.P14203535108421262527

`A000040(A030229(n+2))`
-/

namespace A322551.P14203535108421262527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A030229 (n + 2)).toNat

end

end A322551.P14203535108421262527

/-! ## A322551.P12792344635830102807

`A000040(eq[2, A066882(n)])`
-/

namespace A322551.P12792344635830102807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322551.P12792344635830102807

/-! ## A322551.P10901577336093870818

`A000040(eq[2, A286852(n)])`
-/

namespace A322551.P10901577336093870818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322551.P10901577336093870818

/-! ## A322551.P10438250135566446696

`A000040(eq[3, A074206(n)])`
-/

namespace A322551.P10438250135566446696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322551.P10438250135566446696

/-! ## A322551.P9592531401406455343

`A000040(eq[3, A104725(n)])`
-/

namespace A322551.P9592531401406455343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322551.P9592531401406455343

/-!
# A322553: Odd numbers whose product of prime indices is a prime power.

The programs for A322553, there is no canonical definition to state claims against.
-/

/-! ## A322553.P16379276428143124468

`record[lcm(2, A302593(n+1))/2]`
-/

namespace A322553.P16379276428143124468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A302593 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322553.P16379276428143124468

/-! ## A322553.P18248514649445347829

`record[A000265(A302593(n+1))]`
-/

namespace A322553.P18248514649445347829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A302593 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322553.P18248514649445347829

/-! ## A322553.P11668608231507578843

`record[A302034(A302593(n+2))]`
-/

namespace A322553.P11668608231507578843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (A302593 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322553.P11668608231507578843

/-! ## A322553.P1232724954883940872

`record[A028234(A302593(n+5))]`
-/

namespace A322553.P1232724954883940872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A302593 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322553.P1232724954883940872

/-! ## A322553.P15277022935341107426

`filter[A302593(n+1), A000035(#)]`
-/

namespace A322553.P15277022935341107426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A322553.P15277022935341107426

/-! ## A322553.P12646521092591765367

`filter[A302593(n+1), A356172(#)]`
-/

namespace A322553.P12646521092591765367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A322553.P12646521092591765367

/-! ## A322553.P8605035118033838760

`filter[A302593(n+1), A374134(#)]`
-/

namespace A322553.P8605035118033838760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A322553.P8605035118033838760

/-! ## A322553.P9209830903462909540

`∩[A302593(n+1), A004273(n)]`
-/

namespace A322553.P9209830903462909540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322553.P9209830903462909540

/-! ## A322553.P11403577134121221198

`∩[A302593(n+1), A005408(n)]`
-/

namespace A322553.P11403577134121221198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322553.P11403577134121221198

/-!
# A322554: Numbers whose product of prime indices is a power of a squarefree number (A072774).

The programs for A322554, there is no canonical definition to state claims against.
-/

/-! ## A322554.P5101508601252457720

`eq[1, A330098(n+1)]+1`
-/

namespace A322554.P5101508601252457720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A322554.P5101508601252457720

/-! ## A322554.P14797134205026156658

`lt[1, 8-a(A330098(n)-1)]` with `a(0)=0`
-/

namespace A322554.P14797134205026156658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  8 - f2 (A330098 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A322554.P14797134205026156658

/-! ## A322554.P4141625768493959949

`lt[A330098(C(n+1, n)), 2]+1`
-/

namespace A322554.P4141625768493959949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330098 (Nat.choose (n + 1) n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A322554.P4141625768493959949

/-! ## A322554.P15721525769433194095

`lt[A330098(-xor(n, -1)), 2]+1`
-/

namespace A322554.P15721525769433194095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330098 (-Int.xor (n : ℤ) (-1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A322554.P15721525769433194095

/-! ## A322554.P13386703192919394276

`lt[A330098(abs(2-n)+3), 2]+1`
-/

namespace A322554.P13386703192919394276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330098 (|2 - (n : ℤ)| + 3).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A322554.P13386703192919394276

/-! ## A322554.P8143520591349844038

`eq[ceil(sin(n)²), A330098(A028310(n))]`
-/

namespace A322554.P8143520591349844038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330098 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A322554.P8143520591349844038

/-! ## A322554.P6154424710831833878

`eq[1, A340596(A003963(n+1))]+1`
-/

namespace A322554.P6154424710831833878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340596 (A003963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A322554.P6154424710831833878

/-! ## A322554.P11218819679891187684

`lt[A045778(A228731(n+1)), 3]+1`
-/

namespace A322554.P11218819679891187684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A228731 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A322554.P11218819679891187684

/-! ## A322554.P1252462900058550427

`lt[A062977(A003963((n+1)²)), 1]+1`
-/

namespace A322554.P1252462900058550427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (A003963 ((n + 1) ^ 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A322554.P1252462900058550427

/-! ## A322554.P10786878266898852079

`lt[A330098(n+1), 2]%A000010((n+1)²)+1`
-/

namespace A322554.P10786878266898852079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330098 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) (A000010 ((n + 1) ^ 2)) + 1

end

end A322554.P10786878266898852079

/-!
# A322555: Number of labeled simple graphs on n vertices where all non-isolated vertices have the same degree.

The programs for A322555, there is no canonical definition to state claims against.
-/

/-! ## A322555.P11051330506191924504

`A002635(10*A006095(n))`
-/

namespace A322555.P11051330506191924504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (10 * A006095 n).toNat

end

end A322555.P11051330506191924504

/-! ## A322555.P2447816317448320360

`A008615(A000716(n)+A000255(n))`
-/

namespace A322555.P2447816317448320360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A000716 n + A000255 n).toNat

end

end A322555.P2447816317448320360

/-! ## A322555.P826213986345650987

`A153150(A005041(n)*A350796(n))`
-/

namespace A322555.P826213986345650987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153150 (A005041 n * A350796 n).toNat

end

end A322555.P826213986345650987

/-!
# A322556: The number of eigenvectors with eigenvalue 1 summed over all linear operators on the vector space GF(2)^n.

The programs for A322556, the canonical program `A322556.P4437853514365450905` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322556 has offset 0).

The definition of A322556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322556.P4437853514365450905

`(2^n-1)*2^(n²-n)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A322556

/-- `(2^n-1)*2^(n²-n)` -/
def P4437853514365450905.Spec : Prop :=
  ∀ n, P4437853514365450905.a n = (A322556 n : ℚ)

end A322556

/-! ## A322556.P3585938396053301424

`2^n²-4^C(n, 2)`
-/

namespace A322556.P3585938396053301424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) - (4 ^ Nat.choose n 2 : ℤ)

end

end A322556.P3585938396053301424

namespace A322556

/-- `2^n²-4^C(n, 2)` -/
def P3585938396053301424.Spec : Prop :=
  ∀ n, P3585938396053301424.a n = A322556 n

end A322556

/-! ## A322556.P7797990238105881119

`lcm(2^n-1, 2^(n-1)^n)`
-/

namespace A322556.P7797990238105881119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 ^ n : ℤ) - 1) (SequenceMachineLib.roundAway (((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ n))

end

end A322556.P7797990238105881119

namespace A322556

/-- `lcm(2^n-1, 2^(n-1)^n)` -/
def P7797990238105881119.Spec : Prop :=
  ∀ n, (P7797990238105881119.a n : ℤ) = A322556 n

end A322556

/-! ## A322556.P16284802894456247836

`floor((2^n-1)*and(-3, 2^n)^(n-1))`
-/

namespace A322556.P16284802894456247836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 ^ n : ℤ) - 1 : ℚ) * (Int.land (-3) (2 ^ n : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A322556.P16284802894456247836

namespace A322556

/-- `floor((2^n-1)*and(-3, 2^n)^(n-1))` -/
def P16284802894456247836.Spec : Prop :=
  ∀ n, P16284802894456247836.a n = A322556 n

end A322556

/-! ## A322556.P18193592150762163929

`ceil((2^n-1)*and(-3, 2^n)^(n-1))`
-/

namespace A322556.P18193592150762163929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 ^ n : ℤ) - 1 : ℚ) * (Int.land (-3) (2 ^ n : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A322556.P18193592150762163929

namespace A322556

/-- `ceil((2^n-1)*and(-3, 2^n)^(n-1))` -/
def P18193592150762163929.Spec : Prop :=
  ∀ n, P18193592150762163929.a n = A322556 n

end A322556

/-!
# A322559: One of the two successive approximations up to 17^n for 17-adic integer sqrt(2). This is the 6 (mod 17) case (except for n = 0).

The programs for A322559, there is no canonical definition to state claims against.
-/

/-! ## A322559.P15722181325320985155

`A286877(n)+A286878(n)-A322560(n)`
-/

namespace A322559.P15722181325320985155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286877 n + (A286878 n - A322560 n)

end

end A322559.P15722181325320985155

/-! ## A322559.P8581769421757679325

`A322563(n)+A322564(n)-A322560(n)`
-/

namespace A322559.P8581769421757679325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322563 n + (A322564 n - A322560 n)

end

end A322559.P8581769421757679325

/-!
# A322560: One of the two successive approximations up to 17^n for 17-adic integer sqrt(2). This is the 11 (mod 17) case (except for n = 0).

The programs for A322560, there is no canonical definition to state claims against.
-/

/-! ## A322560.P4318656264066811330

`A286877(n)+A286878(n)-A322559(n)`
-/

namespace A322560.P4318656264066811330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286877 n + (A286878 n - A322559 n)

end

end A322560.P4318656264066811330

/-! ## A322560.P15996164741894438203

`A322563(n)+A322564(n)-A322559(n)`
-/

namespace A322560.P15996164741894438203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322563 n + (A322564 n - A322559 n)

end

end A322560.P15996164741894438203

/-!
# A322561: Digits of one of the two 17-adic integers sqrt(2) that is related to A322559.

The programs for A322561, there is no canonical definition to state claims against.
-/

/-! ## A322561.P17234497165243589527

`(A322559(n+1)-A322559(n))/17^n`
-/

namespace A322561.P17234497165243589527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322559 (n + 1) - A322559 n : ℚ) / (17 ^ n : ℚ)

end

end A322561.P17234497165243589527

/-! ## A322561.P3092808141619889383

`17-A322562(n)-(n+2)%(n+1)`
-/

namespace A322561.P3092808141619889383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A322562 n - (((n + 2) % (n + 1) : ℕ) : ℤ)

end

end A322561.P3092808141619889383

/-! ## A322561.P2519293397165153184

`17-(A322562(n)+A057427(n))`
-/

namespace A322561.P2519293397165153184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - (A322562 n + A057427 n)

end

end A322561.P2519293397165153184

/-! ## A322561.P6546324068260450884

`A057428(n)+17-A322562(n)`
-/

namespace A322561.P6546324068260450884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (17 - A322562 n)

end

end A322561.P6546324068260450884

/-! ## A322561.P10041673777276961914

`17-A322562(n)-char[A302032(n+1)]`
-/

namespace A322561.P10041673777276961914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A322562 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322561.P10041673777276961914

/-! ## A322561.P15244816730583578473

`A309989(n)+A309990(n)-A322562(n)`
-/

namespace A322561.P15244816730583578473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309989 n + (A309990 n - A322562 n)

end

end A322561.P15244816730583578473

/-! ## A322561.P6559116060741373465

`A322565(n)+A322566(n)-A322562(n)`
-/

namespace A322561.P6559116060741373465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322565 n + (A322566 n - A322562 n)

end

end A322561.P6559116060741373465

/-! ## A322561.P5998400342219453682

`17-A322562(n)-A285718(A285718(n+1)+1)`
-/

namespace A322561.P5998400342219453682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A322562 n - A285718 (A285718 (n + 1) + 1).toNat

end

end A322561.P5998400342219453682

/-! ## A322561.P9172054064271213497

`17-A322562(n)-A001221(A008578(n+1))`
-/

namespace A322561.P9172054064271213497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A322562 n - A001221 (A008578 (n + 1)).toNat

end

end A322561.P9172054064271213497

/-! ## A322561.P16410126670234865508

`17-A322562(n)-A088433(A006530(n+1))`
-/

namespace A322561.P16410126670234865508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A322562 n - A088433 (A006530 (n + 1)).toNat

end

end A322561.P16410126670234865508

/-! ## A322561.P757879302456323143

`17-A322562(n)-abs(A158052(n²+1))`
-/

namespace A322561.P757879302456323143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A322562 n - |A158052 (n ^ 2 + 1)|

end

end A322561.P757879302456323143

/-!
# A322562: Digits of one of the two 17-adic integers sqrt(2) that is related to A322560.

The programs for A322562, there is no canonical definition to state claims against.
-/

/-! ## A322562.P11120912883441329625

`(A322560(n+1)-A322560(n))/17^n`
-/

namespace A322562.P11120912883441329625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322560 (n + 1) - A322560 n : ℚ) / (17 ^ n : ℚ)

end

end A322562.P11120912883441329625

/-! ## A322562.P7911032147816401711

`17-(A322561(n)+A057427(n))`
-/

namespace A322562.P7911032147816401711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - (A322561 n + A057427 n)

end

end A322562.P7911032147816401711

/-! ## A322562.P17357477908582339438

`A057428(n)+17-A322561(n)`
-/

namespace A322562.P17357477908582339438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (17 - A322561 n)

end

end A322562.P17357477908582339438

/-! ## A322562.P5337437905030396913

`17-A322561(n)-A107286(A107286(n))`
-/

namespace A322562.P5337437905030396913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A322561 n - A107286 (A107286 n).toNat

end

end A322562.P5337437905030396913

/-! ## A322562.P4198906569599020688

`A309989(n)+A309990(n)-A322561(n)`
-/

namespace A322562.P4198906569599020688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309989 n + (A309990 n - A322561 n)

end

end A322562.P4198906569599020688

/-! ## A322562.P10558651042912322031

`A322565(n)+A322566(n)-A322561(n)`
-/

namespace A322562.P10558651042912322031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322565 n + (A322566 n - A322561 n)

end

end A322562.P10558651042912322031

/-! ## A322562.P8398758983958239551

`17-A322561(n)-A032741(A006530(n+1))`
-/

namespace A322562.P8398758983958239551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A322561 n - A032741 (A006530 (n + 1)).toNat

end

end A322562.P8398758983958239551

/-! ## A322562.P1176362709789212066

`17-A322561(n)-A032741(A020639(2*n+1))`
-/

namespace A322562.P1176362709789212066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A322561 n - A032741 (A020639 (2 * n + 1)).toNat

end

end A322562.P1176362709789212066

/-! ## A322562.P11809052224701974370

`A322565(2*n)-(A322561(n)-A322566(2*n))`
-/

namespace A322562.P11809052224701974370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322565 (2 * n) - (A322561 n - A322566 (2 * n))

end

end A322562.P11809052224701974370

/-!
# A322563: One of the two successive approximations up to 17^n for 17-adic integer sqrt(-2). This is the 7 (mod 17) case (except for n = 0).

The programs for A322563, there is no canonical definition to state claims against.
-/

/-! ## A322563.P8324500141216893918

`A286877(n)+A286878(n)-A322564(n)`
-/

namespace A322563.P8324500141216893918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286877 n + (A286878 n - A322564 n)

end

end A322563.P8324500141216893918

/-! ## A322563.P18123842925841466848

`A322559(n)+A322560(n)-A322564(n)`
-/

namespace A322563.P18123842925841466848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322559 n + (A322560 n - A322564 n)

end

end A322563.P18123842925841466848

/-!
# A322564: One of the two successive approximations up to 17^n for 17-adic integer sqrt(-2). This is the 10 (mod 17) case (except for n = 0).

The programs for A322564, there is no canonical definition to state claims against.
-/

/-! ## A322564.P3703806742081792081

`A286877(n)+A286878(n)-A322563(n)`
-/

namespace A322564.P3703806742081792081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286877 n + (A286878 n - A322563 n)

end

end A322564.P3703806742081792081

/-! ## A322564.P4277803582557962893

`A322559(n)+A322560(n)-A322563(n)`
-/

namespace A322564.P4277803582557962893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322559 n + (A322560 n - A322563 n)

end

end A322564.P4277803582557962893

/-!
# A322565: Digits of one of the two 17-adic integers sqrt(-2) that is related to A322563.

The programs for A322565, there is no canonical definition to state claims against.
-/

/-! ## A322565.P12949039626613768411

`(A322563(n+1)-A322563(n))/17^n`
-/

namespace A322565.P12949039626613768411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322563 (n + 1) - A322563 n : ℚ) / (17 ^ n : ℚ)

end

end A322565.P12949039626613768411

/-! ## A322565.P3171986059279329396

`17-(A322566(n)+A057427(n))`
-/

namespace A322565.P3171986059279329396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - (A322566 n + A057427 n)

end

end A322565.P3171986059279329396

/-! ## A322565.P16688737877498158607

`A057428(n)+17-A322566(n)`
-/

namespace A322565.P16688737877498158607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (17 - A322566 n)

end

end A322565.P16688737877498158607

/-! ## A322565.P3618913689359537217

`17-A322566(n)-A048881(A001316(n))`
-/

namespace A322565.P3618913689359537217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A322566 n - A048881 (A001316 n).toNat

end

end A322565.P3618913689359537217

/-! ## A322565.P3539805457922499149

`17-A322566(n)-A121262(A008574(n))`
-/

namespace A322565.P3539805457922499149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A322566 n - A121262 (A008574 n).toNat

end

end A322565.P3539805457922499149

/-! ## A322565.P11605571327793664694

`A309989(n)+A309990(n)-A322566(n)`
-/

namespace A322565.P11605571327793664694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309989 n + (A309990 n - A322566 n)

end

end A322565.P11605571327793664694

/-! ## A322565.P17270410165290583719

`A322561(n)+A322562(n)-A322566(n)`
-/

namespace A322565.P17270410165290583719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322561 n + (A322562 n - A322566 n)

end

end A322565.P17270410165290583719

/-! ## A322565.P11514540432338028518

`17-A322566(n)-A122458(2*n)`
-/

namespace A322565.P11514540432338028518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A322566 n - A122458 (2 * n)

end

end A322565.P11514540432338028518

/-!
# A322566: Digits of one of the two 17-adic integers sqrt(-2) that is related to A322564.

The programs for A322566, there is no canonical definition to state claims against.
-/

/-! ## A322566.P7687778813955088238

`(A322564(n+1)-A322564(n))/17^n`
-/

namespace A322566.P7687778813955088238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322564 (n + 1) - A322564 n : ℚ) / (17 ^ n : ℚ)

end

end A322566.P7687778813955088238

/-! ## A322566.P16331854635535942570

`17-(A322565(n)+A057427(n))`
-/

namespace A322566.P16331854635535942570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - (A322565 n + A057427 n)

end

end A322566.P16331854635535942570

/-! ## A322566.P5551306407844682597

`A057428(n)+17-A322565(n)`
-/

namespace A322566.P5551306407844682597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (17 - A322565 n)

end

end A322566.P5551306407844682597

/-! ## A322566.P4427079915683071916

`or(17-A322565(n), A000007(n))-1`
-/

namespace A322566.P4427079915683071916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (17 - A322565 n) (A000007 n) - 1

end

end A322566.P4427079915683071916

/-! ## A322566.P2649935838541368112

`A081729(2*n+1)+17-A322565(n)`
-/

namespace A322566.P2649935838541368112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (2 * n + 1) + (17 - A322565 n)

end

end A322566.P2649935838541368112

/-! ## A322566.P17842312348125059220

`17-A322565(n)-abs(A080378(n+1)-1)`
-/

namespace A322566.P17842312348125059220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A322565 n - |A080378 (n + 1) - 1|

end

end A322566.P17842312348125059220

/-! ## A322566.P18354392083201515017

`A309989(n)+A309990(n)-A322565(n)`
-/

namespace A322566.P18354392083201515017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309989 n + (A309990 n - A322565 n)

end

end A322566.P18354392083201515017

/-! ## A322566.P808350913316280896

`A322561(n)+A322562(n)-A322565(n)`
-/

namespace A322566.P808350913316280896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322561 n + (A322562 n - A322565 n)

end

end A322566.P808350913316280896

/-! ## A322566.P1872089064328356094

`or(17-A322565(n), A327172((n+1)²))-1`
-/

namespace A322566.P1872089064328356094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (17 - A322565 n) (A327172 ((n + 1) ^ 2)) - 1

end

end A322566.P1872089064328356094

/-!
# A322568: Integers k such that the least prime factor of 2^k - 1 is not in A122094.

The programs for A322568, there is no canonical definition to state claims against.
-/

/-! ## A322568.P12763920930198235215

`A350381(A076084(n+1))`
-/

namespace A322568.P12763920930198235215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350381 (A076084 (n + 1)).toNat

end

end A322568.P12763920930198235215

/-! ## A322568.P14714960921235735799

`A350381(A151764(n+1))`
-/

namespace A322568.P14714960921235735799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350381 (A151764 (n + 1)).toNat

end

end A322568.P14714960921235735799

/-! ## A322568.P16470029755613660145

`filter[A350381(n+1), A232750(#)]`
-/

namespace A322568.P16470029755613660145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232750 (f1 j).toNat = 1) n)

end

end A322568.P16470029755613660145

/-! ## A322568.P14056163105723583872

`A350381(C(comp[A349554(n+1)], n))`
-/

namespace A322568.P14056163105723583872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349554 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350381 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) n)

end

end A322568.P14056163105723583872

/-! ## A322568.P17212884460786665783

`A350381(n+1)+A010054(A275918(n))`
-/

namespace A322568.P17212884460786665783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350381 (n + 1) + A010054 (A275918 n).toNat

end

end A322568.P17212884460786665783

/-!
# A322569: a(n)=x is the least integer such that gcd(sigma(x), sigma(x+1)) = 2*n.

The programs for A322569, there is no canonical definition to state claims against.
-/

/-! ## A322569.P3737495004472807484

`A084307(2*(n+1))`
-/

namespace A322569.P3737495004472807484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084307 (2 * (n + 1))

end

end A322569.P3737495004472807484

/-! ## A322569.P8647153084389163634

`A084307(Δ[A027691(n)])+char[38]`
-/

namespace A322569.P8647153084389163634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084307 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A322569.P8647153084389163634

/-! ## A322569.P15339141445731179110

`A084307(Δ[A002378(n)])+C(n, 64)`
-/

namespace A322569.P15339141445731179110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084307 (f1 (n + 1) - f1 n).toNat + (Nat.choose n 64 : ℤ)

end

end A322569.P15339141445731179110

/-! ## A322569.P3613558664333517373

`A084307(Δ[A002378(n)])%A002189(n)`
-/

namespace A322569.P3613558664333517373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084307 (f1 (n + 1) - f1 n).toNat) (A002189 n)

end

end A322569.P3613558664333517373

/-! ## A322569.P5437590458511087561

`A084307(Δ[A027691(n)])%A000045(n+8)`
-/

namespace A322569.P5437590458511087561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084307 (f1 (n + 1) - f1 n).toNat) (A000045 (n + 8))

end

end A322569.P5437590458511087561

/-!
# A322570: Positive integers k such that A270710(k) (= (k+1)*(3*k-1)) have only 1 or 2 different digits in base 10.

The programs for A322570, there is no canonical definition to state claims against.
-/

/-! ## A322570.P4671449212353280585

`floor(sqrt(A322571(n+1)/3))`
-/

namespace A322570.P4671449212353280585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A322571 (n + 1) : ℚ) / 3 : ℝ)⌋

end

end A322570.P4671449212353280585

/-! ## A322570.P7426812546578405646

`round(sqrt(A322571((n+1)^-1^-1)/3))`
-/

namespace A322570.P7426812546578405646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A322571 (SequenceMachineLib.roundAway (((n + 1 : ℚ) ^ (-1 : ℤ)) ^ (-1 : ℤ))).toNat : ℚ) / 3 : ℝ))

end

end A322570.P7426812546578405646

/-! ## A322570.P2375997673217127660

`round(sqrt(A322571(n+1)/3))%A041104(n)`
-/

namespace A322570.P2375997673217127660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt ((A322571 (n + 1) : ℚ) / 3 : ℝ))) (A041104 n)

end

end A322570.P2375997673217127660

/-!
# A322571: Positive integers A270710(k) (= (k+1)*(3*k-1)) which have only 1 or 2 different digits in base 10.

The programs for A322571, there is no canonical definition to state claims against.
-/

/-! ## A322571.P11767887267402686736

`A270710(A322570(n+1))`
-/

namespace A322571.P11767887267402686736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270710 (A322570 (n + 1)).toNat

end

end A322571.P11767887267402686736

/-! ## A322571.P8189418845946324267

`A184005(2*A322570(n+1))`
-/

namespace A322571.P8189418845946324267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184005 (2 * A322570 (n + 1)).toNat

end

end A322571.P8189418845946324267

/-! ## A322571.P15827922856154236582

`A271675(2*A322570(n+1))`
-/

namespace A322571.P15827922856154236582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271675 (2 * A322570 (n + 1)).toNat

end

end A322571.P15827922856154236582

/-! ## A322571.P18421248452951722490

`A045944(A322570(n+1))-A007318(∑[n])`
-/

namespace A322571.P18421248452951722490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 (A322570 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322571.P18421248452951722490

/-! ## A322571.P18072309650410848114

`A184005(A322570(n+1)+A322570(n+1))`
-/

namespace A322571.P18072309650410848114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184005 (A322570 (n + 1) + A322570 (n + 1)).toNat

end

end A322571.P18072309650410848114

/-!
# A322573: G.f. = g(f(x)), where f(x) = g.f. of Fibonacci sequence A000045 and g(x) = g.f. of Jacobsthal sequence A001045.

The programs for A322573, the canonical program `A322573.P5569288985784920258` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322573 has offset 0).

The definition of A322573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322573.P5569288985784920258

`3*a(n-1)+2*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A322573

/-- `3*a(n-1)+2*a(n-2)-3*a(n-3)-a(n-4)` -/
def P5569288985784920258.Spec : Prop :=
  ∀ n, P5569288985784920258.a n = A322573 n

theorem P5569288985784920258.correct : P5569288985784920258.Spec := by
  intro n
  simp only [A322573]

end A322573

/-! ## A322573.P13495893279697990735

`or(1, 3*a(n-1))+a(n-2)-1` with `a(0)=0, a(1)=1`
-/

namespace A322573.P13495893279697990735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor 1 (3 * a (n - 1)) + (a (n - 2) - 1)

end

end A322573.P13495893279697990735

namespace A322573

/-- `or(1, 3*a(n-1))+a(n-2)-1` -/
def P13495893279697990735.Spec : Prop :=
  ∀ n, P13495893279697990735.a n = A322573 n

end A322573

/-! ## A322573.P8860584743709347031

`or(1, 3*a(n-1))-(1-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A322573.P8860584743709347031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor 1 (3 * a (n - 1)) - (1 - a (n - 2))

end

end A322573.P8860584743709347031

namespace A322573

/-- `or(1, 3*a(n-1))-(1-a(n-2))` -/
def P8860584743709347031.Spec : Prop :=
  ∀ n, P8860584743709347031.a n = A322573 n

end A322573

/-! ## A322573.P3236319053774578477

`3*a(n-1)+a(n-2)-a(n-1)%2` with `a(0)=0, a(1)=1`
-/

namespace A322573.P3236319053774578477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 1) + (a (n - 2) - Int.tmod (a (n - 1)) 2)

end

end A322573.P3236319053774578477

namespace A322573

/-- `3*a(n-1)+a(n-2)-a(n-1)%2` -/
def P3236319053774578477.Spec : Prop :=
  ∀ n, P3236319053774578477.a n = A322573 n

end A322573

/-! ## A322573.P6471501491094729921

`3*a(n-1)+a(n-2)-and(1, a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A322573.P6471501491094729921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 1) + (a (n - 2) - Int.land 1 (a (n - 1)))

end

end A322573.P6471501491094729921

namespace A322573

/-- `3*a(n-1)+a(n-2)-and(1, a(n-1))` -/
def P6471501491094729921.Spec : Prop :=
  ∀ n, P6471501491094729921.a n = A322573 n

end A322573

/-! ## A322573.P11931399427670640060

`3*a(n-1)-(and(1, a(n-1))-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A322573.P11931399427670640060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 1) - (Int.land 1 (a (n - 1)) - a (n - 2))

end

end A322573.P11931399427670640060

namespace A322573

/-- `3*a(n-1)-(and(1, a(n-1))-a(n-2))` -/
def P11931399427670640060.Spec : Prop :=
  ∀ n, P11931399427670640060.a n = A322573 n

end A322573

/-!
# A322576: Least nonnegative integer that cannot be expressed as the determinant of an n X n matrix whose entries are a permutation of the multiset {1^n, ..., n^n}.

The programs for A322576, there is no canonical definition to state claims against.
-/

/-! ## A322576.P5727915856463454303

`or(A047620(∏[5*(n-1)%(n+1)+1]), A090570(n+1))`
-/

namespace A322576.P5727915856463454303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047620 (∏ j ∈ Finset.range (n + 1), f1 j).toNat) (A090570 (n + 1))

end

end A322576.P5727915856463454303

/-!
# A322577: a(n) = Sum_{d|n} psi(n/d) * phi(d).

The programs for A322577, the canonical program `A322577.P2466038700097355167` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322577 has offset 1).

The definition of A322577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322577.P2466038700097355167

`∑{d}[n+1, #*A063659((n+1)/#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A322577

/-- `∑{d}[n+1, #*A063659((n+1)/#)]` -/
def P2466038700097355167.Spec : Prop :=
  ∀ n, P2466038700097355167.a n = A322577 (n + 1)

theorem P2466038700097355167.correct : P2466038700097355167.Spec := by
  intro n
  simp only [A322577, Nat.add_sub_cancel]

end A322577

/-! ## A322577.P14007834123357538745

`A347093(n+1)-A347092(n+1)`
-/

namespace A322577.P14007834123357538745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347093 (n + 1) - A347092 (n + 1)

end

end A322577.P14007834123357538745

namespace A322577

/-- `A347093(n+1)-A347092(n+1)` -/
def P14007834123357538745.Spec : Prop :=
  ∀ n, P14007834123357538745.a n = A322577 (n + 1)

end A322577

/-! ## A322577.P2190736396085642147

`∑{d}[n+1, A000010(#)*A001615((n+1)/#)]`
-/

namespace A322577.P2190736396085642147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P2190736396085642147

namespace A322577

/-- `∑{d}[n+1, A000010(#)*A001615((n+1)/#)]` -/
def P2190736396085642147.Spec : Prop :=
  ∀ n, P2190736396085642147.a n = A322577 (n + 1)

end A322577

/-! ## A322577.P14922526191355021264

`∑{d}[n+1, A008966(#)*A018804((n+1)/#)]`
-/

namespace A322577.P14922526191355021264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A018804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P14922526191355021264

namespace A322577

/-- `∑{d}[n+1, A008966(#)*A018804((n+1)/#)]` -/
def P14922526191355021264.Spec : Prop :=
  ∀ n, P14922526191355021264.a n = A322577 (n + 1)

end A322577

/-! ## A322577.P12011190457959221174

`∑{d}[n+1, A029935(#)*A034444((n+1)/#)]`
-/

namespace A322577.P12011190457959221174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P12011190457959221174

namespace A322577

/-- `∑{d}[n+1, A029935(#)*A034444((n+1)/#)]` -/
def P12011190457959221174.Spec : Prop :=
  ∀ n, P12011190457959221174.a n = A322577 (n + 1)

end A322577

/-! ## A322577.P17840001958929818533

`∑{d}[n+1, A007431(#)*A060648((n+1)/#)]`
-/

namespace A322577.P17840001958929818533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A060648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P17840001958929818533

namespace A322577

/-- `∑{d}[n+1, A007431(#)*A060648((n+1)/#)]` -/
def P17840001958929818533.Spec : Prop :=
  ∀ n, P17840001958929818533.a n = A322577 (n + 1)

end A322577

/-! ## A322577.P11305472394699556518

`∑{d}[n+1, A007432(#)*A060724((n+1)/#)]`
-/

namespace A322577.P11305472394699556518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A060724 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P11305472394699556518

namespace A322577

/-- `∑{d}[n+1, A007432(#)*A060724((n+1)/#)]` -/
def P11305472394699556518.Spec : Prop :=
  ∀ n, P11305472394699556518.a n = A322577 (n + 1)

end A322577

/-! ## A322577.P2560463694483925826

`∑{d}[n+1, A008833(#)*A078439((n+1)/#)]`
-/

namespace A322577.P2560463694483925826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008833 d * A078439 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P2560463694483925826

namespace A322577

/-- `∑{d}[n+1, A008833(#)*A078439((n+1)/#)]` -/
def P2560463694483925826.Spec : Prop :=
  ∀ n, P2560463694483925826.a n = A322577 (n + 1)

end A322577

/-! ## A322577.P199580591660245751

`∑{d}[n+1, A000203(#)*A130107((n+1)/#)]`
-/

namespace A322577.P199580591660245751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P199580591660245751

namespace A322577

/-- `∑{d}[n+1, A000203(#)*A130107((n+1)/#)]` -/
def P199580591660245751.Spec : Prop :=
  ∀ n, P199580591660245751.a n = A322577 (n + 1)

end A322577

/-! ## A322577.P11138134125034901053

`∑{d}[n+1, A048691(#)*A143275((n+1)/#)]`
-/

namespace A322577.P11138134125034901053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A143275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P11138134125034901053

namespace A322577

/-- `∑{d}[n+1, A048691(#)*A143275((n+1)/#)]` -/
def P11138134125034901053.Spec : Prop :=
  ∀ n, P11138134125034901053.a n = A322577 (n + 1)

end A322577

/-! ## A322577.P1367059316277361940

`∑{d}[n+1, A126246(#)*A159634((n+1)/#)]`
-/

namespace A322577.P1367059316277361940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A126246 d * A159634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P1367059316277361940

namespace A322577

/-- `∑{d}[n+1, A126246(#)*A159634((n+1)/#)]` -/
def P1367059316277361940.Spec : Prop :=
  ∀ n, P1367059316277361940.a n = A322577 (n + 1)

end A322577

/-! ## A322577.P4137396171534330665

`∑{d}[n+1, A038040(#)*A271102((n+1)/#)]`
-/

namespace A322577.P4137396171534330665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P4137396171534330665

namespace A322577

/-- `∑{d}[n+1, A038040(#)*A271102((n+1)/#)]` -/
def P4137396171534330665.Spec : Prop :=
  ∀ n, P4137396171534330665.a n = A322577 (n + 1)

end A322577

/-! ## A322577.P15738406632797959587

`∑{d}[n+1, A008683(#)*A327251((n+1)/#)]`
-/

namespace A322577.P15738406632797959587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A327251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P15738406632797959587

namespace A322577

/-- `∑{d}[n+1, A008683(#)*A327251((n+1)/#)]` -/
def P15738406632797959587.Spec : Prop :=
  ∀ n, P15738406632797959587.a n = A322577 (n + 1)

end A322577

/-! ## A322577.P2427911523048888625

`∑{d}[n+1, A060640(#)*A307445((n+1)/#)]`
-/

namespace A322577.P2427911523048888625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P2427911523048888625

namespace A322577

/-- `∑{d}[n+1, A060640(#)*A307445((n+1)/#)]` -/
def P2427911523048888625.Spec : Prop :=
  ∀ n, P2427911523048888625.a n = A322577 (n + 1)

end A322577

/-! ## A322577.P2192970573128684452

`∑{d}[n+1, A007427(#)*A365649((n+1)/#)]`
-/

namespace A322577.P2192970573128684452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A365649 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P2192970573128684452

namespace A322577

/-- `∑{d}[n+1, A007427(#)*A365649((n+1)/#)]` -/
def P2192970573128684452.Spec : Prop :=
  ∀ n, P2192970573128684452.a n = A322577 (n + 1)

end A322577

/-! ## A322577.P17088168746021622552

`∑{d}[n+1, A046692(#)*A360430((n+1)/#)]`
-/

namespace A322577.P17088168746021622552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A360430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P17088168746021622552

namespace A322577

/-- `∑{d}[n+1, A046692(#)*A360430((n+1)/#)]` -/
def P17088168746021622552.Spec : Prop :=
  ∀ n, P17088168746021622552.a n = A322577 (n + 1)

end A322577

/-! ## A322577.P4950893788414765152

`∑{d}[n+1, A158522(#)*A306379((n+1)/#)]`
-/

namespace A322577.P4950893788414765152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A306379 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P4950893788414765152

namespace A322577

/-- `∑{d}[n+1, A158522(#)*A306379((n+1)/#)]` -/
def P4950893788414765152.Spec : Prop :=
  ∀ n, P4950893788414765152.a n = A322577 (n + 1)

end A322577

/-! ## A322577.P3354561494217221808

`∑{d}[n+1, A174466(#)*A347090((n+1)/#)]`
-/

namespace A322577.P3354561494217221808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174466 d * A347090 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P3354561494217221808

namespace A322577

/-- `∑{d}[n+1, A174466(#)*A347090((n+1)/#)]` -/
def P3354561494217221808.Spec : Prop :=
  ∀ n, P3354561494217221808.a n = A322577 (n + 1)

end A322577

/-! ## A322577.P16979183773799717043

`∑{d}[n+1, A300717(#)*A349132((n+1)/#)]`
-/

namespace A322577.P16979183773799717043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300717 d * A349132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P16979183773799717043

namespace A322577

/-- `∑{d}[n+1, A300717(#)*A349132((n+1)/#)]` -/
def P16979183773799717043.Spec : Prop :=
  ∀ n, P16979183773799717043.a n = A322577 (n + 1)

end A322577

/-! ## A322577.P9485029940141806759

`∑{d}[n+1, A328729(#)*A390258((n+1)/#)]`
-/

namespace A322577.P9485029940141806759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328729 d * A390258 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P9485029940141806759

namespace A322577

/-- `∑{d}[n+1, A328729(#)*A390258((n+1)/#)]` -/
def P9485029940141806759.Spec : Prop :=
  ∀ n, P9485029940141806759.a n = A322577 (n + 1)

end A322577

/-!
# A322581: Sum of A003958 and its Dirichlet inverse: a(n) = A003958(n) + A097945(n).

The programs for A322581, the canonical program `A322581.P15493543185383869202` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322581 has offset 1).

The definition of A322581 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A097945, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322581.P15493543185383869202

`A003958(n+1)+A097945(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A322581

/-- `A003958(n+1)+A097945(n+1)` -/
def P15493543185383869202.Spec : Prop :=
  ∀ n, P15493543185383869202.a n = A322581 (n + 1)

theorem P15493543185383869202.correct : P15493543185383869202.Spec := by
  intro n
  simp only [A322581, Nat.add_sub_cancel]

end A322581

/-! ## A322581.P15428810095995889639

`A003958(n+1)*A007423(n+1)`
-/

namespace A322581.P15428810095995889639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A007423 (n + 1)

end

end A322581.P15428810095995889639

namespace A322581

/-- `A003958(n+1)*A007423(n+1)` -/
def P15428810095995889639.Spec : Prop :=
  ∀ n, P15428810095995889639.a n = A322581 (n + 1)

end A322581

/-! ## A322581.P4247364841412249563

`(A008683(n+1)+1)*A003958(n+1)`
-/

namespace A322581.P4247364841412249563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) + 1) * A003958 (n + 1)

end

end A322581.P4247364841412249563

namespace A322581

/-- `(A008683(n+1)+1)*A003958(n+1)` -/
def P4247364841412249563.Spec : Prop :=
  ∀ n, P4247364841412249563.a n = A322581 (n + 1)

end A322581

/-! ## A322581.P2985545588950908391

`abs((A008683(n+1)+1)*A125131(n+1))`
-/

namespace A322581.P2985545588950908391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A008683 (n + 1) + 1) * A125131 (n + 1)|

end

end A322581.P2985545588950908391

namespace A322581

/-- `abs((A008683(n+1)+1)*A125131(n+1))` -/
def P2985545588950908391.Spec : Prop :=
  ∀ n, P2985545588950908391.a n = A322581 (n + 1)

end A322581

/-! ## A322581.P14206618934440420839

`A097945(n+1)+1-A322582(n+1)+n`
-/

namespace A322581.P14206618934440420839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097945 (n + 1) + (1 - A322582 (n + 1) + (n : ℤ))

end

end A322581.P14206618934440420839

namespace A322581

/-- `A097945(n+1)+1-A322582(n+1)+n` -/
def P14206618934440420839.Spec : Prop :=
  ∀ n, P14206618934440420839.a n = A322581 (n + 1)

end A322581

/-! ## A322581.P378609361915331763

`A003958(n+1)+A054585(n+1)-A054585(n)`
-/

namespace A322581.P378609361915331763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) + (A054585 (n + 1) - A054585 n)

end

end A322581.P378609361915331763

namespace A322581

/-- `A003958(n+1)+A054585(n+1)-A054585(n)` -/
def P378609361915331763.Spec : Prop :=
  ∀ n, P378609361915331763.a n = A322581 (n + 1)

end A322581

/-! ## A322581.P16156949675407408182

`A003958(n+1)+∑{d}[A055615(n+1), A055615(#)]`
-/

namespace A322581.P16156949675407408182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) + ∑ d ∈ Nat.divisors (f1 n).natAbs, A055615 d

end

end A322581.P16156949675407408182

namespace A322581

/-- `A003958(n+1)+∑{d}[A055615(n+1), A055615(#)]` -/
def P16156949675407408182.Spec : Prop :=
  ∀ n, P16156949675407408182.a n = A322581 (n + 1)

end A322581

/-! ## A322581.P5748215724581382572

`A003958(n+1)+A008966(n+1)*A023900(n+1)`
-/

namespace A322581.P5748215724581382572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) + A008966 (n + 1) * A023900 (n + 1)

end

end A322581.P5748215724581382572

namespace A322581

/-- `A003958(n+1)+A008966(n+1)*A023900(n+1)` -/
def P5748215724581382572.Spec : Prop :=
  ∀ n, P5748215724581382572.a n = A322581 (n + 1)

end A322581

/-! ## A322581.P9896958522144724726

`A003958(n+1)/A064989(n+1)*A349126(n+1)`
-/

namespace A322581.P9896958522144724726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A064989 (n + 1) : ℚ) * (A349126 (n + 1) : ℚ)

end

end A322581.P9896958522144724726

namespace A322581

/-- `A003958(n+1)/A064989(n+1)*A349126(n+1)` -/
def P9896958522144724726.Spec : Prop :=
  ∀ n, P9896958522144724726.a n = (A322581 (n + 1) : ℚ)

end A322581

/-! ## A322581.P7956538976934014915

`A003958(n+1)/A336466(n+1)*A349912(n+1)`
-/

namespace A322581.P7956538976934014915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A336466 (n + 1) : ℚ) * (A349912 (n + 1) : ℚ)

end

end A322581.P7956538976934014915

namespace A322581

/-- `A003958(n+1)/A336466(n+1)*A349912(n+1)` -/
def P7956538976934014915.Spec : Prop :=
  ∀ n, P7956538976934014915.a n = (A322581 (n + 1) : ℚ)

end A322581

/-! ## A322581.P3681823313090659763

`A097945(n+1)+gcd(A097945(n+1), A125131(n+1))`
-/

namespace A322581.P3681823313090659763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097945 (n + 1) + (Int.gcd (A097945 (n + 1)) (A125131 (n + 1)) : ℤ)

end

end A322581.P3681823313090659763

namespace A322581

/-- `A097945(n+1)+gcd(A097945(n+1), A125131(n+1))` -/
def P3681823313090659763.Spec : Prop :=
  ∀ n, P3681823313090659763.a n = A322581 (n + 1)

end A322581

/-!
# A322582: a(n) = n - A003958(n), where A003958 is fully multiplicative with a(p) = (p-1).

The programs for A322582, the canonical program `A322582.P8618703387659365346` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322582 has offset 1).

The definition of A322582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322582.P17953664739120734295

`1-A003958(n+1)+n`
-/

namespace A322582.P17953664739120734295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A003958 (n + 1) + (n : ℤ)

end

end A322582.P17953664739120734295

namespace A322582

/-- `1-A003958(n+1)+n` -/
def P17953664739120734295.Spec : Prop :=
  ∀ n, P17953664739120734295.a n = A322582 (n + 1)

end A322582

/-! ## A322582.P8618703387659365346

`1-abs(A125131(n+1))+n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A322582

/-- `1-abs(A125131(n+1))+n` -/
def P8618703387659365346.Spec : Prop :=
  ∀ n, P8618703387659365346.a n = A322582 (n + 1)

theorem P8618703387659365346.correct : P8618703387659365346.Spec := by
  intro n
  simp only [A322582, Nat.add_sub_cancel]

end A322582

/-! ## A322582.P3635902165216078849

`1-sqrt(A167343(n+1))+n`
-/

namespace A322582.P3635902165216078849
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.sqrt (A167343 (n + 1) : ℝ) + (n : ℝ)

end

end A322582.P3635902165216078849

namespace A322582

/-- `1-sqrt(A167343(n+1))+n` -/
def P3635902165216078849.Spec : Prop :=
  ∀ n, P3635902165216078849.a n = (A322582 (n + 1) : ℝ)

end A322582

/-! ## A322582.P962660278330203108

`1-∑{d}[n+1, A003966(#)]+n`
-/

namespace A322582.P962660278330203108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A003966 d + (n : ℤ)

end

end A322582.P962660278330203108

namespace A322582

/-- `1-∑{d}[n+1, A003966(#)]+n` -/
def P962660278330203108.Spec : Prop :=
  ∀ n, P962660278330203108.a n = A322582 (n + 1)

end A322582

/-! ## A322582.P8888358704764683772

`n+1-A079579(n+1)/(n+1)`
-/

namespace A322582.P8888358704764683772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A079579 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A322582.P8888358704764683772

namespace A322582

/-- `n+1-A079579(n+1)/(n+1)` -/
def P8888358704764683772.Spec : Prop :=
  ∀ n, P8888358704764683772.a n = (A322582 (n + 1) : ℚ)

end A322582

/-! ## A322582.P9006129956429822723

`(n*A003958(2*(n+1)))%(n+1)`
-/

namespace A322582.P9006129956429822723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A003958 (2 * (n + 1))) (n + 1 : ℤ)

end

end A322582.P9006129956429822723

namespace A322582

/-- `(n*A003958(2*(n+1)))%(n+1)` -/
def P9006129956429822723.Spec : Prop :=
  ∀ n, P9006129956429822723.a n = A322582 (n + 1)

end A322582

/-! ## A322582.P3532017419815928999

`A001065(n+1)-A324044(n+1)`
-/

namespace A322582.P3532017419815928999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A324044 (n + 1)

end

end A322582.P3532017419815928999

namespace A322582

/-- `A001065(n+1)-A324044(n+1)` -/
def P3532017419815928999.Spec : Prop :=
  ∀ n, P3532017419815928999.a n = A322582 (n + 1)

end A322582

/-! ## A322582.P13487457436866077677

`1-A333787(A000265(n+1))+n`
-/

namespace A322582.P13487457436866077677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A333787 (A000265 (n + 1)).toNat + (n : ℤ)

end

end A322582.P13487457436866077677

namespace A322582

/-- `1-A333787(A000265(n+1))+n` -/
def P13487457436866077677.Spec : Prop :=
  ∀ n, P13487457436866077677.a n = A322582 (n + 1)

end A322582

/-! ## A322582.P495986084620815828

`A003415(n+1)-A348975(n+1)`
-/

namespace A322582.P495986084620815828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A348975 (n + 1)

end

end A322582.P495986084620815828

namespace A322582

/-- `A003415(n+1)-A348975(n+1)` -/
def P495986084620815828.Spec : Prop :=
  ∀ n, P495986084620815828.a n = A322582 (n + 1)

end A322582

/-! ## A322582.P8406334697754202578

`1-A339905(A064989(n+1))+n`
-/

namespace A322582.P8406334697754202578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A339905 (A064989 (n + 1)).toNat + (n : ℤ)

end

end A322582.P8406334697754202578

namespace A322582

/-- `1-A339905(A064989(n+1))+n` -/
def P8406334697754202578.Spec : Prop :=
  ∀ n, P8406334697754202578.a n = A322582 (n + 1)

end A322582

/-! ## A322582.P7211243956448455433

`A351444(n+1)-A351442(n+1)`
-/

namespace A322582.P7211243956448455433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351444 (n + 1) - A351442 (n + 1)

end

end A322582.P7211243956448455433

namespace A322582

/-- `A351444(n+1)-A351442(n+1)` -/
def P7211243956448455433.Spec : Prop :=
  ∀ n, P7211243956448455433.a n = A322582 (n + 1)

end A322582

/-! ## A322582.P7585899510379665125

`2*A168066(n+1)-A348507(n+1)`
-/

namespace A322582.P7585899510379665125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168066 (n + 1) - A348507 (n + 1)

end

end A322582.P7585899510379665125

namespace A322582

/-- `2*A168066(n+1)-A348507(n+1)` -/
def P7585899510379665125.Spec : Prop :=
  ∀ n, P7585899510379665125.a n = A322582 (n + 1)

end A322582

/-! ## A322582.P11298987103387624137

`1-∏{d}[n+1, A000010(A014963(#))]+n`
-/

namespace A322582.P11298987103387624137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∏ d ∈ Nat.divisors (f1 n), A000010 (A014963 d).toNat + (n : ℤ)

end

end A322582.P11298987103387624137

namespace A322582

/-- `1-∏{d}[n+1, A000010(A014963(#))]+n` -/
def P11298987103387624137.Spec : Prop :=
  ∀ n, P11298987103387624137.a n = A322582 (n + 1)

end A322582

/-! ## A322582.P9286321521403529337

`A168066(n+1)-A168065(n+1)+1+n`
-/

namespace A322582.P9286321521403529337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168066 (n + 1) - A168065 (n + 1) + 1 + (n : ℤ)

end

end A322582.P9286321521403529337

namespace A322582

/-- `A168066(n+1)-A168065(n+1)+1+n` -/
def P9286321521403529337.Spec : Prop :=
  ∀ n, P9286321521403529337.a n = A322582 (n + 1)

end A322582

/-! ## A322582.P2639233166900021063

`∑{d}[n+1, A023900(#)*A348981((n+1)/#)]`
-/

namespace A322582.P2639233166900021063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A348981 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322582.P2639233166900021063

namespace A322582

/-- `∑{d}[n+1, A023900(#)*A348981((n+1)/#)]` -/
def P2639233166900021063.Spec : Prop :=
  ∀ n, P2639233166900021063.a n = A322582 (n + 1)

end A322582

/-! ## A322582.P17458850065120984764

`∑{d}[n+1, A055615(#)*A348980((n+1)/#)]`
-/

namespace A322582.P17458850065120984764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A348980 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322582.P17458850065120984764

namespace A322582

/-- `∑{d}[n+1, A055615(#)*A348980((n+1)/#)]` -/
def P17458850065120984764.Spec : Prop :=
  ∀ n, P17458850065120984764.a n = A322582 (n + 1)

end A322582

/-! ## A322582.P7007204452199504280

`∑{d}[n+1, A323363(#)*A348982((n+1)/#)]`
-/

namespace A322582.P7007204452199504280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323363 d * A348982 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322582.P7007204452199504280

namespace A322582

/-- `∑{d}[n+1, A323363(#)*A348982((n+1)/#)]` -/
def P7007204452199504280.Spec : Prop :=
  ∀ n, P7007204452199504280.a n = A322582 (n + 1)

end A322582

/-! ## A322582.P13177937287384231814

`∑{d}[n+1, A328722(#)*A348983((n+1)/#)]`
-/

namespace A322582.P13177937287384231814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328722 d * A348983 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322582.P13177937287384231814

namespace A322582

/-- `∑{d}[n+1, A328722(#)*A348983((n+1)/#)]` -/
def P13177937287384231814.Spec : Prop :=
  ∀ n, P13177937287384231814.a n = A322582 (n + 1)

end A322582

/-! ## A322582.P10212410990422557061

`(A166624(n+1)-A166633(n+1))/A165824(n+1)`
-/

namespace A322582.P10212410990422557061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166624 (n + 1) - A166633 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A322582.P10212410990422557061

namespace A322582

/-- `(A166624(n+1)-A166633(n+1))/A165824(n+1)` -/
def P10212410990422557061.Spec : Prop :=
  ∀ n, P10212410990422557061.a n = (A322582 (n + 1) : ℚ)

end A322582

/-! ## A322582.P17949102328087073350

`(A166625(n+1)-A166634(n+1))/A165825(n+1)`
-/

namespace A322582.P17949102328087073350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166625 (n + 1) - A166634 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)

end

end A322582.P17949102328087073350

namespace A322582

/-- `(A166625(n+1)-A166634(n+1))/A165825(n+1)` -/
def P17949102328087073350.Spec : Prop :=
  ∀ n, P17949102328087073350.a n = (A322582 (n + 1) : ℚ)

end A322582

/-!
# A322583: a(n) is the number of factorizations of n into factorial numbers larger than one; a(1) = 1.

The programs for A322583, the canonical program `A322583.P14311457502044672591` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322583 has offset 1).

The definition of A322583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322583.P14311457502044672591

`A344438(∑[A063226(n+1)])+A344438(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A322583

/-- `A344438(∑[A063226(n+1)])+A344438(n+1)` -/
def P14311457502044672591.Spec : Prop :=
  ∀ n, P14311457502044672591.a n = A322583 (n + 1)

theorem P14311457502044672591.correct : P14311457502044672591.Spec := by
  intro n
  simp only [A322583, Nat.add_sub_cancel]

end A322583

/-! ## A322583.P10578069039535480651

`A000002(A136605(n+1))*A344438(n+1)`
-/

namespace A322583.P10578069039535480651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A136605 (n + 1)).toNat * A344438 (n + 1)

end

end A322583.P10578069039535480651

namespace A322583

/-- `A000002(A136605(n+1))*A344438(n+1)` -/
def P10578069039535480651.Spec : Prop :=
  ∀ n, P10578069039535480651.a n = A322583 (n + 1)

end A322583

/-! ## A322583.P6899884492209380655

`val(30*(n+1), A000203(A110765(n+1)))`
-/

namespace A322583.P6899884492209380655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (30 * (n + 1)) (A000203 (A110765 (n + 1)).toNat).toNat

end

end A322583.P6899884492209380655

namespace A322583

/-- `val(30*(n+1), A000203(A110765(n+1)))` -/
def P6899884492209380655.Spec : Prop :=
  ∀ n, (P6899884492209380655.a n : ℤ) = A322583 (n + 1)

end A322583

/-! ## A322583.P8068013485568552516

`C(A001221(A002033(n)), A356225(n+1))`
-/

namespace A322583.P8068013485568552516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001221 (A002033 n).toNat).toNat (A356225 (n + 1)).toNat

end

end A322583.P8068013485568552516

namespace A322583

/-- `C(A001221(A002033(n)), A356225(n+1))` -/
def P8068013485568552516.Spec : Prop :=
  ∀ n, (P8068013485568552516.a n : ℤ) = A322583 (n + 1)

end A322583

/-! ## A322583.P16651435896688665516

`C(A353849(A282970(n+1)), A335097(n+1))`
-/

namespace A322583.P16651435896688665516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A353849 (A282970 (n + 1)).toNat).toNat (A335097 (n + 1)).toNat

end

end A322583.P16651435896688665516

namespace A322583

/-- `C(A353849(A282970(n+1)), A335097(n+1))` -/
def P16651435896688665516.Spec : Prop :=
  ∀ n, (P16651435896688665516.a n : ℤ) = A322583 (n + 1)

end A322583

/-! ## A322583.P14438047755593732955

`C(A033461(A194918(n+2)), A335904(n+1))`
-/

namespace A322583.P14438047755593732955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A033461 (A194918 (n + 2)).toNat).toNat (A335904 (n + 1)).toNat

end

end A322583.P14438047755593732955

namespace A322583

/-- `C(A033461(A194918(n+2)), A335904(n+1))` -/
def P14438047755593732955.Spec : Prop :=
  ∀ n, (P14438047755593732955.a n : ℤ) = A322583 (n + 1)

end A322583

/-! ## A322583.P8108960932991953703

`A034876(A038699(n+1)+1)`
-/

namespace A322583.P8108960932991953703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034876 (A038699 (n + 1) + 1).toNat

end

end A322583.P8108960932991953703

namespace A322583

/-- `A034876(A038699(n+1)+1)` -/
def P8108960932991953703.Spec : Prop :=
  ∀ n, P8108960932991953703.a n = A322583 (n + 1)

end A322583

/-!
# A322584: a(n) is the number of terms of A025487 that divide n.

The programs for A322584, the canonical program `A322584.P9191283872727116257` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322584 has offset 1).

The definition of A322584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322584.P9191283872727116257

`∑{d}[n+1, A322585(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A322584

/-- `∑{d}[n+1, A322585(#)]` -/
def P9191283872727116257.Spec : Prop :=
  ∀ n, P9191283872727116257.a n = A322584 (n + 1)

theorem P9191283872727116257.correct : P9191283872727116257.Spec := by
  intro n
  simp only [A322584, Nat.add_sub_cancel]

end A322584

/-! ## A322584.P7301109903987685135

`∑{d}[n+1, floor(A046523(#)/#)]`
-/

namespace A322584.P7301109903987685135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊(A046523 d : ℚ) / (d : ℚ)⌋

end

end A322584.P7301109903987685135

namespace A322584

/-- `∑{d}[n+1, floor(A046523(#)/#)]` -/
def P7301109903987685135.Spec : Prop :=
  ∀ n, P7301109903987685135.a n = A322584 (n + 1)

end A322584

/-! ## A322584.P14643418997481935708

`A085082(A328479(n+1))`
-/

namespace A322584.P14643418997481935708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (A328479 (n + 1)).toNat

end

end A322584.P14643418997481935708

namespace A322584

/-- `A085082(A328479(n+1))` -/
def P14643418997481935708.Spec : Prop :=
  ∀ n, P14643418997481935708.a n = A322584 (n + 1)

end A322584

/-! ## A322584.P10357908865222932700

`A238690(A329900(n+1))`
-/

namespace A322584.P10357908865222932700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A329900 (n + 1)).toNat

end

end A322584.P10357908865222932700

namespace A322584

/-- `A238690(A329900(n+1))` -/
def P10357908865222932700.Spec : Prop :=
  ∀ n, P10357908865222932700.a n = A322584 (n + 1)

end A322584

/-! ## A322584.P853993157283639829

`∑{d}[n+1, floor(A025487(A101296(#))/#)]`
-/

namespace A322584.P853993157283639829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊(A025487 (A101296 d).toNat : ℚ) / (d : ℚ)⌋

end

end A322584.P853993157283639829

namespace A322584

/-- `∑{d}[n+1, floor(A025487(A101296(#))/#)]` -/
def P853993157283639829.Spec : Prop :=
  ∀ n, P853993157283639829.a n = A322584 (n + 1)

end A322584

/-!
# A322585: a(n) = 1 if n is a product of primorial numbers (A002110), 0 otherwise.

The programs for A322585, the canonical program `A322585.P11496340982607294037` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322585 has offset 1).

The definition of A322585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322585.P2742426044960295278

`char[A036035(n)-1]`
-/

namespace A322585.P2742426044960295278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322585.P2742426044960295278

namespace A322585

/-- `char[A036035(n)-1]` -/
def P2742426044960295278.Spec : Prop :=
  ∀ n, (P2742426044960295278.a n : ℤ) = A322585 (n + 1)

end A322585

/-! ## A322585.P642477028452273859

`char[A059901(n)-1]`
-/

namespace A322585.P642477028452273859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059901 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322585.P642477028452273859

namespace A322585

/-- `char[A059901(n)-1]` -/
def P642477028452273859.Spec : Prop :=
  ∀ n, (P642477028452273859.a n : ℤ) = A322585 (n + 1)

end A322585

/-! ## A322585.P12493325899394998919

`char[A063008(n)-1]`
-/

namespace A322585.P12493325899394998919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322585.P12493325899394998919

namespace A322585

/-- `char[A063008(n)-1]` -/
def P12493325899394998919.Spec : Prop :=
  ∀ n, (P12493325899394998919.a n : ℤ) = A322585 (n + 1)

end A322585

/-! ## A322585.P14228358770475956980

`char[A278217(n)-1]`
-/

namespace A322585.P14228358770475956980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278217 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322585.P14228358770475956980

namespace A322585

/-- `char[A278217(n)-1]` -/
def P14228358770475956980.Spec : Prop :=
  ∀ n, (P14228358770475956980.a n : ℤ) = A322585 (n + 1)

end A322585

/-! ## A322585.P13411784369515693017

`char[A278219(n)-1]`
-/

namespace A322585.P13411784369515693017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322585.P13411784369515693017

namespace A322585

/-- `char[A278219(n)-1]` -/
def P13411784369515693017.Spec : Prop :=
  ∀ n, (P13411784369515693017.a n : ℤ) = A322585 (n + 1)

end A322585

/-! ## A322585.P11496340982607294037

`char[A278222(n)-1]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A322585

/-- `char[A278222(n)-1]` -/
def P11496340982607294037.Spec : Prop :=
  ∀ n, (P11496340982607294037.a n : ℤ) = A322585 (n + 1)

theorem P11496340982607294037.correct : P11496340982607294037.Spec := by
  intro n
  simp only [A322585, Nat.add_sub_cancel]

end A322585

/-! ## A322585.P9611414974069067081

`char[A286598(n)-1]`
-/

namespace A322585.P9611414974069067081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286598 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322585.P9611414974069067081

namespace A322585

/-- `char[A286598(n)-1]` -/
def P9611414974069067081.Spec : Prop :=
  ∀ n, (P9611414974069067081.a n : ℤ) = A322585 (n + 1)

end A322585

/-! ## A322585.P14010687586363844633

`char[A329887(n)-1]`
-/

namespace A322585.P14010687586363844633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329887 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322585.P14010687586363844633

namespace A322585

/-- `char[A329887(n)-1]` -/
def P14010687586363844633.Spec : Prop :=
  ∀ n, (P14010687586363844633.a n : ℤ) = A322585 (n + 1)

end A322585

/-! ## A322585.P4157389466989396634

`floor(1/A064839(n+1))`
-/

namespace A322585.P4157389466989396634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A064839 (n + 1) : ℚ)⌋

end

end A322585.P4157389466989396634

namespace A322585

/-- `floor(1/A064839(n+1))` -/
def P4157389466989396634.Spec : Prop :=
  ∀ n, P4157389466989396634.a n = A322585 (n + 1)

end A322585

/-! ## A322585.P11398375392564772254

`floor(1/A319627(n+1))`
-/

namespace A322585.P11398375392564772254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A319627 (n + 1) : ℚ)⌋

end

end A322585.P11398375392564772254

namespace A322585

/-- `floor(1/A319627(n+1))` -/
def P11398375392564772254.Spec : Prop :=
  ∀ n, P11398375392564772254.a n = A322585 (n + 1)

end A322585

/-! ## A322585.P15908469329071111753

`floor(1/A328478(n+1))`
-/

namespace A322585.P15908469329071111753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A328478 (n + 1) : ℚ)⌋

end

end A322585.P15908469329071111753

namespace A322585

/-- `floor(1/A328478(n+1))` -/
def P15908469329071111753.Spec : Prop :=
  ∀ n, P15908469329071111753.a n = A322585 (n + 1)

end A322585

/-! ## A322585.P17726662359000804652

`char[A025487(n+1)-1]`
-/

namespace A322585.P17726662359000804652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322585.P17726662359000804652

namespace A322585

/-- `char[A025487(n+1)-1]` -/
def P17726662359000804652.Spec : Prop :=
  ∀ n, (P17726662359000804652.a n : ℤ) = A322585 (n + 1)

end A322585

/-! ## A322585.P12126484148473664175

`char[A046523(n+1)-1]`
-/

namespace A322585.P12126484148473664175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322585.P12126484148473664175

namespace A322585

/-- `char[A046523(n+1)-1]` -/
def P12126484148473664175.Spec : Prop :=
  ∀ n, (P12126484148473664175.a n : ℤ) = A322585 (n + 1)

end A322585

/-! ## A322585.P7233670653796173001

`char[A181821(n+1)-1]`
-/

namespace A322585.P7233670653796173001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322585.P7233670653796173001

namespace A322585

/-- `char[A181821(n+1)-1]` -/
def P7233670653796173001.Spec : Prop :=
  ∀ n, (P7233670653796173001.a n : ℤ) = A322585 (n + 1)

end A322585

/-! ## A322585.P1538370943443443776

`char[A212638(n+1)-1]`
-/

namespace A322585.P1538370943443443776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212638 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322585.P1538370943443443776

namespace A322585

/-- `char[A212638(n+1)-1]` -/
def P1538370943443443776.Spec : Prop :=
  ∀ n, (P1538370943443443776.a n : ℤ) = A322585 (n + 1)

end A322585

/-! ## A322585.P2855683262993069223

`char[A278233(n+1)-1]`
-/

namespace A322585.P2855683262993069223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322585.P2855683262993069223

namespace A322585

/-- `char[A278233(n+1)-1]` -/
def P2855683262993069223.Spec : Prop :=
  ∀ n, (P2855683262993069223.a n : ℤ) = A322585 (n + 1)

end A322585

/-! ## A322585.P16446810485670660884

`char[A278524(n+1)-1]`
-/

namespace A322585.P16446810485670660884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278524 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322585.P16446810485670660884

namespace A322585

/-- `char[A278524(n+1)-1]` -/
def P16446810485670660884.Spec : Prop :=
  ∀ n, (P16446810485670660884.a n : ℤ) = A322585 (n + 1)

end A322585

/-! ## A322585.P5806668353001513972

`char[A329899(n+1)-1]`
-/

namespace A322585.P5806668353001513972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322585.P5806668353001513972

namespace A322585

/-- `char[A329899(n+1)-1]` -/
def P5806668353001513972.Spec : Prop :=
  ∀ n, (P5806668353001513972.a n : ℤ) = A322585 (n + 1)

end A322585

/-! ## A322585.P10917779227971552747

`C(2, A355930(n+1)+2)`
-/

namespace A322585.P10917779227971552747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A355930 (n + 1) + 2).toNat

end

end A322585.P10917779227971552747

namespace A322585

/-- `C(2, A355930(n+1)+2)` -/
def P10917779227971552747.Spec : Prop :=
  ∀ n, (P10917779227971552747.a n : ℤ) = A322585 (n + 1)

end A322585

/-! ## A322585.P10650383397863586776

`C(A083258(n+1), n+1)`
-/

namespace A322585.P10650383397863586776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083258 (n + 1)).toNat (n + 1)

end

end A322585.P10650383397863586776

namespace A322585

/-- `C(A083258(n+1), n+1)` -/
def P10650383397863586776.Spec : Prop :=
  ∀ n, (P10650383397863586776.a n : ℤ) = A322585 (n + 1)

end A322585

/-!
# A322586: a(n) = 1 if n is a highly composite number (A002182), 0 otherwise.

The programs for A322586, there is no canonical definition to state claims against.
-/

/-! ## A322586.P17658220869762580750

`floor(1/A138009(n+1))`
-/

namespace A322586.P17658220869762580750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A138009 (n + 1) : ℚ)⌋

end

end A322586.P17658220869762580750

/-! ## A322586.P15477358963219533089

`char[A002182(n+1)-1]`
-/

namespace A322586.P15477358963219533089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322586.P15477358963219533089

/-! ## A322586.P1346853781321485429

`char[A061799(n+1)-1]`
-/

namespace A322586.P1346853781321485429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322586.P1346853781321485429

/-! ## A322586.P1185771211368498683

`char[A139770(n+1)-1]`
-/

namespace A322586.P1185771211368498683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139770 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322586.P1185771211368498683

/-! ## A322586.P16828183218695838284

`char[A135372(n+1)-2]`
-/

namespace A322586.P16828183218695838284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322586.P16828183218695838284

/-! ## A322586.P6904725261628178544

`A000007(A138009(n+1)-1)`
-/

namespace A322586.P6904725261628178544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A138009 (n + 1) - 1).toNat

end

end A322586.P6904725261628178544

/-! ## A322586.P10834262302153017381

`floor(A139770(n+1)/A000027(n+1))`
-/

namespace A322586.P10834262302153017381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139770 (n + 1) : ℚ) / (A000027 (n + 1) : ℚ)⌋

end

end A322586.P10834262302153017381

/-! ## A322586.P6821705725185084794

`char[∑[A262501(n+1)]-A262501(n+1)]`
-/

namespace A322586.P6821705725185084794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A262501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322586.P6821705725185084794

/-! ## A322586.P1865750734805783390

`(A139770(n+1)/(n+1))^A145125(n+1)`
-/

namespace A322586.P1865750734805783390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A139770 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ (A145125 (n + 1) : ℤ)

end

end A322586.P1865750734805783390

/-! ## A322586.P13808819851081971793

`∑{d}[n+1, A008683(#)*A181801((n+1)/#)]`
-/

namespace A322586.P13808819851081971793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A181801 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322586.P13808819851081971793

/-! ## A322586.P2160054709833547389

`val(A139768(A139770(n+1)), A139768(n+1))`
-/

namespace A322586.P2160054709833547389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A139768 (A139770 (n + 1)).toNat).toNat (A139768 (n + 1)).toNat

end

end A322586.P2160054709833547389

/-! ## A322586.P2924090946379947103

`val(A139799(A139770(n+1)), A139799(n+1))`
-/

namespace A322586.P2924090946379947103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A139799 (A139770 (n + 1)).toNat).toNat (A139799 (n + 1)).toNat

end

end A322586.P2924090946379947103

/-! ## A322586.P6464544992068786173

`A000007(2*A247015(n+1))`
-/

namespace A322586.P6464544992068786173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * A247015 (n + 1)).toNat

end

end A322586.P6464544992068786173

/-! ## A322586.P18220405705977809385

`A036987(A138009(n+1)²)`
-/

namespace A322586.P18220405705977809385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A138009 (n + 1) ^ 2).toNat

end

end A322586.P18220405705977809385

/-! ## A322586.P7275014484038781926

`C(n+1, A022404(n+1))`
-/

namespace A322586.P7275014484038781926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A022404 (n + 1)).toNat

end

end A322586.P7275014484038781926

/-! ## A322586.P13848926853370897072

`A010054(A073348(n+1)+∑[n])`
-/

namespace A322586.P13848926853370897072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A073348 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A322586.P13848926853370897072

/-! ## A322586.P16249757548907749335

`A000007(A247015(n+1)²)`
-/

namespace A322586.P16249757548907749335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A247015 (n + 1) ^ 2).toNat

end

end A322586.P16249757548907749335

/-!
# A322587: Lexicographically earliest such sequence a that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = 0 for odd primes, and f(n) = A291756(n) [equally: A295887(n)] for any other number.

The programs for A322587, there is no canonical definition to state claims against.
-/

/-! ## A322587.P7141045810419275854

`gcd(A151878(A000212(n)), A293215(n+1))`
-/

namespace A322587.P7141045810419275854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 (A000212 n).toNat) (A293215 (n + 1))

end

end A322587.P7141045810419275854

/-! ## A322587.P9667025827094532909

`A293226(n+1)/A317934(A161409(2*n))`
-/

namespace A322587.P9667025827094532909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293226 (n + 1) : ℚ) / (A317934 (A161409 (2 * n)).toNat : ℚ)

end

end A322587.P9667025827094532909

/-! ## A322587.P17950388562726789610

`A300833(n+1)/A118914(A240522(n+1))`
-/

namespace A322587.P17950388562726789610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300833 (n + 1) : ℚ) / (A118914 (A240522 (n + 1)).toNat : ℚ)

end

end A322587.P17950388562726789610

/-! ## A322587.P9919264457945588744

`A351030(n+1)/A372362(A347679(n+1))`
-/

namespace A322587.P9919264457945588744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351030 (n + 1) : ℚ) / (A372362 (A347679 (n + 1)).toNat : ℚ)

end

end A322587.P9919264457945588744

/-! ## A322587.P16550721999017830858

`A300235(n+1)-A010051(2^n)`
-/

namespace A322587.P16550721999017830858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300235 (n + 1) - A010051 (2 ^ n)

end

end A322587.P16550721999017830858

/-!
# A322588: Lexicographically earliest such sequence a that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = 0 for odd primes, and f(n) = A291750(n) for any other number.

The programs for A322588, there is no canonical definition to state claims against.
-/

/-! ## A322588.P14389725232328064923

`A066401(A323401(n+1)²)`
-/

namespace A322588.P14389725232328064923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066401 (A323401 (n + 1) ^ 2).toNat

end

end A322588.P14389725232328064923

/-! ## A322588.P14067866395238002336

`A101157(A323401(n+1)²)`
-/

namespace A322588.P14067866395238002336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101157 (A323401 (n + 1) ^ 2).toNat

end

end A322588.P14067866395238002336

/-! ## A322588.P10013248503562853920

`A323401(n+1)%record[A051728(n)]`
-/

namespace A322588.P10013248503562853920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323401 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A322588.P10013248503562853920

/-!
# A322589: Lexicographically earliest such sequence a that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = 0 for odd primes, and f(n) = A007913(n) for any other number.

The programs for A322589, there is no canonical definition to state claims against.
-/

/-! ## A322589.P16726240493458728601

`gcd(A000578(A008306(n+2)), A324389(n+1))`
-/

namespace A322589.P16726240493458728601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000578 (A008306 (n + 2)).toNat) (A324389 (n + 1))

end

end A322589.P16726240493458728601

/-! ## A322589.P11896559455456654888

`A324389(n+1)+A011648(A104842(n+1))`
-/

namespace A322589.P11896559455456654888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324389 (n + 1) + A011648 (A104842 (n + 1)).toNat

end

end A322589.P11896559455456654888

/-! ## A322589.P10882698012621779724

`A324389(n+1)/A183017(A124859(n+1))`
-/

namespace A322589.P10882698012621779724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324389 (n + 1) : ℚ) / (A183017 (A124859 (n + 1)).toNat : ℚ)

end

end A322589.P10882698012621779724

/-!
# A322590: Lexicographically earliest such positive sequence a that a(i) = a(j) => A007947(i) = A007947(j) for all i, j.

The programs for A322590, the canonical program `A322590.P17001618561382303928` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322590 has offset 1).

The definition of A322590 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285329, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322590.P17001618561382303928

`1+A285329(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A322590

/-- `1+A285329(n+1)` -/
def P17001618561382303928.Spec : Prop :=
  ∀ n, P17001618561382303928.a n = A322590 (n + 1)

theorem P17001618561382303928.correct : P17001618561382303928.Spec := by
  intro n
  simp only [A322590, Nat.add_sub_cancel]

end A322590

/-! ## A322590.P18173892636020426081

`A100112(∏{p}[n+1, #])`
-/

namespace A322590.P18173892636020426081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A322590.P18173892636020426081

namespace A322590

/-- `A100112(∏{p}[n+1, #])` -/
def P18173892636020426081.Spec : Prop :=
  ∀ n, P18173892636020426081.a n = A322590 (n + 1)

end A322590

/-! ## A322590.P9010264834625659709

`A107079(∏{p}[n+1, #])`
-/

namespace A322590.P9010264834625659709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A322590.P9010264834625659709

namespace A322590

/-- `A107079(∏{p}[n+1, #])` -/
def P9010264834625659709.Spec : Prop :=
  ∀ n, P9010264834625659709.a n = A322590 (n + 1)

end A322590

/-! ## A322590.P4604544667367374214

`A322815(∏{p}[n+1, #])`
-/

namespace A322590.P4604544667367374214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322815 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A322590.P4604544667367374214

namespace A322590

/-- `A322815(∏{p}[n+1, #])` -/
def P4604544667367374214.Spec : Prop :=
  ∀ n, P4604544667367374214.a n = A322590 (n + 1)

end A322590

/-! ## A322590.P2962069147207442297

`A351520(∏{p}[n+1, #])`
-/

namespace A322590.P2962069147207442297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351520 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A322590.P2962069147207442297

namespace A322590

/-- `A351520(∏{p}[n+1, #])` -/
def P2962069147207442297.Spec : Prop :=
  ∀ n, P2962069147207442297.a n = A322590 (n + 1)

end A322590

/-! ## A322590.P2299316386387728335

`A357241(∏{p}[n+1, #])`
-/

namespace A322590.P2299316386387728335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357241 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A322590.P2299316386387728335

namespace A322590

/-- `A357241(∏{p}[n+1, #])` -/
def P2299316386387728335.Spec : Prop :=
  ∀ n, P2299316386387728335.a n = A322590 (n + 1)

end A322590

/-! ## A322590.P2113035857472549957

`A013928(∏{p}[n+1, #]+1)`
-/

namespace A322590.P2113035857472549957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (∏ p ∈ Nat.primeFactors (f1 n), p + 1)

end

end A322590.P2113035857472549957

namespace A322590

/-- `A013928(∏{p}[n+1, #]+1)` -/
def P2113035857472549957.Spec : Prop :=
  ∀ n, P2113035857472549957.a n = A322590 (n + 1)

end A322590

/-! ## A322590.P13358015250816158161

`A013928(A076618(n+1))`
-/

namespace A322590.P13358015250816158161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A076618 (n + 1)).toNat

end

end A322590.P13358015250816158161

namespace A322590

/-- `A013928(A076618(n+1))` -/
def P13358015250816158161.Spec : Prop :=
  ∀ n, P13358015250816158161.a n = A322590 (n + 1)

end A322590

/-! ## A322590.P2953499725411492596

`A100112(A007947(n+1))`
-/

namespace A322590.P2953499725411492596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (A007947 (n + 1)).toNat

end

end A322590.P2953499725411492596

namespace A322590

/-- `A100112(A007947(n+1))` -/
def P2953499725411492596.Spec : Prop :=
  ∀ n, P2953499725411492596.a n = A322590 (n + 1)

end A322590

/-! ## A322590.P10835195227218423422

`A013928(A007947(n+1)+1)`
-/

namespace A322590.P10835195227218423422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A007947 (n + 1) + 1).toNat

end

end A322590.P10835195227218423422

namespace A322590

/-- `A013928(A007947(n+1)+1)` -/
def P10835195227218423422.Spec : Prop :=
  ∀ n, P10835195227218423422.a n = A322590 (n + 1)

end A322590

/-! ## A322590.P13941545518326790278

`A357241((n+1)/A003557(n+1))`
-/

namespace A322590.P13941545518326790278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357241 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A322590.P13941545518326790278

namespace A322590

/-- `A357241((n+1)/A003557(n+1))` -/
def P13941545518326790278.Spec : Prop :=
  ∀ n, P13941545518326790278.a n = A322590 (n + 1)

end A322590

/-! ## A322590.P624135521820836337

`A013928(∑{d}[A062953(n+1), A000010(#)]+1)`
-/

namespace A322590.P624135521820836337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d + 1).toNat

end

end A322590.P624135521820836337

namespace A322590

/-- `A013928(∑{d}[A062953(n+1), A000010(#)]+1)` -/
def P624135521820836337.Spec : Prop :=
  ∀ n, P624135521820836337.a n = A322590 (n + 1)

end A322590

/-! ## A322590.P15269908742641266107

`A013928(∏{d}[A062953(n+1), A014963(#)]+1)`
-/

namespace A322590.P15269908742641266107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d + 1).toNat

end

end A322590.P15269908742641266107

namespace A322590

/-- `A013928(∏{d}[A062953(n+1), A014963(#)]+1)` -/
def P15269908742641266107.Spec : Prop :=
  ∀ n, P15269908742641266107.a n = A322590 (n + 1)

end A322590

/-! ## A322590.P14222826383716877076

`A262869(2*A007947(n+1))`
-/

namespace A322590.P14222826383716877076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (2 * A007947 (n + 1)).toNat

end

end A322590.P14222826383716877076

namespace A322590

/-- `A262869(2*A007947(n+1))` -/
def P14222826383716877076.Spec : Prop :=
  ∀ n, P14222826383716877076.a n = A322590 (n + 1)

end A322590

/-! ## A322590.P8859201881353739907

`A262869(A007947(n+1)+A007947(n+1)+1)`
-/

namespace A322590.P8859201881353739907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (A007947 (n + 1) + (A007947 (n + 1) + 1)).toNat

end

end A322590.P8859201881353739907

namespace A322590

/-- `A262869(A007947(n+1)+A007947(n+1)+1)` -/
def P8859201881353739907.Spec : Prop :=
  ∀ n, P8859201881353739907.a n = A322590 (n + 1)

end A322590

/-! ## A322590.P13852276603956748751

`A357241(A071773((n+1)²))`
-/

namespace A322590.P13852276603956748751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357241 (A071773 ((n + 1) ^ 2)).toNat

end

end A322590.P13852276603956748751

namespace A322590

/-- `A357241(A071773((n+1)²))` -/
def P13852276603956748751.Spec : Prop :=
  ∀ n, P13852276603956748751.a n = A322590 (n + 1)

end A322590

/-!
# A322591: Lexicographically earliest such sequence a that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = 0 for odd primes, and A007947(n) for any other number.

The programs for A322591, there is no canonical definition to state claims against.
-/

/-! ## A322591.P15223717792887242290

`A324380(n)/A124778(2*n+1)`
-/

namespace A322591.P15223717792887242290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324380 n : ℚ) / (A124778 (2 * n + 1) : ℚ)

end

end A322591.P15223717792887242290

/-! ## A322591.P13624109814219893687

`gcd(A006086(A028285(n)), A324380(n))`
-/

namespace A322591.P13624109814219893687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006086 (A028285 n).toNat) (A324380 n)

end

end A322591.P13624109814219893687

/-! ## A322591.P8084520498311547885

`A324380(n)-A326291(Δ[A163478(n)])`
-/

namespace A322591.P8084520498311547885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324380 n - A326291 (f1 (n + 1) - f1 n).toNat

end

end A322591.P8084520498311547885

/-! ## A322591.P707699550081983212

`A091304(A000051(n))+A076511(n+1)`
-/

namespace A322591.P707699550081983212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (A000051 n).toNat + A076511 (n + 1)

end

end A322591.P707699550081983212

/-! ## A322591.P2827887855929408842

`A086374(A285356(n+1)^A250261(n))`
-/

namespace A322591.P2827887855929408842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086374 (SequenceMachineLib.roundAway ((A285356 (n + 1) : ℚ) ^ (A250261 n : ℤ))).toNat

end

end A322591.P2827887855929408842

/-!
# A322592: Lexicographically earliest such sequence a that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = 0 for odd primes, and f(n) = A289625(n) for any other number.

The programs for A322592, there is no canonical definition to state claims against.
-/

/-! ## A322592.P367718645744897422

`and(A329896(n+1), A344758(A126646(n)))`
-/

namespace A322592.P367718645744897422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A329896 (n + 1)) (A344758 (A126646 n).toNat)

end

end A322592.P367718645744897422

/-! ## A322592.P9881354700379633136

`A324903(A087111(n+1))+A137752(n+1)`
-/

namespace A322592.P9881354700379633136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324903 (A087111 (n + 1)).toNat + A137752 (n + 1)

end

end A322592.P9881354700379633136

/-! ## A322592.P9960816200876927508

`A329896(A077168(n+1)-1)`
-/

namespace A322592.P9960816200876927508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329896 (A077168 (n + 1) - 1).toNat

end

end A322592.P9960816200876927508

/-! ## A322592.P11607867881009759387

`A329400(2^A329896(n+1))`
-/

namespace A322592.P11607867881009759387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329400 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A329896 (n + 1) : ℤ))).toNat

end

end A322592.P11607867881009759387

/-!
# A322593: a(n) = 2^n + 2*n^2 + 1.

The programs for A322593, the canonical program `A322593.P2410348365594597064` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322593 has offset 0).

The definition of A322593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+2*n²+1` (program `A322593.P2410348365594597064`, by `A322593.P2410348365594597064.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322593.P2410348365594597064

`2^n+2*n²+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A322593

/-- `2^n+2*n²+1` -/
def P2410348365594597064.Spec : Prop :=
  ∀ n, (P2410348365594597064.a n : ℤ) = A322593 n

theorem P2410348365594597064.correct : P2410348365594597064.Spec := by
  intro n
  simp only [A322593]

end A322593

/-! ## A322593.P6541713062134146827

`∑[∑[2*(a(n-1)-2)]]` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A322593.P6541713062134146827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 5] fun n f2 =>
  2 * (f2 (n - 1) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322593.P6541713062134146827

namespace A322593

/-- `∑[∑[2*(a(n-1)-2)]]` -/
def P6541713062134146827.Spec : Prop :=
  ∀ n, P6541713062134146827.a n = A322593 n

end A322593

/-! ## A322593.P16483641065844176864

`∑[∑[a(n-1)+a(n-1)-4]]` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A322593.P16483641065844176864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 5] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) - 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322593.P16483641065844176864

namespace A322593

/-- `∑[∑[a(n-1)+a(n-1)-4]]` -/
def P16483641065844176864.Spec : Prop :=
  ∀ n, P16483641065844176864.a n = A322593 n

end A322593

/-! ## A322593.P6657512554552948814

`∑[∑[a(n-1)-(4-a(n-1))]]` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A322593.P6657512554552948814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 5] fun n f2 =>
  f2 (n - 1) - (4 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322593.P6657512554552948814

namespace A322593

/-- `∑[∑[a(n-1)-(4-a(n-1))]]` -/
def P6657512554552948814.Spec : Prop :=
  ∀ n, P6657512554552948814.a n = A322593 n

end A322593

/-! ## A322593.P2651669149066776474

`abs(A000217(2*n+1)+2^n-3*n)`
-/

namespace A322593.P2651669149066776474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 (2 * n + 1) + (2 ^ n : ℤ) - (3 * n : ℤ)|

end

end A322593.P2651669149066776474

namespace A322593

/-- `abs(A000217(2*n+1)+2^n-3*n)` -/
def P2651669149066776474.Spec : Prop :=
  ∀ n, P2651669149066776474.a n = A322593 n

end A322593

/-! ## A322593.P369760932211522020

`∑[A111284(n+1)+A011782(n)]`
-/

namespace A322593.P369760932211522020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1) + A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322593.P369760932211522020

namespace A322593

/-- `∑[A111284(n+1)+A011782(n)]` -/
def P369760932211522020.Spec : Prop :=
  ∀ n, P369760932211522020.a n = A322593 n

end A322593

/-! ## A322593.P13681576577425372620

`(A002522(2*n)+A000051(n+1))/2`
-/

namespace A322593.P13681576577425372620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002522 (2 * n) + A000051 (n + 1) : ℚ) / 2

end

end A322593.P13681576577425372620

namespace A322593

/-- `(A002522(2*n)+A000051(n+1))/2` -/
def P13681576577425372620.Spec : Prop :=
  ∀ n, P13681576577425372620.a n = (A322593 n : ℚ)

end A322593

/-! ## A322593.P10536362973181523915

`(A059100(2*n)+A000079(n+1))/2`
-/

namespace A322593.P10536362973181523915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059100 (2 * n) + A000079 (n + 1) : ℚ) / 2

end

end A322593.P10536362973181523915

namespace A322593

/-- `(A059100(2*n)+A000079(n+1))/2` -/
def P10536362973181523915.Spec : Prop :=
  ∀ n, P10536362973181523915.a n = (A322593 n : ℚ)

end A322593

/-! ## A322593.P357415087580153663

`record[A110514(n²)+A106624(n)]`
-/

namespace A322593.P357415087580153663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (n ^ 2) + A106624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322593.P357415087580153663

namespace A322593

/-- `record[A110514(n²)+A106624(n)]` -/
def P357415087580153663.Spec : Prop :=
  ∀ n, P357415087580153663.a n = A322593 n

end A322593

/-!
# A322594: a(n) = (4*n^3 + 12*n^2 - 4*n + 3)/3.

The programs for A322594, the canonical program `A322594.P14009789643874547898` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322594 has offset 0).

The definition of A322594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322594.P1165392316166968880

`(4*n^3+12*n²-4*n+3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322594.P1165392316166968880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 3 + 12 * n ^ 2 : ℤ) - (4 * n : ℤ) + 3 : ℚ) / 3

end

end A322594.P1165392316166968880

namespace A322594

/-- `(4*n^3+12*n²-4*n+3)/3` -/
def P1165392316166968880.Spec : Prop :=
  ∀ n, P1165392316166968880.a n = (A322594 n : ℚ)

end A322594

/-! ## A322594.P14009789643874547898

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=69`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A322594

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P14009789643874547898.Spec : Prop :=
  ∀ n, P14009789643874547898.a n = A322594 n

theorem P14009789643874547898.correct : P14009789643874547898.Spec := by
  intro n
  simp only [A322594]

end A322594

/-! ## A322594.P17898506936964835580

`a(n-1)+4*A028387(n-1)` with `a(0)=1`
-/

namespace A322594.P17898506936964835580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 4 * A028387 (n - 1)

end

end A322594.P17898506936964835580

namespace A322594

/-- `a(n-1)+4*A028387(n-1)` -/
def P17898506936964835580.Spec : Prop :=
  ∀ n, P17898506936964835580.a n = A322594 n

end A322594

/-! ## A322594.P13115839669181568150

`∑[a(n-1)+8*n]` with `a(0)=1, a(1)=4`
-/

namespace A322594.P13115839669181568150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322594.P13115839669181568150

namespace A322594

/-- `∑[a(n-1)+8*n]` -/
def P13115839669181568150.Spec : Prop :=
  ∀ n, (P13115839669181568150.a n : ℤ) = A322594 n

end A322594

/-! ## A322594.P9896184887551330993

`or(1, 4*(∑[∑[2*n]]-n))`
-/

namespace A322594.P9896184887551330993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (4 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)))

end

end A322594.P9896184887551330993

namespace A322594

/-- `or(1, 4*(∑[∑[2*n]]-n))` -/
def P9896184887551330993.Spec : Prop :=
  ∀ n, P9896184887551330993.a n = A322594 n

end A322594

/-! ## A322594.P1703460365431818118

`(2*n+1)²+a(n-1)-5` with `a(0)=1`
-/

namespace A322594.P1703460365431818118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n + 1) ^ 2 : ℤ) + (a (n - 1) - 5)

end

end A322594.P1703460365431818118

namespace A322594

/-- `(2*n+1)²+a(n-1)-5` -/
def P1703460365431818118.Spec : Prop :=
  ∀ n, P1703460365431818118.a n = A322594 n

end A322594

/-! ## A322594.P15697482500220683058

`floor((n+1+n)²+a(n-1)-5)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A322594.P15697482500220683058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1 + n) ^ 2 : ℤ) + (a (n - 1) - 5)

end

end A322594.P15697482500220683058

namespace A322594

/-- `floor((n+1+n)²+a(n-1)-5)` -/
def P15697482500220683058.Spec : Prop :=
  ∀ n, P15697482500220683058.a n = A322594 n

end A322594

/-! ## A322594.P9268165728229844341

`A273408(n)-n`
-/

namespace A322594.P9268165728229844341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273408 n - (n : ℤ)

end

end A322594.P9268165728229844341

namespace A322594

/-- `A273408(n)-n` -/
def P9268165728229844341.Spec : Prop :=
  ∀ n, P9268165728229844341.a n = A322594 n

end A322594

/-! ## A322594.P5237241285537257822

`4*A084990(n)+1`
-/

namespace A322594.P5237241285537257822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A084990 n + 1

end

end A322594.P5237241285537257822

namespace A322594

/-- `4*A084990(n)+1` -/
def P5237241285537257822.Spec : Prop :=
  ∀ n, P5237241285537257822.a n = A322594 n

end A322594

/-! ## A322594.P7389920522308532709

`A273316(n)-4*n`
-/

namespace A322594.P7389920522308532709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273316 n - (4 * n : ℤ)

end

end A322594.P7389920522308532709

namespace A322594

/-- `A273316(n)-4*n` -/
def P7389920522308532709.Spec : Prop :=
  ∀ n, P7389920522308532709.a n = A322594 n

end A322594

/-! ## A322594.P2983471946076880613

`A030440(n)+A007742(n)`
-/

namespace A322594.P2983471946076880613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030440 n + A007742 n

end

end A322594.P2983471946076880613

namespace A322594

/-- `A030440(n)+A007742(n)` -/
def P2983471946076880613.Spec : Prop :=
  ∀ n, P2983471946076880613.a n = A322594 n

end A322594

/-! ## A322594.P11492101957156404063

`A100503(n)+A001107(n)`
-/

namespace A322594.P11492101957156404063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100503 n + A001107 n

end

end A322594.P11492101957156404063

namespace A322594

/-- `A100503(n)+A001107(n)` -/
def P11492101957156404063.Spec : Prop :=
  ∀ n, P11492101957156404063.a n = A322594 n

end A322594

/-! ## A322594.P15716086702918338351

`A140063(n)+A007585(n)`
-/

namespace A322594.P15716086702918338351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140063 n + A007585 n

end

end A322594.P15716086702918338351

namespace A322594

/-- `A140063(n)+A007585(n)` -/
def P15716086702918338351.Spec : Prop :=
  ∀ n, P15716086702918338351.a n = A322594 n

end A322594

/-! ## A322594.P13160810473091006914

`A161703(n)+A139271(n)`
-/

namespace A322594.P13160810473091006914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161703 n + A139271 n

end

end A322594.P13160810473091006914

namespace A322594

/-- `A161703(n)+A139271(n)` -/
def P13160810473091006914.Spec : Prop :=
  ∀ n, P13160810473091006914.a n = A322594 n

end A322594

/-! ## A322594.P15992228059203124789

`A161707(n)+A139268(n)`
-/

namespace A322594.P15992228059203124789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161707 n + A139268 n

end

end A322594.P15992228059203124789

namespace A322594

/-- `A161707(n)+A139268(n)` -/
def P15992228059203124789.Spec : Prop :=
  ∀ n, P15992228059203124789.a n = A322594 n

end A322594

/-! ## A322594.P1080537448533295057

`A161712(n)+A139267(n)`
-/

namespace A322594.P1080537448533295057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161712 n + A139267 n

end

end A322594.P1080537448533295057

namespace A322594

/-- `A161712(n)+A139267(n)` -/
def P1080537448533295057.Spec : Prop :=
  ∀ n, P1080537448533295057.a n = A322594 n

end A322594

/-! ## A322594.P551906159371819059

`A192136(n)+A132124(n)`
-/

namespace A322594.P551906159371819059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n + A132124 n

end

end A322594.P551906159371819059

namespace A322594

/-- `A192136(n)+A132124(n)` -/
def P551906159371819059.Spec : Prop :=
  ∀ n, P551906159371819059.a n = A322594 n

end A322594

/-! ## A322594.P4606130663512429595

`A268684(n)+A056106(n)`
-/

namespace A322594.P4606130663512429595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268684 n + A056106 n

end

end A322594.P4606130663512429595

namespace A322594

/-- `A268684(n)+A056106(n)` -/
def P4606130663512429595.Spec : Prop :=
  ∀ n, P4606130663512429595.a n = A322594 n

end A322594

/-! ## A322594.P10420094243314731932

`A275876(n)+A081585(n)`
-/

namespace A322594.P10420094243314731932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275876 n + A081585 n

end

end A322594.P10420094243314731932

namespace A322594

/-- `A275876(n)+A081585(n)` -/
def P10420094243314731932.Spec : Prop :=
  ∀ n, P10420094243314731932.a n = A322594 n

end A322594

/-! ## A322594.P8927585224593344954

`A166911(n)-A016933(n)`
-/

namespace A322594.P8927585224593344954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166911 n - A016933 n

end

end A322594.P8927585224593344954

namespace A322594

/-- `A166911(n)-A016933(n)` -/
def P8927585224593344954.Spec : Prop :=
  ∀ n, P8927585224593344954.a n = A322594 n

end A322594

/-!
# A322595: a(n) = (n^3 + 9*n^2 + 14*n + 9)/3.

The programs for A322595, the canonical program `A322595.P15065717354503420171` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322595 has offset 0).

The definition of A322595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322595.P7224655304303261842

`(n^3+9*n²+14*n+9)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322595.P7224655304303261842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 + 9 * n ^ 2 + 14 * n + 9 : ℚ) / 3

end

end A322595.P7224655304303261842

namespace A322595

/-- `(n^3+9*n²+14*n+9)/3` -/
def P7224655304303261842.Spec : Prop :=
  ∀ n, P7224655304303261842.a n = (A322595 n : ℚ)

end A322595

/-! ## A322595.P15065717354503420171

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=11, a(2)=27, a(3)=53`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A322595

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P15065717354503420171.Spec : Prop :=
  ∀ n, P15065717354503420171.a n = A322595 n

theorem P15065717354503420171.correct : P15065717354503420171.Spec := by
  intro n
  simp only [A322595]

end A322595

/-! ## A322595.P1235348099443588449

`∑[∑[a(n-1)+2]]` with `a(0)=3, a(1)=5, a(2)=8`
-/

namespace A322595.P1235348099443588449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 8] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322595.P1235348099443588449

namespace A322595

/-- `∑[∑[a(n-1)+2]]` -/
def P1235348099443588449.Spec : Prop :=
  ∀ n, (P1235348099443588449.a n : ℤ) = A322595 n

end A322595

/-! ## A322595.P18172941795522087880

`2*A008778(n)+1`
-/

namespace A322595.P18172941795522087880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008778 n + 1

end

end A322595.P18172941795522087880

namespace A322595

/-- `2*A008778(n)+1` -/
def P18172941795522087880.Spec : Prop :=
  ∀ n, P18172941795522087880.a n = A322595 n

end A322595

/-! ## A322595.P7663538427986194988

`2*A074742(n+1)-3`
-/

namespace A322595.P7663538427986194988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074742 (n + 1) - 3

end

end A322595.P7663538427986194988

namespace A322595

/-- `2*A074742(n+1)-3` -/
def P7663538427986194988.Spec : Prop :=
  ∀ n, P7663538427986194988.a n = A322595 n

end A322595

/-! ## A322595.P13597565606862817975

`2*A027965(n+2)-3`
-/

namespace A322595.P13597565606862817975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027965 (n + 2) - 3

end

end A322595.P13597565606862817975

namespace A322595

/-- `2*A027965(n+2)-3` -/
def P13597565606862817975.Spec : Prop :=
  ∀ n, P13597565606862817975.a n = A322595 n

end A322595

/-! ## A322595.P6030261992432346672

`A159920(n+2)-(2*n+1)`
-/

namespace A322595.P6030261992432346672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159920 (n + 2) - (2 * n + 1 : ℤ)

end

end A322595.P6030261992432346672

namespace A322595

/-- `A159920(n+2)-(2*n+1)` -/
def P6030261992432346672.Spec : Prop :=
  ∀ n, P6030261992432346672.a n = A322595 n

end A322595

/-! ## A322595.P2899257894625477939

`A143689(n+1)+∑[(n+1)²]`
-/

namespace A322595.P2899257894625477939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A322595.P2899257894625477939

namespace A322595

/-- `A143689(n+1)+∑[(n+1)²]` -/
def P2899257894625477939.Spec : Prop :=
  ∀ n, P2899257894625477939.a n = A322595 n

end A322595

/-! ## A322595.P10577864845094063941

`A164897(n)+A007290(n)`
-/

namespace A322595.P10577864845094063941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164897 n + A007290 n

end

end A322595.P10577864845094063941

namespace A322595

/-- `A164897(n)+A007290(n)` -/
def P10577864845094063941.Spec : Prop :=
  ∀ n, P10577864845094063941.a n = A322595 n

end A322595

/-! ## A322595.P11252835798161492155

`A145069(n)+A033816(n)`
-/

namespace A322595.P11252835798161492155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145069 n + A033816 n

end

end A322595.P11252835798161492155

namespace A322595

/-- `A145069(n)+A033816(n)` -/
def P11252835798161492155.Spec : Prop :=
  ∀ n, P11252835798161492155.a n = A322595 n

end A322595

/-! ## A322595.P2822809242925688027

`A180118(n)+A027688(n)`
-/

namespace A322595.P2822809242925688027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180118 n + A027688 n

end

end A322595.P2822809242925688027

namespace A322595

/-- `A180118(n)+A027688(n)` -/
def P2822809242925688027.Spec : Prop :=
  ∀ n, P2822809242925688027.a n = A322595 n

end A322595

/-! ## A322595.P17879000472938313460

`A037236(n)-A006003(n)`
-/

namespace A322595.P17879000472938313460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037236 n - A006003 n

end

end A322595.P17879000472938313460

namespace A322595

/-- `A037236(n)-A006003(n)` -/
def P17879000472938313460.Spec : Prop :=
  ∀ n, P17879000472938313460.a n = A322595 n

end A322595

/-! ## A322595.P4450436473404104530

`A037237(n)-A006527(n)`
-/

namespace A322595.P4450436473404104530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037237 n - A006527 n

end

end A322595.P4450436473404104530

namespace A322595

/-- `A037237(n)-A006527(n)` -/
def P4450436473404104530.Spec : Prop :=
  ∀ n, P4450436473404104530.a n = A322595 n

end A322595

/-! ## A322595.P15700246131971013545

`A166911(n)-A011379(n)`
-/

namespace A322595.P15700246131971013545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166911 n - A011379 n

end

end A322595.P15700246131971013545

namespace A322595

/-- `A166911(n)-A011379(n)` -/
def P15700246131971013545.Spec : Prop :=
  ∀ n, P15700246131971013545.a n = A322595 n

end A322595

/-! ## A322595.P715246150974260740

`A100504(n)-A153257(n)`
-/

namespace A322595.P715246150974260740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100504 n - A153257 n

end

end A322595.P715246150974260740

namespace A322595

/-- `A100504(n)-A153257(n)` -/
def P715246150974260740.Spec : Prop :=
  ∀ n, P715246150974260740.a n = A322595 n

end A322595

/-! ## A322595.P4819411285722836880

`A136254(n)+A125202(n+1)`
-/

namespace A322595.P4819411285722836880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136254 n + A125202 (n + 1)

end

end A322595.P4819411285722836880

namespace A322595

/-- `A136254(n)+A125202(n+1)` -/
def P4819411285722836880.Spec : Prop :=
  ∀ n, P4819411285722836880.a n = A322595 n

end A322595

/-! ## A322595.P3768273939081663774

`A185669(n)+A086514(n+1)`
-/

namespace A322595.P3768273939081663774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185669 n + A086514 (n + 1)

end

end A322595.P3768273939081663774

namespace A322595

/-- `A185669(n)+A086514(n+1)` -/
def P3768273939081663774.Spec : Prop :=
  ∀ n, P3768273939081663774.a n = A322595 n

end A322595

/-! ## A322595.P2803521749590264011

`A229446(n+1)+A100040(n)`
-/

namespace A322595.P2803521749590264011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229446 (n + 1) + A100040 n

end

end A322595.P2803521749590264011

namespace A322595

/-- `A229446(n+1)+A100040(n)` -/
def P2803521749590264011.Spec : Prop :=
  ∀ n, P2803521749590264011.a n = A322595 n

end A322595

/-! ## A322595.P13463419129840009982

`A212959(n)+A208995(n+1)`
-/

namespace A322595.P13463419129840009982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 n + A208995 (n + 1)

end

end A322595.P13463419129840009982

namespace A322595

/-- `A212959(n)+A208995(n+1)` -/
def P13463419129840009982.Spec : Prop :=
  ∀ n, P13463419129840009982.a n = A322595 n

end A322595

/-!
# A322596: Square array read by descending antidiagonals (n >= 0, k >= 0): let b(n,k) = (n+k)!/((n+1)!*k!); then T(n,k) = b(n,k) if b(n,k) is an integer, and T(n,k) = floor(b(n,k)) + 1 otherwise.

The programs for A322596, there is no canonical definition to state claims against.
-/

/-! ## A322596.P15933826872983008995

`ceil(A008459(n)/A103406(n))`
-/

namespace A322596.P15933826872983008995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008459 n : ℚ) / (A103406 n : ℚ)⌉

end

end A322596.P15933826872983008995

/-! ## A322596.P16778468191612608424

`ceil(A088617(n)/A046899(n))`
-/

namespace A322596.P16778468191612608424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088617 n : ℚ) / (A046899 n : ℚ)⌉

end

end A322596.P16778468191612608424

/-! ## A322596.P10963062612383928956

`ceil(A007318(n)/A128227(n))`
-/

namespace A322596.P10963062612383928956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007318 n : ℚ) / (A128227 n : ℚ)⌉

end

end A322596.P10963062612383928956

/-! ## A322596.P13171001673403912483

`ceil(A007318(n)/A131899(n))`
-/

namespace A322596.P13171001673403912483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007318 n : ℚ) / (A131899 n : ℚ)⌉

end

end A322596.P13171001673403912483

/-! ## A322596.P5872727133712584363

`ceil(A007318(n)/A193738(n))`
-/

namespace A322596.P5872727133712584363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007318 n : ℚ) / (A193738 n : ℚ)⌉

end

end A322596.P5872727133712584363

/-! ## A322596.P145069866202527003

`ceil(A144084(n)/A121757(n))`
-/

namespace A322596.P145069866202527003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A144084 n : ℚ) / (A121757 n : ℚ)⌉

end

end A322596.P145069866202527003

/-! ## A322596.P5020192180890218639

`ceil(A196347(n)/A162608(n))`
-/

namespace A322596.P5020192180890218639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A196347 n : ℚ) / (A162608 n : ℚ)⌉

end

end A322596.P5020192180890218639

/-! ## A322596.P28569277614963979

`ceil(A007318(n)²/A103406(n))`
-/

namespace A322596.P28569277614963979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007318 n ^ 2 : ℚ) / (A103406 n : ℚ)⌉

end

end A322596.P28569277614963979

/-! ## A322596.P8449059961595282816

`ceil(A007318(n)/A002260(n+1))`
-/

namespace A322596.P8449059961595282816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007318 n : ℚ) / (A002260 (n + 1) : ℚ)⌉

end

end A322596.P8449059961595282816

/-! ## A322596.P3678916560511197313

`ceil(A007318(n)/A134868(n+1))`
-/

namespace A322596.P3678916560511197313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007318 n : ℚ) / (A134868 (n + 1) : ℚ)⌉

end

end A322596.P3678916560511197313

/-!
# A322597: a(n) = (4*n^3 - 6*n^2 + 20*n + 3)/3.

The programs for A322597, the canonical program `A322597.P2923020625437248849` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322597 has offset 0).

The definition of A322597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322597.P6091912146984630967

`(4*n^3-6*n²+20*n+3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322597.P6091912146984630967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (20 * n : ℤ) + 3 : ℚ) / 3

end

end A322597.P6091912146984630967

namespace A322597

/-- `(4*n^3-6*n²+20*n+3)/3` -/
def P6091912146984630967.Spec : Prop :=
  ∀ n, P6091912146984630967.a n = (A322597 n : ℚ)

end A322597

/-! ## A322597.P2923020625437248849

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=17, a(3)=39`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A322597

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2923020625437248849.Spec : Prop :=
  ∀ n, P2923020625437248849.a n = A322597 n

theorem P2923020625437248849.correct : P2923020625437248849.Spec := by
  intro n
  simp only [A322597]

end A322597

/-! ## A322597.P13804752393298577941

`∑[∑[a(n-1)+8]]` with `a(0)=1, a(1)=5, a(2)=4`
-/

namespace A322597.P13804752393298577941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 4] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322597.P13804752393298577941

namespace A322597

/-- `∑[∑[a(n-1)+8]]` -/
def P13804752393298577941.Spec : Prop :=
  ∀ n, (P13804752393298577941.a n : ℤ) = A322597 n

end A322597

/-! ## A322597.P6153932919081218087

`C(2*n, 3)+6*n+1`
-/

namespace A322597.P6153932919081218087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3 + (6 * n + 1)

end

end A322597.P6153932919081218087

namespace A322597

/-- `C(2*n, 3)+6*n+1` -/
def P6153932919081218087.Spec : Prop :=
  ∀ n, (P6153932919081218087.a n : ℤ) = A322597 n

end A322597

/-! ## A322597.P14245548272938706744

`A321124(n)+2*n`
-/

namespace A322597.P14245548272938706744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321124 n + (2 * n : ℤ)

end

end A322597.P14245548272938706744

namespace A322597

/-- `A321124(n)+2*n` -/
def P14245548272938706744.Spec : Prop :=
  ∀ n, P14245548272938706744.a n = A322597 n

end A322597

/-! ## A322597.P12054518078556028902

`A161712(n)+4*n`
-/

namespace A322597.P12054518078556028902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161712 n + (4 * n : ℤ)

end

end A322597.P12054518078556028902

namespace A322597

/-- `A161712(n)+4*n` -/
def P12054518078556028902.Spec : Prop :=
  ∀ n, P12054518078556028902.a n = A322597 n

end A322597

/-! ## A322597.P14816969395195044481

`A161707(n)+A028552(n)`
-/

namespace A322597.P14816969395195044481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161707 n + A028552 n

end

end A322597.P14816969395195044481

namespace A322597

/-- `A161707(n)+A028552(n)` -/
def P14816969395195044481.Spec : Prop :=
  ∀ n, P14816969395195044481.a n = A322597 n

end A322597

/-! ## A322597.P6667642359981440198

`A161703(n)+A046092(n)`
-/

namespace A322597.P6667642359981440198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161703 n + A046092 n

end

end A322597.P6667642359981440198

namespace A322597

/-- `A161703(n)+A046092(n)` -/
def P6667642359981440198.Spec : Prop :=
  ∀ n, P6667642359981440198.a n = A322597 n

end A322597

/-! ## A322597.P10047108629084769117

`A275876(n)+A161532(n)`
-/

namespace A322597.P10047108629084769117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275876 n + A161532 n

end

end A322597.P10047108629084769117

namespace A322597

/-- `A275876(n)+A161532(n)` -/
def P10047108629084769117.Spec : Prop :=
  ∀ n, P10047108629084769117.a n = A322597 n

end A322597

/-! ## A322597.P10674002831524163406

`A051662(n)-A180223(n)`
-/

namespace A322597.P10674002831524163406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051662 n - A180223 n

end

end A322597.P10674002831524163406

namespace A322597

/-- `A051662(n)-A180223(n)` -/
def P10674002831524163406.Spec : Prop :=
  ∀ n, P10674002831524163406.a n = A322597 n

end A322597

/-! ## A322597.P7661336231482339225

`A273316(n)-A139267(n)`
-/

namespace A322597.P7661336231482339225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273316 n - A139267 n

end

end A322597.P7661336231482339225

namespace A322597

/-- `A273316(n)-A139267(n)` -/
def P7661336231482339225.Spec : Prop :=
  ∀ n, P7661336231482339225.a n = A322597 n

end A322597

/-! ## A322597.P1402327012983599248

`A100178(n+1)-A051624(n)`
-/

namespace A322597.P1402327012983599248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100178 (n + 1) - A051624 n

end

end A322597.P1402327012983599248

namespace A322597

/-- `A100178(n+1)-A051624(n)` -/
def P1402327012983599248.Spec : Prop :=
  ∀ n, P1402327012983599248.a n = A322597 n

end A322597

/-! ## A322597.P12413538459492986120

`A177342(n+1)-A135706(n)`
-/

namespace A322597.P12413538459492986120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177342 (n + 1) - A135706 n

end

end A322597.P12413538459492986120

namespace A322597

/-- `A177342(n+1)-A135706(n)` -/
def P12413538459492986120.Spec : Prop :=
  ∀ n, P12413538459492986120.a n = A322597 n

end A322597

/-! ## A322597.P10291880300747865934

`A056220(n+1)+A161712(n)-A058331(n)`
-/

namespace A322597.P10291880300747865934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (n + 1) + (A161712 n - A058331 n)

end

end A322597.P10291880300747865934

namespace A322597

/-- `A056220(n+1)+A161712(n)-A058331(n)` -/
def P10291880300747865934.Spec : Prop :=
  ∀ n, P10291880300747865934.a n = A322597 n

end A322597

/-! ## A322597.P9847702802783008793

`Δ[A291919(n+1)]-n²`
-/

namespace A322597.P9847702802783008793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n ^ 2 : ℤ)

end

end A322597.P9847702802783008793

namespace A322597

/-- `Δ[A291919(n+1)]-n²` -/
def P9847702802783008793.Spec : Prop :=
  ∀ n, P9847702802783008793.a n = A322597 n

end A322597

/-! ## A322597.P1776803166035505289

`A002492(n+1)-(A222465(n)+A002943(n))`
-/

namespace A322597.P1776803166035505289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 (n + 1) - (A222465 n + A002943 n)

end

end A322597.P1776803166035505289

namespace A322597

/-- `A002492(n+1)-(A222465(n)+A002943(n))` -/
def P1776803166035505289.Spec : Prop :=
  ∀ n, P1776803166035505289.a n = A322597 n

end A322597

/-! ## A322597.P12925700301758076420

`A058331(n+1)+A161712(n)-A093328(n)`
-/

namespace A322597.P12925700301758076420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (n + 1) + (A161712 n - A093328 n)

end

end A322597.P12925700301758076420

namespace A322597

/-- `A058331(n+1)+A161712(n)-A093328(n)` -/
def P12925700301758076420.Spec : Prop :=
  ∀ n, P12925700301758076420.a n = A322597 n

end A322597

/-! ## A322597.P8943538733691639165

`A002492(n+1)-(A054552(n+1)+A054552(n))`
-/

namespace A322597.P8943538733691639165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 (n + 1) - (A054552 (n + 1) + A054552 n)

end

end A322597.P8943538733691639165

namespace A322597

/-- `A002492(n+1)-(A054552(n+1)+A054552(n))` -/
def P8943538733691639165.Spec : Prop :=
  ∀ n, P8943538733691639165.a n = A322597 n

end A322597

/-! ## A322597.P15383234463560913321

`A008778(2*n)-A000384(2*n)`
-/

namespace A322597.P15383234463560913321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (2 * n) - A000384 (2 * n)

end

end A322597.P15383234463560913321

namespace A322597

/-- `A008778(2*n)-A000384(2*n)` -/
def P15383234463560913321.Spec : Prop :=
  ∀ n, P15383234463560913321.a n = A322597 n

end A322597

/-! ## A322597.P17547339579147606775

`record[and(A201347(n+1)+3, A033999(n))]`
-/

namespace A322597.P17547339579147606775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A201347 (n + 1) + 3) (A033999 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322597.P17547339579147606775

namespace A322597

/-- `record[and(A201347(n+1)+3, A033999(n))]` -/
def P17547339579147606775.Spec : Prop :=
  ∀ n, P17547339579147606775.a n = A322597 n

end A322597

/-!
# A322598: a(n) is the number of unlabeled rank-3 graded lattices with 3 coatoms and n atoms.

The programs for A322598, the canonical program `A322598.P17260755288548722609` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322598 has offset 1).

The definition of A322598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322598.P17260755288548722609

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=13, a(4)=20, a(5)=29`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A322598

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P17260755288548722609.Spec : Prop :=
  ∀ n, P17260755288548722609.a n = A322598 (n + 1)

theorem P17260755288548722609.correct : P17260755288548722609.Spec := by
  intro n
  simp only [A322598, Nat.add_sub_cancel]

end A322598

/-! ## A322598.P9386872348365717788

`∑[∑[(n+1)%2+n%3]]`
-/

namespace A322598.P9386872348365717788
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + n % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322598.P9386872348365717788

namespace A322598

/-- `∑[∑[(n+1)%2+n%3]]` -/
def P9386872348365717788.Spec : Prop :=
  ∀ n, (P9386872348365717788.a n : ℤ) = A322598 (n + 1)

end A322598

/-! ## A322598.P2480774085236997901

`∑[∑[a(n-3)+(-1)^n]]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A322598.P2480774085236997901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f2 =>
  f2 (n - 3) + (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322598.P2480774085236997901

namespace A322598

/-- `∑[∑[a(n-3)+(-1)^n]]` -/
def P2480774085236997901.Spec : Prop :=
  ∀ n, P2480774085236997901.a n = A322598 (n + 1)

end A322598

/-! ## A322598.P375279104389334925

`∑[A004526(n)+1+∑[n%3]]`
-/

namespace A322598.P375279104389334925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + 1 + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322598.P375279104389334925

namespace A322598

/-- `∑[A004526(n)+1+∑[n%3]]` -/
def P375279104389334925.Spec : Prop :=
  ∀ n, P375279104389334925.a n = A322598 (n + 1)

end A322598

/-! ## A322598.P4975729129077210680

`A077043(n+1)+∑[char[3*n-1]]`
-/

namespace A322598.P4975729129077210680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A322598.P4975729129077210680

namespace A322598

/-- `A077043(n+1)+∑[char[3*n-1]]` -/
def P4975729129077210680.Spec : Prop :=
  ∀ n, P4975729129077210680.a n = A322598 (n + 1)

end A322598

/-! ## A322598.P10284369368463888204

`∑[A130481(n)+A008619(n)]`
-/

namespace A322598.P10284369368463888204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 n + A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322598.P10284369368463888204

namespace A322598

/-- `∑[A130481(n)+A008619(n)]` -/
def P10284369368463888204.Spec : Prop :=
  ∀ n, P10284369368463888204.a n = A322598 (n + 1)

end A322598

/-! ## A322598.P7959990526148809517

`A238377(n)+A010761(n+1)`
-/

namespace A322598.P7959990526148809517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238377 n + A010761 (n + 1)

end

end A322598.P7959990526148809517

namespace A322598

/-- `A238377(n)+A010761(n+1)` -/
def P7959990526148809517.Spec : Prop :=
  ∀ n, P7959990526148809517.a n = A322598 (n + 1)

end A322598

/-! ## A322598.P817904603260249657

`A242477(n)+A106252(n+1)`
-/

namespace A322598.P817904603260249657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242477 n + A106252 (n + 1)

end

end A322598.P817904603260249657

namespace A322598

/-- `A242477(n)+A106252(n+1)` -/
def P817904603260249657.Spec : Prop :=
  ∀ n, P817904603260249657.a n = A322598 (n + 1)

end A322598

/-! ## A322598.P9599494571459624631

`A386851(n+1)+A060022(n)`
-/

namespace A322598.P9599494571459624631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386851 (n + 1) + A060022 n

end

end A322598.P9599494571459624631

namespace A322598

/-- `A386851(n+1)+A060022(n)` -/
def P9599494571459624631.Spec : Prop :=
  ∀ n, P9599494571459624631.a n = A322598 (n + 1)

end A322598

/-! ## A322598.P5714128845139608248

`A184005(n+1)-A004396(n)`
-/

namespace A322598.P5714128845139608248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184005 (n + 1) - A004396 n

end

end A322598.P5714128845139608248

namespace A322598

/-- `A184005(n+1)-A004396(n)` -/
def P5714128845139608248.Spec : Prop :=
  ∀ n, P5714128845139608248.a n = A322598 (n + 1)

end A322598

/-! ## A322598.P9348976099728586896

`∑[A004526(n)+A130481(n)+1]`
-/

namespace A322598.P9348976099728586896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A130481 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322598.P9348976099728586896

namespace A322598

/-- `∑[A004526(n)+A130481(n)+1]` -/
def P9348976099728586896.Spec : Prop :=
  ∀ n, P9348976099728586896.a n = A322598 (n + 1)

end A322598

/-! ## A322598.P6232081110829769864

`A006578(n+1)-A008615(n+1)`
-/

namespace A322598.P6232081110829769864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 (n + 1) - A008615 (n + 1)

end

end A322598.P6232081110829769864

namespace A322598

/-- `A006578(n+1)-A008615(n+1)` -/
def P6232081110829769864.Spec : Prop :=
  ∀ n, P6232081110829769864.a n = A322598 (n + 1)

end A322598

/-! ## A322598.P3917795843697888281

`∑[A047280(n+1)-A047261(n+1)]`
-/

namespace A322598.P3917795843697888281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047280 (n + 1) - A047261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322598.P3917795843697888281

namespace A322598

/-- `∑[A047280(n+1)-A047261(n+1)]` -/
def P3917795843697888281.Spec : Prop :=
  ∀ n, P3917795843697888281.a n = A322598 (n + 1)

end A322598

/-! ## A322598.P3549244027352196333

`A008620(n+1)+A077043(n+1)-1`
-/

namespace A322598.P3549244027352196333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 1) + (A077043 (n + 1) - 1)

end

end A322598.P3549244027352196333

namespace A322598

/-- `A008620(n+1)+A077043(n+1)-1` -/
def P3549244027352196333.Spec : Prop :=
  ∀ n, P3549244027352196333.a n = A322598 (n + 1)

end A322598

/-! ## A322598.P1381650680607602188

`A002264(n+1)+A084684(n+1)-1`
-/

namespace A322598.P1381650680607602188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1) + (A084684 (n + 1) - 1)

end

end A322598.P1381650680607602188

namespace A322598

/-- `A002264(n+1)+A084684(n+1)-1` -/
def P1381650680607602188.Spec : Prop :=
  ∀ n, P1381650680607602188.a n = A322598 (n + 1)

end A322598

/-! ## A322598.P15189373279013988722

`A008620(n+1)+A084684(n+1)-2`
-/

namespace A322598.P15189373279013988722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 1) + (A084684 (n + 1) - 2)

end

end A322598.P15189373279013988722

namespace A322598

/-- `A008620(n+1)+A084684(n+1)-2` -/
def P15189373279013988722.Spec : Prop :=
  ∀ n, P15189373279013988722.a n = A322598 (n + 1)

end A322598

/-! ## A322598.P14508761429854793107

`n²+n+A004773(n+1)-A002620(n+1)`
-/

namespace A322598.P14508761429854793107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) + (A004773 (n + 1) - A002620 (n + 1))

end

end A322598.P14508761429854793107

namespace A322598

/-- `n²+n+A004773(n+1)-A002620(n+1)` -/
def P14508761429854793107.Spec : Prop :=
  ∀ n, P14508761429854793107.a n = A322598 (n + 1)

end A322598

/-! ## A322598.P9377928011807932344

`∑[A130481(n)+A001399(n)]-A181120(n)`
-/

namespace A322598.P9377928011807932344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 n + A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A181120 n

end

end A322598.P9377928011807932344

namespace A322598

/-- `∑[A130481(n)+A001399(n)]-A181120(n)` -/
def P9377928011807932344.Spec : Prop :=
  ∀ n, P9377928011807932344.a n = A322598 (n + 1)

end A322598

/-!
# A322599: a(n) is the number of unlabeled rank-3 graded lattices with 4 coatoms and n atoms.

The programs for A322599, the canonical program `A322599.P15073413941997125018` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322599 has offset 1).

The definition of A322599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322599.P15073413941997125018

`a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` with `a(0)=1, a(1)=4, a(2)=13, a(3)=34, a(4)=68, a(5)=121, a(6)=197, a(7)=299, a(8)=432, a(9)=600`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A322599

/-- `a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` -/
def P15073413941997125018.Spec : Prop :=
  ∀ n, P15073413941997125018.a n = A322599 (n + 1)

theorem P15073413941997125018.correct : P15073413941997125018.Spec := by
  intro n
  simp only [A322599, Nat.add_sub_cancel]

end A322599

/-! ## A322599.P16192820840336489996

`A300260(∑[n+3]+7)`
-/

namespace A322599.P16192820840336489996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300260 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A322599.P16192820840336489996

namespace A322599

/-- `A300260(∑[n+3]+7)` -/
def P16192820840336489996.Spec : Prop :=
  ∀ n, P16192820840336489996.a n = A322599 (n + 1)

end A322599

/-! ## A322599.P10552726346975851451

`A300260(A055999(n)+10)+char[20]`
-/

namespace A322599.P10552726346975851451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300260 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A322599.P10552726346975851451

namespace A322599

/-- `A300260(A055999(n)+10)+char[20]` -/
def P10552726346975851451.Spec : Prop :=
  ∀ n, P10552726346975851451.a n = A322599 (n + 1)

end A322599

/-! ## A322599.P16956821562769024202

`A300260(A055998(n+2))%(n+2)!`
-/

namespace A322599.P16956821562769024202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300260 (A055998 (n + 2)).toNat) (Nat.factorial (n + 2) : ℤ)

end

end A322599.P16956821562769024202

namespace A322599

/-- `A300260(A055998(n+2))%(n+2)!` -/
def P16956821562769024202.Spec : Prop :=
  ∀ n, P16956821562769024202.a n = A322599 (n + 1)

end A322599

/-! ## A322599.P12421783926268317158

`A007318(C(2, n))*A300260(A055999(n)+10)`
-/

namespace A322599.P12421783926268317158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A300260 (A055999 n + 10).toNat

end

end A322599.P12421783926268317158

namespace A322599

/-- `A007318(C(2, n))*A300260(A055999(n)+10)` -/
def P12421783926268317158.Spec : Prop :=
  ∀ n, P12421783926268317158.a n = A322599 (n + 1)

end A322599

