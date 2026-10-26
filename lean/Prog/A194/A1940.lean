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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A194000: Triangular array: the self-fission of (p(n,x)), where sum{F(k+1)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers).

The programs for A194000, there is no canonical definition to state claims against.
-/

/-! ## A194000.P6414795798084624630

`A202453(A245300(n)+A108872(n+1))`
-/

namespace A194000.P6414795798084624630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202453 (A245300 n + A108872 (n + 1)).toNat

end

end A194000.P6414795798084624630

/-! ## A194000.P8772519149196749585

`A194001(∑[2*n]%comp[∑[n]])`
-/

namespace A194000.P8772519149196749585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194001 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A194000.P8772519149196749585

/-! ## A194000.P16338695287066549079

`A194001(∑[char[∑[n]]]²-n-1)`
-/

namespace A194000.P16338695287066549079
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194001 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A194000.P16338695287066549079

/-! ## A194000.P14558652064560349989

`or(char[3], A194001(A061579(n)))`
-/

namespace A194000.P14558652064560349989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A194001 (A061579 n).toNat)

end

end A194000.P14558652064560349989

/-! ## A194000.P16428702259623826852

`A194001(A061579(n))^A178334(n)`
-/

namespace A194000.P16428702259623826852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194001 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A194000.P16428702259623826852

/-! ## A194000.P3794152414014184882

`gcd(A000038(n), A194001(A061579(n)))`
-/

namespace A194000.P3794152414014184882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A194001 (A061579 n).toNat)

end

end A194000.P3794152414014184882

/-! ## A194000.P15872655874038114529

`lcm(A033999(n), A194001(A061579(n)))`
-/

namespace A194000.P15872655874038114529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A194001 (A061579 n).toNat)

end

end A194000.P15872655874038114529

/-! ## A194000.P1490764081423215881

`A194001(A061579(n))+A000007(n+1)`
-/

namespace A194000.P1490764081423215881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194001 (A061579 n).toNat + A000007 (n + 1)

end

end A194000.P1490764081423215881

/-! ## A194000.P8839324349915877840

`A194001(A061579(n))%A000032(n+3)`
-/

namespace A194000.P8839324349915877840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194001 (A061579 n).toNat) (A000032 (n + 3))

end

end A194000.P8839324349915877840

/-!
# A194001: Mirror of the triangle A194000.

The programs for A194001, there is no canonical definition to state claims against.
-/

/-! ## A194001.P12063706177266409810

`A194000(∑[2*n]%comp[∑[n]])`
-/

namespace A194001.P12063706177266409810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194000 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A194001.P12063706177266409810

/-! ## A194001.P12587001151500022

`A194000(∑[char[∑[n]]]²-(n+1))`
-/

namespace A194001.P12587001151500022
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194000 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A194001.P12587001151500022

/-! ## A194001.P317246259990691160

`or(char[1], A194000(A061579(n)))`
-/

namespace A194001.P317246259990691160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A194000 (A061579 n).toNat)

end

end A194001.P317246259990691160

/-! ## A194001.P10474001894828175062

`A194000(A061579(n))^A178334(n)`
-/

namespace A194001.P10474001894828175062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194000 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A194001.P10474001894828175062

/-! ## A194001.P1521547564464832575

`A194000(A061579(n))%A017006(n)`
-/

namespace A194001.P1521547564464832575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194000 (A061579 n).toNat) (A017006 n)

end

end A194001.P1521547564464832575

/-! ## A194001.P4000474767217449604

`lcm(A033999(n), A194000(A061579(n)))`
-/

namespace A194001.P4000474767217449604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A194000 (A061579 n).toNat)

end

end A194001.P4000474767217449604

/-! ## A194001.P17732832385256659531

`A194000(A061579(n))+A008683(8*(n+1))`
-/

namespace A194001.P17732832385256659531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194000 (A061579 n).toNat + A008683 (8 * (n + 1))

end

end A194001.P17732832385256659531

/-! ## A194001.P14026192335881117167

`A194000(A061579(n))^A014963(4*n+2)`
-/

namespace A194001.P14026192335881117167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194000 (A061579 n).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A194001.P14026192335881117167

/-! ## A194001.P6273054668689439158

`A000040(n+2)%2*A194000(A061579(n))`
-/

namespace A194001.P6273054668689439158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A194000 (A061579 n).toNat

end

end A194001.P6273054668689439158

/-!
# A194002: Numbers k that are the start of a sequence of 7 maximally-squarefree numbers.

The programs for A194002, the canonical program `A194002.P11828501953942630914` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194002 has offset 1).

The definition of A194002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194002.P11828501953942630914

`∩[A004273(A007675(n+1)), A124569(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A194002

/-- `∩[A004273(A007675(n+1)), A124569(n+1)]` -/
def P11828501953942630914.Spec : Prop :=
  ∀ n, (P11828501953942630914.a n : ℤ) = A194002 (n + 1)

theorem P11828501953942630914.correct : P11828501953942630914.Spec := by
  intro n
  simp only [A194002, Nat.add_sub_cancel]

end A194002

/-! ## A194002.P18069070391379634538

`∩[A124569(n+1), A004273(A228649(n+1)-1)]`
-/

namespace A194002.P18069070391379634538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A228649 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194002.P18069070391379634538

namespace A194002

/-- `∩[A124569(n+1), A004273(A228649(n+1)-1)]` -/
def P18069070391379634538.Spec : Prop :=
  ∀ n, (P18069070391379634538.a n : ℤ) = A194002 (n + 1)

end A194002

/-!
# A194003: Number of prime factors of n^8 + 1, counted with multiplicity.

The programs for A194003, the canonical program `A194003.P749613088496176937` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194003 has offset 0).

The definition of A194003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194003.P749613088496176937

`A193929(n²)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A194003

/-- `A193929(n²)` -/
def P749613088496176937.Spec : Prop :=
  ∀ n, P749613088496176937.a n = A194003 n

theorem P749613088496176937.correct : P749613088496176937.Spec := by
  intro n
  simp only [A194003]

end A194003

/-! ## A194003.P5575489486021002501

`dr(A193929(n^2))`
-/

namespace A194003.P5575489486021002501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A193929 (n ^ 2))

end

end A194003.P5575489486021002501

namespace A194003

/-- `dr(A193929(n^2))` -/
def P5575489486021002501.Spec : Prop :=
  ∀ n, (P5575489486021002501.a n : ℤ) = A194003 n

end A194003

/-! ## A194003.P12528388392831313431

`A193929(n*n)%7`
-/

namespace A194003.P12528388392831313431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193929 (n * n)) 7

end

end A194003.P12528388392831313431

namespace A194003

/-- `A193929(n*n)%7` -/
def P12528388392831313431.Spec : Prop :=
  ∀ n, P12528388392831313431.a n = A194003 n

end A194003

/-! ## A194003.P8376781587402634231

`A007456(A193562(n²))`
-/

namespace A194003.P8376781587402634231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (A193562 (n ^ 2)).toNat

end

end A194003.P8376781587402634231

namespace A194003

/-- `A007456(A193562(n²))` -/
def P8376781587402634231.Spec : Prop :=
  ∀ n, P8376781587402634231.a n = A194003 n

end A194003

/-! ## A194003.P17188169629143246978

`and(7, A193929(A000290(n)))`
-/

namespace A194003.P17188169629143246978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A193929 (A000290 n).toNat)

end

end A194003.P17188169629143246978

namespace A194003

/-- `and(7, A193929(A000290(n)))` -/
def P17188169629143246978.Spec : Prop :=
  ∀ n, P17188169629143246978.a n = A194003 n

end A194003

/-! ## A194003.P11283857989035344385

`A054977(n)*A193929(n^2)`
-/

namespace A194003.P11283857989035344385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A193929 (n ^ 2)

end

end A194003.P11283857989035344385

namespace A194003

/-- `A054977(n)*A193929(n^2)` -/
def P11283857989035344385.Spec : Prop :=
  ∀ n, P11283857989035344385.a n = A194003 n

end A194003

/-! ## A194003.P12920482645228605655

`cos(A000007(n))*A193929(n^2)`
-/

namespace A194003.P12920482645228605655
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A000007 n : ℝ) * (A193929 (n ^ 2) : ℝ)

end

end A194003.P12920482645228605655

namespace A194003

/-- `cos(A000007(n))*A193929(n^2)` -/
def P12920482645228605655.Spec : Prop :=
  ∀ n, P12920482645228605655.a n = (A194003 n : ℝ)

end A194003

/-! ## A194003.P14145168446699356222

`A340507(∑[n])+A193929(n*n)`
-/

namespace A194003.P14145168446699356222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 (∑ j ∈ Finset.range (n + 1), f1 j) + A193929 (n * n)

end

end A194003.P14145168446699356222

namespace A194003

/-- `A340507(∑[n])+A193929(n*n)` -/
def P14145168446699356222.Spec : Prop :=
  ∀ n, P14145168446699356222.a n = A194003 n

end A194003

/-! ## A194003.P318086938962725034

`A193929(n*n)+A000007(n+1)`
-/

namespace A194003.P318086938962725034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (n * n) + A000007 (n + 1)

end

end A194003.P318086938962725034

namespace A194003

/-- `A193929(n*n)+A000007(n+1)` -/
def P318086938962725034.Spec : Prop :=
  ∀ n, P318086938962725034.a n = A194003 n

theorem P318086938962725034.correct : P318086938962725034.Spec := by
  intro n
  simp only [A194003, Nat.add_sub_cancel, A194003.P318086938962725034.a, A194003.P749613088496176937.a, A000007, A000007.P6599383543502402472.a, A193929, A193929.P1130408973914528788.a, A001221, A001221.P10258181745752134128.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194003

/-! ## A194003.P15879354053429221781

`A007318(C(2, n))*A193929(n*n)`
-/

namespace A194003.P15879354053429221781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A193929 (n * n)

end

end A194003.P15879354053429221781

namespace A194003

/-- `A007318(C(2, n))*A193929(n*n)` -/
def P15879354053429221781.Spec : Prop :=
  ∀ n, P15879354053429221781.a n = A194003 n

end A194003

/-! ## A194003.P2853581090561219322

`A193929(n^2)^A014963(∑[n+1])`
-/

namespace A194003.P2853581090561219322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193929 (n ^ 2) : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A194003.P2853581090561219322

namespace A194003

/-- `A193929(n^2)^A014963(∑[n+1])` -/
def P2853581090561219322.Spec : Prop :=
  ∀ n, P2853581090561219322.a n = (A194003 n : ℚ)

end A194003

/-! ## A194003.P9899427461375633238

`A193929(n^2)/gcd(2, A000040(n+1))`
-/

namespace A194003.P9899427461375633238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193929 (n ^ 2) : ℚ) / (Int.gcd 2 (A000040 (n + 1)) : ℚ)

end

end A194003.P9899427461375633238

namespace A194003

/-- `A193929(n^2)/gcd(2, A000040(n+1))` -/
def P9899427461375633238.Spec : Prop :=
  ∀ n, P9899427461375633238.a n = (A194003 n : ℚ)

end A194003

/-! ## A194003.P14637403516887944088

`A000041(C(2, n+2))*A193929(n*n)`
-/

namespace A194003.P14637403516887944088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A193929 (n * n)

end

end A194003.P14637403516887944088

namespace A194003

/-- `A000041(C(2, n+2))*A193929(n*n)` -/
def P14637403516887944088.Spec : Prop :=
  ∀ n, P14637403516887944088.a n = A194003 n

end A194003

/-! ## A194003.P17227491351956093587

`A193929(n*n)+A008683(45*(n+1))`
-/

namespace A194003.P17227491351956093587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (n * n) + A008683 (45 * (n + 1))

end

end A194003.P17227491351956093587

namespace A194003

/-- `A193929(n*n)+A008683(45*(n+1))` -/
def P17227491351956093587.Spec : Prop :=
  ∀ n, P17227491351956093587.a n = A194003 n

end A194003

/-! ## A194003.P4834609580048488870

`A000041(val(n+1, 40))*A193929(n*n)`
-/

namespace A194003.P4834609580048488870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (n + 1) 40) * A193929 (n * n)

end

end A194003.P4834609580048488870

namespace A194003

/-- `A000041(val(n+1, 40))*A193929(n*n)` -/
def P4834609580048488870.Spec : Prop :=
  ∀ n, P4834609580048488870.a n = A194003 n

end A194003

/-! ## A194003.P8579572726362596164

`A000045(ceil(2/(n+1)))*A193929(n^2)`
-/

namespace A194003.P8579572726362596164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈2 / (n + 1 : ℚ)⌉.toNat * A193929 (n ^ 2)

end

end A194003.P8579572726362596164

namespace A194003

/-- `A000045(ceil(2/(n+1)))*A193929(n^2)` -/
def P8579572726362596164.Spec : Prop :=
  ∀ n, P8579572726362596164.a n = A194003 n

end A194003

/-! ## A194003.P10196315267952636012

`C(A000010(n+1), n)!*A193929(n^2)`
-/

namespace A194003.P10196315267952636012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose (A000010 (n + 1)).toNat n) : ℤ) * A193929 (n ^ 2)

end

end A194003.P10196315267952636012

namespace A194003

/-- `C(A000010(n+1), n)!*A193929(n^2)` -/
def P10196315267952636012.Spec : Prop :=
  ∀ n, P10196315267952636012.a n = A194003 n

end A194003

/-! ## A194003.P13450348455186638021

`A193929(n*n)+A010052(A000040(n+1))`
-/

namespace A194003.P13450348455186638021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (n * n) + A010052 (A000040 (n + 1)).toNat

end

end A194003.P13450348455186638021

namespace A194003

/-- `A193929(n*n)+A010052(A000040(n+1))` -/
def P13450348455186638021.Spec : Prop :=
  ∀ n, P13450348455186638021.a n = A194003 n

end A194003

/-! ## A194003.P9934241172266045726

`A193929(n^2)+A001222(C(A000010(n+1), n)!)`
-/

namespace A194003.P9934241172266045726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (n ^ 2) + A001222 (Nat.factorial (Nat.choose (A000010 (n + 1)).toNat n))

end

end A194003.P9934241172266045726

namespace A194003

/-- `A193929(n^2)+A001222(C(A000010(n+1), n)!)` -/
def P9934241172266045726.Spec : Prop :=
  ∀ n, P9934241172266045726.a n = A194003 n

end A194003

/-!
# A194004: E.g.f.: A(x) = -log(3-exp(x)-exp(x^2)).

The programs for A194004, there is no canonical definition to state claims against.
-/

/-! ## A194004.P863314591128699770

`A061579(A224720(n+1))%(n+1)!`
-/

namespace A194004.P863314591128699770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061579 (A224720 (n + 1)).toNat) (Nat.factorial (n + 1) : ℤ)

end

end A194004.P863314591128699770

/-! ## A194004.P4772840744376461312

`A133620(A299128(n+1)+A001246(n))`
-/

namespace A194004.P4772840744376461312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133620 (A299128 (n + 1) + A001246 n).toNat

end

end A194004.P4772840744376461312

/-!
# A194005: Triangle of the coefficients of an (n+1)-th order differential equation associated with A103631.

The programs for A194005, the canonical program `A194005.P8766507412501436894` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194005 has offset 0).

The definition of A194005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194005.P8766507412501436894

