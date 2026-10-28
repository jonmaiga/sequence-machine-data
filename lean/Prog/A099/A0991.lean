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
import Seq.B000.C020
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
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A099100: a(n) = Fibonacci(5*n+1).

The programs for A099100, the canonical program `A099100.P14730017575167747640` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099100 has offset 0).

The definition of A099100 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(5*n+1)` (program `A099100.P14730017575167747640`, by `A099100.P14730017575167747640.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099100.P13326331744060037424

`ogf((1-3x)/(1-11x-x^2))`
-/

namespace A099100.P13326331744060037424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -11, -1] n

end

end A099100.P13326331744060037424

namespace A099100

/-- `ogf((1-3x)/(1-11x-x^2))` -/
def P13326331744060037424.Spec : Prop :=
  ∀ n, P13326331744060037424.a n = A099100 n

end A099100

/-! ## A099100.P8133350059702798135

`11*a(n-1)+a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A099100.P8133350059702798135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  11 * a (n - 1) + a (n - 2)

end

end A099100.P8133350059702798135

namespace A099100

/-- `11*a(n-1)+a(n-2)` -/
def P8133350059702798135.Spec : Prop :=
  ∀ n, (P8133350059702798135.a n : ℤ) = A099100 n

end A099100

/-! ## A099100.P14730017575167747640

`A000045(5*n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099100

/-- `A000045(5*n+1)` -/
def P14730017575167747640.Spec : Prop :=
  ∀ n, P14730017575167747640.a n = A099100 n

theorem P14730017575167747640.correct : P14730017575167747640.Spec := by
  intro n
  simp only [A099100]

end A099100

/-! ## A099100.P12710716405409788918

`∑{#}[5*n, C(#, 5*n-#)]`
-/

namespace A099100.P12710716405409788918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose k ((5 * n : ℤ) - (k : ℤ)).toNat

end

end A099100.P12710716405409788918

namespace A099100

/-- `∑{#}[5*n, C(#, 5*n-#)]` -/
def P12710716405409788918.Spec : Prop :=
  ∀ n, (P12710716405409788918.a n : ℤ) = A099100 n

end A099100

/-! ## A099100.P6708492405586512340

`A079977(10*n)`
-/

namespace A099100.P6708492405586512340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (10 * n)

end

end A099100.P6708492405586512340

namespace A099100

/-- `A079977(10*n)` -/
def P6708492405586512340.Spec : Prop :=
  ∀ n, P6708492405586512340.a n = A099100 n

end A099100

/-! ## A099100.P3791099692089132513

`A264800(5*n+1)`
-/

namespace A099100.P3791099692089132513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264800 (5 * n + 1)

end

end A099100.P3791099692089132513

namespace A099100

/-- `A264800(5*n+1)` -/
def P3791099692089132513.Spec : Prop :=
  ∀ n, P3791099692089132513.a n = A099100 n

end A099100

/-! ## A099100.P748095871701802472

`A212804(5*n+2)`
-/

namespace A099100.P748095871701802472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (5 * n + 2)

end

end A099100.P748095871701802472

namespace A099100

/-- `A212804(5*n+2)` -/
def P748095871701802472.Spec : Prop :=
  ∀ n, P748095871701802472.a n = A099100 n

end A099100

/-! ## A099100.P2369279463950292733

`A000071(5*n+1)+1`
-/

namespace A099100.P2369279463950292733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (5 * n + 1) + 1

end

end A099100.P2369279463950292733

namespace A099100

/-- `A000071(5*n+1)+1` -/
def P2369279463950292733.Spec : Prop :=
  ∀ n, P2369279463950292733.a n = A099100 n

theorem P2369279463950292733.correct : P2369279463950292733.Spec := by
  intro n
  simp only [A099100, Nat.add_sub_cancel, A099100.P2369279463950292733.a, A099100.P14730017575167747640.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099100

/-! ## A099100.P2493393746927562880

`A051111(A016873(n))`
-/

namespace A099100.P2493393746927562880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051111 (A016873 n).toNat

end

end A099100.P2493393746927562880

namespace A099100

/-- `A051111(A016873(n))` -/
def P2493393746927562880.Spec : Prop :=
  ∀ n, P2493393746927562880.a n = A099100 n

end A099100

/-! ## A099100.P14675519112214253043

`A053602(A017293(n))`
-/

namespace A099100.P14675519112214253043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A017293 n).toNat

end

end A099100.P14675519112214253043

namespace A099100

/-- `A053602(A017293(n))` -/
def P14675519112214253043.Spec : Prop :=
  ∀ n, P14675519112214253043.a n = A099100 n

end A099100

/-!
# A099101: Quintisection of 1/(1-x^3-x^4).

The programs for A099101, the canonical program `A099101.P11883390200381848303` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099101 has offset 0).

The definition of A099101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099101.P4492233541471614541

`ogf((1-2x^2-x^3)/(1-5x^2-6x^3-x^4))`
-/

namespace A099101.P4492233541471614541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, -1] [1, 0, -5, -6, -1] n

end

end A099101.P4492233541471614541

namespace A099101

/-- `ogf((1-2x^2-x^3)/(1-5x^2-6x^3-x^4))` -/
def P4492233541471614541.Spec : Prop :=
  ∀ n, P4492233541471614541.a n = A099101 n

end A099101

/-! ## A099101.P11883390200381848303

`A017817(5*n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099101

/-- `A017817(5*n)` -/
def P11883390200381848303.Spec : Prop :=
  ∀ n, P11883390200381848303.a n = A099101 n

theorem P11883390200381848303.correct : P11883390200381848303.Spec := by
  intro n
  simp only [A099101]

end A099101

/-! ## A099101.P17922205149496355835

`A127838(5*(n+1))`
-/

namespace A099101.P17922205149496355835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (5 * (n + 1))

end

end A099101.P17922205149496355835

namespace A099101

/-- `A127838(5*(n+1))` -/
def P17922205149496355835.Spec : Prop :=
  ∀ n, P17922205149496355835.a n = A099101 n

end A099101

/-! ## A099101.P18292141178385205558

`and(-1, A017817(A008587(n)))`
-/

namespace A099101.P18292141178385205558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A017817 (A008587 n).toNat)

end

end A099101.P18292141178385205558

namespace A099101

/-- `and(-1, A017817(A008587(n)))` -/
def P18292141178385205558.Spec : Prop :=
  ∀ n, P18292141178385205558.a n = A099101 n

end A099101

/-! ## A099101.P4334576309112993309

`A017817(A008706(n))+A000007(n)`
-/

namespace A099101.P4334576309112993309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (A008706 n).toNat + A000007 n

end

end A099101.P4334576309112993309

namespace A099101

/-- `A017817(A008706(n))+A000007(n)` -/
def P4334576309112993309.Spec : Prop :=
  ∀ n, P4334576309112993309.a n = A099101 n

end A099101

/-! ## A099101.P2858401372150868741

`or(A000007(n), A017817(A008587(n)))`
-/

namespace A099101.P2858401372150868741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A017817 (A008587 n).toNat)

end

end A099101.P2858401372150868741

namespace A099101

/-- `or(A000007(n), A017817(A008587(n)))` -/
def P2858401372150868741.Spec : Prop :=
  ∀ n, P2858401372150868741.a n = A099101 n

end A099101

/-! ## A099101.P17555132014173415823

`A017817(A008706(n))^A011628(n)²`
-/

namespace A099101.P17555132014173415823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017817 (A008706 n).toNat : ℚ) ^ (A011628 n ^ 2 : ℤ)

end

end A099101.P17555132014173415823

namespace A099101

/-- `A017817(A008706(n))^A011628(n)²` -/
def P17555132014173415823.Spec : Prop :=
  ∀ n, P17555132014173415823.a n = (A099101 n : ℚ)

end A099101

/-! ## A099101.P15525627150494003749

`A017817(A008587(n))%A041058(n)`
-/

namespace A099101.P15525627150494003749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017817 (A008587 n).toNat) (A041058 n)

end

end A099101.P15525627150494003749

namespace A099101

/-- `A017817(A008587(n))%A041058(n)` -/
def P15525627150494003749.Spec : Prop :=
  ∀ n, P15525627150494003749.a n = A099101 n

end A099101

/-! ## A099101.P7355230802415560453

`A017817(A008706(n))^A011628(n²)`
-/

namespace A099101.P7355230802415560453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017817 (A008706 n).toNat : ℚ) ^ (A011628 (n ^ 2) : ℤ)

end

end A099101.P7355230802415560453

namespace A099101

/-- `A017817(A008706(n))^A011628(n²)` -/
def P7355230802415560453.Spec : Prop :=
  ∀ n, P7355230802415560453.a n = (A099101 n : ℚ)

end A099101

/-!
# A099102: Natural numbers n with fewer digits than sigma(n).

The programs for A099102, the canonical program `A099102.P10776649680953999616` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099102 has offset 1).

The definition of A099102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3647 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099102.P9777555927411029345

`lt[A061601(n), A173455(round(acot(n)+n))]`
-/

namespace A099102.P9777555927411029345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099102.P9777555927411029345

namespace A099102

/-- `lt[A061601(n), A173455(round(acot(n)+n))]` -/
def P9777555927411029345.Spec : Prop :=
  ∀ n, (P9777555927411029345.a n : ℤ) = A099102 (n + 1)

end A099102

/-! ## A099102.P10776649680953999616

`lt[A020338(n+1)/(n+2), A000203(n+1)]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A099102

/-- `lt[A020338(n+1)/(n+2), A000203(n+1)]+1` -/
def P10776649680953999616.Spec : Prop :=
  ∀ n, (P10776649680953999616.a n : ℤ) = A099102 (n + 1)

theorem P10776649680953999616.correct : P10776649680953999616.Spec := by
  intro n
  simp only [A099102, Nat.add_sub_cancel]

end A099102

/-! ## A099102.P7254818044445893240

`lt[A061601(n), A001065(A028310(n))]`
-/

namespace A099102.P7254818044445893240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099102.P7254818044445893240

namespace A099102

/-- `lt[A061601(n), A001065(A028310(n))]` -/
def P7254818044445893240.Spec : Prop :=
  ∀ n, (P7254818044445893240.a n : ℤ) = A099102 (n + 1)

end A099102

/-! ## A099102.P14368156823385944737

`lt[A055642(n), A055642(A039653(n))]`
-/

namespace A099102.P14368156823385944737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099102.P14368156823385944737

namespace A099102

/-- `lt[A055642(n), A055642(A039653(n))]` -/
def P14368156823385944737.Spec : Prop :=
  ∀ n, (P14368156823385944737.a n : ℤ) = A099102 (n + 1)

end A099102

/-! ## A099102.P12603786355072415016

`lt[A061601(n), A001065(A233583(n+1))]`
-/

namespace A099102.P12603786355072415016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099102.P12603786355072415016

namespace A099102

/-- `lt[A061601(n), A001065(A233583(n+1))]` -/
def P12603786355072415016.Spec : Prop :=
  ∀ n, (P12603786355072415016.a n : ℤ) = A099102 (n + 1)

end A099102

/-!
# A099103: Natural numbers n with more digits than Euler totient phi(n).

The programs for A099103, the canonical program `A099103.P14963529761325271933` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099103 has offset 1).

The definition of A099103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099103.P14963529761325271933

`lt[A055642(A225530(n)), A055642(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A099103

/-- `lt[A055642(A225530(n)), A055642(n)]` -/
def P14963529761325271933.Spec : Prop :=
  ∀ n, (P14963529761325271933.a n : ℤ) = A099103 (n + 1)

theorem P14963529761325271933.correct : P14963529761325271933.Spec := by
  intro n
  simp only [A099103, Nat.add_sub_cancel]

end A099103

/-!
# A099104: Characteristic function of badly sieved numbers (A066680).

The programs for A099104, there is no canonical definition to state claims against.
-/

/-! ## A099104.P9523419615073426703

`char[A066680(n+1)-1]`
-/

namespace A099104.P9523419615073426703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066680 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A099104.P9523419615073426703

/-! ## A099104.P12037695912630635749

`Δ[A066683(A028310(n))]`
-/

namespace A099104.P12037695912630635749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066683 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099104.P12037695912630635749

/-! ## A099104.P18158109561122335987

`A057427(A066682(n+1))`
-/

namespace A099104.P18158109561122335987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A066682 (n + 1)).toNat

end

end A099104.P18158109561122335987

/-! ## A099104.P4984232430727635595

`A019425(2*A066682(n+1))`
-/

namespace A099104.P4984232430727635595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * A066682 (n + 1)).toNat

end

end A099104.P4984232430727635595

/-! ## A099104.P16458508370735526566

`char[∪[A000040(n+1), A066681(n+1)]-1]`
-/

namespace A099104.P16458508370735526566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066681 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A099104.P16458508370735526566

/-! ## A099104.P15688362209778180691

`∑{d}[n+1, A008683(#)*A099042((n+1)/#)]`
-/

namespace A099104.P15688362209778180691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A099042 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A099104.P15688362209778180691

/-! ## A099104.P14699882333227748640

`A066683(n+1)-A066683(A028310(n))`
-/

namespace A099104.P14699882333227748640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066683 (n + 1) - A066683 (A028310 n).toNat

end

end A099104.P14699882333227748640

/-! ## A099104.P12643191160510819338

`A001221(A001316(A066682(n+1)²))`
-/

namespace A099104.P12643191160510819338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 (A066682 (n + 1) ^ 2).toNat).toNat

end

end A099104.P12643191160510819338

/-! ## A099104.P9673081214093454434

`A002828(A066682(n+1)²)`
-/

namespace A099104.P9673081214093454434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A066682 (n + 1) ^ 2).toNat

end

end A099104.P9673081214093454434

/-! ## A099104.P847797958078018325

`A019425(A066682(n+1)+A066682(n+1)²)`
-/

namespace A099104.P847797958078018325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A066682 (n + 1) + A066682 (n + 1) ^ 2).toNat

end

end A099104.P847797958078018325

/-! ## A099104.P5874193086897435731

`A000122(A066682(n+1)²)-1`
-/

namespace A099104.P5874193086897435731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A066682 (n + 1) ^ 2).toNat - 1

end

end A099104.P5874193086897435731

/-!
# A099109: Primes A005382(n) + A005384(n) - 1 with a twin prime A005382(n) + A005384(n) + 1.

The programs for A099109, there is no canonical definition to state claims against.
-/

/-! ## A099109.P16980614911631614991

`A248173(∑[p?[A248186(n+1)+n]]+1)`
-/

namespace A099109.P16980614911631614991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248186 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248173 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A099109.P16980614911631614991

/-!
# A099110: Expansion of 1 / ((1+x)*(1-2x)*(1-3x)*(1-4x)).

The programs for A099110, the canonical program `A099110.P3019644225513411598` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099110 has offset 0).

The definition of A099110 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+17x^2+2x^3-24x^4))` (program `A099110.P3019644225513411598`, by `A099110.P3019644225513411598.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099110.P3019644225513411598

`ogf(1/(1-8x+17x^2+2x^3-24x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099110

/-- `ogf(1/(1-8x+17x^2+2x^3-24x^4))` -/
def P3019644225513411598.Spec : Prop :=
  ∀ n, P3019644225513411598.a n = A099110 n

theorem P3019644225513411598.correct : P3019644225513411598.Spec := by
  intro n
  simp only [A099110]

end A099110

/-! ## A099110.P13711308616154767930

`8*a(n-1)-17*a(n-2)-2*a(n-3)+24*a(n-4)` with `a(0)=1, a(1)=8, a(2)=47, a(3)=238`
-/

namespace A099110.P13711308616154767930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 47, 238] fun n a =>
  8 * a (n - 1) - 17 * a (n - 2) - 2 * a (n - 3) + 24 * a (n - 4)

end

end A099110.P13711308616154767930

namespace A099110

/-- `8*a(n-1)-17*a(n-2)-2*a(n-3)+24*a(n-4)` -/
def P13711308616154767930.Spec : Prop :=
  ∀ n, P13711308616154767930.a n = A099110 n

end A099110

/-! ## A099110.P9033203253968944985

`1/60*(80*2^n-405*3^n+384*4^n+(-1)^n)`
-/

namespace A099110.P9033203253968944985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 60 * ((80 * 2 ^ n : ℤ) - (405 * 3 ^ n : ℤ) + (384 * 4 ^ n : ℤ) + (-1) ^ n : ℚ)

end

end A099110.P9033203253968944985

namespace A099110

/-- `1/60*(80*2^n-405*3^n+384*4^n+(-1)^n)` -/
def P9033203253968944985.Spec : Prop :=
  ∀ n, P9033203253968944985.a n = (A099110 n : ℚ)

end A099110

/-! ## A099110.P6990932783079913785

`∑[A004057(n)]`
-/

namespace A099110.P6990932783079913785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099110.P6990932783079913785

namespace A099110

/-- `∑[A004057(n)]` -/
def P6990932783079913785.Spec : Prop :=
  ∀ n, P6990932783079913785.a n = A099110 n

end A099110

/-! ## A099110.P12501017939051653754

`A016269(n)-a(n-1)` with `a(0)=1`
-/

namespace A099110.P12501017939051653754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016269 n - a (n - 1)

end

end A099110.P12501017939051653754

namespace A099110

/-- `A016269(n)-a(n-1)` -/
def P12501017939051653754.Spec : Prop :=
  ∀ n, P12501017939051653754.a n = A099110 n

end A099110

/-! ## A099110.P9009716118512507694

`A027650(n)+a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A099110.P9009716118512507694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  A027650 n + a (n - 2)

end

end A099110.P9009716118512507694

namespace A099110

/-- `A027650(n)+a(n-2)` -/
def P9009716118512507694.Spec : Prop :=
  ∀ n, P9009716118512507694.a n = A099110 n

end A099110

/-! ## A099110.P916518503634086150

`A038721(n+1)/2-a(n-1)` with `a(0)=1`
-/

namespace A099110.P916518503634086150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A038721 (n + 1) : ℚ) / 2 - a (n - 1)

end

end A099110.P916518503634086150

namespace A099110

/-- `A038721(n+1)/2-a(n-1)` -/
def P916518503634086150.Spec : Prop :=
  ∀ n, P916518503634086150.a n = (A099110 n : ℚ)

end A099110

/-! ## A099110.P4980425057250842498

`Δ[A056473(2*(n+3))]-a(n-1)` with `a(0)=1`
-/

namespace A099110.P4980425057250842498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056473 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A099110.P4980425057250842498

namespace A099110

/-- `Δ[A056473(2*(n+3))]-a(n-1)` -/
def P4980425057250842498.Spec : Prop :=
  ∀ n, P4980425057250842498.a n = A099110 n

end A099110

/-! ## A099110.P8717742623860695816

`(A016269(n)+A004057(n))/2`
-/

namespace A099110.P8717742623860695816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016269 n + A004057 n : ℚ) / 2

end

end A099110.P8717742623860695816

namespace A099110

/-- `(A016269(n)+A004057(n))/2` -/
def P8717742623860695816.Spec : Prop :=
  ∀ n, P8717742623860695816.a n = (A099110 n : ℚ)

end A099110

/-! ## A099110.P1530132711573399074

`2*A099621(n+1)-A094705(n+1)`
-/

namespace A099110.P1530132711573399074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099621 (n + 1) - A094705 (n + 1)

end

end A099110.P1530132711573399074

namespace A099110

/-- `2*A099621(n+1)-A094705(n+1)` -/
def P1530132711573399074.Spec : Prop :=
  ∀ n, P1530132711573399074.a n = A099110 n

end A099110

/-! ## A099110.P194223444127997502

`a(n-1)+A004057(n)+A000038(n)` with `a(0)=1`
-/

namespace A099110.P194223444127997502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A004057 n + A000038 n)

end

end A099110.P194223444127997502

namespace A099110

/-- `a(n-1)+A004057(n)+A000038(n)` -/
def P194223444127997502.Spec : Prop :=
  ∀ n, P194223444127997502.a n = A099110 n

end A099110

/-!
# A099111: Expansion of 1 / ((1+x)*(1-2*x)*(1-3*x)*(1-4*x)*(1-5*x)).

The programs for A099111, the canonical program `A099111.P9358823685610334837` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099111 has offset 0).

The definition of A099111 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-13x+57x^2-83x^3-34x^4+120x^5))` (program `A099111.P9358823685610334837`, by `A099111.P9358823685610334837.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099111.P9358823685610334837

`ogf(1/(1-13x+57x^2-83x^3-34x^4+120x^5))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099111

/-- `ogf(1/(1-13x+57x^2-83x^3-34x^4+120x^5))` -/
def P9358823685610334837.Spec : Prop :=
  ∀ n, P9358823685610334837.a n = A099111 n

theorem P9358823685610334837.correct : P9358823685610334837.Spec := by
  intro n
  simp only [A099111]

end A099111

/-! ## A099111.P13506567770673264388

`∑[A004058(n)]`
-/

namespace A099111.P13506567770673264388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099111.P13506567770673264388

namespace A099111

/-- `∑[A004058(n)]` -/
def P13506567770673264388.Spec : Prop :=
  ∀ n, P13506567770673264388.a n = A099111 n

end A099111

/-! ## A099111.P450933115132855923

`A025211(n)-a(n-1)` with `a(0)=1`
-/

namespace A099111.P450933115132855923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025211 n - a (n - 1)

end

end A099111.P450933115132855923

namespace A099111

/-- `A025211(n)-a(n-1)` -/
def P450933115132855923.Spec : Prop :=
  ∀ n, P450933115132855923.a n = A099111 n

end A099111

/-! ## A099111.P12208522349279353908

`∑[A004057(n)+5*a(n-1)]` with `a(0)=1`
-/

namespace A099111.P12208522349279353908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A004057 n + 5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099111.P12208522349279353908

namespace A099111

/-- `∑[A004057(n)+5*a(n-1)]` -/
def P12208522349279353908.Spec : Prop :=
  ∀ n, P12208522349279353908.a n = A099111 n

end A099111

/-! ## A099111.P8210150878956567402

`Δ[A214167(n+4)-A214142(n+4)]`
-/

namespace A099111.P8210150878956567402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214167 (n + 4) - A214142 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099111.P8210150878956567402

namespace A099111

/-- `Δ[A214167(n+4)-A214142(n+4)]` -/
def P8210150878956567402.Spec : Prop :=
  ∀ n, P8210150878956567402.a n = A099111 n

end A099111

/-! ## A099111.P16743385658100329388

`Δ[A261139(A000096(n+4)+7)]`
-/

namespace A099111.P16743385658100329388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261139 (A000096 (n + 4) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099111.P16743385658100329388

namespace A099111

/-- `Δ[A261139(A000096(n+4)+7)]` -/
def P16743385658100329388.Spec : Prop :=
  ∀ n, P16743385658100329388.a n = A099111 n

end A099111

/-! ## A099111.P751116830204277520

`Δ[A261139(A161680(n+6)+6)]`
-/

namespace A099111.P751116830204277520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261139 (A161680 (n + 6) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099111.P751116830204277520

namespace A099111

/-- `Δ[A261139(A161680(n+6)+6)]` -/
def P751116830204277520.Spec : Prop :=
  ∀ n, P751116830204277520.a n = A099111 n

end A099111

/-!
# A099121: Number of orbits of the wreath product of S_n with S_n on n X n matrices over {0,1,2}.

The programs for A099121, the canonical program `A099121.P12723332395215652466` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099121 has offset 0).

The definition of A099121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099121.P12723332395215652466

`C(C(n+2, n)+n-1, n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099121

/-- `C(C(n+2, n)+n-1, n)` -/
def P12723332395215652466.Spec : Prop :=
  ∀ n, (P12723332395215652466.a n : ℤ) = A099121 n

theorem P12723332395215652466.correct : P12723332395215652466.Spec := by
  intro n
  simp only [A099121]

end A099121

/-! ## A099121.P9224671027320501124

`C(∑[n+2]-2, n)`
-/

namespace A099121.P9224671027320501124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2).toNat n

end

end A099121.P9224671027320501124

namespace A099121

/-- `C(∑[n+2]-2, n)` -/
def P9224671027320501124.Spec : Prop :=
  ∀ n, (P9224671027320501124.a n : ℤ) = A099121 n

end A099121

/-! ## A099121.P12159498151335657462

`A122178(∑[n+1]+1)`
-/

namespace A099121.P12159498151335657462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122178 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A099121.P12159498151335657462

namespace A099121

/-- `A122178(∑[n+1]+1)` -/
def P12159498151335657462.Spec : Prop :=
  ∀ n, P12159498151335657462.a n = A099121 n

end A099121

/-! ## A099121.P8591962575812448712

`A107862(∑[n+2]+3)`
-/

namespace A099121.P8591962575812448712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107862 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A099121.P8591962575812448712

namespace A099121

/-- `A107862(∑[n+2]+3)` -/
def P8591962575812448712.Spec : Prop :=
  ∀ n, P8591962575812448712.a n = A099121 n

end A099121

/-! ## A099121.P9022914434814473794

`record[C(n-A114327(n), n)]`
-/

namespace A099121.P9022914434814473794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - A114327 n).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099121.P9022914434814473794

namespace A099121

/-- `record[C(n-A114327(n), n)]` -/
def P9022914434814473794.Spec : Prop :=
  ∀ n, (P9022914434814473794.a n : ℤ) = A099121 n

end A099121

/-! ## A099121.P12833966840426242415

`record[A107862(A133263(n))]`
-/

namespace A099121.P12833966840426242415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107862 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099121.P12833966840426242415

namespace A099121

/-- `record[A107862(A133263(n))]` -/
def P12833966840426242415.Spec : Prop :=
  ∀ n, P12833966840426242415.a n = A099121 n

end A099121

/-! ## A099121.P5397907814399454667

`record[A107862(A238531(n))]`
-/

