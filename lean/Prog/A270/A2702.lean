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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A270200: a(0) = 0; for n >= 1, a(n) = A054429(A005187(1+A054429(n-1))).

The programs for A270200, the canonical program `A270200.P3592585650237564585` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270200 has offset 0).

The definition of A270200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270200.P3592585650237564585

`∪[A001015(n), A233273(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A270200

/-- `∪[A001015(n), A233273(n)]` -/
def P3592585650237564585.Spec : Prop :=
  ∀ n, (P3592585650237564585.a n : ℤ) = A270200 n

theorem P3592585650237564585.correct : P3592585650237564585.Spec := by
  intro n
  simp only [A270200]

end A270200

/-! ## A270200.P2794124638135401548

`∪[A001016(n), A233273(n)]`
-/

namespace A270200.P2794124638135401548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270200.P2794124638135401548

namespace A270200

/-- `∪[A001016(n), A233273(n)]` -/
def P2794124638135401548.Spec : Prop :=
  ∀ n, (P2794124638135401548.a n : ℤ) = A270200 n

end A270200

/-! ## A270200.P14181896269745738072

`∪[A050754(n), A233273(n)]`
-/

namespace A270200.P14181896269745738072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270200.P14181896269745738072

namespace A270200

/-- `∪[A050754(n), A233273(n)]` -/
def P14181896269745738072.Spec : Prop :=
  ∀ n, (P14181896269745738072.a n : ℤ) = A270200 n

end A270200

/-! ## A270200.P17812086377567459045

`comp[A270198(n+1)]`
-/

namespace A270200.P17812086377567459045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A270200.P17812086377567459045

namespace A270200

/-- `comp[A270198(n+1)]` -/
def P17812086377567459045.Spec : Prop :=
  ∀ n, (P17812086377567459045.a n : ℤ) = A270200 n

end A270200

/-! ## A270200.P7814274798904707581

`record[A023416(n-1)-a(n-1)]` with `a(0)=0`
-/

namespace A270200.P7814274798904707581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A023416 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270200.P7814274798904707581

namespace A270200

/-- `record[A023416(n-1)-a(n-1)]` -/
def P7814274798904707581.Spec : Prop :=
  ∀ n, P7814274798904707581.a n = A270200 n

end A270200

/-! ## A270200.P12613342660098926962

`record[A080791(n)+∑[n+1]%(n+1)]`
-/

namespace A270200.P12613342660098926962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + (((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270200.P12613342660098926962

namespace A270200

/-- `record[A080791(n)+∑[n+1]%(n+1)]` -/
def P12613342660098926962.Spec : Prop :=
  ∀ n, P12613342660098926962.a n = A270200 n

end A270200

/-! ## A270200.P6857598457631192397

`record[(A023416(n)+A000265(n+1))%(n+1)]`
-/

namespace A270200.P6857598457631192397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 n + A000265 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270200.P6857598457631192397

namespace A270200

/-- `record[(A023416(n)+A000265(n+1))%(n+1)]` -/
def P6857598457631192397.Spec : Prop :=
  ∀ n, P6857598457631192397.a n = A270200 n

end A270200

/-! ## A270200.P9702700500784574680

`record[(A055998(n+1)+A023416(n))%(n+1)]`
-/

namespace A270200.P9702700500784574680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055998 (n + 1) + A023416 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270200.P9702700500784574680

namespace A270200

/-- `record[(A055998(n+1)+A023416(n))%(n+1)]` -/
def P9702700500784574680.Spec : Prop :=
  ∀ n, P9702700500784574680.a n = A270200 n

end A270200

/-! ## A270200.P13041042648223399666

`record[A080791(n)+A004526(A038502(n+1))]`
-/

namespace A270200.P13041042648223399666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + A004526 (A038502 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270200.P13041042648223399666

namespace A270200

/-- `record[A080791(n)+A004526(A038502(n+1))]` -/
def P13041042648223399666.Spec : Prop :=
  ∀ n, P13041042648223399666.a n = A270200 n

end A270200

/-!
# A270201: Permutation of natural numbers: a(1) = 1, a(A270189(1+n)) = 2 * a(n), a(A270190(n)) = 1 + 2*a(n).

The programs for A270201, there is no canonical definition to state claims against.
-/

/-! ## A270201.P17788621538659374619

`A330086(A054046(n+2))`
-/

namespace A270201.P17788621538659374619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330086 (A054046 (n + 2)).toNat

end

end A270201.P17788621538659374619

/-! ## A270201.P13762243078514882922

`A275715(n+1)+A091887(A000108(n))`
-/

namespace A270201.P13762243078514882922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275715 (n + 1) + A091887 (A000108 n).toNat

end

end A270201.P13762243078514882922

/-! ## A270201.P16429469870859978166

`A275715(n+1)+A091887(A000111(n))`
-/

namespace A270201.P16429469870859978166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275715 (n + 1) + A091887 (A000111 n).toNat

end

end A270201.P16429469870859978166

/-! ## A270201.P18426507772756350290

`A275715(n+1)+A102677(A071843(n))`
-/

namespace A270201.P18426507772756350290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275715 (n + 1) + A102677 (A071843 n).toNat

end

end A270201.P18426507772756350290

/-! ## A270201.P14232501319901737155

`A275715(n+1)+A130296(A354734(n))`
-/

namespace A270201.P14232501319901737155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275715 (n + 1) + A130296 (A354734 n).toNat

end

end A270201.P14232501319901737155

/-!
# A270204: a(n) = n^12 - n^10 + n^8 - n^6 + n^4 - n^2 + 1.

The programs for A270204, the canonical program `A270204.P14095575996783447420` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270204 has offset 0).

The definition of A270204 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^12-n^10+n^8-n^6+n^4-n²+1` (program `A270204.P14095575996783447420`, by `A270204.P14095575996783447420.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A270204.P14095575996783447420

`n^12-n^10+n^8-n^6+n^4-n²+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A270204

/-- `n^12-n^10+n^8-n^6+n^4-n²+1` -/
def P14095575996783447420.Spec : Prop :=
  ∀ n, P14095575996783447420.a n = A270204 n

theorem P14095575996783447420.correct : P14095575996783447420.Spec := by
  intro n
  simp only [A270204]

end A270204

/-! ## A270204.P2830919400787276709

`A060888(n²)`
-/

namespace A270204.P2830919400787276709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060888 (n ^ 2)

end

end A270204.P2830919400787276709

namespace A270204

/-- `A060888(n²)` -/
def P2830919400787276709.Spec : Prop :=
  ∀ n, P2830919400787276709.a n = A270204 n

theorem P2830919400787276709.correct : P2830919400787276709.Spec := by
  intro n
  simp only [A270204, Nat.add_sub_cancel, A270204.P2830919400787276709.a, A270204.P14095575996783447420.a, A060888, A060888.P13267519967057820847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270204

/-! ## A270204.P11509909824677807113

`or(1, A060888(A000290(n)))`
-/

namespace A270204.P11509909824677807113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060888 (A000290 n).toNat)

end

end A270204.P11509909824677807113

namespace A270204

/-- `or(1, A060888(A000290(n)))` -/
def P11509909824677807113.Spec : Prop :=
  ∀ n, P11509909824677807113.a n = A270204 n

end A270204

/-! ## A270204.P15338631172967993784

`gcd(A000038(n), A060888(A000290(n)))`
-/

namespace A270204.P15338631172967993784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A060888 (A000290 n).toNat)

end

end A270204.P15338631172967993784

namespace A270204

/-- `gcd(A000038(n), A060888(A000290(n)))` -/
def P15338631172967993784.Spec : Prop :=
  ∀ n, (P15338631172967993784.a n : ℤ) = A270204 n

end A270204

/-! ## A270204.P17290353813568725234

`A007318(∑[n])^3*A060888(A000290(n))`
-/

namespace A270204.P17290353813568725234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3 * A060888 (A000290 n).toNat

end

end A270204.P17290353813568725234

namespace A270204

/-- `A007318(∑[n])^3*A060888(A000290(n))` -/
def P17290353813568725234.Spec : Prop :=
  ∀ n, P17290353813568725234.a n = A270204 n

end A270204

/-! ## A270204.P12411646951966171455

`log2(A020639(2*(n+1)))*A060888(A000290(n))`
-/

namespace A270204.P12411646951966171455
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 1)) : ℝ) * (A060888 (A000290 n).toNat : ℝ)

end

end A270204.P12411646951966171455

namespace A270204

/-- `log2(A020639(2*(n+1)))*A060888(A000290(n))` -/
def P12411646951966171455.Spec : Prop :=
  ∀ n, P12411646951966171455.a n = (A270204 n : ℝ)

end A270204

/-! ## A270204.P8815236332551213167

`A007318(A000217(n))*A060888(A000290(n))`
-/

namespace A270204.P8815236332551213167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A060888 (A000290 n).toNat

end

end A270204.P8815236332551213167

namespace A270204

/-- `A007318(A000217(n))*A060888(A000290(n))` -/
def P8815236332551213167.Spec : Prop :=
  ∀ n, P8815236332551213167.a n = A270204 n

end A270204

/-! ## A270204.P301916899899808186

`A060888(A000290(n))^A001222(A057334(n))`
-/

namespace A270204.P301916899899808186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060888 (A000290 n).toNat : ℚ) ^ (A001222 (A057334 n).toNat : ℤ)

end

end A270204.P301916899899808186

namespace A270204

/-- `A060888(A000290(n))^A001222(A057334(n))` -/
def P301916899899808186.Spec : Prop :=
  ∀ n, P301916899899808186.a n = (A270204 n : ℚ)

end A270204

/-! ## A270204.P15084567172244875316

`A001221(A001316(n+1))*A060888(A000290(n))`
-/

namespace A270204.P15084567172244875316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 (n + 1)).toNat * A060888 (A000290 n).toNat

end

end A270204.P15084567172244875316

namespace A270204

/-- `A001221(A001316(n+1))*A060888(A000290(n))` -/
def P15084567172244875316.Spec : Prop :=
  ∀ n, P15084567172244875316.a n = A270204 n

end A270204

/-! ## A270204.P17416387655737796393

`A001222(A112046(n+1))*A060888(A000290(n))`
-/

namespace A270204.P17416387655737796393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A112046 (n + 1)).toNat * A060888 (A000290 n).toNat

end

end A270204.P17416387655737796393

namespace A270204

/-- `A001222(A112046(n+1))*A060888(A000290(n))` -/
def P17416387655737796393.Spec : Prop :=
  ∀ n, P17416387655737796393.a n = A270204 n

end A270204

/-!
# A270205: Number of 2 X 2 planar subsets in an n X n X n cube.

The programs for A270205, the canonical program `A270205.P4965580866994252023` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270205 has offset 0).

The definition of A270205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270205.P4965580866994252023

`3*n^3-6*n²+3*n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A270205

/-- `3*n^3-6*n²+3*n` -/
def P4965580866994252023.Spec : Prop :=
  ∀ n, P4965580866994252023.a n = A270205 n

theorem P4965580866994252023.correct : P4965580866994252023.Spec := by
  intro n
  simp only [A270205]

end A270205

/-! ## A270205.P17744189441926590590

`3*(n-1)*lcm(n, n-1)`
-/

namespace A270205.P17744189441926590590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((n : ℤ) - 1) * (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ))

end

end A270205.P17744189441926590590

namespace A270205

/-- `3*(n-1)*lcm(n, n-1)` -/
def P17744189441926590590.Spec : Prop :=
  ∀ n, P17744189441926590590.a n = A270205 n

end A270205

/-! ## A270205.P9300952927192868309

`(A086605(n)-n)/3`
-/

namespace A270205.P9300952927192868309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086605 n - (n : ℤ) : ℚ) / 3

end

end A270205.P9300952927192868309

namespace A270205

/-- `(A086605(n)-n)/3` -/
def P9300952927192868309.Spec : Prop :=
  ∀ n, P9300952927192868309.a n = (A270205 n : ℚ)

theorem P9300952927192868309.correct : P9300952927192868309.Spec := by
  intro n
  simp only [A270205, Nat.add_sub_cancel, A270205.P9300952927192868309.a, A270205.P4965580866994252023.a, A086605, A086605.P4140281209324293466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270205

/-! ## A270205.P8987150624549930487

`(A370649(n)-n)/5`
-/

namespace A270205.P8987150624549930487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370649 n - (n : ℤ) : ℚ) / 5

end

end A270205.P8987150624549930487

namespace A270205

/-- `(A370649(n)-n)/5` -/
def P8987150624549930487.Spec : Prop :=
  ∀ n, P8987150624549930487.a n = (A270205 n : ℚ)

theorem P8987150624549930487.correct : P8987150624549930487.Spec := by
  intro n
  simp only [A270205, Nat.add_sub_cancel, A270205.P8987150624549930487.a, A270205.P4965580866994252023.a, A370649, A370649.P9233916880484194882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270205

/-! ## A270205.P5847906667538590792

`A008585(n)*(1-n)²`
-/

namespace A270205.P5847906667538590792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n * (1 - (n : ℤ)) ^ 2

end

end A270205.P5847906667538590792

namespace A270205

/-- `A008585(n)*(1-n)²` -/
def P5847906667538590792.Spec : Prop :=
  ∀ n, P5847906667538590792.a n = A270205 n

theorem P5847906667538590792.correct : P5847906667538590792.Spec := by
  intro n
  simp only [A270205, Nat.add_sub_cancel, A270205.P5847906667538590792.a, A270205.P4965580866994252023.a, A008585, A008585.P13732812384316341435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270205

/-! ## A270205.P18065584119835652420

`(n-A000567(n))*(1-n)`
-/

namespace A270205.P18065584119835652420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A000567 n) * (1 - (n : ℤ))

end

end A270205.P18065584119835652420

namespace A270205

/-- `(n-A000567(n))*(1-n)` -/
def P18065584119835652420.Spec : Prop :=
  ∀ n, P18065584119835652420.a n = A270205 n

theorem P18065584119835652420.correct : P18065584119835652420.Spec := by
  intro n
  simp only [A270205, Nat.add_sub_cancel, A270205.P18065584119835652420.a, A270205.P4965580866994252023.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270205

/-! ## A270205.P3942414008711911602

`A300846(n)/A253909(n)`
-/

namespace A270205.P3942414008711911602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300846 n : ℚ) / (A253909 n : ℚ)

end

end A270205.P3942414008711911602

namespace A270205

/-- `A300846(n)/A253909(n)` -/
def P3942414008711911602.Spec : Prop :=
  ∀ n, P3942414008711911602.a n = (A270205 n : ℚ)

end A270205

/-! ## A270205.P13057244001348765215

`((n+1)²-A008574(n))*A008486(n)`
-/

namespace A270205.P13057244001348765215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - A008574 n) * A008486 n

end

end A270205.P13057244001348765215

namespace A270205

/-- `((n+1)²-A008574(n))*A008486(n)` -/
def P13057244001348765215.Spec : Prop :=
  ∀ n, P13057244001348765215.a n = A270205 n

end A270205

/-! ## A270205.P13248403115305816993

`6*A028724(2*n)`
-/

namespace A270205.P13248403115305816993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A028724 (2 * n)

end

end A270205.P13248403115305816993

namespace A270205

/-- `6*A028724(2*n)` -/
def P13248403115305816993.Spec : Prop :=
  ∀ n, P13248403115305816993.a n = A270205 n

end A270205

/-!
# A270206: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 121", based on the 5-celled von Neumann neighborhood.

The programs for A270206, there is no canonical definition to state claims against.
-/

/-! ## A270206.P10679184250947591653

`A270209(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270206.P10679184250947591653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270209 (n - 1) + a (n - 1)

end

end A270206.P10679184250947591653

/-! ## A270206.P1341787322728447833

`A270209(n-1)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A270206.P1341787322728447833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270209 (n - 1) - (A000007 n - a (n - 1))

end

end A270206.P1341787322728447833

/-! ## A270206.P10335950419877669388

`Δ[A270208(n)]-A270209(n)`
-/

namespace A270206.P10335950419877669388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270209 n

end

end A270206.P10335950419877669388

/-! ## A270206.P15491806514110658071

`A270208(n+1)-(A270209(n)+A270208(n))`
-/

namespace A270206.P15491806514110658071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270208 (n + 1) - (A270209 n + A270208 n)

end

end A270206.P15491806514110658071

/-!
# A270207: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 121", based on the 5-celled von Neumann neighborhood.

The programs for A270207, there is no canonical definition to state claims against.
-/

/-! ## A270207.P16704179962242466619

`A270206(2^n-1)`
-/

namespace A270207.P16704179962242466619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270206 (2 ^ n - 1)

end

end A270207.P16704179962242466619

/-! ## A270207.P2642648652506368927

`record[A270206(A173787(n))]`
-/

namespace A270207.P2642648652506368927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270206 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270207.P2642648652506368927

/-! ## A270207.P18235084144266022104

`record[A270206(A243071(n+1))]`
-/

namespace A270207.P18235084144266022104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270206 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270207.P18235084144266022104

/-! ## A270207.P5157245580847446424

`record[A270206(A323243(n+1))]`
-/

namespace A270207.P5157245580847446424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270206 (A323243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270207.P5157245580847446424

/-! ## A270207.P395658297474115335

`record[A270206(A324573(n+1))]`
-/

namespace A270207.P395658297474115335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270206 (A324573 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270207.P395658297474115335

/-!
# A270208: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 121", based on the 5-celled von Neumann neighborhood.

The programs for A270208, there is no canonical definition to state claims against.
-/

/-! ## A270208.P10678229740657615938

`∑[A270206(n)]`
-/

namespace A270208.P10678229740657615938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270208.P10678229740657615938

/-! ## A270208.P16616939459552942461

`A270206(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270208.P16616939459552942461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270206 n + a (A023443 n).toNat

end

end A270208.P16616939459552942461

/-! ## A270208.P14006843540743088158

`∑[∑[A270209(n)]+1-A270209(n)]`
-/

namespace A270208.P14006843540743088158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270209 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270209 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270208.P14006843540743088158

/-! ## A270208.P4794900933819475761

`A270206(n)+a(A005843(n)-(n+1))` with `a(0)=1`
-/

namespace A270208.P4794900933819475761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270206 n + a (A005843 n - (n + 1 : ℤ)).toNat

end

end A270208.P4794900933819475761

/-! ## A270208.P5236768332033780374

`a(n-1)+A270206(n)%A053755(n)` with `a(0)=1`
-/

namespace A270208.P5236768332033780374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270206 n) (A053755 n)

end

end A270208.P5236768332033780374

/-!
# A270209: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 121", based on the 5-celled von Neumann neighborhood.

The programs for A270209, there is no canonical definition to state claims against.
-/

/-! ## A270209.P17206624139151913184

`Δ[A270206(n)]`
-/

namespace A270209.P17206624139151913184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270209.P17206624139151913184

/-! ## A270209.P6290018641219058733

`A270206(n+1)-A270206(n)`
-/

namespace A270209.P6290018641219058733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270206 (n + 1) - A270206 n

end

end A270209.P6290018641219058733

/-! ## A270209.P16484804187856784674

`A270206(n+1)+A270206(n)/A260196(n+2)`
-/

namespace A270209.P16484804187856784674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270206 (n + 1) : ℚ) + (A270206 n : ℚ) / (A260196 (n + 2) : ℚ)

end

end A270209.P16484804187856784674

/-! ## A270209.P7851537463375509209

`A270206(A077168(n))-A000027(A270206(n))`
-/

namespace A270209.P7851537463375509209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270206 (A077168 n).toNat - A000027 (A270206 n).toNat

end

end A270209.P7851537463375509209

/-!
# A270210: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 123", based on the 5-celled von Neumann neighborhood.

The programs for A270210, there is no canonical definition to state claims against.
-/

/-! ## A270210.P212902336766341177

`∑[A270213(abs(1-n))]+1`
-/

namespace A270210.P212902336766341177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270213 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A270210.P212902336766341177

/-! ## A270210.P15646859157261005234