`C(floor((2*row(n)+1-col(n))/2), row(n)-col(n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194005

/-- `C(floor((2*row(n)+1-col(n))/2), row(n)-col(n))` -/
def P8766507412501436894.Spec : Prop :=
  ∀ n, (P8766507412501436894.a n : ℤ) = A194005 n

theorem P8766507412501436894.correct : P8766507412501436894.Spec := by
  intro n
  simp only [A194005]

end A194005

/-! ## A194005.P16648925139485339236

`C(row(n)-floor(col(n)/2), ceil(col(n)/2))`
-/

namespace A194005.P16648925139485339236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.triRow n : ℤ) - ⌊(SequenceMachineLib.triCol n : ℚ) / 2⌋).toNat ⌈(SequenceMachineLib.triCol n : ℚ) / 2⌉.toNat

end

end A194005.P16648925139485339236

namespace A194005

/-- `C(row(n)-floor(col(n)/2), ceil(col(n)/2))` -/
def P16648925139485339236.Spec : Prop :=
  ∀ n, (P16648925139485339236.a n : ℤ) = A194005 n

end A194005

/-! ## A194005.P3537604460631805928

`C(row(n)-floor(col(n)/2), floor((col(n)+1)/2))`
-/

namespace A194005.P3537604460631805928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.triRow n : ℤ) - ⌊(SequenceMachineLib.triCol n : ℚ) / 2⌋).toNat ⌊(SequenceMachineLib.triCol n + 1 : ℚ) / 2⌋.toNat

end

end A194005.P3537604460631805928

namespace A194005

/-- `C(row(n)-floor(col(n)/2), floor((col(n)+1)/2))` -/
def P3537604460631805928.Spec : Prop :=
  ∀ n, (P3537604460631805928.a n : ℤ) = A194005 n

end A194005

/-! ## A194005.P3999146206490941343

`A103631(lt[1, A067138(n)])`
-/

namespace A194005.P3999146206490941343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194005.P3999146206490941343

namespace A194005

/-- `A103631(lt[1, A067138(n)])` -/
def P3999146206490941343.Spec : Prop :=
  ∀ n, P3999146206490941343.a n = A194005 n

end A194005

/-! ## A194005.P13816075778032203018

`A374441(n)+A065941(n)`
-/

namespace A194005.P13816075778032203018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374441 n + A065941 n

end

end A194005.P13816075778032203018

namespace A194005

/-- `A374441(n)+A065941(n)` -/
def P13816075778032203018.Spec : Prop :=
  ∀ n, P13816075778032203018.a n = A194005 n

end A194005

/-! ## A194005.P2797974935049822196

`abs(A108299(A014132(n+1)))`
-/

namespace A194005.P2797974935049822196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108299 (A014132 (n + 1)).toNat|

end

end A194005.P2797974935049822196

namespace A194005

/-- `abs(A108299(A014132(n+1)))` -/
def P2797974935049822196.Spec : Prop :=
  ∀ n, P2797974935049822196.a n = A194005 n

end A194005

/-! ## A194005.P11799635460163621990

`abs(A108299(A007401(n+1)+1))`
-/

namespace A194005.P11799635460163621990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108299 (A007401 (n + 1) + 1).toNat|

end

end A194005.P11799635460163621990

namespace A194005

/-- `abs(A108299(A007401(n+1)+1))` -/
def P11799635460163621990.Spec : Prop :=
  ∀ n, P11799635460163621990.a n = A194005 n

end A194005

/-! ## A194005.P3930138740436458125

`lcm(A020985(n), A108299(A014132(n+1)))`
-/

namespace A194005.P3930138740436458125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A108299 (A014132 (n + 1)).toNat)

end

end A194005.P3930138740436458125

namespace A194005

/-- `lcm(A020985(n), A108299(A014132(n+1)))` -/
def P3930138740436458125.Spec : Prop :=
  ∀ n, (P3930138740436458125.a n : ℤ) = A194005 n

end A194005

/-! ## A194005.P7683485633700282384

`A103631(A014132(n+1)+1)+A103631(n)`
-/

namespace A194005.P7683485633700282384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A014132 (n + 1) + 1).toNat + A103631 n

end

end A194005.P7683485633700282384

namespace A194005

/-- `A103631(A014132(n+1)+1)+A103631(n)` -/
def P7683485633700282384.Spec : Prop :=
  ∀ n, P7683485633700282384.a n = A194005 n

end A194005

/-! ## A194005.P12345121858566266450

`A103631(A007401(n+1)+2)+A103631(n)`
-/

namespace A194005.P12345121858566266450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A007401 (n + 1) + 2).toNat + A103631 n

end

end A194005.P12345121858566266450

namespace A194005

/-- `A103631(A007401(n+1)+2)+A103631(n)` -/
def P12345121858566266450.Spec : Prop :=
  ∀ n, P12345121858566266450.a n = A194005 n

end A194005

/-! ## A194005.P4038011247704572613

`abs(A108299(A007401(n+2)))`
-/

namespace A194005.P4038011247704572613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108299 (A007401 (n + 2)).toNat|

end

end A194005.P4038011247704572613

namespace A194005

/-- `abs(A108299(A007401(n+2)))` -/
def P4038011247704572613.Spec : Prop :=
  ∀ n, P4038011247704572613.a n = A194005 n

end A194005

/-! ## A194005.P2400431658405876473

`A103631(A080036(n+1))+A103631(n)`
-/

namespace A194005.P2400431658405876473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A080036 (n + 1)).toNat + A103631 n

end

end A194005.P2400431658405876473

namespace A194005

/-- `A103631(A080036(n+1))+A103631(n)` -/
def P2400431658405876473.Spec : Prop :=
  ∀ n, P2400431658405876473.a n = A194005 n

end A194005

/-! ## A194005.P16383905771412357298

`A030111(A038722(n+2))`
-/

namespace A194005.P16383905771412357298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (A038722 (n + 2)).toNat

end

end A194005.P16383905771412357298

namespace A194005

/-- `A030111(A038722(n+2))` -/
def P16383905771412357298.Spec : Prop :=
  ∀ n, P16383905771412357298.a n = A194005 n

end A194005

/-! ## A194005.P2595511491546607491

`A065941(comp[∑[n]])`
-/

namespace A194005.P2595511491546607491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A194005.P2595511491546607491

namespace A194005

/-- `A065941(comp[∑[n]])` -/
def P2595511491546607491.Spec : Prop :=
  ∀ n, P2595511491546607491.a n = A194005 n

end A194005

/-! ## A194005.P3977801342244837944

`A103631(A014132(A014132(n+2)))`
-/

namespace A194005.P3977801342244837944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A014132 (A014132 (n + 2)).toNat).toNat

end

end A194005.P3977801342244837944

namespace A194005

/-- `A103631(A014132(A014132(n+2)))` -/
def P3977801342244837944.Spec : Prop :=
  ∀ n, P3977801342244837944.a n = A194005 n

end A194005

/-! ## A194005.P1620876391926468358

`gcd(A053119(n), A053119(A080036(n)))`
-/

namespace A194005.P1620876391926468358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053119 n) (A053119 (A080036 n).toNat)

end

end A194005.P1620876391926468358

namespace A194005

/-- `gcd(A053119(n), A053119(A080036(n)))` -/
def P1620876391926468358.Spec : Prop :=
  ∀ n, (P1620876391926468358.a n : ℤ) = A194005 n

end A194005

/-! ## A194005.P10923913105352101782

`A103631(lt[1, A103438(n)])`
-/

namespace A194005.P10923913105352101782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194005.P10923913105352101782

namespace A194005

/-- `A103631(lt[1, A103438(n)])` -/
def P10923913105352101782.Spec : Prop :=
  ∀ n, P10923913105352101782.a n = A194005 n

end A194005

/-! ## A194005.P805971818420173758

`A103631(lt[A286158(n+1), A056860(n+1)])`
-/

namespace A194005.P805971818420173758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194005.P805971818420173758

namespace A194005

/-- `A103631(lt[A286158(n+1), A056860(n+1)])` -/
def P805971818420173758.Spec : Prop :=
  ∀ n, P805971818420173758.a n = A194005 n

end A194005

/-! ## A194005.P17653188345682414162

`A103631(lt[1, A135313(n)])`
-/

namespace A194005.P17653188345682414162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194005.P17653188345682414162

namespace A194005

/-- `A103631(lt[1, A135313(n)])` -/
def P17653188345682414162.Spec : Prop :=
  ∀ n, P17653188345682414162.a n = A194005 n

end A194005

/-! ## A194005.P4999158984070618836

`A103631(lt[6, A134060(n)])`
-/

namespace A194005.P4999158984070618836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194005.P4999158984070618836

namespace A194005

/-- `A103631(lt[6, A134060(n)])` -/
def P4999158984070618836.Spec : Prop :=
  ∀ n, P4999158984070618836.a n = A194005 n

end A194005

/-!
# A194006: E.g.f.: exp( exp(3*x) - 2*exp(2*x) + 2*exp(x) - 1 ).

The programs for A194006, there is no canonical definition to state claims against.
-/

/-! ## A194006.P11199628682919856124

`A120503(A349331(n)+A054861(n))`
-/

namespace A194006.P11199628682919856124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120503 (A349331 n + A054861 n).toNat

end

end A194006.P11199628682919856124

/-!
# A194007: Triangular array: the fission of (p(n,x)) by (q(n,x)), where p(n,x)=sum{F(k+1)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers) and q(n,x)=x*q(n-1,x)+n+1, with q(0,x)=1.

The programs for A194007, there is no canonical definition to state claims against.
-/

/-! ## A194007.P1170405171368269089

`A194008(∑[2*n]%comp[∑[n]])`
-/

namespace A194007.P1170405171368269089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194008 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A194007.P1170405171368269089

/-! ## A194007.P6421034936811678819

`A194008(∑[char[∑[n]]]²-n-1)`
-/

namespace A194007.P6421034936811678819
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194008 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A194007.P6421034936811678819

/-! ## A194007.P5889097599090872956

`and(-1, A194008(A061579(n)))`
-/

namespace A194007.P5889097599090872956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A194008 (A061579 n).toNat)

end

end A194007.P5889097599090872956

/-! ## A194007.P11523827715827286292

`A194008(A061579(n))^A178334(n)`
-/

namespace A194007.P11523827715827286292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194008 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A194007.P11523827715827286292

/-! ## A194007.P1164982214076495664

`A194008(A061579(n))%A017618(n)`
-/

namespace A194007.P1164982214076495664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194008 (A061579 n).toNat) (A017618 n)

end

end A194007.P1164982214076495664

/-! ## A194007.P6154034116305666723

`lcm(A020985(n), A194008(A061579(n)))`
-/

namespace A194007.P6154034116305666723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A194008 (A061579 n).toNat)

end

end A194007.P6154034116305666723

/-! ## A194007.P443013095384090947

`A033999(n)²*A194008(A061579(n))`
-/

namespace A194007.P443013095384090947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A194008 (A061579 n).toNat

end

end A194007.P443013095384090947

/-!
# A194008: Mirror of the triangle A194007.

The programs for A194008, there is no canonical definition to state claims against.
-/

/-! ## A194008.P5098549831808792110

`A194007(∑[2*n]%comp[∑[n]])`
-/

namespace A194008.P5098549831808792110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194007 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A194008.P5098549831808792110

/-! ## A194008.P1631470885859632685

`A194007(∑[char[∑[n]]]²-(n+1))`
-/

namespace A194008.P1631470885859632685
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194007 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A194008.P1631470885859632685

/-! ## A194008.P2089116022744529440

`and(-1, A194007(A061579(n)))`
-/

namespace A194008.P2089116022744529440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A194007 (A061579 n).toNat)

end

end A194008.P2089116022744529440

/-! ## A194008.P16165143328814182703

`gcd(A000038(n), A194007(A061579(n)))`
-/

namespace A194008.P16165143328814182703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A194007 (A061579 n).toNat)

end

end A194008.P16165143328814182703

/-! ## A194008.P17410836081820274839

`lcm(A020985(n), A194007(A061579(n)))`
-/

namespace A194008.P17410836081820274839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A194007 (A061579 n).toNat)

end

end A194008.P17410836081820274839

/-! ## A194008.P4302258562471587091

`A194007(A061579(n))+A000045(C(n, 64))`
-/

namespace A194008.P4302258562471587091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194007 (A061579 n).toNat + A000045 (Nat.choose n 64)

end

end A194008.P4302258562471587091

/-! ## A194008.P7151329528769069088

`A194007(A061579(n))%root(A000040(n+1), 1/4)`
-/

namespace A194008.P7151329528769069088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194007 (A061579 n).toNat) (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℝ) ^ (1 / ((1 : ℚ) / 4 : ℝ))))

end

end A194008.P7151329528769069088

/-! ## A194008.P8492808213715786346

`A194007(A061579(n))-A020639((n+2)*(n+1))+2`
-/

namespace A194008.P8492808213715786346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194007 (A061579 n).toNat - A020639 ((n + 2) * (n + 1)) + 2

end

end A194008.P8492808213715786346

/-! ## A194008.P10914765768218795809

`A194007(A061579(n))/A014963((2*(n+1))%(n+1)+1)`
-/

namespace A194008.P10914765768218795809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194007 (A061579 n).toNat : ℚ) / (A014963 (2 * (n + 1) % (n + 1) + 1) : ℚ)

end

end A194008.P10914765768218795809

/-!
# A194009: Triangular array: the fission of (p(n,x)) by (q(n,x)), where p(n,x)=x*p(n-1,x)+n+1 with p(0,x)=1, and q(n,x)=sum{F(k+1)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers).

The programs for A194009, there is no canonical definition to state claims against.
-/

/-! ## A194009.P11782273928324403746

`A194010(∑[2*n]%comp[∑[n]])`
-/

namespace A194009.P11782273928324403746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194010 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A194009.P11782273928324403746

/-! ## A194009.P2795153103838234646

`A194010(∑[char[∑[n]]]²-n-1)`
-/

namespace A194009.P2795153103838234646
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194010 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A194009.P2795153103838234646

/-! ## A194009.P3668913796311415033

`xor(1, xor(1, A194010(A061579(n))))`
-/

namespace A194009.P3668913796311415033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A194010 (A061579 n).toNat))

end

end A194009.P3668913796311415033

/-! ## A194009.P12081641805013219126

`A194010(A061579(n))%A006415(n)`
-/

namespace A194009.P12081641805013219126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194010 (A061579 n).toNat) (A006415 n)

end

end A194009.P12081641805013219126

/-! ## A194009.P8715709030031896197

`abs(A033999(n)*A194010(A061579(n)))`
-/

namespace A194009.P8715709030031896197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A194010 (A061579 n).toNat|

end

end A194009.P8715709030031896197

/-! ## A194009.P11532452127575030258

`A178334(n+1)-(1-A194010(A061579(n)))`
-/

namespace A194009.P11532452127575030258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 1) - (1 - A194010 (A061579 n).toNat)

end

end A194009.P11532452127575030258

/-! ## A194009.P14266951968196522828

`A000108(val(n+1, 10))*A194010(A061579(n))`
-/

namespace A194009.P14266951968196522828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.valuation (n + 1) 10) * A194010 (A061579 n).toNat

end

end A194009.P14266951968196522828

/-! ## A194009.P13607839386125883023

`A000203(gcd(n, n+1))*A194010(A061579(n))`
-/

namespace A194009.P13607839386125883023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A194010 (A061579 n).toNat

end

end A194009.P13607839386125883023

/-! ## A194009.P3329482835726929205

`abs((-1)^A007318(n)*A194010(A061579(n)))`
-/

namespace A194009.P3329482835726929205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(-1 : ℚ) ^ (A007318 n : ℤ) * (A194010 (A061579 n).toNat : ℚ)|

end

end A194009.P3329482835726929205

/-! ## A194009.P14564746529789348943

`A194010(A061579(n))/A000108(val(n²+1, 10))`
-/

namespace A194009.P14564746529789348943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194010 (A061579 n).toNat : ℚ) / (A000108 (SequenceMachineLib.valuation (n ^ 2 + 1) 10) : ℚ)

end

end A194009.P14564746529789348943

/-!
# A194010: Mirror of the triangle A194009.

The programs for A194010, there is no canonical definition to state claims against.
-/

/-! ## A194010.P1901121960186519426

`A194009(∑[2*n]%comp[∑[n]])`
-/

namespace A194010.P1901121960186519426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194009 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A194010.P1901121960186519426

/-! ## A194010.P3432753523548089757

`A194009(∑[char[∑[n]]]²-n-1)`
-/

namespace A194010.P3432753523548089757
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194009 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A194010.P3432753523548089757

/-! ## A194010.P14359519304459664189

`or(char[1], A194009(A061579(n)))`
-/

namespace A194010.P14359519304459664189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A194009 (A061579 n).toNat)

end

end A194010.P14359519304459664189

/-! ## A194010.P764745087820361240

`A194009(A061579(n))%A006415(n)`
-/

namespace A194010.P764745087820361240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194009 (A061579 n).toNat) (A006415 n)

end

end A194010.P764745087820361240

/-! ## A194010.P16839034540561845490

`or(A194009(A061579(n)), A304570(n+1))`
-/

namespace A194010.P16839034540561845490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A194009 (A061579 n).toNat) (A304570 (n + 1))

end

end A194010.P16839034540561845490

/-! ## A194010.P7241503164642938690

`A000041(C(2, n+2))*A194009(A061579(n))`
-/

namespace A194010.P7241503164642938690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A194009 (A061579 n).toNat

end

end A194010.P7241503164642938690

/-! ## A194010.P15621913246251994282

`A194009(A061579(n))^A000010(ceil(1/(n+1)))`
-/

namespace A194010.P15621913246251994282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194009 (A061579 n).toNat : ℚ) ^ (A000010 ⌈1 / (n + 1 : ℚ)⌉.toNat : ℤ)

end

end A194010.P15621913246251994282

/-!
# A194011: Natural interspersion of A002061; a rectangular array, by antidiagonals.

The programs for A194011, there is no canonical definition to state claims against.
-/

/-! ## A194011.P12212278413509683187

`A097286(A057027(n+1))`
-/

namespace A194011.P12212278413509683187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097286 (A057027 (n + 1)).toNat

end

end A194011.P12212278413509683187

/-! ## A194011.P11782334638922643322

`A002262(n)+A110660(A294317(n))+1`
-/

namespace A194011.P11782334638922643322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A110660 (A294317 n).toNat + 1)

end

end A194011.P11782334638922643322

/-! ## A194011.P5059597291243142511

`A110660(A294317(n))+A002260(n+1)`
-/

namespace A194011.P5059597291243142511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (A294317 n).toNat + A002260 (n + 1)

end

end A194011.P5059597291243142511

/-! ## A194011.P16338664863703227049

`A110660(A294317(n))+A057555(Δ[n²])`
-/

namespace A194011.P16338664863703227049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (A294317 n).toNat + A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A194011.P16338664863703227049

/-! ## A194011.P2031295175709576209

`A025668(n+1)+A110660(A294317(n))+1`
-/

namespace A194011.P2031295175709576209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1) + (A110660 (A294317 n).toNat + 1)

end

end A194011.P2031295175709576209

/-! ## A194011.P6614909988259057203

`A110660(A294317(n))+A000005(A059268(n))`
-/

namespace A194011.P6614909988259057203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (A294317 n).toNat + A000005 (A059268 n).toNat

end

end A194011.P6614909988259057203

/-! ## A194011.P14892151583376333232

`A110660(A294317(n))+A103406(n)/A007318(n)`
-/

namespace A194011.P14892151583376333232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 (A294317 n).toNat : ℚ) + (A103406 n : ℚ) / (A007318 n : ℚ)

end

end A194011.P14892151583376333232

/-!
# A194012: Inverse permutation of A194011; every positive integer occurs exactly once.

The programs for A194012, there is no canonical definition to state claims against.
-/

/-! ## A194012.P4982080736819588735

`C(A194105(n+1), A034501(3*n+4)!)`
-/

namespace A194012.P4982080736819588735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A194105 (n + 1)).toNat (Nat.factorial (A034501 (3 * n + 4)).toNat)

end

end A194012.P4982080736819588735

/-! ## A194012.P13763537384564376325

`A194089(A299321(n+1))*A194105(n+1)`
-/

namespace A194012.P13763537384564376325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194089 (A299321 (n + 1)).toNat * A194105 (n + 1)

end

end A194012.P13763537384564376325

/-! ## A194012.P5971741661147793366

`A000190(A174675(n)+9)*A194105(n+1)`
-/

namespace A194012.P5971741661147793366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (A174675 n + 9).toNat * A194105 (n + 1)

end

end A194012.P5971741661147793366

/-!
# A194013: Number of ways to arrange 6 points on an n X n X n triangular grid so that it balances at its center.

The programs for A194013, there is no canonical definition to state claims against.
-/

/-! ## A194013.P2549615288846363752

`A194016(A052905(n+3))`
-/

namespace A194013.P2549615288846363752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194016 (A052905 (n + 3)).toNat

end

end A194013.P2549615288846363752

/-! ## A194013.P12672674320699191728

`A194016(A000217(n+6)-5)`
-/

namespace A194013.P12672674320699191728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194016 (A000217 (n + 6) - 5).toNat

end

end A194013.P12672674320699191728

/-! ## A194013.P9784127606399136802

`A194016(A000124(n+6)-6)`
-/

namespace A194013.P9784127606399136802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194016 (A000124 (n + 6) - 6).toNat

end

end A194013.P9784127606399136802

/-! ## A194013.P16434171807962239912

`A194016(Δ[Δ[A006504(n+1)]])`
-/

namespace A194013.P16434171807962239912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194016 (f1 (n + 1) - f1 n).toNat

end

end A194013.P16434171807962239912

/-! ## A194013.P15823934215930865370

`A194016(A161680(n+6)+n+1)`
-/

namespace A194013.P15823934215930865370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194016 (A161680 (n + 6) + (n + 1 : ℤ)).toNat

end

end A194013.P15823934215930865370

/-!
# A194014: Number of ways to arrange 9 points on an n X n X n triangular grid so that it balances at its center.

The programs for A194014, there is no canonical definition to state claims against.
-/

/-! ## A194014.P14160987586249780803

`A194016(A155212(n+5))`
-/

namespace A194014.P14160987586249780803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194016 (A155212 (n + 5)).toNat

end

end A194014.P14160987586249780803

/-! ## A194014.P16374227365518585618

`A194016(eq[5, A264391(n)])`
-/

namespace A194014.P16374227365518585618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194014.P16374227365518585618

/-! ## A194014.P3913042702483730857

`A194016(eq[8, A193592(n)])`
-/

namespace A194014.P3913042702483730857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194014.P3913042702483730857

/-! ## A194014.P15229710732551030682

`A194016(A000124(n+9)-9)`
-/

namespace A194014.P15229710732551030682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194016 (A000124 (n + 9) - 9).toNat

end

end A194014.P15229710732551030682

/-! ## A194014.P3844136259001567357

`A194016(A000096(n+7)+n+2)`
-/

namespace A194014.P3844136259001567357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194016 (A000096 (n + 7) + (n + 2 : ℤ)).toNat

end

end A194014.P3844136259001567357

/-!
# A194015: Number of ways to arrange 12 points on an n X n X n triangular grid so that it balances at its center.

The programs for A194015, there is no canonical definition to state claims against.
-/

/-! ## A194015.P11010421978331208494

`A194016(A000124(n+12)-12)`
-/

namespace A194015.P11010421978331208494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194016 (A000124 (n + 12) - 12).toNat

end

end A194015.P11010421978331208494

/-! ## A194015.P3188767541574756267

`A194016(A055998(n+9)+n+4)`
-/

namespace A194015.P3188767541574756267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194016 (A055998 (n + 9) + (n + 4 : ℤ)).toNat

end

end A194015.P3188767541574756267

/-! ## A194015.P15731161007528082648

`A194016(A046691(n+9)+n+5)`
-/

namespace A194015.P15731161007528082648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194016 (A046691 (n + 9) + (n + 5 : ℤ)).toNat

end

end A194015.P15731161007528082648

/-! ## A194015.P9894183757459636976

`A194016(A052905(n+8)+n+6)`
-/

namespace A194015.P9894183757459636976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194016 (A052905 (n + 8) + (n + 6 : ℤ)).toNat

end

end A194015.P9894183757459636976

/-! ## A194015.P4014998769306811483

`A194016(A005843(n+6)+A000217(n+10))`
-/

namespace A194015.P4014998769306811483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194016 (A005843 (n + 6) + A000217 (n + 10)).toNat

end

end A194015.P4014998769306811483

/-!
# A194016: T(n,k) = number of ways to arrange k points on an n X n X n triangular grid so that it balances at its center.

The programs for A194016, there is no canonical definition to state claims against.
-/

/-! ## A194016.P14532840870291064504

`and(A278945(A136377(n)), A343874(n))`
-/

namespace A194016.P14532840870291064504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278945 (A136377 n).toNat) (A343874 n)

end

end A194016.P14532840870291064504

/-!
# A194017: E.g.f.: Sum_{n>=0} x^n*cosh(n*x)^n.

The programs for A194017, there is no canonical definition to state claims against.
-/

/-! ## A194017.P12831729893951957387

`A004396(lcm(A032150(n), A089127(n)))`
-/

namespace A194017.P12831729893951957387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.lcm (A032150 n) (A089127 n))

end

end A194017.P12831729893951957387

/-! ## A194017.P4338263550843690155

`A098370(A332374(n+5))+A028242(A051139(2*n))`
-/

namespace A194017.P4338263550843690155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098370 (A332374 (n + 5)).toNat + A028242 (A051139 (2 * n)).toNat

end

end A194017.P4338263550843690155

/-!
# A194018: E.g.f.: Sum_{n>=0} (1/n!) * Product_{k=1..n} sinh(k*x).

The programs for A194018, there is no canonical definition to state claims against.
-/

/-! ## A194018.P1257732980907429195

`A361475(2*n²)+1`
-/

namespace A194018.P1257732980907429195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361475 (2 * n ^ 2) + 1

end

end A194018.P1257732980907429195

/-! ## A194018.P18216434522303802729

`A326841(n!)+and(4, n)`
-/

namespace A194018.P18216434522303802729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326841 (Nat.factorial n) + (Nat.land 4 n : ℤ)

end

end A194018.P18216434522303802729

/-!
# A194019: E.g.f. = exp(-x*(x+4)/2)/(1-x)^3.

The programs for A194019, there is no canonical definition to state claims against.
-/

/-! ## A194019.P6066837084372096745

`xor(A004273(A201690(n+1)), A074353(n))`
-/

namespace A194019.P6066837084372096745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004273 (A201690 (n + 1)).toNat) (A074353 n)

end

end A194019.P6066837084372096745

/-! ## A194019.P2043620067983726380

`xor(A080832(n), A237451(A113731(n+1)))`
-/

namespace A194019.P2043620067983726380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080832 n) (A237451 (A113731 (n + 1)).toNat)

end

end A194019.P2043620067983726380

/-!
# A194021: Number of ways to arrange 4 points on an n X n X n triangular grid on an isosceles triangle so that it balances at the midpoint of its central altitude.

The programs for A194021, there is no canonical definition to state claims against.
-/

/-! ## A194021.P183210312196969393

`A194024(∑[n+3]+n+4)`
-/

namespace A194021.P183210312196969393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194024 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A194021.P183210312196969393

/-! ## A194021.P15693320088765876619

`ceil(sin(n)²)*A194024(A055998(n+2))`
-/

namespace A194021.P15693320088765876619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A194024 (A055998 (n + 2)).toNat

end

end A194021.P15693320088765876619

/-! ## A194021.P8370985518884631984

`A194024(A055998(n+2))%A164298(n)`
-/

namespace A194021.P8370985518884631984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194024 (A055998 (n + 2)).toNat) (A164298 n)

end

end A194021.P8370985518884631984

/-! ## A194021.P17183546737389819689

`A194024(A055998(n+2))+A000035(2*n)`
-/

namespace A194021.P17183546737389819689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194024 (A055998 (n + 2)).toNat + A000035 (2 * n)

end

end A194021.P17183546737389819689

/-!
# A194022: Number of ways to arrange 8 points on an n X n X n triangular grid on an isosceles triangle so that it balances at the midpoint of its central altitude.

The programs for A194022, there is no canonical definition to state claims against.
-/

/-! ## A194022.P5802277024931364810

`A194024(eq[7, A193592(n)])`
-/

namespace A194022.P5802277024931364810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194022.P5802277024931364810

/-! ## A194022.P13584091150203459197

`A194024(A000096(n+7)-6)`
-/

namespace A194022.P13584091150203459197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194024 (A000096 (n + 7) - 6).toNat

end

end A194022.P13584091150203459197

/-! ## A194022.P4314995344637745685

`A194024(A000217(n+8)-7)`
-/

namespace A194022.P4314995344637745685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194024 (A000217 (n + 8) - 7).toNat

end

end A194022.P4314995344637745685

/-! ## A194022.P4439605482912798127

`A194024(Δ[n²]+A000124(n+6)+6)`
-/

namespace A194022.P4439605482912798127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194024 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000124 (n + 6) + 6)).toNat

end

end A194022.P4439605482912798127

/-! ## A194022.P17879636627315857348

`A194024(Δ[n²]+A000217(n+6)+7)`
-/

namespace A194022.P17879636627315857348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194024 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A194022.P17879636627315857348

/-!
# A194023: Number of ways to arrange 12 points on an n X n X n triangular grid on an isosceles triangle so that it balances at the midpoint of its central altitude.

The programs for A194023, there is no canonical definition to state claims against.
-/

/-! ## A194023.P11276977244087484452

`A194024(eq[11, A193592(n)])`
-/

namespace A194023.P11276977244087484452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194023.P11276977244087484452

/-! ## A194023.P13386323387216863678

`A147324(A147404(n+1))-A147161(n+1)`
-/

namespace A194023.P13386323387216863678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147324 (A147404 (n + 1)).toNat - A147161 (n + 1)

end

end A194023.P13386323387216863678

/-!
# A194024: T(n,k) = number of ways to arrange k points on an n X n X n triangular grid on an isosceles triangle so that it balances at the midpoint of its central altitude.

The programs for A194024, there is no canonical definition to state claims against.
-/

/-! ## A194024.P8353578646845553430

`A060701(n)%A327858(A087997(n+1))`
-/

namespace A194024.P8353578646845553430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060701 n) (A327858 (A087997 (n + 1)).toNat)

end

end A194024.P8353578646845553430

/-! ## A194024.P5710457445474443918

`A199881(n)%A327858(A087997(n+1))`
-/

namespace A194024.P5710457445474443918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199881 n) (A327858 (A087997 (n + 1)).toNat)

end

end A194024.P5710457445474443918

/-! ## A194024.P3703336626353554306

`A326676(n)%A327858(A087997(n+1))`
-/

namespace A194024.P3703336626353554306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326676 n) (A327858 (A087997 (n + 1)).toNat)

end

end A194024.P3703336626353554306

/-! ## A194024.P9080851855996156086

`A259095(n+1)%A327858(A087997(n+1))`
-/

namespace A194024.P9080851855996156086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259095 (n + 1)) (A327858 (A087997 (n + 1)).toNat)

end

end A194024.P9080851855996156086

/-! ## A194024.P14607318874257851634

`and(A294891(A228260(n+1)), A294895(n+1))`
-/

namespace A194024.P14607318874257851634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A294891 (A228260 (n + 1)).toNat) (A294895 (n + 1))

end

end A194024.P14607318874257851634

/-!
# A194026: E.g.f.: Sum_{n>=0} sinh(2^n*x)^n / 2^(n^2).

The programs for A194026, there is no canonical definition to state claims against.
-/

/-! ## A194026.P11489537255683998218

`A131346(n!)`
-/

namespace A194026.P11489537255683998218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131346 (Nat.factorial n)

end

end A194026.P11489537255683998218

/-!
# A194027: E.g.f.: Sum_{n>=0} sin(2^n*x)^n / 2^(n^2).

The programs for A194027, there is no canonical definition to state claims against.
-/

/-! ## A194027.P8905583847035908562

`4-A322492(2^n*a(n-3))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A194027.P8905583847035908562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n a =>
  4 - A322492 ((2 ^ n : ℤ) * a (n - 3)).toNat