namespace A099121.P5397907814399454667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107862 (A238531 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099121.P5397907814399454667

namespace A099121

/-- `record[A107862(A238531(n))]` -/
def P5397907814399454667.Spec : Prop :=
  ∀ n, P5397907814399454667.a n = A099121 n

end A099121

/-! ## A099121.P349575369801611497

`record[A107862(A000124(n)+1)]`
-/

namespace A099121.P349575369801611497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107862 (A000124 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099121.P349575369801611497

namespace A099121

/-- `record[A107862(A000124(n)+1)]` -/
def P349575369801611497.Spec : Prop :=
  ∀ n, P349575369801611497.a n = A099121 n

end A099121

/-!
# A099122: Number of orbits of the wreath product of S_n with S_n on n X n matrices over {0,1,2,3}.

The programs for A099122, the canonical program `A099122.P11618912924049207044` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099122 has offset 0).

The definition of A099122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099122.P11618912924049207044

`C(C(n+3, n)+n-1, n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099122

/-- `C(C(n+3, n)+n-1, n)` -/
def P11618912924049207044.Spec : Prop :=
  ∀ n, (P11618912924049207044.a n : ℤ) = A099122 n

theorem P11618912924049207044.correct : P11618912924049207044.Spec := by
  intro n
  simp only [A099122]

end A099122

/-! ## A099122.P2632304901511184508

`C(∑[∑[char[2]+1+n]], n)`
-/

namespace A099122.P2632304901511184508
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A099122.P2632304901511184508

namespace A099122

/-- `C(∑[∑[char[2]+1+n]], n)` -/
def P2632304901511184508.Spec : Prop :=
  ∀ n, (P2632304901511184508.a n : ℤ) = A099122 n

end A099122

/-! ## A099122.P1221395162977225527

`record[A331436(A052905(n))]`
-/

namespace A099122.P1221395162977225527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099122.P1221395162977225527

namespace A099122

/-- `record[A331436(A052905(n))]` -/
def P1221395162977225527.Spec : Prop :=
  ∀ n, P1221395162977225527.a n = A099122 n

end A099122

/-! ## A099122.P7331990098840907090

`A331436(A052905(n+2))`
-/

namespace A099122.P7331990098840907090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (A052905 (n + 2)).toNat

end

end A099122.P7331990098840907090

namespace A099122

/-- `A331436(A052905(n+2))` -/
def P7331990098840907090.Spec : Prop :=
  ∀ n, P7331990098840907090.a n = A099122 n

end A099122

/-! ## A099122.P12358923973730236209

`A331436(A056115(n)+10)`
-/

namespace A099122.P12358923973730236209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (A056115 n + 10).toNat

end

end A099122.P12358923973730236209

namespace A099122

/-- `A331436(A056115(n)+10)` -/
def P12358923973730236209.Spec : Prop :=
  ∀ n, P12358923973730236209.a n = A099122 n

end A099122

/-!
# A099123: Number of orbits of the wreath product of S_n with S_n on n X n matrices over {0,1,2,3,4}.

The programs for A099123, the canonical program `A099123.P12336658391673583484` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099123 has offset 0).

The definition of A099123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099123.P12336658391673583484

`C(C(n+4, n)+n-1, n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099123

/-- `C(C(n+4, n)+n-1, n)` -/
def P12336658391673583484.Spec : Prop :=
  ∀ n, (P12336658391673583484.a n : ℤ) = A099123 n

theorem P12336658391673583484.correct : P12336658391673583484.Spec := by
  intro n
  simp only [A099123]

end A099123

/-! ## A099123.P9859657129832769175

`record[A331436(A055999(n))]`
-/

namespace A099123.P9859657129832769175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099123.P9859657129832769175

namespace A099123

/-- `record[A331436(A055999(n))]` -/
def P9859657129832769175.Spec : Prop :=
  ∀ n, P9859657129832769175.a n = A099123 n

end A099123

/-! ## A099123.P7651142870113713544

`A331436(A134227(n+4))`
-/

namespace A099123.P7651142870113713544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (A134227 (n + 4)).toNat

end

end A099123.P7651142870113713544

namespace A099123

/-- `A331436(A134227(n+4))` -/
def P7651142870113713544.Spec : Prop :=
  ∀ n, P7651142870113713544.a n = A099123 n

end A099123

/-! ## A099123.P15186044259016522188

`A331436(eq[5, A025581(n)])`
-/

namespace A099123.P15186044259016522188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099123.P15186044259016522188

namespace A099123

/-- `A331436(eq[5, A025581(n)])` -/
def P15186044259016522188.Spec : Prop :=
  ∀ n, P15186044259016522188.a n = A099123 n

end A099123

/-! ## A099123.P17400517545738389734

`A331436(eq[6, A193739(n)])`
-/

namespace A099123.P17400517545738389734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099123.P17400517545738389734

namespace A099123

/-- `A331436(eq[6, A193739(n)])` -/
def P17400517545738389734.Spec : Prop :=
  ∀ n, P17400517545738389734.a n = A099123 n

end A099123

/-!
# A099124: Number of orbits of the wreath product of S_n with S_n on n X n matrices over {0,1,2,3,4,5}.

The programs for A099124, the canonical program `A099124.P9686886948964432570` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099124 has offset 0).

The definition of A099124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099124.P9686886948964432570

`C(C(n+5, n)+n-1, n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099124

/-- `C(C(n+5, n)+n-1, n)` -/
def P9686886948964432570.Spec : Prop :=
  ∀ n, (P9686886948964432570.a n : ℤ) = A099124 n

theorem P9686886948964432570.correct : P9686886948964432570.Spec := by
  intro n
  simp only [A099124]

end A099124

/-! ## A099124.P6833348296584639614

`C(A051745(n+1)-2, n)`
-/

namespace A099124.P6833348296584639614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051745 (n + 1) - 2).toNat n

end

end A099124.P6833348296584639614

namespace A099124

/-- `C(A051745(n+1)-2, n)` -/
def P6833348296584639614.Spec : Prop :=
  ∀ n, (P6833348296584639614.a n : ℤ) = A099124 n

end A099124

/-! ## A099124.P10290476228980458662

`A331436(eq[6, A025581(n)])`
-/

namespace A099124.P10290476228980458662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099124.P10290476228980458662

namespace A099124

/-- `A331436(eq[6, A025581(n)])` -/
def P10290476228980458662.Spec : Prop :=
  ∀ n, P10290476228980458662.a n = A099124 n

end A099124

/-! ## A099124.P1799413057201339226

`A331436(eq[7, A193739(n)])`
-/

namespace A099124.P1799413057201339226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099124.P1799413057201339226

namespace A099124

/-- `A331436(eq[7, A193739(n)])` -/
def P1799413057201339226.Spec : Prop :=
  ∀ n, P1799413057201339226.a n = A099124 n

end A099124

/-! ## A099124.P3891813678627829051

`A331436(eq[13, A099375(n)])`
-/

namespace A099124.P3891813678627829051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099124.P3891813678627829051

namespace A099124

/-- `A331436(eq[13, A099375(n)])` -/
def P3891813678627829051.Spec : Prop :=
  ∀ n, P3891813678627829051.a n = A099124 n

end A099124

/-!
# A099125: Number of orbits of the wreath product of S_n with S_n on n X n matrices over {0,1,2,3,4,5,6}.

The programs for A099125, the canonical program `A099125.P9290032662238451813` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099125 has offset 0).

The definition of A099125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099125.P9290032662238451813

`C(C(n+6, n)+n-1, n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099125

/-- `C(C(n+6, n)+n-1, n)` -/
def P9290032662238451813.Spec : Prop :=
  ∀ n, (P9290032662238451813.a n : ℤ) = A099125 n

theorem P9290032662238451813.correct : P9290032662238451813.Spec := by
  intro n
  simp only [A099125]

end A099125

/-! ## A099125.P988208491099834684

`C(A124089(n+6)+n, n)`
-/

namespace A099125.P988208491099834684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A124089 (n + 6) + (n : ℤ)).toNat n

end

end A099125.P988208491099834684

namespace A099125

/-- `C(A124089(n+6)+n, n)` -/
def P988208491099834684.Spec : Prop :=
  ∀ n, (P988208491099834684.a n : ℤ) = A099125 n

end A099125

/-! ## A099125.P15027825308621773784

`A331436(eq[7, A025581(n)])`
-/

namespace A099125.P15027825308621773784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099125.P15027825308621773784

namespace A099125

/-- `A331436(eq[7, A025581(n)])` -/
def P15027825308621773784.Spec : Prop :=
  ∀ n, P15027825308621773784.a n = A099125 n

end A099125

/-! ## A099125.P18188497474940660271

`A331436(eq[8, A193739(n)])`
-/

namespace A099125.P18188497474940660271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099125.P18188497474940660271

namespace A099125

/-- `A331436(eq[8, A193739(n)])` -/
def P18188497474940660271.Spec : Prop :=
  ∀ n, P18188497474940660271.a n = A099125 n

end A099125

/-! ## A099125.P1078454818547049211

`A331436(eq[15, A099375(n)])`
-/

namespace A099125.P1078454818547049211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099125.P1078454818547049211

namespace A099125

/-- `A331436(eq[15, A099375(n)])` -/
def P1078454818547049211.Spec : Prop :=
  ∀ n, P1078454818547049211.a n = A099125 n

end A099125

/-!
# A099126: Number of orbits of the wreath product of S_n with S_n on n X n matrices over {0,1,2,3,4,5,6,7}.

The programs for A099126, the canonical program `A099126.P13065483812075600593` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099126 has offset 0).

The definition of A099126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099126.P13065483812075600593

`C(C(n+7, n)+n-1, n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099126

/-- `C(C(n+7, n)+n-1, n)` -/
def P13065483812075600593.Spec : Prop :=
  ∀ n, (P13065483812075600593.a n : ℤ) = A099126 n

theorem P13065483812075600593.correct : P13065483812075600593.Spec := by
  intro n
  simp only [A099126]

end A099126

/-! ## A099126.P5837728962545891523

`C(A000580(n+7)+n-1, n)`
-/

namespace A099126.P5837728962545891523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000580 (n + 7) + ((n : ℤ) - 1)).toNat n

end

end A099126.P5837728962545891523

namespace A099126

/-- `C(A000580(n+7)+n-1, n)` -/
def P5837728962545891523.Spec : Prop :=
  ∀ n, (P5837728962545891523.a n : ℤ) = A099126 n

end A099126

/-! ## A099126.P15899320806468356247

`A331436(eq[6, A264391(n)])`
-/

namespace A099126.P15899320806468356247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099126.P15899320806468356247

namespace A099126

/-- `A331436(eq[6, A264391(n)])` -/
def P15899320806468356247.Spec : Prop :=
  ∀ n, P15899320806468356247.a n = A099126 n

end A099126

/-! ## A099126.P10520852914994091467

`A331436(eq[8, A025581(n)])`
-/

namespace A099126.P10520852914994091467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099126.P10520852914994091467

namespace A099126

/-- `A331436(eq[8, A025581(n)])` -/
def P10520852914994091467.Spec : Prop :=
  ∀ n, P10520852914994091467.a n = A099126 n

end A099126

/-!
# A099127: Number of orbits of the wreath product of S_n with S_n on n X n matrices over {0,1,2,3,4,5,6,7,8}.

The programs for A099127, the canonical program `A099127.P4431153168760767766` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099127 has offset 0).

The definition of A099127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099127.P4431153168760767766

`C(C(n+8, n)+n-1, n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099127

/-- `C(C(n+8, n)+n-1, n)` -/
def P4431153168760767766.Spec : Prop :=
  ∀ n, (P4431153168760767766.a n : ℤ) = A099127 n

theorem P4431153168760767766.correct : P4431153168760767766.Spec := by
  intro n
  simp only [A099127]

end A099127

/-! ## A099127.P3968021702261644971

`C(A165618(n)+n, n)`
-/

namespace A099127.P3968021702261644971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A165618 n + (n : ℤ)).toNat n

end

end A099127.P3968021702261644971

namespace A099127

/-- `C(A165618(n)+n, n)` -/
def P3968021702261644971.Spec : Prop :=
  ∀ n, (P3968021702261644971.a n : ℤ) = A099127 n

end A099127

/-! ## A099127.P3412648607223418045

`C(A000581(n+8)-1+n, n)`
-/

namespace A099127.P3412648607223418045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000581 (n + 8) - 1 + (n : ℤ)).toNat n

end

end A099127.P3412648607223418045

namespace A099127

/-- `C(A000581(n+8)-1+n, n)` -/
def P3412648607223418045.Spec : Prop :=
  ∀ n, (P3412648607223418045.a n : ℤ) = A099127 n

end A099127

/-! ## A099127.P155620998106368408

`A331436(eq[9, A025581(n)])`
-/

namespace A099127.P155620998106368408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099127.P155620998106368408

namespace A099127

/-- `A331436(eq[9, A025581(n)])` -/
def P155620998106368408.Spec : Prop :=
  ∀ n, P155620998106368408.a n = A099127 n

end A099127

/-!
# A099128: Number of orbits of the wreath product of S_n with S_n on n X n matrices over {0,1,2,3,4,5,6,7,8,9}.

The programs for A099128, the canonical program `A099128.P17856302072347764222` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099128 has offset 0).

The definition of A099128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099128.P17856302072347764222

`C(C(n+9, n)+n-1, n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099128

/-- `C(C(n+9, n)+n-1, n)` -/
def P17856302072347764222.Spec : Prop :=
  ∀ n, (P17856302072347764222.a n : ℤ) = A099128 n

theorem P17856302072347764222.correct : P17856302072347764222.Spec := by
  intro n
  simp only [A099128]

end A099128

/-! ## A099128.P3869699307804780608

`C(A035927(n)+n, n)`
-/

namespace A099128.P3869699307804780608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035927 n + (n : ℤ)).toNat n

end

end A099128.P3869699307804780608

namespace A099128

/-- `C(A035927(n)+n, n)` -/
def P3869699307804780608.Spec : Prop :=
  ∀ n, (P3869699307804780608.a n : ℤ) = A099128 n

end A099128

/-! ## A099128.P9860034797948170405

`C(A000582(n+9)+n-1, n)`
-/

namespace A099128.P9860034797948170405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000582 (n + 9) + ((n : ℤ) - 1)).toNat n

end

end A099128.P9860034797948170405

namespace A099128

/-- `C(A000582(n+9)+n-1, n)` -/
def P9860034797948170405.Spec : Prop :=
  ∀ n, (P9860034797948170405.a n : ℤ) = A099128 n

end A099128

/-! ## A099128.P5210752757607044961

`A331436(eq[A004736(n+1)+1, A264391(n)])`
-/

namespace A099128.P5210752757607044961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A099128.P5210752757607044961

namespace A099128

/-- `A331436(eq[A004736(n+1)+1, A264391(n)])` -/
def P5210752757607044961.Spec : Prop :=
  ∀ n, P5210752757607044961.a n = A099128 n

end A099128

/-!
# A099131: Quintisection and binomial transform of 1/(1-x^4-x^5).

The programs for A099131, the canonical program `A099131.P6344728104374845067` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099131 has offset 0).

The definition of A099131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099131.P6344728104374845067

`A017827(5*n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099131

/-- `A017827(5*n)` -/
def P6344728104374845067.Spec : Prop :=
  ∀ n, P6344728104374845067.a n = A099131 n

theorem P6344728104374845067.correct : P6344728104374845067.Spec := by
  intro n
  simp only [A099131]

end A099131

/-! ## A099131.P7839916285434076215

`ogf((1-4x+6x^2-4x^3+x^4)/(1-5x+10x^2-10x^3+4x^4-x^5))`
-/

namespace A099131.P7839916285434076215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 6, -4, 1] [1, -5, 10, -10, 4, -1] n

end

end A099131.P7839916285434076215

namespace A099131

/-- `ogf((1-4x+6x^2-4x^3+x^4)/(1-5x+10x^2-10x^3+4x^4-x^5))` -/
def P7839916285434076215.Spec : Prop :=
  ∀ n, P7839916285434076215.a n = A099131 n

end A099131

/-! ## A099131.P5221035695570424324

`∑[A368475(n)]`
-/

namespace A099131.P5221035695570424324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099131.P5221035695570424324

namespace A099131

/-- `∑[A368475(n)]` -/
def P5221035695570424324.Spec : Prop :=
  ∀ n, P5221035695570424324.a n = A099131 n

end A099131

/-! ## A099131.P2540846707747988435

`A127839(5*n+6)`
-/

namespace A099131.P2540846707747988435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (5 * n + 6)

end

end A099131.P2540846707747988435

namespace A099131

/-- `A127839(5*n+6)` -/
def P2540846707747988435.Spec : Prop :=
  ∀ n, P2540846707747988435.a n = A099131 n

end A099131

/-! ## A099131.P16636725393936792762

`or(A000007(n), A017827(A008587(n)))`
-/

namespace A099131.P16636725393936792762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A017827 (A008587 n).toNat)

end

end A099131.P16636725393936792762

namespace A099131

/-- `or(A000007(n), A017827(A008587(n)))` -/
def P16636725393936792762.Spec : Prop :=
  ∀ n, P16636725393936792762.a n = A099131 n

end A099131

/-! ## A099131.P15329485254554214947

`A017827(A008574(n)+n)+A000007(n)`
-/

namespace A099131.P15329485254554214947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (A008574 n + (n : ℤ)).toNat + A000007 n

end

end A099131.P15329485254554214947

namespace A099131

/-- `A017827(A008574(n)+n)+A000007(n)` -/
def P15329485254554214947.Spec : Prop :=
  ∀ n, P15329485254554214947.a n = A099131 n

end A099131

/-! ## A099131.P9475316582690344699

`Δ[A127839(Δ[A005891(n)])]`
-/

namespace A099131.P9475316582690344699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099131.P9475316582690344699

namespace A099131

/-- `Δ[A127839(Δ[A005891(n)])]` -/
def P9475316582690344699.Spec : Prop :=
  ∀ n, P9475316582690344699.a n = A099131 n

end A099131

/-! ## A099131.P2296142991235709884

`Δ[A127839(A008587(n+1))]`
-/

namespace A099131.P2296142991235709884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (A008587 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099131.P2296142991235709884

namespace A099131

/-- `Δ[A127839(A008587(n+1))]` -/
def P2296142991235709884.Spec : Prop :=
  ∀ n, P2296142991235709884.a n = A099131 n

end A099131

/-! ## A099131.P7054593490006671454

`Δ[A017827(A168101(n)-1)]`
-/

namespace A099131.P7054593490006671454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (A168101 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099131.P7054593490006671454

namespace A099131

/-- `Δ[A017827(A168101(n)-1)]` -/
def P7054593490006671454.Spec : Prop :=
  ∀ n, P7054593490006671454.a n = A099131 n

end A099131

/-! ## A099131.P1731540493264675851

`Δ[A017827(A113127(n)+1+n)]`
-/

namespace A099131.P1731540493264675851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (A113127 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099131.P1731540493264675851

namespace A099131

/-- `Δ[A017827(A113127(n)+1+n)]` -/
def P1731540493264675851.Spec : Prop :=
  ∀ n, P1731540493264675851.a n = A099131 n

end A099131

/-! ## A099131.P14034289336491695223

`A369849(n+2)-(A369849(n+1)+A368475(n+1))`
-/

namespace A099131.P14034289336491695223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369849 (n + 2) - (A369849 (n + 1) + A368475 (n + 1))

end

end A099131.P14034289336491695223

namespace A099131

/-- `A369849(n+2)-(A369849(n+1)+A368475(n+1))` -/
def P14034289336491695223.Spec : Prop :=
  ∀ n, P14034289336491695223.a n = A099131 n

end A099131

/-!
# A099132: Quintisection of 1/(1-x^5-x^6).

The programs for A099132, the canonical program `A099132.P15506164860063817039` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099132 has offset 0).

The definition of A099132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099132.P15506164860063817039

`A017837(5*n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099132

/-- `A017837(5*n)` -/
def P15506164860063817039.Spec : Prop :=
  ∀ n, P15506164860063817039.a n = A099132 n

theorem P15506164860063817039.correct : P15506164860063817039.Spec := by
  intro n
  simp only [A099132]

end A099132

/-! ## A099132.P17188568084426318248

`ogf((1-4x+6x^2-4x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5-x^6))`
-/

namespace A099132.P17188568084426318248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 6, -4, 1] [1, -5, 10, -10, 5, -1, -1] n

end

end A099132.P17188568084426318248

namespace A099132

/-- `ogf((1-4x+6x^2-4x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5-x^6))` -/
def P17188568084426318248.Spec : Prop :=
  ∀ n, P17188568084426318248.a n = A099132 n

end A099132

/-! ## A099132.P6093457832199875876

`∑{#}[n, C(#, 5*(n-#))]`
-/

namespace A099132.P6093457832199875876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose k (5 * ((n : ℤ) - (k : ℤ))).toNat

end

end A099132.P6093457832199875876

namespace A099132

/-- `∑{#}[n, C(#, 5*(n-#))]` -/
def P6093457832199875876.Spec : Prop :=
  ∀ n, (P6093457832199875876.a n : ℤ) = A099132 n

end A099132

/-! ## A099132.P3210817682808769690

`A127840(5*n+7)`
-/

namespace A099132.P3210817682808769690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (5 * n + 7)

end

end A099132.P3210817682808769690

namespace A099132

/-- `A127840(5*n+7)` -/
def P3210817682808769690.Spec : Prop :=
  ∀ n, P3210817682808769690.a n = A099132 n

end A099132

/-! ## A099132.P7324054329367575327

`∑[A127840(A008587(n)+1)]`
-/

namespace A099132.P7324054329367575327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (A008587 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099132.P7324054329367575327

namespace A099132

/-- `∑[A127840(A008587(n)+1)]` -/
def P7324054329367575327.Spec : Prop :=
  ∀ n, P7324054329367575327.a n = A099132 n

end A099132

/-! ## A099132.P16193413933574926498

`∑[A127840(A016813(n)+n)]`
-/

namespace A099132.P16193413933574926498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (A016813 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099132.P16193413933574926498

namespace A099132

/-- `∑[A127840(A016813(n)+n)]` -/
def P16193413933574926498.Spec : Prop :=
  ∀ n, P16193413933574926498.a n = A099132 n

end A099132

/-! ## A099132.P18229144712938433053

`∑[A127840(A008574(n)+1+n)]+1`
-/

namespace A099132.P18229144712938433053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (A008574 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A099132.P18229144712938433053

namespace A099132

/-- `∑[A127840(A008574(n)+1+n)]+1` -/
def P18229144712938433053.Spec : Prop :=
  ∀ n, P18229144712938433053.a n = A099132 n

end A099132

/-! ## A099132.P18054625659274912589

`Δ[A017837(A016813(n)+n)]`
-/

namespace A099132.P18054625659274912589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (A016813 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099132.P18054625659274912589

namespace A099132

/-- `Δ[A017837(A016813(n)+n)]` -/
def P18054625659274912589.Spec : Prop :=
  ∀ n, P18054625659274912589.a n = A099132 n

end A099132

/-! ## A099132.P15515430506636538162

`Δ[A127840(A008574(n+2)+n)]`
-/

namespace A099132.P15515430506636538162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (A008574 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099132.P15515430506636538162

namespace A099132

/-- `Δ[A127840(A008574(n+2)+n)]` -/
def P15515430506636538162.Spec : Prop :=
  ∀ n, P15515430506636538162.a n = A099132 n

end A099132

/-!
# A099133: a(n) = 4^(n-1)*Fibonacci(n).

The programs for A099133, the canonical program `A099133.P3288702910242946880` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099133 has offset 0).

The definition of A099133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099133.P7554084126552789397

`ogf(x/(1-4x-16x^2))`
-/

namespace A099133.P7554084126552789397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, -16] n

end

end A099133.P7554084126552789397

namespace A099133

/-- `ogf(x/(1-4x-16x^2))` -/
def P7554084126552789397.Spec : Prop :=
  ∀ n, P7554084126552789397.a n = A099133 n

end A099133

/-! ## A099133.P3288702910242946880

`4*a(n-1)+16*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099133

/-- `4*a(n-1)+16*a(n-2)` -/
def P3288702910242946880.Spec : Prop :=
  ∀ n, (P3288702910242946880.a n : ℤ) = A099133 n

theorem P3288702910242946880.correct : P3288702910242946880.Spec := by
  intro n
  simp only [A099133]

end A099133

/-! ## A099133.P10717925554045308101

`4^(n-1)*A000045(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099133.P10717925554045308101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000045 n : ℚ)

end

end A099133.P10717925554045308101

namespace A099133

/-- `4^(n-1)*A000045(n)` -/
def P10717925554045308101.Spec : Prop :=
  ∀ n, P10717925554045308101.a n = (A099133 n : ℚ)

end A099133

/-! ## A099133.P11293041568235088857

`4*(a(n-1)+4*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A099133.P11293041568235088857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * (a (n - 1) + 4 * a (n - 2))

end

end A099133.P11293041568235088857

namespace A099133

/-- `4*(a(n-1)+4*a(n-2))` -/
def P11293041568235088857.Spec : Prop :=
  ∀ n, (P11293041568235088857.a n : ℤ) = A099133 n

theorem P11293041568235088857.correct : P11293041568235088857.Spec := by
  intro n
  simp only [A099133, Nat.add_sub_cancel, A099133.P11293041568235088857.a, A099133.P3288702910242946880.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A099133

/-! ## A099133.P6049424385521286762

`2^(n-1)*A085449(n)`
-/

namespace A099133.P6049424385521286762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A085449 n : ℚ)

end

end A099133.P6049424385521286762

namespace A099133

/-- `2^(n-1)*A085449(n)` -/
def P6049424385521286762.Spec : Prop :=
  ∀ n, P6049424385521286762.a n = (A099133 n : ℚ)

end A099133

/-! ## A099133.P2222168400980377986

`2^(n-2)*A103435(n)`
-/

namespace A099133.P2222168400980377986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A103435 n : ℚ)

end

end A099133.P2222168400980377986

namespace A099133

/-- `2^(n-2)*A103435(n)` -/
def P2222168400980377986.Spec : Prop :=
  ∀ n, P2222168400980377986.a n = (A099133 n : ℚ)

end A099133

/-! ## A099133.P13143240536728632824

`sqrt(A007598(n))*4^(n-1)`
-/

namespace A099133.P13143240536728632824
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 n : ℝ) * ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)

end

end A099133.P13143240536728632824

namespace A099133

/-- `sqrt(A007598(n))*4^(n-1)` -/
def P13143240536728632824.Spec : Prop :=
  ∀ n, P13143240536728632824.a n = (A099133 n : ℝ)

end A099133

/-! ## A099133.P12030523846830769212

`(2^(n-1))²*A103609(2*n)`
-/

namespace A099133.P12030523846830769212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2 * (A103609 (2 * n) : ℚ)

end

end A099133.P12030523846830769212

namespace A099133

/-- `(2^(n-1))²*A103609(2*n)` -/
def P12030523846830769212.Spec : Prop :=
  ∀ n, P12030523846830769212.a n = (A099133 n : ℚ)

end A099133

/-! ## A099133.P8401896836022438024

`(2^n/2)²*Δ[A000045(n+1)]`
-/

namespace A099133.P8401896836022438024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℚ) / 2) ^ 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A099133.P8401896836022438024

namespace A099133

/-- `(2^n/2)²*Δ[A000045(n+1)]` -/
def P8401896836022438024.Spec : Prop :=
  ∀ n, P8401896836022438024.a n = (A099133 n : ℚ)

end A099133

/-! ## A099133.P2815766740952075040

`(A001611(n)-1)*2^(n-1)*2^(n-1)`
-/

namespace A099133.P2815766740952075040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A099133.P2815766740952075040

namespace A099133

/-- `(A001611(n)-1)*2^(n-1)*2^(n-1)` -/
def P2815766740952075040.Spec : Prop :=
  ∀ n, P2815766740952075040.a n = (A099133 n : ℚ)

end A099133

/-! ## A099133.P2998579219525925856

`A085449(n)*A131577(n)`
-/

namespace A099133.P2998579219525925856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 n * A131577 n

end

end A099133.P2998579219525925856

namespace A099133

/-- `A085449(n)*A131577(n)` -/
def P2998579219525925856.Spec : Prop :=
  ∀ n, P2998579219525925856.a n = A099133 n

end A099133

/-! ## A099133.P17735369828092369245

`A000045(n)*A034008(2*n)`
-/

namespace A099133.P17735369828092369245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A034008 (2 * n)

end

end A099133.P17735369828092369245

namespace A099133

/-- `A000045(n)*A034008(2*n)` -/
def P17735369828092369245.Spec : Prop :=
  ∀ n, P17735369828092369245.a n = A099133 n

end A099133

/-! ## A099133.P17109679967338509181

`A000045(n)*A166444(2*n)`
-/

namespace A099133.P17109679967338509181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A166444 (2 * n)

end

end A099133.P17109679967338509181

namespace A099133

/-- `A000045(n)*A166444(2*n)` -/
def P17109679967338509181.Spec : Prop :=
  ∀ n, P17109679967338509181.a n = A099133 n

end A099133

/-! ## A099133.P7593542565883158499

`A000045(n)/4*A000302(n)`
-/

namespace A099133.P7593542565883158499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 4 * (A000302 n : ℚ)

end

end A099133.P7593542565883158499

namespace A099133

/-- `A000045(n)/4*A000302(n)` -/
def P7593542565883158499.Spec : Prop :=
  ∀ n, P7593542565883158499.a n = (A099133 n : ℚ)

end A099133

/-! ## A099133.P16078728036401863072

`A000045(n)*record[A009545(n)²]`
-/

namespace A099133.P16078728036401863072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099133.P16078728036401863072

namespace A099133

/-- `A000045(n)*record[A009545(n)²]` -/
def P16078728036401863072.Spec : Prop :=
  ∀ n, P16078728036401863072.a n = A099133 n

end A099133

/-! ## A099133.P8021169103207172761

`A011782(n)²*A212804(n+1)`
-/

namespace A099133.P8021169103207172761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2 * A212804 (n + 1)

end

end A099133.P8021169103207172761

namespace A099133

/-- `A011782(n)²*A212804(n+1)` -/
def P8021169103207172761.Spec : Prop :=
  ∀ n, P8021169103207172761.a n = A099133 n

end A099133

/-! ## A099133.P4012712675214691827

`A131577(n)²*A212804(n+1)`
-/

namespace A099133.P4012712675214691827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n ^ 2 * A212804 (n + 1)

end

end A099133.P4012712675214691827

namespace A099133

/-- `A131577(n)²*A212804(n+1)` -/
def P4012712675214691827.Spec : Prop :=
  ∀ n, P4012712675214691827.a n = A099133 n

end A099133

/-! ## A099133.P10596578019431643926

`A131577(n)²*A324969(n+1)`
-/

namespace A099133.P10596578019431643926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n ^ 2 * A324969 (n + 1)

end

end A099133.P10596578019431643926

namespace A099133

/-- `A131577(n)²*A324969(n+1)` -/
def P10596578019431643926.Spec : Prop :=
  ∀ n, P10596578019431643926.a n = A099133 n

end A099133

/-! ## A099133.P4764811448964473037

`(A001611(n)-1)*A011782(n)²`
-/

namespace A099133.P4764811448964473037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A011782 n ^ 2

end

end A099133.P4764811448964473037

namespace A099133

/-- `(A001611(n)-1)*A011782(n)²` -/
def P4764811448964473037.Spec : Prop :=
  ∀ n, P4764811448964473037.a n = A099133 n

end A099133

/-! ## A099133.P13471366201402691090

`(A001611(n)-1)*A131577(n)²`
-/

namespace A099133.P13471366201402691090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A131577 n ^ 2

end

end A099133.P13471366201402691090

namespace A099133

/-- `(A001611(n)-1)*A131577(n)²` -/
def P13471366201402691090.Spec : Prop :=
  ∀ n, P13471366201402691090.a n = A099133 n

end A099133

/-!
# A099134: Expansion of x/(1-2*x-19*x^2).

The programs for A099134, the canonical program `A099134.P4034254671346316752` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099134 has offset 0).

The definition of A099134 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-2x-19x^2))` (program `A099134.P4034254671346316752`, by `A099134.P4034254671346316752.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099134.P4034254671346316752

`ogf(x/(1-2x-19x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099134

/-- `ogf(x/(1-2x-19x^2))` -/
def P4034254671346316752.Spec : Prop :=
  ∀ n, P4034254671346316752.a n = A099134 n

theorem P4034254671346316752.correct : P4034254671346316752.Spec := by
  intro n
  simp only [A099134]

end A099134

/-! ## A099134.P10549141385887868317

`2*a(n-1)+19*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A099134.P10549141385887868317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) + 19 * a (n - 2)

end

end A099134.P10549141385887868317

namespace A099134

/-- `2*a(n-1)+19*a(n-2)` -/
def P10549141385887868317.Spec : Prop :=
  ∀ n, (P10549141385887868317.a n : ℤ) = A099134 n

end A099134

/-! ## A099134.P13070665568879524638

`((1+2*sqrt(5))^n-(1-2*sqrt(5))^n)/(4*sqrt(5))`
-/

namespace A099134.P13070665568879524638
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 2 * Real.sqrt (5 : ℝ)) ^ n - (1 - 2 * Real.sqrt (5 : ℝ)) ^ n) / (4 * Real.sqrt (5 : ℝ))

end

end A099134.P13070665568879524638

namespace A099134

/-- `((1+2*sqrt(5))^n-(1-2*sqrt(5))^n)/(4*sqrt(5))` -/
def P13070665568879524638.Spec : Prop :=
  ∀ n, P13070665568879524638.a n = (A099134 n : ℝ)

end A099134

/-! ## A099134.P3291881729886528087

`∑{#}[n, (-1)^(n-#)*C(n, #)*4^(#-1)*A000045(#)]`
-/

namespace A099134.P3291881729886528087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (4 : ℚ) ^ ((k : ℤ) - 1 : ℤ) * (A000045 k : ℚ)

end

end A099134.P3291881729886528087

namespace A099134

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*4^(#-1)*A000045(#)]` -/
def P3291881729886528087.Spec : Prop :=
  ∀ n, P3291881729886528087.a n = (A099134 n : ℚ)

end A099134

/-! ## A099134.P8737546807906347218

`∑{#}[n, C(n, 2*#+1)*20^#]`
-/

namespace A099134.P8737546807906347218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n (2 * k + 1) * 20 ^ k

end

end A099134.P8737546807906347218

namespace A099134

/-- `∑{#}[n, C(n, 2*#+1)*20^#]` -/
def P8737546807906347218.Spec : Prop :=
  ∀ n, (P8737546807906347218.a n : ℤ) = A099134 n

end A099134

/-! ## A099134.P5111342895171203152

`a(n-1)+a(n-1)+lcm(19, a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A099134.P5111342895171203152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + Nat.lcm 19 (a (n - 2)))

end

end A099134.P5111342895171203152

namespace A099134

/-- `a(n-1)+a(n-1)+lcm(19, a(n-2))` -/
def P5111342895171203152.Spec : Prop :=
  ∀ n, (P5111342895171203152.a n : ℤ) = A099134 n

end A099134

/-!
# A099137: Iterated pentagonal numbers starting with 2.

The programs for A099137, the canonical program `A099137.P5830458086736478255` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099137 has offset 0).

The definition of A099137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099137.P5830458086736478255

`a(n-1)*(3*a(n-1)-1)/2` with `a(0)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099137

/-- `a(n-1)*(3*a(n-1)-1)/2` -/
def P5830458086736478255.Spec : Prop :=
  ∀ n, P5830458086736478255.a n = (A099137 n : ℚ)

end A099137

/-! ## A099137.P2221575955627232955

`C(3*a(n-1), 2)/3` with `a(0)=2`
-/

namespace A099137.P2221575955627232955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (Nat.choose (SequenceMachineLib.roundAway (3 * a (n - 1))).toNat 2 : ℚ) / 3

end

end A099137.P2221575955627232955

namespace A099137

/-- `C(3*a(n-1), 2)/3` -/
def P2221575955627232955.Spec : Prop :=
  ∀ n, P2221575955627232955.a n = (A099137 n : ℚ)

end A099137

/-! ## A099137.P13419320581499707418

`C(a(n-1), 2)+a(n-1)²` with `a(0)=2`
-/

namespace A099137.P13419320581499707418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.choose (a (n - 1)) 2 + a (n - 1) ^ 2

end

end A099137.P13419320581499707418

namespace A099137

/-- `C(a(n-1), 2)+a(n-1)²` -/
def P13419320581499707418.Spec : Prop :=
  ∀ n, (P13419320581499707418.a n : ℤ) = A099137 n

end A099137

/-! ## A099137.P17475844901257776642

`a(n-1)+3*C(a(n-1), 2)` with `a(0)=2`
-/

namespace A099137.P17475844901257776642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 3 * Nat.choose (a (n - 1)) 2

end

end A099137.P17475844901257776642

namespace A099137

/-- `a(n-1)+3*C(a(n-1), 2)` -/
def P17475844901257776642.Spec : Prop :=
  ∀ n, (P17475844901257776642.a n : ℤ) = A099137 n

end A099137

/-!
# A099138: a(n) = 6^(n-1)*J(n), where J(n) = A001045(n).

The programs for A099138, the canonical program `A099138.P9201146872815965224` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099138 has offset 0).

The definition of A099138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099138.P11919860521776943498

`ogf(x/(1-6x-72x^2))`
-/

namespace A099138.P11919860521776943498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, -72] n

end

end A099138.P11919860521776943498

namespace A099138

/-- `ogf(x/(1-6x-72x^2))` -/
def P11919860521776943498.Spec : Prop :=
  ∀ n, P11919860521776943498.a n = A099138 n

end A099138

/-! ## A099138.P9763458510810099342

`6^(n-1)*∑{#}[floor((n-1)/2), C(n-#-1, #)*2^#]`
-/

namespace A099138.P9763458510810099342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((n : ℤ) - (k : ℤ) - 1).toNat k * 2 ^ k : ℕ) : ℚ)

end

end A099138.P9763458510810099342

namespace A099138

/-- `6^(n-1)*∑{#}[floor((n-1)/2), C(n-#-1, #)*2^#]` -/
def P9763458510810099342.Spec : Prop :=
  ∀ n, P9763458510810099342.a n = (A099138 n : ℚ)

end A099138

/-! ## A099138.P9201146872815965224

`6^(n-1)*A001045(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099138

/-- `6^(n-1)*A001045(n)` -/
def P9201146872815965224.Spec : Prop :=
  ∀ n, P9201146872815965224.a n = (A099138 n : ℚ)

end A099138

/-! ## A099138.P2092139684840037970

`(12^n-(-6)^n)/18`
-/

namespace A099138.P2092139684840037970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ n : ℤ) - (-6) ^ n : ℚ) / 18

end

end A099138.P2092139684840037970

namespace A099138

/-- `(12^n-(-6)^n)/18` -/
def P2092139684840037970.Spec : Prop :=
  ∀ n, P2092139684840037970.a n = (A099138 n : ℚ)

end A099138

/-! ## A099138.P11413606597328774974

`72*a(n-2)+6*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A099138.P11413606597328774974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  72 * a (n - 2) + 6 * a (n - 1)

end

end A099138.P11413606597328774974

namespace A099138

/-- `72*a(n-2)+6*a(n-1)` -/
def P11413606597328774974.Spec : Prop :=
  ∀ n, (P11413606597328774974.a n : ℤ) = A099138 n

end A099138

/-! ## A099138.P6789353436511975226

`2^(n-1)*A080424(n)`
-/

namespace A099138.P6789353436511975226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A080424 n : ℚ)

end

end A099138.P6789353436511975226

namespace A099138

/-- `2^(n-1)*A080424(n)` -/
def P6789353436511975226.Spec : Prop :=
  ∀ n, P6789353436511975226.a n = (A099138 n : ℚ)

end A099138

/-! ## A099138.P12007504004775922664

`3^(n-1)*A003683(n)`
-/

namespace A099138.P12007504004775922664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A003683 n : ℚ)

end

end A099138.P12007504004775922664

namespace A099138

/-- `3^(n-1)*A003683(n)` -/
def P12007504004775922664.Spec : Prop :=
  ∀ n, P12007504004775922664.a n = (A099138 n : ℚ)

end A099138

/-! ## A099138.P12321151356557468320

`3^(n-2)*A003674(n)`
-/

namespace A099138.P12321151356557468320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A003674 n : ℚ)

end

end A099138.P12321151356557468320

namespace A099138

/-- `3^(n-2)*A003674(n)` -/
def P12321151356557468320.Spec : Prop :=
  ∀ n, P12321151356557468320.a n = (A099138 n : ℚ)

end A099138

/-! ## A099138.P8044462530966095721

`(A128209(n)-1)*6^(n-1)`
-/

namespace A099138.P8044462530966095721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128209 n - 1 : ℚ) * (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A099138.P8044462530966095721

namespace A099138

/-- `(A128209(n)-1)*6^(n-1)` -/
def P8044462530966095721.Spec : Prop :=
  ∀ n, P8044462530966095721.a n = (A099138 n : ℚ)

end A099138

/-! ## A099138.P7908620068674155900

`abs(1-A084247(n))*6^(n-1)`
-/

namespace A099138.P7908620068674155900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|1 - A084247 n| : ℚ) * (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A099138.P7908620068674155900

namespace A099138

/-- `abs(1-A084247(n))*6^(n-1)` -/
def P7908620068674155900.Spec : Prop :=
  ∀ n, P7908620068674155900.a n = (A099138 n : ℚ)

end A099138

/-!
# A099139: a(n) = (18^n - (-6)^n)/24.

The programs for A099139, the canonical program `A099139.P16460174887791255677` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099139 has offset 0).

The definition of A099139 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(18^n-(-6)^n)/24` (program `A099139.P15903821014890468374`, by `A099139.P15903821014890468374.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099139.P16460174887791255677

`12*a(n-1)+108*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099139

/-- `12*a(n-1)+108*a(n-2)` -/
def P16460174887791255677.Spec : Prop :=
  ∀ n, (P16460174887791255677.a n : ℤ) = A099139 n

theorem P16460174887791255677.correct : P16460174887791255677.Spec := by
  intro n
  simp only [A099139]

end A099139

/-! ## A099139.P17642332120792937230

`6^(n-1)*A015518(n)`
-/

namespace A099139.P17642332120792937230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A015518 n : ℚ)

end

end A099139.P17642332120792937230

namespace A099139

/-- `6^(n-1)*A015518(n)` -/
def P17642332120792937230.Spec : Prop :=
  ∀ n, P17642332120792937230.a n = (A099139 n : ℚ)

end A099139

/-! ## A099139.P15903821014890468374

`(18^n-(-6)^n)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099139.P15903821014890468374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((18 ^ n : ℤ) - (-6) ^ n : ℚ) / 24

end

end A099139.P15903821014890468374

namespace A099139

/-- `(18^n-(-6)^n)/24` -/
def P15903821014890468374.Spec : Prop :=
  ∀ n, P15903821014890468374.a n = (A099139 n : ℚ)

theorem P15903821014890468374.correct : P15903821014890468374.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A099139, Nat.add_sub_cancel, A099139.P15903821014890468374.a, A099139.P16460174887791255677.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A099139, Nat.add_sub_cancel, A099139.P15903821014890468374.a, A099139.P16460174887791255677.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099139

/-! ## A099139.P16039711054710392224

`Δ[A091056(n)]*A140429(n)`
-/

namespace A099139.P16039711054710392224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A140429 n

end

end A099139.P16039711054710392224

namespace A099139

/-- `Δ[A091056(n)]*A140429(n)` -/
def P16039711054710392224.Spec : Prop :=
  ∀ n, P16039711054710392224.a n = A099139 n

end A099139

/-! ## A099139.P797933840680913266

`A025192(n)/2*A053524(n)`
-/

namespace A099139.P797933840680913266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025192 n : ℚ) / 2 * (A053524 n : ℚ)

end

end A099139.P797933840680913266

namespace A099139

/-- `A025192(n)/2*A053524(n)` -/
def P797933840680913266.Spec : Prop :=
  ∀ n, P797933840680913266.a n = (A099139 n : ℚ)

end A099139

/-! ## A099139.P17790052025261428136

`A015518(n)*A038256(A161680(n))`
-/

namespace A099139.P17790052025261428136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n * A038256 (A161680 n).toNat

end

end A099139.P17790052025261428136

namespace A099139

/-- `A015518(n)*A038256(A161680(n))` -/
def P17790052025261428136.Spec : Prop :=
  ∀ n, P17790052025261428136.a n = A099139 n

end A099139

/-! ## A099139.P7153205256329314006

`(A000244(n)-A025192(n))*A053524(n)`
-/

namespace A099139.P7153205256329314006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A025192 n) * A053524 n

end

end A099139.P7153205256329314006

namespace A099139

/-- `(A000244(n)-A025192(n))*A053524(n)` -/
def P7153205256329314006.Spec : Prop :=
  ∀ n, P7153205256329314006.a n = A099139 n

end A099139

/-! ## A099139.P571739060620853941

`A011782(n)*A015518(n)*A140429(n)`
-/

namespace A099139.P571739060620853941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A015518 n * A140429 n

end

end A099139.P571739060620853941

namespace A099139

/-- `A011782(n)*A015518(n)*A140429(n)` -/
def P571739060620853941.Spec : Prop :=
  ∀ n, P571739060620853941.a n = A099139 n

end A099139

/-! ## A099139.P16784725435839415339

`A015518(n)*A131577(n)*A140429(n)`
-/

namespace A099139.P16784725435839415339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n * A131577 n * A140429 n

end

end A099139.P16784725435839415339

namespace A099139

/-- `A015518(n)*A131577(n)*A140429(n)` -/
def P16784725435839415339.Spec : Prop :=
  ∀ n, P16784725435839415339.a n = A099139 n

end A099139

/-! ## A099139.P15847280121716689997

`A053524(n)*A140303(A001105(n))`
-/

namespace A099139.P15847280121716689997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053524 n * A140303 (A001105 n).toNat

end

end A099139.P15847280121716689997

namespace A099139

/-- `A053524(n)*A140303(A001105(n))` -/
def P15847280121716689997.Spec : Prop :=
  ∀ n, P15847280121716689997.a n = A099139 n

end A099139

/-!
# A099140: a(n) = 4^n * T(n,3/2) where T is the Chebyshev polynomial of the first kind.

The programs for A099140, the canonical program `A099140.P1861307016266535686` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099140 has offset 0).