`A270213(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270210.P15646859157261005234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270213 (n - 1) + a (n - 1)

end

end A270210.P15646859157261005234

/-! ## A270210.P8125669543284081957

`Δ[A270212(n)]-A270213(n)`
-/

namespace A270210.P8125669543284081957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270213 n

end

end A270210.P8125669543284081957

/-! ## A270210.P877336534179064664

`a(n-1)-(A000007(n)-A270213(n-1))` with `a(0)=1`
-/

namespace A270210.P877336534179064664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 n - A270213 (n - 1))

end

end A270210.P877336534179064664

/-! ## A270210.P230890184703238936

`A270212(n+1)-(A270213(n)+A270212(n))`
-/

namespace A270210.P230890184703238936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270212 (n + 1) - (A270213 n + A270212 n)

end

end A270210.P230890184703238936

/-!
# A270211: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 123", based on the 5-celled von Neumann neighborhood.

The programs for A270211, there is no canonical definition to state claims against.
-/

/-! ## A270211.P9694082826678943010

`A270210(2^n-1)`
-/

namespace A270211.P9694082826678943010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270210 (2 ^ n - 1)

end

end A270211.P9694082826678943010

/-! ## A270211.P6696591001113237873

`record[A270210(A091264(n))]`
-/

namespace A270211.P6696591001113237873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270210 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270211.P6696591001113237873

/-! ## A270211.P9485073064056147824

`record[A270210(A227351(n))]`
-/

namespace A270211.P9485073064056147824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270210 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270211.P9485073064056147824

/-! ## A270211.P12877824682086708552

`record[A270210(A255067(n))]`
-/

namespace A270211.P12877824682086708552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270210 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270211.P12877824682086708552

/-! ## A270211.P4288633920803285251

`record[A270210(A255565(n))]`
-/

namespace A270211.P4288633920803285251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270210 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270211.P4288633920803285251

/-!
# A270212: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 123", based on the 5-celled von Neumann neighborhood.

The programs for A270212, there is no canonical definition to state claims against.
-/

/-! ## A270212.P16207825022969836908

`∑[A270213(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270212.P16207825022969836908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270213 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270212.P16207825022969836908

/-! ## A270212.P13556815789307392361

`∑[a(n-1)-(A000007(n)-A270213(n-1))]` with `a(0)=1`
-/

namespace A270212.P13556815789307392361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - (A000007 n - A270213 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270212.P13556815789307392361

/-! ## A270212.P436868538325107218

`∑[∑[A270213(n)]+1-A270213(n)]`
-/

namespace A270212.P436868538325107218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270213 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270213 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270212.P436868538325107218

/-! ## A270212.P16924490758518874025

`∑[A270210(n)]`
-/

namespace A270212.P16924490758518874025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270212.P16924490758518874025

/-! ## A270212.P13425270581775771219

`A270210(A004525(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A270212.P13425270581775771219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270210 (A004525 (n + n)).toNat + a (n - 1)

end

end A270212.P13425270581775771219

/-! ## A270212.P10123580139808163621

`A270210(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A270212.P10123580139808163621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270210 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A270212.P10123580139808163621

/-!
# A270213: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 123", based on the 5-celled von Neumann neighborhood.

The programs for A270213, there is no canonical definition to state claims against.
-/

/-! ## A270213.P11539833913977445718

`Δ[A270210(n)]`
-/

namespace A270213.P11539833913977445718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270213.P11539833913977445718

/-! ## A270213.P10805886141995801553

`A270210(n+1)-A270210(n)`
-/

namespace A270213.P10805886141995801553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270210 (n + 1) - A270210 n

end

end A270213.P10805886141995801553

/-!
# A270214: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 126", based on the 5-celled von Neumann neighborhood.

The programs for A270214, there is no canonical definition to state claims against.
-/

/-! ## A270214.P242981345828317612

`A270216(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270214.P242981345828317612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270216 (n - 1) + a (n - 1)

end

end A270214.P242981345828317612

/-! ## A270214.P512614978908538985

`Δ[A270215(n)]-A270216(n)`
-/

namespace A270214.P512614978908538985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270216 n

end

end A270214.P512614978908538985

/-! ## A270214.P17759105696410033883

`A270216(n-1)-ceil(-a(A028310(n)-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A270214.P17759105696410033883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270216 (n - 1) - (-a (A028310 n - 1).toNat)

end

end A270214.P17759105696410033883

/-! ## A270214.P2850222881879857622

`A270215(n+1)-(A270216(n)+A270215(n))`
-/

namespace A270214.P2850222881879857622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270215 (n + 1) - (A270216 n + A270215 n)

end

end A270214.P2850222881879857622

/-! ## A270214.P986424139006166312

`A270215(A000027(n+1))%(A270216(n)+A270215(n))`
-/

namespace A270214.P986424139006166312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270215 (A000027 (n + 1)).toNat) (A270216 n + A270215 n)

end

end A270214.P986424139006166312

/-!
# A270215: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 126", based on the 5-celled von Neumann neighborhood.

The programs for A270215, there is no canonical definition to state claims against.
-/

/-! ## A270215.P8248779747790822599

`∑[A270216(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270215.P8248779747790822599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270216 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270215.P8248779747790822599

/-! ## A270215.P13102483176420210297

`∑[A270214(n)]`
-/

namespace A270215.P13102483176420210297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270215.P13102483176420210297

/-! ## A270215.P5718870080257934716

`A270214(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A270215.P5718870080257934716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270214 (n % (n + 1)) + a (n - 1)

end

end A270215.P5718870080257934716

/-! ## A270215.P7933989895962341575

`A270214(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270215.P7933989895962341575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270214 n + a (A023443 n).toNat

end

end A270215.P7933989895962341575

/-! ## A270215.P6177436513536409327

`A270214(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A270215.P6177436513536409327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270214 n + a (A028310 n - 1).toNat

end

end A270215.P6177436513536409327

/-! ## A270215.P9405969082403253877

`a(n-1)+A270214(n)%A050406(n)` with `a(0)=1`
-/

namespace A270215.P9405969082403253877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270214 n) (A050406 n)

end

end A270215.P9405969082403253877

/-!
# A270216: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 126", based on the 5-celled von Neumann neighborhood.

The programs for A270216, there is no canonical definition to state claims against.
-/

/-! ## A270216.P10925934753103355369

`Δ[A270214(n)]`
-/

namespace A270216.P10925934753103355369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270216.P10925934753103355369

/-! ## A270216.P8903095598605534493

`A270214(n+1)-A270214(n)`
-/

namespace A270216.P8903095598605534493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270214 (n + 1) - A270214 n

end

end A270216.P8903095598605534493

/-!
# A270217: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 129", based on the 5-celled von Neumann neighborhood.

The programs for A270217, there is no canonical definition to state claims against.
-/

/-! ## A270217.P12537569108581292189

`∑[A270220(abs(1-n))]`
-/

namespace A270217.P12537569108581292189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270220 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270217.P12537569108581292189

/-! ## A270217.P6294119275351763276

`A270220(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270217.P6294119275351763276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270220 (n - 1) + a (n - 1)

end

end A270217.P6294119275351763276

/-! ## A270217.P9693072281347751255

`A272316(n)+A272416(n)-A272418(n)`
-/

namespace A270217.P9693072281347751255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272316 n + (A272416 n - A272418 n)

end

end A270217.P9693072281347751255

/-! ## A270217.P12260997970364894094

`Δ[A270219(n)]-A270220(n)`
-/

namespace A270217.P12260997970364894094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270220 n

end

end A270217.P12260997970364894094

/-! ## A270217.P13519587497864309578

`A270219(n+1)-(A270220(n)+A270219(n))`
-/

namespace A270217.P13519587497864309578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270219 (n + 1) - (A270220 n + A270219 n)

end

end A270217.P13519587497864309578

/-! ## A270217.P7736075497549364006

`A065475(∑[A270220(n)])-A270220(n)`
-/

namespace A270217.P7736075497549364006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A270220 n

end

end A270217.P7736075497549364006

/-!
# A270218: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 129", based on the 5-celled von Neumann neighborhood.

The programs for A270218, the canonical program `A270218.P5419904298688201475` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270218 has offset 0).

The definition of A270218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270218.P5419904298688201475

`lcm(4, a(n-1)+2^n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A270218

/-- `lcm(4, a(n-1)+2^n-1)` -/
def P5419904298688201475.Spec : Prop :=
  ∀ n, (P5419904298688201475.a n : ℤ) = A270218 n

theorem P5419904298688201475.correct : P5419904298688201475.Spec := by
  intro n
  simp only [A270218]

end A270218

/-! ## A270218.P14385224646171731447

`4*(2^n+a(n-1)-1)` with `a(0)=1, a(1)=4`
-/

namespace A270218.P14385224646171731447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * ((2 ^ n : ℤ) + (a (n - 1) - 1))

end

end A270218.P14385224646171731447

namespace A270218

/-- `4*(2^n+a(n-1)-1)` -/
def P14385224646171731447.Spec : Prop :=
  ∀ n, P14385224646171731447.a n = A270218 n

end A270218

/-! ## A270218.P9367845535217905605

`∑[2*4^n]-A134067(n)`
-/

namespace A270218.P9367845535217905605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A134067 n

end

end A270218.P9367845535217905605

namespace A270218

/-- `∑[2*4^n]-A134067(n)` -/
def P9367845535217905605.Spec : Prop :=
  ∀ n, P9367845535217905605.a n = A270218 n

end A270218

/-! ## A270218.P15430197731287559297

`a(n-1)+A092440(n)-1` with `a(0)=1, a(1)=4`
-/

namespace A270218.P15430197731287559297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (A092440 n - 1)

end

end A270218.P15430197731287559297

namespace A270218

/-- `a(n-1)+A092440(n)-1` -/
def P15430197731287559297.Spec : Prop :=
  ∀ n, P15430197731287559297.a n = A270218 n

end A270218

/-! ## A270218.P285279355535668479

`A000007(n)+∑[4*C(2^n, 2)]`
-/

namespace A270218.P285279355535668479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (2 ^ n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A270218.P285279355535668479

namespace A270218

/-- `A000007(n)+∑[4*C(2^n, 2)]` -/
def P285279355535668479.Spec : Prop :=
  ∀ n, P285279355535668479.a n = A270218 n

end A270218

/-! ## A270218.P17358169888067648187

`lcm(4, 1-a(n-1)-A000079(n))` with `a(0)=1`
-/

namespace A270218.P17358169888067648187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 4 (1 - (a (n - 1) : ℤ) - A000079 n)

end

end A270218.P17358169888067648187

namespace A270218

/-- `lcm(4, 1-a(n-1)-A000079(n))` -/
def P17358169888067648187.Spec : Prop :=
  ∀ n, (P17358169888067648187.a n : ℤ) = A270218 n

end A270218

/-! ## A270218.P6138914919191626510

`A270222(n)-A002450(n)`
-/

namespace A270218.P6138914919191626510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270222 n - A002450 n

end

end A270218.P6138914919191626510

namespace A270218

/-- `A270222(n)-A002450(n)` -/
def P6138914919191626510.Spec : Prop :=
  ∀ n, P6138914919191626510.a n = A270218 n

end A270218

/-! ## A270218.P8365884818655940543

`A271061(n)-A080674(n)`
-/

namespace A270218.P8365884818655940543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271061 n - A080674 n

end

end A270218.P8365884818655940543

namespace A270218

/-- `A271061(n)-A080674(n)` -/
def P8365884818655940543.Spec : Prop :=
  ∀ n, P8365884818655940543.a n = A270218 n

end A270218

/-! ## A270218.P10507640972712629309

`record[A007581(n)-A055010(n)]`
-/

namespace A270218.P10507640972712629309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n - A055010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270218.P10507640972712629309

namespace A270218

/-- `record[A007581(n)-A055010(n)]` -/
def P10507640972712629309.Spec : Prop :=
  ∀ n, P10507640972712629309.a n = A270218 n

end A270218

/-! ## A270218.P8438197919677547848

`(A101622(n)+1)*A026644(n)`
-/

namespace A270218.P8438197919677547848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A101622 n + 1) * A026644 n

end

end A270218.P8438197919677547848

namespace A270218

/-- `(A101622(n)+1)*A026644(n)` -/
def P8438197919677547848.Spec : Prop :=
  ∀ n, P8438197919677547848.a n = A270218 n

end A270218

/-! ## A270218.P9075810762900218271

`∑[A267596(n)+A000225(n)²]`
-/

namespace A270218.P9075810762900218271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267596 n + A000225 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270218.P9075810762900218271

namespace A270218

/-- `∑[A267596(n)+A000225(n)²]` -/
def P9075810762900218271.Spec : Prop :=
  ∀ n, P9075810762900218271.a n = A270218 n

end A270218

/-! ## A270218.P14081786423095532436

`record[A094024(n)²-A000975(n)]`
-/

namespace A270218.P14081786423095532436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n ^ 2 - A000975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270218.P14081786423095532436

namespace A270218

/-- `record[A094024(n)²-A000975(n)]` -/
def P14081786423095532436.Spec : Prop :=
  ∀ n, P14081786423095532436.a n = A270218 n

end A270218

/-! ## A270218.P10392212514609386743

`∑[A267685(n)+1]-A126646(n)`
-/

namespace A270218.P10392212514609386743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267685 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A126646 n

end

end A270218.P10392212514609386743

namespace A270218

/-- `∑[A267685(n)+1]-A126646(n)` -/
def P10392212514609386743.Spec : Prop :=
  ∀ n, P10392212514609386743.a n = A270218 n

end A270218

/-! ## A270218.P6850654078842300012

`A000007(n)+∑[2*A020522(n)]`
-/

namespace A270218.P6850654078842300012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270218.P6850654078842300012

namespace A270218

/-- `A000007(n)+∑[2*A020522(n)]` -/
def P6850654078842300012.Spec : Prop :=
  ∀ n, P6850654078842300012.a n = A270218 n

end A270218

/-! ## A270218.P14538982735543020994

`A123290(n+2)-A151821(n+1)`
-/

namespace A270218.P14538982735543020994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123290 (n + 2) - A151821 (n + 1)

end

end A270218.P14538982735543020994

namespace A270218

/-- `A123290(n+2)-A151821(n+1)` -/
def P14538982735543020994.Spec : Prop :=
  ∀ n, P14538982735543020994.a n = A270218 n

end A270218

/-! ## A270218.P13285166056018242001

`(A097074(n)+A000975(n))*A026644(n)`
-/

namespace A270218.P13285166056018242001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097074 n + A000975 n) * A026644 n

end

end A270218.P13285166056018242001

namespace A270218

/-- `(A097074(n)+A000975(n))*A026644(n)` -/
def P13285166056018242001.Spec : Prop :=
  ∀ n, P13285166056018242001.a n = A270218 n

end A270218

/-! ## A270218.P4413151289914621922

`(A167030(n+1)+A000975(n+1))*A026644(n)`
-/

namespace A270218.P4413151289914621922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167030 (n + 1) + A000975 (n + 1)) * A026644 n

end

end A270218.P4413151289914621922

namespace A270218

/-- `(A167030(n+1)+A000975(n+1))*A026644(n)` -/
def P4413151289914621922.Spec : Prop :=
  ∀ n, P4413151289914621922.a n = A270218 n

end A270218

/-! ## A270218.P8227919798510173940

`A006095(n+1)+A000225(n+1)*A255047(n)`
-/

namespace A270218.P8227919798510173940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 (n + 1) + A000225 (n + 1) * A255047 n

end

end A270218.P8227919798510173940

namespace A270218

/-- `A006095(n+1)+A000225(n+1)*A255047(n)` -/
def P8227919798510173940.Spec : Prop :=
  ∀ n, P8227919798510173940.a n = A270218 n

end A270218

/-! ## A270218.P45524596155514249

`A006095(n+1)+A255047(n+1)*A255047(n)`
-/

namespace A270218.P45524596155514249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 (n + 1) + A255047 (n + 1) * A255047 n

end

end A270218.P45524596155514249

namespace A270218

/-- `A006095(n+1)+A255047(n+1)*A255047(n)` -/
def P45524596155514249.Spec : Prop :=
  ∀ n, P45524596155514249.a n = A270218 n

end A270218

/-! ## A270218.P6375051882213495897

`(A026644(n+1)-A005578(n+1))*A026644(n)`
-/

namespace A270218.P6375051882213495897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026644 (n + 1) - A005578 (n + 1)) * A026644 n

end

end A270218.P6375051882213495897

namespace A270218

/-- `(A026644(n+1)-A005578(n+1))*A026644(n)` -/
def P6375051882213495897.Spec : Prop :=
  ∀ n, P6375051882213495897.a n = A270218 n

end A270218

/-!
# A270219: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 129", based on the 5-celled von Neumann neighborhood.

The programs for A270219, there is no canonical definition to state claims against.
-/

/-! ## A270219.P9016650772243704875

`∑[A270217(n)]`
-/

namespace A270219.P9016650772243704875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270219.P9016650772243704875

/-! ## A270219.P18085283074870988271

`∑[∑[A270220(abs(1-n))]]`
-/

namespace A270219.P18085283074870988271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270220 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270219.P18085283074870988271

/-! ## A270219.P8856335536369362558

`A270217(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270219.P8856335536369362558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270217 n + a (A023443 n).toNat

end

end A270219.P8856335536369362558

/-! ## A270219.P8673385769152175909

`A270217(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A270219.P8673385769152175909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270217 n + a (A004273 n - (n : ℤ)).toNat

end

end A270219.P8673385769152175909

/-! ## A270219.P13184687783648961821

`∑[∑[A270220(n)]+1-A270220(n)]`
-/

namespace A270219.P13184687783648961821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270220 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270220 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270219.P13184687783648961821

/-! ## A270219.P13113921528390852657

`a(n-1)+A270217(n)+A000007(n)` with `a(0)=1`
-/

namespace A270219.P13113921528390852657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270217 n + A000007 n)

end

end A270219.P13113921528390852657

/-! ## A270219.P11113647730404866568

`A270217(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A270219.P11113647730404866568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270217 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A270219.P11113647730404866568

/-! ## A270219.P9536092808515617378

`a(n-1)+A270217(n)%A022271(n)` with `a(0)=1`
-/

namespace A270219.P9536092808515617378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270217 n) (A022271 n)

end

end A270219.P9536092808515617378

/-! ## A270219.P7031683550918263772

`A270217(n)+a(n-1)%A151800(a(n-1))` with `a(0)=1`
-/

namespace A270219.P7031683550918263772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270217 n + Int.tmod (a (n - 1)) (A151800 (a (n - 1)).toNat)

end

end A270219.P7031683550918263772

/-!
# A270220: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 129", based on the 5-celled von Neumann neighborhood.

The programs for A270220, there is no canonical definition to state claims against.
-/

/-! ## A270220.P8673414847529027865

`Δ[A270217(n)]`
-/

namespace A270220.P8673414847529027865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270220.P8673414847529027865

/-! ## A270220.P4318454298285322267

`A270217(n+1)-A270217(n)`
-/

namespace A270220.P4318454298285322267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (n + 1) - A270217 n

end

end A270220.P4318454298285322267

/-! ## A270220.P2874551333166148812

`A272313(n+1)-A272416(n)`
-/

namespace A270220.P2874551333166148812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272313 (n + 1) - A272416 n

end

end A270220.P2874551333166148812

/-! ## A270220.P14173028823295782854

`A272313(n+1)-(Δ[A272418(n)]-A272419(n))`
-/

namespace A270220.P14173028823295782854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272313 (n + 1) - (f1 (n + 1) - f1 n - A272419 n)

end

end A270220.P14173028823295782854

/-! ## A270220.P12986736975213783994

`Δ[A272316(n)]-A272416(n)`
-/

namespace A270220.P12986736975213783994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272416 n

end

end A270220.P12986736975213783994

/-!
# A270221: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 131", based on the 5-celled von Neumann neighborhood.

The programs for A270221, there is no canonical definition to state claims against.
-/

/-! ## A270221.P490264696569404326

`A270224(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270221.P490264696569404326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270224 (n - 1) + a (n - 1)

end

end A270221.P490264696569404326

/-! ## A270221.P1597274407098754402

`1+∑[A270224(n)]-A270224(n)`
-/

namespace A270221.P1597274407098754402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270224 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (∑ j ∈ Finset.range (n + 1), f1 j - A270224 n)

end

end A270221.P1597274407098754402

/-! ## A270221.P8173563331957926119

`Δ[A270223(n)]-A270224(n)`
-/

namespace A270221.P8173563331957926119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270224 n

end

end A270221.P8173563331957926119

/-! ## A270221.P7556394577774486693

`A270223(n+1)-(A270224(n)+A270223(n))`
-/

namespace A270221.P7556394577774486693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270223 (n + 1) - (A270224 n + A270223 n)

end

end A270221.P7556394577774486693

/-! ## A270221.P8774823461389296964

`A270689(n)*A329314(A000041(n))`
-/

namespace A270221.P8774823461389296964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270689 n * A329314 (A000041 n).toNat

end

end A270221.P8774823461389296964

/-!
# A270222: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 131", based on the 5-celled von Neumann neighborhood.

The programs for A270222, the canonical program `A270222.P3717044423071578080` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270222 has offset 0).

The definition of A270222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270222.P3717044423071578080

`Δ[and(2^n-1, -2)²]+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A270222

/-- `Δ[and(2^n-1, -2)²]+1` -/
def P3717044423071578080.Spec : Prop :=
  ∀ n, P3717044423071578080.a n = A270222 n

theorem P3717044423071578080.correct : P3717044423071578080.Spec := by
  intro n
  simp only [A270222]

end A270222

/-! ## A270222.P11088521420765613037

`Δ[(or(1, -2^n)+1)²+n]`
-/

namespace A270222.P11088521420765613037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (-(2 ^ n : ℤ)) + 1) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270222.P11088521420765613037

namespace A270222

/-- `Δ[(or(1, -2^n)+1)²+n]` -/
def P11088521420765613037.Spec : Prop :=
  ∀ n, P11088521420765613037.a n = A270222 n

end A270222

/-! ## A270222.P13779616114454925647

`4*(2^n+a(n-1)-1)+1` with `a(0)=1, a(1)=5`
-/

namespace A270222.P13779616114454925647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 * ((2 ^ n : ℤ) + (a (n - 1) - 1)) + 1

end

end A270222.P13779616114454925647

namespace A270222

/-- `4*(2^n+a(n-1)-1)+1` -/
def P13779616114454925647.Spec : Prop :=
  ∀ n, P13779616114454925647.a n = A270222 n

end A270222

/-! ## A270222.P448052095122102260

`ceil(∑[2^n]²/2)+or(1, -2^n)²-1`
-/

namespace A270222.P448052095122102260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 2⌉ + (Int.lor 1 (-(2 ^ n : ℤ)) ^ 2 - 1)

end

end A270222.P448052095122102260

namespace A270222

/-- `ceil(∑[2^n]²/2)+or(1, -2^n)²-1` -/
def P448052095122102260.Spec : Prop :=
  ∀ n, P448052095122102260.a n = A270222 n

end A270222

/-! ## A270222.P11803267946532267090

`or(1, A273676(n))`
-/

namespace A270222.P11803267946532267090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273676 n)

end

end A270222.P11803267946532267090

namespace A270222

/-- `or(1, A273676(n))` -/
def P11803267946532267090.Spec : Prop :=
  ∀ n, P11803267946532267090.a n = A270222 n

end A270222

/-! ## A270222.P4228712784555343951

`∑[2^n]²-A155559(n)²`
-/

namespace A270222.P4228712784555343951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A155559 n ^ 2

end

end A270222.P4228712784555343951

namespace A270222

/-- `∑[2^n]²-A155559(n)²` -/
def P4228712784555343951.Spec : Prop :=
  ∀ n, P4228712784555343951.a n = A270222 n

end A270222

/-! ## A270222.P4461575001503181952

`Δ[(2*(A011782(n)-1))²]+1`
-/

namespace A270222.P4461575001503181952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (A011782 n - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A270222.P4461575001503181952

namespace A270222

/-- `Δ[(2*(A011782(n)-1))²]+1` -/
def P4461575001503181952.Spec : Prop :=
  ∀ n, P4461575001503181952.a n = A270222 n

end A270222

/-! ## A270222.P17814434962793165022

`A110594(n+1)+1-2^(n+2)`
-/

namespace A270222.P17814434962793165022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110594 (n + 1) + 1 - (2 ^ (n + 2) : ℤ)

end

end A270222.P17814434962793165022

namespace A270222

/-- `A110594(n+1)+1-2^(n+2)` -/
def P17814434962793165022.Spec : Prop :=
  ∀ n, P17814434962793165022.a n = A270222 n

end A270222

/-! ## A270222.P9767336413260004484

`or(1, 3*2^n-2)*A000225(round(sqrt(n²+1)))`
-/

namespace A270222.P9767336413260004484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((3 * 2 ^ n : ℤ) - 2) * A000225 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A270222.P9767336413260004484

namespace A270222

/-- `or(1, 3*2^n-2)*A000225(round(sqrt(n²+1)))` -/
def P9767336413260004484.Spec : Prop :=
  ∀ n, P9767336413260004484.a n = A270222 n

end A270222

/-! ## A270222.P5179289825804614123

`A103454(n)+A087291(n)`
-/

namespace A270222.P5179289825804614123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103454 n + A087291 n

end

end A270222.P5179289825804614123

namespace A270222

/-- `A103454(n)+A087291(n)` -/
def P5179289825804614123.Spec : Prop :=
  ∀ n, P5179289825804614123.a n = A270222 n

end A270222

/-! ## A270222.P15424322330556272201

`A270218(n)+A002450(n)`
-/

namespace A270222.P15424322330556272201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270218 n + A002450 n

end

end A270222.P15424322330556272201

namespace A270222

/-- `A270218(n)+A002450(n)` -/
def P15424322330556272201.Spec : Prop :=
  ∀ n, P15424322330556272201.a n = A270222 n

end A270222

/-! ## A270222.P4271278734464983718

`A211012(n)+A092440(n)`
-/

namespace A270222.P4271278734464983718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211012 n + A092440 n

end

end A270222.P4271278734464983718

namespace A270222

/-- `A211012(n)+A092440(n)` -/
def P4271278734464983718.Spec : Prop :=
  ∀ n, P4271278734464983718.a n = A270222 n

end A270222

/-! ## A270222.P15455270881497360421

`A273676(n)+A063524(n)`
-/

namespace A270222.P15455270881497360421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273676 n + A063524 n

end

end A270222.P15455270881497360421

namespace A270222

/-- `A273676(n)+A063524(n)` -/
def P15455270881497360421.Spec : Prop :=
  ∀ n, P15455270881497360421.a n = A270222 n

end A270222

/-! ## A270222.P11945143619324316178

`A271061(n)-A024036(n)`
-/

namespace A270222.P11945143619324316178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271061 n - A024036 n

end

end A270222.P11945143619324316178

namespace A270222

/-- `A271061(n)-A024036(n)` -/
def P11945143619324316178.Spec : Prop :=
  ∀ n, P11945143619324316178.a n = A270222 n

end A270222

/-! ## A270222.P17538009020434783460

`A140660(n)-A171497(n)`
-/

namespace A270222.P17538009020434783460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140660 n - A171497 n

end

end A270222.P17538009020434783460

namespace A270222

/-- `A140660(n)-A171497(n)` -/
def P17538009020434783460.Spec : Prop :=
  ∀ n, P17538009020434783460.a n = A270222 n

end A270222

/-! ## A270222.P4984334491457716570

`A169726(n)-A155559(n)`
-/

namespace A270222.P4984334491457716570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169726 n - A155559 n

end

end A270222.P4984334491457716570

namespace A270222

/-- `A169726(n)-A155559(n)` -/
def P4984334491457716570.Spec : Prop :=
  ∀ n, P4984334491457716570.a n = A270222 n

end A270222

/-! ## A270222.P8246364228405994516

`A198693(n)-A134067(n)`
-/

namespace A270222.P8246364228405994516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198693 n - A134067 n

end

end A270222.P8246364228405994516

namespace A270222

/-- `A198693(n)-A134067(n)` -/
def P8246364228405994516.Spec : Prop :=
  ∀ n, P8246364228405994516.a n = A270222 n

end A270222

/-! ## A270222.P1562278799821564024

`A273676(n)-A159075(n)`
-/

namespace A270222.P1562278799821564024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273676 n - A159075 n

end

end A270222.P1562278799821564024

namespace A270222

/-- `A273676(n)-A159075(n)` -/
def P1562278799821564024.Spec : Prop :=
  ∀ n, P1562278799821564024.a n = A270222 n

end A270222

/-! ## A270222.P894913982309581143

`A052940(n)*A255047(n)`
-/

namespace A270222.P894913982309581143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052940 n * A255047 n

end

end A270222.P894913982309581143

namespace A270222

/-- `A052940(n)*A255047(n)` -/
def P894913982309581143.Spec : Prop :=
  ∀ n, P894913982309581143.a n = A270222 n

end A270222

/-! ## A270222.P6116577403326324438

`and(A169726(n), A273385(n))`
-/

namespace A270222.P6116577403326324438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169726 n) (A273385 n)

end

end A270222.P6116577403326324438

namespace A270222

/-- `and(A169726(n), A273385(n))` -/
def P6116577403326324438.Spec : Prop :=
  ∀ n, P6116577403326324438.a n = A270222 n

end A270222

/-!
# A270223: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 131", based on the 5-celled von Neumann neighborhood.

The programs for A270223, there is no canonical definition to state claims against.
-/

/-! ## A270223.P13985159585744608307

`∑[A270221(n)]`
-/

namespace A270223.P13985159585744608307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270223.P13985159585744608307

/-! ## A270223.P6449284098855497263

`A270221(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270223.P6449284098855497263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270221 n + a (A023443 n).toNat

end

end A270223.P6449284098855497263

/-! ## A270223.P18416691983516447368

`A270221(n)+a(abs(A024000(n)))` with `a(0)=1`
-/

namespace A270223.P18416691983516447368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270221 n + a |A024000 n|.toNat

end

end A270223.P18416691983516447368

/-! ## A270223.P5632353570836787864

`∑[∑[A270224(n)]+1-A270224(n)]`
-/

namespace A270223.P5632353570836787864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270224 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270224 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270223.P5632353570836787864

/-! ## A270223.P12443465798825149388

`A270221(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A270223.P12443465798825149388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270221 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A270223.P12443465798825149388

/-!
# A270224: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 131", based on the 5-celled von Neumann neighborhood.

The programs for A270224, there is no canonical definition to state claims against.
-/

/-! ## A270224.P17809114784069037104

`Δ[A270221(n)]`
-/

namespace A270224.P17809114784069037104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270224.P17809114784069037104

/-! ## A270224.P13761095468971062290

`A270221(n+1)-A270221(n)`
-/

namespace A270224.P13761095468971062290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270221 (n + 1) - A270221 n

end

end A270224.P13761095468971062290

/-! ## A270224.P4827390109008390570

`A270221(n+1)+A270221(n)*A308778(n²)`
-/

namespace A270224.P4827390109008390570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270221 (n + 1) + A270221 n * A308778 (n ^ 2)

end

end A270224.P4827390109008390570

/-! ## A270224.P16806500245579091668

`A270692(n)-A001591(A185254(n))`
-/

namespace A270224.P16806500245579091668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270692 n - A001591 (A185254 n).toNat

end

end A270224.P16806500245579091668

/-! ## A270224.P7498249203153006566

`Δ[A270689(n)]-A001591(A185254(n))`
-/

namespace A270224.P7498249203153006566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001591 (A185254 n).toNat

end

end A270224.P7498249203153006566

/-!
# A270225: Lesser of twin primes where both primes are the sum of three squares.

The programs for A270225, the canonical program `A270225.P5227727543504798562` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270225 has offset 1).

The definition of A270225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270225.P12993356006224366962

`∪[A253639(n+1), A269840(n+1)]`
-/

namespace A270225.P12993356006224366962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270225.P12993356006224366962

namespace A270225

/-- `∪[A253639(n+1), A269840(n+1)]` -/
def P12993356006224366962.Spec : Prop :=
  ∀ n, (P12993356006224366962.a n : ℤ) = A270225 (n + 1)

end A270225

/-! ## A270225.P5227727543504798562

`A001359(eq[1, and(5, A001359(n+1))]+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A270225

/-- `A001359(eq[1, and(5, A001359(n+1))]+1)` -/
def P5227727543504798562.Spec : Prop :=
  ∀ n, P5227727543504798562.a n = A270225 (n + 1)

theorem P5227727543504798562.correct : P5227727543504798562.Spec := by
  intro n
  simp only [A270225, Nat.add_sub_cancel]

end A270225

/-! ## A270225.P5973372546375480505

`p?[A033200(n+1)+2]-2`
-/

namespace A270225.P5973372546375480505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A270225.P5973372546375480505

namespace A270225

/-- `p?[A033200(n+1)+2]-2` -/
def P5973372546375480505.Spec : Prop :=
  ∀ n, P5973372546375480505.a n = A270225 (n + 1)

end A270225

/-! ## A270225.P9540826319846344622

`p?[A033203(n+1)+2]-2`
-/

namespace A270225.P9540826319846344622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A270225.P9540826319846344622

namespace A270225

/-- `p?[A033203(n+1)+2]-2` -/
def P9540826319846344622.Spec : Prop :=
  ∀ n, P9540826319846344622.a n = A270225 (n + 1)

end A270225

/-! ## A270225.P7816216414001832164

`∩[A001359(n+1), A033200(n+1)]`
-/

namespace A270225.P7816216414001832164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270225.P7816216414001832164

namespace A270225

/-- `∩[A001359(n+1), A033200(n+1)]` -/
def P7816216414001832164.Spec : Prop :=
  ∀ n, (P7816216414001832164.a n : ℤ) = A270225 (n + 1)

end A270225

/-! ## A270225.P6399771730157345563

`∩[A001359(n+1), A033203(n+1)]`
-/

namespace A270225.P6399771730157345563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270225.P6399771730157345563

namespace A270225

/-- `∩[A001359(n+1), A033203(n+1)]` -/
def P6399771730157345563.Spec : Prop :=
  ∀ n, (P6399771730157345563.a n : ℤ) = A270225 (n + 1)

end A270225

/-! ## A270225.P9335735956910460627

`∩[A001838(n+1), A033200(n+1)]`
-/

namespace A270225.P9335735956910460627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270225.P9335735956910460627

namespace A270225

/-- `∩[A001838(n+1), A033200(n+1)]` -/
def P9335735956910460627.Spec : Prop :=
  ∀ n, (P9335735956910460627.a n : ℤ) = A270225 (n + 1)

end A270225

/-! ## A270225.P17176991547371561696

`∩[A001838(n+1), A033203(n+1)]`
-/

namespace A270225.P17176991547371561696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270225.P17176991547371561696

namespace A270225

/-- `∩[A001838(n+1), A033203(n+1)]` -/
def P17176991547371561696.Spec : Prop :=
  ∀ n, (P17176991547371561696.a n : ℤ) = A270225 (n + 1)

end A270225

/-! ## A270225.P3667462646151436588

`∩[A033200(n+1), A054799(n+1)]`
-/

namespace A270225.P3667462646151436588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270225.P3667462646151436588

namespace A270225

/-- `∩[A033200(n+1), A054799(n+1)]` -/
def P3667462646151436588.Spec : Prop :=
  ∀ n, (P3667462646151436588.a n : ℤ) = A270225 (n + 1)

end A270225

/-! ## A270225.P12269558454930177719

`∩[A033203(n+1), A054799(n+1)]`
-/

namespace A270225.P12269558454930177719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270225.P12269558454930177719

namespace A270225

/-- `∩[A033203(n+1), A054799(n+1)]` -/
def P12269558454930177719.Spec : Prop :=
  ∀ n, (P12269558454930177719.a n : ℤ) = A270225 (n + 1)

end A270225

/-! ## A270225.P15842492511486475137

`∩[A033200(n+1), A063693(n+1)]`
-/

namespace A270225.P15842492511486475137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270225.P15842492511486475137

namespace A270225

/-- `∩[A033200(n+1), A063693(n+1)]` -/
def P15842492511486475137.Spec : Prop :=
  ∀ n, (P15842492511486475137.a n : ℤ) = A270225 (n + 1)

end A270225

/-! ## A270225.P14190249627030389401

`∩[A033200(n+1), A063700(n+1)]`
-/

namespace A270225.P14190249627030389401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270225.P14190249627030389401

namespace A270225

/-- `∩[A033200(n+1), A063700(n+1)]` -/
def P14190249627030389401.Spec : Prop :=
  ∀ n, (P14190249627030389401.a n : ℤ) = A270225 (n + 1)

end A270225

/-! ## A270225.P6595885717617411926

`∩[A033203(n+1), A063693(n+1)]`
-/

namespace A270225.P6595885717617411926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270225.P6595885717617411926

namespace A270225

/-- `∩[A033203(n+1), A063693(n+1)]` -/
def P6595885717617411926.Spec : Prop :=
  ∀ n, (P6595885717617411926.a n : ℤ) = A270225 (n + 1)

end A270225

/-! ## A270225.P1171882817400545092

`∩[A033203(n+1), A063700(n+1)]`
-/

namespace A270225.P1171882817400545092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270225.P1171882817400545092

namespace A270225

/-- `∩[A033203(n+1), A063700(n+1)]` -/
def P1171882817400545092.Spec : Prop :=
  ∀ n, (P1171882817400545092.a n : ℤ) = A270225 (n + 1)

end A270225

/-! ## A270225.P6059931757489542864

`∩[A033200(n+1), A073534(n+1)]`
-/

namespace A270225.P6059931757489542864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270225.P6059931757489542864

namespace A270225

/-- `∩[A033200(n+1), A073534(n+1)]` -/
def P6059931757489542864.Spec : Prop :=
  ∀ n, (P6059931757489542864.a n : ℤ) = A270225 (n + 1)

end A270225

/-! ## A270225.P13291989572336018784

`∩[A033200(n+1), A238528(n+1)]`
-/

namespace A270225.P13291989572336018784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270225.P13291989572336018784

namespace A270225

/-- `∩[A033200(n+1), A238528(n+1)]` -/
def P13291989572336018784.Spec : Prop :=
  ∀ n, (P13291989572336018784.a n : ℤ) = A270225 (n + 1)

end A270225

/-! ## A270225.P5606065526699246371

`∩[A033200(n+1), A274212(n+1)]`
-/

namespace A270225.P5606065526699246371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270225.P5606065526699246371

namespace A270225

/-- `∩[A033200(n+1), A274212(n+1)]` -/
def P5606065526699246371.Spec : Prop :=
  ∀ n, (P5606065526699246371.a n : ℤ) = A270225 (n + 1)

end A270225

/-! ## A270225.P9569445143267553108

`∩[A033203(n+1), A274212(n+1)]`
-/

namespace A270225.P9569445143267553108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270225.P9569445143267553108

namespace A270225

/-- `∩[A033203(n+1), A274212(n+1)]` -/
def P9569445143267553108.Spec : Prop :=
  ∀ n, (P9569445143267553108.a n : ℤ) = A270225 (n + 1)

end A270225

/-! ## A270225.P18276525089622336836

`∩[A033200(n+1), A280590(n+1)]`
-/

namespace A270225.P18276525089622336836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270225.P18276525089622336836

namespace A270225

/-- `∩[A033200(n+1), A280590(n+1)]` -/
def P18276525089622336836.Spec : Prop :=
  ∀ n, (P18276525089622336836.a n : ℤ) = A270225 (n + 1)

end A270225

/-! ## A270225.P13248549350977756976

`∩[A378983(n+1), A033200(n+1)]`
-/

namespace A270225.P13248549350977756976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270225.P13248549350977756976

namespace A270225

/-- `∩[A378983(n+1), A033200(n+1)]` -/
def P13248549350977756976.Spec : Prop :=
  ∀ n, (P13248549350977756976.a n : ℤ) = A270225 (n + 1)

end A270225

/-!
# A270226: a(n) is the number of terms in the n-th block of consecutive integers of A136119.

The programs for A270226, there is no canonical definition to state claims against.
-/

/-! ## A270226.P7812639306798942479

`Δ[floor(2*sqrt(C(n, 2)))]+1`
-/

namespace A270226.P7812639306798942479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (Nat.choose n 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A270226.P7812639306798942479

/-! ## A270226.P10082903850086606515

`Δ[ceil(sqrt(4*C(n, 2)+1))]+1`
-/

namespace A270226.P10082903850086606515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (4 * Nat.choose n 2 + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A270226.P10082903850086606515

/-! ## A270226.P13504903549671783727

`Δ[floor(sqrt((n-1)*2*n))]+1`
-/

namespace A270226.P13504903549671783727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (((n : ℤ) - 1) * (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A270226.P13504903549671783727

/-! ## A270226.P6273137599628588917

`Δ[ceil(n*(n/a(n-1)+2))]` with `a(0)=2`
-/

namespace A270226.P6273137599628588917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌈(n : ℚ) * ((n : ℚ) / (f1 (n - 1) : ℚ) + 2)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270226.P6273137599628588917

/-! ## A270226.P228855366665234345

`Δ[n-floor(n-n*(n/a(n-1)+2))]` with `a(0)=2`
-/

namespace A270226.P228855366665234345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℤ) - ⌊(n : ℚ) - (n : ℚ) * ((n : ℚ) / (f1 (n - 1) : ℚ) + 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270226.P228855366665234345

/-! ## A270226.P4350691496977800279

`record[A338253(2*n)+1]%4`
-/

namespace A270226.P4350691496977800279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338253 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 4

end

end A270226.P4350691496977800279

/-! ## A270226.P6132806973007058417

`Δ[A064437(n+1)+floor(acot(n))]`
-/

namespace A270226.P6132806973007058417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270226.P6132806973007058417

/-!
# A270227: Array read by antidiagonals: T(n,m) is the number of matchings in the rook graph K_n X K_m.

The programs for A270227, there is no canonical definition to state claims against.
-/

/-! ## A270227.P11683032764386754373

`A300804(n+1)+A096661(A020113(n))`
-/

namespace A270227.P11683032764386754373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (n + 1) + A096661 (A020113 n).toNat

end

end A270227.P11683032764386754373

/-! ## A270227.P3992767759821444764

`A320371(n+1)-A244526(A003094(n))`
-/

namespace A270227.P3992767759821444764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (n + 1) - A244526 (A003094 n).toNat

end

end A270227.P3992767759821444764

/-! ## A270227.P1205534419938284298

`A255338(A223387(n+1)^A046542(n+1))`
-/

namespace A270227.P1205534419938284298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255338 (SequenceMachineLib.roundAway ((A223387 (n + 1) : ℚ) ^ (A046542 (n + 1) : ℤ))).toNat

end

end A270227.P1205534419938284298

/-! ## A270227.P15910495786644190994

`A255338(A046542(n+1)²²*A223387(n+1))`
-/

namespace A270227.P15910495786644190994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255338 ((A046542 (n + 1) ^ 2) ^ 2 * A223387 (n + 1)).toNat

end

end A270227.P15910495786644190994

/-!
# A270228: Number of matchings in the n X n rook graph K_n X K_n.

The programs for A270228, there is no canonical definition to state claims against.
-/

/-! ## A270228.P14548677042548468511

`A270227((n+1)²+n²)`
-/

namespace A270228.P14548677042548468511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270227 ((n + 1) ^ 2 + n ^ 2)

end

end A270228.P14548677042548468511

/-!
# A270229: Number of matchings in the 2 X n rook graph P_2 X K_n.

The programs for A270229, there is no canonical definition to state claims against.
-/

/-! ## A270229.P15784383132680702794

`A270227(A133263(n))`
-/

namespace A270229.P15784383132680702794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270227 (A133263 n).toNat

end

end A270229.P15784383132680702794

/-! ## A270229.P10919116961024345889

`A270227(A238531(n+1))`
-/

namespace A270229.P10919116961024345889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270227 (A238531 (n + 1)).toNat

end

end A270229.P10919116961024345889

/-! ## A270229.P8111363490588180532

`A270227(A134869(n+1)-n)`
-/

namespace A270229.P8111363490588180532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270227 (A134869 (n + 1) - (n : ℤ)).toNat

end

end A270229.P8111363490588180532

/-! ## A270229.P5388627377678305457

`A270227(A000124(n)-A057428(n))`
-/

namespace A270229.P5388627377678305457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270227 (A000124 n - A057428 n).toNat

end

end A270229.P5388627377678305457

/-! ## A270229.P14323780401484755110

`A270227(A000124(n)+A057428(n)²)`
-/

namespace A270229.P14323780401484755110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270227 (A000124 n + A057428 n ^ 2).toNat

end

end A270229.P14323780401484755110

/-!
# A270231: Smaller member of a twin prime pair with a perfect power sum.

The programs for A270231, there is no canonical definition to state claims against.
-/

/-! ## A270231.P16387521564279866928

`A119768(Δ[n²])`
-/

namespace A270231.P16387521564279866928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119768 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A270231.P16387521564279866928

/-! ## A270231.P11833850094592804501

`A119768(2*(n+1))-2`
-/

namespace A270231.P11833850094592804501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119768 (2 * (n + 1)) - 2

end

end A270231.P11833850094592804501

/-! ## A270231.P16546926295169596378

`A119767(n+1)/2-1`
-/

namespace A270231.P16546926295169596378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119767 (n + 1) : ℚ) / 2 - 1

end

end A270231.P16546926295169596378

/-! ## A270231.P14415654549903429392

`or(1, A119768(2*n+1))`
-/

namespace A270231.P14415654549903429392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A119768 (2 * n + 1))

end

end A270231.P14415654549903429392

/-! ## A270231.P1317845979202331031

`record[A119768(A093178(n))]`
-/

namespace A270231.P1317845979202331031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119768 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270231.P1317845979202331031

/-! ## A270231.P9208956869166336943

`record[A119768(n+1)/A000034(n)]`
-/

namespace A270231.P9208956869166336943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119768 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270231.P9208956869166336943

/-! ## A270231.P5218949337866412641

`record[A119768(A108918(n+1))]`
-/

namespace A270231.P5218949337866412641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119768 (A108918 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270231.P5218949337866412641

/-! ## A270231.P9915910777953843093

`∩[A091624(n+1), A119768(n+1)]`
-/

namespace A270231.P9915910777953843093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270231.P9915910777953843093

/-! ## A270231.P15091259448795100539

`∩[A001359(n+1), A091624(n+1)]`
-/

namespace A270231.P15091259448795100539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270231.P15091259448795100539

/-!
# A270232: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 133", based on the 5-celled von Neumann neighborhood.

The programs for A270232, there is no canonical definition to state claims against.
-/

/-! ## A270232.P16015712201803666347

`A270235(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270232.P16015712201803666347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270235 (n - 1) + a (n - 1)

end

end A270232.P16015712201803666347

/-! ## A270232.P14736643596097363684

`Δ[A270234(n)]-A270235(n)`
-/

namespace A270232.P14736643596097363684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270235 n

end

end A270232.P14736643596097363684

/-! ## A270232.P11417506521137767179

`A270234(n+1)-(A270235(n)+A270234(n))`
-/

namespace A270232.P11417506521137767179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270234 (n + 1) - (A270235 n + A270234 n)

end

end A270232.P11417506521137767179

/-! ## A270232.P10217333588728182846

`A270716(n)-A184955(A023434(n))`
-/

namespace A270232.P10217333588728182846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270716 n - A184955 (A023434 n).toNat

end

end A270232.P10217333588728182846

/-! ## A270232.P16502539456378445716

`A175386(A270716(n))`
-/

namespace A270232.P16502539456378445716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175386 (A270716 n).toNat

end

end A270232.P16502539456378445716

/-!
# A270233: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 133", based on the 5-celled von Neumann neighborhood.

The programs for A270233, there is no canonical definition to state claims against.
-/

/-! ## A270233.P1959402778537964045

`A270232(2^n-1)`
-/

namespace A270233.P1959402778537964045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270232 (2 ^ n - 1)

end

end A270233.P1959402778537964045

/-! ## A270233.P12691216313014726980

`record[A270232(A227351(n))]`
-/

namespace A270233.P12691216313014726980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270232 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270233.P12691216313014726980

/-! ## A270233.P308659933308579628

`record[A270232(A233276(n))]`
-/

namespace A270233.P308659933308579628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270232 (A233276 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270233.P308659933308579628

/-! ## A270233.P5500031733918183422

`record[A270232(A257250(n))]`
-/

namespace A270233.P5500031733918183422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270232 (A257250 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270233.P5500031733918183422

/-! ## A270233.P15696381833688141860

`and(-3, A270232(A000225(n)))`
-/

namespace A270233.P15696381833688141860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A270232 (A000225 n).toNat)

end

end A270233.P15696381833688141860

/-!
# A270234: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 133", based on the 5-celled von Neumann neighborhood.

The programs for A270234, there is no canonical definition to state claims against.
-/

/-! ## A270234.P139135538406058974

`∑[A270232(n)]`
-/

namespace A270234.P139135538406058974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270234.P139135538406058974

/-! ## A270234.P7195348827104278759

`∑[A270235(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270234.P7195348827104278759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270235 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270234.P7195348827104278759

/-! ## A270234.P5585221210541033617

`A270232(n%A270232(n))+a(n-1)` with `a(0)=1`
-/

namespace A270234.P5585221210541033617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270232 (Int.tmod (n : ℤ) (A270232 n)).toNat + a (n - 1)

end

end A270234.P5585221210541033617

/-! ## A270234.P854626142697284934

`A270232(lcm(n, A006530(n)))+a(n-1)` with `a(0)=1`
-/

namespace A270234.P854626142697284934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270232 (Int.lcm (n : ℤ) (A006530 n)) + a (n - 1)

end

end A270234.P854626142697284934

/-! ## A270234.P9850853909098563264

`A270232(n+1)+a(n-1)-A270235(n)` with `a(0)=1`
-/

namespace A270234.P9850853909098563264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270232 (n + 1) + (a (n - 1) - A270235 n)

end

end A270234.P9850853909098563264

/-!
# A270235: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 133", based on the 5-celled von Neumann neighborhood.

The programs for A270235, there is no canonical definition to state claims against.
-/

/-! ## A270235.P7567158091265255176

`Δ[A270232(n)]`
-/

namespace A270235.P7567158091265255176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270235.P7567158091265255176

/-! ## A270235.P10067365869002056284

`A270232(n+1)-A270232(n)`
-/

namespace A270235.P10067365869002056284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270232 (n + 1) - A270232 n

end

end A270235.P10067365869002056284

/-! ## A270235.P5356504165950637083

`A270719(n)-A184955(A275733(n))`
-/

namespace A270235.P5356504165950637083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270719 n - A184955 (A275733 n).toNat

end

end A270235.P5356504165950637083

/-! ## A270235.P8307052943574769004

`A270719(n)-A347689(A185135(n))`
-/

namespace A270235.P8307052943574769004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270719 n - A347689 (A185135 n).toNat

end

end A270235.P8307052943574769004

/-! ## A270235.P17092765525922273362

`Δ[A270716(n)-A184955(A023434(n))]`
-/

namespace A270235.P17092765525922273362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270716 n - A184955 (A023434 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270235.P17092765525922273362

/-!
# A270237: Primes which are the decimal concatenation of 1, a prime, and 1.

The programs for A270237, there is no canonical definition to state claims against.
-/

/-! ## A270237.P2510402164216374115

`∩[A077360(n+1), A099677(n+1)]`
-/

namespace A270237.P2510402164216374115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270237.P2510402164216374115

/-! ## A270237.P10107654904395976243

`A069691(A069687(n+1))`
-/

namespace A270237.P10107654904395976243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069691 (A069687 (n + 1)).toNat

end

end A270237.P10107654904395976243

/-! ## A270237.P2452841266476771253

`A252942(p?[A032682(n+1)])`
-/

namespace A270237.P2452841266476771253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252942 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270237.P2452841266476771253

/-! ## A270237.P16845739701640660169

`∩[A069686(n+1), A099677(n+1)]`
-/

namespace A270237.P16845739701640660169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270237.P16845739701640660169

/-! ## A270237.P12086307232727617445

`A252942(p?[A000040(n+1)*A090266(n+1)])`
-/

namespace A270237.P12086307232727617445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A090266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252942 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270237.P12086307232727617445

/-!
# A270239: Number of partitions of n unlabeled objects of 6 colors.

The programs for A270239, there is no canonical definition to state claims against.
-/

/-! ## A270239.P8894960650425253239

`record[A075196(A052905(n))]`
-/

namespace A270239.P8894960650425253239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270239.P8894960650425253239

/-! ## A270239.P16816314665120932886

`record[A075196(A034856(n+2)-3)]`
-/

namespace A270239.P16816314665120932886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 (A034856 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270239.P16816314665120932886

/-! ## A270239.P15930538866028397985

`record[gcd(A049600(n+6), A075196(n+1))]`
-/

namespace A270239.P15930538866028397985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049600 (n + 6)) (A075196 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270239.P15930538866028397985

/-! ## A270239.P1059592019418512893

`record[A075196(A005408(n)+A000096(n))]`
-/

namespace A270239.P1059592019418512893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 (A005408 n + A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270239.P1059592019418512893

/-! ## A270239.P11021168829275728230

`record[A075196(A008585(n)+A000124(n))]`
-/

namespace A270239.P11021168829275728230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 (A008585 n + A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270239.P11021168829275728230

/-! ## A270239.P12758507945058018707

`record[A075196(A008619(A028563(n)))]`
-/

namespace A270239.P12758507945058018707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 (A008619 (A028563 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270239.P12758507945058018707

/-!
# A270240: Number of partitions of n unlabeled objects of 7 colors.

The programs for A270240, there is no canonical definition to state claims against.
-/

/-! ## A270240.P16872160949628723333

`A075196(A055999(n+3))%∑[7^n+2]`
-/

namespace A270240.P16872160949628723333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075196 (A055999 (n + 3)).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A270240.P16872160949628723333

/-! ## A270240.P13392811022188716843

`gcd(C(2, n+2), A075196(A161680(n+7)-6))`
-/

namespace A270240.P13392811022188716843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A075196 (A161680 (n + 7) - 6).toNat)

end

end A270240.P13392811022188716843

/-! ## A270240.P16150339051295977296

`gcd(A000038(n), A075196(A055999(n+3)))`
-/

namespace A270240.P16150339051295977296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A075196 (A055999 (n + 3)).toNat)

end

end A270240.P16150339051295977296

/-! ## A270240.P6326680091396101399

`A075196(A161680(n+7)-6)^A062157(n)²`
-/

namespace A270240.P6326680091396101399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075196 (A161680 (n + 7) - 6).toNat : ℚ) ^ (A062157 n ^ 2 : ℤ)

end

end A270240.P6326680091396101399

/-! ## A270240.P3622311646180024821

`A075196(A161680(n+7)-6)%Δ[A057651(n)]`
-/

namespace A270240.P3622311646180024821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075196 (A161680 (n + 7) - 6).toNat) (f1 (n + 1) - f1 n)

end

end A270240.P3622311646180024821

/-! ## A270240.P15739928960456127956

`gcd(A075196(A161680(n+7)-6), A134746(2*n))`
-/

namespace A270240.P15739928960456127956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075196 (A161680 (n + 7) - 6).toNat) (A134746 (2 * n))

end

end A270240.P15739928960456127956

/-! ## A270240.P816008538445327584

`A075196(A161680(n+7)-6)^val(A147582(n+1), 4)`
-/

namespace A270240.P816008538445327584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 (A161680 (n + 7) - 6).toNat ^ SequenceMachineLib.valuation (A147582 (n + 1)).toNat 4

end

end A270240.P816008538445327584

/-! ## A270240.P14370391424722341164

`A075196(A055999(n+3))^A001222(A181363(2*n+1))`
-/

namespace A270240.P14370391424722341164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075196 (A055999 (n + 3)).toNat : ℚ) ^ (A001222 (A181363 (2 * n + 1)).toNat : ℤ)

end

end A270240.P14370391424722341164

/-! ## A270240.P6177988657313549802

`A075196(A161680(n+7)-6)^A046665(A071044(2*n+1))`
-/

namespace A270240.P6177988657313549802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075196 (A161680 (n + 7) - 6).toNat : ℚ) ^ (A046665 (A071044 (2 * n + 1)).toNat : ℤ)

end

end A270240.P6177988657313549802

/-!
# A270242: Number of partitions of n unlabeled objects of 9 colors.

The programs for A270242, there is no canonical definition to state claims against.
-/

/-! ## A270242.P4432583212744728736

`A305425(A005408(n)*A123887(n))`
-/

namespace A270242.P4432583212744728736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (A005408 n * A123887 n).toNat

end

end A270242.P4432583212744728736

/-!
# A270246: Array read by antidiagonals: T(n,m) is the number of matchings in the torus grid graph C_n X C_m.

The programs for A270246, there is no canonical definition to state claims against.
-/

/-! ## A270246.P9120188028953630801

`A300208(n+1)-A245938(∑[2*n])`
-/

namespace A270246.P9120188028953630801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300208 (n + 1) - A245938 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270246.P9120188028953630801

/-! ## A270246.P14152822998026578550

`A300215(n+1)-A102683(2^n+3^n)`
-/

namespace A270246.P14152822998026578550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (n + 1) - A102683 (2 ^ n + 3 ^ n)

end

end A270246.P14152822998026578550

/-! ## A270246.P13906832157491450222

`A342982(n)+A001221(A020515(n))`
-/

namespace A270246.P13906832157491450222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342982 n + A001221 (A020515 n).toNat

end

end A270246.P13906832157491450222

/-! ## A270246.P8085517548955964179

`A213418(n+1)-A025426(A030195(n))`
-/

namespace A270246.P8085517548955964179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213418 (n + 1) - A025426 (A030195 n).toNat

end

end A270246.P8085517548955964179

/-! ## A270246.P10542774109657518476

`A302010(n+1)-A379129(A005095(n))`
-/

namespace A270246.P10542774109657518476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (n + 1) - A379129 (A005095 n).toNat

end

end A270246.P10542774109657518476

/-!
# A270247: Number of matchings in the n X n torus grid graph C_n X C_n.

The programs for A270247, there is no canonical definition to state claims against.
-/

/-! ## A270247.P11737802917191917098

`A270246(∑[4*n]+1)`
-/

namespace A270247.P11737802917191917098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270246 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A270247.P11737802917191917098

/-! ## A270247.P11035680956911085999

`record[and(A185917(n+1), A270246(n+1))]`
-/

namespace A270247.P11035680956911085999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A270246 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270247.P11035680956911085999

/-! ## A270247.P810364102069276877

`gcd(A000038(n), A270246(A001844(n)))`
-/

namespace A270247.P810364102069276877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A270246 (A001844 n).toNat)

end

end A270247.P810364102069276877

/-! ## A270247.P1217611106747302282

`A270246(A001844(n))^A341847(n)`
-/

namespace A270247.P1217611106747302282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270246 (A001844 n).toNat : ℚ) ^ (A341847 n : ℤ)

end

end A270247.P1217611106747302282

/-! ## A270247.P3008944651847927950

`A270246(A001844(n))^A341850(n)`
-/

namespace A270247.P3008944651847927950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270246 (A001844 n).toNat : ℚ) ^ (A341850 n : ℤ)

end

end A270247.P3008944651847927950

/-!
# A270248: Even Löschian numbers.

The programs for A270248, the canonical program `A270248.P13305958007717822557` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270248 has offset 1).

The definition of A270248 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270050, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A270248.P13305958007717822557

`2*A270050(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A270248

/-- `2*A270050(n+1)` -/
def P13305958007717822557.Spec : Prop :=
  ∀ n, P13305958007717822557.a n = A270248 (n + 1)

theorem P13305958007717822557.correct : P13305958007717822557.Spec := by
  intro n
  simp only [A270248, Nat.add_sub_cancel]

end A270248

/-! ## A270248.P13428523287988589581

`4*A003136(n+1)`
-/

namespace A270248.P13428523287988589581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003136 (n + 1)

end

end A270248.P13428523287988589581

namespace A270248

/-- `4*A003136(n+1)` -/
def P13428523287988589581.Spec : Prop :=
  ∀ n, P13428523287988589581.a n = A270248 (n + 1)

theorem P13428523287988589581.correct : P13428523287988589581.Spec := by
  intro n
  simp only [A270248, Nat.add_sub_cancel, A270248.P13428523287988589581.a, A270248.P13305958007717822557.a, A003136, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A270050, A270050.P15374850051776029815.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P3713491471241087217.a, A069011, A069011.P9337676359071489470.a, A079904, A079904.P1795222969403769225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270248

/-! ## A270248.P927250231174200977

`4*lt[0, A033716(n)]`
-/

namespace A270248.P927250231174200977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270248.P927250231174200977

namespace A270248

/-- `4*lt[0, A033716(n)]` -/
def P927250231174200977.Spec : Prop :=
  ∀ n, (P927250231174200977.a n : ℤ) = A270248 (n + 1)

end A270248

/-! ## A270248.P2173151985728422503

`4*eq[1, A353816(n)]`
-/

namespace A270248.P2173151985728422503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270248.P2173151985728422503

namespace A270248

/-- `4*eq[1, A353816(n)]` -/
def P2173151985728422503.Spec : Prop :=
  ∀ n, (P2173151985728422503.a n : ℤ) = A270248 (n + 1)

theorem P2173151985728422503.correct : P2173151985728422503.Spec := by
  intro n
  simp only [A270248, Nat.add_sub_cancel, A270248.P2173151985728422503.f1, A270248.P2173151985728422503.f2, A270248.P2173151985728422503.a, A270248.P13305958007717822557.a, A270050, A270050.P15374850051776029815.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A003136, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A132111, A132111.P3713491471241087217.a, A069011, A069011.P9337676359071489470.a, A079904, A079904.P1795222969403769225.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A076110, A076110.P10148523856418061428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A270248

/-! ## A270248.P17369640771145965528

`4/3*A270672(n+1)`
-/

namespace A270248.P17369640771145965528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A270672 (n + 1) : ℚ)

end

end A270248.P17369640771145965528

namespace A270248

/-- `4/3*A270672(n+1)` -/
def P17369640771145965528.Spec : Prop :=
  ∀ n, P17369640771145965528.a n = (A270248 (n + 1) : ℚ)

theorem P17369640771145965528.correct : P17369640771145965528.Spec := by
  intro n
  simp only [A270248, Nat.add_sub_cancel, A270248.P17369640771145965528.a, A270248.P13305958007717822557.a, A270050, A270050.P15374850051776029815.a, A270672, A270672.P7077653201386938758.a, A003136, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P3713491471241087217.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270248

/-! ## A270248.P801743737587327211

`A270672(n+1)+A003136(n+1)`
-/

namespace A270248.P801743737587327211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270672 (n + 1) + A003136 (n + 1)

end

end A270248.P801743737587327211

namespace A270248

/-- `A270672(n+1)+A003136(n+1)` -/
def P801743737587327211.Spec : Prop :=
  ∀ n, P801743737587327211.a n = A270248 (n + 1)

theorem P801743737587327211.correct : P801743737587327211.Spec := by
  intro n
  simp only [A270248, Nat.add_sub_cancel, A270248.P801743737587327211.a, A270248.P13305958007717822557.a, A003136, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A270050, A270050.P15374850051776029815.a, A270672, A270672.P7077653201386938758.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P3713491471241087217.a, A069011, A069011.P9337676359071489470.a, A079904, A079904.P1795222969403769225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270248

/-! ## A270248.P16560079497571784754

`A003136(n+1)/(A054977(n)/2)²`
-/

namespace A270248.P16560079497571784754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003136 (n + 1) : ℚ) / ((A054977 n : ℚ) / 2) ^ 2

end

end A270248.P16560079497571784754

namespace A270248

/-- `A003136(n+1)/(A054977(n)/2)²` -/
def P16560079497571784754.Spec : Prop :=
  ∀ n, P16560079497571784754.a n = (A270248 (n + 1) : ℚ)

end A270248

/-! ## A270248.P6163632677637096067

`A003136(n+1)/(A158388(n)/2)²`
-/

namespace A270248.P6163632677637096067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003136 (n + 1) : ℚ) / ((A158388 n : ℚ) / 2) ^ 2

end

end A270248.P6163632677637096067

namespace A270248

/-- `A003136(n+1)/(A158388(n)/2)²` -/
def P6163632677637096067.Spec : Prop :=
  ∀ n, P6163632677637096067.a n = (A270248 (n + 1) : ℚ)

end A270248

/-! ## A270248.P14550935096897756740

`A270672(n+1)+A270050(n+1)/2`
-/

namespace A270248.P14550935096897756740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270672 (n + 1) : ℚ) + (A270050 (n + 1) : ℚ) / 2

end

end A270248.P14550935096897756740

namespace A270248

/-- `A270672(n+1)+A270050(n+1)/2` -/
def P14550935096897756740.Spec : Prop :=
  ∀ n, P14550935096897756740.a n = (A270248 (n + 1) : ℚ)

theorem P14550935096897756740.correct : P14550935096897756740.Spec := by
  intro n
  simp only [A270248, Nat.add_sub_cancel, A270248.P14550935096897756740.a, A270248.P13305958007717822557.a, A270050, A270050.P15374850051776029815.a, A270672, A270672.P7077653201386938758.a, A003136, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P3713491471241087217.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270248

/-! ## A270248.P1545998022513484782

`A003136(n+1)+A270050(n+1)+A003136(n+1)`
-/

namespace A270248.P1545998022513484782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1) + (A270050 (n + 1) + A003136 (n + 1))

end

end A270248.P1545998022513484782

namespace A270248

/-- `A003136(n+1)+A270050(n+1)+A003136(n+1)` -/
def P1545998022513484782.Spec : Prop :=
  ∀ n, P1545998022513484782.a n = A270248 (n + 1)

theorem P1545998022513484782.correct : P1545998022513484782.Spec := by
  intro n
  simp only [A270248, Nat.add_sub_cancel, A270248.P1545998022513484782.a, A270248.P13305958007717822557.a, A003136, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A270050, A270050.P15374850051776029815.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P3713491471241087217.a, A069011, A069011.P9337676359071489470.a, A079904, A079904.P1795222969403769225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270248

/-! ## A270248.P9448375717759178646

`∩[2*n, A020677(n+1)]`
-/

namespace A270248.P9448375717759178646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270248.P9448375717759178646

namespace A270248

/-- `∩[2*n, A020677(n+1)]` -/
def P9448375717759178646.Spec : Prop :=
  ∀ n, (P9448375717759178646.a n : ℤ) = A270248 (n + 1)

end A270248

/-! ## A270248.P2063266235740783523

`∩[2*n, A272933(n+1)]`
-/

namespace A270248.P2063266235740783523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270248.P2063266235740783523

namespace A270248

/-- `∩[2*n, A272933(n+1)]` -/
def P2063266235740783523.Spec : Prop :=
  ∀ n, (P2063266235740783523.a n : ℤ) = A270248 (n + 1)

end A270248

/-! ## A270248.P6328273361192040201

`filter[A020677(n+1), A121262(#)]`
-/

namespace A270248.P6328273361192040201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A270248.P6328273361192040201

namespace A270248

/-- `filter[A020677(n+1), A121262(#)]` -/
def P6328273361192040201.Spec : Prop :=
  ∀ n, P6328273361192040201.a n = A270248 (n + 1)

end A270248

/-! ## A270248.P10764276649013311490

`filter[A020677(n+1), A354034(#)]`
-/

namespace A270248.P10764276649013311490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A270248.P10764276649013311490

namespace A270248

/-- `filter[A020677(n+1), A354034(#)]` -/
def P10764276649013311490.Spec : Prop :=
  ∀ n, P10764276649013311490.a n = A270248 (n + 1)

end A270248

/-! ## A270248.P11094612845140585494

`filter[A272933(n+1), A121262(#)]`
-/

namespace A270248.P11094612845140585494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A270248.P11094612845140585494

namespace A270248

/-- `filter[A272933(n+1), A121262(#)]` -/
def P11094612845140585494.Spec : Prop :=
  ∀ n, P11094612845140585494.a n = A270248 (n + 1)

end A270248

/-! ## A270248.P5487185426227943838

`filter[A267958(n+1), A353816(#)]`
-/

namespace A270248.P5487185426227943838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A270248.P5487185426227943838

namespace A270248

/-- `filter[A267958(n+1), A353816(#)]` -/
def P5487185426227943838.Spec : Prop :=
  ∀ n, P5487185426227943838.a n = A270248 (n + 1)

end A270248

/-! ## A270248.P5347028664474863329

`∩[2*n, A034022(n+1)]`
-/

namespace A270248.P5347028664474863329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270248.P5347028664474863329

namespace A270248

/-- `∩[2*n, A034022(n+1)]` -/
def P5347028664474863329.Spec : Prop :=
  ∀ n, (P5347028664474863329.a n : ℤ) = A270248 (n + 1)

end A270248

/-! ## A270248.P12585134099395855175

`filter[A034022(n+1), A121262(#)]`
-/

namespace A270248.P12585134099395855175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A270248.P12585134099395855175

namespace A270248

/-- `filter[A034022(n+1), A121262(#)]` -/
def P12585134099395855175.Spec : Prop :=
  ∀ n, P12585134099395855175.a n = A270248 (n + 1)

end A270248

/-! ## A270248.P5239553237013540754

`A003136(A024608(n+1))`
-/

namespace A270248.P5239553237013540754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (A024608 (n + 1)).toNat

end

end A270248.P5239553237013540754

namespace A270248

/-- `A003136(A024608(n+1))` -/
def P5239553237013540754.Spec : Prop :=
  ∀ n, P5239553237013540754.a n = A270248 (n + 1)

end A270248

/-!
# A270251: Number of n X n X n triangular 0..2 arrays with some element plus some adjacent element totalling 2 exactly once.

The programs for A270251, there is no canonical definition to state claims against.
-/

/-! ## A270251.P4433642278076037346

`A270256(∑[n+2])`
-/

namespace A270251.P4433642278076037346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270251.P4433642278076037346

/-! ## A270251.P9741298392699771470

`record[A270256(∑[A152271(n)])]`
-/

namespace A270251.P9741298392699771470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270251.P9741298392699771470

/-! ## A270251.P9007022879124466240

`record[A270256(A347633(n+1)+1)]`
-/

namespace A270251.P9007022879124466240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A347633 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270251.P9007022879124466240

/-! ## A270251.P3132638007556985670

`record[A097806(n)*A270256(n+1)]`
-/

namespace A270251.P3132638007556985670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A270256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270251.P3132638007556985670

/-! ## A270251.P8954104510167911903

`record[A127701(n+1)*A270256(n+1)]`
-/

namespace A270251.P8954104510167911903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127701 (n + 1) * A270256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270251.P8954104510167911903

/-!
# A270252: Number of nXnXn triangular 0..3 arrays with some element plus some adjacent element totalling 3 exactly once.

The programs for A270252, there is no canonical definition to state claims against.
-/

/-! ## A270252.P9042926121854351237

`A270256(∑[n+3]+1)`
-/

namespace A270252.P9042926121854351237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A270252.P9042926121854351237

/-! ## A270252.P1241047339885205672

`record[A270256(A198464(n+1))]`
-/

namespace A270252.P1241047339885205672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270252.P1241047339885205672

/-! ## A270252.P3058593129478292169

`record[A270256(A347633(n+1))]`
-/

namespace A270252.P3058593129478292169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270252.P3058593129478292169

/-! ## A270252.P11734581304355290467

`lcm(2, A270256(eq[2, A048004(n)]))`
-/

namespace A270252.P11734581304355290467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A270256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A270252.P11734581304355290467

/-! ## A270252.P11426284656175163152

`record[A010054(n+3)*A270256(n+1)]`
-/

namespace A270252.P11426284656175163152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A270256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270252.P11426284656175163152

/-!
# A270253: Number of nXnXn triangular 0..4 arrays with some element plus some adjacent element totalling 4 exactly once.

The programs for A270253, there is no canonical definition to state claims against.
-/

/-! ## A270253.P18151514401065005902

`A270256(A141214(n+1))`
-/

namespace A270253.P18151514401065005902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A141214 (n + 1)).toNat

end

end A270253.P18151514401065005902

/-! ## A270253.P2509212999277826158

`A270256(A155212(n)+5)`
-/

namespace A270253.P2509212999277826158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A155212 n + 5).toNat

end

end A270253.P2509212999277826158

/-! ## A270253.P10434515636963061452

`A270256(A056000(n)+7)`
-/

namespace A270253.P10434515636963061452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A056000 n + 7).toNat

end

end A270253.P10434515636963061452

/-! ## A270253.P9897474369389247257

`A270256(eq[3, A193592(n)])`
-/

namespace A270253.P9897474369389247257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270253.P9897474369389247257

/-! ## A270253.P5765040586403011838

`A270256(eq[4, A052509(n)])`
-/

namespace A270253.P5765040586403011838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270253.P5765040586403011838

/-!
# A270254: Number of nXnXn triangular 0..5 arrays with some element plus some adjacent element totalling 5 exactly once.

The programs for A270254, there is no canonical definition to state claims against.
-/

/-! ## A270254.P17648063881527432136

`A270256(Δ[A264443(n)])`
-/

namespace A270254.P17648063881527432136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (f1 (n + 1) - f1 n).toNat

end

end A270254.P17648063881527432136

/-! ## A270254.P14529578471146783123

`A270256(A056115(n)+11)`
-/

namespace A270254.P14529578471146783123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A056115 n + 11).toNat

end

end A270254.P14529578471146783123

/-! ## A270254.P9519385577099047564

`A270256(eq[4, A193592(n)])`
-/

namespace A270254.P9519385577099047564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270254.P9519385577099047564

/-! ## A270254.P15607732672265127478

`A270256(Δ[A023545(n+1)])`
-/

namespace A270254.P15607732672265127478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (f1 (n + 1) - f1 n).toNat

end

end A270254.P15607732672265127478

/-! ## A270254.P8382155266530843301

`A270256(eq[5, A200370(n+1)])`
-/

namespace A270254.P8382155266530843301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270254.P8382155266530843301

/-!
# A270255: Number of nXnXn triangular 0..6 arrays with some element plus some adjacent element totalling 6 exactly once.

The programs for A270255, there is no canonical definition to state claims against.
-/

/-! ## A270255.P232837113321818081

`A270256(A052905(n+3))`
-/

namespace A270255.P232837113321818081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A052905 (n + 3)).toNat

end

end A270255.P232837113321818081

/-! ## A270255.P15447917944575465742

`A270256(eq[5, A193592(n)])`
-/

namespace A270255.P15447917944575465742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270255.P15447917944575465742

/-! ## A270255.P13759098386138582434

`A270256(eq[6, A200370(n+1)])`
-/

namespace A270255.P13759098386138582434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270255.P13759098386138582434

/-! ## A270255.P2806093192516980877

`A270256(eq[8, A185782(n+1)])`
-/

namespace A270255.P2806093192516980877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270255.P2806093192516980877

/-!
# A270256: T(n,k)=Number of nXnXn triangular 0..k arrays with some element plus some adjacent element totalling k exactly once.

The programs for A270256, there is no canonical definition to state claims against.
-/

/-! ## A270256.P6560329503305587019

`6*A250090(A379712(n))`
-/

namespace A270256.P6560329503305587019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A250090 (A379712 n).toNat

end

end A270256.P6560329503305587019

/-! ## A270256.P507540360296959313

`lcm(A022559(n), A253380(A143086(n)))`
-/

namespace A270256.P507540360296959313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A022559 n) (A253380 (A143086 n).toNat)

end

end A270256.P507540360296959313

/-! ## A270256.P1771879365308390587

`A331428(A260791(n+1)-3)`
-/

namespace A270256.P1771879365308390587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331428 (A260791 (n + 1) - 3).toNat

end

end A270256.P1771879365308390587

/-! ## A270256.P9361762632522062648

`6*A339895(A079935(n+1))`
-/

namespace A270256.P9361762632522062648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A339895 (A079935 (n + 1)).toNat

end

end A270256.P9361762632522062648

/-! ## A270256.P13450190944088760117

`A004247(n)*A137619(A143461(n))`
-/

namespace A270256.P13450190944088760117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n * A137619 (A143461 n).toNat

end

end A270256.P13450190944088760117

/-!
# A270257: Number of 2X2X2 triangular 0..n arrays with some element plus some adjacent element totalling n exactly once.

The programs for A270257, the canonical program `A270257.P4051801681679246845` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270257 has offset 1).

The definition of A270257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270257.P4051801681679246845

`∑[12*ceil(n/2)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A270257

/-- `∑[12*ceil(n/2)]` -/
def P4051801681679246845.Spec : Prop :=
  ∀ n, P4051801681679246845.a n = A270257 (n + 1)

theorem P4051801681679246845.correct : P4051801681679246845.Spec := by
  intro n
  simp only [A270257, Nat.add_sub_cancel]

end A270257

/-! ## A270257.P2348610578724845269

`12*∑[∑[n%2]]`
-/

namespace A270257.P2348610578724845269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270257.P2348610578724845269

namespace A270257

/-- `12*∑[∑[n%2]]` -/
def P2348610578724845269.Spec : Prop :=
  ∀ n, (P2348610578724845269.a n : ℤ) = A270257 (n + 1)

end A270257

/-! ## A270257.P4970965586369048007

`12*∑[∑[and(1, n)]]`
-/

namespace A270257.P4970965586369048007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270257.P4970965586369048007

namespace A270257

/-- `12*∑[∑[and(1, n)]]` -/
def P4970965586369048007.Spec : Prop :=
  ∀ n, (P4970965586369048007.a n : ℤ) = A270257 (n + 1)

end A270257

/-! ## A270257.P1604263759391345413

`12*∑[∑[char[or(1, n)]]]`
-/

namespace A270257.P1604263759391345413
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270257.P1604263759391345413

namespace A270257

/-- `12*∑[∑[char[or(1, n)]]]` -/
def P1604263759391345413.Spec : Prop :=
  ∀ n, (P1604263759391345413.a n : ℤ) = A270257 (n + 1)

end A270257

/-! ## A270257.P12464414621235655443

`3*and((n+1)², -2)`
-/

namespace A270257.P12464414621235655443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.land ((n + 1) ^ 2 : ℤ) (-2)

end

end A270257.P12464414621235655443

namespace A270257

/-- `3*and((n+1)², -2)` -/
def P12464414621235655443.Spec : Prop :=
  ∀ n, P12464414621235655443.a n = A270257 (n + 1)

end A270257

/-! ## A270257.P751188662545007610

`3*(or(1, (n+1)²)-1)`
-/

namespace A270257.P751188662545007610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((Nat.lor 1 ((n + 1) ^ 2) : ℤ) - 1)

end

end A270257.P751188662545007610

namespace A270257

/-- `3*(or(1, (n+1)²)-1)` -/
def P751188662545007610.Spec : Prop :=
  ∀ n, P751188662545007610.a n = A270257 (n + 1)

end A270257

/-! ## A270257.P7493905612989727209

`a(n-2)+12*n` with `a(0)=0, a(1)=12`
-/

namespace A270257.P7493905612989727209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n a =>
  a (n - 2) + 12 * n

end

end A270257.P7493905612989727209

namespace A270257

/-- `a(n-2)+12*n` -/
def P7493905612989727209.Spec : Prop :=
  ∀ n, (P7493905612989727209.a n : ℤ) = A270257 (n + 1)

end A270257

/-! ## A270257.P15559941219549576162

`3*xor(1, or(1, (n+1)²))`
-/

namespace A270257.P15559941219549576162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.xor 1 (Nat.lor 1 ((n + 1) ^ 2))

end

end A270257.P15559941219549576162

namespace A270257

/-- `3*xor(1, or(1, (n+1)²))` -/
def P15559941219549576162.Spec : Prop :=
  ∀ n, (P15559941219549576162.a n : ℤ) = A270257 (n + 1)

end A270257

/-! ## A270257.P17657379255200256259

`∑[12*n]-a(n-1)` with `a(0)=0`
-/

namespace A270257.P17657379255200256259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A270257.P17657379255200256259

namespace A270257

/-- `∑[12*n]-a(n-1)` -/
def P17657379255200256259.Spec : Prop :=
  ∀ n, P17657379255200256259.a n = A270257 (n + 1)

end A270257

/-! ## A270257.P1394384854824031950

`and(3*record[(n-1)²], -4)`
-/

namespace A270257.P1394384854824031950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (-4)

end

end A270257.P1394384854824031950

namespace A270257

/-- `and(3*record[(n-1)²], -4)` -/
def P1394384854824031950.Spec : Prop :=
  ∀ n, P1394384854824031950.a n = A270257 (n + 1)

end A270257

/-! ## A270257.P9039418160521786795

`6*floor(C(n+1, n)²/2)`
-/

namespace A270257.P9039418160521786795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌊(Nat.choose (n + 1) n ^ 2 : ℚ) / 2⌋

end

end A270257.P9039418160521786795

namespace A270257

/-- `6*floor(C(n+1, n)²/2)` -/
def P9039418160521786795.Spec : Prop :=
  ∀ n, P9039418160521786795.a n = A270257 (n + 1)

end A270257

/-! ## A270257.P15535598650974056926

`6*∑[val(n²+1, 2)+n]`
-/

namespace A270257.P15535598650974056926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n ^ 2 + 1) 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270257.P15535598650974056926

namespace A270257

/-- `6*∑[val(n²+1, 2)+n]` -/
def P15535598650974056926.Spec : Prop :=
  ∀ n, (P15535598650974056926.a n : ℤ) = A270257 (n + 1)

end A270257

/-! ## A270257.P11740093985956787989

`3*or(1, ∑[2*n+1])-3`
-/

namespace A270257.P11740093985956787989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 3

end

end A270257.P11740093985956787989

namespace A270257

/-- `3*or(1, ∑[2*n+1])-3` -/
def P11740093985956787989.Spec : Prop :=
  ∀ n, P11740093985956787989.a n = A270257 (n + 1)

end A270257

/-! ## A270257.P13566629157248939353

`3*((n+1)²-(n+1)%2)`
-/

namespace A270257.P13566629157248939353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((n + 1) ^ 2 : ℤ) - (((n + 1) % 2 : ℕ) : ℤ))

end

end A270257.P13566629157248939353

namespace A270257

/-- `3*((n+1)²-(n+1)%2)` -/
def P13566629157248939353.Spec : Prop :=
  ∀ n, P13566629157248939353.a n = A270257 (n + 1)

end A270257

/-! ## A270257.P4963975854705221541

`and((n+1)*3*(n+1), -4)`
-/

namespace A270257.P4963975854705221541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) * (3 * (n + 1)) : ℤ) (-4)

end

end A270257.P4963975854705221541

namespace A270257

/-- `and((n+1)*3*(n+1), -4)` -/
def P4963975854705221541.Spec : Prop :=
  ∀ n, P4963975854705221541.a n = A270257 (n + 1)

end A270257

/-! ## A270257.P13939764773259059497

`3*(A080335(n)-1)`
-/

namespace A270257.P13939764773259059497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A080335 n - 1)

end

end A270257.P13939764773259059497

namespace A270257

/-- `3*(A080335(n)-1)` -/
def P13939764773259059497.Spec : Prop :=
  ∀ n, P13939764773259059497.a n = A270257 (n + 1)

end A270257

/-! ## A270257.P18373189115692386118

`3*(1-A141354(n))`
-/

namespace A270257.P18373189115692386118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (1 - A141354 n)

end

end A270257.P18373189115692386118

namespace A270257

/-- `3*(1-A141354(n))` -/
def P18373189115692386118.Spec : Prop :=
  ∀ n, P18373189115692386118.a n = A270257 (n + 1)

end A270257

/-! ## A270257.P3017243997096450928

`3/2*A139598(n)`
-/

namespace A270257.P3017243997096450928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A139598 n : ℚ)

end

end A270257.P3017243997096450928

namespace A270257

/-- `3/2*A139598(n)` -/
def P3017243997096450928.Spec : Prop :=
  ∀ n, P3017243997096450928.a n = (A270257 (n + 1) : ℚ)

end A270257

/-! ## A270257.P8367301408690602435

`4*(A397990(n)+n)`
-/

namespace A270257.P8367301408690602435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A397990 n + (n : ℤ))

end

end A270257.P8367301408690602435

namespace A270257

/-- `4*(A397990(n)+n)` -/
def P8367301408690602435.Spec : Prop :=
  ∀ n, P8367301408690602435.a n = A270257 (n + 1)

end A270257

/-! ## A270257.P14824708058186449717

`3*(A181106(n+1)+1)`
-/

namespace A270257.P14824708058186449717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A181106 (n + 1) + 1)

end

end A270257.P14824708058186449717

namespace A270257

/-- `3*(A181106(n+1)+1)` -/
def P14824708058186449717.Spec : Prop :=
  ∀ n, P14824708058186449717.a n = A270257 (n + 1)

end A270257

/-!
# A270258: Number of 3X3X3 triangular 0..n arrays with some element plus some adjacent element totalling n exactly once.

The programs for A270258, there is no canonical definition to state claims against.
-/

/-! ## A270258.P11517353148649472838

`A270256(∑[n+2]+4)`
-/

namespace A270258.P11517353148649472838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A270258.P11517353148649472838

/-! ## A270258.P10442222483394774324

`lcm(2, A270256(A167614(n+1)))`
-/

namespace A270258.P10442222483394774324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A270256 (A167614 (n + 1)).toNat)

end

end A270258.P10442222483394774324

/-! ## A270258.P12800710479927801580

`A270256(A167614(n+1))+A064459(n)`
-/

namespace A270258.P12800710479927801580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A167614 (n + 1)).toNat + A064459 n

end

end A270258.P12800710479927801580

/-! ## A270258.P16165825274056404998

`A270256(A167614(n+1))+A185037(n)`
-/

namespace A270258.P16165825274056404998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A167614 (n + 1)).toNat + A185037 n

end

end A270258.P16165825274056404998

/-! ## A270258.P7566625094065125720

`A326680(n)+A270256(A167614(n+1))`
-/

namespace A270258.P7566625094065125720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326680 n + A270256 (A167614 (n + 1)).toNat

end

end A270258.P7566625094065125720

/-!
# A270259: Number of 4X4X4 triangular 0..n arrays with some element plus some adjacent element totalling n exactly once.

The programs for A270259, there is no canonical definition to state claims against.
-/

/-! ## A270259.P15741986367438997869

`A270256(A141214(n)+7)`
-/

namespace A270259.P15741986367438997869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A141214 n + 7).toNat

end

end A270259.P15741986367438997869

/-! ## A270259.P17181368546514901630

`A270256(A052905(n)+9)`
-/

namespace A270259.P17181368546514901630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A052905 n + 9).toNat

end

end A270259.P17181368546514901630

/-! ## A270259.P11930351820236115987

`A270256(A055999(n)+10)`
-/

namespace A270259.P11930351820236115987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A055999 n + 10).toNat

end

end A270259.P11930351820236115987

/-! ## A270259.P8622743363523745785

`A270256(A167614(n+2)+1)`
-/

namespace A270259.P8622743363523745785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A167614 (n + 2) + 1).toNat

end

end A270259.P8622743363523745785

/-! ## A270259.P222112034865241082

`A270256(A166136(n+2)-2)`
-/

namespace A270259.P222112034865241082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A166136 (n + 2) - 2).toNat

end

end A270259.P222112034865241082

/-!
# A270260: Number of 5X5X5 triangular 0..n arrays with some element plus some adjacent element totalling n exactly once.

The programs for A270260, there is no canonical definition to state claims against.
-/

/-! ## A270260.P13805120107725866203

`A270256(A167499(n+3))`
-/

namespace A270260.P13805120107725866203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A167499 (n + 3)).toNat

end

end A270260.P13805120107725866203

/-! ## A270260.P2922434028356154975

`A270256(A155212(n)+13)`
-/

namespace A270260.P2922434028356154975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A155212 n + 13).toNat

end

end A270260.P2922434028356154975

/-! ## A270260.P11829875393913515912

`A270256(A056000(n)+15)`
-/

namespace A270260.P11829875393913515912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A056000 n + 15).toNat

end

end A270260.P11829875393913515912

/-! ## A270260.P152357638230368291

`A270256(eq[7, A066657(n)])`
-/

namespace A270260.P152357638230368291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270260.P152357638230368291

/-! ## A270260.P17877524776003194508

`A270256(eq[6, A131818(n+1)])`
-/

namespace A270260.P17877524776003194508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270260.P17877524776003194508

/-!
# A270261: Number of 6X6X6 triangular 0..n arrays with some element plus some adjacent element totalling n exactly once.

The programs for A270261, there is no canonical definition to state claims against.
-/

/-! ## A270261.P1722303421789191263

`A270256(A166136(n+4))`
-/

namespace A270261.P1722303421789191263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A166136 (n + 4)).toNat

end

end A270261.P1722303421789191263

/-! ## A270261.P6588777581546805986

`A270256(eq[7, A131818(n+1)])`
-/

namespace A270261.P6588777581546805986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270261.P6588777581546805986

/-!
# A270262: 

The programs for A270262, there is no canonical definition to state claims against.
-/

/-! ## A270262.P449571576036765402

`A270256(A167499(n+5)+2)`
-/

namespace A270262.P449571576036765402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A167499 (n + 5) + 2).toNat

end

end A270262.P449571576036765402

/-! ## A270262.P16026555823692416023

`A270256(eq[8, A131818(n+1)])`
-/

namespace A270262.P16026555823692416023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270262.P16026555823692416023

/-!
# A270264: The cumulative sum of the digits of successive terms reproduces the prime number sequence; this is the lexicographically earliest sequence with this property.

The programs for A270264, there is no canonical definition to state claims against.
-/

/-! ## A270264.P11332070872466790659

`A001202(A278032(n+1)+1)`
-/

namespace A270264.P11332070872466790659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A278032 (n + 1) + 1).toNat

end

end A270264.P11332070872466790659

/-! ## A270264.P11795688213595085639

`xor(n+1, A193592(A225895(n+1)))`
-/

namespace A270264.P11795688213595085639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A193592 (A225895 (n + 1)).toNat)

end

end A270264.P11795688213595085639

/-!
# A270266: Numbers that are values of the reduced totient function (A002174) but not of the totient function (A002202).

The programs for A270266, there is no canonical definition to state claims against.
-/

/-! ## A270266.P5302275139126958284

`∩[A002174(n+1), A005277(n+1)]`
-/

namespace A270266.P5302275139126958284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270266.P5302275139126958284

/-! ## A270266.P18146455404772264557

`∩[2*A079695(n+1), A002174(n+1)]`
-/

namespace A270266.P18146455404772264557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270266.P18146455404772264557

/-! ## A270266.P11938993922522720988

`∩[A002174(n+1), A004277(A079695(n+1))]`
-/

namespace A270266.P11938993922522720988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A079695 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270266.P11938993922522720988

/-! ## A270266.P14241865892183888319

`∩[A002174(n+1), A062545(A079695(n+1)-2)+1]`
-/

namespace A270266.P14241865892183888319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (A079695 (n + 1) - 2).toNat + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270266.P14241865892183888319

/-! ## A270266.P3309831183195329490

`∩[A002174(n+1), A007617(n+1)]`
-/

namespace A270266.P3309831183195329490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270266.P3309831183195329490

/-!
# A270267: Carmichael numbers (A002997) that are the sum of three consecutive primes.

The programs for A270267, there is no canonical definition to state claims against.
-/

/-! ## A270267.P6954982013900238987

`∩[A002997(n+1), A270639(n+1)]`
-/

namespace A270267.P6954982013900238987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270267.P6954982013900238987

/-! ## A270267.P11213305461450103847

`∩[A081703(n+1)*A141710(n+1), A270639(n+1)]`
-/

namespace A270267.P11213305461450103847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1) * A141710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270267.P11213305461450103847

/-!
# A270270: The number of n-digit numbers in A270048.

The programs for A270270, there is no canonical definition to state claims against.
-/

/-! ## A270270.P15293856949225858047

`A250096(A103425(n+1))+ceil(2^(n-1))`
-/

namespace A270270.P15293856949225858047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250096 (A103425 (n + 1)).toNat + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A270270.P15293856949225858047

/-! ## A270270.P11180722722281968094

`A103425(A153678(n+1))+A011782(n)`
-/

namespace A270270.P11180722722281968094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103425 (A153678 (n + 1)).toNat + A011782 n

end

end A270270.P11180722722281968094

/-!
# A270272: a(n) = binomial(n+3,n)^3.

The programs for A270272, the canonical program `A270272.P5204524573734054044` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270272 has offset 0).

The definition of A270272 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, n)^3` (program `A270272.P5204524573734054044`, by `A270272.P5204524573734054044.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A270272.P5204524573734054044

`C(n+3, n)^3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A270272

/-- `C(n+3, n)^3` -/
def P5204524573734054044.Spec : Prop :=
  ∀ n, (P5204524573734054044.a n : ℤ) = A270272 n

theorem P5204524573734054044.correct : P5204524573734054044.Spec := by
  intro n
  simp only [A270272]

end A270272

/-! ## A270272.P2343825589727507040

`(6+11*n+6*n²+n^3)^3/216`
-/

namespace A270272.P2343825589727507040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 + 11 * n + 6 * n ^ 2 + n ^ 3) ^ 3 : ℚ) / 216