end

end A194027.P8905583847035908562

/-!
# A194028: Beatty sequence for sqrt(12).

The programs for A194028, the canonical program `A194028.P5058899790333563565` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194028 has offset 1).

The definition of A194028 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194028.P5058899790333563565

`floor((n+1)*sqrt(12))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194028

/-- `floor((n+1)*sqrt(12))` -/
def P5058899790333563565.Spec : Prop :=
  ∀ n, P5058899790333563565.a n = A194028 (n + 1)

theorem P5058899790333563565.correct : P5058899790333563565.Spec := by
  intro n
  simp only [A194028, Nat.add_sub_cancel]

end A194028

/-! ## A194028.P3681008862063760381

`A198269(n+1)-1`
-/

namespace A194028.P3681008862063760381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198269 (n + 1) - 1

end

end A194028.P3681008862063760381

namespace A194028

/-- `A198269(n+1)-1` -/
def P3681008862063760381.Spec : Prop :=
  ∀ n, P3681008862063760381.a n = A194028 (n + 1)

end A194028

/-! ## A194028.P15190619077037548403

`A022847(n+1)+A022838(n+1)`
-/

namespace A194028.P15190619077037548403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 (n + 1) + A022838 (n + 1)

end

end A194028.P15190619077037548403

namespace A194028

/-- `A022847(n+1)+A022838(n+1)` -/
def P15190619077037548403.Spec : Prop :=
  ∀ n, P15190619077037548403.a n = A194028 (n + 1)

end A194028

/-! ## A194028.P17992450590888580602

`A022847(n+1)+A198081(n+1)-1`
-/

namespace A194028.P17992450590888580602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 (n + 1) + (A198081 (n + 1) - 1)

end

end A194028.P17992450590888580602

namespace A194028

/-- `A022847(n+1)+A198081(n+1)-1` -/
def P17992450590888580602.Spec : Prop :=
  ∀ n, P17992450590888580602.a n = A194028 (n + 1)

end A194028

/-! ## A194028.P12954883652512580163

`A022838(2*(n+1))`
-/

namespace A194028.P12954883652512580163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (2 * (n + 1))

end

end A194028.P12954883652512580163

namespace A194028

/-- `A022838(2*(n+1))` -/
def P12954883652512580163.Spec : Prop :=
  ∀ n, P12954883652512580163.a n = A194028 (n + 1)

end A194028

/-! ## A194028.P14662133762752015375

`A198081(2*(n+1))-1`
-/

namespace A194028.P14662133762752015375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (2 * (n + 1)) - 1

end

end A194028.P14662133762752015375

namespace A194028

/-- `A198081(2*(n+1))-1` -/
def P14662133762752015375.Spec : Prop :=
  ∀ n, P14662133762752015375.a n = A194028 (n + 1)

end A194028

/-! ## A194028.P4013158363434586347

`Δ[∑[A198081(2*n)]-n]`
-/

namespace A194028.P4013158363434586347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194028.P4013158363434586347

namespace A194028

/-- `Δ[∑[A198081(2*n)]-n]` -/
def P4013158363434586347.Spec : Prop :=
  ∀ n, P4013158363434586347.a n = A194028 (n + 1)

end A194028

/-! ## A194028.P8955451450843413875

`ceil(sqrt(A080663(2*(n+1))))-1`
-/

namespace A194028.P8955451450843413875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A080663 (2 * (n + 1)) : ℝ)⌉ - 1

end

end A194028.P8955451450843413875

namespace A194028

/-- `ceil(sqrt(A080663(2*(n+1))))-1` -/
def P8955451450843413875.Spec : Prop :=
  ∀ n, P8955451450843413875.a n = A194028 (n + 1)

end A194028

/-! ## A194028.P7745441001426891360

`ceil(sqrt(A100536(2*(n+1))))-1`
-/

namespace A194028.P7745441001426891360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A100536 (2 * (n + 1)) : ℝ)⌉ - 1

end

end A194028.P7745441001426891360

namespace A194028

/-- `ceil(sqrt(A100536(2*(n+1))))-1` -/
def P7745441001426891360.Spec : Prop :=
  ∀ n, P7745441001426891360.a n = A194028 (n + 1)

end A194028

/-! ## A194028.P12760463477915257321

`record[A022838(gcd(n+1, ∑[n])+1)]`
-/

namespace A194028.P12760463477915257321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194028.P12760463477915257321

namespace A194028

/-- `record[A022838(gcd(n+1, ∑[n])+1)]` -/
def P12760463477915257321.Spec : Prop :=
  ∀ n, P12760463477915257321.a n = A194028 (n + 1)

end A194028

/-! ## A194028.P4987842364271844842

`A054088(2*(n+1))-2*(n+1)`
-/

namespace A194028.P4987842364271844842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A194028.P4987842364271844842

namespace A194028

/-- `A054088(2*(n+1))-2*(n+1)` -/
def P4987842364271844842.Spec : Prop :=
  ∀ n, P4987842364271844842.a n = A194028 (n + 1)

end A194028

/-! ## A194028.P1918906590300537014

`A180122(2*(n+1))-(2*n+1)`
-/

namespace A194028.P1918906590300537014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (2 * (n + 1)) - (2 * n + 1 : ℤ)

end

end A194028.P1918906590300537014

namespace A194028

/-- `A180122(2*(n+1))-(2*n+1)` -/
def P1918906590300537014.Spec : Prop :=
  ∀ n, P1918906590300537014.a n = A194028 (n + 1)

end A194028

/-! ## A194028.P5026188500178720955

`A182778(n+1)-A014245(2*(n+1))`
-/

namespace A194028.P5026188500178720955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182778 (n + 1) - A014245 (2 * (n + 1))

end

end A194028.P5026188500178720955

namespace A194028

/-- `A182778(n+1)-A014245(2*(n+1))` -/
def P5026188500178720955.Spec : Prop :=
  ∀ n, P5026188500178720955.a n = A194028 (n + 1)

end A194028

/-! ## A194028.P15418802019515278194

`∑[A080757(2*n+1)+A080757(2*n)]`
-/

namespace A194028.P15418802019515278194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 (2 * n + 1) + A080757 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194028.P15418802019515278194

namespace A194028

/-- `∑[A080757(2*n+1)+A080757(2*n)]` -/
def P15418802019515278194.Spec : Prop :=
  ∀ n, P15418802019515278194.a n = A194028 (n + 1)

end A194028

/-! ## A194028.P12309483909987775418

`A054406(2*(n+1))-A014245(2*(n+1))`
-/

namespace A194028.P12309483909987775418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (2 * (n + 1)) - A014245 (2 * (n + 1))

end

end A194028.P12309483909987775418

namespace A194028

/-- `A054406(2*(n+1))-A014245(2*(n+1))` -/
def P12309483909987775418.Spec : Prop :=
  ∀ n, P12309483909987775418.a n = A194028 (n + 1)

end A194028

/-! ## A194028.P15652749859881385369

`A022805(2*(n+1))-A054406(2*(n+1))`
-/

namespace A194028.P15652749859881385369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022805 (2 * (n + 1)) - A054406 (2 * (n + 1))

end

end A194028.P15652749859881385369

namespace A194028

/-- `A022805(2*(n+1))-A054406(2*(n+1))` -/
def P15652749859881385369.Spec : Prop :=
  ∀ n, P15652749859881385369.a n = A194028 (n + 1)

end A194028

/-! ## A194028.P17272871927356518739

`A189469(2*(n+1))-A187338(2*(n+1))`
-/

namespace A194028.P17272871927356518739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189469 (2 * (n + 1)) - A187338 (2 * (n + 1))

end

end A194028.P17272871927356518739

namespace A194028

/-- `A189469(2*(n+1))-A187338(2*(n+1))` -/
def P17272871927356518739.Spec : Prop :=
  ∀ n, P17272871927356518739.a n = A194028 (n + 1)

end A194028

/-! ## A194028.P4060919280672540385

`A194106(2*(n+1))-A194106(2*n+1)`
-/

namespace A194028.P4060919280672540385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194106 (2 * (n + 1)) - A194106 (2 * n + 1)

end

end A194028.P4060919280672540385

namespace A194028

/-- `A194106(2*(n+1))-A194106(2*n+1)` -/
def P4060919280672540385.Spec : Prop :=
  ∀ n, P4060919280672540385.a n = A194028 (n + 1)

end A194028

/-! ## A194028.P4002731711248958504

`A023443(A198269(n+1))`
-/

namespace A194028.P4002731711248958504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198269 (n + 1)).toNat

end

end A194028.P4002731711248958504

namespace A194028

/-- `A023443(A198269(n+1))` -/
def P4002731711248958504.Spec : Prop :=
  ∀ n, P4002731711248958504.a n = A194028 (n + 1)

end A194028

/-!
# A194029: Natural fractal sequence of the Fibonacci sequence (1, 2, 3, 5, 8, ...).

The programs for A194029, the canonical program `A194029.P3923932250120237143` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194029 has offset 1).

The definition of A194029 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066628, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A194029.P3923932250120237143

`A066628(n+1)+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194029