The definition of A099140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099140.P2358044454434393388

`ogf((1-6x)/(1-12x+16x^2))`
-/

namespace A099140.P2358044454434393388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -12, 16] n

end

end A099140.P2358044454434393388

namespace A099140

/-- `ogf((1-6x)/(1-12x+16x^2))` -/
def P2358044454434393388.Spec : Prop :=
  ∀ n, P2358044454434393388.a n = A099140 n

end A099140

/-! ## A099140.P1861307016266535686

`12*a(n-1)-16*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099140

/-- `12*a(n-1)-16*a(n-2)` -/
def P1861307016266535686.Spec : Prop :=
  ∀ n, P1861307016266535686.a n = A099140 n

theorem P1861307016266535686.correct : P1861307016266535686.Spec := by
  intro n
  simp only [A099140]

end A099140

/-! ## A099140.P9060978267561910796

`A084057(2*n)`
-/

namespace A099140.P9060978267561910796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 (2 * n)

end

end A099140.P9060978267561910796

namespace A099140

/-- `A084057(2*n)` -/
def P9060978267561910796.Spec : Prop :=
  ∀ n, P9060978267561910796.a n = A099140 n

end A099140

/-! ## A099140.P15148843078555033098

`Δ[record[A087205(n)]]`
-/

namespace A099140.P15148843078555033098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087205 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099140.P15148843078555033098

namespace A099140

/-- `Δ[record[A087205(n)]]` -/
def P15148843078555033098.Spec : Prop :=
  ∀ n, P15148843078555033098.a n = A099140 n

end A099140

/-! ## A099140.P16384559162681622235

`Δ[A319196(2*n)]`
-/

namespace A099140.P16384559162681622235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319196 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099140.P16384559162681622235

namespace A099140

/-- `Δ[A319196(2*n)]` -/
def P16384559162681622235.Spec : Prop :=
  ∀ n, P16384559162681622235.a n = A099140 n

end A099140

/-! ## A099140.P823501072352418825

`A203579(2*n)-1`
-/

namespace A099140.P823501072352418825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203579 (2 * n) - 1

end

end A099140.P823501072352418825

namespace A099140

/-- `A203579(2*n)-1` -/
def P823501072352418825.Spec : Prop :=
  ∀ n, P823501072352418825.a n = A099140 n

end A099140

/-! ## A099140.P4314372607226383555

`A087131(2*n)/2`
-/

namespace A099140.P4314372607226383555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087131 (2 * n) : ℚ) / 2

end

end A099140.P4314372607226383555

namespace A099140

/-- `A087131(2*n)/2` -/
def P4314372607226383555.Spec : Prop :=
  ∀ n, P4314372607226383555.a n = (A099140 n : ℚ)

end A099140

/-! ## A099140.P9420464753382012356

`2^n*A098648(n)`
-/

namespace A099140.P9420464753382012356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A098648 n

end

end A099140.P9420464753382012356

namespace A099140

/-- `2^n*A098648(n)` -/
def P9420464753382012356.Spec : Prop :=
  ∀ n, P9420464753382012356.a n = A099140 n

end A099140

/-! ## A099140.P3746596062151519679

`ceil(A272263(2*n)/2)`
-/

namespace A099140.P3746596062151519679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A272263 (2 * n) : ℚ) / 2⌉

end

end A099140.P3746596062151519679

namespace A099140

/-- `ceil(A272263(2*n)/2)` -/
def P3746596062151519679.Spec : Prop :=
  ∀ n, P3746596062151519679.a n = A099140 n

end A099140

/-! ## A099140.P4429500805646221030

`A000032(2*n)/2*4^n`
-/

namespace A099140.P4429500805646221030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) : ℚ) / 2 * (4 ^ n : ℚ)

end

end A099140.P4429500805646221030

namespace A099140

/-- `A000032(2*n)/2*4^n` -/
def P4429500805646221030.Spec : Prop :=
  ∀ n, P4429500805646221030.a n = (A099140 n : ℚ)

end A099140

/-!
# A099141: a(n) = 5^n * T(n,7/5) where T is the Chebyshev polynomial of the first kind.

The programs for A099141, the canonical program `A099141.P10035723015206730998` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099141 has offset 0).

The definition of A099141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099141.P727729307330537182

`ogf((1-7x)/(1-14x+25x^2))`
-/

namespace A099141.P727729307330537182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -14, 25] n

end

end A099141.P727729307330537182

namespace A099141

/-- `ogf((1-7x)/(1-14x+25x^2))` -/
def P727729307330537182.Spec : Prop :=
  ∀ n, P727729307330537182.a n = A099141 n

end A099141

/-! ## A099141.P10035723015206730998

`14*a(n-1)-25*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099141

/-- `14*a(n-1)-25*a(n-2)` -/
def P10035723015206730998.Spec : Prop :=
  ∀ n, P10035723015206730998.a n = A099141 n

theorem P10035723015206730998.correct : P10035723015206730998.Spec := by
  intro n
  simp only [A099141]

end A099141

/-! ## A099141.P5712371824450338724

`A002533(2*n)`
-/

namespace A099141.P5712371824450338724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 (2 * n)

end

end A099141.P5712371824450338724

namespace A099141

/-- `A002533(2*n)` -/
def P5712371824450338724.Spec : Prop :=
  ∀ n, P5712371824450338724.a n = A099141 n

end A099141

/-! ## A099141.P12155657216422512718

`record[A002533(n)/(-1)^n]`
-/

namespace A099141.P12155657216422512718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002533 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099141.P12155657216422512718

namespace A099141

/-- `record[A002533(n)/(-1)^n]` -/
def P12155657216422512718.Spec : Prop :=
  ∀ n, P12155657216422512718.a n = (A099141 n : ℚ)

end A099141

/-! ## A099141.P4198570334076173791

`record[A002533(A110090(n))]`
-/