end

end A270272.P2343825589727507040

namespace A270272

/-- `(6+11*n+6*n²+n^3)^3/216` -/
def P2343825589727507040.Spec : Prop :=
  ∀ n, P2343825589727507040.a n = (A270272 n : ℚ)

end A270272

/-! ## A270272.P15171023451898246884

`A000292(n+1)^3`
-/

namespace A270272.P15171023451898246884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) ^ 3

end

end A270272.P15171023451898246884

namespace A270272

/-- `A000292(n+1)^3` -/
def P15171023451898246884.Spec : Prop :=
  ∀ n, P15171023451898246884.a n = A270272 n

end A270272

/-! ## A270272.P6719808141779681366

`root(C(n+3, 3), 1/3)`
-/

namespace A270272.P6719808141779681366
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A270272.P6719808141779681366

namespace A270272

/-- `root(C(n+3, 3), 1/3)` -/
def P6719808141779681366.Spec : Prop :=
  ∀ n, P6719808141779681366.a n = (A270272 n : ℝ)

end A270272

/-! ## A270272.P3434767207479590958

`abs(∑[∑[xor(n, -1)]]^3)`
-/

namespace A270272.P3434767207479590958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) ^ 3|

end

end A270272.P3434767207479590958

namespace A270272

/-- `abs(∑[∑[xor(n, -1)]]^3)` -/
def P3434767207479590958.Spec : Prop :=
  ∀ n, P3434767207479590958.a n = A270272 n