/-- `A066628(n+1)+1` -/
def P3923932250120237143.Spec : Prop :=
  ∀ n, P3923932250120237143.a n = A194029 (n + 1)

theorem P3923932250120237143.correct : P3923932250120237143.Spec := by
  intro n
  simp only [A194029, Nat.add_sub_cancel]

end A194029

/-! ## A194029.P711828360008281338

`2-A087172(n+1)+n`
-/

namespace A194029.P711828360008281338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A087172 (n + 1) + (n : ℤ)

end

end A194029.P711828360008281338

namespace A194029

/-- `2-A087172(n+1)+n` -/
def P711828360008281338.Spec : Prop :=
  ∀ n, P711828360008281338.a n = A194029 (n + 1)

theorem P711828360008281338.correct : P711828360008281338.Spec := by
  intro n
  simp only [A194029, Nat.add_sub_cancel, A194029.P711828360008281338.a, A194029.P3923932250120237143.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A087172, A087172.P11848992007905839176.a, A003849, A003849.P15070805603138295355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194029

/-! ## A194029.P8307717589433236486

`A342297(A342297(n+2))`
-/

namespace A194029.P8307717589433236486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342297 (A342297 (n + 2)).toNat

end

end A194029.P8307717589433236486

namespace A194029

/-- `A342297(A342297(n+2))` -/
def P8307717589433236486.Spec : Prop :=
  ∀ n, P8307717589433236486.a n = A194029 (n + 1)

end A194029

/-! ## A194029.P1796218389841697022

`A358120(A358124(n+2)-1)`
-/

namespace A194029.P1796218389841697022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358120 (A358124 (n + 2) - 1).toNat

end

end A194029.P1796218389841697022

namespace A194029

/-- `A358120(A358124(n+2)-1)` -/
def P1796218389841697022.Spec : Prop :=
  ∀ n, P1796218389841697022.a n = A194029 (n + 1)

end A194029

/-! ## A194029.P1552133584538508551

`A130312(n+1)-A361989(n)`
-/

namespace A194029.P1552133584538508551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130312 (n + 1) - A361989 n

end

end A194029.P1552133584538508551

namespace A194029

/-- `A130312(n+1)-A361989(n)` -/
def P1552133584538508551.Spec : Prop :=
  ∀ n, P1552133584538508551.a n = A194029 (n + 1)

theorem P1552133584538508551.correct : P1552133584538508551.Spec := by
  intro n
  simp only [A194029, Nat.add_sub_cancel, A194029.P1552133584538508551.a, A194029.P3923932250120237143.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A130312, A130312.P4153789337100935269.a, A361989, A361989.P2689510740431827614.a, A000045, A000045.P11838749114346432762.a, A003849, A003849.P15070805603138295355.a, A072649, A072649.P9617326913925617377.a, A108852, A108852.P14747039251510576692.a, A022341, A022341.P2847779761458071812.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194029

/-! ## A194029.P11007063266531821355

`n+2-A000045(A130233(n+1))`
-/

namespace A194029.P11007063266531821355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A000045 (A130233 (n + 1)).toNat

end

end A194029.P11007063266531821355

namespace A194029

/-- `n+2-A000045(A130233(n+1))` -/
def P11007063266531821355.Spec : Prop :=
  ∀ n, P11007063266531821355.a n = A194029 (n + 1)

end A194029

/-! ## A194029.P17652238633029030430

`A000045(A072649(n+1))-A361989(n)`
-/

namespace A194029.P17652238633029030430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072649 (n + 1)).toNat - A361989 n

end

end A194029.P17652238633029030430

namespace A194029

/-- `A000045(A072649(n+1))-A361989(n)` -/
def P17652238633029030430.Spec : Prop :=
  ∀ n, P17652238633029030430.a n = A194029 (n + 1)

theorem P17652238633029030430.correct : P17652238633029030430.Spec := by
  intro n
  simp only [A194029, Nat.add_sub_cancel, A194029.P17652238633029030430.a, A194029.P3923932250120237143.a, A000045, A000045.P11838749114346432762.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A072649, A072649.P9617326913925617377.a, A361989, A361989.P2689510740431827614.a, A003849, A003849.P15070805603138295355.a, A108852, A108852.P14747039251510576692.a, A130312, A130312.P4153789337100935269.a, A022341, A022341.P2847779761458071812.a, A003714, A003714.P565032106299634425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A194029

/-! ## A194029.P5460776126829372428

`n+2-A000045(A131234(n+2))`
-/

namespace A194029.P5460776126829372428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A000045 (A131234 (n + 2)).toNat

end

end A194029.P5460776126829372428

namespace A194029

/-- `n+2-A000045(A131234(n+2))` -/
def P5460776126829372428.Spec : Prop :=
  ∀ n, P5460776126829372428.a n = A194029 (n + 1)

end A194029

/-! ## A194029.P9686906788508074395

`n+2-A130312(A022342(n+2))`
-/

namespace A194029.P9686906788508074395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A130312 (A022342 (n + 2)).toNat

end

end A194029.P9686906788508074395

namespace A194029

/-- `n+2-A130312(A022342(n+2))` -/
def P9686906788508074395.Spec : Prop :=
  ∀ n, P9686906788508074395.a n = A194029 (n + 1)

end A194029

/-! ## A194029.P4642307014885031090

`A194055(gcd(n, C(2, n)))`
-/

namespace A194029.P4642307014885031090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194055 (Nat.gcd n (Nat.choose 2 n))

end

end A194029.P4642307014885031090

namespace A194029

/-- `A194055(gcd(n, C(2, n)))` -/
def P4642307014885031090.Spec : Prop :=
  ∀ n, P4642307014885031090.a n = A194029 (n + 1)

end A194029

/-!
# A194030: Natural interspersion of the Fibonacci sequence (1,2,3,5,8,...), a rectangular array, by antidiagonals.

The programs for A194030, there is no canonical definition to state claims against.
-/

/-! ## A194030.P16028436712880721020

`A087172(A035513(n+1))+A002262(n)`
-/

namespace A194030.P16028436712880721020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A035513 (n + 1)).toNat + A002262 n

end

end A194030.P16028436712880721020

/-! ## A194030.P1179099127953047344

`A087172(A194056(n+1))+A002262(n)`
-/

namespace A194030.P1179099127953047344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A194056 (n + 1)).toNat + A002262 n

end

end A194030.P1179099127953047344

/-! ## A194030.P1941723525559338791

`A087172(A035513(n+1))+log2(A059268(n))`
-/

namespace A194030.P1941723525559338791
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A087172 (A035513 (n + 1)).toNat : ℝ) + Real.logb 2 (A059268 n : ℝ)

end

end A194030.P1941723525559338791

/-! ## A194030.P11784853885893422451

`A087172(A035513(n+1))+A025668(n+1)`
-/

namespace A194030.P11784853885893422451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A035513 (n + 1)).toNat + A025668 (n + 1)

end

end A194030.P11784853885893422451

/-! ## A194030.P18316130773668111257

`A002260(n+1)+A087172(A035513(n+1))-1`
-/

namespace A194030.P18316130773668111257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A087172 (A035513 (n + 1)).toNat - 1)

end

end A194030.P18316130773668111257

/-! ## A194030.P9577003260669275838

`A163326(A163328(n))+A087172(A035513(n+1))`
-/

namespace A194030.P9577003260669275838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163326 (A163328 n).toNat + A087172 (A035513 (n + 1)).toNat

end

end A194030.P9577003260669275838

/-! ## A194030.P6238640307566708566

`A343646(A345252(n+1))`
-/

namespace A194030.P6238640307566708566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343646 (A345252 (n + 1)).toNat

end

end A194030.P6238640307566708566

/-! ## A194030.P8115201030130250454

`A087172(A345252(n+1))+A002262(n)`
-/

namespace A194030.P8115201030130250454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A345252 (n + 1)).toNat + A002262 n

end

end A194030.P8115201030130250454

/-! ## A194030.P6728951755216985366

`A087172(A345252(n+1))+A025668(n+1)`
-/

namespace A194030.P6728951755216985366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A345252 (n + 1)).toNat + A025668 (n + 1)

end

end A194030.P6728951755216985366

/-! ## A194030.P3861517363161762349

`A087172(A345252(n+1))+A001222(A059268(n))`
-/

namespace A194030.P3861517363161762349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A345252 (n + 1)).toNat + A001222 (A059268 n).toNat

end

end A194030.P3861517363161762349

/-!
# A194031: Inverse permutation of A194030; contains every positive integer exactly once.

The programs for A194031, there is no canonical definition to state claims against.
-/

/-! ## A194031.P7335625074821641274

`A064274(A343150(n+1)%A006596(n+1))`
-/

namespace A194031.P7335625074821641274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064274 (Int.tmod (A343150 (n + 1)) (A006596 (n + 1))).toNat

end

end A194031.P7335625074821641274

/-! ## A194031.P11527229242125046775

`A209268(A246166(n+1)%A006596(n+1))`
-/

namespace A194031.P11527229242125046775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209268 (Int.tmod (A246166 (n + 1)) (A006596 (n + 1))).toNat

end

end A194031.P11527229242125046775

/-! ## A194031.P15117359382648945201

`A064274(A343150(n+1)%A095449(n))`
-/

namespace A194031.P15117359382648945201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064274 (Int.tmod (A343150 (n + 1)) (A095449 n)).toNat

end

end A194031.P15117359382648945201

/-! ## A194031.P16069623552203630240

`A209268(A246166(n+1)%A095449(n))`
-/

namespace A194031.P16069623552203630240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209268 (Int.tmod (A246166 (n + 1)) (A095449 n)).toNat

end

end A194031.P16069623552203630240

/-!
# A194032: Natural interspersion of the squares (1,4,9,16,25,...), a rectangular array, by antidiagonals.

The programs for A194032, the canonical program `A194032.P1700617738271961526` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194032 has offset 1).

The definition of A194032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194032.P1700617738271961526

`A002262(n)+A000196(A082156(n+1))²`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A194032

/-- `A002262(n)+A000196(A082156(n+1))²` -/
def P1700617738271961526.Spec : Prop :=
  ∀ n, P1700617738271961526.a n = A194032 (n + 1)

theorem P1700617738271961526.correct : P1700617738271961526.Spec := by
  intro n
  simp only [A194032, Nat.add_sub_cancel]

end A194032

/-! ## A194032.P5988258532972675773

`A048760(A163257(n+1))+A002262(n)`
-/

namespace A194032.P5988258532972675773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A163257 (n + 1)).toNat + A002262 n

end

end A194032.P5988258532972675773

namespace A194032

/-- `A048760(A163257(n+1))+A002262(n)` -/
def P5988258532972675773.Spec : Prop :=
  ∀ n, P5988258532972675773.a n = A194032 (n + 1)

end A194032

/-! ## A194032.P17054884388391291012

`A048760(A163257(n+1))+A001222(A059268(n))`
-/

namespace A194032.P17054884388391291012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A163257 (n + 1)).toNat + A001222 (A059268 n).toNat

end

end A194032.P17054884388391291012

namespace A194032

/-- `A048760(A163257(n+1))+A001222(A059268(n))` -/
def P17054884388391291012.Spec : Prop :=
  ∀ n, P17054884388391291012.a n = A194032 (n + 1)

end A194032

/-! ## A194032.P15960364794581497832

`A196199(A061885(n))+A048760(A163257(n+1))`
-/

namespace A194032.P15960364794581497832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A061885 n).toNat + A048760 (A163257 (n + 1)).toNat

end

end A194032.P15960364794581497832

namespace A194032

/-- `A196199(A061885(n))+A048760(A163257(n+1))` -/
def P15960364794581497832.Spec : Prop :=
  ∀ n, P15960364794581497832.a n = A194032 (n + 1)

end A194032

/-! ## A194032.P8978500444041297168

`A048760(A194036(n+1))+A002262(n)`
-/

namespace A194032.P8978500444041297168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A194036 (n + 1)).toNat + A002262 n

end

end A194032.P8978500444041297168

namespace A194032

/-- `A048760(A194036(n+1))+A002262(n)` -/
def P8978500444041297168.Spec : Prop :=
  ∀ n, P8978500444041297168.a n = A194032 (n + 1)

end A194032

/-! ## A194032.P2695667386536997378

`A048760(A194036(n+1))+log2(A059268(n))`
-/

namespace A194032.P2695667386536997378
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048760 (A194036 (n + 1)).toNat : ℝ) + Real.logb 2 (A059268 n : ℝ)

end

end A194032.P2695667386536997378

namespace A194032

/-- `A048760(A194036(n+1))+log2(A059268(n))` -/
def P2695667386536997378.Spec : Prop :=
  ∀ n, P2695667386536997378.a n = (A194032 (n + 1) : ℝ)

end A194032

/-! ## A194032.P6948807471694000497

`A196199(A061885(n))+A048760(A194036(n+1))`
-/

namespace A194032.P6948807471694000497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A061885 n).toNat + A048760 (A194036 (n + 1)).toNat

end

end A194032.P6948807471694000497

namespace A194032

/-- `A196199(A061885(n))+A048760(A194036(n+1))` -/
def P6948807471694000497.Spec : Prop :=
  ∀ n, P6948807471694000497.a n = A194032 (n + 1)

end A194032

/-! ## A194032.P15704686044620420199

`A048760(A163253(n+1))+A002262(n)`
-/

namespace A194032.P15704686044620420199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A163253 (n + 1)).toNat + A002262 n

end

end A194032.P15704686044620420199

namespace A194032

/-- `A048760(A163253(n+1))+A002262(n)` -/
def P15704686044620420199.Spec : Prop :=
  ∀ n, P15704686044620420199.a n = A194032 (n + 1)

end A194032

/-! ## A194032.P3079306181419925795

`A196199(A061885(n))+A048760(A163253(n+1))`
-/

namespace A194032.P3079306181419925795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A061885 n).toNat + A048760 (A163253 (n + 1)).toNat

end

end A194032.P3079306181419925795

namespace A194032

/-- `A196199(A061885(n))+A048760(A163253(n+1))` -/
def P3079306181419925795.Spec : Prop :=
  ∀ n, P3079306181419925795.a n = A194032 (n + 1)

end A194032

/-!
# A194034: Natural interspersion of A028387, a rectangular array, by antidiagonals.

The programs for A194034, there is no canonical definition to state claims against.
-/

/-! ## A194034.P7769831142212617010

`A055461(A077168(n))+A003056(n)`
-/

namespace A194034.P7769831142212617010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (A077168 n).toNat + A003056 n

end

end A194034.P7769831142212617010

/-! ## A194034.P13533772936009677420

`A086435(A000079(n))+A055461(n+1)`
-/

namespace A194034.P13533772936009677420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (A000079 n).toNat + A055461 (n + 1)

end

end A194034.P13533772936009677420

/-! ## A194034.P7489768044971934652

`A131782(n+1)+A025675(A077168(n))`
-/

namespace A194034.P7489768044971934652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131782 (n + 1) + A025675 (A077168 n).toNat

end

end A194034.P7489768044971934652

/-! ## A194034.P15172312649641581300

`A025675(A077168(n))+A007306(A130330(n)²)`
-/

namespace A194034.P15172312649641581300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (A077168 n).toNat + A007306 (A130330 n ^ 2).toNat

end

end A194034.P15172312649641581300

/-! ## A194034.P8604613541234739517

`A163257(n+1)-A054907(A219209(n))`
-/

namespace A194034.P8604613541234739517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163257 (n + 1) - A054907 (A219209 n).toNat