namespace A099141.P4198570334076173791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 (A110090 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099141.P4198570334076173791

namespace A099141

/-- `record[A002533(A110090(n))]` -/
def P4198570334076173791.Spec : Prop :=
  ∀ n, P4198570334076173791.a n = A099141 n

end A099141

/-! ## A099141.P17733631363567076992

`record[A002533(A124625(n))]`
-/

namespace A099141.P17733631363567076992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099141.P17733631363567076992

namespace A099141

/-- `record[A002533(A124625(n))]` -/
def P17733631363567076992.Spec : Prop :=
  ∀ n, P17733631363567076992.a n = A099141 n

end A099141

/-! ## A099141.P9168245242497257691

`record[A002533(gcd(n, A004524(n)))]`
-/

namespace A099141.P9168245242497257691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 (Int.gcd (n : ℤ) (A004524 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099141.P9168245242497257691

namespace A099141

/-- `record[A002533(gcd(n, A004524(n)))]` -/
def P9168245242497257691.Spec : Prop :=
  ∀ n, P9168245242497257691.a n = A099141 n

end A099141

/-! ## A099141.P11880286736798104917

`A180168(2*n)-A083694(2*n)`
-/

namespace A099141.P11880286736798104917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180168 (2 * n) - A083694 (2 * n)

end

end A099141.P11880286736798104917

namespace A099141

/-- `A180168(2*n)-A083694(2*n)` -/
def P11880286736798104917.Spec : Prop :=
  ∀ n, P11880286736798104917.a n = A099141 n

end A099141

/-! ## A099141.P8961679300815069358

`A002532(2*n+1)-A002532(2*n)`
-/

namespace A099141.P8961679300815069358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 (2 * n + 1) - A002532 (2 * n)

end

end A099141.P8961679300815069358

namespace A099141

/-- `A002532(2*n+1)-A002532(2*n)` -/
def P8961679300815069358.Spec : Prop :=
  ∀ n, P8961679300815069358.a n = A099141 n

end A099141

/-! ## A099141.P13581730417161393717

`A180168(2*n)-2*A002532(2*n)`
-/

namespace A099141.P13581730417161393717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180168 (2 * n) - 2 * A002532 (2 * n)

end

end A099141.P13581730417161393717

namespace A099141

/-- `A180168(2*n)-2*A002532(2*n)` -/
def P13581730417161393717.Spec : Prop :=
  ∀ n, P13581730417161393717.a n = A099141 n

end A099141

/-!
# A099142: a(n) = 6^n * T(n, 4/3) where T is the Chebyshev polynomial of the first kind.

The programs for A099142, the canonical program `A099142.P16013712097056933243` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099142 has offset 0).

The definition of A099142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099142.P4616015328519183194

`ogf((1-8x)/(1-16x+36x^2))`
-/

namespace A099142.P4616015328519183194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8] [1, -16, 36] n

end

end A099142.P4616015328519183194

namespace A099142

/-- `ogf((1-8x)/(1-16x+36x^2))` -/
def P4616015328519183194.Spec : Prop :=
  ∀ n, P4616015328519183194.a n = A099142 n

end A099142

/-! ## A099142.P16013712097056933243

`16*a(n-1)-36*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099142

/-- `16*a(n-1)-36*a(n-2)` -/
def P16013712097056933243.Spec : Prop :=
  ∀ n, P16013712097056933243.a n = A099142 n

theorem P16013712097056933243.correct : P16013712097056933243.Spec := by
  intro n
  simp only [A099142]

end A099142

/-! ## A099142.P12930551753475792340

`A083098(2*n)`
-/

namespace A099142.P12930551753475792340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083098 (2 * n)

end

end A099142.P12930551753475792340

namespace A099142

/-- `A083098(2*n)` -/
def P12930551753475792340.Spec : Prop :=
  ∀ n, P12930551753475792340.a n = A099142 n

end A099142

/-! ## A099142.P16733790179193928782

`A127226(2*n)/2`
-/

namespace A099142.P16733790179193928782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127226 (2 * n) : ℚ) / 2

end

end A099142.P16733790179193928782

namespace A099142

/-- `A127226(2*n)/2` -/
def P16733790179193928782.Spec : Prop :=
  ∀ n, P16733790179193928782.a n = (A099142 n : ℚ)

end A099142

/-! ## A099142.P4383299626880599495

`2^n*A146964(n)`
-/

namespace A099142.P4383299626880599495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A146964 n

end

end A099142.P4383299626880599495

namespace A099142

/-- `2^n*A146964(n)` -/
def P4383299626880599495.Spec : Prop :=
  ∀ n, P4383299626880599495.a n = A099142 n

end A099142

/-! ## A099142.P13512442494944306802

`record[A083098(A014681(n))]`
-/

namespace A099142.P13512442494944306802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083098 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099142.P13512442494944306802

namespace A099142

/-- `record[A083098(A014681(n))]` -/
def P13512442494944306802.Spec : Prop :=
  ∀ n, P13512442494944306802.a n = A099142 n

end A099142

/-! ## A099142.P7799774740806538528

`record[A083098(A029578(n))]`
-/

namespace A099142.P7799774740806538528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083098 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099142.P7799774740806538528

namespace A099142

/-- `record[A083098(A029578(n))]` -/
def P7799774740806538528.Spec : Prop :=
  ∀ n, P7799774740806538528.a n = A099142 n

end A099142

/-! ## A099142.P17899699995133663268

`record[A083098(A083220(n))]`
-/

namespace A099142.P17899699995133663268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083098 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099142.P17899699995133663268

namespace A099142

/-- `record[A083098(A083220(n))]` -/
def P17899699995133663268.Spec : Prop :=
  ∀ n, P17899699995133663268.a n = A099142 n

end A099142

/-! ## A099142.P10273013195783874608

`record[A083098(A153733(n))]`
-/

namespace A099142.P10273013195783874608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083098 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099142.P10273013195783874608

namespace A099142

/-- `record[A083098(A153733(n))]` -/
def P10273013195783874608.Spec : Prop :=
  ∀ n, P10273013195783874608.a n = A099142 n

end A099142

/-! ## A099142.P4982191911668627118

`record[A083098(n-A007814(n+1))]`
-/

namespace A099142.P4982191911668627118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083098 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099142.P4982191911668627118

namespace A099142

/-- `record[A083098(n-A007814(n+1))]` -/
def P4982191911668627118.Spec : Prop :=
  ∀ n, P4982191911668627118.a n = A099142 n

end A099142

/-!
# A099144: Numbers n such that the equation S(k) = S(n+k) has no solutions for k <= n, where S is the Kempner function A002034.

The programs for A099144, there is no canonical definition to state claims against.
-/

/-! ## A099144.P14607431515132151004

`∪[∏[∏{d}[n+1, #]], ∏[n+1]]`
-/

namespace A099144.P14607431515132151004
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = x) n

end

end A099144.P14607431515132151004

/-! ## A099144.P6168647673141353325

`record[A331918(n)]`
-/

namespace A099144.P6168647673141353325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099144.P6168647673141353325

/-! ## A099144.P13228678658098142777

`A323505(or(n, ∑[n]))`
-/

namespace A099144.P13228678658098142777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323505 (Nat.lor n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A099144.P13228678658098142777

/-!
# A099145: Numbers in base 10 that are palindromic in bases 7 and 8.

The programs for A099145, there is no canonical definition to state claims against.
-/

/-! ## A099145.P6570083221867475860

`∩[A029803(n+1), A029954(n+1)]`
-/

namespace A099145.P6570083221867475860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099145.P6570083221867475860

/-! ## A099145.P15250265305207384699

`eq[A055955(n)², A055957(n)]`
-/

namespace A099145.P15250265305207384699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099145.P15250265305207384699

/-! ## A099145.P7148151850607418266

`∩[eq[0, A055955(n)], A029803(n+1)]`
-/

namespace A099145.P7148151850607418266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A099145.P7148151850607418266

/-! ## A099145.P15593956147845062301

`∩[A029803(n+1), eq[n, A030106(n)]]`
-/

namespace A099145.P15593956147845062301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A099145.P15593956147845062301

/-! ## A099145.P1951169548046234913

`eq[n, A030107(A055954(n)/2)]`
-/

namespace A099145.P1951169548046234913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (SequenceMachineLib.roundAway ((A055954 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099145.P1951169548046234913

/-!
# A099146: Numbers in base 10 that are palindromic in bases 8 and 9.

The programs for A099146, there is no canonical definition to state claims against.
-/

/-! ## A099146.P11995389828915329292

`∩[A029803(n+1), A029955(n+1)]`
-/

namespace A099146.P11995389828915329292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099146.P11995389828915329292

/-! ## A099146.P5122535743266399198

`eq[n, A030108(A030107(n))]`
-/

namespace A099146.P5122535743266399198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 (A030107 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099146.P5122535743266399198

/-! ## A099146.P7361153118471531415

`eq[A055956(n), A055958(n)]`
-/

namespace A099146.P7361153118471531415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055956 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099146.P7361153118471531415

/-! ## A099146.P13522657809208589905

`eq[A055957(n), A055959(n)]`
-/

namespace A099146.P13522657809208589905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099146.P13522657809208589905

/-! ## A099146.P11786831614374045038

`eq[n, A055957(n)+A030108(n)]`
-/

namespace A099146.P11786831614374045038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n + A030108 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099146.P11786831614374045038

/-!
# A099147: Iterated hexagonal numbers, starting at 1.

The programs for A099147, the canonical program `A099147.P14533518462890594633` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099147 has offset 1).

The definition of A099147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099147.P14533518462890594633

`2*a(n-1)²-a(n-1)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099147

/-- `2*a(n-1)²-a(n-1)` -/
def P14533518462890594633.Spec : Prop :=
  ∀ n, P14533518462890594633.a n = A099147 (n + 1)

theorem P14533518462890594633.correct : P14533518462890594633.Spec := by
  intro n
  simp only [A099147, Nat.add_sub_cancel]

end A099147

/-! ## A099147.P6564076552988560791

`C(lcm(4, a(n-1)), 2)` with `a(0)=1`
-/

namespace A099147.P6564076552988560791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (Nat.lcm 4 (a (n - 1))) 2

end

end A099147.P6564076552988560791

namespace A099147

/-- `C(lcm(4, a(n-1)), 2)` -/
def P6564076552988560791.Spec : Prop :=
  ∀ n, (P6564076552988560791.a n : ℤ) = A099147 (n + 1)

end A099147

/-! ## A099147.P15047365275838359597

`C(2*a(n-1), 2)` with `a(0)=1, a(1)=6`
-/

namespace A099147.P15047365275838359597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  Nat.choose (2 * a (n - 1)) 2

end

end A099147.P15047365275838359597

namespace A099147

/-- `C(2*a(n-1), 2)` -/
def P15047365275838359597.Spec : Prop :=
  ∀ n, (P15047365275838359597.a n : ℤ) = A099147 (n + 1)

end A099147

/-! ## A099147.P6619399039261235452

`(2*a(n-1)-1)*a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A099147.P6619399039261235452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  (2 * a (n - 1) - 1) * a (n - 1)

end

end A099147.P6619399039261235452

namespace A099147

/-- `(2*a(n-1)-1)*a(n-1)` -/
def P6619399039261235452.Spec : Prop :=
  ∀ n, P6619399039261235452.a n = A099147 (n + 1)

theorem P6619399039261235452.correct : P6619399039261235452.Spec := by
  intro n
  simp only [A099147, Nat.add_sub_cancel, A099147.P6619399039261235452.a, A099147.P14533518462890594633.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A099147

/-!
# A099150: Positive integers k such that f(k)+f(k)=concatenation of k and k, where f(k)=k(k+3)/2 (A000096).

The programs for A099150, the canonical program `A099150.P16539555369360394122` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099150 has offset 1).

The definition of A099150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099150.P8359773081655240742

`10^(n+1)-2`
-/

namespace A099150.P8359773081655240742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - 2

end

end A099150.P8359773081655240742

namespace A099150

/-- `10^(n+1)-2` -/
def P8359773081655240742.Spec : Prop :=
  ∀ n, P8359773081655240742.a n = A099150 (n + 1)

theorem P8359773081655240742.correct : P8359773081655240742.Spec := by
  intro n
  simp only [A099150, Nat.add_sub_cancel, A099150.P8359773081655240742.a, A099150.P16539555369360394122.a, A198971, A198971.P6851054874129121240.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A099150

/-! ## A099150.P2980992691264329749

`ogf((8+10x)/(1-11x+10x^2))`
-/

namespace A099150.P2980992691264329749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 10] [1, -11, 10] n

end

end A099150.P2980992691264329749

namespace A099150

/-- `ogf((8+10x)/(1-11x+10x^2))` -/
def P2980992691264329749.Spec : Prop :=
  ∀ n, P2980992691264329749.a n = A099150 (n + 1)

end A099150

/-! ## A099150.P16539555369360394122

`2*A198971(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099150

/-- `2*A198971(n)` -/
def P16539555369360394122.Spec : Prop :=
  ∀ n, P16539555369360394122.a n = A099150 (n + 1)

theorem P16539555369360394122.correct : P16539555369360394122.Spec := by
  intro n
  simp only [A099150, Nat.add_sub_cancel]

end A099150

/-! ## A099150.P1596679238653840591

`A177096(n+1)/5`
-/

namespace A099150.P1596679238653840591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177096 (n + 1) : ℚ) / 5

end

end A099150.P1596679238653840591

namespace A099150

/-- `A177096(n+1)/5` -/
def P1596679238653840591.Spec : Prop :=
  ∀ n, P1596679238653840591.a n = (A099150 (n + 1) : ℚ)

theorem P1596679238653840591.correct : P1596679238653840591.Spec := by
  intro n
  simp only [A099150, Nat.add_sub_cancel, A099150.P1596679238653840591.a, A099150.P16539555369360394122.a, A177096, A177096.P5034359862929634776.a, A198971, A198971.P6851054874129121240.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A099150

/-! ## A099150.P18427703665829896354

`∑[and(Δ[10^n], -2)]`
-/

namespace A099150.P18427703665829896354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099150.P18427703665829896354

namespace A099150

/-- `∑[and(Δ[10^n], -2)]` -/
def P18427703665829896354.Spec : Prop :=
  ∀ n, P18427703665829896354.a n = A099150 (n + 1)

end A099150

/-! ## A099150.P7568974504976823752

`xor(1, ∑[9*10^n])`
-/

namespace A099150.P7568974504976823752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099150.P7568974504976823752

namespace A099150

/-- `xor(1, ∑[9*10^n])` -/
def P7568974504976823752.Spec : Prop :=
  ∀ n, (P7568974504976823752.a n : ℤ) = A099150 (n + 1)

end A099150

/-! ## A099150.P18011808710944081038

`∑[10*a(n-1)]` with `a(0)=8, a(1)=90`
-/

namespace A099150.P18011808710944081038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 90] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099150.P18011808710944081038

namespace A099150

/-- `∑[10*a(n-1)]` -/
def P18011808710944081038.Spec : Prop :=
  ∀ n, (P18011808710944081038.a n : ℤ) = A099150 (n + 1)

end A099150

/-! ## A099150.P17455913812131614418

`record[10^abs(1-n)-2]`
-/

namespace A099150.P17455913812131614418
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099150.P17455913812131614418

namespace A099150

/-- `record[10^abs(1-n)-2]` -/
def P17455913812131614418.Spec : Prop :=
  ∀ n, P17455913812131614418.a n = (A099150 (n + 1) : ℚ)

end A099150

/-! ## A099150.P3457261761714823097

`2*(5*a(n-1)+9)` with `a(0)=8`
-/

namespace A099150.P3457261761714823097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  2 * (5 * a (n - 1) + 9)

end

end A099150.P3457261761714823097

namespace A099150

/-- `2*(5*a(n-1)+9)` -/
def P3457261761714823097.Spec : Prop :=
  ∀ n, (P3457261761714823097.a n : ℤ) = A099150 (n + 1)

theorem P3457261761714823097.correct : P3457261761714823097.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A099150, Nat.add_sub_cancel, A099150.P3457261761714823097.a, A099150.P16539555369360394122.a, A198971, A198971.P6851054874129121240.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A099150, Nat.add_sub_cancel, A099150.P3457261761714823097.a, A099150.P16539555369360394122.a, A198971, A198971.P6851054874129121240.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A099150

/-! ## A099150.P8637073125254668832

`∑[abs(Δ[A103456(n)])]`
-/

namespace A099150.P8637073125254668832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103456 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099150.P8637073125254668832

namespace A099150

/-- `∑[abs(Δ[A103456(n)])]` -/
def P8637073125254668832.Spec : Prop :=
  ∀ n, P8637073125254668832.a n = A099150 (n + 1)

end A099150

/-! ## A099150.P14367715836996111130

`A256162(2*(n+1))`
-/

namespace A099150.P14367715836996111130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256162 (2 * (n + 1))

end

end A099150.P14367715836996111130

namespace A099150

/-- `A256162(2*(n+1))` -/
def P14367715836996111130.Spec : Prop :=
  ∀ n, P14367715836996111130.a n = A099150 (n + 1)

end A099150

/-! ## A099150.P2149363699802943112

`2*(A199685(n)-2)`
-/

namespace A099150.P2149363699802943112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199685 n - 2)

end

end A099150.P2149363699802943112

namespace A099150

/-- `2*(A199685(n)-2)` -/
def P2149363699802943112.Spec : Prop :=
  ∀ n, P2149363699802943112.a n = A099150 (n + 1)

theorem P2149363699802943112.correct : P2149363699802943112.Spec := by
  intro n
  simp only [A099150, Nat.add_sub_cancel, A099150.P2149363699802943112.a, A099150.P16539555369360394122.a, A198971, A198971.P6851054874129121240.a, A199685, A199685.P3198493407434743827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099150

/-! ## A099150.P6647244462752195642

`2*(A086576(n)+4)`
-/

namespace A099150.P6647244462752195642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A086576 n + 4)

end

end A099150.P6647244462752195642

namespace A099150

/-- `2*(A086576(n)+4)` -/
def P6647244462752195642.Spec : Prop :=
  ∀ n, P6647244462752195642.a n = A099150 (n + 1)

theorem P6647244462752195642.correct : P6647244462752195642.Spec := by
  intro n
  simp only [A099150, Nat.add_sub_cancel, A099150.P6647244462752195642.a, A099150.P16539555369360394122.a, A086576, A086576.P5175639682884898916.a, A198971, A198971.P6851054874129121240.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099150

/-! ## A099150.P15636423966402417224

`2*A268099(2*n)`
-/

namespace A099150.P15636423966402417224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A268099 (2 * n)

end

end A099150.P15636423966402417224

namespace A099150

/-- `2*A268099(2*n)` -/
def P15636423966402417224.Spec : Prop :=
  ∀ n, P15636423966402417224.a n = A099150 (n + 1)

end A099150

/-! ## A099150.P16826228504985325763

`∑[2*Δ[A093143(n)]]`
-/

namespace A099150.P16826228504985325763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099150.P16826228504985325763

namespace A099150

/-- `∑[2*Δ[A093143(n)]]` -/
def P16826228504985325763.Spec : Prop :=
  ∀ n, P16826228504985325763.a n = A099150 (n + 1)

end A099150

/-! ## A099150.P9665468185248636432

`∑[2*A346629(n+2)]`
-/

namespace A099150.P9665468185248636432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A346629 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099150.P9665468185248636432

namespace A099150

/-- `∑[2*A346629(n+2)]` -/
def P9665468185248636432.Spec : Prop :=
  ∀ n, P9665468185248636432.a n = A099150 (n + 1)

end A099150

/-! ## A099150.P10114464311893519113

`2*A173712(2*(n+1))`
-/

namespace A099150.P10114464311893519113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173712 (2 * (n + 1))

end

end A099150.P10114464311893519113

namespace A099150

/-- `2*A173712(2*(n+1))` -/
def P10114464311893519113.Spec : Prop :=
  ∀ n, P10114464311893519113.a n = A099150 (n + 1)

end A099150

/-! ## A099150.P3968250820216184495

`A061219(A017257(n))`
-/

namespace A099150.P3968250820216184495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061219 (A017257 n).toNat

end

end A099150.P3968250820216184495

namespace A099150

/-- `A061219(A017257(n))` -/
def P3968250820216184495.Spec : Prop :=
  ∀ n, P3968250820216184495.a n = A099150 (n + 1)

end A099150

/-! ## A099150.P2959049869383713999

`A331786(A017221(n))`
-/

namespace A099150.P2959049869383713999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331786 (A017221 n).toNat

end

end A099150.P2959049869383713999

namespace A099150

/-- `A331786(A017221(n))` -/
def P2959049869383713999.Spec : Prop :=
  ∀ n, P2959049869383713999.a n = A099150 (n + 1)

end A099150

/-! ## A099150.P9857723587149724617

`A331786(A017233(n))`
-/

namespace A099150.P9857723587149724617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331786 (A017233 n).toNat

end

end A099150.P9857723587149724617

namespace A099150

/-- `A331786(A017233(n))` -/
def P9857723587149724617.Spec : Prop :=
  ∀ n, P9857723587149724617.a n = A099150 (n + 1)

end A099150

/-!
# A099151: Positive integers a such that f(3a)+f(a)=concatenation of 3a and a, where f(k)=k(k+3)/2 (A000096).

The programs for A099151, the canonical program `A099151.P15911777622680170341` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099151 has offset 1).

The definition of A099151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099151.P15911777622680170341

`6*10^n-1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099151

/-- `6*10^n-1` -/
def P15911777622680170341.Spec : Prop :=
  ∀ n, P15911777622680170341.a n = A099151 (n + 1)

theorem P15911777622680170341.correct : P15911777622680170341.Spec := by
  intro n
  simp only [A099151, Nat.add_sub_cancel]

end A099151

/-! ## A099151.P4837940584719449012

`ogf((5+4x)/(1-11x+10x^2))`
-/

namespace A099151.P4837940584719449012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 4] [1, -11, 10] n

end

end A099151.P4837940584719449012

namespace A099151

/-- `ogf((5+4x)/(1-11x+10x^2))` -/
def P4837940584719449012.Spec : Prop :=
  ∀ n, P4837940584719449012.a n = A099151 (n + 1)

end A099151

/-! ## A099151.P1112119073973207963

`abs(10*a(n-1)+9)` with `a(0)=5`
-/

namespace A099151.P1112119073973207963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  10 * a (n - 1) + 9

end

end A099151.P1112119073973207963

namespace A099151

/-- `abs(10*a(n-1)+9)` -/
def P1112119073973207963.Spec : Prop :=
  ∀ n, (P1112119073973207963.a n : ℤ) = A099151 (n + 1)

theorem P1112119073973207963.correct : P1112119073973207963.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A099151, Nat.add_sub_cancel, A099151.P1112119073973207963.a, A099151.P15911777622680170341.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A099151, Nat.add_sub_cancel, A099151.P1112119073973207963.a, A099151.P15911777622680170341.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099151

/-! ## A099151.P9846172462094148265

`10*(a(n-1)+9/10)` with `a(0)=5`
-/

namespace A099151.P9846172462094148265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  10 * (a (n - 1) + (9 : ℚ) / 10)

end

end A099151.P9846172462094148265

namespace A099151

/-- `10*(a(n-1)+9/10)` -/
def P9846172462094148265.Spec : Prop :=
  ∀ n, P9846172462094148265.a n = (A099151 (n + 1) : ℚ)

theorem P9846172462094148265.correct : P9846172462094148265.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A099151, Nat.add_sub_cancel, A099151.P9846172462094148265.a, A099151.P15911777622680170341.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A099151, Nat.add_sub_cancel, A099151.P9846172462094148265.a, A099151.P15911777622680170341.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099151

/-! ## A099151.P4445890448341830175

`or(1, 10*a(n-1)+8)` with `a(0)=5`
-/

namespace A099151.P4445890448341830175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.lor 1 (10 * a (n - 1) + 8)

end

end A099151.P4445890448341830175

namespace A099151

/-- `or(1, 10*a(n-1)+8)` -/
def P4445890448341830175.Spec : Prop :=
  ∀ n, (P4445890448341830175.a n : ℤ) = A099151 (n + 1)

end A099151

/-! ## A099151.P2691654547465150739

`xor(1, 10*a(n-1)+8)` with `a(0)=5`
-/

namespace A099151.P2691654547465150739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.xor 1 (10 * a (n - 1) + 8)

end

end A099151.P2691654547465150739

namespace A099151

/-- `xor(1, 10*a(n-1)+8)` -/
def P2691654547465150739.Spec : Prop :=
  ∀ n, (P2691654547465150739.a n : ℤ) = A099151 (n + 1)

end A099151

/-! ## A099151.P10699392798008658767

`floor(2*(cos(2)+3*10^n))`
-/

namespace A099151.P10699392798008658767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.cos (2 : ℝ) + (3 * 10 ^ n : ℝ))⌋

end

end A099151.P10699392798008658767

namespace A099151

/-- `floor(2*(cos(2)+3*10^n))` -/
def P10699392798008658767.Spec : Prop :=
  ∀ n, P10699392798008658767.a n = A099151 (n + 1)

end A099151

/-! ## A099151.P2786716685248342785

`abs(2-A199686(n))`
-/

namespace A099151.P2786716685248342785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199686 n|

end

end A099151.P2786716685248342785

namespace A099151

/-- `abs(2-A199686(n))` -/
def P2786716685248342785.Spec : Prop :=
  ∀ n, P2786716685248342785.a n = A099151 (n + 1)

end A099151

/-! ## A099151.P6056338830435880588

`Δ[A002280(n)-n]`
-/

namespace A099151.P6056338830435880588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099151.P6056338830435880588

namespace A099151

/-- `Δ[A002280(n)-n]` -/
def P6056338830435880588.Spec : Prop :=
  ∀ n, P6056338830435880588.a n = A099151 (n + 1)

end A099151

/-! ## A099151.P10853438830127821679

`∑[abs(Δ[A090019(n)])]`
-/

namespace A099151.P10853438830127821679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090019 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099151.P10853438830127821679

namespace A099151

/-- `∑[abs(Δ[A090019(n)])]` -/
def P10853438830127821679.Spec : Prop :=
  ∀ n, P10853438830127821679.a n = A099151 (n + 1)

end A099151

/-! ## A099151.P6274318175674500174

`A051885(9*n+5)`
-/

namespace A099151.P6274318175674500174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (9 * n + 5)

end

end A099151.P6274318175674500174

namespace A099151

/-- `A051885(9*n+5)` -/
def P6274318175674500174.Spec : Prop :=
  ∀ n, P6274318175674500174.a n = A099151 (n + 1)

end A099151

/-! ## A099151.P4716613026908157015

`xor(1, 2*A198698(n))`
-/

namespace A099151.P4716613026908157015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A198698 n)

end

end A099151.P4716613026908157015

namespace A099151

/-- `xor(1, 2*A198698(n))` -/
def P4716613026908157015.Spec : Prop :=
  ∀ n, P4716613026908157015.a n = A099151 (n + 1)

end A099151

/-! ## A099151.P8371018440625680817

`Δ[2*A002277(n)-n]`
-/

namespace A099151.P8371018440625680817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002277 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099151.P8371018440625680817

namespace A099151

/-- `Δ[2*A002277(n)-n]` -/
def P8371018440625680817.Spec : Prop :=
  ∀ n, P8371018440625680817.a n = A099151 (n + 1)

end A099151

/-! ## A099151.P14154260915664333177

`abs(1-Δ[6*A002275(n)])`
-/

namespace A099151.P14154260915664333177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (n + 1) - f1 n)|

end

end A099151.P14154260915664333177

namespace A099151

/-- `abs(1-Δ[6*A002275(n)])` -/
def P14154260915664333177.Spec : Prop :=
  ∀ n, P14154260915664333177.a n = A099151 (n + 1)

end A099151

/-! ## A099151.P5041463425702009231

`A077492(A017245(n))`
-/

namespace A099151.P5041463425702009231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077492 (A017245 n).toNat

end

end A099151.P5041463425702009231

namespace A099151

/-- `A077492(A017245(n))` -/
def P5041463425702009231.Spec : Prop :=
  ∀ n, P5041463425702009231.a n = A099151 (n + 1)

end A099151

/-! ## A099151.P3589951116640908711

`A077492(A017257(n)-1)`
-/

namespace A099151.P3589951116640908711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077492 (A017257 n - 1).toNat

end

end A099151.P3589951116640908711

namespace A099151

/-- `A077492(A017257(n)-1)` -/
def P3589951116640908711.Spec : Prop :=
  ∀ n, P3589951116640908711.a n = A099151 (n + 1)

end A099151

/-!
# A099152: Number of n X n permutation matrices in which the sums of the entries of each NorthEast-SouthWest diagonal are 0 or 1.

The programs for A099152, there is no canonical definition to state claims against.
-/

/-! ## A099152.P17265061564573672455

`A125182(∑[n]+floor(acot(n)))`
-/

namespace A099152.P17265061564573672455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125182 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A099152.P17265061564573672455

/-! ## A099152.P3240953686825772040

`A125182(∑[n]^floor(atan(n)))`
-/

namespace A099152.P3240953686825772040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125182 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A099152.P3240953686825772040

/-! ## A099152.P10512629144376312007

`A125182(∑[n]+C(n, n²))`
-/

namespace A099152.P10512629144376312007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125182 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n (n ^ 2))

end

end A099152.P10512629144376312007

/-! ## A099152.P3626490291245908776

`A125182(gcd(C(n, n²), ∑[n]))`
-/

namespace A099152.P3626490291245908776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125182 (Nat.gcd (Nat.choose n (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A099152.P3626490291245908776

/-! ## A099152.P5367822199037109873

`A125182(∑[n]^ceil(sin(n)²))`
-/

namespace A099152.P5367822199037109873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125182 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A099152.P5367822199037109873

/-!
# A099155: Maximum length of a simple path with no chords in the n-dimensional hypercube, also known as snake-in-the-box problem.

The programs for A099155, there is no canonical definition to state claims against.
-/

/-! ## A099155.P695858415058868688

`ogf((-x+x^4+x^5+2x^7+2x^8)/(-1+2x))`
-/

namespace A099155.P695858415058868688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 0, -1, -1, 0, -2, -2] [1, -2] n

end

end A099155.P695858415058868688

/-! ## A099155.P13906660671822120410

`round(sqrt(Δ[A359463(n)]))`
-/

namespace A099155.P13906660671822120410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ))

end

end A099155.P13906660671822120410

/-! ## A099155.P3783066600678840129

`ceil(A078783(3*n)/7)`
-/

namespace A099155.P3783066600678840129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078783 (3 * n) : ℚ) / 7⌉

end

end A099155.P3783066600678840129

/-! ## A099155.P7994567234280321711

`ceil(sqrt(A007743(n+2)))-1`
-/

namespace A099155.P7994567234280321711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A007743 (n + 2) : ℝ)⌉ - 1

end

end A099155.P7994567234280321711

/-! ## A099155.P2069670445312907268

`floor((A004119(n)+n+1)/4)`
-/

namespace A099155.P2069670445312907268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004119 n + (n : ℤ) + 1 : ℚ) / 4⌋

end

end A099155.P2069670445312907268

/-!
# A099156: a(n) = 2^(n-1)*ChebyshevU(n-1, 2).

The programs for A099156, the canonical program `A099156.P13181454962199185389` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099156 has offset 0).

The definition of A099156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099156.P14408352957740266303

`ogf(x/(1-8x+4x^2))`
-/

namespace A099156.P14408352957740266303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -8, 4] n

end

end A099156.P14408352957740266303

namespace A099156

/-- `ogf(x/(1-8x+4x^2))` -/
def P14408352957740266303.Spec : Prop :=
  ∀ n, P14408352957740266303.a n = A099156 n

end A099156

/-! ## A099156.P13181454962199185389

`8*a(n-1)-4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099156

/-- `8*a(n-1)-4*a(n-2)` -/
def P13181454962199185389.Spec : Prop :=
  ∀ n, P13181454962199185389.a n = A099156 n

theorem P13181454962199185389.correct : P13181454962199185389.Spec := by
  intro n
  simp only [A099156]

end A099156

/-! ## A099156.P11088415123354030680

`∑{#}[n, C(2*n, 2*#+1)*3^#/2]`
-/

namespace A099156.P11088415123354030680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (2 * n) (2 * k + 1) * 3 ^ k : ℚ) / 2

end

end A099156.P11088415123354030680

namespace A099156

/-- `∑{#}[n, C(2*n, 2*#+1)*3^#/2]` -/
def P11088415123354030680.Spec : Prop :=
  ∀ n, P11088415123354030680.a n = (A099156 n : ℚ)

end A099156

/-! ## A099156.P2226573763681424540

`2^(n-1)*A001353(n)`
-/

namespace A099156.P2226573763681424540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001353 n : ℚ)

end

end A099156.P2226573763681424540

namespace A099156

/-- `2^(n-1)*A001353(n)` -/
def P2226573763681424540.Spec : Prop :=
  ∀ n, P2226573763681424540.a n = (A099156 n : ℚ)

end A099156

/-! ## A099156.P14192559574458209819

`2*ceil((sqrt(3)+2)*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A099156.P14192559574458209819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉

end

end A099156.P14192559574458209819

namespace A099156

/-- `2*ceil((sqrt(3)+2)*a(n-1))` -/
def P14192559574458209819.Spec : Prop :=
  ∀ n, P14192559574458209819.a n = A099156 n

end A099156

/-! ## A099156.P13471679787737259485

`4*(2*a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A099156.P13471679787737259485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * (2 * a (n - 1) - a (n - 2))

end

end A099156.P13471679787737259485

namespace A099156

/-- `4*(2*a(n-1)-a(n-2))` -/
def P13471679787737259485.Spec : Prop :=
  ∀ n, P13471679787737259485.a n = A099156 n

theorem P13471679787737259485.correct : P13471679787737259485.Spec := by
  intro n
  simp only [A099156, Nat.add_sub_cancel, A099156.P13471679787737259485.a, A099156.P13181454962199185389.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A099156

/-! ## A099156.P15067441418570661184

`A002605(2*n)/2`
-/

namespace A099156.P15067441418570661184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002605 (2 * n) : ℚ) / 2

end

end A099156.P15067441418570661184

namespace A099156

/-- `A002605(2*n)/2` -/
def P15067441418570661184.Spec : Prop :=
  ∀ n, P15067441418570661184.a n = (A099156 n : ℚ)

end A099156

/-! ## A099156.P12504293260670421240

`2^(n-2)*A052530(n)`
-/

namespace A099156.P12504293260670421240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A052530 n : ℚ)

end

end A099156.P12504293260670421240

namespace A099156

/-- `2^(n-2)*A052530(n)` -/
def P12504293260670421240.Spec : Prop :=
  ∀ n, P12504293260670421240.a n = (A099156 n : ℚ)

end A099156

/-! ## A099156.P13351915832503652279

`(∑[A001835(n)]-1)*2^n/2`
-/

namespace A099156.P13351915832503652279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) * ((2 ^ n : ℚ) / 2)

end

end A099156.P13351915832503652279

namespace A099156

/-- `(∑[A001835(n)]-1)*2^n/2` -/
def P13351915832503652279.Spec : Prop :=
  ∀ n, P13351915832503652279.a n = (A099156 n : ℚ)

end A099156

/-! ## A099156.P15275649819750586621

`A099177(A004273(n))`
-/

namespace A099156.P15275649819750586621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099177 (A004273 n).toNat

end

end A099156.P15275649819750586621

namespace A099156

/-- `A099177(A004273(n))` -/
def P15275649819750586621.Spec : Prop :=
  ∀ n, P15275649819750586621.a n = A099156 n

end A099156

/-! ## A099156.P2882037641990318535

`A001353(n)*A011782(n)`
-/

namespace A099156.P2882037641990318535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n * A011782 n

end

end A099156.P2882037641990318535

namespace A099156

/-- `A001353(n)*A011782(n)` -/
def P2882037641990318535.Spec : Prop :=
  ∀ n, P2882037641990318535.a n = A099156 n

end A099156

/-! ## A099156.P11999808416129765370

`A002605(n)*A026150(n)`
-/

namespace A099156.P11999808416129765370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n * A026150 n

end

end A099156.P11999808416129765370

namespace A099156

/-- `A002605(n)*A026150(n)` -/
def P11999808416129765370.Spec : Prop :=
  ∀ n, P11999808416129765370.a n = A099156 n

end A099156

/-! ## A099156.P7822669986867057117

`A001353(n)*A131577(n)`
-/

namespace A099156.P7822669986867057117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n * A131577 n

end

end A099156.P7822669986867057117

namespace A099156

/-- `A001353(n)*A131577(n)` -/
def P7822669986867057117.Spec : Prop :=
  ∀ n, P7822669986867057117.a n = A099156 n

end A099156

/-! ## A099156.P10816179155700345318

`A106707(n)*A154589(n)`
-/

namespace A099156.P10816179155700345318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106707 n * A154589 n

end

end A099156.P10816179155700345318

namespace A099156

/-- `A106707(n)*A154589(n)` -/
def P10816179155700345318.Spec : Prop :=
  ∀ n, P10816179155700345318.a n = A099156 n

end A099156

/-! ## A099156.P8620744592095473874

`A106707(n)*A157823(n)`
-/

namespace A099156.P8620744592095473874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106707 n * A157823 n

end

end A099156.P8620744592095473874

namespace A099156

/-- `A106707(n)*A157823(n)` -/
def P8620744592095473874.Spec : Prop :=
  ∀ n, P8620744592095473874.a n = A099156 n

end A099156

/-! ## A099156.P7185320761286324703

`A108476(n)-A026150(n)²`
-/

namespace A099156.P7185320761286324703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108476 n - A026150 n ^ 2

end

end A099156.P7185320761286324703

namespace A099156

/-- `A108476(n)-A026150(n)²` -/
def P7185320761286324703.Spec : Prop :=
  ∀ n, P7185320761286324703.a n = A099156 n

end A099156

/-! ## A099156.P2394824593945211119

`Δ[A101879(n)]*A011782(n)`
-/

namespace A099156.P2394824593945211119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A011782 n

end

end A099156.P2394824593945211119

namespace A099156

/-- `Δ[A101879(n)]*A011782(n)` -/
def P2394824593945211119.Spec : Prop :=
  ∀ n, P2394824593945211119.a n = A099156 n

end A099156

/-! ## A099156.P15620013537279169152

`A160444(A103832(2*n))/2`
-/

namespace A099156.P15620013537279169152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160444 (A103832 (2 * n)).toNat : ℚ) / 2