end A270272

/-! ## A270272.P10121700486175183099

`-∑[∑[xor(n, -1)]]^3`
-/

namespace A270272.P10121700486175183099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3)

end

end A270272.P10121700486175183099

namespace A270272

/-- `-∑[∑[xor(n, -1)]]^3` -/
def P10121700486175183099.Spec : Prop :=
  ∀ n, P10121700486175183099.a n = A270272 n

end A270272

/-! ## A270272.P10339002025990081239

`C(n+3, 3)²*C(n+3, 3)`
-/

namespace A270272.P10339002025990081239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 ^ 2 * Nat.choose (n + 3) 3

end

end A270272.P10339002025990081239

namespace A270272

/-- `C(n+3, 3)²*C(n+3, 3)` -/
def P10339002025990081239.Spec : Prop :=
  ∀ n, (P10339002025990081239.a n : ℤ) = A270272 n

end A270272

/-! ## A270272.P2163731465319007347

`(3/n+1)^3*a(n-1)` with `a(0)=1`
-/

namespace A270272.P2163731465319007347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 / (n : ℚ) + 1) ^ 3 * a (n - 1)

end

end A270272.P2163731465319007347

namespace A270272

/-- `(3/n+1)^3*a(n-1)` -/
def P2163731465319007347.Spec : Prop :=
  ∀ n, P2163731465319007347.a n = (A270272 n : ℚ)