end

end A194034.P8604613541234739517

/-!
# A194036: Natural interspersion of A028872, a rectangular array, by antidiagonals.

The programs for A194036, there is no canonical definition to state claims against.
-/

/-! ## A194036.P13315317151093593374

`A294317(n)+A055461(A187829(n+1))`
-/

namespace A194036.P13315317151093593374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n + A055461 (A187829 (n + 1)).toNat

end

end A194036.P13315317151093593374

/-! ## A194036.P3672086949900772145

`A294317(n)+A243903(A055461(n+1))`
-/

namespace A194036.P3672086949900772145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n + A243903 (A055461 (n + 1)).toNat

end

end A194036.P3672086949900772145

/-! ## A194036.P8179488357294658554

`A294317(n)+A099751(A025631(n+1))²`
-/

namespace A194036.P8179488357294658554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n + A099751 (A025631 (n + 1)).toNat ^ 2

end

end A194036.P8179488357294658554

/-! ## A194036.P11040189929622725954

`A095832(n+1)+A001511(A025634(n+1))`
-/

namespace A194036.P11040189929622725954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095832 (n + 1) + A001511 (A025634 (n + 1)).toNat

end

end A194036.P11040189929622725954

/-!
# A194038: Natural interspersion of A034856, a rectangular array, by antidiagonals.

The programs for A194038, there is no canonical definition to state claims against.
-/

/-! ## A194038.P17849758957318403333

`A038722(A194040(A038722(n+1)))`
-/

namespace A194038.P17849758957318403333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194040 (A038722 (n + 1)).toNat).toNat

end

end A194038.P17849758957318403333

/-! ## A194038.P15174537584472642368

`A324161(A194064(n+1)%A072554(2*(n+1)))`
-/

namespace A194038.P15174537584472642368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324161 (Int.tmod (A194064 (n + 1)) (A072554 (2 * (n + 1)))).toNat

end

end A194038.P15174537584472642368

/-!
# A194039: Sum of nonprime divisors of n^2 + 1.

The programs for A194039, the canonical program `A194039.P14669893716291510677` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194039 has offset 1).

The definition of A194039 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023890, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A194039.P14669893716291510677

`A023890((n+1)²+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194039

/-- `A023890((n+1)²+1)` -/
def P14669893716291510677.Spec : Prop :=
  ∀ n, P14669893716291510677.a n = A194039 (n + 1)

theorem P14669893716291510677.correct : P14669893716291510677.Spec := by
  intro n
  simp only [A194039, Nat.add_sub_cancel]

end A194039

/-! ## A194039.P8854031152081436060

`Δ[A333172(n)]-A193462(n+1)`
-/

namespace A194039.P8854031152081436060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A193462 (n + 1)

end

end A194039.P8854031152081436060

namespace A194039

/-- `Δ[A333172(n)]-A193462(n+1)` -/
def P8854031152081436060.Spec : Prop :=
  ∀ n, P8854031152081436060.a n = A194039 (n + 1)

end A194039

/-! ## A194039.P18147663489930065909

`A193433(n+1)-A193462(n+1)`
-/

namespace A194039.P18147663489930065909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193433 (n + 1) - A193462 (n + 1)

end

end A194039.P18147663489930065909

namespace A194039

/-- `A193433(n+1)-A193462(n+1)` -/
def P18147663489930065909.Spec : Prop :=
  ∀ n, P18147663489930065909.a n = A194039 (n + 1)

end A194039

/-! ## A194039.P12786078931747921602

`Δ[A333172(n)-A193462(n)]-A193462(n)`
-/

namespace A194039.P12786078931747921602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333172 n - A193462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A193462 n

end

end A194039.P12786078931747921602

namespace A194039

/-- `Δ[A333172(n)-A193462(n)]-A193462(n)` -/
def P12786078931747921602.Spec : Prop :=
  ∀ n, P12786078931747921602.a n = A194039 (n + 1)

end A194039

/-! ## A194039.P5669856081318946195

`A333172(n+1)-(A333172(n)+A193462(n+1))`
-/

namespace A194039.P5669856081318946195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333172 (n + 1) - (A333172 n + A193462 (n + 1))

end

end A194039.P5669856081318946195

namespace A194039

/-- `A333172(n+1)-(A333172(n)+A193462(n+1))` -/
def P5669856081318946195.Spec : Prop :=
  ∀ n, P5669856081318946195.a n = A194039 (n + 1)

end A194039

/-! ## A194039.P5717118776001323576

`A000203((n+1)²+1)-A193462(n+1)`
-/

namespace A194039.P5717118776001323576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ 2 + 1) - A193462 (n + 1)

end

end A194039.P5717118776001323576

namespace A194039

/-- `A000203((n+1)²+1)-A193462(n+1)` -/
def P5717118776001323576.Spec : Prop :=
  ∀ n, P5717118776001323576.a n = A194039 (n + 1)

end A194039

/-! ## A194039.P13606136997983575657

`A000203((n+1)²+1)-A008472((n+1)²+1)`
-/

namespace A194039.P13606136997983575657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ 2 + 1) - A008472 ((n + 1) ^ 2 + 1)

end

end A194039.P13606136997983575657

namespace A194039

/-- `A000203((n+1)²+1)-A008472((n+1)²+1)` -/
def P13606136997983575657.Spec : Prop :=
  ∀ n, P13606136997983575657.a n = A194039 (n + 1)

end A194039

/-! ## A194039.P14792962128188138898

`A023891((n+1)²+1)+1`
-/

namespace A194039.P14792962128188138898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023891 ((n + 1) ^ 2 + 1) + 1

end

end A194039.P14792962128188138898

namespace A194039

/-- `A023891((n+1)²+1)+1` -/
def P14792962128188138898.Spec : Prop :=
  ∀ n, P14792962128188138898.a n = A194039 (n + 1)

theorem P14792962128188138898.correct : P14792962128188138898.Spec := by
  intro n
  simp only [A194039, Nat.add_sub_cancel, A194039.P14792962128188138898.a, A194039.P14669893716291510677.a, A023890, A023890.P4514850295399263827.a, A023891, A023891.P8679455862173637145.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194039

/-!
# A194040: Inverse permutation to A194038; contains every positive integer exactly once.

The programs for A194040, there is no canonical definition to state claims against.
-/

/-! ## A194040.P14593572286786764675

`A038722(Δ[A004247(n+1)]+1+n)`
-/

namespace A194040.P14593572286786764675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (f1 (n + 1) - f1 n + 1 + (n : ℤ)).toNat

end

end A194040.P14593572286786764675

/-! ## A194040.P2557293644225158983

`A038722(Δ[A077028(n+1)]+n+1)`
-/

namespace A194040.P2557293644225158983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat

end

end A194040.P2557293644225158983

/-! ## A194040.P6521367070525625356

`A061579(Δ[A077028(n+1)]+n)+1`
-/

namespace A194040.P6521367070525625356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (f1 (n + 1) - f1 n + (n : ℤ)).toNat + 1

end

end A194040.P6521367070525625356

/-! ## A194040.P13174481351704274152

`A038722(A194038(A061579(n)))`
-/

namespace A194040.P13174481351704274152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194038 (A061579 n).toNat).toNat

end

end A194040.P13174481351704274152

/-! ## A194040.P3103765790078158225

`A038722(A194038(A038722(n+1)-1))`
-/

namespace A194040.P3103765790078158225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194038 (A038722 (n + 1) - 1).toNat).toNat

end

end A194040.P3103765790078158225

/-!
# A194041: Lucky numbers which are also unhappy numbers.

The programs for A194041, there is no canonical definition to state claims against.
-/

/-! ## A194041.P6616429651505245506

`filter[A031177(n+1), A145649(#)]`
-/

namespace A194041.P6616429651505245506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A194041.P6616429651505245506

/-! ## A194041.P3240193368239198114

`∩[A000959(n+1), A031177(n+1)]`
-/

namespace A194041.P3240193368239198114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194041.P3240193368239198114

/-! ## A194041.P822984689797134387

`∩[lt[1, A031176(n)], A000959(n+1)]`
-/

namespace A194041.P822984689797134387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A194041.P822984689797134387

/-! ## A194041.P10581351017249244011

`∩[lt[1, A103369(n+1)]+1, A000959(n+1)]`
-/

namespace A194041.P10581351017249244011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A194041.P10581351017249244011

/-! ## A194041.P5933063982696464584

`∩[lt[1, A103369(n+1)]+1, 2*A049781(n+1)-1]`
-/

namespace A194041.P5933063982696464584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049781 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A194041.P5933063982696464584

/-!
# A194043: G.f. satisfies: A(x) = Sum_{n>=0} q^(n*(n+1)/2) where q = x*A(x)^8.

The programs for A194043, there is no canonical definition to state claims against.
-/

/-! ## A194043.P963307061227406641

`A355621((n+1)*n^n)`
-/

namespace A194043.P963307061227406641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355621 ((n + 1) * n ^ n)

end

end A194043.P963307061227406641

/-!
# A194044: G.f. satisfies: A(x) = ( Sum_{n>=0} q^(n*(n+1)/2) )^4 where q=x*A(x)^2.

The programs for A194044, there is no canonical definition to state claims against.
-/

/-! ## A194044.P17381964190646097264

`A050294(A234464(n))-A153237(n)`
-/

namespace A194044.P17381964190646097264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050294 (A234464 n).toNat - A153237 n

end

end A194044.P17381964190646097264

/-!
# A194045: Numbers whose binary expansion is a preorder traversal of a binary tree.

The programs for A194045, there is no canonical definition to state claims against.
-/

/-! ## A194045.P12087243889087629037

`2*A014486(n)`
-/

namespace A194045.P12087243889087629037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014486 n

end

end A194045.P12087243889087629037

/-! ## A194045.P6592169030462792839

`4*A057520(n)`
-/

namespace A194045.P6592169030462792839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A057520 n

end

end A194045.P6592169030462792839

/-! ## A194045.P8889057952998378704

`A085224(n)/2-1`
-/

namespace A194045.P8889057952998378704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085224 n : ℚ) / 2 - 1

end

end A194045.P8889057952998378704

/-! ## A194045.P9339986130128607837

`2*(∑[A085192(n)]-A085192(n))`
-/

namespace A194045.P9339986130128607837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A085192 n)

end

end A194045.P9339986130128607837

/-! ## A194045.P17846940940304942566

`A014486(n)+A014486(n%(n+1))`
-/

namespace A194045.P17846940940304942566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n + A014486 (n % (n + 1))

end

end A194045.P17846940940304942566

/-! ## A194045.P7440572124555384107

`A014486(A005843(n)/2)+A014486(n)`
-/

namespace A194045.P7440572124555384107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A014486 n

end

end A194045.P7440572124555384107

/-! ## A194045.P6858479133155626001

`A014486(n)/2^A008683(A051698(n))`
-/

namespace A194045.P6858479133155626001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014486 n : ℚ) / (2 : ℚ) ^ (A008683 (A051698 n).toNat : ℤ)

end

end A194045.P6858479133155626001

/-! ## A194045.P15765602424981111366

`A014486(n)+A057520(n)+A057520(n)`
-/

namespace A194045.P15765602424981111366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n + (A057520 n + A057520 n)

end

end A194045.P15765602424981111366

/-! ## A194045.P13316079932088161424

`A014486(n+1)+A014486(n)-A085192(n)`
-/

namespace A194045.P13316079932088161424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (n + 1) + (A014486 n - A085192 n)

end

end A194045.P13316079932088161424

/-! ## A194045.P16924266438400666817

`2*A085183(A057548(n))`
-/

namespace A194045.P16924266438400666817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085183 (A057548 n).toNat

end

end A194045.P16924266438400666817

/-! ## A194045.P4032734045332161668

`2*lt[0, A080116(n)]`
-/

namespace A194045.P4032734045332161668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A194045.P4032734045332161668

/-! ## A194045.P3790551798728752011

`A014486(n)+lt[0, A080116(n)]`
-/

namespace A194045.P3790551798728752011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A194045.P3790551798728752011

/-! ## A194045.P8635238406316661759

`A008586(A057520(n))`
-/

namespace A194045.P8635238406316661759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A057520 n).toNat

end

end A194045.P8635238406316661759

/-! ## A194045.P10744422986413795115

`A008586(A014486(n)/2)`
-/

namespace A194045.P10744422986413795115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (SequenceMachineLib.roundAway ((A014486 n : ℚ) / 2)).toNat

end

end A194045.P10744422986413795115

/-! ## A194045.P8548993919699128125

`A016825(A014486(n)/2)-2`
-/

namespace A194045.P8548993919699128125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (SequenceMachineLib.roundAway ((A014486 n : ℚ) / 2)).toNat - 2

end

end A194045.P8548993919699128125

/-! ## A194045.P4654159422298494791

`∩[A036993(n+1), A089648(n+1)]`
-/

namespace A194045.P4654159422298494791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194045.P4654159422298494791

/-! ## A194045.P17638116068696876239

`A005843(A014486(n))`
-/

namespace A194045.P17638116068696876239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A014486 n).toNat

end

end A194045.P17638116068696876239

/-! ## A194045.P13789579452214409298

`A168273(A014486(n)+1)`
-/

namespace A194045.P13789579452214409298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (A014486 n + 1).toNat

end

end A194045.P13789579452214409298

/-! ## A194045.P5591633746475214503

`A014601(lcm(2, A014486(n)))`
-/

namespace A194045.P5591633746475214503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (Int.lcm 2 (A014486 n))

end

end A194045.P5591633746475214503

/-! ## A194045.P14237240416418339971

`eq[A274575(n), A343049(n)]`
-/

namespace A194045.P14237240416418339971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194045.P14237240416418339971

/-!
# A194046: Natural interspersion of A052905, a rectangular array, by antidiagonals.

The programs for A194046, there is no canonical definition to state claims against.
-/

/-! ## A194046.P10485702415839528262

`A063929(A077168(n))-A329854(n)`
-/

namespace A194046.P10485702415839528262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063929 (A077168 n).toNat - A329854 n

end

end A194046.P10485702415839528262

/-!
# A194050: Natural fractal sequence of A014739.

The programs for A194050, there is no canonical definition to state claims against.
-/

/-! ## A194050.P8850055107490713749

`4-A000032(A130241(n+3))+n`
-/

namespace A194050.P8850055107490713749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A000032 (A130241 (n + 3)).toNat + (n : ℤ)

end

end A194050.P8850055107490713749

/-! ## A194050.P16543320508046882188

`4-A352717(n+3)+n`
-/

namespace A194050.P16543320508046882188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A352717 (n + 3) + (n : ℤ)

end

end A194050.P16543320508046882188

/-! ## A194050.P11858041216510629564

`A073424(A033586(n))+A002260(A194052(n+1))`
-/

namespace A194050.P11858041216510629564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A033586 n).toNat + A002260 (A194052 (n + 1)).toNat

end

end A194050.P11858041216510629564

/-! ## A194050.P13404467746448241354

`A194029(A194030(A194052(n+1)))`
-/

namespace A194050.P13404467746448241354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194029 (A194030 (A194052 (n + 1)).toNat).toNat

end

end A194050.P13404467746448241354

/-!
# A194052: Inverse permutation to A194051; every positive integer occurs exactly once.

The programs for A194052, there is no canonical definition to state claims against.
-/

/-! ## A194052.P8143027170278565451

`A066181(A066181(n+1)%A066226(n+1))`
-/

namespace A194052.P8143027170278565451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066181 (Int.tmod (A066181 (n + 1)) (A066226 (n + 1))).toNat

end

end A194052.P8143027170278565451

/-! ## A194052.P6850477617707197162

`A066181(A066181(n+1))%A318567(n+3)`
-/

namespace A194052.P6850477617707197162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066181 (A066181 (n + 1)).toNat) (A318567 (n + 3))

end

end A194052.P6850477617707197162

/-! ## A194052.P13953075106696594529

`A194067(n+3)-A211100(A020737(n))`
-/

namespace A194052.P13953075106696594529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194067 (n + 3) - A211100 (A020737 n).toNat

end

end A194052.P13953075106696594529

/-!
# A194053: Natural fractal sequence of A054347.

The programs for A194053, there is no canonical definition to state claims against.
-/

/-! ## A194053.P10189396213778708694

`A194107(lt[1-and(2, n), A194107(n+1)])`
-/

namespace A194053.P10189396213778708694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194107 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194053.P10189396213778708694

/-! ## A194053.P5576610004431419066

`A194107(lt[A358680(n), A194107(n+1)])`
-/

namespace A194053.P5576610004431419066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194107 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194053.P5576610004431419066

/-! ## A194053.P15279775281932052040

`A002260(A194058(n+1))`
-/

namespace A194053.P15279775281932052040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194058 (n + 1)).toNat

end

end A194053.P15279775281932052040

/-! ## A194053.P1175195014185209385

`A002262(A194058(n+1)-1)+1`
-/

namespace A194053.P1175195014185209385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A194058 (n + 1) - 1).toNat + 1

end

end A194053.P1175195014185209385

/-! ## A194053.P9958412999227975476

`A193042(A194100(A194058(A194058(A194054(n+1)))))`
-/

namespace A194053.P9958412999227975476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193042 (A194100 (A194058 (A194058 (A194054 (n + 1)).toNat).toNat).toNat).toNat

end

end A194053.P9958412999227975476

/-!
# A194054: Natural interspersion of A054347; a rectangular array, by antidiagonals.

The programs for A194054, there is no canonical definition to state claims against.
-/

/-! ## A194054.P8106287837114143224

`A194064(n+1)+A012245(A008713(n))`
-/

namespace A194054.P8106287837114143224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194064 (n + 1) + A012245 (A008713 n).toNat

end

end A194054.P8106287837114143224

/-! ## A194054.P7161465448143898303

`A194064(n+1)+A172543(A038722(n+1))`
-/

namespace A194054.P7161465448143898303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194064 (n + 1) + A172543 (A038722 (n + 1)).toNat

end

end A194054.P7161465448143898303

/-! ## A194054.P5993685409409517767