end

end A099156.P15620013537279169152

namespace A099156

/-- `A160444(A103832(2*n))/2` -/
def P15620013537279169152.Spec : Prop :=
  ∀ n, P15620013537279169152.a n = (A099156 n : ℚ)

end A099156

/-! ## A099156.P13285624110571004250

`A000079(n)*A001353(n)/2`
-/

namespace A099156.P13285624110571004250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n * A001353 n : ℚ) / 2

end

end A099156.P13285624110571004250

namespace A099156

/-- `A000079(n)*A001353(n)/2` -/
def P13285624110571004250.Spec : Prop :=
  ∀ n, P13285624110571004250.a n = (A099156 n : ℚ)

end A099156

/-! ## A099156.P1244258852031528538

`Δ[A000051(n)]*A001353(n)/2`
-/

namespace A099156.P1244258852031528538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) * A001353 n : ℚ) / 2

end

end A099156.P1244258852031528538

namespace A099156

/-- `Δ[A000051(n)]*A001353(n)/2` -/
def P1244258852031528538.Spec : Prop :=
  ∀ n, P1244258852031528538.a n = (A099156 n : ℚ)

end A099156

/-!
# A099157: a(n) = 4^(n-1)*U(n-1, 3/2) where U is the Chebyshev polynomial of the second kind.

The programs for A099157, the canonical program `A099157.P17834071023486562361` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099157 has offset 0).

The definition of A099157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099157.P17234574670449901138

`ogf(x/(1-12x+16x^2))`
-/

namespace A099157.P17234574670449901138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -12, 16] n

end

end A099157.P17234574670449901138

namespace A099157

/-- `ogf(x/(1-12x+16x^2))` -/
def P17234574670449901138.Spec : Prop :=
  ∀ n, P17234574670449901138.a n = A099157 n

end A099157

/-! ## A099157.P17834071023486562361

`12*a(n-1)-16*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099157

/-- `12*a(n-1)-16*a(n-2)` -/
def P17834071023486562361.Spec : Prop :=
  ∀ n, P17834071023486562361.a n = A099157 n

theorem P17834071023486562361.correct : P17834071023486562361.Spec := by
  intro n
  simp only [A099157]

end A099157

/-! ## A099157.P15490849511464432237

`∑{#}[n, C(2*n, 2*#+1)*5^#/2]`
-/

namespace A099157.P15490849511464432237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (2 * n) (2 * k + 1) * 5 ^ k : ℚ) / 2

end

end A099157.P15490849511464432237

namespace A099157

/-- `∑{#}[n, C(2*n, 2*#+1)*5^#/2]` -/
def P15490849511464432237.Spec : Prop :=
  ∀ n, P15490849511464432237.a n = (A099157 n : ℚ)

end A099157

/-! ## A099157.P15854855648311974816

`sqrt(5)/20*((sqrt(5)+1)^(2*n)-(sqrt(5)-1)^(2*n))`
-/

namespace A099157.P15854855648311974816
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (5 : ℝ) / 20 * ((Real.sqrt (5 : ℝ) + 1) ^ (2 * n) - (Real.sqrt (5 : ℝ) - 1) ^ (2 * n))

end

end A099157.P15854855648311974816

namespace A099157

/-- `sqrt(5)/20*((sqrt(5)+1)^(2*n)-(sqrt(5)-1)^(2*n))` -/
def P15854855648311974816.Spec : Prop :=
  ∀ n, P15854855648311974816.a n = (A099157 n : ℝ)

theorem P15854855648311974816.correct : P15854855648311974816.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A099157, Nat.add_sub_cancel, A099157.P15854855648311974816.a, A099157.P17834071023486562361.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A099157, Nat.add_sub_cancel, A099157.P15854855648311974816.a, A099157.P17834071023486562361.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A099157

/-! ## A099157.P671990816426785493

`A085449(2*n)/2`
-/

namespace A099157.P671990816426785493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085449 (2 * n) : ℚ) / 2

end

end A099157.P671990816426785493

namespace A099157

/-- `A085449(2*n)/2` -/
def P671990816426785493.Spec : Prop :=
  ∀ n, P671990816426785493.a n = (A099157 n : ℚ)

end A099157

/-! ## A099157.P11267735086669816397

`A103435(2*n)/4`
-/

namespace A099157.P11267735086669816397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103435 (2 * n) : ℚ) / 4

end

end A099157.P11267735086669816397

namespace A099157

/-- `A103435(2*n)/4` -/
def P11267735086669816397.Spec : Prop :=
  ∀ n, P11267735086669816397.a n = (A099157 n : ℚ)

end A099157

/-! ## A099157.P5327490360355331072

`A209084(2*n)/8`
-/

namespace A099157.P5327490360355331072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209084 (2 * n) : ℚ) / 8

end

end A099157.P5327490360355331072

namespace A099157

/-- `A209084(2*n)/8` -/
def P5327490360355331072.Spec : Prop :=
  ∀ n, P5327490360355331072.a n = (A099157 n : ℚ)

end A099157

/-!
# A099158: a(n) = 5^(n-1) * U(n-1, 7/5) where U is the Chebyshev polynomial of the second kind.

The programs for A099158, the canonical program `A099158.P14000211138561550676` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099158 has offset 0).

The definition of A099158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099158.P5014990649966136963

`ogf(x/(1-14x+25x^2))`
-/

namespace A099158.P5014990649966136963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -14, 25] n

end

end A099158.P5014990649966136963

namespace A099158

/-- `ogf(x/(1-14x+25x^2))` -/
def P5014990649966136963.Spec : Prop :=
  ∀ n, P5014990649966136963.a n = A099158 n

end A099158

/-! ## A099158.P14000211138561550676

`14*a(n-1)-25*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099158

/-- `14*a(n-1)-25*a(n-2)` -/
def P14000211138561550676.Spec : Prop :=
  ∀ n, P14000211138561550676.a n = A099158 n

theorem P14000211138561550676.correct : P14000211138561550676.Spec := by
  intro n
  simp only [A099158]

end A099158

/-! ## A099158.P11337881938031252763

`sqrt(6)*(sqrt(6)+1)^(2*n)/24-sqrt(6)*(sqrt(6)-1)^(2*n)/24`
-/

namespace A099158.P11337881938031252763
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (6 : ℝ) * (Real.sqrt (6 : ℝ) + 1) ^ (2 * n) / 24 - Real.sqrt (6 : ℝ) * (Real.sqrt (6 : ℝ) - 1) ^ (2 * n) / 24

end

end A099158.P11337881938031252763

namespace A099158

/-- `sqrt(6)*(sqrt(6)+1)^(2*n)/24-sqrt(6)*(sqrt(6)-1)^(2*n)/24` -/
def P11337881938031252763.Spec : Prop :=
  ∀ n, P11337881938031252763.a n = (A099158 n : ℝ)

theorem P11337881938031252763.correct : P11337881938031252763.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A099158, Nat.add_sub_cancel, A099158.P11337881938031252763.a, A099158.P14000211138561550676.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A099158, Nat.add_sub_cancel, A099158.P11337881938031252763.a, A099158.P14000211138561550676.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A099158

/-! ## A099158.P3995390300489101009

`A002532(2*n)/2`
-/

namespace A099158.P3995390300489101009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002532 (2 * n) : ℚ) / 2

end

end A099158.P3995390300489101009

namespace A099158

/-- `A002532(2*n)/2` -/
def P3995390300489101009.Spec : Prop :=
  ∀ n, P3995390300489101009.a n = (A099158 n : ℚ)

end A099158

/-! ## A099158.P17084459096764193356

`A083694(2*n)/4`
-/

namespace A099158.P17084459096764193356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083694 (2 * n) : ℚ) / 4

end

end A099158.P17084459096764193356

namespace A099158

/-- `A083694(2*n)/4` -/
def P17084459096764193356.Spec : Prop :=
  ∀ n, P17084459096764193356.a n = (A099158 n : ℚ)

end A099158

/-! ## A099158.P5307767945810043179

`A083695(2*n)/6`
-/

namespace A099158.P5307767945810043179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083695 (2 * n) : ℚ) / 6

end

end A099158.P5307767945810043179

namespace A099158

/-- `A083695(2*n)/6` -/
def P5307767945810043179.Spec : Prop :=
  ∀ n, P5307767945810043179.a n = (A099158 n : ℚ)

end A099158

/-! ## A099158.P14960464910436876007

`A002532(n)*A002533(n)`
-/

namespace A099158.P14960464910436876007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 n * A002533 n

end

end A099158.P14960464910436876007

namespace A099158

/-- `A002532(n)*A002533(n)` -/
def P14960464910436876007.Spec : Prop :=
  ∀ n, P14960464910436876007.a n = A099158 n

end A099158

/-! ## A099158.P6061598023733500432

`(A180168(n)-∑[A002533(n)])*A002533(n)`
-/

namespace A099158.P6061598023733500432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180168 n - ∑ j ∈ Finset.range (n + 1), f1 j) * A002533 n

end

end A099158.P6061598023733500432

namespace A099158

/-- `(A180168(n)-∑[A002533(n)])*A002533(n)` -/
def P6061598023733500432.Spec : Prop :=
  ∀ n, P6061598023733500432.a n = A099158 n

end A099158

/-! ## A099158.P11015191713829781178

`(A002532(n+1)-A002532(n))*A002532(n)`
-/

namespace A099158.P11015191713829781178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002532 (n + 1) - A002532 n) * A002532 n

end

end A099158.P11015191713829781178

namespace A099158

/-- `(A002532(n+1)-A002532(n))*A002532(n)` -/
def P11015191713829781178.Spec : Prop :=
  ∀ n, P11015191713829781178.a n = A099158 n

end A099158

/-!
# A099159: a(n) = (L(n-2)+2*3^n)/5.

The programs for A099159, the canonical program `A099159.P6085806474608484575` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099159 has offset 0).

The definition of A099159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099159.P12014220866730583242

`ogf((1-3x+2x^2)/(1-4x+2x^2+3x^3))`
-/

namespace A099159.P12014220866730583242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 2] [1, -4, 2, 3] n

end

end A099159.P12014220866730583242

namespace A099159

/-- `ogf((1-3x+2x^2)/(1-4x+2x^2+3x^3))` -/
def P12014220866730583242.Spec : Prop :=
  ∀ n, P12014220866730583242.a n = A099159 n

end A099159

/-! ## A099159.P6085806474608484575

`A098703(n+1)-A098703(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099159

/-- `A098703(n+1)-A098703(n)` -/
def P6085806474608484575.Spec : Prop :=
  ∀ n, P6085806474608484575.a n = A099159 n

theorem P6085806474608484575.correct : P6085806474608484575.Spec := by
  intro n
  simp only [A099159]

end A099159

/-! ## A099159.P9313464259461064029

`Δ[a(n-1)+a(n-2)+3^(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A099159.P9313464259461064029
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099159.P9313464259461064029

namespace A099159

/-- `Δ[a(n-1)+a(n-2)+3^(n-2)]` -/
def P9313464259461064029.Spec : Prop :=
  ∀ n, P9313464259461064029.a n = (A099159 n : ℚ)

end A099159

/-! ## A099159.P10505368371929884019

`4*a(n-1)-2*a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A099159.P10505368371929884019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) - 3 * a (n - 3)

end

end A099159.P10505368371929884019

namespace A099159

/-- `4*a(n-1)-2*a(n-2)-3*a(n-3)` -/
def P10505368371929884019.Spec : Prop :=
  ∀ n, P10505368371929884019.a n = A099159 n

end A099159

/-! ## A099159.P11060383367652628344

`Δ[A098703(n)]`
-/

namespace A099159.P11060383367652628344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099159.P11060383367652628344

namespace A099159

/-- `Δ[A098703(n)]` -/
def P11060383367652628344.Spec : Prop :=
  ∀ n, P11060383367652628344.a n = A099159 n

theorem P11060383367652628344.correct : P11060383367652628344.Spec := by
  intro n
  simp only [A099159, Nat.add_sub_cancel, A099159.P11060383367652628344.f1, A099159.P11060383367652628344.a, A099159.P6085806474608484575.a, SequenceMachineLib.memo_apply]

end A099159

/-! ## A099159.P5865342528012389613

`A099164(n)-A000045(n)`
-/

namespace A099159.P5865342528012389613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099164 n - A000045 n

end

end A099159.P5865342528012389613

namespace A099159

/-- `A099164(n)-A000045(n)` -/
def P5865342528012389613.Spec : Prop :=
  ∀ n, P5865342528012389613.a n = A099159 n

end A099159

/-! ## A099159.P448427650672906416

`A099164(n)-sqrt(A007598(n))`
-/

namespace A099159.P448427650672906416
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A099164 n : ℝ) - Real.sqrt (A007598 n : ℝ)

end

end A099159.P448427650672906416

namespace A099159

/-- `A099164(n)-sqrt(A007598(n))` -/
def P448427650672906416.Spec : Prop :=
  ∀ n, P448427650672906416.a n = (A099159 n : ℝ)

end A099159

/-! ## A099159.P18072496453250526004

`A152163(n+2)+A099164(n)`
-/

namespace A099159.P18072496453250526004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 2) + A099164 n

end

end A099159.P18072496453250526004

namespace A099159

/-- `A152163(n+2)+A099164(n)` -/
def P18072496453250526004.Spec : Prop :=
  ∀ n, P18072496453250526004.a n = A099159 n

end A099159

/-! ## A099159.P13129243722236313030

`A099164(n)-Δ[A000071(n+1)]`
-/

namespace A099159.P13129243722236313030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099164 n - (f1 (n + 1) - f1 n)

end

end A099159.P13129243722236313030

namespace A099159

/-- `A099164(n)-Δ[A000071(n+1)]` -/
def P13129243722236313030.Spec : Prop :=
  ∀ n, P13129243722236313030.a n = A099159 n

end A099159

/-! ## A099159.P612322094216661285

`A212323(n)-A094688(n)`
-/

namespace A099159.P612322094216661285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212323 n - A094688 n

end

end A099159.P612322094216661285

namespace A099159

/-- `A212323(n)-A094688(n)` -/
def P612322094216661285.Spec : Prop :=
  ∀ n, P612322094216661285.a n = A099159 n

end A099159

/-! ## A099159.P2754117546399172651

`A000244(n)-(A094688(n)+A000045(n))`
-/

namespace A099159.P2754117546399172651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - (A094688 n + A000045 n)

end

end A099159.P2754117546399172651

namespace A099159

/-- `A000244(n)-(A094688(n)+A000045(n))` -/
def P2754117546399172651.Spec : Prop :=
  ∀ n, P2754117546399172651.a n = A099159 n

end A099159

/-! ## A099159.P6317807045574899566

`A106517(n)-A094688(n)-A098703(n)`
-/

namespace A099159.P6317807045574899566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106517 n - A094688 n - A098703 n

end

end A099159.P6317807045574899566

namespace A099159

/-- `A106517(n)-A094688(n)-A098703(n)` -/
def P6317807045574899566.Spec : Prop :=
  ∀ n, P6317807045574899566.a n = A099159 n

end A099159

/-!
# A099160: Primes P(j) such that there is at least one k < P(j+1) such that k*(P(j)#)^2 - 1 and k*(P(j)#)^2 + 1 are twin primes.

The programs for A099160, there is no canonical definition to state claims against.
-/

/-! ## A099160.P4333185893498679236

`A000040(A099161(n+1))`
-/

namespace A099160.P4333185893498679236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099161 (n + 1)).toNat

end

end A099160.P4333185893498679236

/-! ## A099160.P15249687635982746144

`A008578(A099161(n+1)+1)`
-/

namespace A099160.P15249687635982746144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A099161 (n + 1) + 1).toNat

end

end A099160.P15249687635982746144

/-! ## A099160.P16127375617013329776

`A064555(A099161(n+1)+1)`
-/

namespace A099160.P16127375617013329776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A099161 (n + 1) + 1).toNat

end

end A099160.P16127375617013329776

/-! ## A099160.P5358771353139762259

`A158611(A099161(n+1)+2)`
-/

namespace A099160.P5358771353139762259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A099161 (n + 1) + 2).toNat

end

end A099160.P5358771353139762259

/-! ## A099160.P5896114544881456790

`A073846(2*A099161(n+1))`
-/

namespace A099160.P5896114544881456790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A099161 (n + 1)).toNat

end

end A099160.P5896114544881456790

/-!
# A099161: Numbers m such that there is at least one k < prime(m+1) such that k*(prime(m)#)^2 - 1 and k*(prime(m)#)^2 + 1 are twin primes.

The programs for A099161, there is no canonical definition to state claims against.
-/

/-! ## A099161.P14121412925691821061

`A000720(A099160(n+1))`
-/

namespace A099161.P14121412925691821061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A099160 (n + 1)).toNat

end

end A099161.P14121412925691821061

/-!
# A099163: Expansion of (1-2*x^2)/((1-2*x)*(1+x-x^2)).

The programs for A099163, the canonical program `A099163.P12788205028826353157` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099163 has offset 0).

The definition of A099163 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^2)/(1-x-3x^2+2x^3))` (program `A099163.P12788205028826353157`, by `A099163.P12788205028826353157.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099163.P12788205028826353157

`ogf((1-2x^2)/(1-x-3x^2+2x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099163

/-- `ogf((1-2x^2)/(1-x-3x^2+2x^3))` -/
def P12788205028826353157.Spec : Prop :=
  ∀ n, P12788205028826353157.a n = A099163 n

theorem P12788205028826353157.correct : P12788205028826353157.Spec := by
  intro n
  simp only [A099163]

end A099163

/-! ## A099163.P14848459272366152472

`a(n-1)+3*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A099163.P14848459272366152472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + 3 * a (n - 2) - 2 * a (n - 3)

end

end A099163.P14848459272366152472

namespace A099163

/-- `a(n-1)+3*a(n-2)-2*a(n-3)` -/
def P14848459272366152472.Spec : Prop :=
  ∀ n, P14848459272366152472.a n = A099163 n

end A099163

/-! ## A099163.P10068545780716922715

`2^(n-1)+a(n-2)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A099163.P10068545780716922715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (a (n - 2) - a (n - 1))

end

end A099163.P10068545780716922715

namespace A099163

/-- `2^(n-1)+a(n-2)-a(n-1)` -/
def P10068545780716922715.Spec : Prop :=
  ∀ n, P10068545780716922715.a n = (A099163 n : ℚ)

end A099163

/-! ## A099163.P8803409083921590442

`A173126(n)+A173125(n)`
-/

namespace A099163.P8803409083921590442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173126 n + A173125 n

end

end A099163.P8803409083921590442

namespace A099163

/-- `A173126(n)+A173125(n)` -/
def P8803409083921590442.Spec : Prop :=
  ∀ n, P8803409083921590442.a n = A099163 n

end A099163

/-! ## A099163.P2053965372356346454

`∑[A212804(n)]+2*A173126(n)`
-/

namespace A099163.P2053965372356346454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A173126 n

end

end A099163.P2053965372356346454

namespace A099163

/-- `∑[A212804(n)]+2*A173126(n)` -/
def P2053965372356346454.Spec : Prop :=
  ∀ n, P2053965372356346454.a n = A099163 n

end A099163

/-! ## A099163.P12482635608500259779

`2*A173125(n)-∑[A212804(n)]`
-/

namespace A099163.P12482635608500259779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173125 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099163.P12482635608500259779

namespace A099163

/-- `2*A173125(n)-∑[A212804(n)]` -/
def P12482635608500259779.Spec : Prop :=
  ∀ n, P12482635608500259779.a n = A099163 n

end A099163

/-! ## A099163.P5198378510897919562

`A000045(n+1)+2*A173126(n)`
-/

namespace A099163.P5198378510897919562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + 2 * A173126 n

end

end A099163.P5198378510897919562

namespace A099163

/-- `A000045(n+1)+2*A173126(n)` -/
def P5198378510897919562.Spec : Prop :=
  ∀ n, P5198378510897919562.a n = A099163 n

end A099163

/-! ## A099163.P1880014885815945109

`A054877(n)+A054877(n+1)/2`
-/

namespace A099163.P1880014885815945109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054877 n : ℚ) + (A054877 (n + 1) : ℚ) / 2

end

end A099163.P1880014885815945109

namespace A099163

/-- `A054877(n)+A054877(n+1)/2` -/
def P1880014885815945109.Spec : Prop :=
  ∀ n, P1880014885815945109.a n = (A099163 n : ℚ)

end A099163

/-! ## A099163.P1697398935343727545

`A173125(n)+A173125(n)-A000045(n+1)`
-/

namespace A099163.P1697398935343727545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173125 n + (A173125 n - A000045 (n + 1))

end

end A099163.P1697398935343727545

namespace A099163

/-- `A173125(n)+A173125(n)-A000045(n+1)` -/
def P1697398935343727545.Spec : Prop :=
  ∀ n, P1697398935343727545.a n = A099163 n

end A099163

/-! ## A099163.P3910619936695672324

`Δ[2*a(n-1)-A113312(n)]` with `a(0)=3`
-/

namespace A099163.P3910619936695672324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  2 * f1 (n - 1) - A113312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099163.P3910619936695672324

namespace A099163

/-- `Δ[2*a(n-1)-A113312(n)]` -/
def P3910619936695672324.Spec : Prop :=
  ∀ n, P3910619936695672324.a n = A099163 n

end A099163

/-! ## A099163.P9945193940503958496

`A054877(n)+Δ[A052964(n)-A054877(n)]`
-/

namespace A099163.P9945193940503958496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052964 n - A054877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054877 n + (f1 (n + 1) - f1 n)

end

end A099163.P9945193940503958496

namespace A099163

/-- `A054877(n)+Δ[A052964(n)-A054877(n)]` -/
def P9945193940503958496.Spec : Prop :=
  ∀ n, P9945193940503958496.a n = A099163 n

end A099163

/-! ## A099163.P7067696586798808998

`A036355(A000096(n))+2*A173126(n)`
-/

namespace A099163.P7067696586798808998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (A000096 n).toNat + 2 * A173126 n

end

end A099163.P7067696586798808998

namespace A099163

/-- `A036355(A000096(n))+2*A173126(n)` -/
def P7067696586798808998.Spec : Prop :=
  ∀ n, P7067696586798808998.a n = A099163 n

end A099163

/-!
# A099164: a(n) = (L(n+2) + 2*3^n)/5.

The programs for A099164, the canonical program `A099164.P13083107996458489713` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099164 has offset 0).

The definition of A099164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099164.P16972610257651701085

`ogf((1-2x-x^2)/(1-4x+2x^2+3x^3))`
-/

namespace A099164.P16972610257651701085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -4, 2, 3] n

end

end A099164.P16972610257651701085

namespace A099164

/-- `ogf((1-2x-x^2)/(1-4x+2x^2+3x^3))` -/
def P16972610257651701085.Spec : Prop :=
  ∀ n, P16972610257651701085.a n = A099164 n

end A099164

/-! ## A099164.P13083107996458489713

`4*a(n-1)-2*a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099164

/-- `4*a(n-1)-2*a(n-2)-3*a(n-3)` -/
def P13083107996458489713.Spec : Prop :=
  ∀ n, P13083107996458489713.a n = A099164 n

theorem P13083107996458489713.correct : P13083107996458489713.Spec := by
  intro n
  simp only [A099164]

end A099164

/-! ## A099164.P827952782586734997

`3*a(n-1)-round(ϕ^n/sqrt(5))` with `a(0)=1`
-/

namespace A099164.P827952782586734997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

end

end A099164.P827952782586734997

namespace A099164

/-- `3*a(n-1)-round(ϕ^n/sqrt(5))` -/
def P827952782586734997.Spec : Prop :=
  ∀ n, P827952782586734997.a n = A099164 n

end A099164

/-! ## A099164.P14336880276505415525

`Δ[a(n-1)+a(n-2)+3^(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A099164.P14336880276505415525
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099164.P14336880276505415525

namespace A099164

/-- `Δ[a(n-1)+a(n-2)+3^(n-2)]` -/
def P14336880276505415525.Spec : Prop :=
  ∀ n, P14336880276505415525.a n = (A099164 n : ℚ)

end A099164

/-! ## A099164.P18059575210367761779

`a(n-1)+6*a(n-2)-A000032(n)` with `a(0)=1, a(1)=2`
-/

namespace A099164.P18059575210367761779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + 6 * a (n - 2) - A000032 n

end

end A099164.P18059575210367761779

namespace A099164

/-- `a(n-1)+6*a(n-2)-A000032(n)` -/
def P18059575210367761779.Spec : Prop :=
  ∀ n, P18059575210367761779.a n = A099164 n

end A099164

/-! ## A099164.P573448981327259525

`A099159(n)+A000045(n)`
-/

namespace A099164.P573448981327259525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099159 n + A000045 n

end

end A099164.P573448981327259525

namespace A099164

/-- `A099159(n)+A000045(n)` -/
def P573448981327259525.Spec : Prop :=
  ∀ n, P573448981327259525.a n = A099164 n

end A099164

/-! ## A099164.P8219644209923488652

`A000045(n)+Δ[A098703(n)]`
-/

namespace A099164.P8219644209923488652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (f1 (n + 1) - f1 n)

end

end A099164.P8219644209923488652

namespace A099164

/-- `A000045(n)+Δ[A098703(n)]` -/
def P8219644209923488652.Spec : Prop :=
  ∀ n, P8219644209923488652.a n = A099164 n

end A099164

/-! ## A099164.P13677004886875294373

`A098703(n+1)+A000045(n)-A098703(n)`
-/

namespace A099164.P13677004886875294373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098703 (n + 1) + (A000045 n - A098703 n)

end

end A099164.P13677004886875294373

namespace A099164

/-- `A098703(n+1)+A000045(n)-A098703(n)` -/
def P13677004886875294373.Spec : Prop :=
  ∀ n, P13677004886875294373.a n = A099164 n

end A099164

/-! ## A099164.P10625631684937263412

`3^n-A094688(n)`
-/

namespace A099164.P10625631684937263412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A094688 n

end

end A099164.P10625631684937263412

namespace A099164

/-- `3^n-A094688(n)` -/
def P10625631684937263412.Spec : Prop :=
  ∀ n, P10625631684937263412.a n = A099164 n

end A099164

/-! ## A099164.P17591220529198856093

`A000244(n)+A106517(n)-A094688(n+1)`
-/

namespace A099164.P17591220529198856093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + (A106517 n - A094688 (n + 1))

end

end A099164.P17591220529198856093

namespace A099164

/-- `A000244(n)+A106517(n)-A094688(n+1)` -/
def P17591220529198856093.Spec : Prop :=
  ∀ n, P17591220529198856093.a n = A099164 n

end A099164

/-! ## A099164.P15179350855680159824

`A099159(n+1)-(A098703(n)+A094688(n))`
-/

namespace A099164.P15179350855680159824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099159 (n + 1) - (A098703 n + A094688 n)

end

end A099164.P15179350855680159824

namespace A099164

/-- `A099159(n+1)-(A098703(n)+A094688(n))` -/
def P15179350855680159824.Spec : Prop :=
  ∀ n, P15179350855680159824.a n = A099164 n

end A099164

/-! ## A099164.P5691575792593462679

`A099159(n+1)+A099159(n)-A106517(n)`
-/

namespace A099164.P5691575792593462679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099159 (n + 1) + (A099159 n - A106517 n)

end

end A099164.P5691575792593462679

namespace A099164

/-- `A099159(n+1)+A099159(n)-A106517(n)` -/
def P5691575792593462679.Spec : Prop :=
  ∀ n, P5691575792593462679.a n = A099164 n

end A099164

/-! ## A099164.P7421823857173216849

`(A000032(n+2)+2*3^n)/5`
-/

namespace A099164.P7421823857173216849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 2) + (2 * 3 ^ n : ℤ) : ℚ) / 5

end

end A099164.P7421823857173216849

namespace A099164

/-- `(A000032(n+2)+2*3^n)/5` -/
def P7421823857173216849.Spec : Prop :=
  ∀ n, P7421823857173216849.a n = (A099164 n : ℚ)

end A099164

/-! ## A099164.P8866795733350295587

`2*A106517(n)-A099167(n)`
-/

namespace A099164.P8866795733350295587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106517 n - A099167 n

end

end A099164.P8866795733350295587

namespace A099164

/-- `2*A106517(n)-A099167(n)` -/
def P8866795733350295587.Spec : Prop :=
  ∀ n, P8866795733350295587.a n = A099164 n

end A099164

/-! ## A099164.P6360810503315279388

`A000244(n+1)+A000244(n)-A106517(n+1)`
-/

namespace A099164.P6360810503315279388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) + (A000244 n - A106517 (n + 1))

end

end A099164.P6360810503315279388

namespace A099164

/-- `A000244(n+1)+A000244(n)-A106517(n+1)` -/
def P6360810503315279388.Spec : Prop :=
  ∀ n, P6360810503315279388.a n = A099164 n

end A099164

/-! ## A099164.P8082832238326826154

`A094688(n+1)+A098703(n+1)-A099167(n)`
-/

namespace A099164.P8082832238326826154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094688 (n + 1) + (A098703 (n + 1) - A099167 n)

end

end A099164.P8082832238326826154

namespace A099164

/-- `A094688(n+1)+A098703(n+1)-A099167(n)` -/
def P8082832238326826154.Spec : Prop :=
  ∀ n, P8082832238326826154.a n = A099164 n

end A099164

/-!
# A099165: Palindromic in bases 10 and 32.

The programs for A099165, there is no canonical definition to state claims against.
-/

/-! ## A099165.P215737490738885562

`lt[lcm(3, floor(n/10)), gcd(11, n)]`
-/

namespace A099165.P215737490738885562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ⌊(n : ℚ) / 10⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 11 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099165.P215737490738885562

/-! ## A099165.P15728204902685761819

`record[gcd(A079475(n), A097599(n))]`
-/

namespace A099165.P15728204902685761819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079475 n) (A097599 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099165.P15728204902685761819

/-! ## A099165.P17968745508310883616

`record[A261916(A261424(3*(n+1)))]`
-/

namespace A099165.P17968745508310883616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261916 (A261424 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099165.P17968745508310883616

/-! ## A099165.P7754883332618559711

`record[A115581(3*(n+1))*A262037(n)]`
-/

namespace A099165.P7754883332618559711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115581 (3 * (n + 1)) * A262037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099165.P7754883332618559711

/-! ## A099165.P12235000464402216154

`record[A002113(n+1)%A097292(3*n+1)]`
-/

namespace A099165.P12235000464402216154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002113 (n + 1)) (A097292 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099165.P12235000464402216154

/-!
# A099166: G.f.: (1+x^2)/((1-2x)(1-x-x^2)); a(n)=3a(n-1)-a(n-2)-2a(n-3); a(n)=5*2^n-L(n+3); a(n)=sum{k=0..n, (L(k)-0^k)2^(n-k)}.

The programs for A099166, the canonical program `A099166.P15336408133151037206` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099166 has offset 0).

The definition of A099166 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)-2*a(n-3)` (program `A099166.P15336408133151037206`, by `A099166.P15336408133151037206.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099166.P15336408133151037206

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099166

/-- `3*a(n-1)-a(n-2)-2*a(n-3)` -/
def P15336408133151037206.Spec : Prop :=
  ∀ n, P15336408133151037206.a n = A099166 n

theorem P15336408133151037206.correct : P15336408133151037206.Spec := by
  intro n
  simp only [A099166]

end A099166

/-! ## A099166.P7128184284773781999

`ogf((1+x^2)/(1-3x+x^2+2x^3))`
-/

namespace A099166.P7128184284773781999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -3, 1, 2] n

end

end A099166.P7128184284773781999

namespace A099166

/-- `ogf((1+x^2)/(1-3x+x^2+2x^3))` -/
def P7128184284773781999.Spec : Prop :=
  ∀ n, P7128184284773781999.a n = A099166 n

end A099166

/-! ## A099166.P15971117396128372426

`round(ϕ^n+2*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A099166.P15971117396128372426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n + (2 * a (n - 1) : ℝ))

end

end A099166.P15971117396128372426

namespace A099166

/-- `round(ϕ^n+2*a(n-1))` -/
def P15971117396128372426.Spec : Prop :=
  ∀ n, P15971117396128372426.a n = A099166 n

end A099166

/-! ## A099166.P15172803473122127798

`round(a(n-1)+a(n-1)+ϕ^n)` with `a(0)=1, a(1)=3`
-/

namespace A099166.P15172803473122127798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + ((a (n - 1) : ℝ) + Real.goldenRatio ^ n))