end A270272

/-! ## A270272.P7376982039411712886

`∑[∑[n+1]]²*∑[a(n-1)+n+1]` with `a(0)=1`
-/

namespace A270272.P7376982039411712886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A270272.P7376982039411712886

namespace A270272

/-- `∑[∑[n+1]]²*∑[a(n-1)+n+1]` -/
def P7376982039411712886.Spec : Prop :=
  ∀ n, (P7376982039411712886.a n : ℤ) = A270272 n

end A270272

/-! ## A270272.P5292296606453349237

`sqrt(A001249(n)^3)`
-/

namespace A270272.P5292296606453349237
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001249 n ^ 3 : ℝ)

end

end A270272.P5292296606453349237

namespace A270272

/-- `sqrt(A001249(n)^3)` -/
def P5292296606453349237.Spec : Prop :=
  ∀ n, P5292296606453349237.a n = (A270272 n : ℝ)

end A270272

/-! ## A270272.P10821406307967322820

`record[A000292(abs(1-n))^3]`
-/

namespace A270272.P10821406307967322820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 |1 - (n : ℤ)|.toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270272.P10821406307967322820

namespace A270272

/-- `record[A000292(abs(1-n))^3]` -/
def P10821406307967322820.Spec : Prop :=
  ∀ n, P10821406307967322820.a n = A270272 n