`A194064(n+1)+A172543(A064789(n+1))`
-/

namespace A194054.P5993685409409517767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194064 (n + 1) + A172543 (A064789 (n + 1)).toNat

end

end A194054.P5993685409409517767

/-! ## A194054.P5028699124335943876

`A321537(A187829(n+1))+A194064(n+1)`
-/

namespace A194054.P5028699124335943876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A187829 (n + 1)).toNat + A194064 (n + 1)

end

end A194054.P5028699124335943876

/-! ## A194054.P8199570552593472044

`A374222(A276085(n+5))+A194064(n+1)`
-/

namespace A194054.P8199570552593472044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374222 (A276085 (n + 5)).toNat + A194064 (n + 1)

end

end A194054.P8199570552593472044

/-!
# A194055: Natural fractal sequence of A000071 (Fibonacci numbers minus 1).

The programs for A194055, there is no canonical definition to state claims against.
-/

/-! ## A194055.P10451253012154373668

`A194029(n+2)`
-/

namespace A194055.P10451253012154373668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194029 (n + 2)

end

end A194055.P10451253012154373668

/-! ## A194055.P7728833324721553004

`A066628(n+2)+1`
-/

namespace A194055.P7728833324721553004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (n + 2) + 1

end

end A194055.P7728833324721553004

/-! ## A194055.P14142153206626124510

`3-A087172(n+2)+n`
-/

namespace A194055.P14142153206626124510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A087172 (n + 2) + (n : ℤ)

end

end A194055.P14142153206626124510

/-! ## A194055.P6396689779554113610

`n+3-A082524(n+3)`
-/

namespace A194055.P6396689779554113610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A082524 (n + 3)

end

end A194055.P6396689779554113610

/-! ## A194055.P9545979542214051179

`∑[Δ[-A087172(n+1)]+1]+1`
-/

namespace A194055.P9545979542214051179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A087172 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194055.P9545979542214051179

/-! ## A194055.P3526611615691276295

`gcd(a(n-1)+1, Δ[A095791(n)])` with `a(0)=1`
-/

namespace A194055.P3526611615691276295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A194055.P3526611615691276295

/-! ## A194055.P7422684071860896326

`3-A000045(floor(log((n+2)²))+2)+n`
-/

namespace A194055.P7422684071860896326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000045 (⌊Real.log ((n + 2) ^ 2 : ℝ)⌋ + 2).toNat + (n : ℤ)

end

end A194055.P7422684071860896326

/-! ## A194055.P14630013206572329871

`A280514(A132665(n+1))`
-/

namespace A194055.P14630013206572329871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280514 (A132665 (n + 1)).toNat

end

end A194055.P14630013206572329871

/-! ## A194055.P10677862670160495799

`A342297(A342297(n+3))`
-/

namespace A194055.P10677862670160495799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342297 (A342297 (n + 3)).toNat

end

end A194055.P10677862670160495799

/-! ## A194055.P6939758330125199236

`n+1-A361989(A246104(n+1))`
-/

namespace A194055.P6939758330125199236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A361989 (A246104 (n + 1)).toNat

end

end A194055.P6939758330125199236

/-!
# A194058: Inverse permutation to A194054; every positive integer occurs exactly once.

The programs for A194058, there is no canonical definition to state claims against.
-/

/-! ## A194058.P13606708781749982696

`A194065(A008554(n+1)+1)`
-/

namespace A194058.P13606708781749982696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194065 (A008554 (n + 1) + 1).toNat

end

end A194058.P13606708781749982696

/-! ## A194058.P2865264761837330397

`A194065(A229621(n+1)+1)`
-/

namespace A194058.P2865264761837330397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194065 (A229621 (n + 1) + 1).toNat

end

end A194058.P2865264761837330397

/-! ## A194058.P7533647584262175006

`A244173(n)!*A194065(n+1)`
-/

namespace A194058.P7533647584262175006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A244173 (n + 10)).toNat : ℤ) * A194065 (n + 1)

end

end A194058.P7533647584262175006

/-! ## A194058.P16101913638182106792

`A194065(A077342(n+1))`
-/

namespace A194058.P16101913638182106792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194065 (A077342 (n + 1)).toNat

end

end A194058.P16101913638182106792

/-!
# A194059: Natural interspersion of A001911 (Fibonacci numbers minus 2); a rectangular array, by antidiagonals.

The programs for A194059, there is no canonical definition to state claims against.
-/

/-! ## A194059.P8184781559218279121

`A180199(A191655(n+1)%A103392(3*n+1))`
-/

namespace A194059.P8184781559218279121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180199 (Int.tmod (A191655 (n + 1)) (A103392 (3 * n + 1))).toNat

end

end A194059.P8184781559218279121

/-!
# A194061: Natural interspersion of A002620; a rectangular array, by antidiagonals.

The programs for A194061, there is no canonical definition to state claims against.
-/

/-! ## A194061.P5847734806422229745

`A056537(A066182(n+1)+1)-1`
-/

namespace A194061.P5847734806422229745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056537 (A066182 (n + 1) + 1).toNat - 1

end

end A194061.P5847734806422229745

/-!
# A194063: Natural fractal sequence of A006578.

The programs for A194063, there is no canonical definition to state claims against.
-/

/-! ## A194063.P13281130175751890763

`A002260(record[A213927(n+2)])`
-/

namespace A194063.P13281130175751890763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213927 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A194063.P13281130175751890763

/-! ## A194063.P938896365568648660

`A002260(lt[0, A204435(n+1)]+2)`
-/

namespace A194063.P938896365568648660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A194063.P938896365568648660

/-! ## A194063.P14871476287966258287

`A002260(eq[1, A204435(n+1)]+2)`
-/

namespace A194063.P14871476287966258287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A194063.P14871476287966258287

/-! ## A194063.P260432983205979989

`A002262(record[A213927(n+2)]-1)+1`
-/

namespace A194063.P260432983205979989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213927 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1).toNat + 1

end

end A194063.P260432983205979989

/-! ## A194063.P3050562619382734937

`A131818(record[A213927(n+2)]+1)-1`
-/

namespace A194063.P3050562619382734937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213927 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat - 1

end

end A194063.P3050562619382734937

/-! ## A194063.P5031745385368030821

`A002262(eq[1, A204435(n+1)]+1)+1`
-/

namespace A194063.P5031745385368030821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A194063.P5031745385368030821

/-! ## A194063.P13255604348960852415

`A092543(A056011(record[A213927(n+2)]))`
-/

namespace A194063.P13255604348960852415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213927 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (A056011 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A194063.P13255604348960852415

/-! ## A194063.P17620825166326550202

`A092542(A056023(record[A213927(n+2)]))`
-/

namespace A194063.P17620825166326550202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213927 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092542 (A056023 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A194063.P17620825166326550202

/-! ## A194063.P12833643639812829433

`A048298(A140212(n+1))+A002260(A194065(n+1))`
-/

namespace A194063.P12833643639812829433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A140212 (n + 1)).toNat + A002260 (A194065 (n + 1)).toNat

end

end A194063.P12833643639812829433

/-!
# A194064: Natural interspersion of A006578; a rectangular array, by antidiagonals.

The programs for A194064, there is no canonical definition to state claims against.
-/

/-! ## A194064.P12736776513343030290

`A194054(n+1)+A178779(A055461(n+1))`
-/

namespace A194064.P12736776513343030290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194054 (n + 1) + A178779 (A055461 (n + 1)).toNat

end

end A194064.P12736776513343030290

/-! ## A194064.P18173724395558519726

`A194054(n+1)-A172543(A038722(n+1))`
-/

namespace A194064.P18173724395558519726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194054 (n + 1) - A172543 (A038722 (n + 1)).toNat

end

end A194064.P18173724395558519726

/-! ## A194064.P12208626261728395112

`A194054(n+1)-A321537(A187829(n+1))`
-/

namespace A194064.P12208626261728395112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194054 (n + 1) - A321537 (A187829 (n + 1)).toNat

end

end A194064.P12208626261728395112

/-! ## A194064.P7730901613598883430

`A065200(A194038(n*A174544(n)))`
-/

namespace A194064.P7730901613598883430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (A194038 ((n : ℤ) * A174544 n).toNat).toNat

end

end A194064.P7730901613598883430

/-!
# A194066: Natural fractal sequence of A087483.

The programs for A194066, there is no canonical definition to state claims against.
-/

/-! ## A194066.P12908357494311900666

`ceil(A071797(3*(n+1))/3)`
-/

namespace A194066.P12908357494311900666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A071797 (3 * (n + 1)) : ℚ) / 3⌉

end

end A194066.P12908357494311900666

/-! ## A194066.P878204217525783135

`ceil(A053186(3*n+2)/3)`
-/

namespace A194066.P878204217525783135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053186 (3 * n + 2) : ℚ) / 3⌉

end

end A194066.P878204217525783135

/-! ## A194066.P9531780955905078101

`round(A071797(3*n+3)/3)`
-/

namespace A194066.P9531780955905078101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A071797 (3 * n + 3) : ℚ) / 3)

end

end A194066.P9531780955905078101

/-! ## A194066.P10200873573617524130

`floor(A053186(3*n+1)/3)+1`
-/

namespace A194066.P10200873573617524130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053186 (3 * n + 1) : ℚ) / 3⌋ + 1

end

end A194066.P10200873573617524130

/-! ## A194066.P10380297844245628742

`n+1-floor(A048760(3*n+1)/3)`
-/

namespace A194066.P10380297844245628742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊(A048760 (3 * n + 1) : ℚ) / 3⌋

end

end A194066.P10380297844245628742

/-! ## A194066.P5280798065017792849

`floor(A071797(2*n+n+3)/log2(9))+1`
-/

namespace A194066.P5280798065017792849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071797 (2 * n + (n + 3)) : ℝ) / Real.logb 2 (9 : ℝ)⌋ + 1

end

end A194066.P5280798065017792849

/-! ## A194066.P1792661038488949371

`A053186(lt[2*(n-floor(sqrt(n))²)+n, ceil(sqrt(n))²])`
-/

namespace A194066.P1792661038488949371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194066.P1792661038488949371

/-! ## A194066.P4279525506485700725

`A071797(lt[2*(n-floor(sqrt(n))²)+n, ceil(sqrt(n))²])`
-/

namespace A194066.P4279525506485700725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194066.P4279525506485700725

/-! ## A194066.P2856360546436706189

`A128227(eq[0, A098172(n)])`
-/

namespace A194066.P2856360546436706189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194066.P2856360546436706189

/-! ## A194066.P8797433153204767137

`A193738(eq[0, A098172(n)])`
-/

namespace A194066.P8797433153204767137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194066.P8797433153204767137

/-!
# A194067: Natural interspersion of A087483; a rectangular array, by antidiagonals.

The programs for A194067, there is no canonical definition to state claims against.
-/

/-! ## A194067.P16001064686574673353

`A194071(A194012(2*(n+1)))/2`
-/

namespace A194067.P16001064686574673353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194071 (A194012 (2 * (n + 1))).toNat : ℚ) / 2

end

end A194067.P16001064686574673353

/-! ## A194067.P3264950923619197918

`A191710(n+1)-A324088(A306915(n))`
-/

namespace A194067.P3264950923619197918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191710 (n + 1) - A324088 (A306915 n).toNat

end

end A194067.P3264950923619197918

/-!
# A194069: a(n) = 1+floor((2/3)*n^2).

The programs for A194069, the canonical program `A194069.P9912321393971428927` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194069 has offset 1).

The definition of A194069 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+floor(2/3*(n+1)²)` (program `A194069.P9912321393971428927`, by `A194069.P9912321393971428927.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A194069.P9912321393971428927