end

end A099166.P15172803473122127798

namespace A099166

/-- `round(a(n-1)+a(n-1)+ϕ^n)` -/
def P15172803473122127798.Spec : Prop :=
  ∀ n, P15172803473122127798.a n = A099166 n

end A099166

/-! ## A099166.P18318638220370821310

`2^n-A227200(n+2)`
-/

namespace A099166.P18318638220370821310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A227200 (n + 2)

end

end A099166.P18318638220370821310

namespace A099166

/-- `2^n-A227200(n+2)` -/
def P18318638220370821310.Spec : Prop :=
  ∀ n, P18318638220370821310.a n = A099166 n

end A099166

/-! ## A099166.P14325347833186398356

`5*2^n-A000032(n+3)`
-/

namespace A099166.P14325347833186398356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * 2 ^ n : ℤ) - A000032 (n + 3)

end

end A099166.P14325347833186398356

namespace A099166

/-- `5*2^n-A000032(n+3)` -/
def P14325347833186398356.Spec : Prop :=
  ∀ n, P14325347833186398356.a n = A099166 n

end A099166

/-! ## A099166.P13567885201346115799

`A000032(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A099166.P13567885201346115799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000032 n + 2 * a (n - 1)

end

end A099166.P13567885201346115799

namespace A099166

/-- `A000032(n)+2*a(n-1)` -/
def P13567885201346115799.Spec : Prop :=
  ∀ n, P13567885201346115799.a n = A099166 n

end A099166

/-! ## A099166.P15838493714031711130

`Δ[A001610(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A099166.P15838493714031711130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A099166.P15838493714031711130

namespace A099166

/-- `Δ[A001610(n)]+2*a(n-1)` -/
def P15838493714031711130.Spec : Prop :=
  ∀ n, P15838493714031711130.a n = A099166 n

end A099166

/-! ## A099166.P11158443244160196417

`a(n-1)+A000204(n)+a(n-1)` with `a(0)=1`
-/

namespace A099166.P11158443244160196417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000204 n + a (n - 1))

end

end A099166.P11158443244160196417

namespace A099166

/-- `a(n-1)+A000204(n)+a(n-1)` -/
def P11158443244160196417.Spec : Prop :=
  ∀ n, P11158443244160196417.a n = A099166 n

end A099166

/-! ## A099166.P917838995906563015

`Δ[A000032(n+1)]+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A099166.P917838995906563015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + (a (n - 1) + a (n - 1))

end

end A099166.P917838995906563015

namespace A099166

/-- `Δ[A000032(n+1)]+a(n-1)+a(n-1)` -/
def P917838995906563015.Spec : Prop :=
  ∀ n, P917838995906563015.a n = A099166 n

end A099166

/-! ## A099166.P15945344527367003059

`A175660(n)+A027934(n)`
-/

namespace A099166.P15945344527367003059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175660 n + A027934 n

end

end A099166.P15945344527367003059

namespace A099166

/-- `A175660(n)+A027934(n)` -/
def P15945344527367003059.Spec : Prop :=
  ∀ n, P15945344527367003059.a n = A099166 n

end A099166

/-! ## A099166.P5891214816587649267

`A316528(n)-A000045(n)`
-/

namespace A099166.P5891214816587649267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316528 n - A000045 n

end

end A099166.P5891214816587649267

namespace A099166

/-- `A316528(n)-A000045(n)` -/
def P5891214816587649267.Spec : Prop :=
  ∀ n, P5891214816587649267.a n = A099166 n

end A099166

/-! ## A099166.P727266018083126247

`∑[A104004(n)]-A027934(n)`
-/

namespace A099166.P727266018083126247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027934 n

end

end A099166.P727266018083126247

namespace A099166

/-- `∑[A104004(n)]-A027934(n)` -/
def P727266018083126247.Spec : Prop :=
  ∀ n, P727266018083126247.a n = A099166 n

end A099166

/-! ## A099166.P17272659373370624413

`A167821(n+1)+A104004(n)`
-/

namespace A099166.P17272659373370624413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167821 (n + 1) + A104004 n

end

end A099166.P17272659373370624413

namespace A099166

/-- `A167821(n+1)+A104004(n)` -/
def P17272659373370624413.Spec : Prop :=
  ∀ n, P17272659373370624413.a n = A099166 n

end A099166

/-! ## A099166.P6574885813343982172

`A008466(n+2)+A008466(n)`
-/

namespace A099166.P6574885813343982172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008466 (n + 2) + A008466 n

end

end A099166.P6574885813343982172

namespace A099166

/-- `A008466(n+2)+A008466(n)` -/
def P6574885813343982172.Spec : Prop :=
  ∀ n, P6574885813343982172.a n = A099166 n

end A099166

/-! ## A099166.P18140849632709390768

`A027973(n+1)-A007283(n)`
-/

namespace A099166.P18140849632709390768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027973 (n + 1) - A007283 n

end

end A099166.P18140849632709390768

namespace A099166

/-- `A027973(n+1)-A007283(n)` -/
def P18140849632709390768.Spec : Prop :=
  ∀ n, P18140849632709390768.a n = A099166 n

end A099166

/-! ## A099166.P5634693569429089491

`A048487(n)-A206417(n+1)`
-/

namespace A099166.P5634693569429089491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048487 n - A206417 (n + 1)

end

end A099166.P5634693569429089491

namespace A099166

/-- `A048487(n)-A206417(n+1)` -/
def P5634693569429089491.Spec : Prop :=
  ∀ n, P5634693569429089491.a n = A099166 n

end A099166

/-! ## A099166.P7466715355393011609

`A167821(n+2)+A099036(n)`
-/

namespace A099166.P7466715355393011609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167821 (n + 2) + A099036 n

end

end A099166.P7466715355393011609

namespace A099166

/-- `A167821(n+2)+A099036(n)` -/
def P7466715355393011609.Spec : Prop :=
  ∀ n, P7466715355393011609.a n = A099166 n

end A099166

/-! ## A099166.P9873472504571598967

`A175660(n+1)-A175657(n)`
-/

namespace A099166.P9873472504571598967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175660 (n + 1) - A175657 n

end

end A099166.P9873472504571598967

namespace A099166

/-- `A175660(n+1)-A175657(n)` -/
def P9873472504571598967.Spec : Prop :=
  ∀ n, P9873472504571598967.a n = A099166 n

end A099166

/-! ## A099166.P2996817417858791506

`A027973(n+1)-A042950(n+1)`
-/

namespace A099166.P2996817417858791506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027973 (n + 1) - A042950 (n + 1)

end

end A099166.P2996817417858791506

namespace A099166

/-- `A027973(n+1)-A042950(n+1)` -/
def P2996817417858791506.Spec : Prop :=
  ∀ n, P2996817417858791506.a n = A099166 n

end A099166

/-!
# A099167: G.f.: (1+x^2)/((1-3x)(1-x-x^2)).

The programs for A099167, the canonical program `A099167.P13968901032191508213` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099167 has offset 0).

The definition of A099167 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099167.P13968901032191508213

`4*a(n-1)-2*a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=4, a(2)=15`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099167

/-- `4*a(n-1)-2*a(n-2)-3*a(n-3)` -/
def P13968901032191508213.Spec : Prop :=
  ∀ n, P13968901032191508213.a n = A099167 n

theorem P13968901032191508213.correct : P13968901032191508213.Spec := by
  intro n
  simp only [A099167]

end A099167

/-! ## A099167.P9557466688397046477

`2*3^n-A000045(n+2)`
-/

namespace A099167.P9557466688397046477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 3 ^ n : ℤ) - A000045 (n + 2)

end

end A099167.P9557466688397046477

namespace A099167

/-- `2*3^n-A000045(n+2)` -/
def P9557466688397046477.Spec : Prop :=
  ∀ n, P9557466688397046477.a n = A099167 n

end A099167

/-! ## A099167.P12044808834040842136

`ogf((1+x^2)/(1-4x+2x^2+3x^3))`
-/

namespace A099167.P12044808834040842136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -4, 2, 3] n

end

end A099167.P12044808834040842136

namespace A099167

/-- `ogf((1+x^2)/(1-4x+2x^2+3x^3))` -/
def P12044808834040842136.Spec : Prop :=
  ∀ n, P12044808834040842136.a n = A099167 n

end A099167

/-! ## A099167.P4302020481647078059

`round(ϕ^n+3*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A099167.P4302020481647078059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n + (3 * a (n - 1) : ℝ))

end

end A099167.P4302020481647078059

namespace A099167

/-- `round(ϕ^n+3*a(n-1))` -/
def P4302020481647078059.Spec : Prop :=
  ∀ n, P4302020481647078059.a n = A099167 n

end A099167

/-! ## A099167.P14420570475224403840

`Δ[3^n]-Δ[A001911(n)]`
-/

namespace A099167.P14420570475224403840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (f2 (n + 1) - f2 n)

end

end A099167.P14420570475224403840

namespace A099167

/-- `Δ[3^n]-Δ[A001911(n)]` -/
def P14420570475224403840.Spec : Prop :=
  ∀ n, P14420570475224403840.a n = A099167 n

end A099167

/-! ## A099167.P17326929662520201076

`Δ[3^n]-Δ[A020695(n)]`
-/

namespace A099167.P17326929662520201076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (f2 (n + 1) - f2 n)

end

end A099167.P17326929662520201076

namespace A099167

/-- `Δ[3^n]-Δ[A020695(n)]` -/
def P17326929662520201076.Spec : Prop :=
  ∀ n, P17326929662520201076.a n = A099167 n

end A099167

/-! ## A099167.P17769847166082955088

`Δ[3^n]-record[Δ[A000045(n)]]`
-/

namespace A099167.P17769847166082955088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A099167.P17769847166082955088

namespace A099167

/-- `Δ[3^n]-record[Δ[A000045(n)]]` -/
def P17769847166082955088.Spec : Prop :=
  ∀ n, P17769847166082955088.a n = A099167 n

end A099167

/-! ## A099167.P1857181371782350058

`A000032(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A099167.P1857181371782350058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000032 n + 3 * a (n - 1)

end

end A099167.P1857181371782350058

namespace A099167

/-- `A000032(n)+3*a(n-1)` -/
def P1857181371782350058.Spec : Prop :=
  ∀ n, P1857181371782350058.a n = A099167 n

end A099167

/-! ## A099167.P11880114315204759663

`A000204(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A099167.P11880114315204759663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000204 n + 3 * a (n - 1)

end

end A099167.P11880114315204759663

namespace A099167

/-- `A000204(n)+3*a(n-1)` -/
def P11880114315204759663.Spec : Prop :=
  ∀ n, P11880114315204759663.a n = A099167 n

end A099167

/-! ## A099167.P14032348289077774161

`A027649(n)+A008466(n)`
-/

namespace A099167.P14032348289077774161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n + A008466 n

end

end A099167.P14032348289077774161

namespace A099167

/-- `A027649(n)+A008466(n)` -/
def P14032348289077774161.Spec : Prop :=
  ∀ n, P14032348289077774161.a n = A099167 n

end A099167

/-! ## A099167.P8587911940335692313

`∑[A003946(n)-A000045(n)]`
-/

namespace A099167.P8587911940335692313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099167.P8587911940335692313

namespace A099167

/-- `∑[A003946(n)-A000045(n)]` -/
def P8587911940335692313.Spec : Prop :=
  ∀ n, P8587911940335692313.a n = A099167 n

end A099167

/-! ## A099167.P3115778064915387883

`A008776(n)-Δ[A018910(n)]`
-/

namespace A099167.P3115778064915387883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n - (f1 (n + 1) - f1 n)

end

end A099167.P3115778064915387883

namespace A099167

/-- `A008776(n)-Δ[A018910(n)]` -/
def P3115778064915387883.Spec : Prop :=
  ∀ n, P3115778064915387883.a n = A099167 n

end A099167

/-! ## A099167.P10848349389362464025

`A212323(n+1)-A212262(n)`
-/

namespace A099167.P10848349389362464025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212323 (n + 1) - A212262 n

end

end A099167.P10848349389362464025

namespace A099167

/-- `A212323(n+1)-A212262(n)` -/
def P10848349389362464025.Spec : Prop :=
  ∀ n, P10848349389362464025.a n = A099167 n

end A099167

/-! ## A099167.P1009900859077431960

`A048473(n)-A000071(n+2)`
-/

namespace A099167.P1009900859077431960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n - A000071 (n + 2)

end

end A099167.P1009900859077431960

namespace A099167

/-- `A048473(n)-A000071(n+2)` -/
def P1009900859077431960.Spec : Prop :=
  ∀ n, P1009900859077431960.a n = A099167 n

end A099167

/-! ## A099167.P842697111825276575

`Δ[A024024(n)]-∑[A000045(n)]`
-/

namespace A099167.P842697111825276575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A099167.P842697111825276575

namespace A099167

/-- `Δ[A024024(n)]-∑[A000045(n)]` -/
def P842697111825276575.Spec : Prop :=
  ∀ n, P842697111825276575.a n = A099167 n

end A099167

/-! ## A099167.P2008147735100452731

`∑[A052156(n+1)-A000045(n)]`
-/

namespace A099167.P2008147735100452731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (n + 1) - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099167.P2008147735100452731

namespace A099167

/-- `∑[A052156(n+1)-A000045(n)]` -/
def P2008147735100452731.Spec : Prop :=
  ∀ n, P2008147735100452731.a n = A099167 n

end A099167

/-! ## A099167.P16353979266337403022

`A008776(n)-1-∑[A000045(n)]`
-/

namespace A099167.P16353979266337403022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n - 1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099167.P16353979266337403022

namespace A099167

/-- `A008776(n)-1-∑[A000045(n)]` -/
def P16353979266337403022.Spec : Prop :=
  ∀ n, P16353979266337403022.a n = A099167 n

end A099167

/-! ## A099167.P10591761950346421529

`A008776(n)-A115339(2*n+1)`
-/

namespace A099167.P10591761950346421529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n - A115339 (2 * n + 1)

end

end A099167.P10591761950346421529

namespace A099167

/-- `A008776(n)-A115339(2*n+1)` -/
def P10591761950346421529.Spec : Prop :=
  ∀ n, P10591761950346421529.a n = A099167 n

end A099167

/-! ## A099167.P5401712292310570435

`Δ[A000244(n)]-1-∑[A000045(n)]`
-/

namespace A099167.P5401712292310570435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1 - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A099167.P5401712292310570435

namespace A099167

/-- `Δ[A000244(n)]-1-∑[A000045(n)]` -/
def P5401712292310570435.Spec : Prop :=
  ∀ n, P5401712292310570435.a n = A099167 n

end A099167

/-! ## A099167.P2858036919017598795

`A008776(n)+A020695(n)-A020701(n)`
-/

namespace A099167.P2858036919017598795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n + (A020695 n - A020701 n)

end

end A099167.P2858036919017598795

namespace A099167

/-- `A008776(n)+A020695(n)-A020701(n)` -/
def P2858036919017598795.Spec : Prop :=
  ∀ n, P2858036919017598795.a n = A099167 n

end A099167

/-!
# A099168: a(n) = 3^n * 5^binomial(n,2).

The programs for A099168, the canonical program `A099168.P16822937818402916388` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099168 has offset 0).

The definition of A099168 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*5^C(n, 2)` (program `A099168.P16822937818402916388`, by `A099168.P16822937818402916388.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099168.P16822937818402916388

`3^n*5^C(n, 2)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099168

/-- `3^n*5^C(n, 2)` -/
def P16822937818402916388.Spec : Prop :=
  ∀ n, (P16822937818402916388.a n : ℤ) = A099168 n

theorem P16822937818402916388.correct : P16822937818402916388.Spec := by
  intro n
  simp only [A099168]

end A099168

/-! ## A099168.P16670317790751336815

`∏[5*a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A099168.P16670317790751336815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A099168.P16670317790751336815

namespace A099168

/-- `∏[5*a(n-1)]` -/
def P16670317790751336815.Spec : Prop :=
  ∀ n, (P16670317790751336815.a n : ℤ) = A099168 n

end A099168

/-! ## A099168.P2009638894621000708

`∏[ceil(3*5^(n-1))]`
-/

namespace A099168.P2009638894621000708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A099168.P2009638894621000708

namespace A099168

/-- `∏[ceil(3*5^(n-1))]` -/
def P2009638894621000708.Spec : Prop :=
  ∀ n, P2009638894621000708.a n = A099168 n

end A099168

/-! ## A099168.P15575606855458342379

`3*5^(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A099168.P15575606855458342379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 1))

end

end A099168.P15575606855458342379

namespace A099168

/-- `3*5^(n-1)*a(n-1)` -/
def P15575606855458342379.Spec : Prop :=
  ∀ n, P15575606855458342379.a n = (A099168 n : ℚ)

end A099168

/-! ## A099168.P11889201610663964393

`floor(5*a(n-1)/a(n-2)*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A099168.P11889201610663964393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊5 * ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))⌋

end

end A099168.P11889201610663964393

namespace A099168

/-- `floor(5*a(n-1)/a(n-2)*a(n-1))` -/
def P11889201610663964393.Spec : Prop :=
  ∀ n, P11889201610663964393.a n = A099168 n

end A099168

/-!
# A099169: a(n) = (1/n) * Sum_{k=0..n-1} C(n,k) * C(n,k+1) * (n-1)^k.

The programs for A099169, the canonical program `A099169.P14282308635915583168` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099169 has offset 1).

The definition of A099169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099169.P14282308635915583168

`1/(n+1)*∑{#}[n, C(n+1, #)*C(n+1, #+1)*n^#]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099169

/-- `1/(n+1)*∑{#}[n, C(n+1, #)*C(n+1, #+1)*n^#]` -/
def P14282308635915583168.Spec : Prop :=
  ∀ n, P14282308635915583168.a n = (A099169 (n + 1) : ℚ)

end A099169

/-! ## A099169.P7158794166789170097

`A331794(n)/(n+1)`
-/

namespace A099169.P7158794166789170097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331794 n : ℚ) / (n + 1 : ℚ)

end

end A099169.P7158794166789170097

namespace A099169

/-- `A331794(n)/(n+1)` -/
def P7158794166789170097.Spec : Prop :=
  ∀ n, P7158794166789170097.a n = (A099169 (n + 1) : ℚ)

end A099169

/-! ## A099169.P2893198010305289233

`A243631(2*(n+1)²)`
-/

namespace A099169.P2893198010305289233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (2 * (n + 1) ^ 2)

end

end A099169.P2893198010305289233

namespace A099169

/-- `A243631(2*(n+1)²)` -/
def P2893198010305289233.Spec : Prop :=
  ∀ n, P2893198010305289233.a n = A099169 (n + 1)

end A099169

/-! ## A099169.P6808482900016178956

`A204057((n+1)²+n²)`
-/

namespace A099169.P6808482900016178956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 ((n + 1) ^ 2 + n ^ 2)

end

end A099169.P6808482900016178956

namespace A099169

/-- `A204057((n+1)²+n²)` -/
def P6808482900016178956.Spec : Prop :=
  ∀ n, P6808482900016178956.a n = A099169 (n + 1)

end A099169

/-! ## A099169.P802337026568193404

`A008550(A056220(n+1))`
-/

namespace A099169.P802337026568193404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A056220 (n + 1)).toNat

end

end A099169.P802337026568193404

namespace A099169

/-- `A008550(A056220(n+1))` -/
def P802337026568193404.Spec : Prop :=
  ∀ n, P802337026568193404.a n = A099169 (n + 1)

end A099169

/-!
# A099170: Generalized Motzkin paths with no hills and 3-horizontal steps.

The programs for A099170, there is no canonical definition to state claims against.
-/

/-! ## A099170.P17060399050833811783

`A008616(A306008(n)+A001405(n))`
-/

namespace A099170.P17060399050833811783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A306008 n + A001405 n).toNat

end

end A099170.P17060399050833811783

/-! ## A099170.P11423535340283467212

`A273190(A192677(n)+A002216(n))`
-/

namespace A099170.P11423535340283467212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A192677 n + A002216 n).toNat

end

end A099170.P11423535340283467212

/-! ## A099170.P5194658952846230459

`A273190(A032218(n+1)+A002216(n))`
-/

namespace A099170.P5194658952846230459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A032218 (n + 1) + A002216 n).toNat

end

end A099170.P5194658952846230459

/-! ## A099170.P873536574047978683

`A273190(A038083(n+1)+A002216(n))`
-/

namespace A099170.P873536574047978683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A038083 (n + 1) + A002216 n).toNat

end

end A099170.P873536574047978683

/-!
# A099171: Generalized Motzkin paths with no hills and 4-horizontal steps (even coefficients).

The programs for A099171, there is no canonical definition to state claims against.
-/

/-! ## A099171.P7618456197387245797

`Δ[A001462(A073479(n))]`
-/

namespace A099171.P7618456197387245797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A073479 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099171.P7618456197387245797

/-! ## A099171.P2195525469185930886

`A071840(A193646(n+1))`
-/

namespace A099171.P2195525469185930886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071840 (A193646 (n + 1)).toNat

end

end A099171.P2195525469185930886

/-!
# A099172: Array T(m, n) read by antidiagonals: number of binary strings with m 1's and n 0's without zigzags.

The programs for A099172, there is no canonical definition to state claims against.
-/

/-! ## A099172.P1157491226873681524

`A096143(A174545(n))`
-/

namespace A099172.P1157491226873681524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096143 (A174545 n).toNat

end

end A099172.P1157491226873681524

/-! ## A099172.P2987602985404426200

`A000195(5*A174545(n))`
-/

namespace A099172.P2987602985404426200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (5 * A174545 n).toNat

end

end A099172.P2987602985404426200

/-! ## A099172.P16747613570958289821

`A188397(A323211(n)^A008835(n+1))`
-/

namespace A099172.P16747613570958289821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188397 (SequenceMachineLib.roundAway ((A323211 n : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A099172.P16747613570958289821

/-! ## A099172.P9551056767637083895

`A300358(A157219(n))`
-/

namespace A099172.P9551056767637083895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300358 (A157219 n).toNat

end

end A099172.P9551056767637083895

/-! ## A099172.P12450067729358486531

`A362344(A159623(n))`
-/

namespace A099172.P12450067729358486531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362344 (A159623 n).toNat

end

end A099172.P12450067729358486531

/-!
# A099173: Array, A(k,n), read by diagonals: g.f. of k-th row x/(1-2*x-(k-1)*x^2).

The programs for A099173, there is no canonical definition to state claims against.
-/

/-! ## A099173.P17607829902155284680

`and(A124922(n+1), A161511(A334622(n)))`
-/

namespace A099173.P17607829902155284680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124922 (n + 1)) (A161511 (A334622 n).toNat)

end

end A099173.P17607829902155284680

/-! ## A099173.P2977445601970592968

`A185284(A000961(n+1))+A216274(n)-A054124(n)`
-/

namespace A099173.P2977445601970592968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000961 (n + 1)).toNat + (A216274 n - A054124 n)

end

end A099173.P2977445601970592968

/-! ## A099173.P6194753668009511391

`A122922(A209576(n+1))`
-/

namespace A099173.P6194753668009511391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (A209576 (n + 1)).toNat

end

end A099173.P6194753668009511391

/-! ## A099173.P7113627247587617714

`A291592(A336203(n)+1)`
-/

namespace A099173.P7113627247587617714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291592 (A336203 n + 1).toNat

end

end A099173.P7113627247587617714

/-! ## A099173.P8215648012563987499

`A002262(A007949(A043330(n))+n)`
-/

namespace A099173.P8215648012563987499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A007949 (A043330 n).toNat + (n : ℤ)).toNat

end

end A099173.P8215648012563987499

/-!
# A099174: Triangle read by rows: coefficients of modified Hermite polynomials.

The programs for A099174, the canonical program `A099174.P11832681913772688831` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099174 has offset 0).

The definition of A099174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099174.P11832681913772688831