end A270272

/-! ## A270272.P2389673160537312900

`A000292(n+1)*A001249(n)`
-/

namespace A270272.P2389673160537312900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A001249 n

end

end A270272.P2389673160537312900

namespace A270272

/-- `A000292(n+1)*A001249(n)` -/
def P2389673160537312900.Spec : Prop :=
  ∀ n, P2389673160537312900.a n = A270272 n

end A270272

/-! ## A270272.P10050371795001266358

`∑[A000217(n+1)]²*∑[A000217(n+1)]`
-/

namespace A270272.P10050371795001266358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A270272.P10050371795001266358

namespace A270272

/-- `∑[A000217(n+1)]²*∑[A000217(n+1)]` -/
def P10050371795001266358.Spec : Prop :=
  ∀ n, P10050371795001266358.a n = A270272 n

end A270272

/-! ## A270272.P10861083006676523711

`(A373733(n+1)+A054563(n+1))*A000292(n+1)`
-/

namespace A270272.P10861083006676523711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A373733 (n + 1) + A054563 (n + 1)) * A000292 (n + 1)

end

end A270272.P10861083006676523711

namespace A270272

/-- `(A373733(n+1)+A054563(n+1))*A000292(n+1)` -/
def P10861083006676523711.Spec : Prop :=
  ∀ n, P10861083006676523711.a n = A270272 n

end A270272

/-! ## A270272.P3397073518016784695

`∑[∩[∑[n+1], ∑[n]]]^3`
-/

namespace A270272.P3397073518016784695
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f4 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A270272.P3397073518016784695

namespace A270272

/-- `∑[∩[∑[n+1], ∑[n]]]^3` -/
def P3397073518016784695.Spec : Prop :=
  ∀ n, (P3397073518016784695.a n : ℤ) = A270272 n

end A270272

/-! ## A270272.P10494392255253307482

`Δ[A145126(n)]²*Δ[A145126(n)]`
-/

namespace A270272.P10494392255253307482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A270272.P10494392255253307482

namespace A270272

/-- `Δ[A145126(n)]²*Δ[A145126(n)]` -/
def P10494392255253307482.Spec : Prop :=
  ∀ n, P10494392255253307482.a n = A270272 n

end A270272

/-! ## A270272.P17960538224764576053

`A008804(2*n)^3`
-/

namespace A270272.P17960538224764576053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (2 * n) ^ 3

end

end A270272.P17960538224764576053

namespace A270272

/-- `A008804(2*n)^3` -/
def P17960538224764576053.Spec : Prop :=
  ∀ n, P17960538224764576053.a n = A270272 n

end A270272

/-! ## A270272.P3682846743262406881

`A058187(2*n)^3`
-/

namespace A270272.P3682846743262406881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 (2 * n) ^ 3

end

end A270272.P3682846743262406881

namespace A270272

/-- `A058187(2*n)^3` -/
def P3682846743262406881.Spec : Prop :=
  ∀ n, P3682846743262406881.a n = A270272 n

end A270272

/-! ## A270272.P9988905624283853759

`A005232(2*n+1)^3`
-/

namespace A270272.P9988905624283853759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (2 * n + 1) ^ 3

end

end A270272.P9988905624283853759

namespace A270272

/-- `A005232(2*n+1)^3` -/
def P9988905624283853759.Spec : Prop :=
  ∀ n, P9988905624283853759.a n = A270272 n

end A270272

/-! ## A270272.P9814042037885501480

`A160790(2*n+1)^3`
-/

namespace A270272.P9814042037885501480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160790 (2 * n + 1) ^ 3

end

end A270272.P9814042037885501480

namespace A270272

/-- `A160790(2*n+1)^3` -/
def P9814042037885501480.Spec : Prop :=
  ∀ n, P9814042037885501480.a n = A270272 n

end A270272

/-!
# A270273: Array read by antidiagonals: T(n,m) = number of Hamiltonian cycles in C_n X C_m.

The programs for A270273, there is no canonical definition to state claims against.
-/

/-! ## A270273.P4609786668797604137

`A193498(A174116(n))%A323502(n)`
-/

namespace A270273.P4609786668797604137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193498 (A174116 n).toNat) (A323502 n)

end

end A270273.P4609786668797604137

/-! ## A270273.P13170451145070808638

`A105422(A280180(n+1))%A323502(n)`
-/

namespace A270273.P13170451145070808638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105422 (A280180 (n + 1)).toNat) (A323502 n)

end

end A270273.P13170451145070808638

/-!
# A270274: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 137", based on the 5-celled von Neumann neighborhood.

The programs for A270274, there is no canonical definition to state claims against.
-/

/-! ## A270274.P3000406787898203669