`1+floor(2/3*(n+1)²)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194069

/-- `1+floor(2/3*(n+1)²)` -/
def P9912321393971428927.Spec : Prop :=
  ∀ n, P9912321393971428927.a n = A194069 (n + 1)

theorem P9912321393971428927.correct : P9912321393971428927.Spec := by
  intro n
  simp only [A194069, Nat.add_sub_cancel]

end A194069

/-! ## A194069.P10528140317630667913

`or(1, ∑[comp[4*n]])`
-/

namespace A194069.P10528140317630667913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194069.P10528140317630667913

namespace A194069

/-- `or(1, ∑[comp[4*n]])` -/
def P10528140317630667913.Spec : Prop :=
  ∀ n, (P10528140317630667913.a n : ℤ) = A194069 (n + 1)

end A194069

/-! ## A194069.P13993163374998258753

`ceil(2/(3*acot((n+1)²)))`
-/

namespace A194069.P13993163374998258753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (3 * SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ))⌉

end

end A194069.P13993163374998258753

namespace A194069

/-- `ceil(2/(3*acot((n+1)²)))` -/
def P13993163374998258753.Spec : Prop :=
  ∀ n, P13993163374998258753.a n = A194069 (n + 1)

end A194069

/-! ## A194069.P8865078328686962873

`∑[a(n-3)+4]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=4`
-/

namespace A194069.P8865078328686962873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 4] fun n f1 =>
  f1 (n - 3) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194069.P8865078328686962873

namespace A194069

/-- `∑[a(n-3)+4]` -/
def P8865078328686962873.Spec : Prop :=
  ∀ n, (P8865078328686962873.a n : ℤ) = A194069 (n + 1)

end A194069

/-! ## A194069.P8281008752025436550

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=0, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A194069.P8281008752025436550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 0, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194069.P8281008752025436550

namespace A194069

/-- `∑[∑[floor(a(n-3))]]` -/
def P8281008752025436550.Spec : Prop :=
  ∀ n, (P8281008752025436550.a n : ℤ) = A194069 (n + 1)

end A194069

/-! ## A194069.P9494958488415156206

`xor(1, ceil(2*n*(n+2)/3))`
-/

namespace A194069.P9494958488415156206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌈(2 * n : ℚ) * ((n + 2 : ℚ) / 3)⌉

end

end A194069.P9494958488415156206

namespace A194069

/-- `xor(1, ceil(2*n*(n+2)/3))` -/
def P9494958488415156206.Spec : Prop :=
  ∀ n, P9494958488415156206.a n = A194069 (n + 1)

end A194069

/-! ## A194069.P7621422193165749959

`ceil(C(2*n+1, 2)/3+n+1)`
-/

namespace A194069.P7621422193165749959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n + 1) 2 : ℚ) / 3 + (n + 1 : ℚ)⌉

end

end A194069.P7621422193165749959

namespace A194069

/-- `ceil(C(2*n+1, 2)/3+n+1)` -/
def P7621422193165749959.Spec : Prop :=
  ∀ n, P7621422193165749959.a n = A194069 (n + 1)

end A194069

/-! ## A194069.P6005836298396751479

`ceil(lcm(n, 2*n+1)/3+n+1)`
-/

namespace A194069.P6005836298396751479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm n (2 * n + 1) : ℚ) / 3 + (n + 1 : ℚ)⌉

end

end A194069.P6005836298396751479

namespace A194069

/-- `ceil(lcm(n, 2*n+1)/3+n+1)` -/
def P6005836298396751479.Spec : Prop :=
  ∀ n, P6005836298396751479.a n = A194069 (n + 1)

end A194069

/-! ## A194069.P14045901730385832818

`∑[A063200(n+1)]`
-/

namespace A194069.P14045901730385832818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194069.P14045901730385832818

namespace A194069

/-- `∑[A063200(n+1)]` -/
def P14045901730385832818.Spec : Prop :=
  ∀ n, P14045901730385832818.a n = A194069 (n + 1)

end A194069

/-! ## A194069.P9640591451218642297

`∪[A186424(n), A227776(n)]`
-/

namespace A194069.P9640591451218642297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227776 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A194069.P9640591451218642297

namespace A194069

/-- `∪[A186424(n), A227776(n)]` -/
def P9640591451218642297.Spec : Prop :=
  ∀ n, (P9640591451218642297.a n : ℤ) = A194069 (n + 1)

end A194069

/-! ## A194069.P1111474953734441013

`A202253(n+1)%A030511(n+3)`
-/

namespace A194069.P1111474953734441013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202253 (n + 1)) (A030511 (n + 3))

end

end A194069.P1111474953734441013

namespace A194069

/-- `A202253(n+1)%A030511(n+3)` -/
def P1111474953734441013.Spec : Prop :=
  ∀ n, P1111474953734441013.a n = A194069 (n + 1)

end A194069

/-! ## A194069.P16889574204812627152

`A016825(A000212(n+1))/2`
-/

namespace A194069.P16889574204812627152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A000212 (n + 1)).toNat : ℚ) / 2

end

end A194069.P16889574204812627152

namespace A194069

/-- `A016825(A000212(n+1))/2` -/
def P16889574204812627152.Spec : Prop :=
  ∀ n, P16889574204812627152.a n = (A194069 (n + 1) : ℚ)

end A194069

/-! ## A194069.P11318451093712166586

`A047529(A033638(n+1))`
-/

namespace A194069.P11318451093712166586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (A033638 (n + 1)).toNat

end

end A194069.P11318451093712166586

namespace A194069

/-- `A047529(A033638(n+1))` -/
def P11318451093712166586.Spec : Prop :=
  ∀ n, P11318451093712166586.a n = A194069 (n + 1)

end A194069

/-! ## A194069.P7552921137502465554

`A004273(A087483(n))`
-/

namespace A194069.P7552921137502465554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A087483 n).toNat

end

end A194069.P7552921137502465554

namespace A194069

/-- `A004273(A087483(n))` -/
def P7552921137502465554.Spec : Prop :=
  ∀ n, P7552921137502465554.a n = A194069 (n + 1)

end A194069

/-! ## A194069.P3189808911857344292

`A014681(A053799(n+1))`
-/

namespace A194069.P3189808911857344292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A053799 (n + 1)).toNat

end

end A194069.P3189808911857344292

namespace A194069

/-- `A014681(A053799(n+1))` -/
def P3189808911857344292.Spec : Prop :=
  ∀ n, P3189808911857344292.a n = A194069 (n + 1)

end A194069

/-! ## A194069.P1995514362666010202

`A138187(n*(n+2))`
-/

namespace A194069.P1995514362666010202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138187 (n * (n + 2))

end

end A194069.P1995514362666010202

namespace A194069

/-- `A138187(n*(n+2))` -/
def P1995514362666010202.Spec : Prop :=
  ∀ n, P1995514362666010202.a n = A194069 (n + 1)

end A194069

/-! ## A194069.P16864108087018542428

`A099254(A005843((n+1)²))`
-/

namespace A194069.P16864108087018542428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 (A005843 ((n + 1) ^ 2)).toNat

end

end A194069.P16864108087018542428

namespace A194069

/-- `A099254(A005843((n+1)²))` -/
def P16864108087018542428.Spec : Prop :=
  ∀ n, P16864108087018542428.a n = A194069 (n + 1)

end A194069

/-!
# A194070: Natural fractal sequence of A194069.

The programs for A194070, there is no canonical definition to state claims against.
-/

/-! ## A194070.P14697257859329415205

`A002260(A194072(n+1))`
-/

namespace A194070.P14697257859329415205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194072 (n + 1)).toNat

end

end A194070.P14697257859329415205

/-! ## A194070.P8022696414327421701

`A002262(A194072(n+1)-1)+1`
-/

namespace A194070.P8022696414327421701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A194072 (n + 1) - 1).toNat + 1

end

end A194070.P8022696414327421701

/-! ## A194070.P4845996278209457158

`A131818(A194072(n+1)+1)-1`
-/

namespace A194070.P4845996278209457158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A194072 (n + 1) + 1).toNat - 1

end

end A194070.P4845996278209457158

/-! ## A194070.P4846360870849793133

`A181118(2*A194072(n+1))`
-/

namespace A194070.P4846360870849793133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (2 * A194072 (n + 1)).toNat

end

end A194070.P4846360870849793133

/-!
# A194071: Natural interspersion of A194069; a rectangular array, by antidiagonals.

The programs for A194071, there is no canonical definition to state claims against.
-/

/-! ## A194071.P13014598617152323726

`A194846(A194104(n+1)%A033266(n+1))`
-/

namespace A194071.P13014598617152323726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194846 (Int.tmod (A194104 (n + 1)) (A033266 (n + 1))).toNat

end

end A194071.P13014598617152323726

/-! ## A194071.P1210834030707216540

`A194846(A194104(n+1))%A062572(n+1)`
-/

namespace A194071.P1210834030707216540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194846 (A194104 (n + 1)).toNat) (A062572 (n + 1))

end

end A194071.P1210834030707216540

/-! ## A194071.P14883670084600997395

`A246696(A061579(n*A251072(n)))`
-/

namespace A194071.P14883670084600997395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246696 (A061579 ((n : ℤ) * A251072 n).toNat).toNat

end

end A194071.P14883670084600997395

/-! ## A194071.P15003549873114113123

`A246696(A061579(n^A047996(n)))`
-/

namespace A194071.P15003549873114113123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246696 (A061579 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A047996 n : ℤ))).toNat).toNat

end

end A194071.P15003549873114113123

/-! ## A194071.P6684595596374426715

`A246696(A061579(n^A052307(n)))`
-/

namespace A194071.P6684595596374426715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246696 (A061579 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A052307 n : ℤ))).toNat).toNat

end

end A194071.P6684595596374426715

/-!
# A194072: Inverse permutation to A194071; every positive integer occurs exactly once.

The programs for A194072, there is no canonical definition to state claims against.
-/

/-! ## A194072.P1800377305706137704

`A194105(A194845(n+1)%A194133(2*n+5))`
-/

namespace A194072.P1800377305706137704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194105 (Int.tmod (A194845 (n + 1)) (A194133 (2 * n + 5))).toNat

end

end A194072.P1800377305706137704

/-! ## A194072.P6817821552363971533

`A194105(A194845(n+1)%A188224(n+3))`
-/

namespace A194072.P6817821552363971533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194105 (Int.tmod (A194845 (n + 1)) (A188224 (n + 3))).toNat

end

end A194072.P6817821552363971533

/-! ## A194072.P4137052003684488038

`A194105(A194845(n+1))%A067191(n+1)`
-/

namespace A194072.P4137052003684488038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194105 (A194845 (n + 1)).toNat) (A067191 (n + 1))

end

end A194072.P4137052003684488038

/-! ## A194072.P15230511802198707112

`A194105(A194056(n+1)%A033266(n+1))`
-/

namespace A194072.P15230511802198707112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194105 (Int.tmod (A194056 (n + 1)) (A033266 (n + 1))).toNat

end

end A194072.P15230511802198707112

/-! ## A194072.P16659180743034268393

`A194105(lcm(A194056(n+1), A194845(n+1)))`
-/

namespace A194072.P16659180743034268393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194105 (Int.lcm (A194056 (n + 1)) (A194845 (n + 1)))

end

end A194072.P16659180743034268393

/-!
# A194073: a(n) = 1 + floor((3/4)*n^2).

The programs for A194073, the canonical program `A194073.P4165119663438313977` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194073 has offset 1).

The definition of A194073 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+floor(3/4*(n+1)²)` (program `A194073.P4165119663438313977`, by `A194073.P4165119663438313977.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A194073.P4165119663438313977

`1+floor(3/4*(n+1)²)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194073

/-- `1+floor(3/4*(n+1)²)` -/
def P4165119663438313977.Spec : Prop :=
  ∀ n, P4165119663438313977.a n = A194073 (n + 1)

theorem P4165119663438313977.correct : P4165119663438313977.Spec := by
  intro n
  simp only [A194073, Nat.add_sub_cancel]

end A194073

/-! ## A194073.P8000452399961783729

`∑[a(n-2)+3]` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A194073.P8000452399961783729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194073.P8000452399961783729

namespace A194073

/-- `∑[a(n-2)+3]` -/
def P8000452399961783729.Spec : Prop :=
  ∀ n, (P8000452399961783729.a n : ℤ) = A194073 (n + 1)

end A194073

/-! ## A194073.P15737886688884845522

`∑[∑[3-a(n-1)]]` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A194073.P15737886688884845522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194073.P15737886688884845522

namespace A194073

/-- `∑[∑[3-a(n-1)]]` -/
def P15737886688884845522.Spec : Prop :=
  ∀ n, P15737886688884845522.a n = A194073 (n + 1)

end A194073

/-! ## A194073.P8038963096109033596

`ogf((1+2x-x^2+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A194073.P8038963096109033596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1, 1] [1, -2, 0, 2, -1] n

end

end A194073.P8038963096109033596

namespace A194073

/-- `ogf((1+2x-x^2+x^3)/(1-2x+2x^3-x^4))` -/
def P8038963096109033596.Spec : Prop :=
  ∀ n, P8038963096109033596.a n = A194073 (n + 1)

end A194073

/-! ## A194073.P13922655394137332447

`3*(a(n-2)/3+n)` with `a(0)=1, a(1)=4`
-/

namespace A194073.P13922655394137332447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * (a (n - 2) / 3 + (n : ℚ))

end

end A194073.P13922655394137332447

namespace A194073

/-- `3*(a(n-2)/3+n)` -/
def P13922655394137332447.Spec : Prop :=
  ∀ n, P13922655394137332447.a n = (A194073 (n + 1) : ℚ)

end A194073

/-! ## A194073.P4273436636090273146

`floor(4*n-(n-a(n-2)))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A194073.P4273436636090273146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (4 * n : ℤ) - ((n : ℤ) - a (n - 2))

end

end A194073.P4273436636090273146

namespace A194073

/-- `floor(4*n-(n-a(n-2)))` -/
def P4273436636090273146.Spec : Prop :=
  ∀ n, P4273436636090273146.a n = A194073 (n + 1)

end A194073

/-! ## A194073.P13298216234507402757

`floor(a(n-2)+n+n+n)` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A194073.P13298216234507402757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + n + n + n

end

end A194073.P13298216234507402757

namespace A194073

/-- `floor(a(n-2)+n+n+n)` -/
def P13298216234507402757.Spec : Prop :=
  ∀ n, (P13298216234507402757.a n : ℤ) = A194073 (n + 1)

end A194073

/-! ## A194073.P1128104838774433518

`4*(n-(n-a(n-2))/4)` with `a(0)=1, a(1)=4`
-/

namespace A194073.P1128104838774433518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * ((n : ℚ) - ((n : ℚ) - a (n - 2)) / 4)

end

end A194073.P1128104838774433518

namespace A194073

/-- `4*(n-(n-a(n-2))/4)` -/
def P1128104838774433518.Spec : Prop :=
  ∀ n, P1128104838774433518.a n = (A194073 (n + 1) : ℚ)

end A194073

/-! ## A194073.P12695046931676439918

`∑[A008486(ceil(n/2))]`
-/

namespace A194073.P12695046931676439918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194073.P12695046931676439918

namespace A194073

/-- `∑[A008486(ceil(n/2))]` -/
def P12695046931676439918.Spec : Prop :=
  ∀ n, P12695046931676439918.a n = A194073 (n + 1)

end A194073

/-! ## A194073.P16080759533763909304

`∑[A298027(n)]/(n+1)`
-/

namespace A194073.P16080759533763909304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298027 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A194073.P16080759533763909304

namespace A194073

/-- `∑[A298027(n)]/(n+1)` -/
def P16080759533763909304.Spec : Prop :=
  ∀ n, P16080759533763909304.a n = (A194073 (n + 1) : ℚ)

end A194073

/-! ## A194073.P6232281937184561009

`(A248434(n+1)-n)/2`
-/

namespace A194073.P6232281937184561009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248434 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A194073.P6232281937184561009

namespace A194073

/-- `(A248434(n+1)-n)/2` -/
def P6232281937184561009.Spec : Prop :=
  ∀ n, P6232281937184561009.a n = (A194073 (n + 1) : ℚ)

end A194073

/-! ## A194073.P2973186869291890513

`∪[A003215(n), A056107(n)]`
-/

namespace A194073.P2973186869291890513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A194073.P2973186869291890513

namespace A194073

/-- `∪[A003215(n), A056107(n)]` -/
def P2973186869291890513.Spec : Prop :=
  ∀ n, (P2973186869291890513.a n : ℤ) = A194073 (n + 1)

end A194073

/-! ## A194073.P3655986810829693553

`A099776(n+1)%A101424(n)`
-/

namespace A194073.P3655986810829693553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099776 (n + 1)) (A101424 n)

end

end A194073.P3655986810829693553

namespace A194073

/-- `A099776(n+1)%A101424(n)` -/
def P3655986810829693553.Spec : Prop :=
  ∀ n, P3655986810829693553.a n = A194073 (n + 1)

end A194073

/-! ## A194073.P12711408519419230067

`A394240(n+3)%A241199(n+1)`
-/

namespace A194073.P12711408519419230067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394240 (n + 3)) (A241199 (n + 1))

end

end A194073.P12711408519419230067

namespace A194073

/-- `A394240(n+3)%A241199(n+1)` -/
def P12711408519419230067.Spec : Prop :=
  ∀ n, P12711408519419230067.a n = A194073 (n + 1)

end A194073

/-! ## A194073.P2335508612854917516

`∑[lt[n, A283443(n)+1]+char[2*n+1]+1]`
-/

namespace A194073.P2335508612854917516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + (if ∃ j, f4 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194073.P2335508612854917516

namespace A194073

/-- `∑[lt[n, A283443(n)+1]+char[2*n+1]+1]` -/
def P2335508612854917516.Spec : Prop :=
  ∀ n, (P2335508612854917516.a n : ℤ) = A194073 (n + 1)

end A194073

/-! ## A194073.P16802116344072044942

`A305185(A001651(n+2))`
-/

namespace A194073.P16802116344072044942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305185 (A001651 (n + 2)).toNat

end

end A194073.P16802116344072044942

namespace A194073

/-- `A305185(A001651(n+2))` -/
def P16802116344072044942.Spec : Prop :=
  ∀ n, P16802116344072044942.a n = A194073 (n + 1)

end A194073

/-! ## A194073.P4338361794757903117

`A275673(3*n+1)`
-/

namespace A194073.P4338361794757903117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275673 (3 * n + 1)

end

end A194073.P4338361794757903117

namespace A194073

/-- `A275673(3*n+1)` -/
def P4338361794757903117.Spec : Prop :=
  ∀ n, P4338361794757903117.a n = A194073 (n + 1)

end A194073

/-! ## A194073.P4995602281414043067

`∑[A194272(A008486(n))]`
-/

namespace A194073.P4995602281414043067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194272 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194073.P4995602281414043067

namespace A194073

/-- `∑[A194272(A008486(n))]` -/
def P4995602281414043067.Spec : Prop :=
  ∀ n, P4995602281414043067.a n = A194073 (n + 1)

end A194073

/-! ## A194073.P7006186459862620614

`A094909(3*(n+1))`
-/

namespace A194073.P7006186459862620614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094909 (3 * (n + 1))

end

end A194073.P7006186459862620614

namespace A194073

/-- `A094909(3*(n+1))` -/
def P7006186459862620614.Spec : Prop :=
  ∀ n, P7006186459862620614.a n = A194073 (n + 1)

end A194073

/-!
# A194074: Natural fractal sequence of A194073.

The programs for A194074, there is no canonical definition to state claims against.
-/

/-! ## A194074.P11812824312740000203

`A002260(A194076(n+1))`
-/

namespace A194074.P11812824312740000203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194076 (n + 1)).toNat

end

end A194074.P11812824312740000203

/-! ## A194074.P1104448643372540127

`A002262(A194076(n+1)-1)+1`
-/

namespace A194074.P1104448643372540127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A194076 (n + 1) - 1).toNat + 1

end

end A194074.P1104448643372540127

/-!
# A194076: Inverse permutation to A194075; every positive integer occurs exactly once.

The programs for A194076, there is no canonical definition to state claims against.
-/

/-! ## A194076.P7512524834526717844

`A163331(n)+A130663(n)!`
-/

namespace A194076.P7512524834526717844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163331 n + (Nat.factorial (A130663 n).toNat : ℤ)

end

end A194076.P7512524834526717844

/-! ## A194076.P4844022185420802869

`A163331(n)+A293025(n)!`
-/

namespace A194076.P4844022185420802869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163331 n + (Nat.factorial (A293025 n).toNat : ℤ)

end

end A194076.P4844022185420802869

/-! ## A194076.P10318405789261321104

`A163331(A130663(n)+n)+1`
-/

namespace A194076.P10318405789261321104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163331 (A130663 n + (n : ℤ)).toNat + 1

end

end A194076.P10318405789261321104

/-! ## A194076.P15531547626940387564

`(A163331(n)+1)%A181957(n)`
-/

namespace A194076.P15531547626940387564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163331 n + 1) (A181957 n)

end

end A194076.P15531547626940387564

/-! ## A194076.P7754891296225810161

`A163331(n)%A376678(3*n+2)+1`
-/

namespace A194076.P7754891296225810161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163331 n) (A376678 (3 * n + 2)) + 1

end

end A194076.P7754891296225810161

/-!
# A194077: Natural interspersion of A060432; a rectangular array, by antidiagonals.

The programs for A194077, there is no canonical definition to state claims against.
-/

/-! ## A194077.P13983072686095859422

`A232127(A243578(n+1))+A191709(n+1)`
-/

namespace A194077.P13983072686095859422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232127 (A243578 (n + 1)).toNat + A191709 (n + 1)

end

end A194077.P13983072686095859422

/-!
# A194079: Number of digits of A014980(n) in decimal representation.

The programs for A194079, there is no canonical definition to state claims against.
-/

/-! ## A194079.P16378007499824725800

`A226164(A003320(n))`
-/

namespace A194079.P16378007499824725800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226164 (A003320 n).toNat

end

end A194079.P16378007499824725800

/-! ## A194079.P5976391204498125701

`A342524(A058521(n+1))`
-/

namespace A194079.P5976391204498125701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342524 (A058521 (n + 1)).toNat

end

end A194079.P5976391204498125701

/-! ## A194079.P13582230531883781227

`A325044(A141002(n))-1`
-/

namespace A194079.P13582230531883781227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325044 (A141002 n).toNat - 1

end

end A194079.P13582230531883781227

/-! ## A194079.P7771600952704612886

`A105223(A243184(n+1)+A120588(n))`
-/

namespace A194079.P7771600952704612886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A243184 (n + 1) + A120588 n).toNat

end

end A194079.P7771600952704612886

/-! ## A194079.P13538014735849399797

`A125007(A084835(n+2)+2)+A087116(A208355(n))`
-/

namespace A194079.P13538014735849399797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125007 (A084835 (n + 2) + 2).toNat + A087116 (A208355 n).toNat

end

end A194079.P13538014735849399797

/-!
# A194080: Partial sums of the squarefree integers that are triangular.

The programs for A194080, there is no canonical definition to state claims against.
-/

/-! ## A194080.P783297059288720502

`∩[C(n+1, 2), A173143(n+1)]`
-/

namespace A194080.P783297059288720502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194080.P783297059288720502

/-! ## A194080.P4895298882933692595

`∩[A173143(n+1), A000217(n)]`
-/

namespace A194080.P4895298882933692595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194080.P4895298882933692595

/-! ## A194080.P17806991761035167106

`∩[A173143(n+1), A000096(n)+1]`
-/

namespace A194080.P17806991761035167106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194080.P17806991761035167106

/-!
# A194081: Smallest m such that A005375(m) = n.

The programs for A194081, the canonical program `A194081.P10160956596199185077` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194081 has offset 0).

The definition of A194081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194081.P10160956596199185077