`T(n-1,k-1)+(col(n)+1)*T(n-1,k+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099174

/-- `T(n-1,k-1)+(col(n)+1)*T(n-1,k+1)` -/
def P11832681913772688831.Spec : Prop :=
  ∀ n, (P11832681913772688831.a n : ℤ) = A099174 n

theorem P11832681913772688831.correct : P11832681913772688831.Spec := by
  intro n
  simp only [A099174]

end A099174

/-! ## A099174.P5271509912006321759

`T(n-1,k-1)+(row(n)-1)*T(n-2,k)` with `a(0)=1`
-/

namespace A099174.P5271509912006321759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + ((SequenceMachineLib.triRow n : ℤ) - 1) * SequenceMachineLib.triUp2 a n

end

end A099174.P5271509912006321759

namespace A099174

/-- `T(n-1,k-1)+(row(n)-1)*T(n-2,k)` -/
def P5271509912006321759.Spec : Prop :=
  ∀ n, P5271509912006321759.a n = A099174 n

end A099174

/-! ## A099174.P7603465576377681693

`T(n-1,k-1)-(1-row(n))*T(n-2,k)` with `a(0)=1`
-/

namespace A099174.P7603465576377681693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (1 - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triUp2 a n

end

end A099174.P7603465576377681693

namespace A099174

/-- `T(n-1,k-1)-(1-row(n))*T(n-2,k)` -/
def P7603465576377681693.Spec : Prop :=
  ∀ n, P7603465576377681693.a n = A099174 n

end A099174

/-! ## A099174.P2120303243891876411

`T(n-1,k-1)-((T(n-1,k)-1)*col(n)-1)*T(n-1,k+1)` with `a(0)=1`
-/

namespace A099174.P2120303243891876411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - ((SequenceMachineLib.triUp a n - 1) * (SequenceMachineLib.triCol n : ℤ) - 1) * SequenceMachineLib.triUpRight a n

end

end A099174.P2120303243891876411

namespace A099174

/-- `T(n-1,k-1)-((T(n-1,k)-1)*col(n)-1)*T(n-1,k+1)` -/
def P2120303243891876411.Spec : Prop :=
  ∀ n, P2120303243891876411.a n = A099174 n

end A099174

/-! ## A099174.P3812408790168106936

`T(n-1,k-1)-((T(n-2,k-1)-1)*col(n)-1)*T(n-1,k+1)` with `a(0)=1`
-/

namespace A099174.P3812408790168106936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - ((SequenceMachineLib.triUp2Left a n - 1) * (SequenceMachineLib.triCol n : ℤ) - 1) * SequenceMachineLib.triUpRight a n

end

end A099174.P3812408790168106936

namespace A099174

/-- `T(n-1,k-1)-((T(n-2,k-1)-1)*col(n)-1)*T(n-1,k+1)` -/
def P3812408790168106936.Spec : Prop :=
  ∀ n, P3812408790168106936.a n = A099174 n

end A099174

/-! ## A099174.P6730670868907277430

`abs(A066325(n))`
-/

namespace A099174.P6730670868907277430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066325 n|

end

end A099174.P6730670868907277430

namespace A099174

/-- `abs(A066325(n))` -/
def P6730670868907277430.Spec : Prop :=
  ∀ n, P6730670868907277430.a n = A099174 n

end A099174

/-! ## A099174.P8761765495843302267

`A066325(n)*A117568(n)`
-/

namespace A099174.P8761765495843302267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n * A117568 n

end

end A099174.P8761765495843302267

namespace A099174

/-- `A066325(n)*A117568(n)` -/
def P8761765495843302267.Spec : Prop :=
  ∀ n, P8761765495843302267.a n = A099174 n

end A099174

/-! ## A099174.P17927473042944059332

`A066325(n)*A369736(n)`
-/

namespace A099174.P17927473042944059332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n * A369736 n

end

end A099174.P17927473042944059332

namespace A099174

/-- `A066325(n)*A369736(n)` -/
def P17927473042944059332.Spec : Prop :=
  ∀ n, P17927473042944059332.a n = A099174 n

end A099174

/-! ## A099174.P16148571799740143905

`gcd(A000038(n), A066325(n))`
-/

namespace A099174.P16148571799740143905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A066325 n)

end

end A099174.P16148571799740143905

namespace A099174

/-- `gcd(A000038(n), A066325(n))` -/
def P16148571799740143905.Spec : Prop :=
  ∀ n, (P16148571799740143905.a n : ℤ) = A099174 n

end A099174

/-! ## A099174.P6836441954225302770

`lcm(A007318(n), A066325(n))`
-/

namespace A099174.P6836441954225302770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A066325 n)

end

end A099174.P6836441954225302770

namespace A099174

/-- `lcm(A007318(n), A066325(n))` -/
def P6836441954225302770.Spec : Prop :=
  ∀ n, (P6836441954225302770.a n : ℤ) = A099174 n

end A099174

/-! ## A099174.P2148447960608484407

`A066325(n)*A130194(n+1)`
-/

namespace A099174.P2148447960608484407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n * A130194 (n + 1)

end

end A099174.P2148447960608484407

namespace A099174

/-- `A066325(n)*A130194(n+1)` -/
def P2148447960608484407.Spec : Prop :=
  ∀ n, P2148447960608484407.a n = A099174 n

end A099174

/-! ## A099174.P9701467482968396513

`A359760(A061579(n))`
-/

namespace A099174.P9701467482968396513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359760 (A061579 n).toNat

end

end A099174.P9701467482968396513

namespace A099174

/-- `A359760(A061579(n))` -/
def P9701467482968396513.Spec : Prop :=
  ∀ n, P9701467482968396513.a n = A099174 n

end A099174

/-! ## A099174.P16259235640090590870

`A359760(A038722(n+1)-1)`
-/

namespace A099174.P16259235640090590870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359760 (A038722 (n + 1) - 1).toNat

end

end A099174.P16259235640090590870

namespace A099174

/-- `A359760(A038722(n+1)-1)` -/
def P16259235640090590870.Spec : Prop :=
  ∀ n, P16259235640090590870.a n = A099174 n

end A099174

/-! ## A099174.P5108487145327668296

`A359760(A038722(n+2))`
-/

namespace A099174.P5108487145327668296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359760 (A038722 (n + 2)).toNat

end

end A099174.P5108487145327668296

namespace A099174

/-- `A359760(A038722(n+2))` -/
def P5108487145327668296.Spec : Prop :=
  ∀ n, P5108487145327668296.a n = A099174 n

end A099174

/-! ## A099174.P489975085212745824

`T(n-1,k-1)-((T(n,k-1)-1)*col(n)-1)*T(n-1,k+1)` with `a(0)=1`
-/

namespace A099174.P489975085212745824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - ((SequenceMachineLib.triLeft a n - 1) * (SequenceMachineLib.triCol n : ℤ) - 1) * SequenceMachineLib.triUpRight a n

end

end A099174.P489975085212745824

namespace A099174

/-- `T(n-1,k-1)-((T(n,k-1)-1)*col(n)-1)*T(n-1,k+1)` -/
def P489975085212745824.Spec : Prop :=
  ∀ n, P489975085212745824.a n = A099174 n

end A099174

/-! ## A099174.P17653252779300438466

`sqrt(A112227(n)²/A130321(n))`
-/

namespace A099174.P17653252779300438466
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A112227 n ^ 2 : ℚ) / (A130321 n : ℚ) : ℝ)

end

end A099174.P17653252779300438466

namespace A099174

/-- `sqrt(A112227(n)²/A130321(n))` -/
def P17653252779300438466.Spec : Prop :=
  ∀ n, P17653252779300438466.a n = (A099174 n : ℝ)

end A099174

/-!
# A099175: a(1) = 1, a(2) = 8; for n > 2: a(n) = a(n-1)*(3*a(n-1)-2).

The programs for A099175, the canonical program `A099175.P13104232562056116478` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099175 has offset 1).

The definition of A099175 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*(3*a(n-1)-2)` (program `A099175.P13104232562056116478`, by `A099175.P13104232562056116478.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099175.P13104232562056116478

`a(n-1)*(3*a(n-1)-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099175

/-- `a(n-1)*(3*a(n-1)-2)` -/
def P13104232562056116478.Spec : Prop :=
  ∀ n, P13104232562056116478.a n = A099175 (n + 1)

theorem P13104232562056116478.correct : P13104232562056116478.Spec := by
  intro n
  simp only [A099175, Nat.add_sub_cancel]

end A099175

/-! ## A099175.P12776731066066391185

`(3*a(n-1)-2)*a(n-1)` with `a(0)=1, a(1)=8`
-/

namespace A099175.P12776731066066391185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  (3 * a (n - 1) - 2) * a (n - 1)

end

end A099175.P12776731066066391185

namespace A099175

/-- `(3*a(n-1)-2)*a(n-1)` -/
def P12776731066066391185.Spec : Prop :=
  ∀ n, P12776731066066391185.a n = A099175 (n + 1)

theorem P12776731066066391185.correct : P12776731066066391185.Spec := by
  intro n
  simp only [A099175, Nat.add_sub_cancel, A099175.P12776731066066391185.a, A099175.P13104232562056116478.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A099175

/-!
# A099176: a(n) = 2*a(n-1) + 4*a(n-2) - 4*a(n-3) - 4*a(n-4).

The programs for A099176, the canonical program `A099176.P8495461880837422892` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099176 has offset 0).

The definition of A099176 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+4*a(n-2)-4*a(n-3)-4*a(n-4)` (program `A099176.P8495461880837422892`, by `A099176.P8495461880837422892.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099176.P1188480024884288138

`ogf((1-x-2x^2)/(1-2x-4x^2+4x^3+4x^4))`
-/

namespace A099176.P1188480024884288138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2] [1, -2, -4, 4, 4] n

end

end A099176.P1188480024884288138

namespace A099176

/-- `ogf((1-x-2x^2)/(1-2x-4x^2+4x^3+4x^4))` -/
def P1188480024884288138.Spec : Prop :=
  ∀ n, P1188480024884288138.a n = A099176 n

end A099176

/-! ## A099176.P8495461880837422892

`2*a(n-1)+4*a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099176

/-- `2*a(n-1)+4*a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P8495461880837422892.Spec : Prop :=
  ∀ n, P8495461880837422892.a n = A099176 n

theorem P8495461880837422892.correct : P8495461880837422892.Spec := by
  intro n
  simp only [A099176]

end A099176

/-! ## A099176.P1568665435738126465

`A099177(n)+A077957(n)`
-/

namespace A099176.P1568665435738126465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099177 n + A077957 n

end

end A099176.P1568665435738126465

namespace A099176

/-- `A099177(n)+A077957(n)` -/
def P1568665435738126465.Spec : Prop :=
  ∀ n, P1568665435738126465.a n = A099176 n

end A099176

/-! ## A099176.P17141921538580889301

`A038508(n)-A007179(n)`
-/

namespace A099176.P17141921538580889301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038508 n - A007179 n

end

end A099176.P17141921538580889301

namespace A099176

/-- `A038508(n)-A007179(n)` -/
def P17141921538580889301.Spec : Prop :=
  ∀ n, P17141921538580889301.a n = A099176 n

end A099176

/-! ## A099176.P11678754687234511378

`A099177(n)+Δ[A060546(n)]`
-/

namespace A099176.P11678754687234511378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099177 n + (f1 (n + 1) - f1 n)

end

end A099176.P11678754687234511378

namespace A099176

/-- `A099177(n)+Δ[A060546(n)]` -/
def P11678754687234511378.Spec : Prop :=
  ∀ n, P11678754687234511378.a n = A099176 n

end A099176

/-! ## A099176.P2827651414901962679

`∑[A026150(n)]-A099177(n)`
-/

namespace A099176.P2827651414901962679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099177 n

end

end A099176.P2827651414901962679

namespace A099176

/-- `∑[A026150(n)]-A099177(n)` -/
def P2827651414901962679.Spec : Prop :=
  ∀ n, P2827651414901962679.a n = A099176 n

end A099176

/-! ## A099176.P3313279673434128263

`A002605(n+1)-A099177(n)`
-/

namespace A099176.P3313279673434128263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1) - A099177 n

end

end A099176.P3313279673434128263

namespace A099176

/-- `A002605(n+1)-A099177(n)` -/
def P3313279673434128263.Spec : Prop :=
  ∀ n, P3313279673434128263.a n = A099176 n

end A099176

/-! ## A099176.P16337642897414300883

`(A052552(n)+A005665(n))/2`
-/

namespace A099176.P16337642897414300883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052552 n + A005665 n : ℚ) / 2

end

end A099176.P16337642897414300883

namespace A099176

/-- `(A052552(n)+A005665(n))/2` -/
def P16337642897414300883.Spec : Prop :=
  ∀ n, P16337642897414300883.a n = (A099176 n : ℚ)

end A099176

/-! ## A099176.P7611355151382731576

`A208759(∑[n+1])-A099177(n)`
-/

namespace A099176.P7611355151382731576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (∑ j ∈ Finset.range (n + 1), f1 j) - A099177 n

end

end A099176.P7611355151382731576

namespace A099176

/-- `A208759(∑[n+1])-A099177(n)` -/
def P7611355151382731576.Spec : Prop :=
  ∀ n, P7611355151382731576.a n = A099176 n

end A099176

/-!
# A099177: a(n) = 2*a(n-1) + 4*a(n-2) - 4*a(n-3) - 4*a(n-4).

The programs for A099177, the canonical program `A099177.P342646706072404541` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099177 has offset 0).

The definition of A099177 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+4*a(n-2)-4*a(n-3)-4*a(n-4)` (program `A099177.P342646706072404541`, by `A099177.P342646706072404541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099177.P14642519609236056703

`ogf(x/(1-2x-4x^2+4x^3+4x^4))`
-/

namespace A099177.P14642519609236056703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -4, 4, 4] n

end

end A099177.P14642519609236056703

namespace A099177

/-- `ogf(x/(1-2x-4x^2+4x^3+4x^4))` -/
def P14642519609236056703.Spec : Prop :=
  ∀ n, P14642519609236056703.a n = A099177 n

end A099177

/-! ## A099177.P342646706072404541

`2*a(n-1)+4*a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099177

/-- `2*a(n-1)+4*a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P342646706072404541.Spec : Prop :=
  ∀ n, P342646706072404541.a n = A099177 n

theorem P342646706072404541.correct : P342646706072404541.Spec := by
  intro n
  simp only [A099177]

end A099177

/-! ## A099177.P2507863350423182075

`A099176(n)-A077957(n)`
-/

namespace A099177.P2507863350423182075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099176 n - A077957 n

end

end A099177.P2507863350423182075

namespace A099177

/-- `A099176(n)-A077957(n)` -/
def P2507863350423182075.Spec : Prop :=
  ∀ n, P2507863350423182075.a n = A099177 n

end A099177

/-! ## A099177.P14323421369530190407

`and(-A131572(n), A155020(n))`
-/

namespace A099177.P14323421369530190407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A131572 n) (A155020 n)

end

end A099177.P14323421369530190407

namespace A099177

/-- `and(-A131572(n), A155020(n))` -/
def P14323421369530190407.Spec : Prop :=
  ∀ n, P14323421369530190407.a n = A099177 n

end A099177

/-! ## A099177.P907144708374949967

`A099176(n)-Δ[A060546(n)]`
-/

namespace A099177.P907144708374949967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099176 n - (f1 (n + 1) - f1 n)

end

end A099177.P907144708374949967

namespace A099177

/-- `A099176(n)-Δ[A060546(n)]` -/
def P907144708374949967.Spec : Prop :=
  ∀ n, P907144708374949967.a n = A099177 n

end A099177

/-! ## A099177.P16929982488734866518

`∑[A026150(n)]-A099176(n)`
-/

namespace A099177.P16929982488734866518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099176 n

end

end A099177.P16929982488734866518

namespace A099177

/-- `∑[A026150(n)]-A099176(n)` -/
def P16929982488734866518.Spec : Prop :=
  ∀ n, P16929982488734866518.a n = A099177 n

end A099177

/-! ## A099177.P11781047608676593107

`A002605(n+1)-A099176(n)`
-/

namespace A099177.P11781047608676593107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1) - A099176 n

end

end A099177.P11781047608676593107

namespace A099177

/-- `A002605(n+1)-A099176(n)` -/
def P11781047608676593107.Spec : Prop :=
  ∀ n, P11781047608676593107.a n = A099177 n

end A099177

/-! ## A099177.P8355431380353756731

`A005665(n)+1-A099176(n)`
-/

namespace A099177.P8355431380353756731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005665 n + (1 - A099176 n)

end

end A099177.P8355431380353756731

namespace A099177

/-- `A005665(n)+1-A099176(n)` -/
def P8355431380353756731.Spec : Prop :=
  ∀ n, P8355431380353756731.a n = A099177 n

end A099177

/-!
# A099178: Numbers which are the sum of two positive cubes and divisible by 17.

The programs for A099178, there is no canonical definition to state claims against.
-/

/-! ## A099178.P4716761010142870783

`∩[A003325(n+1), A008599(n)]`
-/

namespace A099178.P4716761010142870783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099178.P4716761010142870783

/-! ## A099178.P8276199257842816131

`∩[A338667(n+1), A008599(n)]`
-/

namespace A099178.P8276199257842816131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099178.P8276199257842816131

/-! ## A099178.P5074056193220088218

`∩[A003325(n+1), A008591(n)+8*n]`
-/

namespace A099178.P5074056193220088218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n + (8 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099178.P5074056193220088218

/-! ## A099178.P10996136856788494373

`∩[A008591(2*n)-n, A338667(n+2)]`
-/

namespace A099178.P10996136856788494373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099178.P10996136856788494373

/-!
# A099179: Iterated tetrahedral numbers.

The programs for A099179, there is no canonical definition to state claims against.
-/

/-! ## A099179.P8029706803009994971

`C(a(n-1)+2, 3)` with `a(0)=2`
-/

namespace A099179.P8029706803009994971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.choose (a (n - 1) + 2) 3

end

end A099179.P8029706803009994971

/-! ## A099179.P15725363344497581491

`C(or(2, a(n-1)), 3)` with `a(0)=2, a(1)=4`
-/

namespace A099179.P15725363344497581491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  Nat.choose (Nat.lor 2 (a (n - 1))) 3

end

end A099179.P15725363344497581491

/-!
# A099180: Primes p which are greater than p reversed.

The programs for A099180, there is no canonical definition to state claims against.
-/

/-! ## A099180.P3764143803352604959

`p?[A071590(n+1)]`
-/

namespace A099180.P3764143803352604959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099180.P3764143803352604959

/-! ## A099180.P11250497005631492476

`p?[lt[A004086(n), n]]`
-/

namespace A099180.P11250497005631492476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A099180.P11250497005631492476

/-! ## A099180.P2138886433420775616

`filter[A071590(n+1), A010051(#)]`
-/

namespace A099180.P2138886433420775616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A099180.P2138886433420775616

/-! ## A099180.P7554090142979713712

`filter[A071590(n+1), A323153(#)]`
-/

namespace A099180.P7554090142979713712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A099180.P7554090142979713712

/-! ## A099180.P1527015265931182427

`∩[A000040(n+1), A071590(n+1)]`
-/

namespace A099180.P1527015265931182427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099180.P1527015265931182427

/-! ## A099180.P7151967497438238226

`∩[A004139(n+1), A071590(n+1)]`
-/

namespace A099180.P7151967497438238226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099180.P7151967497438238226

/-! ## A099180.P10291915846277094897

`∩[A006005(n+1), A071590(n+1)]`
-/

namespace A099180.P10291915846277094897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099180.P10291915846277094897

/-! ## A099180.P10416591216838951797

`∩[A008578(n+1), A071590(n+1)]`
-/

namespace A099180.P10416591216838951797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099180.P10416591216838951797

/-! ## A099180.P11760910213180078459

`∩[A033946(n+1), A071590(n+1)]`
-/

namespace A099180.P11760910213180078459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099180.P11760910213180078459

/-! ## A099180.P9879939228950592087

`∩[A045319(n+1), A071590(n+1)]`
-/

namespace A099180.P9879939228950592087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099180.P9879939228950592087

/-! ## A099180.P5823200181728838788

`∩[A045344(n+1), A071590(n+1)]`
-/

namespace A099180.P5823200181728838788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099180.P5823200181728838788

/-! ## A099180.P199485413964853831

`∩[A046022(n+1), A071590(n+1)]`
-/

namespace A099180.P199485413964853831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099180.P199485413964853831

/-! ## A099180.P16028811075242236645

`∩[A051948(n+1), A071590(n+1)]`
-/

namespace A099180.P16028811075242236645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099180.P16028811075242236645

/-! ## A099180.P4614927367510546607

`∩[A053813(n+1), A071590(n+1)]`
-/

namespace A099180.P4614927367510546607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099180.P4614927367510546607

/-! ## A099180.P15268402284601913638

`∩[A064728(n+1), A071590(n+1)]`
-/

namespace A099180.P15268402284601913638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099180.P15268402284601913638

/-! ## A099180.P3290391926842782381

`∩[A065091(n+1), A071590(n+1)]`
-/

namespace A099180.P3290391926842782381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099180.P3290391926842782381

/-! ## A099180.P1453009096912765543

`∩[A067126(n+1), A071590(n+1)]`
-/

namespace A099180.P1453009096912765543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099180.P1453009096912765543

/-! ## A099180.P18211925501403158577

`∩[A071590(n+1), A071621(n+1)]`
-/

namespace A099180.P18211925501403158577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099180.P18211925501403158577

/-! ## A099180.P17370637050197135658

`∩[A071590(n+1), A078138(n+1)]`
-/

namespace A099180.P17370637050197135658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099180.P17370637050197135658

/-! ## A099180.P10738210852367875192

`∩[A083249(n+1), A071590(n+1)]`
-/

namespace A099180.P10738210852367875192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099180.P10738210852367875192

/-!
# A099181: Primes p which are greater than twice p reversed.

The programs for A099181, there is no canonical definition to state claims against.
-/

/-! ## A099181.P7775532627635760537

`p?[lt[2*A004086(n), n]]`
-/

namespace A099181.P7775532627635760537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004086 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A099181.P7775532627635760537

/-! ## A099181.P9187064741306649785

`p?[lt[A004525(n), A056965(n)]]`
-/

namespace A099181.P9187064741306649785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A099181.P9187064741306649785

/-! ## A099181.P8385971807349678602

`p?[lt[A004526(n), A056965(n)]]`
-/

namespace A099181.P8385971807349678602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A099181.P8385971807349678602

/-! ## A099181.P6363406554389525504

`p?[lt[A056964(n), A026430(n)]]`
-/

namespace A099181.P6363406554389525504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A099181.P6363406554389525504

/-! ## A099181.P2684496967732770776

`p?[lt[A115384(n), A056965(n)]]`
-/

namespace A099181.P2684496967732770776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A099181.P2684496967732770776

/-! ## A099181.P1341665096712406635

`p?[lt[A123108(n), A056965(n)]]`
-/

namespace A099181.P1341665096712406635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A099181.P1341665096712406635

/-! ## A099181.P3433050289233722242

`p?[lt[A220096(n+1), A056965(n)]]`
-/

namespace A099181.P3433050289233722242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220096 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A099181.P3433050289233722242

/-!
# A099183: Primes of the form p^2 + p - q, where p and q are consecutive primes.

The programs for A099183, there is no canonical definition to state claims against.
-/

/-! ## A099183.P16549892446512067856

`p?[A062235(n+1)+A000040(n+1)]`
-/

namespace A099183.P16549892446512067856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062235 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099183.P16549892446512067856

/-! ## A099183.P7201609770262328474

`p?[A001248(n+1)-A001223(n+1)]`
-/

namespace A099183.P7201609770262328474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099183.P7201609770262328474

/-! ## A099183.P6143897501681685634

`p?[A036690(n+1)-A000040(n+2)]`
-/

namespace A099183.P6143897501681685634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) - A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099183.P6143897501681685634

/-! ## A099183.P11463726763604736192

`p?[A001248(n+1)-A054541(n+2)]`
-/

namespace A099183.P11463726763604736192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A054541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099183.P11463726763604736192

/-! ## A099183.P9005850091224833991

`p?[A000040(n+1)²-A001223(n+1)]`
-/

namespace A099183.P9005850091224833991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099183.P9005850091224833991

/-!
# A099184: Heavy primes: primes p such that p-1 has more than 2 divisors with multiplicity.

The programs for A099184, the canonical program `A099184.P11748216234505321066` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099184 has offset 2).

The definition of A099184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099184.P11748216234505321066

`A059456(n+3)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A099184

/-- `A059456(n+3)` -/
def P11748216234505321066.Spec : Prop :=
  ∀ n, P11748216234505321066.a n = A099184 (n + 2)

theorem P11748216234505321066.correct : P11748216234505321066.Spec := by
  intro n
  simp only [A099184, Nat.add_sub_cancel]

end A099184

/-! ## A099184.P7436611102349622621

`A176888(n+3)+1`
-/

namespace A099184.P7436611102349622621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176888 (n + 3) + 1

end

end A099184.P7436611102349622621

namespace A099184

/-- `A176888(n+3)+1` -/
def P7436611102349622621.Spec : Prop :=
  ∀ n, P7436611102349622621.a n = A099184 (n + 2)

theorem P7436611102349622621.correct : P7436611102349622621.Spec := by
  intro n
  simp only [A099184, Nat.add_sub_cancel, A099184.P7436611102349622621.a, A099184.P11748216234505321066.a, A059456, A059456.P4556274000742435863.f1, A059456.P4556274000742435863.f2, A059456.P4556274000742435863.a, A176888, A176888.P9111566822716569314.a, A082539, A082539.P16555288702611882584.f1, A082539.P16555288702611882584.f2, A082539.P16555288702611882584.a, A176902, A176902.P2034357475414807943.f1, A176902.P2034357475414807943.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A084196, A084196.P3907743680021484046.a, A323162, A323162.P4199434762193306250.a, A008864, A008864.P9177617808325052279.a, A066247, A066247.P15227533178821378383.f1, A066247.P15227533178821378383.a, A072627, A072627.P14863741919564884877.f1, A072627.P14863741919564884877.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A099184

/-! ## A099184.P9361744671444930356

`p?[A339912(n+1)]`
-/

namespace A099184.P9361744671444930356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099184.P9361744671444930356

namespace A099184

/-- `p?[A339912(n+1)]` -/
def P9361744671444930356.Spec : Prop :=
  ∀ n, P9361744671444930356.a n = A099184 (n + 2)

end A099184

/-! ## A099184.P15472539613986581365

`filter[A339912(n+1), A010051(#)]`
-/

namespace A099184.P15472539613986581365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A099184.P15472539613986581365

namespace A099184

/-- `filter[A339912(n+1), A010051(#)]` -/
def P15472539613986581365.Spec : Prop :=
  ∀ n, P15472539613986581365.a n = A099184 (n + 2)

end A099184

/-! ## A099184.P17081229085900614365

`filter[A339912(n+1), A323152(#)]`
-/

namespace A099184.P17081229085900614365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A099184.P17081229085900614365

namespace A099184

/-- `filter[A339912(n+1), A323152(#)]` -/
def P17081229085900614365.Spec : Prop :=
  ∀ n, P17081229085900614365.a n = A099184 (n + 2)

end A099184

/-! ## A099184.P11262736168584789986

`filter[A339912(n+1), A323153(#)]`
-/

namespace A099184.P11262736168584789986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A099184.P11262736168584789986

namespace A099184

/-- `filter[A339912(n+1), A323153(#)]` -/
def P11262736168584789986.Spec : Prop :=
  ∀ n, P11262736168584789986.a n = A099184 (n + 2)

end A099184

/-! ## A099184.P16295030971125495678

`filter[A339912(n+1), A327861(#)]`
-/

namespace A099184.P16295030971125495678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A099184.P16295030971125495678

namespace A099184

/-- `filter[A339912(n+1), A327861(#)]` -/
def P16295030971125495678.Spec : Prop :=
  ∀ n, P16295030971125495678.a n = A099184 (n + 2)

end A099184

/-! ## A099184.P6105394660584889873

`p?[2*A018252(n+2)+1]`
-/

namespace A099184.P6105394660584889873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018252 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099184.P6105394660584889873

namespace A099184

/-- `p?[2*A018252(n+2)+1]` -/
def P6105394660584889873.Spec : Prop :=
  ∀ n, P6105394660584889873.a n = A099184 (n + 2)

end A099184

/-! ## A099184.P4647814422387913271

`p?[A176393(n+3)]`
-/

namespace A099184.P4647814422387913271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176393 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099184.P4647814422387913271

namespace A099184

/-- `p?[A176393(n+3)]` -/
def P4647814422387913271.Spec : Prop :=
  ∀ n, P4647814422387913271.a n = A099184 (n + 2)

end A099184

/-! ## A099184.P3245618694935696570

`filter[A176393(n+3), A010051(#)]`
-/

namespace A099184.P3245618694935696570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176393 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A099184.P3245618694935696570

namespace A099184

/-- `filter[A176393(n+3), A010051(#)]` -/
def P3245618694935696570.Spec : Prop :=
  ∀ n, P3245618694935696570.a n = A099184 (n + 2)

end A099184

/-! ## A099184.P10043303704072382415

`filter[A176393(n+3), A323152(#)]`
-/

namespace A099184.P10043303704072382415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176393 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A099184.P10043303704072382415

namespace A099184

/-- `filter[A176393(n+3), A323152(#)]` -/
def P10043303704072382415.Spec : Prop :=
  ∀ n, P10043303704072382415.a n = A099184 (n + 2)

end A099184

/-! ## A099184.P10872522373216708876

`filter[A176393(n+3), A323153(#)]`
-/

namespace A099184.P10872522373216708876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176393 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A099184.P10872522373216708876

namespace A099184

/-- `filter[A176393(n+3), A323153(#)]` -/
def P10872522373216708876.Spec : Prop :=
  ∀ n, P10872522373216708876.a n = A099184 (n + 2)

end A099184

/-! ## A099184.P14837821263086021812

`filter[A176393(n+3), A340371(#)]`
-/

namespace A099184.P14837821263086021812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176393 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A099184.P14837821263086021812

namespace A099184

/-- `filter[A176393(n+3), A340371(#)]` -/
def P14837821263086021812.Spec : Prop :=
  ∀ n, P14837821263086021812.a n = A099184 (n + 2)

end A099184

/-! ## A099184.P7735295859243073206

`filter[A176393(n+3), A353670(#)]`
-/

namespace A099184.P7735295859243073206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176393 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A099184.P7735295859243073206

namespace A099184

/-- `filter[A176393(n+3), A353670(#)]` -/
def P7735295859243073206.Spec : Prop :=
  ∀ n, P7735295859243073206.a n = A099184 (n + 2)

end A099184

/-! ## A099184.P2560033006408393248

`filter[A176393(n+3), A365716(#)]`
-/

namespace A099184.P2560033006408393248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176393 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A099184.P2560033006408393248

namespace A099184

/-- `filter[A176393(n+3), A365716(#)]` -/
def P2560033006408393248.Spec : Prop :=
  ∀ n, P2560033006408393248.a n = A099184 (n + 2)

end A099184

/-! ## A099184.P13559815873944483483

`filter[A176393(n+3), A379969(#)]`
-/

namespace A099184.P13559815873944483483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176393 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A099184.P13559815873944483483

namespace A099184

/-- `filter[A176393(n+3), A379969(#)]` -/
def P13559815873944483483.Spec : Prop :=
  ∀ n, P13559815873944483483.a n = A099184 (n + 2)

end A099184

/-! ## A099184.P16795321757492157949

`filter[A176393(n+3), A380467(#)]`
-/

namespace A099184.P16795321757492157949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176393 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A099184.P16795321757492157949

namespace A099184

/-- `filter[A176393(n+3), A380467(#)]` -/
def P16795321757492157949.Spec : Prop :=
  ∀ n, P16795321757492157949.a n = A099184 (n + 2)

end A099184

/-! ## A099184.P3767999014213022254

`p?[Δ[A073837(n+3)]]`
-/

namespace A099184.P3767999014213022254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073837 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099184.P3767999014213022254

namespace A099184

/-- `p?[Δ[A073837(n+3)]]` -/
def P3767999014213022254.Spec : Prop :=
  ∀ n, P3767999014213022254.a n = A099184 (n + 2)

end A099184

/-! ## A099184.P4773045325189445913

`p?[char[A006530(n+1)]+2*n+1]`
-/

namespace A099184.P4773045325189445913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A099184.P4773045325189445913

namespace A099184

/-- `p?[char[A006530(n+1)]+2*n+1]` -/
def P4773045325189445913.Spec : Prop :=
  ∀ n, (P4773045325189445913.a n : ℤ) = A099184 (n + 2)

end A099184

/-! ## A099184.P11836212427743542156

`p?[char[A020639(n+1)]+2*n+1]`
-/

namespace A099184.P11836212427743542156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A099184.P11836212427743542156

namespace A099184

/-- `p?[char[A020639(n+1)]+2*n+1]` -/
def P11836212427743542156.Spec : Prop :=
  ∀ n, (P11836212427743542156.a n : ℤ) = A099184 (n + 2)

end A099184

/-! ## A099184.P5706244784285082919

`p?[(2*n+1)%∏{d}[n, #]]`
-/

namespace A099184.P5706244784285082919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A099184.P5706244784285082919

namespace A099184

/-- `p?[(2*n+1)%∏{d}[n, #]]` -/
def P5706244784285082919.Spec : Prop :=
  ∀ n, (P5706244784285082919.a n : ℤ) = A099184 (n + 2)

end A099184

/-!
# A099185: 

The programs for A099185, there is no canonical definition to state claims against.
-/

/-! ## A099185.P9480224175261591582

`(a(n-1)+2*a(n-1)^3)/3` with `a(0)=2`
-/

namespace A099185.P9480224175261591582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) + 2 * a (n - 1) ^ 3) / 3