`Δ[A270276((n-1)*a(A054977(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A270274.P3000406787898203669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A270276 (((n : ℤ) - 1) * f1 (A054977 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270274.P3000406787898203669

/-! ## A270274.P9406115228786175024

`∑[A270277(abs(1-n))]`
-/

namespace A270274.P9406115228786175024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270277 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270274.P9406115228786175024

/-! ## A270274.P8689766956791031774

`A270277(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270274.P8689766956791031774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270277 (n - 1) + a (n - 1)

end

end A270274.P8689766956791031774

/-! ## A270274.P5337734148737744864

`Δ[A270276(n)]-A270277(n)`
-/

namespace A270274.P5337734148737744864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270277 n

end

end A270274.P5337734148737744864

/-! ## A270274.P17211441944079961338

`A270276(n+1)-(A270277(n)+A270276(n))`
-/

namespace A270274.P17211441944079961338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270276 (n + 1) - (A270277 n + A270276 n)

end

end A270274.P17211441944079961338

/-!
# A270275: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 137", based on the 5-celled von Neumann neighborhood.

The programs for A270275, there is no canonical definition to state claims against.
-/

/-! ## A270275.P7305908985149338255

`A270274(2^n-1)`
-/

namespace A270275.P7305908985149338255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270274 (2 ^ n - 1)

end

end A270275.P7305908985149338255

/-! ## A270275.P15447638938942700196

`record[A270274(A135481(n))]`
-/

namespace A270275.P15447638938942700196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270274 (A135481 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270275.P15447638938942700196

/-! ## A270275.P16851996642869866931

`record[A270274(A173787(n))]`
-/

namespace A270275.P16851996642869866931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270274 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270275.P16851996642869866931

/-! ## A270275.P4353579855897322088

`record[A270274(A323243(n+1))]`
-/

namespace A270275.P4353579855897322088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270274 (A323243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270275.P4353579855897322088

/-! ## A270275.P17022265585614524540

`record[A270274(A350770(n+1))]`
-/

namespace A270275.P17022265585614524540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270274 (A350770 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270275.P17022265585614524540

/-!
# A270276: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 137", based on the 5-celled von Neumann neighborhood.

The programs for A270276, there is no canonical definition to state claims against.
-/

/-! ## A270276.P10103316687777403310

`∑[A270274(n)]`
-/

namespace A270276.P10103316687777403310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270276.P10103316687777403310

/-! ## A270276.P15875396978687663268

`A270274(root(n, 2)²)+a(n-1)` with `a(0)=1`
-/

namespace A270276.P15875396978687663268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270274 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat + a (n - 1)

end

end A270276.P15875396978687663268

/-! ## A270276.P6949803836933687527

`a(n-1)+A270274(n)+A000038(n)` with `a(0)=1`
-/

namespace A270276.P6949803836933687527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270274 n + A000038 n)

end

end A270276.P6949803836933687527

/-! ## A270276.P2002665066940013818

`a(n-1)-(A000007(n)-A270274(root(n, 2)²))` with `a(0)=1`
-/

namespace A270276.P2002665066940013818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 n - A270274 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat)

end

end A270276.P2002665066940013818

/-! ## A270276.P8901268752301672601

`∑[∑[A270277(abs(1-n))]]`
-/

namespace A270276.P8901268752301672601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270277 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270276.P8901268752301672601

/-! ## A270276.P2062482506241400702

`∑[∑[A270277(n)]+1-A270277(n)]`
-/

namespace A270276.P2062482506241400702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270277 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270277 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270276.P2062482506241400702

/-!
# A270277: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 137", based on the 5-celled von Neumann neighborhood.

The programs for A270277, there is no canonical definition to state claims against.
-/

/-! ## A270277.P6274268775493884158

`Δ[A270274(n)]`
-/

namespace A270277.P6274268775493884158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270277.P6274268775493884158

/-! ## A270277.P11831881930338700111

`A270274(n+1)-A270274(n)`
-/

namespace A270277.P11831881930338700111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270274 (n + 1) - A270274 n

end

end A270277.P11831881930338700111

/-! ## A270277.P1608103690409161593

`Δ[Δ[A270276((n-1)*a(A054977(n)))]]` with `a(0)=0, a(1)=1`
-/

namespace A270277.P1608103690409161593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A270276 (((n : ℤ) - 1) * f2 (A054977 n).toNat).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270277.P1608103690409161593

/-! ## A270277.P2758312162701954035

`A270274(n+1)+A270274(n)/A305974(A000040(n+1))`
-/

namespace A270277.P2758312162701954035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270274 (n + 1) : ℚ) + (A270274 n : ℚ) / (A305974 (A000040 (n + 1)).toNat : ℚ)

end

end A270277.P2758312162701954035

/-!
# A270278: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 139", based on the 5-celled von Neumann neighborhood.

The programs for A270278, there is no canonical definition to state claims against.
-/

/-! ## A270278.P3182148611643190419

`∑[A270281(abs(1-n))]+1`
-/

namespace A270278.P3182148611643190419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270281 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A270278.P3182148611643190419

/-! ## A270278.P15390413547740732220

`A270281(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270278.P15390413547740732220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270281 (n - 1) + a (n - 1)

end

end A270278.P15390413547740732220

/-! ## A270278.P6441688228257980918

`Δ[A270280(n)]-A270281(n)`
-/

namespace A270278.P6441688228257980918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270281 n

end

end A270278.P6441688228257980918

/-! ## A270278.P10438623334654568056

`A270280(n+1)-(A270281(n)+A270280(n))`
-/

namespace A270278.P10438623334654568056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270280 (n + 1) - (A270281 n + A270280 n)

end

end A270278.P10438623334654568056

/-! ## A270278.P12699708025174298413

`∑[A270281(abs(1-n))^A165476(n²)]`
-/

namespace A270278.P12699708025174298413
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270281 |1 - (n : ℤ)|.toNat : ℚ) ^ (A165476 (n ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270278.P12699708025174298413

/-!
# A270279: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 139", based on the 5-celled von Neumann neighborhood.

The programs for A270279, there is no canonical definition to state claims against.
-/

/-! ## A270279.P16353072172822867776

`A270278(2^n-1)`
-/

namespace A270279.P16353072172822867776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270278 (2 ^ n - 1)

end

end A270279.P16353072172822867776

/-! ## A270279.P9337834647237440841

`or(1, A270278(A000225(n)))`
-/

namespace A270279.P9337834647237440841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A270278 (A000225 n).toNat)

end

end A270279.P9337834647237440841

/-! ## A270279.P6720909028716050692

`record[A270278(Δ[A228693(n)])]`
-/

namespace A270279.P6720909028716050692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270278 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270279.P6720909028716050692

/-! ## A270279.P10795016725216730196

`record[A270278(A175946(n+1))]`
-/

namespace A270279.P10795016725216730196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270278 (A175946 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270279.P10795016725216730196

/-! ## A270279.P4274621057210481101

`record[A270278(A243071(n+1))]`
-/

namespace A270279.P4274621057210481101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270278 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270279.P4274621057210481101

/-!
# A270280: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 139", based on the 5-celled von Neumann neighborhood.

The programs for A270280, there is no canonical definition to state claims against.
-/

/-! ## A270280.P10678648593051590639

`∑[∑[A270281(abs(1-n))]+1]`
-/

namespace A270280.P10678648593051590639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270281 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270280.P10678648593051590639

/-! ## A270280.P52612550776717789

`∑[∑[A270281(n)]-A270281(n)+1]`
-/

namespace A270280.P52612550776717789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A270281 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270280.P52612550776717789

/-! ## A270280.P12803108189932912338

`∑[A270278(n)]`
-/

namespace A270280.P12803108189932912338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270280.P12803108189932912338

/-! ## A270280.P1401563977786521369

`A270278(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270280.P1401563977786521369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270278 n + a (A023443 n).toNat

end

end A270280.P1401563977786521369

/-! ## A270280.P12046662928909053077

`∑[∑[A270281(abs(1-n))^A165476(n²)]]`
-/

namespace A270280.P12046662928909053077
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270281 |1 - (n : ℤ)|.toNat : ℚ) ^ (A165476 (n ^ 2) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270280.P12046662928909053077

/-!
# A270281: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 139", based on the 5-celled von Neumann neighborhood.

The programs for A270281, there is no canonical definition to state claims against.
-/

/-! ## A270281.P14240937581502935909

`Δ[A270278(n)]`
-/

namespace A270281.P14240937581502935909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270281.P14240937581502935909

/-! ## A270281.P11948526932597754686

`A270278(n+1)-A270278(n)`
-/

namespace A270281.P11948526932597754686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270278 (n + 1) - A270278 n

end

end A270281.P11948526932597754686

/-! ## A270281.P8356358433622357292

`Δ[A270221(n)+A257297(A143453(2*(n+1)))]`
-/

namespace A270281.P8356358433622357292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270221 n + A257297 (A143453 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270281.P8356358433622357292

/-!
# A270282: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 141", based on the 5-celled von Neumann neighborhood.

The programs for A270282, there is no canonical definition to state claims against.
-/

/-! ## A270282.P6501402035608334943

`A270285(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270282.P6501402035608334943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270285 (n - 1) + a (n - 1)

end

end A270282.P6501402035608334943

/-! ## A270282.P11328632494689343449

`Δ[A270284(n)]-A270285(n)`
-/

namespace A270282.P11328632494689343449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270285 n

end

end A270282.P11328632494689343449

/-! ## A270282.P5388697731439665746

`A270284(n+1)-(A270285(n)+A270284(n))`
-/

namespace A270282.P5388697731439665746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270284 (n + 1) - (A270285 n + A270284 n)

end

end A270282.P5388697731439665746

/-! ## A270282.P9822992294346418250

`A124625(2*n)+∑[A270285(n)]-A270285(n)`
-/

namespace A270282.P9822992294346418250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A270285 n)

end

end A270282.P9822992294346418250

/-! ## A270282.P118727437146834196

`(∑[A270285(n)]-A270285(n)+1)%A055711(n+4)`
-/

namespace A270282.P118727437146834196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A270285 n + 1) (A055711 (n + 4))

end

end A270282.P118727437146834196

/-! ## A270282.P9956011816473666743

`A000027(∑[A270285(n)]-A270285(n)+1)`
-/

namespace A270282.P9956011816473666743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A270285 n + 1).toNat

end

end A270282.P9956011816473666743

/-! ## A270282.P17924376822495750973

`A098181(∑[A270285(n)]-A270285(n))`
-/

namespace A270282.P17924376822495750973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (∑ j ∈ Finset.range (n + 1), f1 j - A270285 n).toNat

end

end A270282.P17924376822495750973

/-! ## A270282.P3740439397390256621

`1-A001489(∑[A270285(n)]-A270285(n))`
-/

namespace A270282.P3740439397390256621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (∑ j ∈ Finset.range (n + 1), f1 j - A270285 n).toNat

end

end A270282.P3740439397390256621

/-! ## A270282.P1151678667002518405

`A020705(∑[A270285(n)]-A270285(n))-3`
-/

namespace A270282.P1151678667002518405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (∑ j ∈ Finset.range (n + 1), f1 j - A270285 n).toNat - 3

end

end A270282.P1151678667002518405

/-!
# A270283: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 141", based on the 5-celled von Neumann neighborhood.

The programs for A270283, there is no canonical definition to state claims against.
-/

/-! ## A270283.P5687051334101577525

`A270282(2^n-1)`
-/

namespace A270283.P5687051334101577525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270282 (2 ^ n - 1)

end

end A270283.P5687051334101577525

/-! ## A270283.P2575935099902986074

`record[A270282(A006068(n))]`
-/

namespace A270283.P2575935099902986074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270282 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270283.P2575935099902986074

/-! ## A270283.P10120960967542924496

`record[A270282(A173787(n))]`
-/

namespace A270283.P10120960967542924496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270282 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270283.P10120960967542924496

/-! ## A270283.P2349556577893913695

`record[A270282(A231551(n))]`
-/

namespace A270283.P2349556577893913695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270282 (A231551 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270283.P2349556577893913695

/-! ## A270283.P2971708822368445332

`record[A270282(A283996(n))]`
-/

namespace A270283.P2971708822368445332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270282 (A283996 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270283.P2971708822368445332

/-!
# A270284: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 141", based on the 5-celled von Neumann neighborhood.

The programs for A270284, there is no canonical definition to state claims against.
-/

/-! ## A270284.P8058197437486871091

`∑[A270285(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270284.P8058197437486871091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270285 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270284.P8058197437486871091

/-! ## A270284.P13932617826806329730

`∑[∑[A270285(n)]-A270285(n)+1]`
-/

namespace A270284.P13932617826806329730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A270285 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270284.P13932617826806329730

/-! ## A270284.P14243611928822613937

`∑[A270282(n)]`
-/

namespace A270284.P14243611928822613937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270284.P14243611928822613937

/-! ## A270284.P3373266816060905067

`A270282(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270284.P3373266816060905067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270282 n + a (A023443 n).toNat

end

end A270284.P3373266816060905067

/-! ## A270284.P4791818578199454385

`a(n-1)+A270282(n)+A000007(n)` with `a(0)=1`
-/

namespace A270284.P4791818578199454385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270282 n + A000007 n)

end

end A270284.P4791818578199454385

/-!
# A270285: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 141", based on the 5-celled von Neumann neighborhood.

The programs for A270285, there is no canonical definition to state claims against.
-/

/-! ## A270285.P17227378875125381404

`Δ[A270282(n)]`
-/

namespace A270285.P17227378875125381404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270285.P17227378875125381404

/-! ## A270285.P14768471920032185204

`A270282(n+1)-A270282(n)`
-/

namespace A270285.P14768471920032185204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270282 (n + 1) - A270282 n

end

end A270285.P14768471920032185204

/-! ## A270285.P9538522806757672883

`A270282(C(n+1, n))+A001489(A270282(n))`
-/

namespace A270285.P9538522806757672883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270282 (Nat.choose (n + 1) n) + A001489 (A270282 n).toNat

end

end A270285.P9538522806757672883

/-! ## A270285.P18014116571318559949

`A270282(n+1)+A001478(A270282(n)+1)+1`
-/

namespace A270285.P18014116571318559949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270282 (n + 1) + A001478 (A270282 n + 1).toNat + 1

end

end A270285.P18014116571318559949

/-! ## A270285.P13729219815660731147

`A270282(A000027(n+1))+A001478(A270282(n))`
-/

namespace A270285.P13729219815660731147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270282 (A000027 (n + 1)).toNat + A001478 (A270282 n).toNat

end

end A270285.P13729219815660731147

/-! ## A270285.P7589471284296820813

`A270282(A065033(2*n+1))+A001489(A270282(n))`
-/

namespace A270285.P7589471284296820813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270282 (A065033 (2 * n + 1)).toNat + A001489 (A270282 n).toNat

end

end A270285.P7589471284296820813

/-!
# A270286: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 145", based on the 5-celled von Neumann neighborhood.

The programs for A270286, there is no canonical definition to state claims against.
-/

/-! ## A270286.P151806554258626786

`Δ[A270288((n-1)%xor(n, a(n-1)))]` with `a(0)=0`
-/

namespace A270286.P151806554258626786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A270288 (Int.tmod ((n : ℤ) - 1) (Int.xor (n : ℤ) (f1 (n - 1)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270286.P151806554258626786

/-! ## A270286.P15573587092752721506

`∑[A270289(abs(1-n))]`
-/

namespace A270286.P15573587092752721506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270289 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270286.P15573587092752721506

/-! ## A270286.P17563358996367424704

`A270289(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270286.P17563358996367424704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270289 (n - 1) + a (n - 1)

end

end A270286.P17563358996367424704

/-! ## A270286.P13565114988567454216

`Δ[A270288(n)]-A270289(n)`
-/

namespace A270286.P13565114988567454216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270289 n

end

end A270286.P13565114988567454216

/-! ## A270286.P12314177729156476130

`A270288(n+1)-(A270289(n)+A270288(n))`
-/

namespace A270286.P12314177729156476130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270288 (n + 1) - (A270289 n + A270288 n)

end

end A270286.P12314177729156476130

/-!
# A270287: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 145", based on the 5-celled von Neumann neighborhood.

The programs for A270287, the canonical program `A270287.P12996540026628555626` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270287 has offset 0).

The definition of A270287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270287.P16716497649468394935

`Δ[and(2^n-1, -2)²]+1-round(2^(n-2))²`
-/

namespace A270287.P16716497649468394935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 ^ n : ℤ) - 1) (-2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 - SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) ^ 2

end

end A270287.P16716497649468394935

namespace A270287

/-- `Δ[and(2^n-1, -2)²]+1-round(2^(n-2))²` -/
def P16716497649468394935.Spec : Prop :=
  ∀ n, P16716497649468394935.a n = A270287 n

end A270287

/-! ## A270287.P9235743743043215318

`Δ[(or(1, -2^n)+1)²+n]-round(2^(n-2))²`
-/

namespace A270287.P9235743743043215318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (-(2 ^ n : ℤ)) + 1) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) ^ 2

end

end A270287.P9235743743043215318

namespace A270287

/-- `Δ[(or(1, -2^n)+1)²+n]-round(2^(n-2))²` -/
def P9235743743043215318.Spec : Prop :=
  ∀ n, P9235743743043215318.a n = A270287 n

end A270287

/-! ## A270287.P8002110061873425388

`A270222(n)-A166444(n)²`
-/

namespace A270287.P8002110061873425388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270222 n - A166444 n ^ 2

end

end A270287.P8002110061873425388

namespace A270287

/-- `A270222(n)-A166444(n)²` -/
def P8002110061873425388.Spec : Prop :=
  ∀ n, P8002110061873425388.a n = A270287 n

end A270287

/-! ## A270287.P7331344626654540696

`A270222(n)+A166444(n)²*A153881(n+1)`
-/

namespace A270287.P7331344626654540696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270222 n + A166444 n ^ 2 * A153881 (n + 1)

end

end A270287.P7331344626654540696

namespace A270287

/-- `A270222(n)+A166444(n)²*A153881(n+1)` -/
def P7331344626654540696.Spec : Prop :=
  ∀ n, P7331344626654540696.a n = A270287 n

end A270287

/-! ## A270287.P12996540026628555626

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=4, a(2)=32, a(3)=157, a(4)=689`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A270287

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P12996540026628555626.Spec : Prop :=
  ∀ n, P12996540026628555626.a n = A270287 n

theorem P12996540026628555626.correct : P12996540026628555626.Spec := by
  intro n
  simp only [A270287]

end A270287

/-!
# A270288: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 145", based on the 5-celled von Neumann neighborhood.

The programs for A270288, there is no canonical definition to state claims against.
-/

/-! ## A270288.P620217036258696422

`∑[A270286(n)]`
-/

namespace A270288.P620217036258696422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270288.P620217036258696422

/-! ## A270288.P2866070115707778669

`A270286(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270288.P2866070115707778669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270286 n + a (A023443 n).toNat

end

end A270288.P2866070115707778669

/-! ## A270288.P4572654037646215007

`a(n-1)+A270286(n)+A000007(n)` with `a(0)=1`
-/

namespace A270288.P4572654037646215007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270286 n + A000007 n)

end

end A270288.P4572654037646215007

/-! ## A270288.P2232086598456470607

`A270286(A004524(2*n+1))+a(n-1)` with `a(0)=1`
-/

namespace A270288.P2232086598456470607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270286 (A004524 (2 * n + 1)).toNat + a (n - 1)

end

end A270288.P2232086598456470607

/-! ## A270288.P10224292446224445487

`∑[∑[A270289(abs(1-n))]]`
-/

namespace A270288.P10224292446224445487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270289 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270288.P10224292446224445487

/-! ## A270288.P6153886044616792236

`∑[∑[A270289(n)]+1-A270289(n)]`
-/

namespace A270288.P6153886044616792236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270289 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270289 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270288.P6153886044616792236

/-! ## A270288.P12842796913372442259

`a(n-1)+A270286(n)%A077936(n+1)` with `a(0)=1`
-/

namespace A270288.P12842796913372442259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270286 n) (A077936 (n + 1))

end

end A270288.P12842796913372442259

/-!
# A270289: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 145", based on the 5-celled von Neumann neighborhood.

The programs for A270289, there is no canonical definition to state claims against.
-/

/-! ## A270289.P18041996060346684105

`Δ[A270286(n)]`
-/

namespace A270289.P18041996060346684105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270289.P18041996060346684105

/-! ## A270289.P9978502683733918062

`Δ[Δ[A270288((n-1)%xor(n, a(n-1)))]]` with `a(0)=0`
-/