`comp[A372397(n+1)+n+1]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194081

/-- `comp[A372397(n+1)+n+1]` -/
def P10160956596199185077.Spec : Prop :=
  ∀ n, (P10160956596199185077.a n : ℤ) = A194081 n

theorem P10160956596199185077.correct : P10160956596199185077.Spec := by
  intro n
  simp only [A194081]

end A194081

/-! ## A194081.P18008310098012070432

`eq[2, p?[A210243(A101608(n+1)+n)]]`
-/

namespace A194081.P18008310098012070432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210243 (A101608 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194081.P18008310098012070432

namespace A194081

/-- `eq[2, p?[A210243(A101608(n+1)+n)]]` -/
def P18008310098012070432.Spec : Prop :=
  ∀ n, (P18008310098012070432.a n : ℤ) = A194081 n

end A194081

/-! ## A194081.P9728308273483538893

`lt[A286998(A268448(n+1)), A080577(n+1)]`
-/

namespace A194081.P9728308273483538893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (A268448 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194081.P9728308273483538893

namespace A194081

/-- `lt[A286998(A268448(n+1)), A080577(n+1)]` -/
def P9728308273483538893.Spec : Prop :=
  ∀ n, (P9728308273483538893.a n : ℤ) = A194081 n

end A194081

/-! ## A194081.P12721234361690368705

`∑[A111616(A313580(n))]-1`
-/

namespace A194081.P12721234361690368705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111616 (A313580 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A194081.P12721234361690368705

namespace A194081

/-- `∑[A111616(A313580(n))]-1` -/
def P12721234361690368705.Spec : Prop :=
  ∀ n, P12721234361690368705.a n = A194081 n

end A194081

/-! ## A194081.P8849464878396454423

`A023443(∑[A111616(A313580(n))])`
-/

namespace A194081.P8849464878396454423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111616 (A313580 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194081.P8849464878396454423

namespace A194081

/-- `A023443(∑[A111616(A313580(n))])` -/
def P8849464878396454423.Spec : Prop :=
  ∀ n, P8849464878396454423.a n = A194081 n

end A194081

/-!
# A194082: a(n) = Sum_{k=1..n} floor(sqrt(3)*k/2).

The programs for A194082, the canonical program `A194082.P14594225591884525649` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194082 has offset 1).

The definition of A194082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194082.P5836668089053487947

`∑[floor((n+1)/2*sqrt(3))]`
-/

namespace A194082.P5836668089053487947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℚ) / 2 : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194082.P5836668089053487947

namespace A194082

/-- `∑[floor((n+1)/2*sqrt(3))]` -/
def P5836668089053487947.Spec : Prop :=
  ∀ n, P5836668089053487947.a n = A194082 (n + 1)

end A194082

/-! ## A194082.P11910459611039360441

`-∑[-floor(sinh(log((n+1)*sqrt(3))))]`
-/

namespace A194082.P11910459611039360441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊Real.sinh (Real.log ((n + 1 : ℝ) * Real.sqrt (3 : ℝ)))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194082.P11910459611039360441

namespace A194082

/-- `-∑[-floor(sinh(log((n+1)*sqrt(3))))]` -/
def P11910459611039360441.Spec : Prop :=
  ∀ n, P11910459611039360441.a n = A194082 (n + 1)

end A194082

/-! ## A194082.P14594225591884525649

`A171970(n+1)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194082

/-- `A171970(n+1)+a(n-1)` -/
def P14594225591884525649.Spec : Prop :=
  ∀ n, P14594225591884525649.a n = A194082 (n + 1)

theorem P14594225591884525649.correct : P14594225591884525649.Spec := by
  intro n
  simp only [A194082, Nat.add_sub_cancel]

end A194082

/-! ## A194082.P12547077839210378467

`∑[A171970(n+1)]%A000124(n)`
-/

namespace A194082.P12547077839210378467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000124 n)

end

end A194082.P12547077839210378467

namespace A194082

/-- `∑[A171970(n+1)]%A000124(n)` -/
def P12547077839210378467.Spec : Prop :=
  ∀ n, P12547077839210378467.a n = A194082 (n + 1)

end A194082

/-! ## A194082.P6313521465057116460

`A063524(3*n+4)+∑[A171970(n+1)]`
-/

namespace A194082.P6313521465057116460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (3 * n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194082.P6313521465057116460

namespace A194082

/-- `A063524(3*n+4)+∑[A171970(n+1)]` -/
def P6313521465057116460.Spec : Prop :=
  ∀ n, P6313521465057116460.a n = A194082 (n + 1)

end A194082

/-! ## A194082.P16459794757908241463

`∑[A171970(n+1)]*A000035(2*n+1)`
-/

namespace A194082.P16459794757908241463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000035 (2 * n + 1)

end

end A194082.P16459794757908241463

namespace A194082

/-- `∑[A171970(n+1)]*A000035(2*n+1)` -/
def P16459794757908241463.Spec : Prop :=
  ∀ n, P16459794757908241463.a n = A194082 (n + 1)

end A194082

/-! ## A194082.P17218514021508326187

`A005929(2*(n+1))+∑[A171970(n+1)]`
-/

namespace A194082.P17218514021508326187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005929 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194082.P17218514021508326187

namespace A194082

/-- `A005929(2*(n+1))+∑[A171970(n+1)]` -/
def P17218514021508326187.Spec : Prop :=
  ∀ n, P17218514021508326187.a n = A194082 (n + 1)

end A194082

/-!
# A194083: Expansion of Sum_{n>=0} x^(n*(n+1)/2) * Product_{k=0..n} (1 + x^(k+1)).

The programs for A194083, there is no canonical definition to state claims against.
-/

/-! ## A194083.P13589394728103436319

`A053261(n)+A053260(n)`
-/

namespace A194083.P13589394728103436319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053261 n + A053260 n

end

end A194083.P13589394728103436319

/-! ## A194083.P1543895584690036627

`A053260(n)+A008619(A025876(2*n)%A239010(n+2))`
-/

namespace A194083.P1543895584690036627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 n + A008619 (Int.tmod (A025876 (2 * n)) (A239010 (n + 2))).toNat

end

end A194083.P1543895584690036627

/-! ## A194083.P4302851237523987147

`A097795(∑[A034258(n+1)]+10)+A053261(n)`
-/

namespace A194083.P4302851237523987147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (∑ j ∈ Finset.range (n + 1), f1 j + 10).toNat + A053261 n

end

end A194083.P4302851237523987147

/-! ## A194083.P5738232563740339944

`A097795(A101881(n)+7)+A053261(n)`
-/

namespace A194083.P5738232563740339944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A101881 n + 7).toNat + A053261 n

end

end A194083.P5738232563740339944

/-! ## A194083.P3405050274882539342

`A053692(A011782(n))+A045917(n+1)`
-/

namespace A194083.P3405050274882539342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053692 (A011782 n).toNat + A045917 (n + 1)

end

end A194083.P3405050274882539342

/-!
# A194084: Triangle read by rows: a(n)=A135929(n) + A192011(n). Row n gives coefficients of polynomials BC(n,x) in order of decreasing exponents.

The programs for A194084, there is no canonical definition to state claims against.
-/

/-! ## A194084.P18116160998819750552

`A135929(n)+A192011(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A194084.P18116160998819750552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135929 n + A192011 n

end

end A194084.P18116160998819750552

/-! ## A194084.P10607510513908082958

`3*A192174(n)%(n+1)`
-/

namespace A194084.P10607510513908082958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.tmod (A192174 n) (n + 1 : ℤ)

end

end A194084.P10607510513908082958

/-! ## A194084.P6651372289117729714

`3*A192174(abs(1-n)+1)`
-/

namespace A194084.P6651372289117729714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A192174 (|1 - (n : ℤ)| + 1).toNat

end

end A194084.P6651372289117729714

/-! ## A194084.P10966818771073626369

`3*(A192174(n)+A000007(n))`
-/

namespace A194084.P10966818771073626369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A192174 n + A000007 n)

end

end A194084.P10966818771073626369

/-! ## A194084.P8730714234511641096

`3*A057427(n)*A192174(n)`
-/

namespace A194084.P8730714234511641096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A057427 n * A192174 n)

end

end A194084.P8730714234511641096

/-! ## A194084.P9169255780851684827

`(3*A192174(n))%A008574(n)`
-/

namespace A194084.P9169255780851684827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A192174 n) (A008574 n)

end

end A194084.P9169255780851684827

/-! ## A194084.P4248085712166979973

`3*and(1, A000040(n+1))*A192174(n)`
-/

namespace A194084.P4248085712166979973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (Int.land 1 (A000040 (n + 1)) * A192174 n)

end

end A194084.P4248085712166979973

/-! ## A194084.P12331007865502465096

`3*A000045(ceil(n/(n+1)))*A192174(n)`
-/

namespace A194084.P12331007865502465096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000045 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A192174 n)

end

end A194084.P12331007865502465096

/-! ## A194084.P16296414096934303750

`A135929(n)+A195673(n)-A192174(n)`
-/

namespace A194084.P16296414096934303750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135929 n + (A195673 n - A192174 n)

end

end A194084.P16296414096934303750

/-! ## A194084.P17904022402681463820

`A192011(A028310(n))+A192011(n)-A053119(n)`
-/

namespace A194084.P17904022402681463820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 (A028310 n).toNat + (A192011 n - A053119 n)

end

end A194084.P17904022402681463820

/-!
# A194086: Second-smallest prime factor of the n-th Lucas number (beginning with 2), if composite, or 1 otherwise.

The programs for A194086, there is no canonical definition to state claims against.
-/

/-! ## A194086.P14983351923712574289

`A014673(A085079(A000032(n)))`
-/

namespace A194086.P14983351923712574289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A085079 (A000032 n).toNat).toNat

end

end A194086.P14983351923712574289

/-! ## A194086.P18332125105191254419

`A006530(A084057(n))^A025857(n)`
-/

namespace A194086.P18332125105191254419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (A084057 n).toNat : ℚ) ^ (A025857 n : ℤ)

end

end A194086.P18332125105191254419

/-! ## A194086.P3334141243571735040

`A006530(A084057(n))^A144161(n)`
-/

namespace A194086.P3334141243571735040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (A084057 n).toNat : ℚ) ^ (A144161 n : ℤ)

end

end A194086.P3334141243571735040

/-! ## A194086.P11677802826338131530

`A006530(A084057(n))^A316836(n)`
-/

namespace A194086.P11677802826338131530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (A084057 n).toNat : ℚ) ^ (A316836 n : ℤ)

end

end A194086.P11677802826338131530

/-! ## A194086.P16060133250754912513

`gcd(A006530(A084057(n)), A170935(n))`
-/

namespace A194086.P16060133250754912513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006530 (A084057 n).toNat) (A170935 n)

end

end A194086.P16060133250754912513

/-!
# A194087: G.f.: eta(q)*eta(q^4)*eta(q^16)*eta(q^64)*eta(q^256)*eta(q^1024)*..., where eta(q) = Product_{m=1..oo} (1 - q^m).

The programs for A194087, there is no canonical definition to state claims against.
-/

/-! ## A194087.P10829177324477483134

`A107034(xor(n, A185284(2*n)))`
-/

namespace A194087.P10829177324477483134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107034 (Int.xor (n : ℤ) (A185284 (2 * n))).toNat

end

end A194087.P10829177324477483134

/-! ## A194087.P13159012905364395278

`A107034(A090318(n+1)+n)`
-/

namespace A194087.P13159012905364395278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107034 (A090318 (n + 1) + (n : ℤ)).toNat

end

end A194087.P13159012905364395278

/-! ## A194087.P8813754847719069249

`A107034(A005088(A174109(n))+n)`
-/

namespace A194087.P8813754847719069249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107034 (A005088 (A174109 n).toNat + (n : ℤ)).toNat

end

end A194087.P8813754847719069249

/-! ## A194087.P413029453090815325

`A107034(A025441(A184955(n))+n)`
-/

namespace A194087.P413029453090815325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107034 (A025441 (A184955 n).toNat + (n : ℤ)).toNat

end

end A194087.P413029453090815325

/-! ## A194087.P9075693604541816845

`A107034(n)-A005088(A174109(n))`
-/

namespace A194087.P9075693604541816845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107034 n - A005088 (A174109 n).toNat

end

end A194087.P9075693604541816845

/-!
# A194088: The number of biconnected squaregraphs that contain n squares.

The programs for A194088, there is no canonical definition to state claims against.
-/

/-! ## A194088.P13697649357908178825

`A335380(A004273(n!))`
-/

namespace A194088.P13697649357908178825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335380 (A004273 (Nat.factorial n)).toNat

end

end A194088.P13697649357908178825

/-! ## A194088.P14858446734705985219

`A335380(A047268(n!))`
-/

namespace A194088.P14858446734705985219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335380 (A047268 (Nat.factorial n)).toNat

end

end A194088.P14858446734705985219

/-! ## A194088.P17803684958833305893

`A335380(A090368(n!))`
-/

namespace A194088.P17803684958833305893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335380 (A090368 (Nat.factorial n)).toNat

end

end A194088.P17803684958833305893

/-!
# A194089: The number of labeled biconnected squaregraphs that contain n squares.

The programs for A194089, there is no canonical definition to state claims against.
-/

/-! ## A194089.P13770125877339562973

`A202182(n+1)+A078898(A053141(n))`
-/

namespace A194089.P13770125877339562973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202182 (n + 1) + A078898 (A053141 n).toNat

end

end A194089.P13770125877339562973

/-! ## A194089.P9299610441830904379

`A002265(A370036(n+1))+A000079(n)`
-/

namespace A194089.P9299610441830904379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A370036 (n + 1)).toNat + A000079 n

end

end A194089.P9299610441830904379

/-!
# A194090: The number of biconnected squaregraphs of perimeter 2*n.

The programs for A194090, there is no canonical definition to state claims against.
-/

/-! ## A194090.P6515532952971827311

`and(record[xor(1, n)^9], A280851(n!))`
-/

namespace A194090.P6515532952971827311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) (A280851 (Nat.factorial n))

end

end A194090.P6515532952971827311

/-! ## A194090.P17012319384473149932

`A193687(A151401(n))`
-/

namespace A194090.P17012319384473149932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193687 (A151401 n).toNat

end

end A194090.P17012319384473149932

/-! ## A194090.P16562454499903755050

`A241642(A151375(n+1))`
-/

namespace A194090.P16562454499903755050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241642 (A151375 (n + 1)).toNat

end

end A194090.P16562454499903755050

/-!
# A194091: The number of labeled biconnected squaregraphs with perimeter 2*n.

The programs for A194091, there is no canonical definition to state claims against.
-/

/-! ## A194091.P8477310073006114035

`A049093(A207557(n))`
-/

namespace A194091.P8477310073006114035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (A207557 n).toNat

end

end A194091.P8477310073006114035

/-! ## A194091.P6274676956123695855

`A177501(xor(2, A015540(n)))`
-/

namespace A194091.P6274676956123695855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177501 (Int.xor 2 (A015540 n)).toNat

end

end A194091.P6274676956123695855

/-!
# A194095: Record values in A056595.

The programs for A194095, there is no canonical definition to state claims against.
-/

/-! ## A194095.P319225628460506946

`record[A146288(n+1)-A052304(n+1)]`
-/

namespace A194095.P319225628460506946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146288 (n + 1) - A052304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194095.P319225628460506946

/-! ## A194095.P9928832399604951635

`record[A000005(A025487(n+1))-A052304(n+1)]`
-/

namespace A194095.P9928832399604951635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A025487 (n + 1)).toNat - A052304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194095.P9928832399604951635

/-! ## A194095.P3688593944115605146

`∑{d}[A194096(n+1), A049240(#)]`
-/

namespace A194095.P3688593944115605146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049240 d

end

end A194095.P3688593944115605146

/-! ## A194095.P6729095934387349165

`record[val(A293514(n+1), 2)]`
-/

namespace A194095.P6729095934387349165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A293514 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194095.P6729095934387349165

/-! ## A194095.P3688793846278509856

`record[A056595(n+1)]`
-/

namespace A194095.P3688793846278509856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194095.P3688793846278509856

/-!
# A194096: Where record values occur in A056595.

The programs for A194096, there is no canonical definition to state claims against.
-/

/-! ## A194096.P1729761706173504038

`record[A336158(A159795(n)+4)]`
-/

namespace A194096.P1729761706173504038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A159795 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194096.P1729761706173504038

/-! ## A194096.P4274234660662300362

`record[A278224(∑[A099608(n)])]`
-/

namespace A194096.P4274234660662300362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099608 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194096.P4274234660662300362

/-! ## A194096.P12986919692198982565

`A063789(A060900(n))`
-/

namespace A194096.P12986919692198982565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063789 (A060900 n).toNat

end

end A194096.P12986919692198982565

/-! ## A194096.P3037188475294880926

`A047726(A005778(n+2))`
-/

namespace A194096.P3037188475294880926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A005778 (n + 2)).toNat

end

end A194096.P3037188475294880926

/-!
# A194099: Numbers m >= 2, such that, if a prime p divides m^2 - 1, then every prime q < p divides m^2 - 1 as well.

The programs for A194099, there is no canonical definition to state claims against.
-/

/-! ## A194099.P786906068479773060

`2*A141399(n+1)+1`
-/

namespace A194099.P786906068479773060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141399 (n + 1) + 1

end

end A194099.P786906068479773060

/-! ## A194099.P11910254956665564793

`A141399(n+1)+A342892(n²)+A141399(n+1)`
-/

namespace A194099.P11910254956665564793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141399 (n + 1) + (A342892 (n ^ 2) + A141399 (n + 1))

end

end A194099.P11910254956665564793

/-! ## A194099.P11771411544404048818

`A141399(n+1)+A161618(n+1)+A141399(n+1)`
-/

namespace A194099.P11771411544404048818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141399 (n + 1) + (A161618 (n + 1) + A141399 (n + 1))

end

end A194099.P11771411544404048818

/-! ## A194099.P10835020891230257839

`A141399(n+1)+A141399(n+1)+gcd(5, A140513(n))`
-/

namespace A194099.P10835020891230257839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141399 (n + 1) + (A141399 (n + 1) + (Int.gcd 5 (A140513 n) : ℤ))

end

end A194099.P10835020891230257839

/-! ## A194099.P1770296078407550755

`and(1, A107953(n))+A141399(n+1)+A141399(n+1)`
-/

namespace A194099.P1770296078407550755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A107953 n) + (A141399 (n + 1) + A141399 (n + 1))

end

end A194099.P1770296078407550755