end

end A099185.P9480224175261591582

/-!
# A099187: 

The programs for A099187, there is no canonical definition to state claims against.
-/

/-! ## A099187.P16462548881857112640

`C(lcm(6, a(n-1)), 3)` with `a(0)=1`
-/

namespace A099187.P16462548881857112640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (Nat.lcm 6 (a (n - 1))) 3

end

end A099187.P16462548881857112640

/-!
# A099188: a(n) = 2*ceiling(n/sqrt(2)).

The programs for A099188, the canonical program `A099188.P7971677640823074041` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099188 has offset 0).

The definition of A099188 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*ceil(n/sqrt(2))` (program `A099188.P7971677640823074041`, by `A099188.P7971677640823074041.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099188.P7971677640823074041

`2*ceil(n/sqrt(2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099188

/-- `2*ceil(n/sqrt(2))` -/
def P7971677640823074041.Spec : Prop :=
  ∀ n, P7971677640823074041.a n = A099188 n

theorem P7971677640823074041.correct : P7971677640823074041.Spec := by
  intro n
  simp only [A099188]

end A099188

/-! ## A099188.P4940567711892272245

`and(ceil(n*sqrt(2))+1, -2)`
-/

namespace A099188.P4940567711892272245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉ + 1) (-2)

end

end A099188.P4940567711892272245

namespace A099188

/-- `and(ceil(n*sqrt(2))+1, -2)` -/
def P4940567711892272245.Spec : Prop :=
  ∀ n, P4940567711892272245.a n = A099188 n

end A099188

/-! ## A099188.P487388652072260811

`A005843(ceil(n/sqrt(2)))`
-/

namespace A099188.P487388652072260811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ⌈(n : ℝ) / Real.sqrt (2 : ℝ)⌉.toNat

end

end A099188.P487388652072260811

namespace A099188

/-- `A005843(ceil(n/sqrt(2)))` -/
def P487388652072260811.Spec : Prop :=
  ∀ n, P487388652072260811.a n = A099188 n

end A099188

/-! ## A099188.P14297955548719689169

`∑[2*char[A001951(n)+1]]`
-/

namespace A099188.P14297955548719689169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099188.P14297955548719689169

namespace A099188

/-- `∑[2*char[A001951(n)+1]]` -/
def P14297955548719689169.Spec : Prop :=
  ∀ n, (P14297955548719689169.a n : ℤ) = A099188 n

end A099188

/-! ## A099188.P17254383195366908745

`A049474(n)+ceil(n/sqrt(2))`
-/

namespace A099188.P17254383195366908745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 n + ⌈(n : ℝ) / Real.sqrt (2 : ℝ)⌉

end

end A099188.P17254383195366908745

namespace A099188

/-- `A049474(n)+ceil(n/sqrt(2))` -/
def P17254383195366908745.Spec : Prop :=
  ∀ n, P17254383195366908745.a n = A099188 n

theorem P17254383195366908745.correct : P17254383195366908745.Spec := by
  intro n
  simp only [A099188, Nat.add_sub_cancel, A099188.P17254383195366908745.a, A099188.P7971677640823074041.a, A049474, A049474.P15997388566845969696.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A099188

/-! ## A099188.P3965078873284718417

`2*(A285074(n+1)-n)-2`
-/

namespace A099188.P3965078873284718417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A285074 (n + 1) - (n : ℤ)) - 2

end

end A099188.P3965078873284718417

namespace A099188

/-- `2*(A285074(n+1)-n)-2` -/
def P3965078873284718417.Spec : Prop :=
  ∀ n, P3965078873284718417.a n = A099188 n

end A099188

/-! ## A099188.P17888944254971070771

`(2*(A049472(n)+1))%(n+1)²`
-/

namespace A099188.P17888944254971070771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A049472 n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A099188.P17888944254971070771

namespace A099188

/-- `(2*(A049472(n)+1))%(n+1)²` -/
def P17888944254971070771.Spec : Prop :=
  ∀ n, P17888944254971070771.a n = A099188 n

end A099188

/-! ## A099188.P1317323461352407922

`A005843(n)-A005843(n-A049474(n))`
-/

namespace A099188.P1317323461352407922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - A005843 ((n : ℤ) - A049474 n).toNat

end

end A099188.P1317323461352407922

namespace A099188

/-- `A005843(n)-A005843(n-A049474(n))` -/
def P1317323461352407922.Spec : Prop :=
  ∀ n, P1317323461352407922.a n = A099188 n

end A099188

/-! ## A099188.P2631193941674655313

`A289036(n+2)-gcd(2, A289036(n+2))`
-/

namespace A099188.P2631193941674655313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289036 (n + 2) - (Int.gcd 2 (A289036 (n + 2)) : ℤ)

end

end A099188.P2631193941674655313

namespace A099188

/-- `A289036(n+2)-gcd(2, A289036(n+2))` -/
def P2631193941674655313.Spec : Prop :=
  ∀ n, P2631193941674655313.a n = A099188 n

end A099188

/-! ## A099188.P11658437164381800150

`4*n-A005843(A187328(n))`
-/

namespace A099188.P11658437164381800150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A005843 (A187328 n).toNat

end

end A099188.P11658437164381800150

namespace A099188

/-- `4*n-A005843(A187328(n))` -/
def P11658437164381800150.Spec : Prop :=
  ∀ n, P11658437164381800150.a n = A099188 n

end A099188

/-! ## A099188.P5404699053418011088

`A285075(A285074(n+1))-(A285077(n+1)+n)`
-/

namespace A099188.P5404699053418011088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285075 (A285074 (n + 1)).toNat - (A285077 (n + 1) + (n : ℤ))

end

end A099188.P5404699053418011088

namespace A099188

/-- `A285075(A285074(n+1))-(A285077(n+1)+n)` -/
def P5404699053418011088.Spec : Prop :=
  ∀ n, P5404699053418011088.a n = A099188 n

end A099188

/-! ## A099188.P1287855048573977358

`A004273(2*n)-A004273(A187328(n))`
-/

namespace A099188.P1287855048573977358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * n) - A004273 (A187328 n).toNat

end

end A099188.P1287855048573977358

namespace A099188

/-- `A004273(2*n)-A004273(A187328(n))` -/
def P1287855048573977358.Spec : Prop :=
  ∀ n, P1287855048573977358.a n = A099188 n

end A099188

/-! ## A099188.P15863978957195314394

`A052928(A188040(2*n+1)-n)`
-/

namespace A099188.P15863978957195314394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A188040 (2 * n + 1) - (n : ℤ)).toNat

end

end A099188.P15863978957195314394

namespace A099188

/-- `A052928(A188040(2*n+1)-n)` -/
def P15863978957195314394.Spec : Prop :=
  ∀ n, P15863978957195314394.a n = A099188 n

end A099188

/-! ## A099188.P15033763881152957415

`A190762(a(n-1)+n)+a(n-1)` with `a(0)=0`
-/

namespace A099188.P15033763881152957415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A190762 (a (n - 1) + (n : ℤ)).toNat + a (n - 1)

end

end A099188.P15033763881152957415

namespace A099188

/-- `A190762(a(n-1)+n)+a(n-1)` -/
def P15033763881152957415.Spec : Prop :=
  ∀ n, P15033763881152957415.a n = A099188 n

end A099188

/-! ## A099188.P139939240218258419

`A190766(a(n-1)+n)+a(n-1)` with `a(0)=0`
-/

namespace A099188.P139939240218258419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A190766 (a (n - 1) + (n : ℤ)).toNat + a (n - 1)

end

end A099188.P139939240218258419

namespace A099188

/-- `A190766(a(n-1)+n)+a(n-1)` -/
def P139939240218258419.Spec : Prop :=
  ∀ n, P139939240218258419.a n = A099188 n

end A099188

/-! ## A099188.P10895123792470438974

`A004526(4*A049474(n))`
-/

namespace A099188.P10895123792470438974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (4 * A049474 n).toNat

end

end A099188.P10895123792470438974

namespace A099188

/-- `A004526(4*A049474(n))` -/
def P10895123792470438974.Spec : Prop :=
  ∀ n, P10895123792470438974.a n = A099188 n

end A099188

/-! ## A099188.P2949912865404851676

`A002264(6*A049474(n))`
-/

namespace A099188.P2949912865404851676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (6 * A049474 n).toNat

end

end A099188.P2949912865404851676

namespace A099188

/-- `A002264(6*A049474(n))` -/
def P2949912865404851676.Spec : Prop :=
  ∀ n, P2949912865404851676.a n = A099188 n

end A099188

/-! ## A099188.P17172738608923917198

`A002265(8*A049474(n))`
-/

namespace A099188.P17172738608923917198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (8 * A049474 n).toNat

end

end A099188.P17172738608923917198

namespace A099188

/-- `A002265(8*A049474(n))` -/
def P17172738608923917198.Spec : Prop :=
  ∀ n, P17172738608923917198.a n = A099188 n

end A099188

/-!
# A099189: Smallest prime which is n times its reversal.

The programs for A099189, there is no canonical definition to state claims against.
-/

/-! ## A099189.P12085182402759485069

`p?[A084749(n+1)-A020639(A002328(n+1))]`
-/

namespace A099189.P12085182402759485069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084749 (n + 1) - A020639 (A002328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099189.P12085182402759485069

/-!
# A099190: Numbers n such that 8*10^n-7 is prime.

The programs for A099190, there is no canonical definition to state claims against.
-/

/-! ## A099190.P11358677275814772461

`A101155(n+1)+1`
-/

namespace A099190.P11358677275814772461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101155 (n + 1) + 1

end

end A099190.P11358677275814772461

/-!
# A099193: a(n) = n*(4*n^6 + 70*n^4 + 196*n^2 + 45)/315.

The programs for A099193, the canonical program `A099193.P16449115539878145445` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099193 has offset 0).

The definition of A099193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099193.P16449115539878145445

`14*a(n-1)/(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099193

/-- `14*a(n-1)/(n-1)+a(n-2)` -/
def P16449115539878145445.Spec : Prop :=
  ∀ n, P16449115539878145445.a n = (A099193 n : ℚ)

end A099193

/-! ## A099193.P17128588061143317514

`ogf((x+6x^2+15x^3+20x^4+15x^5+6x^6+x^7)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A099193.P17128588061143317514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 6, 15, 20, 15, 6, 1] [1, -8, 28, -56, 70, -56, 28, -8, 1] n

end

end A099193.P17128588061143317514

namespace A099193

/-- `ogf((x+6x^2+15x^3+20x^4+15x^5+6x^6+x^7)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P17128588061143317514.Spec : Prop :=
  ∀ n, P17128588061143317514.a n = A099193 n

end A099193

/-! ## A099193.P11700783405440946474

`n*(4*n^6+70*n^4+196*n²+45)/315`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099193.P11700783405440946474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (4 * n ^ 6 + 70 * n ^ 4 + 196 * n ^ 2 + 45) : ℚ) / 315

end

end A099193.P11700783405440946474

namespace A099193

/-- `n*(4*n^6+70*n^4+196*n²+45)/315` -/
def P11700783405440946474.Spec : Prop :=
  ∀ n, P11700783405440946474.a n = (A099193 n : ℚ)

end A099193

/-! ## A099193.P3792296722705403703

`A001849(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A099193.P3792296722705403703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001849 (n - 1) - a (n - 1)

end

end A099193.P3792296722705403703

namespace A099193

/-- `A001849(n-1)-a(n-1)` -/
def P3792296722705403703.Spec : Prop :=
  ∀ n, P3792296722705403703.a n = A099193 n

end A099193

/-! ## A099193.P9711787173261650573

`∑[A001848(n)]-A001848(n)`
-/

namespace A099193.P9711787173261650573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001848 n

end

end A099193.P9711787173261650573

namespace A099193

/-- `∑[A001848(n)]-A001848(n)` -/
def P9711787173261650573.Spec : Prop :=
  ∀ n, P9711787173261650573.a n = A099193 n

end A099193

/-! ## A099193.P10408351343052145970

`∑[A035600(n)]-A069039(n)`
-/

namespace A099193.P10408351343052145970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A069039 n

end

end A099193.P10408351343052145970

namespace A099193

/-- `∑[A035600(n)]-A069039(n)` -/
def P10408351343052145970.Spec : Prop :=
  ∀ n, P10408351343052145970.a n = A099193 n

end A099193

/-! ## A099193.P1464236408089832874

`∑[A035601(n)]-A099195(n)`
-/

namespace A099193.P1464236408089832874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099195 n

end

end A099193.P1464236408089832874

namespace A099193

/-- `∑[A035601(n)]-A099195(n)` -/
def P1464236408089832874.Spec : Prop :=
  ∀ n, P1464236408089832874.a n = A099193 n

end A099193

/-! ## A099193.P3479333380912752008

`A001849(n)%∑[A001848(n)]`
-/

namespace A099193.P3479333380912752008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001849 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099193.P3479333380912752008

namespace A099193

/-- `A001849(n)%∑[A001848(n)]` -/
def P3479333380912752008.Spec : Prop :=
  ∀ n, P3479333380912752008.a n = A099193 n

end A099193

/-! ## A099193.P17114157867490245857

`A001849(n)-∑[∑[A008414(n)]]`
-/

namespace A099193.P17114157867490245857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008414 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001849 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099193.P17114157867490245857

namespace A099193

/-- `A001849(n)-∑[∑[A008414(n)]]` -/
def P17114157867490245857.Spec : Prop :=
  ∀ n, P17114157867490245857.a n = A099193 n

end A099193

/-! ## A099193.P17960148116661061839

`∑[A008415(n)-∑[A008414(n)]]`
-/

namespace A099193.P17960148116661061839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008414 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008415 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099193.P17960148116661061839

namespace A099193

/-- `∑[A008415(n)-∑[A008414(n)]]` -/
def P17960148116661061839.Spec : Prop :=
  ∀ n, P17960148116661061839.a n = A099193 n

end A099193

/-!
# A099194: Least solution to the Pellian equation x^2 - k*y^2 = 1 (A002349) such that 2^2^n < y <= 2^2^(n+1).

The programs for A099194, there is no canonical definition to state claims against.
-/

/-! ## A099194.P3353511335115544135

`∩[A033316(n+1), A183987(n+1)]`
-/

namespace A099194.P3353511335115544135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099194.P3353511335115544135

/-! ## A099194.P11398677156654202044

`∩[A191932(n+1), A033316(n+2)]`
-/

namespace A099194.P11398677156654202044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033316 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099194.P11398677156654202044

/-! ## A099194.P8835158697884537962

`A143448(2*n)+A010054(A183179(n+5))`
-/

namespace A099194.P8835158697884537962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143448 (2 * n) + A010054 (A183179 (n + 5)).toNat

end

end A099194.P8835158697884537962

/-!
# A099195: a(n) = n^2*(n^6 + 28*n^4 + 154*n^2 + 132)/315.

The programs for A099195, the canonical program `A099195.P14002362411851695594` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099195 has offset 0).

The definition of A099195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099195.P14002362411851695594

`16*a(n-1)/(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099195

/-- `16*a(n-1)/(n-1)+a(n-2)` -/
def P14002362411851695594.Spec : Prop :=
  ∀ n, P14002362411851695594.a n = (A099195 n : ℚ)

end A099195

/-! ## A099195.P15537828387083625189

`n²*(n^6+28*n^4+154*n²+132)/315`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099195.P15537828387083625189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 * (n ^ 6 + 28 * n ^ 4 + 154 * n ^ 2 + 132) : ℚ) / 315

end

end A099195.P15537828387083625189

namespace A099195

/-- `n²*(n^6+28*n^4+154*n²+132)/315` -/
def P15537828387083625189.Spec : Prop :=
  ∀ n, P15537828387083625189.a n = (A099195 n : ℚ)

end A099195

/-! ## A099195.P13770579599229562970

`A001849(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A099195.P13770579599229562970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001849 (n - 1) + a (n - 1)

end

end A099195.P13770579599229562970

namespace A099195

/-- `A001849(n-1)+a(n-1)` -/
def P13770579599229562970.Spec : Prop :=
  ∀ n, P13770579599229562970.a n = A099195 n

end A099195

/-! ## A099195.P14985499004777577085

`A008417(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A099195.P14985499004777577085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008417 (n - 1) - a (n - 1)

end

end A099195.P14985499004777577085

namespace A099195

/-- `A008417(n-1)-a(n-1)` -/
def P14985499004777577085.Spec : Prop :=
  ∀ n, P14985499004777577085.a n = A099195 n

end A099195

/-! ## A099195.P10189955747525031468

`∑[A001849(n)]-A001849(n)`
-/

namespace A099195.P10189955747525031468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001849 n

end

end A099195.P10189955747525031468

namespace A099195

/-- `∑[A001849(n)]-A001849(n)` -/
def P10189955747525031468.Spec : Prop :=
  ∀ n, P10189955747525031468.a n = A099195 n

end A099195

/-! ## A099195.P6543317113596162019

`∑[A035601(n)]-A099193(n)`
-/

namespace A099195.P6543317113596162019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099193 n

end

end A099195.P6543317113596162019

namespace A099195

/-- `∑[A035601(n)]-A099193(n)` -/
def P6543317113596162019.Spec : Prop :=
  ∀ n, P6543317113596162019.a n = A099195 n

end A099195

/-! ## A099195.P12736705319676351501

`∑[A008416(n)%A001849(n)]`
-/

namespace A099195.P12736705319676351501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008416 n) (A001849 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099195.P12736705319676351501

namespace A099195

/-- `∑[A008416(n)%A001849(n)]` -/
def P12736705319676351501.Spec : Prop :=
  ∀ n, P12736705319676351501.a n = A099195 n

end A099195

/-! ## A099195.P7374967750756162390

`A008417(n)%∑[A001849(n)]`
-/

namespace A099195.P7374967750756162390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008417 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099195.P7374967750756162390

namespace A099195

/-- `A008417(n)%∑[A001849(n)]` -/
def P7374967750756162390.Spec : Prop :=
  ∀ n, P7374967750756162390.a n = A099195 n

end A099195

/-! ## A099195.P3388643007255987670

`∑[∑[A008415(n)]-A008415(n)]`
-/

namespace A099195.P3388643007255987670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008415 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099195.P3388643007255987670

namespace A099195

/-- `∑[∑[A008415(n)]-A008415(n)]` -/
def P3388643007255987670.Spec : Prop :=
  ∀ n, P3388643007255987670.a n = A099195 n

end A099195

/-!
# A099196: a(n) = n*(2*n^8 + 84*n^6 + 798*n^4 + 1636*n^2 + 315)/2835.

The programs for A099196, the canonical program `A099196.P16367201159128015509` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099196 has offset 0).

The definition of A099196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099196.P16367201159128015509

`18*a(n-1)/(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099196

/-- `18*a(n-1)/(n-1)+a(n-2)` -/
def P16367201159128015509.Spec : Prop :=
  ∀ n, P16367201159128015509.a n = (A099196 n : ℚ)

end A099196

/-! ## A099196.P4442422487030890859

`A035603(n)/2`
-/

namespace A099196.P4442422487030890859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035603 n : ℚ) / 2

end

end A099196.P4442422487030890859

namespace A099196

/-- `A035603(n)/2` -/
def P4442422487030890859.Spec : Prop :=
  ∀ n, P4442422487030890859.a n = (A099196 n : ℚ)

end A099196

/-! ## A099196.P17652946447253544319

`A008417(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A099196.P17652946447253544319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008417 (n - 1) + a (n - 1)

end

end A099196.P17652946447253544319

namespace A099196

/-- `A008417(n-1)+a(n-1)` -/
def P17652946447253544319.Spec : Prop :=
  ∀ n, P17652946447253544319.a n = A099196 n

end A099196

/-! ## A099196.P9638852320061137925

`∑[A008417(n)-A008416(n)]`
-/

namespace A099196.P9638852320061137925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008417 n - A008416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099196.P9638852320061137925

namespace A099196

/-- `∑[A008417(n)-A008416(n)]` -/
def P9638852320061137925.Spec : Prop :=
  ∀ n, P9638852320061137925.a n = A099196 n

end A099196

/-! ## A099196.P1679748188483397

`A008419(n)-∑[A008417(n)]`
-/

namespace A099196.P1679748188483397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008419 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099196.P1679748188483397

namespace A099196

/-- `A008419(n)-∑[A008417(n)]` -/
def P1679748188483397.Spec : Prop :=
  ∀ n, P1679748188483397.a n = A099196 n

end A099196

/-! ## A099196.P9828013445975561443

`∑[A035602(n)]-A099195(n)`
-/

namespace A099196.P9828013445975561443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099195 n

end

end A099196.P9828013445975561443

namespace A099196

/-- `∑[A035602(n)]-A099195(n)` -/
def P9828013445975561443.Spec : Prop :=
  ∀ n, P9828013445975561443.a n = A099196 n

end A099196

/-! ## A099196.P1315815646109804124

`A008419(n)-∑[∑[A008416(n)]]`
-/

namespace A099196.P1315815646109804124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008419 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099196.P1315815646109804124

namespace A099196

/-- `A008419(n)-∑[∑[A008416(n)]]` -/
def P1315815646109804124.Spec : Prop :=
  ∀ n, P1315815646109804124.a n = A099196 n

end A099196

/-!
# A099197: a(n) = n^2*(2*n^8 + 120*n^6 + 1806*n^4 + 7180*n^2 + 5067)/14175.

The programs for A099197, the canonical program `A099197.P5182563127150070825` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099197 has offset 0).

The definition of A099197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099197.P14405750000925090561

`20*a(n-1)/(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A099197.P14405750000925090561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  20 * (a (n - 1) / ((n : ℤ) - 1 : ℚ)) + a (n - 2)

end

end A099197.P14405750000925090561

namespace A099197

/-- `20*a(n-1)/(n-1)+a(n-2)` -/
def P14405750000925090561.Spec : Prop :=
  ∀ n, P14405750000925090561.a n = (A099197 n : ℚ)

end A099197

/-! ## A099197.P13227860337232836887

`A035604(n)/2`
-/

namespace A099197.P13227860337232836887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035604 n : ℚ) / 2

end

end A099197.P13227860337232836887

namespace A099197

/-- `A035604(n)/2` -/
def P13227860337232836887.Spec : Prop :=
  ∀ n, P13227860337232836887.a n = (A099197 n : ℚ)

end A099197

/-! ## A099197.P5182563127150070825

`∑[A008419(n)]-A008419(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A099197

/-- `∑[A008419(n)]-A008419(n)` -/
def P5182563127150070825.Spec : Prop :=
  ∀ n, P5182563127150070825.a n = A099197 n

theorem P5182563127150070825.correct : P5182563127150070825.Spec := by
  intro n
  simp only [A099197]

end A099197

/-! ## A099197.P7034578262905568591

`A008421(n)%∑[A008419(n)]`
-/

namespace A099197.P7034578262905568591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008419 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008421 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099197.P7034578262905568591

namespace A099197

/-- `A008421(n)%∑[A008419(n)]` -/
def P7034578262905568591.Spec : Prop :=
  ∀ n, P7034578262905568591.a n = A099197 n

end A099197

/-! ## A099197.P16194577019106944551

`∑[∑[A008418(n)]-A008418(n)]`
-/

namespace A099197.P16194577019106944551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008418 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099197.P16194577019106944551

namespace A099197

/-- `∑[∑[A008418(n)]-A008418(n)]` -/
def P16194577019106944551.Spec : Prop :=
  ∀ n, P16194577019106944551.a n = A099197 n

end A099197

/-! ## A099197.P1509761819999133560

`∑[2*A099196(n)]-A099196(n)`
-/

namespace A099197.P1509761819999133560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099196 n

end

end A099197.P1509761819999133560

namespace A099197

/-- `∑[2*A099196(n)]-A099196(n)` -/
def P1509761819999133560.Spec : Prop :=
  ∀ n, P1509761819999133560.a n = A099197 n

end A099197

/-! ## A099197.P467831541273221080

`∑[A035603(n)]-A035603(n)/2`
-/

namespace A099197.P467831541273221080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035603 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A035603 n : ℚ) / 2

end

end A099197.P467831541273221080

namespace A099197

/-- `∑[A035603(n)]-A035603(n)/2` -/
def P467831541273221080.Spec : Prop :=
  ∀ n, P467831541273221080.a n = (A099197 n : ℚ)

end A099197

/-!
# A099198: A bisection of A002807.

The programs for A099198, there is no canonical definition to state claims against.
-/

/-! ## A099198.P4455583755732384420

`A002807(2*(n+1))`
-/

namespace A099198.P4455583755732384420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002807 (2 * (n + 1))

end

end A099198.P4455583755732384420

/-! ## A099198.P5619678605046344968

`∑[abs(Δ[A002807(2*n)])]`
-/

namespace A099198.P5619678605046344968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002807 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099198.P5619678605046344968

/-! ## A099198.P3182606666496316383

`A119913(2*(n+1))/2`
-/

namespace A099198.P3182606666496316383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119913 (2 * (n + 1)) : ℚ) / 2

end

end A099198.P3182606666496316383

/-! ## A099198.P9646511878214307342

`record[A002807(A029578(n))]`
-/

namespace A099198.P9646511878214307342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002807 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099198.P9646511878214307342

/-! ## A099198.P280991781447389604

`record[A002807(A257687(2*n))]`
-/

namespace A099198.P280991781447389604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002807 (A257687 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099198.P280991781447389604

/-!
# A099199: Number of partitions of n into odd triangular numbers.

The programs for A099199, there is no canonical definition to state claims against.
-/

/-! ## A099199.P8057380546533959507

`∑[A112207(2*(n+1))]+A151815(n)!`
-/

namespace A099199.P8057380546533959507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112207 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial (A151815 n).toNat : ℤ)

end

end A099199.P8057380546533959507

/-! ## A099199.P6832152795113781545

`A000034(A230805(n+1))+∑[A112207(2*(n+1))]`
-/

namespace A099199.P6832152795113781545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112207 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A230805 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099199.P6832152795113781545

/-! ## A099199.P3607548330830652095

`A057427(A198155(n+1))+∑[A112207(2*(n+1))]`
-/

namespace A099199.P3607548330830652095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112207 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A198155 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099199.P3607548330830652095

/-! ## A099199.P17558042685457821170

`∑[A112207(2*(n+1))]+A001222(A166985(2*n+1))`
-/

namespace A099199.P17558042685457821170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112207 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A001222 (A166985 (2 * n + 1)).toNat

end

end A099199.P17558042685457821170