namespace A270289.P9978502683733918062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A270288 (Int.tmod ((n : ℤ) - 1) (Int.xor (n : ℤ) (f2 (n - 1)))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270289.P9978502683733918062

/-! ## A270289.P14930068231006232262

`A270286(n+1)-A270286(n)`
-/

namespace A270289.P14930068231006232262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270286 (n + 1) - A270286 n

end

end A270289.P14930068231006232262

/-!
# A270290: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 147", based on the 5-celled von Neumann neighborhood.

The programs for A270290, there is no canonical definition to state claims against.
-/

/-! ## A270290.P3432004152169236606

`A270293(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270290.P3432004152169236606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270293 (n - 1) + a (n - 1)

end

end A270290.P3432004152169236606

/-! ## A270290.P1208100334679531558

`∑[A270293(n^floor(atan(n))-1)]-3`
-/

namespace A270290.P1208100334679531558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270293 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A270290.P1208100334679531558

/-! ## A270290.P15080527932844748715

`∑[A270293(A028310(n)-1)]-3`
-/

namespace A270290.P15080527932844748715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270293 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A270290.P15080527932844748715

/-! ## A270290.P11015867876461388594

`∑[A270293(A000007(n)-1+n)]-3`
-/

namespace A270290.P11015867876461388594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270293 (A000007 n - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A270290.P11015867876461388594

/-! ## A270290.P12362618856097835039

`Δ[A270292(n)]-A270293(n)`
-/

namespace A270290.P12362618856097835039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270293 n

end

end A270290.P12362618856097835039

/-! ## A270290.P8672820730094587248

`A270292(n+1)-(A270293(n)+A270292(n))`
-/

namespace A270290.P8672820730094587248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270292 (n + 1) - (A270293 n + A270292 n)

end

end A270290.P8672820730094587248

/-!
# A270291: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 147", based on the 5-celled von Neumann neighborhood.

The programs for A270291, there is no canonical definition to state claims against.
-/

/-! ## A270291.P17322955048155279196

`A270290(2^n-1)`
-/

namespace A270291.P17322955048155279196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270290 (2 ^ n - 1)

end

end A270291.P17322955048155279196

/-! ## A270291.P2470535871033854459

`record[A270290(A091264(n))]`
-/

namespace A270291.P2470535871033854459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270290 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270291.P2470535871033854459

/-! ## A270291.P16896606023458386443

`record[A270290(A173787(n))]`
-/

namespace A270291.P16896606023458386443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270290 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270291.P16896606023458386443

/-! ## A270291.P13053410824783811236

`or(1, A270290(A000225(n)))`
-/

namespace A270291.P13053410824783811236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A270290 (A000225 n).toNat)

end

end A270291.P13053410824783811236

/-! ## A270291.P1712498007651484734

`record[A270290(Δ[A228693(n)])]`
-/

namespace A270291.P1712498007651484734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270290 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270291.P1712498007651484734

/-!
# A270292: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 147", based on the 5-celled von Neumann neighborhood.

The programs for A270292, there is no canonical definition to state claims against.
-/

/-! ## A270292.P6144170056259368764

`∑[A270290(n)]`
-/

namespace A270292.P6144170056259368764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270292.P6144170056259368764

/-! ## A270292.P8308349986894478256

`A270290(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270292.P8308349986894478256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270290 n + a (A023443 n).toNat

end

end A270292.P8308349986894478256

/-! ## A270292.P16497311548889762227

`A270290(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A270292.P16497311548889762227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270290 n + a (A028310 n - 1).toNat

end

end A270292.P16497311548889762227

/-! ## A270292.P14703690440625551774

`A270290(n)+a(n-A007318(C(2, n)))` with `a(0)=1`
-/

namespace A270292.P14703690440625551774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270290 n + a ((n : ℤ) - A007318 (Nat.choose 2 n)).toNat

end

end A270292.P14703690440625551774

/-! ## A270292.P8535480204185476244

`a(n-1)+A270290(n)%A037165(n+1)` with `a(0)=1`
-/

namespace A270292.P8535480204185476244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270290 n) (A037165 (n + 1))

end

end A270292.P8535480204185476244

/-! ## A270292.P11531589386433690359

`∑[∑[A270293(n)]+1-A270293(n)]`
-/

namespace A270292.P11531589386433690359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270293 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270293 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270292.P11531589386433690359

/-!
# A270293: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 147", based on the 5-celled von Neumann neighborhood.

The programs for A270293, there is no canonical definition to state claims against.
-/

/-! ## A270293.P285788122345206211

`Δ[A270290(n)]`
-/

namespace A270293.P285788122345206211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270293.P285788122345206211

/-! ## A270293.P4625452786407322630

`A270290(n+1)-A270290(n)`
-/

namespace A270293.P4625452786407322630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270290 (n + 1) - A270290 n

end

end A270293.P4625452786407322630

/-! ## A270293.P7060962376784685804

`A270900(n)-A108563(A338102(n+1))`
-/

namespace A270293.P7060962376784685804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270900 n - A108563 (A338102 (n + 1)).toNat

end

end A270293.P7060962376784685804

/-! ## A270293.P832208588744108441

`Δ[A270897(n)]-A108563(A338102(n+1))`
-/

namespace A270293.P832208588744108441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A108563 (A338102 (n + 1)).toNat

end

end A270293.P832208588744108441

/-! ## A270293.P16713377917652790905

`A270897(n+1)-A270897(n)-A108563(A338102(n+1))`
-/

namespace A270293.P16713377917652790905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270897 (n + 1) - A270897 n - A108563 (A338102 (n + 1)).toNat

end

end A270293.P16713377917652790905

/-!
# A270294: E.g.f.: Product_{k>=1} (1 + sinh(x^k)).

The programs for A270294, there is no canonical definition to state claims against.
-/

/-! ## A270294.P4877912451570729899

`A194204(2*A113237(n))`
-/

namespace A270294.P4877912451570729899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194204 (2 * A113237 n).toNat

end

end A270294.P4877912451570729899

/-! ## A270294.P16801737890966780516

`A064062(n)-A351357(A003215(n))`
-/

namespace A270294.P16801737890966780516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 n - A351357 (A003215 n).toNat

end

end A270294.P16801737890966780516

/-!
# A270295: Numbers that equal the sum of the squares of the digits of their own square in base 27.

The programs for A270295, there is no canonical definition to state claims against.
-/

/-! ## A270295.P7602963001155006849

`5^n-∑[∑[∑[A000188(7^n)]]]`
-/

namespace A270295.P7602963001155006849
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (7 ^ n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270295.P7602963001155006849

/-!
# A270296: Numbers which are representable as a sum of five but no fewer consecutive nonnegative integers.

The programs for A270296, the canonical program `A270296.P17548243857982245723` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270296 has offset 1).

The definition of A270296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270296.P17548243857982245723

`20*A001651(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A270296

/-- `20*A001651(n+1)` -/
def P17548243857982245723.Spec : Prop :=
  ∀ n, P17548243857982245723.a n = A270296 (n + 1)

theorem P17548243857982245723.correct : P17548243857982245723.Spec := by
  intro n
  simp only [A270296, Nat.add_sub_cancel]

end A270296

/-! ## A270296.P16351927142423669978

`20*comp[3*n]`
-/

namespace A270296.P16351927142423669978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A270296.P16351927142423669978

namespace A270296

/-- `20*comp[3*n]` -/
def P16351927142423669978.Spec : Prop :=
  ∀ n, (P16351927142423669978.a n : ℤ) = A270296 (n + 1)

end A270296

/-! ## A270296.P13207736383075709533

`a(n-2)+60` with `a(0)=20, a(1)=40`
-/

namespace A270296.P13207736383075709533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [20, 40] fun n a =>
  a (n - 2) + 60

end

end A270296.P13207736383075709533

namespace A270296

/-- `a(n-2)+60` -/
def P13207736383075709533.Spec : Prop :=
  ∀ n, (P13207736383075709533.a n : ℤ) = A270296 (n + 1)

end A270296

/-! ## A270296.P9982168224990100543

`∑[floor(a(n-2))]` with `a(0)=20, a(1)=20, a(2)=40`

`floor` is left out, it is the identity on integers.
-/

namespace A270296.P9982168224990100543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [20, 20, 40] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270296.P9982168224990100543

namespace A270296

/-- `∑[floor(a(n-2))]` -/
def P9982168224990100543.Spec : Prop :=
  ∀ n, (P9982168224990100543.a n : ℤ) = A270296 (n + 1)

end A270296

/-! ## A270296.P12864142090632802188

`60*n-a(n-1)` with `a(0)=20`
-/

namespace A270296.P12864142090632802188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [20] fun n a =>
  (60 * n : ℤ) - a (n - 1)

end

end A270296.P12864142090632802188

namespace A270296

/-- `60*n-a(n-1)` -/
def P12864142090632802188.Spec : Prop :=
  ∀ n, P12864142090632802188.a n = A270296 (n + 1)

end A270296

/-! ## A270296.P14253535817539656394

`abs(10*(Δ[n²]+or(1, n)))`
-/

namespace A270296.P14253535817539656394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |10 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.lor 1 n : ℤ))|

end

end A270296.P14253535817539656394

namespace A270296

/-- `abs(10*(Δ[n²]+or(1, n)))` -/
def P14253535817539656394.Spec : Prop :=
  ∀ n, P14253535817539656394.a n = A270296 (n + 1)

end A270296

/-! ## A270296.P2729127539192252540

`record[10*lcm(6, 2*(n+1))/3]`
-/

namespace A270296.P2729127539192252540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 * ((Nat.lcm 6 (2 * (n + 1)) : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270296.P2729127539192252540

namespace A270296

/-- `record[10*lcm(6, 2*(n+1))/3]` -/
def P2729127539192252540.Spec : Prop :=
  ∀ n, P2729127539192252540.a n = (A270296 (n + 1) : ℚ)

end A270296

/-! ## A270296.P13431856403437321048

`record[5*(lcm(3, n+1)+n+1)]`
-/

namespace A270296.P13431856403437321048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (Nat.lcm 3 (n + 1) + (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270296.P13431856403437321048

namespace A270296

/-- `record[5*(lcm(3, n+1)+n+1)]` -/
def P13431856403437321048.Spec : Prop :=
  ∀ n, (P13431856403437321048.a n : ℤ) = A270296 (n + 1)

end A270296

/-! ## A270296.P7051373125107868590

`∑[A040381(n)]`
-/

namespace A270296.P7051373125107868590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270296.P7051373125107868590

namespace A270296

/-- `∑[A040381(n)]` -/
def P7051373125107868590.Spec : Prop :=
  ∀ n, P7051373125107868590.a n = A270296 (n + 1)

end A270296

/-! ## A270296.P11881521223158352825

`∑[2*A040091(n)]`
-/

namespace A270296.P11881521223158352825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270296.P11881521223158352825

namespace A270296

/-- `∑[2*A040091(n)]` -/
def P11881521223158352825.Spec : Prop :=
  ∀ n, P11881521223158352825.a n = A270296 (n + 1)

end A270296

/-! ## A270296.P11812160518178685410

`∑[4*A040021(n)]`
-/

namespace A270296.P11812160518178685410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A040021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270296.P11812160518178685410

namespace A270296

/-- `∑[4*A040021(n)]` -/
def P11812160518178685410.Spec : Prop :=
  ∀ n, P11812160518178685410.a n = A270296 (n + 1)

end A270296

/-! ## A270296.P17998584005908707251

`∑[5*A040013(n)]`
-/

namespace A270296.P17998584005908707251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A040013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270296.P17998584005908707251

namespace A270296

/-- `∑[5*A040013(n)]` -/
def P17998584005908707251.Spec : Prop :=
  ∀ n, P17998584005908707251.a n = A270296 (n + 1)

end A270296

/-! ## A270296.P5994025324156916188

`A164131(n+1)+A155096(n+1)`
-/

namespace A270296.P5994025324156916188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (n + 1) + A155096 (n + 1)

end

end A270296.P5994025324156916188

namespace A270296

/-- `A164131(n+1)+A155096(n+1)` -/
def P5994025324156916188.Spec : Prop :=
  ∀ n, P5994025324156916188.a n = A270296 (n + 1)

end A270296

/-! ## A270296.P14617625844331439733

`lcm(A072703(n+1), A092259(n+1))`
-/

namespace A270296.P14617625844331439733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A072703 (n + 1)) (A092259 (n + 1))

end

end A270296.P14617625844331439733

namespace A270296

/-- `lcm(A072703(n+1), A092259(n+1))` -/
def P14617625844331439733.Spec : Prop :=
  ∀ n, (P14617625844331439733.a n : ℤ) = A270296 (n + 1)

end A270296

/-! ## A270296.P16366321334304137655

`A008602(n)+A008602(A008619(n))`
-/

namespace A270296.P16366321334304137655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008602 n + A008602 (A008619 n).toNat

end

end A270296.P16366321334304137655

namespace A270296

/-- `A008602(n)+A008602(A008619(n))` -/
def P16366321334304137655.Spec : Prop :=
  ∀ n, P16366321334304137655.a n = A270296 (n + 1)

end A270296

/-! ## A270296.P15798285075449225987

`A008602(A110654(n+1))+A008602(n)`
-/

namespace A270296.P15798285075449225987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008602 (A110654 (n + 1)).toNat + A008602 n

end

end A270296.P15798285075449225987

namespace A270296

/-- `A008602(A110654(n+1))+A008602(n)` -/
def P15798285075449225987.Spec : Prop :=
  ∀ n, P15798285075449225987.a n = A270296 (n + 1)

end A270296

/-! ## A270296.P6411890573524255805

`A092259(n+1)+A092259(n+1)²/A001651(n+1)`
-/

namespace A270296.P6411890573524255805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092259 (n + 1) : ℚ) + (A092259 (n + 1) ^ 2 : ℚ) / (A001651 (n + 1) : ℚ)

end

end A270296.P6411890573524255805

namespace A270296

/-- `A092259(n+1)+A092259(n+1)²/A001651(n+1)` -/
def P6411890573524255805.Spec : Prop :=
  ∀ n, P6411890573524255805.a n = (A270296 (n + 1) : ℚ)

end A270296

/-! ## A270296.P4839780502271981014

`A008602(A001651(n+1))`
-/

namespace A270296.P4839780502271981014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008602 (A001651 (n + 1)).toNat

end

end A270296.P4839780502271981014

namespace A270296

/-- `A008602(A001651(n+1))` -/
def P4839780502271981014.Spec : Prop :=
  ∀ n, P4839780502271981014.a n = A270296 (n + 1)

end A270296

/-! ## A270296.P6839023217627369859

`A008602(A008619(n)+n)`
-/

namespace A270296.P6839023217627369859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008602 (A008619 n + (n : ℤ)).toNat

end

end A270296.P6839023217627369859

namespace A270296

/-- `A008602(A008619(n)+n)` -/
def P6839023217627369859.Spec : Prop :=
  ∀ n, P6839023217627369859.a n = A270296 (n + 1)

end A270296

/-!
# A270297: Numbers which are representable as a sum of seven but no fewer consecutive nonnegative integers.

The programs for A270297, the canonical program `A270297.P13372243168542465082` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270297 has offset 1).

The definition of A270297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270297.P13372243168542465082

`28*A229829(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A270297

/-- `28*A229829(n+1)` -/
def P13372243168542465082.Spec : Prop :=
  ∀ n, P13372243168542465082.a n = A270297 (n + 1)

theorem P13372243168542465082.correct : P13372243168542465082.Spec := by
  intro n
  simp only [A270297, Nat.add_sub_cancel]

end A270297

/-! ## A270297.P8487919730475601246

`record[2*(lcm(15, n+1)-(n+1))]`
-/

namespace A270297.P8487919730475601246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lcm 15 (n + 1) : ℤ) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270297.P8487919730475601246

namespace A270297

/-- `record[2*(lcm(15, n+1)-(n+1))]` -/
def P8487919730475601246.Spec : Prop :=
  ∀ n, P8487919730475601246.a n = A270297 (n + 1)

end A270297

/-! ## A270297.P17468521435809934018

`record[28*gcd(n, A008414(n))]`
-/

namespace A270297.P17468521435809934018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * Int.gcd (n : ℤ) (A008414 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270297.P17468521435809934018

namespace A270297

/-- `record[28*gcd(n, A008414(n))]` -/
def P17468521435809934018.Spec : Prop :=
  ∀ n, (P17468521435809934018.a n : ℤ) = A270297 (n + 1)

end A270297

/-! ## A270297.P5431033237654440625

`A135628(A229829(n+1))`
-/

namespace A270297.P5431033237654440625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135628 (A229829 (n + 1)).toNat

end

end A270297.P5431033237654440625

namespace A270297

/-- `A135628(A229829(n+1))` -/
def P5431033237654440625.Spec : Prop :=
  ∀ n, P5431033237654440625.a n = A270297 (n + 1)

end A270297

/-! ## A270297.P11451453537188141017

`record[28*A060791(A051176(n+1))]`
-/

namespace A270297.P11451453537188141017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A060791 (A051176 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270297.P11451453537188141017

namespace A270297

/-- `record[28*A060791(A051176(n+1))]` -/
def P11451453537188141017.Spec : Prop :=
  ∀ n, P11451453537188141017.a n = A270297 (n + 1)

end A270297

/-! ## A270297.P2134324216388675526

`∩[A335774(n+1), A135628(n)]`
-/

namespace A270297.P2134324216388675526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135628 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270297.P2134324216388675526

namespace A270297

/-- `∩[A335774(n+1), A135628(n)]` -/
def P2134324216388675526.Spec : Prop :=
  ∀ n, (P2134324216388675526.a n : ℤ) = A270297 (n + 1)

end A270297

/-! ## A270297.P1305781463581515546

`A008596(A229829(n+1)+A229829(n+1))`
-/

namespace A270297.P1305781463581515546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 (A229829 (n + 1) + A229829 (n + 1)).toNat

end

end A270297.P1305781463581515546

namespace A270297

/-- `A008596(A229829(n+1)+A229829(n+1))` -/
def P1305781463581515546.Spec : Prop :=
  ∀ n, P1305781463581515546.a n = A270297 (n + 1)

end A270297

/-! ## A270297.P17933549883778451377

`∩[A335774(n+1), A374198(n+1)]`
-/

namespace A270297.P17933549883778451377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270297.P17933549883778451377

namespace A270297

/-- `∩[A335774(n+1), A374198(n+1)]` -/
def P17933549883778451377.Spec : Prop :=
  ∀ n, (P17933549883778451377.a n : ℤ) = A270297 (n + 1)

end A270297

/-! ## A270297.P7949131667031128819

`filter[A335774(n+1), A355453(#)]`
-/

namespace A270297.P7949131667031128819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A270297.P7949131667031128819

namespace A270297

/-- `filter[A335774(n+1), A355453(#)]` -/
def P7949131667031128819.Spec : Prop :=
  ∀ n, P7949131667031128819.a n = A270297 (n + 1)

end A270297

/-! ## A270297.P14953249760627658621

`filter[A335774(n+1), A374197(#)]`
-/

namespace A270297.P14953249760627658621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A270297.P14953249760627658621

namespace A270297

/-- `filter[A335774(n+1), A374197(#)]` -/
def P14953249760627658621.Spec : Prop :=
  ∀ n, P14953249760627658621.a n = A270297 (n + 1)

end A270297

/-! ## A270297.P9281689935348431594

`∩[A063117(n+1), A335774(n+1)]`
-/

namespace A270297.P9281689935348431594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270297.P9281689935348431594

namespace A270297

/-- `∩[A063117(n+1), A335774(n+1)]` -/
def P9281689935348431594.Spec : Prop :=
  ∀ n, (P9281689935348431594.a n : ℤ) = A270297 (n + 1)

end A270297

/-! ## A270297.P15839148738880899132

`∩[A335774(n+1), A184549(n)]`
-/

namespace A270297.P15839148738880899132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270297.P15839148738880899132

namespace A270297

/-- `∩[A335774(n+1), A184549(n)]` -/
def P15839148738880899132.Spec : Prop :=
  ∀ n, (P15839148738880899132.a n : ℤ) = A270297 (n + 1)

end A270297

/-! ## A270297.P12214305611837201632

`∩[A335774(n+1), A184550(n)]`
-/

namespace A270297.P12214305611837201632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184550 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270297.P12214305611837201632

namespace A270297

/-- `∩[A335774(n+1), A184550(n)]` -/
def P12214305611837201632.Spec : Prop :=
  ∀ n, (P12214305611837201632.a n : ℤ) = A270297 (n + 1)

end A270297

/-! ## A270297.P8142778467029757509

`∩[A335774(n+1), A184551(n)]`
-/

namespace A270297.P8142778467029757509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184551 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270297.P8142778467029757509

namespace A270297

/-- `∩[A335774(n+1), A184551(n)]` -/
def P8142778467029757509.Spec : Prop :=
  ∀ n, (P8142778467029757509.a n : ℤ) = A270297 (n + 1)

end A270297

/-! ## A270297.P7946316009035489847

`∩[A335774(n+1), A184552(n)]`
-/

namespace A270297.P7946316009035489847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184552 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270297.P7946316009035489847

namespace A270297

/-- `∩[A335774(n+1), A184552(n)]` -/
def P7946316009035489847.Spec : Prop :=
  ∀ n, (P7946316009035489847.a n : ℤ) = A270297 (n + 1)

end A270297

/-! ## A270297.P13725846627410587066

`filter[A335774(n+1), A121262(#)]`
-/

namespace A270297.P13725846627410587066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A270297.P13725846627410587066

namespace A270297

/-- `filter[A335774(n+1), A121262(#)]` -/
def P13725846627410587066.Spec : Prop :=
  ∀ n, P13725846627410587066.a n = A270297 (n + 1)

end A270297

/-! ## A270297.P7610002432396475715

`∩[A092259(n+1), A335774(n+1)]`
-/

namespace A270297.P7610002432396475715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270297.P7610002432396475715

namespace A270297

/-- `∩[A092259(n+1), A335774(n+1)]` -/
def P7610002432396475715.Spec : Prop :=
  ∀ n, (P7610002432396475715.a n : ℤ) = A270297 (n + 1)

end A270297

/-! ## A270297.P6447831854361302058

`∩[A335774(n+1), A231001(n)]`
-/

namespace A270297.P6447831854361302058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270297.P6447831854361302058

namespace A270297

/-- `∩[A335774(n+1), A231001(n)]` -/
def P6447831854361302058.Spec : Prop :=
  ∀ n, (P6447831854361302058.a n : ℤ) = A270297 (n + 1)

end A270297

/-! ## A270297.P8933533349085904593

`∩[A335774(n+1), A310532(n)]`
-/

namespace A270297.P8933533349085904593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310532 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270297.P8933533349085904593

namespace A270297

/-- `∩[A335774(n+1), A310532(n)]` -/
def P8933533349085904593.Spec : Prop :=
  ∀ n, (P8933533349085904593.a n : ℤ) = A270297 (n + 1)

end A270297

/-! ## A270297.P18084290793491888375

`∩[A335774(n+1), A315691(n)]`
-/

namespace A270297.P18084290793491888375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315691 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270297.P18084290793491888375

namespace A270297

/-- `∩[A335774(n+1), A315691(n)]` -/
def P18084290793491888375.Spec : Prop :=
  ∀ n, (P18084290793491888375.a n : ℤ) = A270297 (n + 1)

end A270297

/-!
# A270298: Numbers which are representable as a sum of eight but no fewer consecutive nonnegative integers.

The programs for A270298, the canonical program `A270298.P12968977381553057789` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270298 has offset 1).

The definition of A270298 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008364, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A270298.P12968977381553057789

`4*A008364(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A270298

/-- `4*A008364(n+2)` -/
def P12968977381553057789.Spec : Prop :=
  ∀ n, P12968977381553057789.a n = A270298 (n + 1)

theorem P12968977381553057789.correct : P12968977381553057789.Spec := by
  intro n
  simp only [A270298, Nat.add_sub_cancel]

end A270298

/-! ## A270298.P17698155824177956655

`4*(lt[7, A020639(n+1)]+1)`
-/

namespace A270298.P17698155824177956655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A270298.P17698155824177956655

namespace A270298

/-- `4*(lt[7, A020639(n+1)]+1)` -/
def P17698155824177956655.Spec : Prop :=
  ∀ n, (P17698155824177956655.a n : ℤ) = A270298 (n + 1)

end A270298

/-! ## A270298.P3859797859608491881

`lcm(4, A049296(n+1)+A008364(n+1))`
-/

namespace A270298.P3859797859608491881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A049296 (n + 1) + A008364 (n + 1))

end

end A270298.P3859797859608491881

namespace A270298

/-- `lcm(4, A049296(n+1)+A008364(n+1))` -/
def P3859797859608491881.Spec : Prop :=
  ∀ n, (P3859797859608491881.a n : ℤ) = A270298 (n + 1)

end A270298

/-! ## A270298.P8831061528198170975

`4*A055398(n+5)`
-/

namespace A270298.P8831061528198170975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A055398 (n + 5)

end

end A270298.P8831061528198170975

namespace A270298

/-- `4*A055398(n+5)` -/
def P8831061528198170975.Spec : Prop :=
  ∀ n, P8831061528198170975.a n = A270298 (n + 1)

end A270298

/-! ## A270298.P9708106921284184547

`2*2*A052424(n+6)`
-/

namespace A270298.P9708106921284184547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A052424 (n + 6))

end

end A270298.P9708106921284184547

namespace A270298

/-- `2*2*A052424(n+6)` -/
def P9708106921284184547.Spec : Prop :=
  ∀ n, P9708106921284184547.a n = A270298 (n + 1)

end A270298

/-! ## A270298.P4530374892999756678

`∩[2*A236206(n+1), A281813(n)]`
-/

namespace A270298.P4530374892999756678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A236206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270298.P4530374892999756678

namespace A270298

/-- `∩[2*A236206(n+1), A281813(n)]` -/
def P4530374892999756678.Spec : Prop :=
  ∀ n, (P4530374892999756678.a n : ℤ) = A270298 (n + 1)

end A270298

/-! ## A270298.P4101589343399354333

`4*(lt[4, A055396(n+1)]+1)`
-/

namespace A270298.P4101589343399354333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A270298.P4101589343399354333

namespace A270298

/-- `4*(lt[4, A055396(n+1)]+1)` -/
def P4101589343399354333.Spec : Prop :=
  ∀ n, (P4101589343399354333.a n : ℤ) = A270298 (n + 1)

end A270298

/-! ## A270298.P7387727148727779666

`A008574(A008364(n+2))`
-/

namespace A270298.P7387727148727779666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A008364 (n + 2)).toNat

end

end A270298.P7387727148727779666

namespace A270298

/-- `A008574(A008364(n+2))` -/
def P7387727148727779666.Spec : Prop :=
  ∀ n, P7387727148727779666.a n = A270298 (n + 1)

end A270298

/-! ## A270298.P12947267461648109878

`∩[A236206(n+1), A281813(n)]`
-/

namespace A270298.P12947267461648109878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270298.P12947267461648109878

namespace A270298

/-- `∩[A236206(n+1), A281813(n)]` -/
def P12947267461648109878.Spec : Prop :=
  ∀ n, (P12947267461648109878.a n : ℤ) = A270298 (n + 1)

end A270298

/-! ## A270298.P7985340285060963917

`eq[8, A163169(n)]`
-/

namespace A270298.P7985340285060963917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270298.P7985340285060963917

namespace A270298

/-- `eq[8, A163169(n)]` -/
def P7985340285060963917.Spec : Prop :=
  ∀ n, (P7985340285060963917.a n : ℤ) = A270298 (n + 1)

end A270298

/-! ## A270298.P11060318529551103462

`A211316(A084969(n+2))`
-/

namespace A270298.P11060318529551103462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211316 (A084969 (n + 2)).toNat

end

end A270298.P11060318529551103462

namespace A270298

/-- `A211316(A084969(n+2))` -/
def P11060318529551103462.Spec : Prop :=
  ∀ n, P11060318529551103462.a n = A270298 (n + 1)

end A270298

/-!
# A270299: Numbers which are representable as a sum of eleven but no fewer consecutive nonnegative integers.

The programs for A270299, the canonical program `A270299.P14931526767613465720` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270299 has offset 1).

The definition of A270299 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A236206, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A270299.P14931526767613465720

`88*A236206(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A270299

/-- `88*A236206(n+1)` -/
def P14931526767613465720.Spec : Prop :=
  ∀ n, P14931526767613465720.a n = A270299 (n + 1)

theorem P14931526767613465720.correct : P14931526767613465720.Spec := by
  intro n
  simp only [A270299, Nat.add_sub_cancel]

end A270299

/-! ## A270299.P9351018316436422367

`88*lt[7, A252358(n)]`
-/

namespace A270299.P9351018316436422367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  88 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270299.P9351018316436422367

namespace A270299

/-- `88*lt[7, A252358(n)]` -/
def P9351018316436422367.Spec : Prop :=
  ∀ n, (P9351018316436422367.a n : ℤ) = A270299 (n + 1)

end A270299

/-! ## A270299.P17683511532106773979

`88*(eq[n, A116082(n)%(n+1)]+1)`
-/

namespace A270299.P17683511532106773979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116082 n) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  88 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A270299.P17683511532106773979

namespace A270299

/-- `88*(eq[n, A116082(n)%(n+1)]+1)` -/
def P17683511532106773979.Spec : Prop :=
  ∀ n, (P17683511532106773979.a n : ℤ) = A270299 (n + 1)

end A270299

/-! ## A270299.P13258650291729600195

`A022144(eq[11, A252358(n)])`
-/

namespace A270299.P13258650291729600195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270299.P13258650291729600195

namespace A270299

/-- `A022144(eq[11, A252358(n)])` -/
def P13258650291729600195.Spec : Prop :=
  ∀ n, P13258650291729600195.a n = A270299 (n + 1)

end A270299

/-! ## A270299.P13534582376211954588

`eq[11, A163169(n)]`
-/

namespace A270299.P13534582376211954588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270299.P13534582376211954588

namespace A270299

/-- `eq[11, A163169(n)]` -/
def P13534582376211954588.Spec : Prop :=
  ∀ n, (P13534582376211954588.a n : ℤ) = A270299 (n + 1)

end A270299

