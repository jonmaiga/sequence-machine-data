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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A193300: Primes in Gica-Panaitopol sequence A193298 (sorted).

The programs for A193300, there is no canonical definition to state claims against.
-/

/-! ## A193300.P12503090332127350284

`p?[or(A112316(n), A193299(n+1))]`
-/

namespace A193300.P12503090332127350284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112316 n) (A193299 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A193300.P12503090332127350284

/-! ## A193300.P537993042394491846

`p?[A193299(n+2)+A112316(n+1)]`
-/

namespace A193300.P537993042394491846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193299 (n + 2) + A112316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A193300.P537993042394491846

/-! ## A193300.P14330106467086797

`record[A006530(A193299(n+1)+A112316(n))]`
-/

namespace A193300.P14330106467086797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A193299 (n + 1) + A112316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193300.P14330106467086797

/-! ## A193300.P15129126092724006149

`record[A014963(A193299(n+1)+A112316(n))]`
-/

namespace A193300.P15129126092724006149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A193299 (n + 1) + A112316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193300.P15129126092724006149

/-! ## A193300.P14714592280805205792

`record[A020639(A193299(n+1)+A112316(n))]`
-/

namespace A193300.P14714592280805205792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A193299 (n + 1) + A112316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193300.P14714592280805205792

/-!
# A193301: Complement of Gica-Panaitopol sequence A193298 (sorted).

The programs for A193301, there is no canonical definition to state claims against.
-/

/-! ## A193301.P3793138995971902584

`eq[char[A193298(n+1)], A151933(n)]`
-/

namespace A193301.P3793138995971902584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193298 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A193301.P3793138995971902584

/-! ## A193301.P15497557284596067158

`eq[char[A193299(n+1)], A151933(n)]`
-/

namespace A193301.P15497557284596067158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193299 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A193301.P15497557284596067158

/-! ## A193301.P112851682990873944

`lt[∑[A165728(n+1)], A054995(n+1)]`
-/

namespace A193301.P112851682990873944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165728 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054995 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A193301.P112851682990873944

/-! ## A193301.P7879427139812719021

`∩[comp[A193299(n+1)], A175427(n+3)]`
-/

namespace A193301.P7879427139812719021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193299 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A193301.P7879427139812719021

/-! ## A193301.P7990262150210968779

`lt[A324697(n+1), A324695(A054995(n+1))]`
-/

namespace A193301.P7990262150210968779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324695 (A054995 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193301.P7990262150210968779

/-!
# A193303: Squarefree numbers multiplied by powers of three.

The programs for A193303, the canonical program `A193303.P18416106213522661850` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193303 has offset 1).

The definition of A193303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6845 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193303.P7445586044783847862

`record[lcm(3^val(n+1, 3), ∏{p}[n+1, #])]`
-/

namespace A193303.P7445586044783847862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (3 ^ SequenceMachineLib.valuation (n + 1) 3) (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193303.P7445586044783847862

namespace A193303

/-- `record[lcm(3^val(n+1, 3), ∏{p}[n+1, #])]` -/
def P7445586044783847862.Spec : Prop :=
  ∀ n, (P7445586044783847862.a n : ℤ) = A193303 (n + 1)

end A193303

/-! ## A193303.P18416106213522661850

`record[lcm(∏{p}[n+1, #], A038500(n+1))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A193303

/-- `record[lcm(∏{p}[n+1, #], A038500(n+1))]` -/
def P18416106213522661850.Spec : Prop :=
  ∀ n, (P18416106213522661850.a n : ℤ) = A193303 (n + 1)

theorem P18416106213522661850.correct : P18416106213522661850.Spec := by
  intro n
  simp only [A193303, Nat.add_sub_cancel]

end A193303

/-! ## A193303.P7850561893690460221

`eq[A131946(∏{p}[n, #]), A131946(n)]`
-/

namespace A193303.P7850561893690460221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131946 (∏ p ∈ Nat.primeFactors (f2 n), p)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131946 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A193303.P7850561893690460221

namespace A193303

/-- `eq[A131946(∏{p}[n, #]), A131946(n)]` -/
def P7850561893690460221.Spec : Prop :=
  ∀ n, (P7850561893690460221.a n : ℤ) = A193303 (n + 1)

end A193303

/-! ## A193303.P12835388547266511079

`eq[2, A137305(A003557(n+1))]+1`
-/

namespace A193303.P12835388547266511079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137305 (A003557 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193303.P12835388547266511079

namespace A193303

/-- `eq[2, A137305(A003557(n+1))]+1` -/
def P12835388547266511079.Spec : Prop :=
  ∀ n, (P12835388547266511079.a n : ℤ) = A193303 (n + 1)

end A193303

/-! ## A193303.P962559354235322484

`record[A007913(n+1)*A264981(n+1)]`
-/

namespace A193303.P962559354235322484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A264981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193303.P962559354235322484

namespace A193303

/-- `record[A007913(n+1)*A264981(n+1)]` -/
def P962559354235322484.Spec : Prop :=
  ∀ n, P962559354235322484.a n = A193303 (n + 1)

end A193303

/-! ## A193303.P10061807286023376490

`record[(n+1)/A162510(A038502(n+1))]`
-/

namespace A193303.P10061807286023376490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A162510 (A038502 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193303.P10061807286023376490

namespace A193303

/-- `record[(n+1)/A162510(A038502(n+1))]` -/
def P10061807286023376490.Spec : Prop :=
  ∀ n, P10061807286023376490.a n = (A193303 (n + 1) : ℚ)

end A193303

/-! ## A193303.P9928240570515920551

`record[lcm(A003557(3*(n+1)), A007947(n+1))]`
-/

namespace A193303.P9928240570515920551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003557 (3 * (n + 1))) (A007947 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193303.P9928240570515920551

namespace A193303

/-- `record[lcm(A003557(3*(n+1)), A007947(n+1))]` -/
def P9928240570515920551.Spec : Prop :=
  ∀ n, (P9928240570515920551.a n : ℤ) = A193303 (n + 1)

end A193303

/-! ## A193303.P7632185218377936793

`eq[1, A072457(A011264(n+1))]+1`
-/

namespace A193303.P7632185218377936793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072457 (A011264 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193303.P7632185218377936793

namespace A193303

/-- `eq[1, A072457(A011264(n+1))]+1` -/
def P7632185218377936793.Spec : Prop :=
  ∀ n, (P7632185218377936793.a n : ℤ) = A193303 (n + 1)

end A193303

/-!
# A193304: Squarefree numbers multiplied by powers of 5.

The programs for A193304, the canonical program `A193304.P5208595360684029488` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193304 has offset 1).

The definition of A193304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193304.P8181850988039782829

`eq[7, C(7, A295295(n+1))]+1`
-/

namespace A193304.P8181850988039782829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 7 (A295295 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A193304.P8181850988039782829

namespace A193304

/-- `eq[7, C(7, A295295(n+1))]+1` -/
def P8181850988039782829.Spec : Prop :=
  ∀ n, (P8181850988039782829.a n : ℤ) = A193304 (n + 1)

end A193304

/-! ## A193304.P9914601589957039328

`record[lcm(5^val(n+1, 5), A007947(n+1))]`
-/

namespace A193304.P9914601589957039328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (5 ^ SequenceMachineLib.valuation (n + 1) 5 : ℤ) (A007947 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193304.P9914601589957039328

namespace A193304

/-- `record[lcm(5^val(n+1, 5), A007947(n+1))]` -/
def P9914601589957039328.Spec : Prop :=
  ∀ n, (P9914601589957039328.a n : ℤ) = A193304 (n + 1)

end A193304

/-! ## A193304.P5208595360684029488

`eq[1, A053824(A003557(n+1))]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A193304

/-- `eq[1, A053824(A003557(n+1))]+1` -/
def P5208595360684029488.Spec : Prop :=
  ∀ n, (P5208595360684029488.a n : ℤ) = A193304 (n + 1)

theorem P5208595360684029488.correct : P5208595360684029488.Spec := by
  intro n
  simp only [A193304, Nat.add_sub_cancel]

end A193304

/-! ## A193304.P11380770216877039216

`eq[1, A255690(A008833(n+1))]+1`
-/

namespace A193304.P11380770216877039216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255690 (A008833 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193304.P11380770216877039216

namespace A193304

/-- `eq[1, A255690(A008833(n+1))]+1` -/
def P11380770216877039216.Spec : Prop :=
  ∀ n, (P11380770216877039216.a n : ℤ) = A193304 (n + 1)

end A193304

/-! ## A193304.P2898646471691779407

`eq[A000045(A071773(n+1)), A071773(n+1)]+1`
-/

namespace A193304.P2898646471691779407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A071773 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A193304.P2898646471691779407

namespace A193304

/-- `eq[A000045(A071773(n+1)), A071773(n+1)]+1` -/
def P2898646471691779407.Spec : Prop :=
  ∀ n, (P2898646471691779407.a n : ℤ) = A193304 (n + 1)

end A193304

/-! ## A193304.P6818122309393995271

`record[(n+1)/A119822(A309395(2*(n+1))+1)]`
-/

namespace A193304.P6818122309393995271
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A119822 (A309395 (2 * (n + 1)) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193304.P6818122309393995271

namespace A193304

/-- `record[(n+1)/A119822(A309395(2*(n+1))+1)]` -/
def P6818122309393995271.Spec : Prop :=
  ∀ n, P6818122309393995271.a n = (A193304 (n + 1) : ℚ)

end A193304

/-!
# A193305: Composite numbers of the form 4, p^m, or 2*p^m for p an odd prime. All composites that have a primitive root.

The programs for A193305, the canonical program `A193305.P14986137312486349582` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193305 has offset 1).

The definition of A193305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3577 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193305.P14986137312486349582

`filter[A033948(n+1), A066247(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A193305

/-- `filter[A033948(n+1), A066247(#)]` -/
def P14986137312486349582.Spec : Prop :=
  ∀ n, P14986137312486349582.a n = A193305 (n + 1)

theorem P14986137312486349582.correct : P14986137312486349582.Spec := by
  intro n
  simp only [A193305, Nat.add_sub_cancel]

end A193305

/-! ## A193305.P7287234476626027247

`filter[A033948(n+2), A005171(#)]`
-/

namespace A193305.P7287234476626027247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A193305.P7287234476626027247

namespace A193305

/-- `filter[A033948(n+2), A005171(#)]` -/
def P7287234476626027247.Spec : Prop :=
  ∀ n, P7287234476626027247.a n = A193305 (n + 1)

end A193305

/-! ## A193305.P1261895688729572672

`filter[A300079(n+1), A211487(#)]`
-/

namespace A193305.P1261895688729572672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A193305.P1261895688729572672

namespace A193305

/-- `filter[A300079(n+1), A211487(#)]` -/
def P1261895688729572672.Spec : Prop :=
  ∀ n, P1261895688729572672.a n = A193305 (n + 1)

end A193305

/-! ## A193305.P12583581197569809018

`∩[A033948(n+1), A300079(n+1)]`
-/

namespace A193305.P12583581197569809018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193305.P12583581197569809018

namespace A193305

/-- `∩[A033948(n+1), A300079(n+1)]` -/
def P12583581197569809018.Spec : Prop :=
  ∀ n, (P12583581197569809018.a n : ℤ) = A193305 (n + 1)

end A193305

/-! ## A193305.P15905523470150957441

`∩[A002808(n+1), A033948(n+1)]`
-/

namespace A193305.P15905523470150957441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193305.P15905523470150957441

namespace A193305

/-- `∩[A002808(n+1), A033948(n+1)]` -/
def P15905523470150957441.Spec : Prop :=
  ∀ n, (P15905523470150957441.a n : ℤ) = A193305 (n + 1)

end A193305

/-! ## A193305.P8605731767708599309

`∩[A300079(n+1), A302140(n+1)]`
-/

namespace A193305.P8605731767708599309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193305.P8605731767708599309

namespace A193305

/-- `∩[A300079(n+1), A302140(n+1)]` -/
def P8605731767708599309.Spec : Prop :=
  ∀ n, (P8605731767708599309.a n : ℤ) = A193305 (n + 1)

end A193305

/-! ## A193305.P12370058163799563478

`A018252(eq[1, A211487(A018252(n+1))]+1)`
-/

namespace A193305.P12370058163799563478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A193305.P12370058163799563478

namespace A193305

/-- `A018252(eq[1, A211487(A018252(n+1))]+1)` -/
def P12370058163799563478.Spec : Prop :=
  ∀ n, P12370058163799563478.a n = A193305 (n + 1)

end A193305

/-! ## A193305.P17877465669688677832

`filter[A132858(n+1), A211487(#)]`
-/

namespace A193305.P17877465669688677832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A193305.P17877465669688677832

namespace A193305

/-- `filter[A132858(n+1), A211487(#)]` -/
def P17877465669688677832.Spec : Prop :=
  ∀ n, P17877465669688677832.a n = A193305 (n + 1)

end A193305

/-! ## A193305.P15790065999467912868

`∩[A033948(n+1), A132858(n+1)]`
-/

namespace A193305.P15790065999467912868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193305.P15790065999467912868

namespace A193305

/-- `∩[A033948(n+1), A132858(n+1)]` -/
def P15790065999467912868.Spec : Prop :=
  ∀ n, (P15790065999467912868.a n : ℤ) = A193305 (n + 1)

end A193305

/-! ## A193305.P17297665726117215095

`filter[A060679(n+1), A211487(#)]`
-/

namespace A193305.P17297665726117215095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A193305.P17297665726117215095

namespace A193305

/-- `filter[A060679(n+1), A211487(#)]` -/
def P17297665726117215095.Spec : Prop :=
  ∀ n, P17297665726117215095.a n = A193305 (n + 1)

end A193305

/-! ## A193305.P4258210443052679495

`∩[A033948(n+1), A060679(n+1)]`
-/

namespace A193305.P4258210443052679495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193305.P4258210443052679495

namespace A193305

/-- `∩[A033948(n+1), A060679(n+1)]` -/
def P4258210443052679495.Spec : Prop :=
  ∀ n, (P4258210443052679495.a n : ℤ) = A193305 (n + 1)

end A193305

/-! ## A193305.P4241469490326028325

`filter[A174891(n+1), A211487(#)]`
-/

namespace A193305.P4241469490326028325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A193305.P4241469490326028325

namespace A193305

/-- `filter[A174891(n+1), A211487(#)]` -/
def P4241469490326028325.Spec : Prop :=
  ∀ n, P4241469490326028325.a n = A193305 (n + 1)

end A193305

/-! ## A193305.P16532857539963215752

`filter[A002808(n+1), A211487(#)]`
-/

namespace A193305.P16532857539963215752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A193305.P16532857539963215752

namespace A193305

/-- `filter[A002808(n+1), A211487(#)]` -/
def P16532857539963215752.Spec : Prop :=
  ∀ n, P16532857539963215752.a n = A193305 (n + 1)

end A193305

/-! ## A193305.P16347970014172432732

`filter[A018252(n+1), A211487(#)]`
-/

namespace A193305.P16347970014172432732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A193305.P16347970014172432732

namespace A193305

/-- `filter[A018252(n+1), A211487(#)]` -/
def P16347970014172432732.Spec : Prop :=
  ∀ n, P16347970014172432732.a n = A193305 (n + 1)

end A193305

/-! ## A193305.P17430385797513335105

`filter[A141468(n+2), A211487(#)]`
-/

namespace A193305.P17430385797513335105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A193305.P17430385797513335105

namespace A193305

/-- `filter[A141468(n+2), A211487(#)]` -/
def P17430385797513335105.Spec : Prop :=
  ∀ n, P17430385797513335105.a n = A193305 (n + 1)

end A193305

/-! ## A193305.P17471342413259194265

`filter[A065090(n+3), A211487(#)]`
-/

namespace A193305.P17471342413259194265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A193305.P17471342413259194265

namespace A193305

/-- `filter[A065090(n+3), A211487(#)]` -/
def P17471342413259194265.Spec : Prop :=
  ∀ n, P17471342413259194265.a n = A193305 (n + 1)

end A193305

/-! ## A193305.P1774141531205806986

`filter[A222307(2*n+1), A211487(#)]`
-/

namespace A193305.P1774141531205806986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A193305.P1774141531205806986

namespace A193305

/-- `filter[A222307(2*n+1), A211487(#)]` -/
def P1774141531205806986.Spec : Prop :=
  ∀ n, P1774141531205806986.a n = A193305 (n + 1)

end A193305

/-! ## A193305.P4834196275677895110

`record[A141258(A002808(n+1))]`
-/

namespace A193305.P4834196275677895110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141258 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193305.P4834196275677895110

namespace A193305

/-- `record[A141258(A002808(n+1))]` -/
def P4834196275677895110.Spec : Prop :=
  ∀ n, P4834196275677895110.a n = A193305 (n + 1)

end A193305

/-! ## A193305.P4685097102223642577

`record[A141258(A018252(n+2))]`
-/

namespace A193305.P4685097102223642577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141258 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193305.P4685097102223642577

namespace A193305

/-- `record[A141258(A018252(n+2))]` -/
def P4685097102223642577.Spec : Prop :=
  ∀ n, P4685097102223642577.a n = A193305 (n + 1)

end A193305

/-! ## A193305.P13114043781561145601

`record[A141258(A141468(n+3))]`
-/

namespace A193305.P13114043781561145601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141258 (A141468 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193305.P13114043781561145601

namespace A193305

/-- `record[A141258(A141468(n+3))]` -/
def P13114043781561145601.Spec : Prop :=
  ∀ n, P13114043781561145601.a n = A193305 (n + 1)

end A193305

/-!
# A193306: Number of 'Reverse and Subtract' steps needed to reach 0, or -1 if never reaches 0, using base -1+i and subtracting the reversed number from original.

The programs for A193306, there is no canonical definition to state claims against.
-/

/-! ## A193306.P2770768617870666994

`A382986(A278423(n+1))`
-/

namespace A193306.P2770768617870666994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382986 (A278423 (n + 1)).toNat

end

end A193306.P2770768617870666994

/-! ## A193306.P8464630128080048837

`n-A280292(A018280(n+1))`
-/

namespace A193306.P8464630128080048837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A280292 (A018280 (n + 1)).toNat

end

end A193306.P8464630128080048837

/-! ## A193306.P7494025963252138302

`A328317(n)-A079706(A054252(n))`
-/

namespace A193306.P7494025963252138302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328317 n - A079706 (A054252 n).toNat

end

end A193306.P7494025963252138302

/-! ## A193306.P17556402058268420027

`A001221(A027642(n)*A136299(n))`
-/

namespace A193306.P17556402058268420027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A027642 n * A136299 n).toNat

end

end A193306.P17556402058268420027

/-! ## A193306.P9090046600632019231

`gcd(A000695(n), A316967(A000129(n)))`
-/

namespace A193306.P9090046600632019231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000695 n) (A316967 (A000129 n).toNat)

end

end A193306.P9090046600632019231

/-!
# A193307: Number of 'Reverse and Subtract' steps needed to reach 0, or -1 if never reaches 0, using base -1+i and subtracting the original number from the reversed.

The programs for A193307, there is no canonical definition to state claims against.
-/

/-! ## A193307.P761619306705417415

`Δ[A014019(A160113(n)+6)]`
-/

namespace A193307.P761619306705417415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (A160113 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193307.P761619306705417415

/-! ## A193307.P7608159490192317491

`Δ[A054054(A132952(n+2)!)]`
-/

namespace A193307.P7608159490192317491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (Nat.factorial (A132952 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193307.P7608159490192317491

/-! ## A193307.P12301196636812631335

`Δ[A335451(A112652(2*n+3))]`
-/

namespace A193307.P12301196636812631335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335451 (A112652 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193307.P12301196636812631335

/-! ## A193307.P10090404673010446205

`Δ[A320040(A320470(3*n))%3]`
-/

namespace A193307.P10090404673010446205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320040 (A320470 (3 * n)).toNat) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193307.P10090404673010446205

/-! ## A193307.P5519029112584394874

`Δ[A277745(A136231(n+1)+A006218(3*n+1))]`
-/

namespace A193307.P5519029112584394874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277745 (A136231 (n + 1) + A006218 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193307.P5519029112584394874

/-!
# A193308: Number of n X n symmetric 0..2 arrays with no element equal to any horizontal or vertical neighbor, containing at least one 2 and with new values 0..2 introduced in lower triangular row major order.

The programs for A193308, there is no canonical definition to state claims against.
-/

/-! ## A193308.P11918414565978860260

`A193268(n+1)-1`
-/

namespace A193308.P11918414565978860260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193268 (n + 1) - 1

end

end A193308.P11918414565978860260

/-! ## A193308.P3781858801382569873

`record[Δ[A193268(A158416(n))]]`
-/

namespace A193308.P3781858801382569873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193268 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193308.P3781858801382569873

/-! ## A193308.P427915340576770401

`A317950(gcd(n, n+1))+A193268(n+1)`
-/

namespace A193308.P427915340576770401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317950 (Nat.gcd n (n + 1)) + A193268 (n + 1)

end

end A193308.P427915340576770401

/-! ## A193308.P9551326341931977174

`A291169(A291168(n))+A193268(n+1)`
-/

namespace A193308.P9551326341931977174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291169 (A291168 n).toNat + A193268 (n + 1)

end

end A193308.P9551326341931977174

/-! ## A193308.P11913971089315598454

`A258196(A020639(2*(n+1)))+A193268(n+1)`
-/

namespace A193308.P11913971089315598454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258196 (A020639 (2 * (n + 1))).toNat + A193268 (n + 1)

end

end A193308.P11913971089315598454

/-!
# A193309: Number of n X n symmetric 0..3 arrays with no element equal to any horizontal or vertical neighbor, containing at least one 3 and with new values 0..3 introduced in lower triangular row major order.

The programs for A193309, there is no canonical definition to state claims against.
-/

/-! ## A193309.P1109124770406074540

`A193269(n+1)-A193268(n+1)`
-/

namespace A193309.P1109124770406074540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193269 (n + 1) - A193268 (n + 1)

end

end A193309.P1109124770406074540

/-! ## A193309.P14977815733957703473

`A193269(n+1)-(A193308(n+1)+1)`
-/

namespace A193309.P14977815733957703473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193269 (n + 1) - (A193308 (n + 1) + 1)

end

end A193309.P14977815733957703473

/-! ## A193309.P16002407136609633679

`A193269(n+1)-ceil(A145237(n+1)/2)`
-/

namespace A193309.P16002407136609633679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193269 (n + 1) - ⌈(A145237 (n + 1) : ℚ) / 2⌉

end

end A193309.P16002407136609633679

/-! ## A193309.P6043198348579441669

`A193269(n+1)-A145237(n+1)/A020639(A310503(n))`
-/

namespace A193309.P6043198348579441669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193269 (n + 1) : ℚ) - (A145237 (n + 1) : ℚ) / (A020639 (A310503 n).toNat : ℚ)

end

end A193309.P6043198348579441669

/-! ## A193309.P9535674757977347705

`A193269(n+1)-A145237(n+1)/A014963(A000079(n))`
-/

namespace A193309.P9535674757977347705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193269 (n + 1) : ℚ) - (A145237 (n + 1) : ℚ) / (A014963 (A000079 n).toNat : ℚ)

end

end A193309.P9535674757977347705

/-!
# A193310: Number of n X n symmetric 0..4 arrays with no element equal to any horizontal or vertical neighbor, containing at least one 4 and with new values 0..4 introduced in lower triangular row major order.

The programs for A193310, there is no canonical definition to state claims against.
-/

/-! ## A193310.P17905928751031498097

`A193270(n+1)-A193269(n+1)`
-/

namespace A193310.P17905928751031498097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193270 (n + 1) - A193269 (n + 1)

end

end A193310.P17905928751031498097

/-! ## A193310.P16564457266672878126

`A193270(n+1)-(A193309(n+1)+A193268(n+1))`
-/

namespace A193310.P16564457266672878126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193270 (n + 1) - (A193309 (n + 1) + A193268 (n + 1))

end

end A193310.P16564457266672878126

/-! ## A193310.P2008741467726894741

`A193270(n+1)-(A193308(n+1)+A193309(n+1)+1)`
-/

namespace A193310.P2008741467726894741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193270 (n + 1) - (A193308 (n + 1) + (A193309 (n + 1) + 1))

end

end A193310.P2008741467726894741

/-! ## A193310.P5364698557453882098

`A193270(n+1)-ceil(A193309(n+1)+A145237(n+1)/2)`
-/

namespace A193310.P5364698557453882098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193270 (n + 1) - ⌈(A193309 (n + 1) : ℚ) + (A145237 (n + 1) : ℚ) / 2⌉

end

end A193310.P5364698557453882098

/-! ## A193310.P8837834691291830077

`A193271(n+1)-(A193311(n+1)+A193269(n+1))`
-/

namespace A193310.P8837834691291830077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193271 (n + 1) - (A193311 (n + 1) + A193269 (n + 1))

end

end A193310.P8837834691291830077

/-!
# A193311: Number of n X n symmetric 0..5 arrays with no element equal to any horizontal or vertical neighbor, containing at least one 5 and with new values 0..5 introduced in lower triangular row major order.

The programs for A193311, there is no canonical definition to state claims against.
-/

/-! ## A193311.P11806844823577110391

`A193271(n+1)-A193270(n+1)`
-/

namespace A193311.P11806844823577110391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193271 (n + 1) - A193270 (n + 1)

end

end A193311.P11806844823577110391

/-! ## A193311.P5377586601057556649

`A193271(n+1)-(A193310(n+1)+A193269(n+1))`
-/

namespace A193311.P5377586601057556649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193271 (n + 1) - (A193310 (n + 1) + A193269 (n + 1))

end

end A193311.P5377586601057556649

/-! ## A193311.P14604926926315281593

`A193271(n+1)-(A193268(n+1)+A193310(n+1)+A193309(n+1))`
-/

namespace A193311.P14604926926315281593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193271 (n + 1) - (A193268 (n + 1) + (A193310 (n + 1) + A193309 (n + 1)))

end

end A193311.P14604926926315281593

/-! ## A193311.P18304566863386166826

`A193271(n+1)-(A193310(n+1)+A193308(n+1)+A193309(n+1)+1)`
-/

namespace A193311.P18304566863386166826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193271 (n + 1) - (A193310 (n + 1) + (A193308 (n + 1) + (A193309 (n + 1) + 1)))

end

end A193311.P18304566863386166826

/-! ## A193311.P16442002232894118323

`A193272(n+1)-(A193312(n+1)+A193270(n+1))`
-/

namespace A193311.P16442002232894118323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193272 (n + 1) - (A193312 (n + 1) + A193270 (n + 1))

end

end A193311.P16442002232894118323

/-!
# A193312: Number of n X n symmetric 0..6 arrays with no element equal to any horizontal or vertical neighbor, containing at least one 6 and with new values 0..6 introduced in lower triangular row major order.

The programs for A193312, there is no canonical definition to state claims against.
-/

/-! ## A193312.P1722005263487402920

`A193272(n+1)-A193271(n+1)`
-/

namespace A193312.P1722005263487402920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193272 (n + 1) - A193271 (n + 1)

end

end A193312.P1722005263487402920

/-!
# A193313: Number of n X n symmetric 0..7 arrays with no element equal to any horizontal or vertical neighbor, containing at least one 7 and with new values 0..7 introduced in lower triangular row major order.

The programs for A193313, there is no canonical definition to state claims against.
-/

/-! ## A193313.P16070871203284471866

`A193273(n+1)-A193272(n+1)`
-/

namespace A193313.P16070871203284471866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193273 (n + 1) - A193272 (n + 1)

end

end A193313.P16070871203284471866

/-!
# A193314: The smallest k such that the product k*(k+1) is divisible by the first n primes and no others.

The programs for A193314, there is no canonical definition to state claims against.
-/

/-! ## A193314.P4484007958106013595

`A141399(A305223(n+1)+A000070(n))`
-/

namespace A193314.P4484007958106013595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141399 (A305223 (n + 1) + A000070 n).toNat

end

end A193314.P4484007958106013595

/-!
# A193315: Write 2n=j+q (j,q positive noncomposite numbers); j*q maximal; then a(n)=j*q.

The programs for A193315, there is no canonical definition to state claims against.
-/

/-! ## A193315.P7452205271446653751

`floor(A102084(n+1)+acot(n))`
-/

namespace A193315.P7452205271446653751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A102084 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A193315.P7452205271446653751

/-! ## A193315.P14291700919976925797

`A099303(2*(n+1))+floor(acot(n))`
-/

namespace A193315.P14291700919976925797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099303 (2 * (n + 1)) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A193315.P14291700919976925797

/-! ## A193315.P151940201760691628

`A099303(2*n+2)+floor(1/(n+1))`
-/

namespace A193315.P151940201760691628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099303 (2 * n + 2) + ⌊1 / (n + 1 : ℚ)⌋

end

end A193315.P151940201760691628

/-! ## A193315.P18227664002896201167

`A028310(A102084(n+1))`
-/

namespace A193315.P18227664002896201167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A102084 (n + 1)).toNat

end

end A193315.P18227664002896201167

/-! ## A193315.P8527380187236390934

`A028310(A099303(2*(n+1)))`
-/

namespace A193315.P8527380187236390934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A099303 (2 * (n + 1))).toNat

end

end A193315.P8527380187236390934

/-! ## A193315.P16425223985410922937

`A065033(2*A102084(n+1))`
-/

namespace A193315.P16425223985410922937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A102084 (n + 1)).toNat

end

end A193315.P16425223985410922937

/-! ## A193315.P3381266595206444924

`A102084(n+1)+A000007(n)`
-/

namespace A193315.P3381266595206444924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102084 (n + 1) + A000007 n

end

end A193315.P3381266595206444924

/-! ## A193315.P13764376233226756228

`A102084(n+1)+A088157(n)`
-/

namespace A193315.P13764376233226756228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102084 (n + 1) + A088157 n

end

end A193315.P13764376233226756228

/-! ## A193315.P7822434199400589443

`A112316(n)+A102084(n+1)`
-/

namespace A193315.P7822434199400589443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 n + A102084 (n + 1)

end

end A193315.P7822434199400589443

/-! ## A193315.P3121809746533054630

`A151810(n)+A102084(n+1)`
-/

namespace A193315.P3121809746533054630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151810 n + A102084 (n + 1)

end

end A193315.P3121809746533054630

/-!
# A193316: Number of basic forbidden patterns of length n of the map f(x)=4x(1-x) on the unit interval.

The programs for A193316, there is no canonical definition to state claims against.
-/

/-! ## A193316.P4738825759094254658

`A244624(A004913(n+1))-A045880(n+1)`
-/

namespace A193316.P4738825759094254658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244624 (A004913 (n + 1)).toNat - A045880 (n + 1)

end

end A193316.P4738825759094254658

/-! ## A193316.P3206882198924576735

`A000079(n)-A303432(A369832(n)+A000079(n))`
-/

namespace A193316.P3206882198924576735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A303432 (A369832 n + A000079 n).toNat

end

end A193316.P3206882198924576735

/-!
# A193317: Binomial(n,2)*B(n-1)*(B(n)-B(n-1)), where B() = A000110() are the Bell numbers.

The programs for A193317, there is no canonical definition to state claims against.
-/

/-! ## A193317.P12654313170732712732

`A124104(round(sqrt(n²+1)))/2`
-/

namespace A193317.P12654313170732712732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124104 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

end

end A193317.P12654313170732712732

/-! ## A193317.P6223391116671662417

`A141468(A268698(n))*A200922(A276441(n!))`
-/

namespace A193317.P6223391116671662417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A268698 n).toNat * A200922 (A276441 (Nat.factorial n)).toNat

end

end A193317.P6223391116671662417

/-!
# A193318: G.f.: Sum_{n>=0} x^n*Product_{k=1..n} (1 - (2*k-1)*x) / (1 - (2*k)*x).

The programs for A193318, there is no canonical definition to state claims against.
-/

/-! ## A193318.P11491465705831782343

`A255573(n*(a(n-1)+1))` with `a(0)=1`
-/

namespace A193318.P11491465705831782343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255573 ((n : ℤ) * (a (n - 1) + 1)).toNat

end

end A193318.P11491465705831782343

/-! ## A193318.P11850960186748797934

`A255573(n*a(A023443(n))+n)` with `a(0)=1`
-/

namespace A193318.P11850960186748797934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255573 ((n : ℤ) * a (A023443 n).toNat + (n : ℤ)).toNat

end

end A193318.P11850960186748797934

/-! ## A193318.P15667920140168945703

`or(A008619(A221453(n+1)), A064989(n+1))`
-/

namespace A193318.P15667920140168945703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008619 (A221453 (n + 1)).toNat) (A064989 (n + 1))

end

end A193318.P15667920140168945703

/-!
# A193319: G.f.: Sum_{n>=0} x^n*Product_{k=1..n} (1 - (4*k-3)*x) / (1 - (4*k-1)*x).

The programs for A193319, there is no canonical definition to state claims against.
-/

/-! ## A193319.P9849316490712010571

`ceil(A023443(A288866((n+1)!))/3)`
-/

namespace A193319.P9849316490712010571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023443 (A288866 (Nat.factorial (n + 1))).toNat : ℚ) / 3⌉

end

end A193319.P9849316490712010571

/-! ## A193319.P12974375122177830444

`A110654(A192662(n)+A063834(n))`
-/

namespace A193319.P12974375122177830444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A192662 n + A063834 n).toNat

end

end A193319.P12974375122177830444

/-! ## A193319.P8466854743704385590

`A345132(n)+A103221(A000272(n))`
-/

namespace A193319.P8466854743704385590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345132 n + A103221 (A000272 n).toNat

end

end A193319.P8466854743704385590

/-!
# A193320: G.f.: Sum_{n>=0} x^n*Product_{k=1..n} (1 - k*x) / (1 - (2*k-1)*x).

The programs for A193320, there is no canonical definition to state claims against.
-/

/-! ## A193320.P17906104456594293241

`A060384(A144037(n)+A019554(n+2))`
-/

namespace A193320.P17906104456594293241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A144037 n + A019554 (n + 2)).toNat

end

end A193320.P17906104456594293241

/-! ## A193320.P15637233292544143209

`ceil(A119268(2*n+1)/19)`
-/

namespace A193320.P15637233292544143209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A119268 (2 * n + 1) : ℚ) / 19⌉

end

end A193320.P15637233292544143209

/-! ## A193320.P7439525748334635392

`A181160(A190865(n))`
-/

namespace A193320.P7439525748334635392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181160 (A190865 n).toNat

end

end A193320.P7439525748334635392

/-!
# A193321: G.f.: Sum_{n>=0} x^n*Product_{k=1..n} (1 - k*x) / (1 - (2*k)*x).

The programs for A193321, there is no canonical definition to state claims against.
-/

/-! ## A193321.P10732882293922500761

`A263780(n)-A350251(A205482(n+3))`
-/

namespace A193321.P10732882293922500761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263780 n - A350251 (A205482 (n + 3)).toNat

end

end A193321.P10732882293922500761

/-!
# A193322: Sum of even divisors of lambda(n).

The programs for A193322, there is no canonical definition to state claims against.
-/

/-! ## A193322.P17581930450555215954

`A146076(A002322(n+1))`
-/

namespace A193322.P17581930450555215954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A002322 (n + 1)).toNat

end

end A193322.P17581930450555215954

/-! ## A193322.P7693239499338232347

`A146076((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A034380(n+1))`
-/

namespace A193322.P7693239499338232347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A193322.P7693239499338232347

/-! ## A193322.P16599274773795965108

`A326136(A002322(n+1)%A016972(n))`
-/

namespace A193322.P16599274773795965108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326136 (Int.tmod (A002322 (n + 1)) (A016972 n)).toNat

end

end A193322.P16599274773795965108

/-! ## A193322.P13173814798347239643

`A326136(A002322(n+1))%A017441(n)`
-/

namespace A193322.P13173814798347239643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326136 (A002322 (n + 1)).toNat) (A017441 n)

end

end A193322.P13173814798347239643

/-! ## A193322.P4810400550248823670

`∑{d}[A004526(A002322(n+1)), A005843(#)]`
-/

namespace A193322.P4810400550248823670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002322 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A005843 d

end

end A193322.P4810400550248823670

/-! ## A193322.P13100531083351549529

`A146076(A000010(n+1)/A034380(n+1))`
-/

namespace A193322.P13100531083351549529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A193322.P13100531083351549529

/-! ## A193322.P933302390225310251

`A146076((n-A219428(n+1))/A034380(n+1))`
-/

namespace A193322.P933302390225310251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (SequenceMachineLib.roundAway (((n : ℤ) - A219428 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A193322.P933302390225310251

/-! ## A193322.P11758836603001303507

`A146076((1-A051953(n+1)+n)/A034380(n+1))`
-/

namespace A193322.P11758836603001303507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (SequenceMachineLib.roundAway ((1 - A051953 (n + 1) + (n : ℤ) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A193322.P11758836603001303507

/-! ## A193322.P3637608453242430018

`A146076(∏{p}[n+1, #-1]*A003557(n+1)/A034380(n+1))`
-/

namespace A193322.P3637608453242430018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (SequenceMachineLib.roundAway ((((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) : ℤ) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A193322.P3637608453242430018

/-! ## A193322.P5730716953515340695

`A146076((n+1)/∏{p}[n+1, #]*A173557(n+1)/A034380(n+1))`
-/

namespace A193322.P5730716953515340695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A193322.P5730716953515340695

/-! ## A193322.P5684070624830313782

`A146076((A300725(n+1)+A300724(n+1))/A034380(n+1))`
-/

namespace A193322.P5684070624830313782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (SequenceMachineLib.roundAway ((A300725 (n + 1) + A300724 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A193322.P5684070624830313782

/-! ## A193322.P1511968277022416028

`A146076((A049633(n)-A049632(n))/A034380(n+1))`
-/

namespace A193322.P1511968277022416028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (SequenceMachineLib.roundAway ((A049633 n - A049632 n : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A193322.P1511968277022416028

/-!
# A193323: Number of nXnXn triangular 0..1 arrays with each element equal to the product mod 2 of two neighbors.

The programs for A193323, there is no canonical definition to state claims against.
-/

/-! ## A193323.P1453368854698883473

`A322463(A211893(n)-1)`
-/

namespace A193323.P1453368854698883473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322463 (A211893 n - 1).toNat

end

end A193323.P1453368854698883473

/-!
# A193330: Number of prime factors of n^2 + 1, counted with multiplicity.

The programs for A193330, the canonical program `A193330.P8720727240559106318` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193330 has offset 0).

The definition of A193330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193330.P8720727240559106318

`∑{e}[A278162(n), #]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A193330

/-- `∑{e}[A278162(n), #]` -/
def P8720727240559106318.Spec : Prop :=
  ∀ n, (P8720727240559106318.a n : ℤ) = A193330 n

theorem P8720727240559106318.correct : P8720727240559106318.Spec := by
  intro n
  simp only [A193330]

end A193330

/-! ## A193330.P11847010030157405580

`A001222(A278162(n))`
-/

namespace A193330.P11847010030157405580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278162 n).toNat

end

end A193330.P11847010030157405580

namespace A193330

/-- `A001222(A278162(n))` -/
def P11847010030157405580.Spec : Prop :=
  ∀ n, P11847010030157405580.a n = A193330 n

end A193330

/-! ## A193330.P9321574203614632966

`∑{e}[n²+1, #]`
-/

namespace A193330.P9321574203614632966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A193330.P9321574203614632966

namespace A193330

/-- `∑{e}[n²+1, #]` -/
def P9321574203614632966.Spec : Prop :=
  ∀ n, (P9321574203614632966.a n : ℤ) = A193330 n

end A193330

/-! ## A193330.P10998317892792499423

`floor(log(∏{e}[n²+1, 3^#]))`
-/

namespace A193330.P10998317892792499423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((∏ p ∈ Nat.primeFactors (f1 n), 3 ^ Nat.factorization (f1 n) p : ℕ) : ℝ)⌋

end

end A193330.P10998317892792499423

namespace A193330

/-- `floor(log(∏{e}[n²+1, 3^#]))` -/
def P10998317892792499423.Spec : Prop :=
  ∀ n, P10998317892792499423.a n = A193330 n

end A193330

/-! ## A193330.P16674423638406657350

`dr(∑{e}[(n+1)*(n-1)+2, #])`
-/

namespace A193330.P16674423638406657350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A193330.P16674423638406657350

namespace A193330

/-- `dr(∑{e}[(n+1)*(n-1)+2, #])` -/
def P16674423638406657350.Spec : Prop :=
  ∀ n, (P16674423638406657350.a n : ℤ) = A193330 n

end A193330

/-! ## A193330.P9852127326428025975

`∑{e}[n*3*n+3, #]-1`
-/

namespace A193330.P9852127326428025975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1

end

end A193330.P9852127326428025975

namespace A193330

/-- `∑{e}[n*3*n+3, #]-1` -/
def P9852127326428025975.Spec : Prop :=
  ∀ n, P9852127326428025975.a n = A193330 n

end A193330

/-! ## A193330.P9900295145735797977

`A001222(n²+1)`
-/

namespace A193330.P9900295145735797977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 1)

end

end A193330.P9900295145735797977

namespace A193330

/-- `A001222(n²+1)` -/
def P9900295145735797977.Spec : Prop :=
  ∀ n, P9900295145735797977.a n = A193330 n

end A193330

/-! ## A193330.P8709727760340020868

`dr(A001222(∑[2*n]-(n-1)))`
-/

namespace A193330.P8709727760340020868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001222 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A193330.P8709727760340020868

namespace A193330

/-- `dr(A001222(∑[2*n]-(n-1)))` -/
def P8709727760340020868.Spec : Prop :=
  ∀ n, (P8709727760340020868.a n : ℤ) = A193330 n

end A193330

/-! ## A193330.P866149435179903377

`A325225(n²+1)`
-/

namespace A193330.P866149435179903377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (n ^ 2 + 1)

end

end A193330.P866149435179903377

namespace A193330

/-- `A325225(n²+1)` -/
def P866149435179903377.Spec : Prop :=
  ∀ n, P866149435179903377.a n = A193330 n

end A193330

/-! ## A193330.P15230476968756675619

`A001222(n*2*n+2)-1`
-/

namespace A193330.P15230476968756675619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n * (2 * n) + 2) - 1

end

end A193330.P15230476968756675619

namespace A193330

/-- `A001222(n*2*n+2)-1` -/
def P15230476968756675619.Spec : Prop :=
  ∀ n, P15230476968756675619.a n = A193330 n

end A193330

/-! ## A193330.P4128477975497466202

`log2(A318312(n²+1))`
-/

namespace A193330.P4128477975497466202
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A318312 (n ^ 2 + 1) : ℝ)

end

end A193330.P4128477975497466202

namespace A193330

/-- `log2(A318312(n²+1))` -/
def P4128477975497466202.Spec : Prop :=
  ∀ n, P4128477975497466202.a n = (A193330 n : ℝ)

end A193330

/-! ## A193330.P11594142635861963213

`log2(A318316(n²+1))`
-/

namespace A193330.P11594142635861963213
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A318316 (n ^ 2 + 1) : ℝ)

end

end A193330.P11594142635861963213

namespace A193330

/-- `log2(A318316(n²+1))` -/
def P11594142635861963213.Spec : Prop :=
  ∀ n, P11594142635861963213.a n = (A193330 n : ℝ)

end A193330

/-! ## A193330.P3455494991652344007

`log2(A061142(n²+1))`
-/

namespace A193330.P3455494991652344007
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n ^ 2 + 1) : ℝ)

end

end A193330.P3455494991652344007

namespace A193330

/-- `log2(A061142(n²+1))` -/
def P3455494991652344007.Spec : Prop :=
  ∀ n, P3455494991652344007.a n = (A193330 n : ℝ)

end A193330

/-! ## A193330.P9753651963173398407

`A122375(n²+1)`
-/

namespace A193330.P9753651963173398407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122375 (n ^ 2 + 1)

end

end A193330.P9753651963173398407

namespace A193330

/-- `A122375(n²+1)` -/
def P9753651963173398407.Spec : Prop :=
  ∀ n, P9753651963173398407.a n = A193330 n

end A193330

/-! ## A193330.P15463885254181744850

`A122810(n²+1)`
-/

namespace A193330.P15463885254181744850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122810 (n ^ 2 + 1)

end

end A193330.P15463885254181744850

namespace A193330

/-- `A122810(n²+1)` -/
def P15463885254181744850.Spec : Prop :=
  ∀ n, P15463885254181744850.a n = A193330 n

end A193330

/-! ## A193330.P5642133752211398411

`A125030(n²+1)`
-/

namespace A193330.P5642133752211398411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125030 (n ^ 2 + 1)

end

end A193330.P5642133752211398411

namespace A193330

/-- `A125030(n²+1)` -/
def P5642133752211398411.Spec : Prop :=
  ∀ n, P5642133752211398411.a n = A193330 n

end A193330

/-! ## A193330.P8630645176753669880

`A257091(n²+1)`
-/

namespace A193330.P8630645176753669880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257091 (n ^ 2 + 1)

end

end A193330.P8630645176753669880

namespace A193330

/-- `A257091(n²+1)` -/
def P8630645176753669880.Spec : Prop :=
  ∀ n, P8630645176753669880.a n = A193330 n

end A193330

/-! ## A193330.P627049940109942339

`A366989(n²+1)`
-/

namespace A193330.P627049940109942339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366989 (n ^ 2 + 1)

end

end A193330.P627049940109942339

namespace A193330

/-- `A366989(n²+1)` -/
def P627049940109942339.Spec : Prop :=
  ∀ n, P627049940109942339.a n = A193330 n

end A193330

/-! ## A193330.P9429426811976052263

`dr(A037916(n²+1))`
-/

namespace A193330.P9429426811976052263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A037916 (n ^ 2 + 1))

end

end A193330.P9429426811976052263

namespace A193330

/-- `dr(A037916(n²+1))` -/
def P9429426811976052263.Spec : Prop :=
  ∀ n, (P9429426811976052263.a n : ℤ) = A193330 n

end A193330

/-!
# A193331: Triangle read by rows: T(n,k) = floor((k-1)*n^2/(2*k)) is an upper bound on the number of edges in the (n-k)-Turán graph.

The programs for A193331, there is no canonical definition to state claims against.
-/

/-! ## A193331.P15844644157472205367

`A198787(abs(Δ[A350578(n)]))`
-/

namespace A193331.P15844644157472205367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198787 |f1 (n + 1) - f1 n|.toNat

end

end A193331.P15844644157472205367

/-! ## A193331.P18104136520657606190

`A198787(n+1)%A079031(n)`
-/

namespace A193331.P18104136520657606190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198787 (n + 1)) (A079031 n)

end

end A193331.P18104136520657606190

/-! ## A193331.P8948276589751626811

`A198787(n+1)+A125230(n)%(-1)`
-/

namespace A193331.P8948276589751626811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198787 (n + 1) + Int.tmod (A125230 n) (-1)

end

end A193331.P8948276589751626811

/-! ## A193331.P15864793009446736562

`A198787(n+1)+A000007(A125230(n))`
-/

namespace A193331.P15864793009446736562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198787 (n + 1) + A000007 (A125230 n).toNat

end

end A193331.P15864793009446736562

/-! ## A193331.P8652176156282684996

`A198787(n+1)+A113063(A106648(n))`
-/

namespace A193331.P8652176156282684996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198787 (n + 1) + A113063 (A106648 n).toNat

end

end A193331.P8652176156282684996

/-! ## A193331.P7151250100559131079

`A198787(n+1)+A000038(A307855(n))`
-/

namespace A193331.P7151250100559131079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198787 (n + 1) + A000038 (A307855 n).toNat

end

end A193331.P7151250100559131079

/-! ## A193331.P6862894765498758103

`lcm(A033999(A089850(n)), A198787(n+1))`
-/

namespace A193331.P6862894765498758103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (A089850 n).toNat) (A198787 (n + 1))

end

end A193331.P6862894765498758103

/-!
# A193333: G.f.: 1 = Sum_{n>=0} a(n)*x^n / Product_{k=1..n+1} (1+k*x)^3.

The programs for A193333, there is no canonical definition to state claims against.
-/

/-! ## A193333.P8766267109193383872

`A338517(n)+A003415(A111557(n))`
-/

namespace A193333.P8766267109193383872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338517 n + A003415 (A111557 n).toNat

end

end A193333.P8766267109193383872

/-!
# A193334: Number of even divisors of sigma(n).

The programs for A193334, the canonical program `A193334.P16944727795109553516` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193334 has offset 1).

The definition of A193334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193334.P16944727795109553516

`A183063(A000203(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A193334

/-- `A183063(A000203(n+1))` -/
def P16944727795109553516.Spec : Prop :=
  ∀ n, P16944727795109553516.a n = A193334 (n + 1)

theorem P16944727795109553516.correct : P16944727795109553516.Spec := by
  intro n
  simp only [A193334, Nat.add_sub_cancel]

end A193334

/-! ## A193334.P8945848403287687557

`A062068(n+1)-A193335(n+1)`
-/

namespace A193334.P8945848403287687557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1) - A193335 (n + 1)

end

end A193334.P8945848403287687557

namespace A193334

/-- `A062068(n+1)-A193335(n+1)` -/
def P8945848403287687557.Spec : Prop :=
  ∀ n, P8945848403287687557.a n = A193334 (n + 1)

theorem P8945848403287687557.correct : P8945848403287687557.Spec := by
  intro n
  simp only [A193334, Nat.add_sub_cancel, A193334.P8945848403287687557.a, A193334.P16944727795109553516.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062068, A062068.P2815547987536140537.a, A183063, A183063.P14549643650991336837.a, A193335, A193335.P5237104312081853158.a, A000005, A000005.P16091521709108585461.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193334

/-! ## A193334.P14703521684234998406

`A193335(n+1)*A336937(n+1)`
-/

namespace A193334.P14703521684234998406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193335 (n + 1) * A336937 (n + 1)

end

end A193334.P14703521684234998406

namespace A193334

/-- `A193335(n+1)*A336937(n+1)` -/
def P14703521684234998406.Spec : Prop :=
  ∀ n, P14703521684234998406.a n = A193334 (n + 1)

end A193334

/-! ## A193334.P4158540207435338648

`(A286357(n+1)-1)*A193335(n+1)`
-/

namespace A193334.P4158540207435338648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A286357 (n + 1) - 1) * A193335 (n + 1)

end

end A193334.P4158540207435338648

namespace A193334

/-- `(A286357(n+1)-1)*A193335(n+1)` -/
def P4158540207435338648.Spec : Prop :=
  ∀ n, P4158540207435338648.a n = A193334 (n + 1)

end A193334

/-! ## A193334.P7532210582875952768

`A000005(∑{d}[n+1, #])-A193335(n+1)`
-/

namespace A193334.P7532210582875952768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n), d) - A193335 (n + 1)

end

end A193334.P7532210582875952768

namespace A193334

/-- `A000005(∑{d}[n+1, #])-A193335(n+1)` -/
def P7532210582875952768.Spec : Prop :=
  ∀ n, P7532210582875952768.a n = A193334 (n + 1)

end A193334

/-! ## A193334.P975042100560280869

`A000005(A000203(n+1))-A193335(n+1)`
-/

namespace A193334.P975042100560280869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1)).toNat - A193335 (n + 1)

end

end A193334.P975042100560280869

namespace A193334

/-- `A000005(A000203(n+1))-A193335(n+1)` -/
def P975042100560280869.Spec : Prop :=
  ∀ n, P975042100560280869.a n = A193334 (n + 1)

theorem P975042100560280869.correct : P975042100560280869.Spec := by
  intro n
  simp only [A193334, Nat.add_sub_cancel, A193334.P975042100560280869.a, A193334.P16944727795109553516.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A183063, A183063.P14549643650991336837.a, A193335, A193335.P5237104312081853158.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193334

/-! ## A193334.P7587422773737052214

`A000005(A088580(n+1)-1)-A193335(n+1)`
-/

namespace A193334.P7587422773737052214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A088580 (n + 1) - 1).toNat - A193335 (n + 1)

end

end A193334.P7587422773737052214

namespace A193334

/-- `A000005(A088580(n+1)-1)-A193335(n+1)` -/
def P7587422773737052214.Spec : Prop :=
  ∀ n, P7587422773737052214.a n = A193334 (n + 1)

theorem P7587422773737052214.correct : P7587422773737052214.Spec := by
  intro n
  simp only [A193334, Nat.add_sub_cancel, A193334.P7587422773737052214.a, A193334.P16944727795109553516.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, A183063, A183063.P14549643650991336837.a, A193335, A193335.P5237104312081853158.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193334

/-! ## A193334.P3447711861849642072

`A062068(n+1)-A062068(n+1)/A286357(n+1)`
-/

namespace A193334.P3447711861849642072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062068 (n + 1) : ℚ) - (A062068 (n + 1) : ℚ) / (A286357 (n + 1) : ℚ)

end

end A193334.P3447711861849642072

namespace A193334

/-- `A062068(n+1)-A062068(n+1)/A286357(n+1)` -/
def P3447711861849642072.Spec : Prop :=
  ∀ n, P3447711861849642072.a n = (A193334 (n + 1) : ℚ)

end A193334

/-! ## A193334.P11138326434939669107

`A183063(∑{d}[n+1, #])`
-/

namespace A193334.P11138326434939669107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A193334.P11138326434939669107

namespace A193334

/-- `A183063(∑{d}[n+1, #])` -/
def P11138326434939669107.Spec : Prop :=
  ∀ n, P11138326434939669107.a n = A193334 (n + 1)

end A193334

/-! ## A193334.P16817242445581023330

`A183063(A245092(2*n+1))`
-/

namespace A193334.P16817242445581023330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A245092 (2 * n + 1)).toNat

end

end A193334.P16817242445581023330

namespace A193334

/-- `A183063(A245092(2*n+1))` -/
def P16817242445581023330.Spec : Prop :=
  ∀ n, P16817242445581023330.a n = A193334 (n + 1)

end A193334

/-! ## A193334.P15847993965969972742

`A183063(A074400(n+1)/2)`
-/

namespace A193334.P15847993965969972742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A193334.P15847993965969972742

namespace A193334

/-- `A183063(A074400(n+1)/2)` -/
def P15847993965969972742.Spec : Prop :=
  ∀ n, P15847993965969972742.a n = A193334 (n + 1)

end A193334

/-! ## A193334.P8895958621012491192

`∑{d}[A000203(n+1), A059841(#)]`
-/

namespace A193334.P8895958621012491192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059841 d

end

end A193334.P8895958621012491192

namespace A193334

/-- `∑{d}[A000203(n+1), A059841(#)]` -/
def P8895958621012491192.Spec : Prop :=
  ∀ n, P8895958621012491192.a n = A193334 (n + 1)

end A193334

/-! ## A193334.P2245984198207885723

`∑{d}[A000203(n+1), A056594(#)²]`
-/

namespace A193334.P2245984198207885723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056594 d ^ 2

end

end A193334.P2245984198207885723

namespace A193334

/-- `∑{d}[A000203(n+1), A056594(#)²]` -/
def P2245984198207885723.Spec : Prop :=
  ∀ n, P2245984198207885723.a n = A193334 (n + 1)

end A193334

/-! ## A193334.P10965212249058557955

`A183063(A146076(2*(n+1))/2)`
-/

namespace A193334.P10965212249058557955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (SequenceMachineLib.roundAway ((A146076 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A193334.P10965212249058557955

namespace A193334

/-- `A183063(A146076(2*(n+1))/2)` -/
def P10965212249058557955.Spec : Prop :=
  ∀ n, P10965212249058557955.a n = A193334 (n + 1)

end A193334

/-! ## A193334.P14664966611429516139

`A183063(A001065(n+1)+1+n)`
-/

namespace A193334.P14664966611429516139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A193334.P14664966611429516139

namespace A193334

/-- `A183063(A001065(n+1)+1+n)` -/
def P14664966611429516139.Spec : Prop :=
  ∀ n, P14664966611429516139.a n = A193334 (n + 1)

theorem P14664966611429516139.correct : P14664966611429516139.Spec := by
  intro n
  simp only [A193334, Nat.add_sub_cancel, A193334.P14664966611429516139.a, A193334.P16944727795109553516.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A183063, A183063.P14549643650991336837.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, A000005, A000005.P16091521709108585461.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193334

/-! ## A193334.P17143529927953170287

`∑{d}[A074400(n+1)/2, A059841(#)]`
-/

namespace A193334.P17143529927953170287
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A059841 d

end

end A193334.P17143529927953170287

namespace A193334

/-- `∑{d}[A074400(n+1)/2, A059841(#)]` -/
def P17143529927953170287.Spec : Prop :=
  ∀ n, P17143529927953170287.a n = A193334 (n + 1)

end A193334

/-! ## A193334.P11798427390856465149

`∑{d}[A087156(∑{d}[n+1, #]), A059841(#)]`
-/

namespace A193334.P11798427390856465149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059841 d

end

end A193334.P11798427390856465149

namespace A193334

/-- `∑{d}[A087156(∑{d}[n+1, #]), A059841(#)]` -/
def P11798427390856465149.Spec : Prop :=
  ∀ n, P11798427390856465149.a n = A193334 (n + 1)

end A193334

/-! ## A193334.P2135370703048285343

`∑{d}[A000203(n+1), A057427(A027656(#))]`
-/

namespace A193334.P2135370703048285343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 (A027656 d).toNat

end

end A193334.P2135370703048285343

namespace A193334

/-- `∑{d}[A000203(n+1), A057427(A027656(#))]` -/
def P2135370703048285343.Spec : Prop :=
  ∀ n, P2135370703048285343.a n = A193334 (n + 1)

end A193334

/-! ## A193334.P17086404022378101438

`A183063(A065608(n+1)+A000005(n+1))`
-/

namespace A193334.P17086404022378101438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A065608 (n + 1) + A000005 (n + 1)).toNat

end

end A193334.P17086404022378101438

namespace A193334

/-- `A183063(A065608(n+1)+A000005(n+1))` -/
def P17086404022378101438.Spec : Prop :=
  ∀ n, P17086404022378101438.a n = A193334 (n + 1)

theorem P17086404022378101438.correct : P17086404022378101438.Spec := by
  intro n
  simp only [A193334, Nat.add_sub_cancel, A193334.P17086404022378101438.a, A193334.P16944727795109553516.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A065608, A065608.P12445239359989980431.a, A183063, A183063.P14549643650991336837.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193334

/-! ## A193334.P12617825982432482988

`A183063(A350159(n+1)-A099777(n+1))`
-/

namespace A193334.P12617825982432482988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A350159 (n + 1) - A099777 (n + 1)).toNat

end

end A193334.P12617825982432482988

namespace A193334

/-- `A183063(A350159(n+1)-A099777(n+1))` -/
def P12617825982432482988.Spec : Prop :=
  ∀ n, P12617825982432482988.a n = A193334 (n + 1)

theorem P12617825982432482988.correct : P12617825982432482988.Spec := by
  intro n
  simp only [A193334, Nat.add_sub_cancel, A193334.P12617825982432482988.a, A193334.P16944727795109553516.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A099777, A099777.P11792433152824821401.a, A183063, A183063.P14549643650991336837.a, A350159, A350159.P901158934797568537.a, A000005, A000005.P16091521709108585461.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A062011, A062011.P17525320077853469406.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193334

/-!
# A193335: Number of odd divisors of sigma(n).

The programs for A193335, the canonical program `A193335.P5237104312081853158` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193335 has offset 1).

The definition of A193335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193335.P5237104312081853158

`A001227(A000203(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A193335

/-- `A001227(A000203(n+1))` -/
def P5237104312081853158.Spec : Prop :=
  ∀ n, P5237104312081853158.a n = A193335 (n + 1)

theorem P5237104312081853158.correct : P5237104312081853158.Spec := by
  intro n
  simp only [A193335, Nat.add_sub_cancel]

end A193335

/-! ## A193335.P7984998623862022998

`∑{d}[∑{d}[n+1, #], #%2]`
-/

namespace A193335.P7984998623862022998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % 2

end

end A193335.P7984998623862022998

namespace A193335

/-- `∑{d}[∑{d}[n+1, #], #%2]` -/
def P7984998623862022998.Spec : Prop :=
  ∀ n, (P7984998623862022998.a n : ℤ) = A193335 (n + 1)

end A193335

/-! ## A193335.P3990855332638631679

`∑{d}[∑{d}[n+1, #], and(1, #)]`
-/

namespace A193335.P3990855332638631679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d

end

end A193335.P3990855332638631679

namespace A193335

/-- `∑{d}[∑{d}[n+1, #], and(1, #)]` -/
def P3990855332638631679.Spec : Prop :=
  ∀ n, (P3990855332638631679.a n : ℤ) = A193335 (n + 1)

end A193335

/-! ## A193335.P10850291042153639447

`∑{d}[A074400(n+1), and(1, #)]`
-/

namespace A193335.P10850291042153639447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d

end

end A193335.P10850291042153639447

namespace A193335

/-- `∑{d}[A074400(n+1), and(1, #)]` -/
def P10850291042153639447.Spec : Prop :=
  ∀ n, (P10850291042153639447.a n : ℤ) = A193335 (n + 1)

end A193335

/-! ## A193335.P13613599950337927053

`∏{e}[∑{d}[n+1, #], #+1]-A193334(n+1)`
-/

namespace A193335.P13613599950337927053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A193334 (n + 1)

end

end A193335.P13613599950337927053

namespace A193335

/-- `∏{e}[∑{d}[n+1, #], #+1]-A193334(n+1)` -/
def P13613599950337927053.Spec : Prop :=
  ∀ n, P13613599950337927053.a n = A193335 (n + 1)

end A193335

/-! ## A193335.P14741296518529024227

`∏{e}[∑{d}[n+1, #], #+1]/A286357(n+1)`
-/

namespace A193335.P14741296518529024227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / (A286357 (n + 1) : ℚ)

end

end A193335.P14741296518529024227

namespace A193335

/-- `∏{e}[∑{d}[n+1, #], #+1]/A286357(n+1)` -/
def P14741296518529024227.Spec : Prop :=
  ∀ n, P14741296518529024227.a n = (A193335 (n + 1) : ℚ)

end A193335

/-! ## A193335.P10840311413668092343

`A000005(A161942(n+1))`
-/

namespace A193335.P10840311413668092343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A161942 (n + 1)).toNat

end

end A193335.P10840311413668092343

namespace A193335

/-- `A000005(A161942(n+1))` -/
def P10840311413668092343.Spec : Prop :=
  ∀ n, P10840311413668092343.a n = A193335 (n + 1)

end A193335

/-! ## A193335.P5004163205199446086

`A000005(A350073(n+1))`
-/

namespace A193335.P5004163205199446086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A350073 (n + 1)).toNat

end

end A193335.P5004163205199446086

namespace A193335

/-- `A000005(A350073(n+1))` -/
def P5004163205199446086.Spec : Prop :=
  ∀ n, P5004163205199446086.a n = A193335 (n + 1)

end A193335

/-! ## A193335.P15305792535958666966

`A000005(A354095(n+1))`
-/

namespace A193335.P15305792535958666966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A354095 (n + 1)).toNat

end

end A193335.P15305792535958666966

namespace A193335

/-- `A000005(A354095(n+1))` -/
def P15305792535958666966.Spec : Prop :=
  ∀ n, P15305792535958666966.a n = A193335 (n + 1)

end A193335

/-! ## A193335.P5554724597670536166

`A000005(A337194(n+1)-1)`
-/

namespace A193335.P5554724597670536166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A337194 (n + 1) - 1).toNat

end

end A193335.P5554724597670536166

namespace A193335

/-- `A000005(A337194(n+1)-1)` -/
def P5554724597670536166.Spec : Prop :=
  ∀ n, P5554724597670536166.a n = A193335 (n + 1)

end A193335

/-! ## A193335.P2057397629638094716

`A062068(n+1)-A193334(n+1)`
-/

namespace A193335.P2057397629638094716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1) - A193334 (n + 1)

end

end A193335.P2057397629638094716

namespace A193335

/-- `A062068(n+1)-A193334(n+1)` -/
def P2057397629638094716.Spec : Prop :=
  ∀ n, P2057397629638094716.a n = A193335 (n + 1)

theorem P2057397629638094716.correct : P2057397629638094716.Spec := by
  intro n
  simp only [A193335, Nat.add_sub_cancel, A193335.P2057397629638094716.a, A193335.P5237104312081853158.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A062068, A062068.P2815547987536140537.a, A193334, A193334.P16944727795109553516.a, A000005, A000005.P16091521709108585461.a, A183063, A183063.P14549643650991336837.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193335

/-! ## A193335.P13945229407685750330

`A062068(n+1)/A286357(n+1)`
-/

namespace A193335.P13945229407685750330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062068 (n + 1) : ℚ) / (A286357 (n + 1) : ℚ)

end

end A193335.P13945229407685750330

namespace A193335

/-- `A062068(n+1)/A286357(n+1)` -/
def P13945229407685750330.Spec : Prop :=
  ∀ n, P13945229407685750330.a n = (A193335 (n + 1) : ℚ)

end A193335

/-! ## A193335.P4181144879116097193

`A000005(A000265(A074400(n+1)))`
-/

namespace A193335.P4181144879116097193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (A074400 (n + 1)).toNat).toNat

end

end A193335.P4181144879116097193

namespace A193335

/-- `A000005(A000265(A074400(n+1)))` -/
def P4181144879116097193.Spec : Prop :=
  ∀ n, P4181144879116097193.a n = A193335 (n + 1)

end A193335

/-! ## A193335.P13023069985853276742

`A000005(A000265(A001065(n+1)+n+1))`
-/

namespace A193335.P13023069985853276742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (A001065 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A193335.P13023069985853276742

namespace A193335

/-- `A000005(A000265(A001065(n+1)+n+1))` -/
def P13023069985853276742.Spec : Prop :=
  ∀ n, P13023069985853276742.a n = A193335 (n + 1)

end A193335

/-! ## A193335.P1988949784299908655

`A000005(A000203(n+1))-A193334(n+1)`
-/

namespace A193335.P1988949784299908655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1)).toNat - A193334 (n + 1)

end

end A193335.P1988949784299908655

namespace A193335

/-- `A000005(A000203(n+1))-A193334(n+1)` -/
def P1988949784299908655.Spec : Prop :=
  ∀ n, P1988949784299908655.a n = A193335 (n + 1)

theorem P1988949784299908655.correct : P1988949784299908655.Spec := by
  intro n
  simp only [A193335, Nat.add_sub_cancel, A193335.P1988949784299908655.a, A193335.P5237104312081853158.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A193334, A193334.P16944727795109553516.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A183063, A183063.P14549643650991336837.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193335

/-! ## A193335.P10558125248698815164

`A000005(A000203(n+1)/A082903(n+1))`
-/

namespace A193335.P10558125248698815164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A082903 (n + 1) : ℚ))).toNat

end

end A193335.P10558125248698815164

namespace A193335

/-- `A000005(A000203(n+1)/A082903(n+1))` -/
def P10558125248698815164.Spec : Prop :=
  ∀ n, P10558125248698815164.a n = A193335 (n + 1)

end A193335

/-! ## A193335.P10042103664635496012

`A000005(A000203(n+1))/A286357(n+1)`
-/

namespace A193335.P10042103664635496012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A000203 (n + 1)).toNat : ℚ) / (A286357 (n + 1) : ℚ)

end

end A193335.P10042103664635496012

namespace A193335

/-- `A000005(A000203(n+1))/A286357(n+1)` -/
def P10042103664635496012.Spec : Prop :=
  ∀ n, P10042103664635496012.a n = (A193335 (n + 1) : ℚ)

end A193335

/-! ## A193335.P5285578404930069418

`A000005(A000265(A239050(n+1)))`
-/

namespace A193335.P5285578404930069418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (A239050 (n + 1)).toNat).toNat

end

end A193335.P5285578404930069418

namespace A193335

/-- `A000005(A000265(A239050(n+1)))` -/
def P5285578404930069418.Spec : Prop :=
  ∀ n, P5285578404930069418.a n = A193335 (n + 1)

end A193335

/-! ## A193335.P16302317013361771584

`A320111(2*A350073(n+1))`
-/

namespace A193335.P16302317013361771584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A350073 (n + 1)).toNat

end

end A193335.P16302317013361771584

namespace A193335

/-- `A320111(2*A350073(n+1))` -/
def P16302317013361771584.Spec : Prop :=
  ∀ n, P16302317013361771584.a n = A193335 (n + 1)

end A193335

/-! ## A193335.P6760494430548493144

`A320003(A274536(n+1))`
-/

namespace A193335.P6760494430548493144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320003 (A274536 (n + 1)).toNat

end

end A193335.P6760494430548493144

namespace A193335

/-- `A320003(A274536(n+1))` -/
def P6760494430548493144.Spec : Prop :=
  ∀ n, P6760494430548493144.a n = A193335 (n + 1)

end A193335

/-!
# A193336: Sum of even divisors of sigma(n).

The programs for A193336, the canonical program `A193336.P7441199582202554829` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193336 has offset 1).

The definition of A193336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193336.P7441199582202554829

`A146076(A000203(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A193336

/-- `A146076(A000203(n+1))` -/
def P7441199582202554829.Spec : Prop :=
  ∀ n, P7441199582202554829.a n = A193336 (n + 1)

theorem P7441199582202554829.correct : P7441199582202554829.Spec := by
  intro n
  simp only [A193336, Nat.add_sub_cancel]

end A193336

/-! ## A193336.P4671642988780716037

`A051027(n+1)-A193337(n+1)`
-/

namespace A193336.P4671642988780716037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - A193337 (n + 1)

end

end A193336.P4671642988780716037

namespace A193336

/-- `A051027(n+1)-A193337(n+1)` -/
def P4671642988780716037.Spec : Prop :=
  ∀ n, P4671642988780716037.a n = A193336 (n + 1)

end A193336

/-! ## A193336.P2214624122613435198

`A000203(A000203(n+1))-A193337(n+1)`
-/

namespace A193336.P2214624122613435198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1)).toNat - A193337 (n + 1)

end

end A193336.P2214624122613435198

namespace A193336

/-- `A000203(A000203(n+1))-A193337(n+1)` -/
def P2214624122613435198.Spec : Prop :=
  ∀ n, P2214624122613435198.a n = A193336 (n + 1)

end A193336

/-! ## A193336.P12538248482549083619

`A000203(A000203(n+1))-A000203(A161942(n+1))`
-/

namespace A193336.P12538248482549083619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1)).toNat - A000203 (A161942 (n + 1)).toNat

end

end A193336.P12538248482549083619

namespace A193336

/-- `A000203(A000203(n+1))-A000203(A161942(n+1))` -/
def P12538248482549083619.Spec : Prop :=
  ∀ n, P12538248482549083619.a n = A193336 (n + 1)

end A193336

/-! ## A193336.P10306210027597863891

`A146076(∑{d}[n+1, #])`
-/

namespace A193336.P10306210027597863891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A193336.P10306210027597863891

namespace A193336

/-- `A146076(∑{d}[n+1, #])` -/
def P10306210027597863891.Spec : Prop :=
  ∀ n, P10306210027597863891.a n = A193336 (n + 1)

end A193336

/-! ## A193336.P12258470799773889139

`A146076(Δ[A160664(n)])`
-/

namespace A193336.P12258470799773889139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (f1 (n + 1) - f1 n).toNat

end

end A193336.P12258470799773889139

namespace A193336

/-- `A146076(Δ[A160664(n)])` -/
def P12258470799773889139.Spec : Prop :=
  ∀ n, P12258470799773889139.a n = A193336 (n + 1)

end A193336

/-! ## A193336.P14870947384720240567

`A146076(A245092(2*n+1))`
-/

namespace A193336.P14870947384720240567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A245092 (2 * n + 1)).toNat

end

end A193336.P14870947384720240567

namespace A193336

/-- `A146076(A245092(2*n+1))` -/
def P14870947384720240567.Spec : Prop :=
  ∀ n, P14870947384720240567.a n = A193336 (n + 1)

end A193336

/-! ## A193336.P16924389949705769532

`A146076(A074400(n+1)/2)`
-/

namespace A193336.P16924389949705769532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A193336.P16924389949705769532

namespace A193336

/-- `A146076(A074400(n+1)/2)` -/
def P16924389949705769532.Spec : Prop :=
  ∀ n, P16924389949705769532.a n = A193336 (n + 1)

end A193336

/-! ## A193336.P16629791560438990161

`A146076(A146076(2*(n+1))/2)`
-/

namespace A193336.P16629791560438990161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (SequenceMachineLib.roundAway ((A146076 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A193336.P16629791560438990161

namespace A193336

/-- `A146076(A146076(2*(n+1))/2)` -/
def P16629791560438990161.Spec : Prop :=
  ∀ n, P16629791560438990161.a n = A193336 (n + 1)

end A193336

/-! ## A193336.P10070377225974668907

`A146076(A001065(n+1)+1+n)`
-/

namespace A193336.P10070377225974668907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A193336.P10070377225974668907

namespace A193336

/-- `A146076(A001065(n+1)+1+n)` -/
def P10070377225974668907.Spec : Prop :=
  ∀ n, P10070377225974668907.a n = A193336 (n + 1)

theorem P10070377225974668907.correct : P10070377225974668907.Spec := by
  intro n
  simp only [A193336, Nat.add_sub_cancel, A193336.P10070377225974668907.a, A193336.P7441199582202554829.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A146076, A146076.P5513778411624192836.a, A000593, A000593.P13640346029616979906.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193336

/-! ## A193336.P694884252340145229

`A146076(A155085(n+1)-(n+1))`
-/

namespace A193336.P694884252340145229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A193336.P694884252340145229

namespace A193336

/-- `A146076(A155085(n+1)-(n+1))` -/
def P694884252340145229.Spec : Prop :=
  ∀ n, P694884252340145229.a n = A193336 (n + 1)

theorem P694884252340145229.correct : P694884252340145229.Spec := by
  intro n
  simp only [A193336, Nat.add_sub_cancel, A193336.P694884252340145229.a, A193336.P7441199582202554829.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A146076, A146076.P5513778411624192836.a, A155085, A155085.P3282672389110014595.a, A000593, A000593.P13640346029616979906.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193336

/-! ## A193336.P673515233465872698

`A146076(A064987(n+1)/(n+1))`
-/

namespace A193336.P673515233465872698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A193336.P673515233465872698

namespace A193336

/-- `A146076(A064987(n+1)/(n+1))` -/
def P673515233465872698.Spec : Prop :=
  ∀ n, P673515233465872698.a n = A193336 (n + 1)

end A193336

/-! ## A193336.P1208847721702804021

`∑{d}[A000203(n+1), #-A193356(#)]`
-/

namespace A193336.P1208847721702804021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A193356 d)

end

end A193336.P1208847721702804021

namespace A193336

/-- `∑{d}[A000203(n+1), #-A193356(#)]` -/
def P1208847721702804021.Spec : Prop :=
  ∀ n, P1208847721702804021.a n = A193336 (n + 1)

end A193336

/-! ## A193336.P16540195314032127947

`∑{d}[A000203(n+1), #*A059841(#)]`
-/

namespace A193336.P16540195314032127947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A059841 d

end

end A193336.P16540195314032127947

namespace A193336

/-- `∑{d}[A000203(n+1), #*A059841(#)]` -/
def P16540195314032127947.Spec : Prop :=
  ∀ n, P16540195314032127947.a n = A193336 (n + 1)

end A193336

/-! ## A193336.P976795657056827417

`A146076(2*n+1-A235796(n+1))`
-/

namespace A193336.P976795657056827417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 ((2 * n + 1 : ℤ) - A235796 (n + 1)).toNat

end

end A193336.P976795657056827417

namespace A193336

/-- `A146076(2*n+1-A235796(n+1))` -/
def P976795657056827417.Spec : Prop :=
  ∀ n, P976795657056827417.a n = A193336 (n + 1)

theorem P976795657056827417.correct : P976795657056827417.Spec := by
  intro n
  simp only [A193336, Nat.add_sub_cancel, A193336.P976795657056827417.a, A193336.P7441199582202554829.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A146076, A146076.P5513778411624192836.a, A235796, A235796.P10282550748648679139.a, A000593, A000593.P13640346029616979906.a, A033879, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A038712, A038712.P3404197303190209645.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193336

/-! ## A193336.P12957338027879896138

`A146076(A160664(n+1)-A160664(n))`
-/

namespace A193336.P12957338027879896138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A160664 (n + 1) - A160664 n).toNat

end

end A193336.P12957338027879896138

namespace A193336

/-- `A146076(A160664(n+1)-A160664(n))` -/
def P12957338027879896138.Spec : Prop :=
  ∀ n, P12957338027879896138.a n = A193336 (n + 1)

end A193336

/-! ## A193336.P11567847340433791989

`A146076(A146076(n+1)+A000593(n+1))`
-/

namespace A193336.P11567847340433791989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A146076 (n + 1) + A000593 (n + 1)).toNat

end

end A193336.P11567847340433791989

namespace A193336

/-- `A146076(A146076(n+1)+A000593(n+1))` -/
def P11567847340433791989.Spec : Prop :=
  ∀ n, P11567847340433791989.a n = A193336 (n + 1)

theorem P11567847340433791989.correct : P11567847340433791989.Spec := by
  intro n
  simp only [A193336, Nat.add_sub_cancel, A193336.P11567847340433791989.a, A193336.P7441199582202554829.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000593, A000593.P13640346029616979906.a, A146076, A146076.P5513778411624192836.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193336

/-! ## A193336.P887714857432544959

`A146076(A117004(n+1)+A079667(n+1))`
-/

namespace A193336.P887714857432544959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A117004 (n + 1) + A079667 (n + 1)).toNat

end

end A193336.P887714857432544959

namespace A193336

/-- `A146076(A117004(n+1)+A079667(n+1))` -/
def P887714857432544959.Spec : Prop :=
  ∀ n, P887714857432544959.a n = A193336 (n + 1)

end A193336

/-! ## A193336.P7976667882298589470

`A146076(A344765(n+1)+A011772(n+1))`
-/

namespace A193336.P7976667882298589470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A344765 (n + 1) + A011772 (n + 1)).toNat

end

end A193336.P7976667882298589470

namespace A193336

/-- `A146076(A344765(n+1)+A011772(n+1))` -/
def P7976667882298589470.Spec : Prop :=
  ∀ n, P7976667882298589470.a n = A193336 (n + 1)

end A193336

/-! ## A193336.P12372521363652485636

`A051027(n+1)-A000593(A000203(n+1))`
-/

namespace A193336.P12372521363652485636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - A000593 (A000203 (n + 1)).toNat

end

end A193336.P12372521363652485636

namespace A193336

/-- `A051027(n+1)-A000593(A000203(n+1))` -/
def P12372521363652485636.Spec : Prop :=
  ∀ n, P12372521363652485636.a n = A193336 (n + 1)

end A193336

/-!
# A193337: Sum of odd divisors of sigma(n).

The programs for A193337, the canonical program `A193337.P10860167010947937724` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193337 has offset 1).

The definition of A193337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193337.P10860167010947937724

`A000593(A000203(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A193337

/-- `A000593(A000203(n+1))` -/
def P10860167010947937724.Spec : Prop :=
  ∀ n, P10860167010947937724.a n = A193337 (n + 1)

theorem P10860167010947937724.correct : P10860167010947937724.Spec := by
  intro n
  simp only [A193337, Nat.add_sub_cancel]

end A193337

/-! ## A193337.P15449004059770119515

`∑{d}[A161942(n+1), #]`
-/

namespace A193337.P15449004059770119515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161942 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A193337.P15449004059770119515

namespace A193337

/-- `∑{d}[A161942(n+1), #]` -/
def P15449004059770119515.Spec : Prop :=
  ∀ n, (P15449004059770119515.a n : ℤ) = A193337 (n + 1)

end A193337

/-! ## A193337.P6398239093138481430

`A000203(A161942(n+1))`
-/

namespace A193337.P6398239093138481430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A161942 (n + 1)).toNat

end

end A193337.P6398239093138481430

namespace A193337

/-- `A000203(A161942(n+1))` -/
def P6398239093138481430.Spec : Prop :=
  ∀ n, P6398239093138481430.a n = A193337 (n + 1)

end A193337

/-! ## A193337.P5563911595580780450

`A000203(A337194(n+1)-1)`
-/

namespace A193337.P5563911595580780450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A337194 (n + 1) - 1).toNat

end

end A193337.P5563911595580780450

namespace A193337

/-- `A000203(A337194(n+1)-1)` -/
def P5563911595580780450.Spec : Prop :=
  ∀ n, P5563911595580780450.a n = A193337 (n + 1)

end A193337

/-! ## A193337.P16357236196659521992

`A051027(n+1)-A193336(n+1)`
-/

namespace A193337.P16357236196659521992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - A193336 (n + 1)

end

end A193337.P16357236196659521992

namespace A193337

/-- `A051027(n+1)-A193336(n+1)` -/
def P16357236196659521992.Spec : Prop :=
  ∀ n, P16357236196659521992.a n = A193337 (n + 1)

theorem P16357236196659521992.correct : P16357236196659521992.Spec := by
  intro n
  simp only [A193337, Nat.add_sub_cancel, A193337.P16357236196659521992.a, A193337.P10860167010947937724.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000593, A000593.P13640346029616979906.a, A051027, A051027.P5984083100296461897.a, A193336, A193336.P7441199582202554829.a, A038712, A038712.P3404197303190209645.a, A146076, A146076.P5513778411624192836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193337

/-! ## A193337.P123171373331706486

`∑{d}[A000265(A245092(2*n+1)), #]`
-/

namespace A193337.P123171373331706486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A245092 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A193337.P123171373331706486

namespace A193337

/-- `∑{d}[A000265(A245092(2*n+1)), #]` -/
def P123171373331706486.Spec : Prop :=
  ∀ n, (P123171373331706486.a n : ℤ) = A193337 (n + 1)

end A193337

/-! ## A193337.P970850476438004900

`∑{d}[A000265(A001065(n+1)+n+1), #]`
-/

namespace A193337.P970850476438004900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A193337.P970850476438004900

namespace A193337

/-- `∑{d}[A000265(A001065(n+1)+n+1), #]` -/
def P970850476438004900.Spec : Prop :=
  ∀ n, (P970850476438004900.a n : ℤ) = A193337 (n + 1)

end A193337

/-! ## A193337.P17090318712204399453

`A000203(A000203(n+1))-A193336(n+1)`
-/

namespace A193337.P17090318712204399453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1)).toNat - A193336 (n + 1)

end

end A193337.P17090318712204399453

namespace A193337

/-- `A000203(A000203(n+1))-A193336(n+1)` -/
def P17090318712204399453.Spec : Prop :=
  ∀ n, P17090318712204399453.a n = A193337 (n + 1)

theorem P17090318712204399453.correct : P17090318712204399453.Spec := by
  intro n
  simp only [A193337, Nat.add_sub_cancel, A193337.P17090318712204399453.a, A193337.P10860167010947937724.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000593, A000593.P13640346029616979906.a, A193336, A193336.P7441199582202554829.a, A038712, A038712.P3404197303190209645.a, A146076, A146076.P5513778411624192836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193337

/-! ## A193337.P12592637914248796100

`A000203(A000203(n+1)/A082903(n+1))`
-/

namespace A193337.P12592637914248796100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A082903 (n + 1) : ℚ))).toNat

end

end A193337.P12592637914248796100

namespace A193337

/-- `A000203(A000203(n+1)/A082903(n+1))` -/
def P12592637914248796100.Spec : Prop :=
  ∀ n, P12592637914248796100.a n = A193337 (n + 1)

end A193337

/-! ## A193337.P11309023458803085200

`gcd(A000203(2*A000203(n+1)), A051027(n+1))`
-/

namespace A193337.P11309023458803085200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (2 * A000203 (n + 1)).toNat) (A051027 (n + 1))

end

end A193337.P11309023458803085200

namespace A193337

/-- `gcd(A000203(2*A000203(n+1)), A051027(n+1))` -/
def P11309023458803085200.Spec : Prop :=
  ∀ n, (P11309023458803085200.a n : ℤ) = A193337 (n + 1)

end A193337

/-! ## A193337.P5088416239245447082

`A003973(A350073(n+1))`
-/

namespace A193337.P5088416239245447082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (A350073 (n + 1)).toNat

end

end A193337.P5088416239245447082

namespace A193337

/-- `A003973(A350073(n+1))` -/
def P5088416239245447082.Spec : Prop :=
  ∀ n, P5088416239245447082.a n = A193337 (n + 1)

end A193337

/-! ## A193337.P9760896100370368566

`∑{d}[A350073(n+1), A003961(#)]`
-/

namespace A193337.P9760896100370368566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003961 d

end

end A193337.P9760896100370368566

namespace A193337

/-- `∑{d}[A350073(n+1), A003961(#)]` -/
def P9760896100370368566.Spec : Prop :=
  ∀ n, P9760896100370368566.a n = A193337 (n + 1)

end A193337

/-! ## A193337.P8502639178915780607

`A000203(A074400(n+1))-A074400(A000203(n+1))`
-/

namespace A193337.P8502639178915780607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A074400 (n + 1)).toNat - A074400 (A000203 (n + 1)).toNat

end

end A193337.P8502639178915780607

namespace A193337

/-- `A000203(A074400(n+1))-A074400(A000203(n+1))` -/
def P8502639178915780607.Spec : Prop :=
  ∀ n, P8502639178915780607.a n = A193337 (n + 1)

end A193337

/-! ## A193337.P7178927458551384832

`A354093(A354095(n+1))`
-/

namespace A193337.P7178927458551384832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354093 (A354095 (n + 1)).toNat

end

end A193337.P7178927458551384832

namespace A193337

/-- `A354093(A354095(n+1))` -/
def P7178927458551384832.Spec : Prop :=
  ∀ n, P7178927458551384832.a n = A193337 (n + 1)

end A193337

/-! ## A193337.P11723646129724460558

`A000593(A337194(n+1)-1)`
-/

namespace A193337.P11723646129724460558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A337194 (n + 1) - 1).toNat

end

end A193337.P11723646129724460558

namespace A193337

/-- `A000593(A337194(n+1)-1)` -/
def P11723646129724460558.Spec : Prop :=
  ∀ n, P11723646129724460558.a n = A193337 (n + 1)

end A193337

/-! ## A193337.P9902988960917414046

`A002131(A161942(2*n+1-n))`
-/

namespace A193337.P9902988960917414046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A161942 (2 * n + 1 - n)).toNat

end

end A193337.P9902988960917414046

namespace A193337

/-- `A002131(A161942(2*n+1-n))` -/
def P9902988960917414046.Spec : Prop :=
  ∀ n, P9902988960917414046.a n = A193337 (n + 1)

end A193337

/-! ## A193337.P10849261013366547592

`A000203(A014681(A337194(n+1)))`
-/

namespace A193337.P10849261013366547592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A014681 (A337194 (n + 1)).toNat).toNat

end

end A193337.P10849261013366547592

namespace A193337

/-- `A000203(A014681(A337194(n+1)))` -/
def P10849261013366547592.Spec : Prop :=
  ∀ n, P10849261013366547592.a n = A193337 (n + 1)

end A193337

/-! ## A193337.P15737583716595815098

`A000593(A000265(A146076(2*(n+1))))`
-/

namespace A193337.P15737583716595815098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A000265 (A146076 (2 * (n + 1))).toNat).toNat

end

end A193337.P15737583716595815098

namespace A193337

/-- `A000593(A000265(A146076(2*(n+1))))` -/
def P15737583716595815098.Spec : Prop :=
  ∀ n, P15737583716595815098.a n = A193337 (n + 1)

end A193337

/-! ## A193337.P13070906251638852278

`A000593(∑{d}[n+1, #])`
-/

namespace A193337.P13070906251638852278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A193337.P13070906251638852278

namespace A193337

/-- `A000593(∑{d}[n+1, #])` -/
def P13070906251638852278.Spec : Prop :=
  ∀ n, P13070906251638852278.a n = A193337 (n + 1)

end A193337

/-! ## A193337.P14765672872576013070

`A000593(A088580(n+1)-1)`
-/

namespace A193337.P14765672872576013070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A088580 (n + 1) - 1).toNat

end

end A193337.P14765672872576013070

namespace A193337

/-- `A000593(A088580(n+1)-1)` -/
def P14765672872576013070.Spec : Prop :=
  ∀ n, P14765672872576013070.a n = A193337 (n + 1)

theorem P14765672872576013070.correct : P14765672872576013070.Spec := by
  intro n
  simp only [A193337, Nat.add_sub_cancel, A193337.P14765672872576013070.a, A193337.P10860167010947937724.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000593, A000593.P13640346029616979906.a, A088580, A088580.P3089093194242277422.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193337

/-!
# A193338: Record values in A001783.

The programs for A193338, there is no canonical definition to state claims against.
-/

/-! ## A193338.P13084160928403360963

`A001783(A193339(n+1))`
-/

namespace A193338.P13084160928403360963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001783 (A193339 (n + 1)).toNat

end

end A193338.P13084160928403360963

/-! ## A193338.P10086385013238187913

`record[A001783(n+1)]`
-/

namespace A193338.P10086385013238187913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193338.P10086385013238187913

/-! ## A193338.P4478765767963095215

`record[Δ[A280820(n+1)]]`
-/

namespace A193338.P4478765767963095215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280820 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193338.P4478765767963095215

/-! ## A193338.P11853650738746127288

`A001783(A067126(n+2))`
-/

namespace A193338.P11853650738746127288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001783 (A067126 (n + 2)).toNat

end

end A193338.P11853650738746127288

/-! ## A193338.P2335746570121923265

`record[A038610(n+1)*A128247(n+1)]`
-/

namespace A193338.P2335746570121923265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038610 (n + 1) * A128247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193338.P2335746570121923265

/-!
# A193339: Indices of record values in A001783.

The programs for A193339, the canonical program `A193339.P11456444240374608531` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193339 has offset 1).

The definition of A193339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193339.P11456444240374608531

`A238526(n+1)+A057427(n)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A193339

/-- `A238526(n+1)+A057427(n)+1` -/
def P11456444240374608531.Spec : Prop :=
  ∀ n, P11456444240374608531.a n = A193339 (n + 1)

theorem P11456444240374608531.correct : P11456444240374608531.Spec := by
  intro n
  simp only [A193339, Nat.add_sub_cancel]

end A193339

/-! ## A193339.P915490108891694762

`A238526(n+1)+A020639(A004277(n))`
-/

namespace A193339.P915490108891694762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1) + A020639 (A004277 n).toNat

end

end A193339.P915490108891694762

namespace A193339

/-- `A238526(n+1)+A020639(A004277(n))` -/
def P915490108891694762.Spec : Prop :=
  ∀ n, P915490108891694762.a n = A193339 (n + 1)

end A193339

/-! ## A193339.P15036947932832706541

`A238526(n+1)+A055881(A001316(n))`
-/

namespace A193339.P15036947932832706541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1) + A055881 (A001316 n).toNat

end

end A193339.P15036947932832706541

namespace A193339

/-- `A238526(n+1)+A055881(A001316(n))` -/
def P15036947932832706541.Spec : Prop :=
  ∀ n, P15036947932832706541.a n = A193339 (n + 1)

end A193339

/-! ## A193339.P7766375019332268912

`A238526(n+1)+A020639(A001223(n+1))`
-/

namespace A193339.P7766375019332268912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1) + A020639 (A001223 (n + 1)).toNat

end

end A193339.P7766375019332268912

namespace A193339

/-- `A238526(n+1)+A020639(A001223(n+1))` -/
def P7766375019332268912.Spec : Prop :=
  ∀ n, P7766375019332268912.a n = A193339 (n + 1)

end A193339

/-! ## A193339.P17762387306851597564

`A238526(n+1)+A099307(A020639(n+1))`
-/

namespace A193339.P17762387306851597564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1) + A099307 (A020639 (n + 1)).toNat

end

end A193339.P17762387306851597564

namespace A193339

/-- `A238526(n+1)+A099307(A020639(n+1))` -/
def P17762387306851597564.Spec : Prop :=
  ∀ n, P17762387306851597564.a n = A193339 (n + 1)

end A193339

/-! ## A193339.P14622492543471375364

`A238526(n+1)+A099307(A027746(n+1))`
-/

namespace A193339.P14622492543471375364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1) + A099307 (A027746 (n + 1)).toNat

end

end A193339.P14622492543471375364

namespace A193339

/-- `A238526(n+1)+A099307(A027746(n+1))` -/
def P14622492543471375364.Spec : Prop :=
  ∀ n, P14622492543471375364.a n = A193339 (n + 1)

end A193339

/-! ## A193339.P11176901560708196

`A238529(A006530(n+1))+A238526(n+1)+1`
-/

namespace A193339.P11176901560708196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238529 (A006530 (n + 1)).toNat + (A238526 (n + 1) + 1)

end

end A193339.P11176901560708196

namespace A193339

/-- `A238529(A006530(n+1))+A238526(n+1)+1` -/
def P11176901560708196.Spec : Prop :=
  ∀ n, P11176901560708196.a n = A193339 (n + 1)

end A193339

/-! ## A193339.P8301651432440938735

`A067126(A065475(n+1))`
-/

namespace A193339.P8301651432440938735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (A065475 (n + 1)).toNat

end

end A193339.P8301651432440938735

namespace A193339

/-- `A067126(A065475(n+1))` -/
def P8301651432440938735.Spec : Prop :=
  ∀ n, P8301651432440938735.a n = A193339 (n + 1)

end A193339

/-! ## A193339.P14277062719382529409

`A067126(A181440(n+2))`
-/

namespace A193339.P14277062719382529409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (A181440 (n + 2)).toNat

end

end A193339.P14277062719382529409

namespace A193339

/-- `A067126(A181440(n+2))` -/
def P14277062719382529409.Spec : Prop :=
  ∀ n, P14277062719382529409.a n = A193339 (n + 1)

end A193339

/-! ## A193339.P5063123408392211281

`A067126(A184985(n+2))`
-/

namespace A193339.P5063123408392211281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (A184985 (n + 2)).toNat

end

end A193339.P5063123408392211281

namespace A193339

/-- `A067126(A184985(n+2))` -/
def P5063123408392211281.Spec : Prop :=
  ∀ n, P5063123408392211281.a n = A193339 (n + 1)

end A193339

/-! ## A193339.P1022573086075043403

`A067126(A087156(n+1)+1)`
-/

namespace A193339.P1022573086075043403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (A087156 (n + 1) + 1).toNat

end

end A193339.P1022573086075043403

namespace A193339

/-- `A067126(A087156(n+1)+1)` -/
def P1022573086075043403.Spec : Prop :=
  ∀ n, P1022573086075043403.a n = A193339 (n + 1)

end A193339

/-! ## A193339.P14552860783212857209

`A006005(n+1)+A067126(n+2)-A000040(n+1)`
-/

namespace A193339.P14552860783212857209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) + (A067126 (n + 2) - A000040 (n + 1))

end

end A193339.P14552860783212857209

namespace A193339

/-- `A006005(n+1)+A067126(n+2)-A000040(n+1)` -/
def P14552860783212857209.Spec : Prop :=
  ∀ n, P14552860783212857209.a n = A193339 (n + 1)

end A193339

/-! ## A193339.P11719380774197809112

`filter[A066050(n+1), A354993(#)]`
-/

namespace A193339.P11719380774197809112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354993 (f1 j).toNat = 1) n)

end

end A193339.P11719380774197809112

namespace A193339

/-- `filter[A066050(n+1), A354993(#)]` -/
def P11719380774197809112.Spec : Prop :=
  ∀ n, P11719380774197809112.a n = A193339 (n + 1)

end A193339

/-! ## A193339.P12510899204096575630

`filter[A067126(n+1), A354993(#)]`
-/

namespace A193339.P12510899204096575630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354993 (f1 j).toNat = 1) n)

end

end A193339.P12510899204096575630

namespace A193339

/-- `filter[A067126(n+1), A354993(#)]` -/
def P12510899204096575630.Spec : Prop :=
  ∀ n, P12510899204096575630.a n = A193339 (n + 1)

end A193339

/-! ## A193339.P10332104152912276114

`filter[A066050(n+1), A379952(#)]`
-/

namespace A193339.P10332104152912276114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A193339.P10332104152912276114

namespace A193339

/-- `filter[A066050(n+1), A379952(#)]` -/
def P10332104152912276114.Spec : Prop :=
  ∀ n, P10332104152912276114.a n = A193339 (n + 1)

end A193339

/-! ## A193339.P2091121370072840827

`filter[A067126(n+1), A379952(#)]`
-/

namespace A193339.P2091121370072840827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A193339.P2091121370072840827

namespace A193339

/-- `filter[A067126(n+1), A379952(#)]` -/
def P2091121370072840827.Spec : Prop :=
  ∀ n, P2091121370072840827.a n = A193339 (n + 1)

end A193339

/-! ## A193339.P2803030717292380785

`filter[A387426(n+1), A379952(#)]`
-/

namespace A193339.P2803030717292380785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A193339.P2803030717292380785

namespace A193339

/-- `filter[A387426(n+1), A379952(#)]` -/
def P2803030717292380785.Spec : Prop :=
  ∀ n, P2803030717292380785.a n = A193339 (n + 1)

end A193339

/-! ## A193339.P1905642653838462821

`filter[A383299(n+2), A355937(#)]`
-/

namespace A193339.P1905642653838462821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383299 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A193339.P1905642653838462821

namespace A193339

/-- `filter[A383299(n+2), A355937(#)]` -/
def P1905642653838462821.Spec : Prop :=
  ∀ n, P1905642653838462821.a n = A193339 (n + 1)

end A193339

/-! ## A193339.P9945880738992998605

`filter[A066050(n+1), A105234(#)]`
-/

namespace A193339.P9945880738992998605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A193339.P9945880738992998605

namespace A193339

/-- `filter[A066050(n+1), A105234(#)]` -/
def P9945880738992998605.Spec : Prop :=
  ∀ n, P9945880738992998605.a n = A193339 (n + 1)

end A193339

/-!
# A193340: Terms of A001783 which are smaller than the preceding term in that sequence.

The programs for A193340, there is no canonical definition to state claims against.
-/

/-! ## A193340.P1476788677585184181

`A001783(A303580(n+1))`
-/

namespace A193340.P1476788677585184181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001783 (A303580 (n + 1)).toNat

end

end A193340.P1476788677585184181

/-! ## A193340.P11526040040634972119

`A124441(2*A303580(n+1))`
-/

namespace A193340.P11526040040634972119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124441 (2 * A303580 (n + 1)).toNat

end

end A193340.P11526040040634972119

/-! ## A193340.P5789681376188286004

`A209388(A303580(n+1)+A185017(3*n))`
-/

namespace A193340.P5789681376188286004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209388 (A303580 (n + 1) + A185017 (3 * n)).toNat

end

end A193340.P5789681376188286004

/-! ## A193340.P17014462398879352180

`A209388(2*A303580(n+1)-A303580(n+1))`
-/

namespace A193340.P17014462398879352180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209388 (2 * A303580 (n + 1) - A303580 (n + 1)).toNat

end

end A193340.P17014462398879352180

/-! ## A193340.P14669506390814579157

`A209388(A055881(2*n+5)*A303580(n+1))`
-/

namespace A193340.P14669506390814579157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209388 (A055881 (2 * n + 5) * A303580 (n + 1)).toNat

end

end A193340.P14669506390814579157

/-!
# A193341: E.g.f. satisfies: A(A(x)) = x*exp(A(x)), where A(x) = Sum_{n>=1} a(n)/(n!*2^(n-1)).

The programs for A193341, there is no canonical definition to state claims against.
-/

/-! ## A193341.P8143222924808107486

`A319078(n*A321181(n))`
-/

namespace A193341.P8143222924808107486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319078 ((n : ℤ) * A321181 n).toNat

end

end A193341.P8143222924808107486

/-! ## A193341.P16180752745575564289

`A083703(A168055(2*n+1))`
-/

namespace A193341.P16180752745575564289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083703 (A168055 (2 * n + 1)).toNat

end

end A193341.P16180752745575564289

/-!
# A193342: E.g.f.: A(x) = G(x)*exp(-x/2)/x where G(x) satisfies: G(G(x)) = x*exp(G(x)), and A(x) = Sum_{n>=0} a(n)*x^(2*n)/((2*n)!*4^n).

The programs for A193342, there is no canonical definition to state claims against.
-/

/-! ## A193342.P1874069494297207986

`A276913(Δ[n²])/Δ[n²]`
-/

namespace A193342.P1874069494297207986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276913 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

end

end A193342.P1874069494297207986

/-!
# A193345: Digits occurring in A173616.

The programs for A193345, there is no canonical definition to state claims against.
-/

/-! ## A193345.P8574307451687605259

`9-A225458(floor(acot(n)+n))`
-/

namespace A193345.P8574307451687605259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A225458 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A193345.P8574307451687605259

/-! ## A193345.P12619898746110053379

`9-(A225458(n)-floor(acot(n)))`
-/

namespace A193345.P12619898746110053379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A225458 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A193345.P12619898746110053379

/-! ## A193345.P2806602164224597007

`9-A225458(A028310(n))`
-/

namespace A193345.P2806602164224597007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A225458 (A028310 n).toNat

end

end A193345.P2806602164224597007

/-! ## A193345.P900868153754383611

`9-A225458(A000007(n)+n)`
-/

namespace A193345.P900868153754383611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A225458 (A000007 n + (n : ℤ)).toNat

end

end A193345.P900868153754383611

/-! ## A193345.P6095020464702625697

`A008683((n+1)²)+9-A225458(n)`
-/

namespace A193345.P6095020464702625697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (9 - A225458 n)

end

end A193345.P6095020464702625697

/-! ## A193345.P8705135136115356053

`A000010(n+2)%2+9-A225458(n)`
-/

namespace A193345.P8705135136115356053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 2)) 2 + (9 - A225458 n)

end

end A193345.P8705135136115356053

/-! ## A193345.P13379938273926615414

`(9-A225458(n))^(A000040(n+1)%2)`
-/

namespace A193345.P13379938273926615414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 - A225458 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A193345.P13379938273926615414

/-! ## A193345.P7171297116505011676

`(9-A225458(n))^∑{e}[A020639(n+1), #]`
-/

namespace A193345.P7171297116505011676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A225458 n) ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A193345.P7171297116505011676

/-! ## A193345.P11741112226773998085

`gcd(9-A225458(n), A008683(record[(1-n)²]))`
-/

namespace A193345.P11741112226773998085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (9 - A225458 n) (A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A193345.P11741112226773998085

/-!
# A193347: Number of even divisors of tau(n).

The programs for A193347, the canonical program `A193347.P15363500856293231746` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193347 has offset 1).

The definition of A193347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193347.P15170278838714175434

`A183063(A000005(n+1))`
-/

namespace A193347.P15170278838714175434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A000005 (n + 1)).toNat

end

end A193347.P15170278838714175434

namespace A193347

/-- `A183063(A000005(n+1))` -/
def P15170278838714175434.Spec : Prop :=
  ∀ n, P15170278838714175434.a n = A193347 (n + 1)

theorem P15170278838714175434.correct : P15170278838714175434.Spec := by
  intro n
  simp only [A193347, Nat.add_sub_cancel, A193347.P15170278838714175434.a, A193347.P15363500856293231746.a, A000005, A000005.P16091521709108585461.a, A010553, A010553.P11932377395426747626.a, A183063, A183063.P14549643650991336837.a, A193348, A193348.P8532159811995287053.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193347

/-! ## A193347.P15363500856293231746

`A010553(n+1)-A193348(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A193347

/-- `A010553(n+1)-A193348(n+1)` -/
def P15363500856293231746.Spec : Prop :=
  ∀ n, P15363500856293231746.a n = A193347 (n + 1)

theorem P15363500856293231746.correct : P15363500856293231746.Spec := by
  intro n
  simp only [A193347, Nat.add_sub_cancel]

end A193347

/-! ## A193347.P1200278422946896631

`A183063(∏{e}[n+1, #+1])`
-/

namespace A193347.P1200278422946896631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A193347.P1200278422946896631

namespace A193347

/-- `A183063(∏{e}[n+1, #+1])` -/
def P1200278422946896631.Spec : Prop :=
  ∀ n, P1200278422946896631.a n = A193347 (n + 1)

end A193347

/-! ## A193347.P1433936858841582887

`A299480(2*∏{e}[n+1, #+1])`
-/

namespace A193347.P1433936858841582887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (2 * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A193347.P1433936858841582887

namespace A193347

/-- `A299480(2*∏{e}[n+1, #+1])` -/
def P1433936858841582887.Spec : Prop :=
  ∀ n, P1433936858841582887.a n = A193347 (n + 1)

end A193347

/-! ## A193347.P14900155770652814256

`A183063(∑{d}[n+1, ((#+1)%2)!])`
-/

namespace A193347.P14900155770652814256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (∑ d ∈ Nat.divisors (f1 n), Nat.factorial ((d + 1) % 2))

end

end A193347.P14900155770652814256

namespace A193347

/-- `A183063(∑{d}[n+1, ((#+1)%2)!])` -/
def P14900155770652814256.Spec : Prop :=
  ∀ n, P14900155770652814256.a n = A193347 (n + 1)

end A193347

/-! ## A193347.P5622338569158374139

`A183063(Δ[A006218(n)])`
-/

namespace A193347.P5622338569158374139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (f1 (n + 1) - f1 n).toNat

end

end A193347.P5622338569158374139

namespace A193347

/-- `A183063(Δ[A006218(n)])` -/
def P5622338569158374139.Spec : Prop :=
  ∀ n, P5622338569158374139.a n = A193347 (n + 1)

end A193347

/-! ## A193347.P1554598203598991337

`A183063(Δ[A054519(n)])`
-/

namespace A193347.P1554598203598991337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (f1 (n + 1) - f1 n).toNat

end

end A193347.P1554598203598991337

namespace A193347

/-- `A183063(Δ[A054519(n)])` -/
def P1554598203598991337.Spec : Prop :=
  ∀ n, P1554598203598991337.a n = A193347 (n + 1)

end A193347

/-! ## A193347.P17154250095506473821

`A112329(A062011(n+1))`
-/

namespace A193347.P17154250095506473821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (A062011 (n + 1)).toNat

end

end A193347.P17154250095506473821

namespace A193347

/-- `A112329(A062011(n+1))` -/
def P17154250095506473821.Spec : Prop :=
  ∀ n, P17154250095506473821.a n = A193347 (n + 1)

end A193347

/-! ## A193347.P15863308204294155527

`A358345(A035116(n+1))`
-/

namespace A193347.P15863308204294155527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358345 (A035116 (n + 1)).toNat

end

end A193347.P15863308204294155527

namespace A193347

/-- `A358345(A035116(n+1))` -/
def P15863308204294155527.Spec : Prop :=
  ∀ n, P15863308204294155527.a n = A193347 (n + 1)

end A193347

/-! ## A193347.P15951602210000156632

`A358345(A000005(n+1)²)`
-/

namespace A193347.P15951602210000156632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358345 (A000005 (n + 1) ^ 2).toNat

end

end A193347.P15951602210000156632

namespace A193347

/-- `A358345(A000005(n+1)²)` -/
def P15951602210000156632.Spec : Prop :=
  ∀ n, P15951602210000156632.a n = A193347 (n + 1)

end A193347

/-! ## A193347.P16602577089261228004

`A183063(A032741(n+1)+1)`
-/

namespace A193347.P16602577089261228004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A032741 (n + 1) + 1).toNat

end

end A193347.P16602577089261228004

namespace A193347

/-- `A183063(A032741(n+1)+1)` -/
def P16602577089261228004.Spec : Prop :=
  ∀ n, P16602577089261228004.a n = A193347 (n + 1)

theorem P16602577089261228004.correct : P16602577089261228004.Spec := by
  intro n
  simp only [A193347, Nat.add_sub_cancel, A193347.P16602577089261228004.a, A193347.P15363500856293231746.a, A010553, A010553.P11932377395426747626.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A183063, A183063.P14549643650991336837.a, A193348, A193348.P8532159811995287053.a, A000005, A000005.P16091521709108585461.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193347

/-! ## A193347.P2992841431548336951

`A112329(2*A000005(n+1))`
-/

namespace A193347.P2992841431548336951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (2 * A000005 (n + 1)).toNat

end

end A193347.P2992841431548336951

namespace A193347

/-- `A112329(2*A000005(n+1))` -/
def P2992841431548336951.Spec : Prop :=
  ∀ n, P2992841431548336951.a n = A193347 (n + 1)

end A193347

/-! ## A193347.P4292629296987373675

`A299480(2*A000005(n+1))`
-/

namespace A193347.P4292629296987373675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (2 * A000005 (n + 1)).toNat

end

end A193347.P4292629296987373675

namespace A193347

/-- `A299480(2*A000005(n+1))` -/
def P4292629296987373675.Spec : Prop :=
  ∀ n, P4292629296987373675.a n = A193347 (n + 1)

end A193347

/-! ## A193347.P16899444097241135464

`A183063(A320111(2*(n+1)))`
-/

namespace A193347.P16899444097241135464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A320111 (2 * (n + 1))).toNat

end

end A193347.P16899444097241135464

namespace A193347

/-- `A183063(A320111(2*(n+1)))` -/
def P16899444097241135464.Spec : Prop :=
  ∀ n, P16899444097241135464.a n = A193347 (n + 1)

end A193347

/-! ## A193347.P6754606633471622298

`A183063(A062011(n+1)/2)`
-/

namespace A193347.P6754606633471622298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (SequenceMachineLib.roundAway ((A062011 (n + 1) : ℚ) / 2)).toNat

end

end A193347.P6754606633471622298

namespace A193347

/-- `A183063(A062011(n+1)/2)` -/
def P6754606633471622298.Spec : Prop :=
  ∀ n, P6754606633471622298.a n = A193347 (n + 1)

end A193347

/-! ## A193347.P3231968231021281883

`A112329(A145154(n+1)/2)`
-/

namespace A193347.P3231968231021281883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (SequenceMachineLib.roundAway ((A145154 (n + 1) : ℚ) / 2)).toNat

end

end A193347.P3231968231021281883

namespace A193347

/-- `A112329(A145154(n+1)/2)` -/
def P3231968231021281883.Spec : Prop :=
  ∀ n, P3231968231021281883.a n = A193347 (n + 1)

end A193347

/-! ## A193347.P15063260482741150992

`∑{d}[A000005(n+1), A059841(#)]`
-/

namespace A193347.P15063260482741150992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059841 d

end

end A193347.P15063260482741150992

namespace A193347

/-- `∑{d}[A000005(n+1), A059841(#)]` -/
def P15063260482741150992.Spec : Prop :=
  ∀ n, P15063260482741150992.a n = A193347 (n + 1)

end A193347

/-! ## A193347.P3873733016819963153

`∑{d}[A000005(n+1), A056594(#²)]`
-/

namespace A193347.P3873733016819963153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056594 (d ^ 2)

end

end A193347.P3873733016819963153

namespace A193347

/-- `∑{d}[A000005(n+1), A056594(#²)]` -/
def P3873733016819963153.Spec : Prop :=
  ∀ n, P3873733016819963153.a n = A193347 (n + 1)

end A193347

/-! ## A193347.P17521262930126051687

`1-A325937(2*A000005(n+1))`
-/

namespace A193347.P17521262930126051687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A325937 (2 * A000005 (n + 1)).toNat

end

end A193347.P17521262930126051687

namespace A193347

/-- `1-A325937(2*A000005(n+1))` -/
def P17521262930126051687.Spec : Prop :=
  ∀ n, P17521262930126051687.a n = A193347 (n + 1)

end A193347

/-! ## A193347.P12250071646679660927

`A193348(n+1)*A295664(n+1)`
-/

namespace A193347.P12250071646679660927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193348 (n + 1) * A295664 (n + 1)

end

end A193347.P12250071646679660927

namespace A193347

/-- `A193348(n+1)*A295664(n+1)` -/
def P12250071646679660927.Spec : Prop :=
  ∀ n, P12250071646679660927.a n = A193347 (n + 1)

end A193347

/-!
# A193348: Number of odd divisors of tau(n).

The programs for A193348, the canonical program `A193348.P8532159811995287053` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193348 has offset 1).

The definition of A193348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193348.P8532159811995287053

`A001227(A000005(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A193348

/-- `A001227(A000005(n+1))` -/
def P8532159811995287053.Spec : Prop :=
  ∀ n, P8532159811995287053.a n = A193348 (n + 1)

theorem P8532159811995287053.correct : P8532159811995287053.Spec := by
  intro n
  simp only [A193348, Nat.add_sub_cancel]

end A193348

/-! ## A193348.P18027448460450558976

`∑{d}[Δ[A006218(n)], #%2]`
-/

namespace A193348.P18027448460450558976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2

end

end A193348.P18027448460450558976

namespace A193348

/-- `∑{d}[Δ[A006218(n)], #%2]` -/
def P18027448460450558976.Spec : Prop :=
  ∀ n, (P18027448460450558976.a n : ℤ) = A193348 (n + 1)

end A193348

/-! ## A193348.P1856672688885463403

`A001227(∏{e}[n+1, #+1])`
-/

namespace A193348.P1856672688885463403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A193348.P1856672688885463403

namespace A193348

/-- `A001227(∏{e}[n+1, #+1])` -/
def P1856672688885463403.Spec : Prop :=
  ∀ n, P1856672688885463403.a n = A193348 (n + 1)

end A193348

/-! ## A193348.P6441817629583507027

`A301957(∏{e}[n+1, #+1])`
-/

namespace A193348.P6441817629583507027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301957 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A193348.P6441817629583507027

namespace A193348

/-- `A301957(∏{e}[n+1, #+1])` -/
def P6441817629583507027.Spec : Prop :=
  ∀ n, P6441817629583507027.a n = A193348 (n + 1)

end A193348

/-! ## A193348.P4691344386844015429

`A001227(∑{d}[n+1, gcd(n, #)])`
-/

namespace A193348.P4691344386844015429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A193348.P4691344386844015429

namespace A193348

/-- `A001227(∑{d}[n+1, gcd(n, #)])` -/
def P4691344386844015429.Spec : Prop :=
  ∀ n, P4691344386844015429.a n = A193348 (n + 1)

end A193348

/-! ## A193348.P8154066474516695314

`∏{e}[A000265(∏{e}[n+1, #+1]), #+1]`
-/

namespace A193348.P8154066474516695314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A193348.P8154066474516695314

namespace A193348

/-- `∏{e}[A000265(∏{e}[n+1, #+1]), #+1]` -/
def P8154066474516695314.Spec : Prop :=
  ∀ n, (P8154066474516695314.a n : ℤ) = A193348 (n + 1)

end A193348

/-! ## A193348.P15493929469305336435

`A001227(Δ[A006218(n)])`
-/

namespace A193348.P15493929469305336435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (f1 (n + 1) - f1 n).toNat

end

end A193348.P15493929469305336435

namespace A193348

/-- `A001227(Δ[A006218(n)])` -/
def P15493929469305336435.Spec : Prop :=
  ∀ n, P15493929469305336435.a n = A193348 (n + 1)

end A193348

/-! ## A193348.P11613768032335781576

`A301957(Δ[A006218(n)])`
-/

namespace A193348.P11613768032335781576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301957 (f1 (n + 1) - f1 n).toNat

end

end A193348.P11613768032335781576

namespace A193348

/-- `A301957(Δ[A006218(n)])` -/
def P11613768032335781576.Spec : Prop :=
  ∀ n, P11613768032335781576.a n = A193348 (n + 1)

end A193348

/-! ## A193348.P16190552217187776022

`A001227(A062011(n+1))`
-/

namespace A193348.P16190552217187776022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A062011 (n + 1)).toNat

end

end A193348.P16190552217187776022

namespace A193348

/-- `A001227(A062011(n+1))` -/
def P16190552217187776022.Spec : Prop :=
  ∀ n, P16190552217187776022.a n = A193348 (n + 1)

end A193348

/-! ## A193348.P47756854472049416

`A001227(A131089(n+1))`
-/

namespace A193348.P47756854472049416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A131089 (n + 1)).toNat

end

end A193348.P47756854472049416

namespace A193348

/-- `A001227(A131089(n+1))` -/
def P47756854472049416.Spec : Prop :=
  ∀ n, P47756854472049416.a n = A193348 (n + 1)

end A193348

/-! ## A193348.P14516484194255369524

`A000005(A212181(n+1))`
-/

namespace A193348.P14516484194255369524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A212181 (n + 1)).toNat

end

end A193348.P14516484194255369524

namespace A193348

/-- `A000005(A212181(n+1))` -/
def P14516484194255369524.Spec : Prop :=
  ∀ n, P14516484194255369524.a n = A193348 (n + 1)

end A193348

/-! ## A193348.P17686522527276867930

`A046951(A212181(n+1)²)`
-/

namespace A193348.P17686522527276867930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A212181 (n + 1) ^ 2).toNat

end

end A193348.P17686522527276867930

namespace A193348

/-- `A046951(A212181(n+1)²)` -/
def P17686522527276867930.Spec : Prop :=
  ∀ n, P17686522527276867930.a n = A193348 (n + 1)

end A193348

/-! ## A193348.P9797218502652381066

`A049419(A212181(n+1)²)`
-/

namespace A193348.P9797218502652381066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A212181 (n + 1) ^ 2).toNat

end

end A193348.P9797218502652381066

namespace A193348

/-- `A049419(A212181(n+1)²)` -/
def P9797218502652381066.Spec : Prop :=
  ∀ n, P9797218502652381066.a n = A193348 (n + 1)

end A193348

/-! ## A193348.P15873608441884278138

`A298735(A000005(n+1)²)`
-/

namespace A193348.P15873608441884278138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (A000005 (n + 1) ^ 2).toNat

end

end A193348.P15873608441884278138

namespace A193348

/-- `A298735(A000005(n+1)²)` -/
def P15873608441884278138.Spec : Prop :=
  ∀ n, P15873608441884278138.a n = A193348 (n + 1)

end A193348

/-! ## A193348.P10367320144316247696

`A328372(A000005(n+1)²)`
-/

namespace A193348.P10367320144316247696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328372 (A000005 (n + 1) ^ 2).toNat

end

end A193348.P10367320144316247696

namespace A193348

/-- `A328372(A000005(n+1)²)` -/
def P10367320144316247696.Spec : Prop :=
  ∀ n, P10367320144316247696.a n = A193348 (n + 1)

end A193348

/-! ## A193348.P11400563774466313151

`A367987(A212181(n+1)²)`
-/

namespace A193348.P11400563774466313151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367987 (A212181 (n + 1) ^ 2).toNat

end

end A193348.P11400563774466313151

namespace A193348

/-- `A367987(A212181(n+1)²)` -/
def P11400563774466313151.Spec : Prop :=
  ∀ n, P11400563774466313151.a n = A193348 (n + 1)

end A193348

/-! ## A193348.P8516801883579580557

`A001227(∑[A341062(n+1)])`
-/

namespace A193348.P8516801883579580557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193348.P8516801883579580557

namespace A193348

/-- `A001227(∑[A341062(n+1)])` -/
def P8516801883579580557.Spec : Prop :=
  ∀ n, P8516801883579580557.a n = A193348 (n + 1)

end A193348

/-! ## A193348.P14113421390795373222

`A333145(Δ[2*A006218(n)])`
-/

namespace A193348.P14113421390795373222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333145 (f1 (n + 1) - f1 n).toNat

end

end A193348.P14113421390795373222

namespace A193348

/-- `A333145(Δ[2*A006218(n)])` -/
def P14113421390795373222.Spec : Prop :=
  ∀ n, P14113421390795373222.a n = A193348 (n + 1)

end A193348

/-! ## A193348.P14492248972555981208

`A001227(A032741(n+1)+1)`
-/

namespace A193348.P14492248972555981208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A032741 (n + 1) + 1).toNat

end

end A193348.P14492248972555981208

namespace A193348

/-- `A001227(A032741(n+1)+1)` -/
def P14492248972555981208.Spec : Prop :=
  ∀ n, P14492248972555981208.a n = A193348 (n + 1)

end A193348

/-! ## A193348.P13362623227481542456

`A001227(A070824(n+1)+2)`
-/

namespace A193348.P13362623227481542456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A070824 (n + 1) + 2).toNat

end

end A193348.P13362623227481542456

namespace A193348

/-- `A001227(A070824(n+1)+2)` -/
def P13362623227481542456.Spec : Prop :=
  ∀ n, P13362623227481542456.a n = A193348 (n + 1)

end A193348

/-!
# A193349: Sum of odd divisors of tau(n).

The programs for A193349, the canonical program `A193349.P2136370767901044889` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193349 has offset 1).

The definition of A193349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193349.P2136370767901044889

`A000593(A000005(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A193349

/-- `A000593(A000005(n+1))` -/
def P2136370767901044889.Spec : Prop :=
  ∀ n, P2136370767901044889.a n = A193349 (n + 1)

theorem P2136370767901044889.correct : P2136370767901044889.Spec := by
  intro n
  simp only [A193349, Nat.add_sub_cancel]

end A193349

/-! ## A193349.P14167401915222022965

`∑{d}[A212181(n+1), #]`
-/

namespace A193349.P14167401915222022965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212181 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A193349.P14167401915222022965

namespace A193349

/-- `∑{d}[A212181(n+1), #]` -/
def P14167401915222022965.Spec : Prop :=
  ∀ n, (P14167401915222022965.a n : ℤ) = A193349 (n + 1)

end A193349

/-! ## A193349.P5306550056024539680

`A000593(∏{e}[n+1, #+1])`
-/

namespace A193349.P5306550056024539680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A193349.P5306550056024539680

namespace A193349

/-- `A000593(∏{e}[n+1, #+1])` -/
def P5306550056024539680.Spec : Prop :=
  ∀ n, P5306550056024539680.a n = A193349 (n + 1)

end A193349

/-! ## A193349.P16397200315385916345

`A000593(∑{d}[n+1, gcd(n, #)])`
-/

namespace A193349.P16397200315385916345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A193349.P16397200315385916345

namespace A193349

/-- `A000593(∑{d}[n+1, gcd(n, #)])` -/
def P16397200315385916345.Spec : Prop :=
  ∀ n, P16397200315385916345.a n = A193349 (n + 1)

end A193349

/-! ## A193349.P984560342144625544

`A000593(∑{d}[n+1, #+1]-∑{d}[n+1, #])`
-/

namespace A193349.P984560342144625544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d)

end

end A193349.P984560342144625544

namespace A193349

/-- `A000593(∑{d}[n+1, #+1]-∑{d}[n+1, #])` -/
def P984560342144625544.Spec : Prop :=
  ∀ n, P984560342144625544.a n = A193349 (n + 1)

end A193349

/-! ## A193349.P16712577833215622079

`A000593(A062011(n+1))`
-/

namespace A193349.P16712577833215622079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A062011 (n + 1)).toNat

end

end A193349.P16712577833215622079

namespace A193349

/-- `A000593(A062011(n+1))` -/
def P16712577833215622079.Spec : Prop :=
  ∀ n, P16712577833215622079.a n = A193349 (n + 1)

end A193349

/-! ## A193349.P4575218543256272267

`A000593(A131089(n+1))`
-/

namespace A193349.P4575218543256272267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A131089 (n + 1)).toNat

end

end A193349.P4575218543256272267

namespace A193349

/-- `A000593(A131089(n+1))` -/
def P4575218543256272267.Spec : Prop :=
  ∀ n, P4575218543256272267.a n = A193349 (n + 1)

end A193349

/-! ## A193349.P11546945844762928614

`A000593(A145154(n+1))`
-/

namespace A193349.P11546945844762928614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A145154 (n + 1)).toNat

end

end A193349.P11546945844762928614

namespace A193349

/-- `A000593(A145154(n+1))` -/
def P11546945844762928614.Spec : Prop :=
  ∀ n, P11546945844762928614.a n = A193349 (n + 1)

end A193349

/-! ## A193349.P5399277523358623997

`A000203(A212181(n+1))`
-/

namespace A193349.P5399277523358623997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A212181 (n + 1)).toNat

end

end A193349.P5399277523358623997

namespace A193349

/-- `A000203(A212181(n+1))` -/
def P5399277523358623997.Spec : Prop :=
  ∀ n, P5399277523358623997.a n = A193349 (n + 1)

end A193349

/-! ## A193349.P10794062159091356862

`A000593(A357669(n+1))`
-/

namespace A193349.P10794062159091356862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A357669 (n + 1)).toNat

end

end A193349.P10794062159091356862

namespace A193349

/-- `A000593(A357669(n+1))` -/
def P10794062159091356862.Spec : Prop :=
  ∀ n, P10794062159091356862.a n = A193349 (n + 1)

end A193349

/-! ## A193349.P4912015426911833040

`A360163(A000005(n+1)²)`
-/

namespace A193349.P4912015426911833040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360163 (A000005 (n + 1) ^ 2).toNat

end

end A193349.P4912015426911833040

namespace A193349

/-- `A360163(A000005(n+1)²)` -/
def P4912015426911833040.Spec : Prop :=
  ∀ n, P4912015426911833040.a n = A193349 (n + 1)

end A193349

/-! ## A193349.P11425204396528059162

`A091570(2*A000005(n+1))`
-/

namespace A193349.P11425204396528059162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (2 * A000005 (n + 1)).toNat

end

end A193349.P11425204396528059162

namespace A193349

/-- `A091570(2*A000005(n+1))` -/
def P11425204396528059162.Spec : Prop :=
  ∀ n, P11425204396528059162.a n = A193349 (n + 1)

end A193349

/-! ## A193349.P3733572069733158057

`A318876(2*A000005(n+1))`
-/

namespace A193349.P3733572069733158057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318876 (2 * A000005 (n + 1)).toNat

end

end A193349.P3733572069733158057

namespace A193349

/-- `A318876(2*A000005(n+1))` -/
def P3733572069733158057.Spec : Prop :=
  ∀ n, P3733572069733158057.a n = A193349 (n + 1)

end A193349

/-! ## A193349.P1271872292139189993

`A326135(2*A000005(n+1))`
-/

namespace A193349.P1271872292139189993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326135 (2 * A000005 (n + 1)).toNat

end

end A193349.P1271872292139189993

namespace A193349

/-- `A326135(2*A000005(n+1))` -/
def P1271872292139189993.Spec : Prop :=
  ∀ n, P1271872292139189993.a n = A193349 (n + 1)

end A193349

/-! ## A193349.P9310336526426533996

`A353416(2*A000005(n+1))`
-/

namespace A193349.P9310336526426533996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353416 (2 * A000005 (n + 1)).toNat

end

end A193349.P9310336526426533996

namespace A193349

/-- `A353416(2*A000005(n+1))` -/
def P9310336526426533996.Spec : Prop :=
  ∀ n, P9310336526426533996.a n = A193349 (n + 1)

end A193349

/-! ## A193349.P3744673687449833547

`∑{d}[A000005(n+1), A193356(#)]`
-/

namespace A193349.P3744673687449833547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A193356 d

end

end A193349.P3744673687449833547

namespace A193349

/-- `∑{d}[A000005(n+1), A193356(#)]` -/
def P3744673687449833547.Spec : Prop :=
  ∀ n, P3744673687449833547.a n = A193349 (n + 1)

end A193349

/-! ## A193349.P3967851975650180580

`A367988(2*A000005(n+1)²)`
-/

namespace A193349.P3967851975650180580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367988 (2 * A000005 (n + 1) ^ 2).toNat

end

end A193349.P3967851975650180580

namespace A193349

/-- `A367988(2*A000005(n+1)²)` -/
def P3967851975650180580.Spec : Prop :=
  ∀ n, P3967851975650180580.a n = A193349 (n + 1)

end A193349

/-! ## A193349.P3377147589416754849

`A062069(n+1)-A193350(n+1)`
-/

namespace A193349.P3377147589416754849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (n + 1) - A193350 (n + 1)

end

end A193349.P3377147589416754849

namespace A193349

/-- `A062069(n+1)-A193350(n+1)` -/
def P3377147589416754849.Spec : Prop :=
  ∀ n, P3377147589416754849.a n = A193349 (n + 1)

theorem P3377147589416754849.correct : P3377147589416754849.Spec := by
  intro n
  simp only [A193349, Nat.add_sub_cancel, A193349.P3377147589416754849.a, A193349.P2136370767901044889.a, A000005, A000005.P16091521709108585461.a, A000593, A000593.P13640346029616979906.a, A062069, A062069.P14373188164258229122.a, A193350, A193350.P7605107557020847514.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193349

/-! ## A193349.P2410463645301071334

`A000593(A038040(n+1)/(n+1))`
-/

namespace A193349.P2410463645301071334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A193349.P2410463645301071334

namespace A193349

/-- `A000593(A038040(n+1)/(n+1))` -/
def P2410463645301071334.Spec : Prop :=
  ∀ n, P2410463645301071334.a n = A193349 (n + 1)

end A193349

/-! ## A193349.P6991210106611377190

`A000593(A183063(n+1)+A001227(n+1))`
-/

namespace A193349.P6991210106611377190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A183063 (n + 1) + A001227 (n + 1)).toNat

end

end A193349.P6991210106611377190

namespace A193349

/-- `A000593(A183063(n+1)+A001227(n+1))` -/
def P6991210106611377190.Spec : Prop :=
  ∀ n, P6991210106611377190.a n = A193349 (n + 1)

theorem P6991210106611377190.correct : P6991210106611377190.Spec := by
  intro n
  simp only [A193349, Nat.add_sub_cancel, A193349.P6991210106611377190.a, A193349.P2136370767901044889.a, A000005, A000005.P16091521709108585461.a, A000593, A000593.P13640346029616979906.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A183063, A183063.P14549643650991336837.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A038712, A038712.P3404197303190209645.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193349

/-!
# A193350: Sum of even divisors of tau(n).

The programs for A193350, the canonical program `A193350.P7605107557020847514` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193350 has offset 1).

The definition of A193350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193350.P15790131698632203045

`A146076(A000005(n+1))`
-/

namespace A193350.P15790131698632203045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A000005 (n + 1)).toNat

end

end A193350.P15790131698632203045

namespace A193350

/-- `A146076(A000005(n+1))` -/
def P15790131698632203045.Spec : Prop :=
  ∀ n, P15790131698632203045.a n = A193350 (n + 1)

end A193350

/-! ## A193350.P7605107557020847514

`A062069(n+1)-A193349(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A193350

/-- `A062069(n+1)-A193349(n+1)` -/
def P7605107557020847514.Spec : Prop :=
  ∀ n, P7605107557020847514.a n = A193350 (n + 1)

theorem P7605107557020847514.correct : P7605107557020847514.Spec := by
  intro n
  simp only [A193350, Nat.add_sub_cancel]

end A193350

/-! ## A193350.P8502754695121968281

`A146076(∏{e}[n+1, #+1])`
-/

namespace A193350.P8502754695121968281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A193350.P8502754695121968281

namespace A193350

/-- `A146076(∏{e}[n+1, #+1])` -/
def P8502754695121968281.Spec : Prop :=
  ∀ n, P8502754695121968281.a n = A193350 (n + 1)

end A193350

/-! ## A193350.P1276748856346792270

`A146076(∑{d}[n+1, gcd(n, #)])`
-/

namespace A193350.P1276748856346792270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A193350.P1276748856346792270

namespace A193350

/-- `A146076(∑{d}[n+1, gcd(n, #)])` -/
def P1276748856346792270.Spec : Prop :=
  ∀ n, P1276748856346792270.a n = A193350 (n + 1)

end A193350

/-! ## A193350.P10883171641600434746

`A146076(∑{d}[n+1, ((#+1)%2)!])`
-/

namespace A193350.P10883171641600434746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (∑ d ∈ Nat.divisors (f1 n), Nat.factorial ((d + 1) % 2))

end

end A193350.P10883171641600434746

namespace A193350

/-- `A146076(∑{d}[n+1, ((#+1)%2)!])` -/
def P10883171641600434746.Spec : Prop :=
  ∀ n, P10883171641600434746.a n = A193350 (n + 1)

end A193350

/-! ## A193350.P7654018608357384660

`A146076(∑{d}[n+1, #+1]-∑{d}[n+1, #])`
-/

namespace A193350.P7654018608357384660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d)

end

end A193350.P7654018608357384660

namespace A193350

/-- `A146076(∑{d}[n+1, #+1]-∑{d}[n+1, #])` -/
def P7654018608357384660.Spec : Prop :=
  ∀ n, P7654018608357384660.a n = A193350 (n + 1)

end A193350

/-! ## A193350.P7333416838710791685

`A146076(A032741(n+1)+1)`
-/

namespace A193350.P7333416838710791685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A032741 (n + 1) + 1).toNat

end

end A193350.P7333416838710791685

namespace A193350

/-- `A146076(A032741(n+1)+1)` -/
def P7333416838710791685.Spec : Prop :=
  ∀ n, P7333416838710791685.a n = A193350 (n + 1)

end A193350

/-! ## A193350.P17721013492690913522

`A146076(A320111(2*(n+1)))`
-/

namespace A193350.P17721013492690913522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A320111 (2 * (n + 1))).toNat

end

end A193350.P17721013492690913522

namespace A193350

/-- `A146076(A320111(2*(n+1)))` -/
def P17721013492690913522.Spec : Prop :=
  ∀ n, P17721013492690913522.a n = A193350 (n + 1)

end A193350

/-! ## A193350.P14197580880204257944

`∑{d}[A000005(n+1), #-A193356(#)]`
-/

namespace A193350.P14197580880204257944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A193356 d)

end

end A193350.P14197580880204257944

namespace A193350

/-- `∑{d}[A000005(n+1), #-A193356(#)]` -/
def P14197580880204257944.Spec : Prop :=
  ∀ n, P14197580880204257944.a n = A193350 (n + 1)

end A193350

/-! ## A193350.P16649130771282713673

`∑{d}[A000005(n+1), #*A059841(#)]`
-/

namespace A193350.P16649130771282713673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A059841 d

end

end A193350.P16649130771282713673

namespace A193350

/-- `∑{d}[A000005(n+1), #*A059841(#)]` -/
def P16649130771282713673.Spec : Prop :=
  ∀ n, P16649130771282713673.a n = A193350 (n + 1)

end A193350

/-! ## A193350.P12848680349560243640

`A146076(A007503(n+1)-∑{d}[n+1, #])`
-/

namespace A193350.P12848680349560243640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A007503 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)).toNat

end

end A193350.P12848680349560243640

namespace A193350

/-- `A146076(A007503(n+1)-∑{d}[n+1, #])` -/
def P12848680349560243640.Spec : Prop :=
  ∀ n, P12848680349560243640.a n = A193350 (n + 1)

theorem P12848680349560243640.correct : P12848680349560243640.Spec := by
  intro n
  simp only [A193350, Nat.add_sub_cancel, A193350.P12848680349560243640.f1, A193350.P12848680349560243640.a, A193350.P7605107557020847514.a, A007503, A007503.P13484425310514315912.a, A062069, A062069.P14373188164258229122.a, A146076, A146076.P5513778411624192836.a, A193349, A193349.P2136370767901044889.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000593, A000593.P13640346029616979906.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193350

/-! ## A193350.P17794254097527357487

`A146076(∑{d}[n+1, #+1]-A000203(n+1))`
-/

namespace A193350.P17794254097527357487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1)).toNat

end

end A193350.P17794254097527357487

namespace A193350

/-- `A146076(∑{d}[n+1, #+1]-A000203(n+1))` -/
def P17794254097527357487.Spec : Prop :=
  ∀ n, P17794254097527357487.a n = A193350 (n + 1)

end A193350

/-! ## A193350.P14775543384468701793

`A146076(A006218(n+1)-A006218(n))`
-/

namespace A193350.P14775543384468701793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A006218 (n + 1) - A006218 n).toNat

end

end A193350.P14775543384468701793

namespace A193350

/-- `A146076(A006218(n+1)-A006218(n))` -/
def P14775543384468701793.Spec : Prop :=
  ∀ n, P14775543384468701793.a n = A193350 (n + 1)

end A193350

/-! ## A193350.P1682349066370876366

`A146076(A183063(n+1)+A001227(n+1))`
-/

namespace A193350.P1682349066370876366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A183063 (n + 1) + A001227 (n + 1)).toNat

end

end A193350.P1682349066370876366

namespace A193350

/-- `A146076(A183063(n+1)+A001227(n+1))` -/
def P1682349066370876366.Spec : Prop :=
  ∀ n, P1682349066370876366.a n = A193350 (n + 1)

theorem P1682349066370876366.correct : P1682349066370876366.Spec := by
  intro n
  simp only [A193350, Nat.add_sub_cancel, A193350.P1682349066370876366.a, A193350.P7605107557020847514.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A062069, A062069.P14373188164258229122.a, A146076, A146076.P5513778411624192836.a, A183063, A183063.P14549643650991336837.a, A193349, A193349.P2136370767901044889.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000593, A000593.P13640346029616979906.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193350

/-! ## A193350.P1711370381812913447

`A146076(A324827(n+1)+A324826(n+1))`
-/

namespace A193350.P1711370381812913447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A324827 (n + 1) + A324826 (n + 1)).toNat

end

end A193350.P1711370381812913447

namespace A193350

/-- `A146076(A324827(n+1)+A324826(n+1))` -/
def P1711370381812913447.Spec : Prop :=
  ∀ n, P1711370381812913447.a n = A193350 (n + 1)

end A193350

/-! ## A193350.P203590540833585897

`A146076(A353372(n+1)+A353371(n+1))`
-/

namespace A193350.P203590540833585897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A353372 (n + 1) + A353371 (n + 1)).toNat

end

end A193350.P203590540833585897

namespace A193350

/-- `A146076(A353372(n+1)+A353371(n+1))` -/
def P203590540833585897.Spec : Prop :=
  ∀ n, P203590540833585897.a n = A193350 (n + 1)

theorem P203590540833585897.correct : P203590540833585897.Spec := by
  intro n
  simp only [A193350, Nat.add_sub_cancel, A193350.P203590540833585897.a, A193350.P7605107557020847514.a, A062069, A062069.P14373188164258229122.a, A146076, A146076.P5513778411624192836.a, A193349, A193349.P2136370767901044889.a, A353371, A353371.P5704616763070307128.a, A353372, A353372.P6208270260937475359.f1, A353372.P6208270260937475359.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000593, A000593.P13640346029616979906.a, A353370, A353370.P14269787339324025173.f1, A353370.P14269787339324025173.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A038712, A038712.P3404197303190209645.a, A325698, A325698.P12350898067219436297.f1, A325698.P12350898067219436297.f2, A325698.P12350898067219436297.a, A195017, A195017.P8196782963761862228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193350

/-! ## A193350.P2219944535048021552

`A146076(A353376(n+1)+A353375(n+1))`
-/

namespace A193350.P2219944535048021552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A353376 (n + 1) + A353375 (n + 1)).toNat

end

end A193350.P2219944535048021552

namespace A193350

/-- `A146076(A353376(n+1)+A353375(n+1))` -/
def P2219944535048021552.Spec : Prop :=
  ∀ n, P2219944535048021552.a n = A193350 (n + 1)

theorem P2219944535048021552.correct : P2219944535048021552.Spec := by
  intro n
  simp only [A193350, Nat.add_sub_cancel, A193350.P2219944535048021552.a, A193350.P7605107557020847514.a, A062069, A062069.P14373188164258229122.a, A146076, A146076.P5513778411624192836.a, A193349, A193349.P2136370767901044889.a, A353375, A353375.P197900174002010438.a, A353376, A353376.P17395599227026768174.f1, A353376.P17395599227026768174.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000593, A000593.P13640346029616979906.a, A353374, A353374.P4573974283751582701.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A035263, A035263.P6825362395192920526.a, A038712, A038712.P3404197303190209645.a, A065043, A065043.P15027714353296076488.a, A000035, A000035.P2023072528413494694.a, A001511, A001511.P17146462531039486101.a, A007421, A007421.P2546261311158381976.f1, A007421.P2546261311158381976.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193350

/-! ## A193350.P17171437095633829520

`A062069(n+1)-A000593(A000005(n+1))`
-/

namespace A193350.P17171437095633829520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (n + 1) - A000593 (A000005 (n + 1)).toNat

end

end A193350.P17171437095633829520

namespace A193350

/-- `A062069(n+1)-A000593(A000005(n+1))` -/
def P17171437095633829520.Spec : Prop :=
  ∀ n, P17171437095633829520.a n = A193350 (n + 1)

end A193350

/-! ## A193350.P14180301082190510361

`A000203(A000005(n+1))-A193349(n+1)`
-/

namespace A193350.P14180301082190510361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000005 (n + 1)).toNat - A193349 (n + 1)

end

end A193350.P14180301082190510361

namespace A193350

/-- `A000203(A000005(n+1))-A193349(n+1)` -/
def P14180301082190510361.Spec : Prop :=
  ∀ n, P14180301082190510361.a n = A193350 (n + 1)

end A193350

/-! ## A193350.P2111755993556794591

`A146076(A183063(2*(n+1)))`
-/

namespace A193350.P2111755993556794591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A183063 (2 * (n + 1))).toNat

end

end A193350.P2111755993556794591

namespace A193350

/-- `A146076(A183063(2*(n+1)))` -/
def P2111755993556794591.Spec : Prop :=
  ∀ n, P2111755993556794591.a n = A193350 (n + 1)

end A193350

/-!
# A193351: Numbers k such that A071324(k) is prime.

The programs for A193351, there is no canonical definition to state claims against.
-/

/-! ## A193351.P10233046487575735756

`eq[2, A000005(A071324(n+1))]+1`
-/

namespace A193351.P10233046487575735756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A071324 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193351.P10233046487575735756

/-! ## A193351.P7188991444654781693

`eq[1, A010051(abs(A071323(n+1)))]+1`
-/

namespace A193351.P7188991444654781693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 |A071323 (n + 1)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193351.P7188991444654781693

/-! ## A193351.P862585688575724749

`eq[A285476(n), A304455(A071324(n+1))]+1`
-/

namespace A193351.P862585688575724749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (A071324 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A193351.P862585688575724749

/-! ## A193351.P7983546742665560328

`eq[2, A001222(A071324(n+1)²)]+1`
-/

namespace A193351.P7983546742665560328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071324 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193351.P7983546742665560328

/-!
# A193352: Total counts of distinct (directed) Hamiltonian paths for all simple graphs of order n.

The programs for A193352, there is no canonical definition to state claims against.
-/

/-! ## A193352.P2110473330385651107

`A124963(n+1)+A000122(n+3)`
-/

namespace A193352.P2110473330385651107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124963 (n + 1) + A000122 (n + 3)

end

end A193352.P2110473330385651107

/-! ## A193352.P1951929903027692639

`A124963(n+1)+A000095(n+4)`
-/

namespace A193352.P1951929903027692639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124963 (n + 1) + A000095 (n + 4)

end

end A193352.P1951929903027692639

/-!
# A193353: G.f. satisfies: A(x) = Sum_{n>=0} x^n * Product_{k=1..n} A(k*x)/(1+k*x).

The programs for A193353, there is no canonical definition to state claims against.
-/

/-! ## A193353.P17310691215189190049

`A121554(a(n-1)+2*n)` with `a(0)=1`
-/

namespace A193353.P17310691215189190049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121554 (a (n - 1) + (2 * n : ℤ)).toNat

end

end A193353.P17310691215189190049

/-! ## A193353.P4924137943611898178

`A341972(A373089(n))`
-/

namespace A193353.P4924137943611898178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341972 ((A373089 n).toNat + 10)

end

end A193353.P4924137943611898178

/-! ## A193353.P1680369517892726385

`A077463(A372346(n))+1`
-/

namespace A193353.P1680369517892726385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077463 (A372346 n).toNat + 1

end

end A193353.P1680369517892726385

/-!
# A193356: If n is even then 0, otherwise n.

The programs for A193356, the canonical program `A193356.P18165301230396846274` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193356 has offset 1).

The definition of A193356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193356.P11516650079489349375

`(1-(-1)^(n+1))*(n+1)/2`
-/

namespace A193356.P11516650079489349375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (-1) ^ (n + 1)) * (n + 1 : ℤ) : ℚ) / 2

end

end A193356.P11516650079489349375

namespace A193356

/-- `(1-(-1)^(n+1))*(n+1)/2` -/
def P11516650079489349375.Spec : Prop :=
  ∀ n, P11516650079489349375.a n = (A193356 (n + 1) : ℚ)

theorem P11516650079489349375.correct : P11516650079489349375.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A193356, Nat.add_sub_cancel, A193356.P11516650079489349375.a, A193356.P18165301230396846274.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A193356, Nat.add_sub_cancel, A193356.P11516650079489349375.a, A193356.P18165301230396846274.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A193356

/-! ## A193356.P18165301230396846274

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193356

/-- `2*a(n-2)-a(n-4)` -/
def P18165301230396846274.Spec : Prop :=
  ∀ n, P18165301230396846274.a n = A193356 (n + 1)

theorem P18165301230396846274.correct : P18165301230396846274.Spec := by
  intro n
  simp only [A193356, Nat.add_sub_cancel]

end A193356

/-! ## A193356.P11000577693416159491

`A027656(A042948(n))`
-/

namespace A193356.P11000577693416159491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A042948 n).toNat

end

end A193356.P11000577693416159491

namespace A193356

/-- `A027656(A042948(n))` -/
def P11000577693416159491.Spec : Prop :=
  ∀ n, P11000577693416159491.a n = A193356 (n + 1)

end A193356

/-! ## A193356.P1341609392496476976

`C(xor(1, n), n)`
-/

namespace A193356.P1341609392496476976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) n

end

end A193356.P1341609392496476976

namespace A193356

/-- `C(xor(1, n), n)` -/
def P1341609392496476976.Spec : Prop :=
  ∀ n, (P1341609392496476976.a n : ℤ) = A193356 (n + 1)

end A193356

/-! ## A193356.P397992074371653956

`xor(1, gcd(n, n%2))`
-/

namespace A193356.P397992074371653956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.gcd n (n % 2))

end

end A193356.P397992074371653956

namespace A193356

/-- `xor(1, gcd(n, n%2))` -/
def P397992074371653956.Spec : Prop :=
  ∀ n, (P397992074371653956.a n : ℤ) = A193356 (n + 1)

end A193356

/-! ## A193356.P14596603596773771967

`C(or(1, n), lcm(2, n))`
-/

namespace A193356.P14596603596773771967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) (Nat.lcm 2 n)

end

end A193356.P14596603596773771967

namespace A193356

/-- `C(or(1, n), lcm(2, n))` -/
def P14596603596773771967.Spec : Prop :=
  ∀ n, (P14596603596773771967.a n : ℤ) = A193356 (n + 1)

end A193356

/-! ## A193356.P2803136147521267499

`xor(n, n^and(1, n))`
-/

namespace A193356.P2803136147521267499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n ^ Nat.land 1 n)

end

end A193356.P2803136147521267499

namespace A193356

/-- `xor(n, n^and(1, n))` -/
def P2803136147521267499.Spec : Prop :=
  ∀ n, (P2803136147521267499.a n : ℤ) = A193356 (n + 1)

end A193356

/-! ## A193356.P13137226041189361017

`or(n, -and(1, n))+1`
-/

namespace A193356.P13137226041189361017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(Nat.land 1 n : ℤ)) + 1

end

end A193356.P13137226041189361017

namespace A193356

/-- `or(n, -and(1, n))+1` -/
def P13137226041189361017.Spec : Prop :=
  ∀ n, P13137226041189361017.a n = A193356 (n + 1)

end A193356

/-! ## A193356.P6661605946340768974

`or(1, n)*char[2*n]`
-/

namespace A193356.P6661605946340768974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n * (if ∃ j, f1 j = n then 1 else 0)

end

end A193356.P6661605946340768974

namespace A193356

/-- `or(1, n)*char[2*n]` -/
def P6661605946340768974.Spec : Prop :=
  ∀ n, (P6661605946340768974.a n : ℤ) = A193356 (n + 1)

end A193356

/-! ## A193356.P4833772943341340419

`xor(1, n)*char[2*n]`
-/

namespace A193356.P4833772943341340419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n * (if ∃ j, f1 j = n then 1 else 0)

end

end A193356.P4833772943341340419

namespace A193356

/-- `xor(1, n)*char[2*n]` -/
def P4833772943341340419.Spec : Prop :=
  ∀ n, (P4833772943341340419.a n : ℤ) = A193356 (n + 1)

end A193356

/-! ## A193356.P15295123658809882123

`C((-1)^n+n, n)`
-/

namespace A193356.P15295123658809882123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((-1) ^ n + (n : ℤ)).toNat n

end

end A193356.P15295123658809882123

namespace A193356

/-- `C((-1)^n+n, n)` -/
def P15295123658809882123.Spec : Prop :=
  ∀ n, (P15295123658809882123.a n : ℤ) = A193356 (n + 1)

end A193356

/-! ## A193356.P1205785036119913241

`(-n)^and(1, n)+n`
-/

namespace A193356.P1205785036119913241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ Nat.land 1 n + (n : ℤ)

end

end A193356.P1205785036119913241

namespace A193356

/-- `(-n)^and(1, n)+n` -/
def P1205785036119913241.Spec : Prop :=
  ∀ n, P1205785036119913241.a n = A193356 (n + 1)

end A193356

/-! ## A193356.P6814405677236662938

`∑{e}[or(n, -2), #+n]`
-/

namespace A193356.P6814405677236662938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + n)

end

end A193356.P6814405677236662938

namespace A193356

/-- `∑{e}[or(n, -2), #+n]` -/
def P6814405677236662938.Spec : Prop :=
  ∀ n, (P6814405677236662938.a n : ℤ) = A193356 (n + 1)

end A193356

/-! ## A193356.P4982669070396793309

`ceil(char[2*n]/acot(n))`
-/

namespace A193356.P4982669070396793309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉

end

end A193356.P4982669070396793309

namespace A193356

/-- `ceil(char[2*n]/acot(n))` -/
def P4982669070396793309.Spec : Prop :=
  ∀ n, P4982669070396793309.a n = A193356 (n + 1)

end A193356

/-! ## A193356.P5054124782795784912

`lcm(n+1, ∑[(-1)^n])`
-/

namespace A193356.P5054124782795784912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193356.P5054124782795784912

namespace A193356

/-- `lcm(n+1, ∑[(-1)^n])` -/
def P5054124782795784912.Spec : Prop :=
  ∀ n, (P5054124782795784912.a n : ℤ) = A193356 (n + 1)

end A193356

/-! ## A193356.P5384734704082442254

`(n+1)%2*(n+1)`
-/

namespace A193356.P5384734704082442254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 * (n + 1)

end

end A193356.P5384734704082442254

namespace A193356

/-- `(n+1)%2*(n+1)` -/
def P5384734704082442254.Spec : Prop :=
  ∀ n, (P5384734704082442254.a n : ℤ) = A193356 (n + 1)

end A193356

/-! ## A193356.P14077631253910615535

`(n+1)*and(1, n+1)`
-/

namespace A193356.P14077631253910615535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.land 1 (n + 1)

end

end A193356.P14077631253910615535

namespace A193356

/-- `(n+1)*and(1, n+1)` -/
def P14077631253910615535.Spec : Prop :=
  ∀ n, (P14077631253910615535.a n : ℤ) = A193356 (n + 1)

end A193356

/-! ## A193356.P5347319240501408675

`or(1, n+1)%(n+2)`
-/

namespace A193356.P5347319240501408675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1) % (n + 2)

end

end A193356.P5347319240501408675

namespace A193356

/-- `or(1, n+1)%(n+2)` -/
def P5347319240501408675.Spec : Prop :=
  ∀ n, (P5347319240501408675.a n : ℤ) = A193356 (n + 1)

end A193356

/-! ## A193356.P15447350745211512164

`and(n+1, (1-n)%2)`
-/

namespace A193356.P15447350745211512164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (Int.tmod (1 - (n : ℤ)) 2)

end

end A193356.P15447350745211512164

namespace A193356

/-- `and(n+1, (1-n)%2)` -/
def P15447350745211512164.Spec : Prop :=
  ∀ n, P15447350745211512164.a n = A193356 (n + 1)

end A193356

/-! ## A193356.P4060856855301631432

`gcd(n+2, and(1, n))-1`
-/

namespace A193356.P4060856855301631432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 2) (Nat.land 1 n) : ℤ) - 1

end

end A193356.P4060856855301631432

namespace A193356

/-- `gcd(n+2, and(1, n))-1` -/
def P4060856855301631432.Spec : Prop :=
  ∀ n, P4060856855301631432.a n = A193356 (n + 1)

end A193356

/-!
# A193357: Triangle read by rows: T(n,k) (n>=1, 1 <= k <= n) = number of n-element unlabeled rigid interval posets of height k.

The programs for A193357, there is no canonical definition to state claims against.
-/

/-! ## A193357.P13585268442460407037

`A091480(n+1)-A285097(A317525(n+1))`
-/

namespace A193357.P13585268442460407037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091480 (n + 1) - A285097 (A317525 (n + 1)).toNat

end

end A193357.P13585268442460407037

/-!
# A193358: a(0)=1; a(1)=2 and for n>1: a(n)=a(n-a(n-2))+2.

The programs for A193358, the canonical program `A193358.P7269951376367171096` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193358 has offset 0).

The definition of A193358 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-2))+2` (program `A193358.P7269951376367171096`, by `A193358.P7269951376367171096.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193358.P7269951376367171096

`a(n-a(n-2))+2` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193358

/-- `a(n-a(n-2))+2` -/
def P7269951376367171096.Spec : Prop :=
  ∀ n, (P7269951376367171096.a n : ℤ) = A193358 n

theorem P7269951376367171096.correct : P7269951376367171096.Spec := by
  intro n
  simp only [A193358]

end A193358

/-! ## A193358.P13732643870249268150

`A001670(n+1)-A005369(n+2)`
-/

namespace A193358.P13732643870249268150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001670 (n + 1) - A005369 (n + 2)

end

end A193358.P13732643870249268150

namespace A193358

/-- `A001670(n+1)-A005369(n+2)` -/
def P13732643870249268150.Spec : Prop :=
  ∀ n, P13732643870249268150.a n = A193358 n

end A193358

/-! ## A193358.P13372406627071995926

`Δ[A167381(n+1)-A167991(n+1)]`
-/

namespace A193358.P13372406627071995926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167381 (n + 1) - A167991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193358.P13372406627071995926

namespace A193358

/-- `Δ[A167381(n+1)-A167991(n+1)]` -/
def P13372406627071995926.Spec : Prop :=
  ∀ n, P13372406627071995926.a n = A193358 n

end A193358

/-! ## A193358.P18379577726435830735

`A167991(n+1)+A167991(n+1)-A167991(n+2)`
-/

namespace A193358.P18379577726435830735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167991 (n + 1) + (A167991 (n + 1) - A167991 (n + 2))

end

end A193358.P18379577726435830735

namespace A193358

/-- `A167991(n+1)+A167991(n+1)-A167991(n+2)` -/
def P18379577726435830735.Spec : Prop :=
  ∀ n, P18379577726435830735.a n = A193358 n

end A193358

/-! ## A193358.P10904347124604708595

`A284359(n)-Δ[Δ[A284359(n)]]`
-/

namespace A193358.P10904347124604708595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 n - (f1 (n + 1) - f1 n)

end

end A193358.P10904347124604708595

namespace A193358

/-- `A284359(n)-Δ[Δ[A284359(n)]]` -/
def P10904347124604708595.Spec : Prop :=
  ∀ n, P10904347124604708595.a n = A193358 n

end A193358

/-! ## A193358.P8556107542600168727

`A004277(A284359(n+1))-A284359(n+2)`
-/

namespace A193358.P8556107542600168727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A284359 (n + 1)).toNat - A284359 (n + 2)

end

end A193358.P8556107542600168727

namespace A193358

/-- `A004277(A284359(n+1))-A284359(n+2)` -/
def P8556107542600168727.Spec : Prop :=
  ∀ n, P8556107542600168727.a n = A193358 n

end A193358

/-! ## A193358.P378493401263288945

`A203568(Δ[A001670(n+2)])+A001670(n+1)`
-/

namespace A193358.P378493401263288945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001670 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203568 (f1 (n + 1) - f1 n).toNat + A001670 (n + 1)

end

end A193358.P378493401263288945

namespace A193358

/-- `A203568(Δ[A001670(n+2)])+A001670(n+1)` -/
def P378493401263288945.Spec : Prop :=
  ∀ n, P378493401263288945.a n = A193358 n

end A193358

/-! ## A193358.P17257434884364825392

`A001670(n+1)-A189727(Δ[A001670(n+2)]+1)`
-/

namespace A193358.P17257434884364825392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001670 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001670 (n + 1) - A189727 (f1 (n + 1) - f1 n + 1).toNat

end

end A193358.P17257434884364825392

namespace A193358

/-- `A001670(n+1)-A189727(Δ[A001670(n+2)]+1)` -/
def P17257434884364825392.Spec : Prop :=
  ∀ n, P17257434884364825392.a n = A193358 n

end A193358

/-!
# A193360: Concatenation of P{1},P{1,2},P{1,2,3}... where P(A) denotes the power set of A ordered by the size of the subsets, and in each subset, following the increasing order.

The programs for A193360, there is no canonical definition to state claims against.
-/

/-! ## A193360.P2476129590103434021

`A344084(lt[A124734(n+1), A344084(n+1)])`
-/

namespace A193360.P2476129590103434021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344084 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A193360.P2476129590103434021

/-! ## A193360.P918114099532462685

`Δ[∑{e}[2^n, A190853(#)]]`
-/

namespace A193360.P918114099532462685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A190853 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193360.P918114099532462685

/-! ## A193360.P3857934944475590141

`A324668(A324684(n))+A081129(n)`
-/

namespace A193360.P3857934944475590141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324668 (A324684 n).toNat + A081129 n

end

end A193360.P3857934944475590141

/-! ## A193360.P16709857979893590322

`A001221(A328965(n)+A163621(n+1))`
-/

namespace A193360.P16709857979893590322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A328965 n + A163621 (n + 1)).toNat

end

end A193360.P16709857979893590322

/-! ## A193360.P11231715444797226950

`A001221(A272919(3*n+2)-A237660(3*n+1))`
-/

namespace A193360.P11231715444797226950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A272919 (3 * n + 2) - A237660 (3 * n + 1)).toNat

end

end A193360.P11231715444797226950

/-!
# A193361: a(0)=0, a(1)=0; for n>1, a(n) = a(n-1) + (n-3)*a(n-2) + 1.

The programs for A193361, the canonical program `A193361.P5377649720249898923` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193361 has offset 0).

The definition of A193361 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+(n-3)*a(n-2)` (program `A193361.P5377649720249898923`, by `A193361.P5377649720249898923.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193361.P5377649720249898923

`1+a(n-1)+(n-3)*a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193361

/-- `1+a(n-1)+(n-3)*a(n-2)` -/
def P5377649720249898923.Spec : Prop :=
  ∀ n, P5377649720249898923.a n = A193361 n

theorem P5377649720249898923.correct : P5377649720249898923.Spec := by
  intro n
  simp only [A193361]

end A193361

/-! ## A193361.P1119705389117279076

`a(n-1)+(n-3)*a(n-2)+1` with `a(0)=0, a(1)=0, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A193361.P1119705389117279076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) + ((n : ℤ) - 3) * a (n - 2) + 1

end

end A193361.P1119705389117279076

namespace A193361

/-- `a(n-1)+(n-3)*a(n-2)+1` -/
def P1119705389117279076.Spec : Prop :=
  ∀ n, P1119705389117279076.a n = A193361 n

end A193361

/-! ## A193361.P11756319635234726672

`1-((3-n)*a(n-2)-a(n-1))` with `a(0)=0, a(1)=0`
-/

namespace A193361.P11756319635234726672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - ((3 - (n : ℤ)) * a (n - 2) - a (n - 1))

end

end A193361.P11756319635234726672

namespace A193361

/-- `1-((3-n)*a(n-2)-a(n-1))` -/
def P11756319635234726672.Spec : Prop :=
  ∀ n, P11756319635234726672.a n = A193361 n

end A193361

/-! ## A193361.P3028116621387876219

`A057427(A132090(n+1))*A187044(A289207(n))`
-/

namespace A193361.P3028116621387876219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A132090 (n + 1)).toNat * A187044 (A289207 n).toNat

end

end A193361.P3028116621387876219

namespace A193361

/-- `A057427(A132090(n+1))*A187044(A289207(n))` -/
def P3028116621387876219.Spec : Prop :=
  ∀ n, P3028116621387876219.a n = A193361 n

end A193361

/-! ## A193361.P5211086466551398423

`A057427(n-A057427(n))*A187044(A289207(n))`
-/

namespace A193361.P5211086466551398423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n : ℤ) - A057427 n).toNat * A187044 (A289207 n).toNat

end

end A193361.P5211086466551398423

namespace A193361

/-- `A057427(n-A057427(n))*A187044(A289207(n))` -/
def P5211086466551398423.Spec : Prop :=
  ∀ n, P5211086466551398423.a n = A193361 n

end A193361

/-! ## A193361.P907290418310070601

`A187044(A289207(n))%A000085(n)`
-/

namespace A193361.P907290418310070601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187044 (A289207 n).toNat) (A000085 n)

end

end A193361.P907290418310070601

namespace A193361

/-- `A187044(A289207(n))%A000085(n)` -/
def P907290418310070601.Spec : Prop :=
  ∀ n, P907290418310070601.a n = A193361 n

end A193361

/-! ## A193361.P7712825759107765031

`A187044(A289207(n))-A238750(A161680(n))`
-/

namespace A193361.P7712825759107765031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187044 (A289207 n).toNat - A238750 (A161680 n).toNat

end

end A193361.P7712825759107765031

namespace A193361

/-- `A187044(A289207(n))-A238750(A161680(n))` -/
def P7712825759107765031.Spec : Prop :=
  ∀ n, P7712825759107765031.a n = A193361 n

end A193361

/-!
# A193365: a(n) = A220371(n)/(4*A220371(n-1)).

The programs for A193365, there is no canonical definition to state claims against.
-/

/-! ## A193365.P10327925619865066794

`A220371(n+1)/(4*A220371(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A193365.P10327925619865066794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220371 (n + 1) : ℚ) / (4 * A220371 n : ℚ)

end

end A193365.P10327925619865066794

/-! ## A193365.P13988621563971836041

`((4*(n+1))²-1)*2^val(n+1, 2)`
-/

namespace A193365.P13988621563971836041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((4 * (n + 1)) ^ 2 : ℤ) - 1) * (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A193365.P13988621563971836041

/-! ## A193365.P1191543832952768834

`lcm((4*(n+1))²-1, Δ[xor(n, floor(n/2))])`
-/

namespace A193365.P1191543832952768834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((4 * (n + 1)) ^ 2 : ℤ) - 1) (f1 (n + 1) - f1 n)

end

end A193365.P1191543832952768834

/-! ## A193365.P2381738496407327603

`gcd(((16*(n+1))²-16)², ∑[∑[96*n]+15])`
-/

namespace A193365.P2381738496407327603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  96 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((((16 * (n + 1)) ^ 2 : ℤ) - 16) ^ 2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A193365.P2381738496407327603

/-! ## A193365.P17209256753976398878

`∑[∑[96*n]+15]/floor((n+1)/2^val(n+1, 2))`
-/

namespace A193365.P17209256753976398878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  96 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 15

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (⌊(n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ)

end

end A193365.P17209256753976398878

/-!
# A193366: Primes of the form n^4 + n^3 + n^2 + n + 1 where n is nonprime.

The programs for A193366, there is no canonical definition to state claims against.
-/

/-! ## A193366.P15423653612676695245

`A053699(A286094(n+1))`
-/

namespace A193366.P15423653612676695245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (A286094 (n + 1)).toNat

end

end A193366.P15423653612676695245

/-! ## A193366.P14927832563275097801

`A027445(A286094(n+1))+A000035(2*n+3)`
-/

namespace A193366.P14927832563275097801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 (A286094 (n + 1)).toNat + A000035 (2 * n + 3)

end

end A193366.P14927832563275097801

/-! ## A193366.P5138911230227290749

`A027445(∩[A018252(n+1), A049409(n+1)])+1`
-/

namespace A193366.P5138911230227290749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A193366.P5138911230227290749

/-! ## A193366.P9648658358515673577

`A027445(∩[A049409(n+1), A056653(n+1)])+1`
-/

namespace A193366.P9648658358515673577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A193366.P9648658358515673577

/-! ## A193366.P14352159969290120944

`A027445(∩[A049409(n+1), A139118(n+1)])+1`
-/

namespace A193366.P14352159969290120944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A193366.P14352159969290120944

/-! ## A193366.P7981481105572310561

`A027445(∩[A049409(n+1), A141468(n+1)])+1`
-/

namespace A193366.P7981481105572310561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A193366.P7981481105572310561

/-!
# A193374: E.g.f.: A(x) = exp( Sum_{n>=1} x^(n*(n+1)/2) / (n*(n+1)/2) ).

The programs for A193374, there is no canonical definition to state claims against.
-/

/-! ## A193374.P4825701610596917564

`A004442(A293588(n))+A001470(n)`
-/

namespace A193374.P4825701610596917564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A293588 n).toNat + A001470 n

end

end A193374.P4825701610596917564

/-! ## A193374.P4492185869856534052

`A022998(A293588(n)+A001471(n))`
-/

namespace A193374.P4492185869856534052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A293588 n + A001471 n).toNat

end

end A193374.P4492185869856534052

/-! ## A193374.P7970662724429100878

`A028310(A293588(n)+A001471(n))`
-/

namespace A193374.P7970662724429100878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A293588 n + A001471 n).toNat

end

end A193374.P7970662724429100878

/-! ## A193374.P6440875682677029026

`A053499(n)+A004442(A293588(n))`
-/

namespace A193374.P6440875682677029026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053499 n + A004442 (A293588 n).toNat

end

end A193374.P6440875682677029026

/-! ## A193374.P11276437702664806471

`A106618(A293588(n)+A001471(n))`
-/

namespace A193374.P11276437702664806471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A293588 n + A001471 n).toNat

end

end A193374.P11276437702664806471

/-!
# A193375: E.g.f.: A(x) = exp( Sum_{n>=1} x^(n*(n+1)/2) ).

The programs for A193375, there is no canonical definition to state claims against.
-/

/-! ## A193375.P5679789310720608914

`A053625(n)+A000027(A118396(n))`
-/

namespace A193375.P5679789310720608914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053625 n + A000027 (A118396 n).toNat

end

end A193375.P5679789310720608914

/-! ## A193375.P696384936307006067

`A118396(A082216(n))+A053625(n)`
-/

namespace A193375.P696384936307006067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118396 (A082216 n).toNat + A053625 n

end

end A193375.P696384936307006067

/-! ## A193375.P882114163193004385

`A118396(A087051(n))+A053625(n)`
-/

namespace A193375.P882114163193004385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118396 (A087051 n).toNat + A053625 n

end

end A193375.P882114163193004385

/-! ## A193375.P5751247934110935274

`A118396(A145461(n+1))+A053625(n)`
-/

namespace A193375.P5751247934110935274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118396 (A145461 (n + 1)).toNat + A053625 n

end

end A193375.P5751247934110935274

/-!
# A193376: T(n,k) = number of ways to place any number of 2 X 1 tiles of k distinguishable colors into an n X 1 grid; array read by descending antidiagonals, with n, k >= 1.

The programs for A193376, there is no canonical definition to state claims against.
-/

/-! ## A193376.P14078460965363079139

`A083856(lt[1, A097805(n)])`
-/

namespace A193376.P14078460965363079139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193376.P14078460965363079139

/-! ## A193376.P9024389408519381798

`A083856(lt[1, A050143(n+1)])`
-/

namespace A193376.P9024389408519381798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193376.P9024389408519381798

/-! ## A193376.P4085048188284298690

`A083856(lt[1, A048993(n)])`
-/

namespace A193376.P4085048188284298690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193376.P4085048188284298690

/-! ## A193376.P4610038701254740519

`A172237(lt[1, A002262(n)])`
-/

namespace A193376.P4610038701254740519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172237 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193376.P4610038701254740519

/-! ## A193376.P9398861937438536232

`A172237(lt[1, A083861(n)])`
-/

namespace A193376.P9398861937438536232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172237 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193376.P9398861937438536232

/-! ## A193376.P4790799884196505696

`A172237(lt[1, A139601(n)])`
-/

namespace A193376.P4790799884196505696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172237 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193376.P4790799884196505696

/-! ## A193376.P8474260152877564347

`A172237(lt[1, A198321(n)])`
-/

namespace A193376.P8474260152877564347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172237 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193376.P8474260152877564347

/-! ## A193376.P14118762491939747341

`A172237(lt[1, A229001(n)])`
-/

namespace A193376.P14118762491939747341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172237 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193376.P14118762491939747341

/-! ## A193376.P2596932632141355103

`A172237(lt[1, A229223(n)])`
-/

namespace A193376.P2596932632141355103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172237 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193376.P2596932632141355103

/-! ## A193376.P10674956819930773405

`A172237(lt[1, A334622(n)])`
-/

namespace A193376.P10674956819930773405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172237 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193376.P10674956819930773405

/-!
# A193379: Norm of coefficients in the series C(x) defined by C(x) = 1 + x*C(i*x)^2, where i^2 = -1.

The programs for A193379, there is no canonical definition to state claims against.
-/

/-! ## A193379.P15005056515797245442

`A056325(n)+A008472(A227656(n))`
-/

namespace A193379.P15005056515797245442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056325 n + A008472 (A227656 n).toNat

end

end A193379.P15005056515797245442

/-! ## A193379.P2146383546721049075

`A299924(or(A001787(n), A006318(n)))`
-/

namespace A193379.P2146383546721049075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299924 (Int.lor (A001787 n) (A006318 n)).toNat

end

end A193379.P2146383546721049075

/-!
# A193380: A192392(n)/n = largest m such that m*n is a concatenation of the numbers n(n-1)/2+1,...,n(n+1)/2.

The programs for A193380, there is no canonical definition to state claims against.
-/

/-! ## A193380.P2289118831395068803

`A192392(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A193380.P2289118831395068803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192392 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A193380.P2289118831395068803

/-!
# A193381: Largest multiple of n which is a concatenation of the n numbers n(n-1)/2,...,n(n+1)/2-1, or 0 if no such number exists.

The programs for A193381, there is no canonical definition to state claims against.
-/

/-! ## A193381.P9343633059240147966

`A080483(n+1)-A105570(A123625(n+1))`
-/

namespace A193381.P9343633059240147966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080483 (n + 1) - A105570 (A123625 (n + 1)).toNat

end

end A193381.P9343633059240147966

/-!
# A193382: G.f. is the real part of the function C(x) that satisfies C(x) = 1 + x/C(I*x).

The programs for A193382, the canonical program `A193382.P1708561053743759439` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193382 has offset 0).

The definition of A193382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 676 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193382.P1708561053743759439

`A046980(n)*A210736(A004524(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A193382

/-- `A046980(n)*A210736(A004524(n))` -/
def P1708561053743759439.Spec : Prop :=
  ∀ n, P1708561053743759439.a n = A193382 n

theorem P1708561053743759439.correct : P1708561053743759439.Spec := by
  intro n
  simp only [A193382]

end A193382

/-! ## A193382.P17151109274649332522

`A046980(n)*A210736(A004526(n))`
-/

namespace A193382.P17151109274649332522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 n * A210736 (A004526 n).toNat

end

end A193382.P17151109274649332522

namespace A193382

/-- `A046980(n)*A210736(A004526(n))` -/
def P17151109274649332522.Spec : Prop :=
  ∀ n, P17151109274649332522.a n = A193382 n

end A193382

/-! ## A193382.P9258934483602313225

`A046980(n)*A210736(A123108(n))`
-/

namespace A193382.P9258934483602313225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 n * A210736 (A123108 n).toNat

end

end A193382.P9258934483602313225

namespace A193382

/-- `A046980(n)*A210736(A123108(n))` -/
def P9258934483602313225.Spec : Prop :=
  ∀ n, P9258934483602313225.a n = A193382 n

end A193382

/-!
# A193383: G.f. is the imaginary part of the function C(x) that satisfies: C(x) = 1 + x/C(I*x).

The programs for A193383, the canonical program `A193383.P14072576358167787959` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193383 has offset 2).

The definition of A193383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193383.P14072576358167787959

`∑[-A193382(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A193383

/-- `∑[-A193382(n+1)]` -/
def P14072576358167787959.Spec : Prop :=
  ∀ n, P14072576358167787959.a n = A193383 (n + 2)

theorem P14072576358167787959.correct : P14072576358167787959.Spec := by
  intro n
  simp only [A193383, Nat.add_sub_cancel]

end A193383

/-! ## A193383.P16491229671455554232

`-∑[A193382(-xor(n, -1))]`
-/

namespace A193383.P16491229671455554232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193382 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193383.P16491229671455554232

namespace A193383

/-- `-∑[A193382(-xor(n, -1))]` -/
def P16491229671455554232.Spec : Prop :=
  ∀ n, P16491229671455554232.a n = A193383 (n + 2)

end A193383

/-! ## A193383.P6060328617012632830

`-∑[A193382(abs(1-4/2-n))]`
-/

namespace A193383.P6060328617012632830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193382 (SequenceMachineLib.roundAway |1 - (4 : ℚ) / 2 - (n : ℚ)|).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193383.P6060328617012632830

namespace A193383

/-- `-∑[A193382(abs(1-4/2-n))]` -/
def P6060328617012632830.Spec : Prop :=
  ∀ n, P6060328617012632830.a n = A193383 (n + 2)

end A193383

/-! ## A193383.P5389161246628919095

`-A051160(∑[n%2+n])`
-/

namespace A193383.P5389161246628919095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A051160 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193383.P5389161246628919095

namespace A193383

/-- `-A051160(∑[n%2+n])` -/
def P5389161246628919095.Spec : Prop :=
  ∀ n, P5389161246628919095.a n = A193383 (n + 2)

end A193383

/-! ## A193383.P14006112129562422423

`-A051160(A194274(n))`
-/

namespace A193383.P14006112129562422423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A051160 (A194274 n).toNat

end

end A193383.P14006112129562422423

namespace A193383

/-- `-A051160(A194274(n))` -/
def P14006112129562422423.Spec : Prop :=
  ∀ n, P14006112129562422423.a n = A193383 (n + 2)

end A193383

/-! ## A193383.P8478678156766920149

`-A051160(A080476(n+1))`
-/

namespace A193383.P8478678156766920149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A051160 (A080476 (n + 1)).toNat

end

end A193383.P8478678156766920149

namespace A193383

/-- `-A051160(A080476(n+1))` -/
def P8478678156766920149.Spec : Prop :=
  ∀ n, P8478678156766920149.a n = A193383 (n + 2)

end A193383

/-! ## A193383.P17175402704664241305

`-A051160(A000982(n)+n)`
-/

namespace A193383.P17175402704664241305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A051160 (A000982 n + (n : ℤ)).toNat

end

end A193383.P17175402704664241305

namespace A193383

/-- `-A051160(A000982(n)+n)` -/
def P17175402704664241305.Spec : Prop :=
  ∀ n, P17175402704664241305.a n = A193383 (n + 2)

end A193383

/-! ## A193383.P9231539937021968340

`-A051160(∑[A052928(n+1)])`
-/

namespace A193383.P9231539937021968340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A051160 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193383.P9231539937021968340

namespace A193383

/-- `-A051160(∑[A052928(n+1)])` -/
def P9231539937021968340.Spec : Prop :=
  ∀ n, P9231539937021968340.a n = A193383 (n + 2)

end A193383

/-! ## A193383.P14778017900581407214

`-A051160(∑[n-(A052928(n)-n)])`
-/

namespace A193383.P14778017900581407214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A052928 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A051160 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193383.P14778017900581407214

namespace A193383

/-- `-A051160(∑[n-(A052928(n)-n)])` -/
def P14778017900581407214.Spec : Prop :=
  ∀ n, P14778017900581407214.a n = A193383 (n + 2)

end A193383

/-!
# A193384: Norm of coefficients in g.f. C(x) that satisfies: C(x) = 1 + x/C(I*x).

The programs for A193384, there is no canonical definition to state claims against.
-/

/-! ## A193384.P7550324261885162397

`A129835(gcd(A129784(n+4), A129826(n)))`
-/

namespace A193384.P7550324261885162397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129835 (Int.gcd (A129784 (n + 4)) (A129826 n))

end

end A193384.P7550324261885162397

/-!
# A193385: Expansion of e.g.f. cosh( x^2/2 )/ (1-x).

The programs for A193385, there is no canonical definition to state claims against.
-/

/-! ## A193385.P12290979100781241837

`(A000266(n)+A130905(n))/2`
-/

namespace A193385.P12290979100781241837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000266 n + A130905 n : ℚ) / 2

end

end A193385.P12290979100781241837

/-! ## A193385.P10199824104760392699

`A014682(A130905(n)+A000266(n))`
-/

namespace A193385.P10199824104760392699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A130905 n + A000266 n).toNat

end

end A193385.P10199824104760392699

/-! ## A193385.P17492375602063828819

`A014682(A130905(n)+A122974(∑[n-1]+3))`
-/

namespace A193385.P17492375602063828819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A130905 n + A122974 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat).toNat

end

end A193385.P17492375602063828819

/-! ## A193385.P1152657875596562438

`A014682(A130905(n)+A088436(n+2)/∑[n+1])`
-/

namespace A193385.P1152657875596562438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A130905 n : ℚ) + (A088436 (n + 2) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))).toNat

end

end A193385.P1152657875596562438

/-! ## A193385.P18146553625605291796

`A014682(A130905(n)+A114320(∑[n]-floor((n/2)²)))`
-/

namespace A193385.P18146553625605291796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A130905 n + A114320 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊((n : ℚ) / 2) ^ 2⌋).toNat).toNat

end

end A193385.P18146553625605291796

/-!
# A193386: Number of even divisors of phi(n).

The programs for A193386, the canonical program `A193386.P2341240866290404182` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193386 has offset 1).

The definition of A193386 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062821, A193453, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A193386.P17759490098134161813

`A183063(A000010(n+1))`
-/

namespace A193386.P17759490098134161813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A000010 (n + 1)).toNat

end

end A193386.P17759490098134161813

namespace A193386

/-- `A183063(A000010(n+1))` -/
def P17759490098134161813.Spec : Prop :=
  ∀ n, P17759490098134161813.a n = A193386 (n + 1)

theorem P17759490098134161813.correct : P17759490098134161813.Spec := by
  intro n
  simp only [A193386, Nat.add_sub_cancel, A193386.P17759490098134161813.a, A193386.P2341240866290404182.a, A000010, A000010.P4673923239450215316.a, A062821, A062821.P4034696018881516945.a, A183063, A183063.P14549643650991336837.a, A193453, A193453.P6993732054623460770.a, A000005, A000005.P16091521709108585461.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A003557, A003557.P6364735403900941810.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193386

/-! ## A193386.P2341240866290404182

`A062821(n+1)-A193453(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A193386

/-- `A062821(n+1)-A193453(n+1)` -/
def P2341240866290404182.Spec : Prop :=
  ∀ n, P2341240866290404182.a n = A193386 (n + 1)

theorem P2341240866290404182.correct : P2341240866290404182.Spec := by
  intro n
  simp only [A193386, Nat.add_sub_cancel]

end A193386

/-! ## A193386.P5033411195422559334

`A183063(Δ[A002088(n)])`
-/

namespace A193386.P5033411195422559334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (f1 (n + 1) - f1 n).toNat

end

end A193386.P5033411195422559334

namespace A193386

/-- `A183063(Δ[A002088(n)])` -/
def P5033411195422559334.Spec : Prop :=
  ∀ n, P5033411195422559334.a n = A193386 (n + 1)

end A193386

/-! ## A193386.P454956360794913743

`A183063(Δ[A005728(n)])`
-/

namespace A193386.P454956360794913743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (f1 (n + 1) - f1 n).toNat

end

end A193386.P454956360794913743

namespace A193386

/-- `A183063(Δ[A005728(n)])` -/
def P454956360794913743.Spec : Prop :=
  ∀ n, P454956360794913743.a n = A193386 (n + 1)

end A193386

/-! ## A193386.P9448730008838422491

`A183063(A349137(Δ[n²]))`
-/

namespace A193386.P9448730008838422491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A193386.P9448730008838422491

namespace A193386

/-- `A183063(A349137(Δ[n²]))` -/
def P9448730008838422491.Spec : Prop :=
  ∀ n, P9448730008838422491.a n = A193386 (n + 1)

end A193386

/-! ## A193386.P9011739498452224220

`A183063(sqrt(A127473(n+1)))`
-/

namespace A193386.P9011739498452224220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A193386.P9011739498452224220

namespace A193386

/-- `A183063(sqrt(A127473(n+1)))` -/
def P9011739498452224220.Spec : Prop :=
  ∀ n, P9011739498452224220.a n = A193386 (n + 1)

end A193386

/-! ## A193386.P7660905615180865552

`A183063(Δ[A100449(n)/4])`
-/

namespace A193386.P7660905615180865552
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A193386.P7660905615180865552

namespace A193386

/-- `A183063(Δ[A100449(n)/4])` -/
def P7660905615180865552.Spec : Prop :=
  ∀ n, P7660905615180865552.a n = A193386 (n + 1)

end A193386

/-! ## A193386.P11798726585579905711

`A183063(n-A219428(n+1))`
-/

namespace A193386.P11798726585579905711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A193386.P11798726585579905711

namespace A193386

/-- `A183063(n-A219428(n+1))` -/
def P11798726585579905711.Spec : Prop :=
  ∀ n, P11798726585579905711.a n = A193386 (n + 1)

end A193386

/-! ## A193386.P8047987732346577152

`∑{d}[A000010(n+1), A059841(#)]`
-/

namespace A193386.P8047987732346577152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059841 d

end

end A193386.P8047987732346577152

namespace A193386

/-- `∑{d}[A000010(n+1), A059841(#)]` -/
def P8047987732346577152.Spec : Prop :=
  ∀ n, P8047987732346577152.a n = A193386 (n + 1)

end A193386

/-! ## A193386.P14967945283344010950

`∑{d}[A000010(n+1), A056594(#)²]`
-/

namespace A193386.P14967945283344010950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056594 d ^ 2

end

end A193386.P14967945283344010950

namespace A193386

/-- `∑{d}[A000010(n+1), A056594(#)²]` -/
def P14967945283344010950.Spec : Prop :=
  ∀ n, P14967945283344010950.a n = A193386 (n + 1)

end A193386

/-! ## A193386.P3373194893123787401

`1-A325937(2*A000010(n+1))`
-/

namespace A193386.P3373194893123787401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A325937 (2 * A000010 (n + 1)).toNat

end

end A193386.P3373194893123787401

namespace A193386

/-- `1-A325937(2*A000010(n+1))` -/
def P3373194893123787401.Spec : Prop :=
  ∀ n, P3373194893123787401.a n = A193386 (n + 1)

end A193386

/-! ## A193386.P6377814839886878708

`A183063(1-A051953(n+1)+n)`
-/

namespace A193386.P6377814839886878708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A193386.P6377814839886878708

namespace A193386

/-- `A183063(1-A051953(n+1)+n)` -/
def P6377814839886878708.Spec : Prop :=
  ∀ n, P6377814839886878708.a n = A193386 (n + 1)

end A193386

/-! ## A193386.P3248725801520220749

`A053574(n+1)*A193453(n+1)`
-/

namespace A193386.P3248725801520220749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (n + 1) * A193453 (n + 1)

end

end A193386.P3248725801520220749

namespace A193386

/-- `A053574(n+1)*A193453(n+1)` -/
def P3248725801520220749.Spec : Prop :=
  ∀ n, P3248725801520220749.a n = A193386 (n + 1)

end A193386

/-! ## A193386.P10914977758091053127

`∑{d}[A000010(n+1), A000035(#+1)]`
-/

namespace A193386.P10914977758091053127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 (d + 1)

end

end A193386.P10914977758091053127

namespace A193386

/-- `∑{d}[A000010(n+1), A000035(#+1)]` -/
def P10914977758091053127.Spec : Prop :=
  ∀ n, P10914977758091053127.a n = A193386 (n + 1)

end A193386

/-! ## A193386.P6921588434215790002

`∑{d}[A000010(n+1), 2-A000034(#)]`
-/

namespace A193386.P6921588434215790002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (2 - A000034 d)

end

end A193386.P6921588434215790002

namespace A193386

/-- `∑{d}[A000010(n+1), 2-A000034(#)]` -/
def P6921588434215790002.Spec : Prop :=
  ∀ n, P6921588434215790002.a n = A193386 (n + 1)

end A193386

/-! ## A193386.P2095599010259462353

`∏{e}[A160413(Δ[A005728(n)]), #+1]%(n+1)`
-/

namespace A193386.P2095599010259462353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)) % (n + 1)

end

end A193386.P2095599010259462353

namespace A193386

/-- `∏{e}[A160413(Δ[A005728(n)]), #+1]%(n+1)` -/
def P2095599010259462353.Spec : Prop :=
  ∀ n, (P2095599010259462353.a n : ℤ) = A193386 (n + 1)

end A193386

/-! ## A193386.P112518845896441216

`A183063(A000027(n+1)-(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n))`
-/

namespace A193386.P112518845896441216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (SequenceMachineLib.roundAway ((A000027 (n + 1) : ℚ) - (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)))).toNat

end

end A193386.P112518845896441216

namespace A193386

/-- `A183063(A000027(n+1)-(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n))` -/
def P112518845896441216.Spec : Prop :=
  ∀ n, P112518845896441216.a n = A193386 (n + 1)

end A193386

/-! ## A193386.P6700457160925432753

`A000005(A000010(n+1))-A193453(n+1)`
-/

namespace A193386.P6700457160925432753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1)).toNat - A193453 (n + 1)

end

end A193386.P6700457160925432753

namespace A193386

/-- `A000005(A000010(n+1))-A193453(n+1)` -/
def P6700457160925432753.Spec : Prop :=
  ∀ n, P6700457160925432753.a n = A193386 (n + 1)

end A193386

/-! ## A193386.P10782595784688370286

`A000005(A053575(n+1))*A053574(n+1)`
-/

namespace A193386.P10782595784688370286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053575 (n + 1)).toNat * A053574 (n + 1)

end

end A193386.P10782595784688370286

namespace A193386

/-- `A000005(A053575(n+1))*A053574(n+1)` -/
def P10782595784688370286.Spec : Prop :=
  ∀ n, P10782595784688370286.a n = A193386 (n + 1)

end A193386

/-! ## A193386.P10217054945770627166

`A112329(2*A000010(n+1))`
-/

namespace A193386.P10217054945770627166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (2 * A000010 (n + 1)).toNat

end

end A193386.P10217054945770627166

namespace A193386

/-- `A112329(2*A000010(n+1))` -/
def P10217054945770627166.Spec : Prop :=
  ∀ n, P10217054945770627166.a n = A193386 (n + 1)

end A193386

/-!
# A193387: Triangle read by rows: T(n,k) (n>=1, 1 <= k <= n) = number of n-element unlabeled interval posets of height k.

The programs for A193387, there is no canonical definition to state claims against.
-/

/-! ## A193387.P12609911247942895644

`A010894(A003401(n+1))+A008277(n+1)`
-/

namespace A193387.P12609911247942895644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 ((A003401 (n + 1)).toNat + 21) + A008277 (n + 1)

end

end A193387.P12609911247942895644

/-! ## A193387.P730461393001848862

`A069208(A008277(n+1))%A034884(3*n+1)`
-/

namespace A193387.P730461393001848862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069208 (A008277 (n + 1)).toNat) (A034884 (3 * n + 1))

end

end A193387.P730461393001848862

/-! ## A193387.P8032982337307743252

`A069208(A008277(n+1)%A096788(3*(n+1)))`
-/

namespace A193387.P8032982337307743252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069208 (Int.tmod (A008277 (n + 1)) (A096788 (3 * (n + 1)))).toNat

end

end A193387.P8032982337307743252

/-! ## A193387.P16497020594237721451

`A069208(A008277(n+1))^A014963(A133263(n))`
-/

namespace A193387.P16497020594237721451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069208 (A008277 (n + 1)).toNat : ℚ) ^ (A014963 (A133263 n).toNat : ℤ)

end

end A193387.P16497020594237721451

/-! ## A193387.P5508179471561857863

`A069208(A008277(n+1))^A064094(A064216(n+1))`
-/

namespace A193387.P5508179471561857863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069208 (A008277 (n + 1)).toNat : ℚ) ^ (A064094 (A064216 (n + 1)).toNat : ℤ)

end

end A193387.P5508179471561857863

/-!
# A193388: Sum of even divisors of phi(n).

The programs for A193388, the canonical program `A193388.P4473864990657091494` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193388 has offset 1).

The definition of A193388 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062402, A193454, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A193388.P9325988982535659257

`A146076(A000010(n+1))`
-/

namespace A193388.P9325988982535659257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A000010 (n + 1)).toNat

end

end A193388.P9325988982535659257

namespace A193388

/-- `A146076(A000010(n+1))` -/
def P9325988982535659257.Spec : Prop :=
  ∀ n, P9325988982535659257.a n = A193388 (n + 1)

end A193388

/-! ## A193388.P4473864990657091494

`A062402(n+1)-A193454(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A193388

/-- `A062402(n+1)-A193454(n+1)` -/
def P4473864990657091494.Spec : Prop :=
  ∀ n, P4473864990657091494.a n = A193388 (n + 1)

theorem P4473864990657091494.correct : P4473864990657091494.Spec := by
  intro n
  simp only [A193388, Nat.add_sub_cancel]

end A193388

/-! ## A193388.P12893548007816615076

`A146076((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A193388.P12893548007816615076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A193388.P12893548007816615076

namespace A193388

/-- `A146076((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P12893548007816615076.Spec : Prop :=
  ∀ n, P12893548007816615076.a n = A193388 (n + 1)

end A193388

/-! ## A193388.P18243722296982123733

`A146076(Δ[A002088(n)])`
-/

namespace A193388.P18243722296982123733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (f1 (n + 1) - f1 n).toNat

end

end A193388.P18243722296982123733

namespace A193388

/-- `A146076(Δ[A002088(n)])` -/
def P18243722296982123733.Spec : Prop :=
  ∀ n, P18243722296982123733.a n = A193388 (n + 1)

end A193388

/-! ## A193388.P4501888230167207585

`A146076(Δ[A005728(n)])`
-/

namespace A193388.P4501888230167207585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (f1 (n + 1) - f1 n).toNat

end

end A193388.P4501888230167207585

namespace A193388

/-- `A146076(Δ[A005728(n)])` -/
def P4501888230167207585.Spec : Prop :=
  ∀ n, P4501888230167207585.a n = A193388 (n + 1)

end A193388

/-! ## A193388.P12684695125110982754

`A146076(A349137(Δ[n²]))`
-/

namespace A193388.P12684695125110982754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A193388.P12684695125110982754

namespace A193388

/-- `A146076(A349137(Δ[n²]))` -/
def P12684695125110982754.Spec : Prop :=
  ∀ n, P12684695125110982754.a n = A193388 (n + 1)

end A193388

/-! ## A193388.P10944947013337580327

`A146076(A109606(n+1)+1)`
-/

namespace A193388.P10944947013337580327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A109606 (n + 1) + 1).toNat

end

end A193388.P10944947013337580327

namespace A193388

/-- `A146076(A109606(n+1)+1)` -/
def P10944947013337580327.Spec : Prop :=
  ∀ n, P10944947013337580327.a n = A193388 (n + 1)

end A193388

/-! ## A193388.P16540243198223067228

`A146076(A039649(n+1)-1)`
-/

namespace A193388.P16540243198223067228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A039649 (n + 1) - 1).toNat

end

end A193388.P16540243198223067228

namespace A193388

/-- `A146076(A039649(n+1)-1)` -/
def P16540243198223067228.Spec : Prop :=
  ∀ n, P16540243198223067228.a n = A193388 (n + 1)

end A193388

/-! ## A193388.P9404935451794499146

`A146076(n-A219428(n+1))`
-/

namespace A193388.P9404935451794499146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A193388.P9404935451794499146

namespace A193388

/-- `A146076(n-A219428(n+1))` -/
def P9404935451794499146.Spec : Prop :=
  ∀ n, P9404935451794499146.a n = A193388 (n + 1)

end A193388

/-! ## A193388.P2002529696195774420

`2*A245092(A000010(n+1)-1)`
-/

namespace A193388.P2002529696195774420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245092 (A000010 (n + 1) - 1).toNat

end

end A193388.P2002529696195774420

namespace A193388

/-- `2*A245092(A000010(n+1)-1)` -/
def P2002529696195774420.Spec : Prop :=
  ∀ n, P2002529696195774420.a n = A193388 (n + 1)

end A193388

/-! ## A193388.P3872968142995694533

`2*A245092(A039649(n+1)-2)`
-/

namespace A193388.P3872968142995694533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245092 (A039649 (n + 1) - 2).toNat

end

end A193388.P3872968142995694533

namespace A193388

/-- `2*A245092(A039649(n+1)-2)` -/
def P3872968142995694533.Spec : Prop :=
  ∀ n, P3872968142995694533.a n = A193388 (n + 1)

end A193388

/-! ## A193388.P2613553548307870736

`A146076(A319998(2*(n+1))/2)`
-/

namespace A193388.P2613553548307870736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (SequenceMachineLib.roundAway ((A319998 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A193388.P2613553548307870736

namespace A193388

/-- `A146076(A319998(2*(n+1))/2)` -/
def P2613553548307870736.Spec : Prop :=
  ∀ n, P2613553548307870736.a n = A193388 (n + 1)

end A193388

/-! ## A193388.P229172331776643190

`A146076(1-A051953(n+1)+n)`
-/

namespace A193388.P229172331776643190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A193388.P229172331776643190

namespace A193388

/-- `A146076(1-A051953(n+1)+n)` -/
def P229172331776643190.Spec : Prop :=
  ∀ n, P229172331776643190.a n = A193388 (n + 1)

end A193388

/-! ## A193388.P1898611934381539709

`∑{d}[A000010(n+1), #-A193356(#)]`
-/

namespace A193388.P1898611934381539709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A193356 d)

end

end A193388.P1898611934381539709

namespace A193388

/-- `∑{d}[A000010(n+1), #-A193356(#)]` -/
def P1898611934381539709.Spec : Prop :=
  ∀ n, P1898611934381539709.a n = A193388 (n + 1)

end A193388

/-! ## A193388.P5558286112233142737

`A146076((n+1)/∏{p}[n+1, #]*A173557(n+1))`
-/

namespace A193388.P5558286112233142737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ))).toNat

end

end A193388.P5558286112233142737

namespace A193388

/-- `A146076((n+1)/∏{p}[n+1, #]*A173557(n+1))` -/
def P5558286112233142737.Spec : Prop :=
  ∀ n, P5558286112233142737.a n = A193388 (n + 1)

end A193388

/-! ## A193388.P11354520858485247795

`A146076(A002088(n+1)-A002088(n))`
-/

namespace A193388.P11354520858485247795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A002088 (n + 1) - A002088 n).toNat

end

end A193388.P11354520858485247795

namespace A193388

/-- `A146076(A002088(n+1)-A002088(n))` -/
def P11354520858485247795.Spec : Prop :=
  ∀ n, P11354520858485247795.a n = A193388 (n + 1)

end A193388

/-! ## A193388.P5438781147929411933

`A146076(A005728(n+1)-A005728(n))`
-/

namespace A193388.P5438781147929411933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A005728 (n + 1) - A005728 n).toNat

end

end A193388.P5438781147929411933

namespace A193388

/-- `A146076(A005728(n+1)-A005728(n))` -/
def P5438781147929411933.Spec : Prop :=
  ∀ n, P5438781147929411933.a n = A193388 (n + 1)

end A193388

/-! ## A193388.P12706991435276702467

`A146076(A048865(n+1)+A048864(n+1))`
-/

namespace A193388.P12706991435276702467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A048865 (n + 1) + A048864 (n + 1)).toNat

end

end A193388.P12706991435276702467

namespace A193388

/-- `A146076(A048865(n+1)+A048864(n+1))` -/
def P12706991435276702467.Spec : Prop :=
  ∀ n, P12706991435276702467.a n = A193388 (n + 1)

end A193388

/-! ## A193388.P204721507851402610

`A146076(A285709(n+1)+A285699(n+1))`
-/

namespace A193388.P204721507851402610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A285709 (n + 1) + A285699 (n + 1)).toNat

end

end A193388.P204721507851402610

namespace A193388

/-- `A146076(A285709(n+1)+A285699(n+1))` -/
def P204721507851402610.Spec : Prop :=
  ∀ n, P204721507851402610.a n = A193388 (n + 1)

end A193388

/-! ## A193388.P12548720932527401723

`A146076(A300725(n+1)+A300724(n+1))`
-/

namespace A193388.P12548720932527401723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A300725 (n + 1) + A300724 (n + 1)).toNat

end

end A193388.P12548720932527401723

namespace A193388

/-- `A146076(A300725(n+1)+A300724(n+1))` -/
def P12548720932527401723.Spec : Prop :=
  ∀ n, P12548720932527401723.a n = A193388 (n + 1)

end A193388

/-!
# A193390: The hyper-Wiener index of a benzenoid consisting of a straight-line chain of n hexagons (s=2; see the Gutman et al. reference).

The programs for A193390, the canonical program `A193390.P1341969190939507703` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193390 has offset 1).

The definition of A193390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193390.P1341969190939507703

`(8*(n+1)^4+32*(n+1)^3+46*(n+1)²+37*(n+1))/3+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193390

/-- `(8*(n+1)^4+32*(n+1)^3+46*(n+1)²+37*(n+1))/3+1` -/
def P1341969190939507703.Spec : Prop :=
  ∀ n, P1341969190939507703.a n = (A193390 (n + 1) : ℚ)

end A193390

/-!
# A193391: Wiener index of a benzenoid consisting of a spiral chain of n hexagons (s=1; see the Gutman et al. reference).

The programs for A193391, the canonical program `A193391.P9685142657017578383` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193391 has offset 1).

The definition of A193391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193391.P9685142657017578383

`2*(n+1)*(4*(n+1)*(n+10)-13)/3+9`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193391

/-- `2*(n+1)*(4*(n+1)*(n+10)-13)/3+9` -/
def P9685142657017578383.Spec : Prop :=
  ∀ n, P9685142657017578383.a n = (A193391 (n + 1) : ℚ)

end A193391

/-!
# A193392: Hyper-Wiener index of a benzenoid consisting of a spiral chain of n hexagons (s=1; see the Gutman et al. reference).

The programs for A193392, the canonical program `A193392.P4280853352974531771` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193392 has offset 1).

The definition of A193392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193392.P4280853352974531771

`(n+1)*(2*(n+1)*((n+1)*(n+15)+77)-169)/3+37`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193392

/-- `(n+1)*(2*(n+1)*((n+1)*(n+15)+77)-169)/3+37` -/
def P4280853352974531771.Spec : Prop :=
  ∀ n, P4280853352974531771.a n = (A193392 (n + 1) : ℚ)

end A193392

/-!
# A193393: Wiener index of a benzenoid consisting of a zig-zag chain of n hexagons (s=13; see the Gutman et al. reference).

The programs for A193393, the canonical program `A193393.P15876443005112375142` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193393 has offset 1).

The definition of A193393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193393.P15876443005112375142

`(16*(n+1)^3+24*(n+1)²+62*(n+1))/3-7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193393

/-- `(16*(n+1)^3+24*(n+1)²+62*(n+1))/3-7` -/
def P15876443005112375142.Spec : Prop :=
  ∀ n, P15876443005112375142.a n = (A193393 (n + 1) : ℚ)

end A193393

/-! ## A193393.P7268132241016506392

`Δ[A187756(n+1)+8*n²]`
-/

namespace A193393.P7268132241016506392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187756 (n + 1) + (8 * n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193393.P7268132241016506392

namespace A193393

/-- `Δ[A187756(n+1)+8*n²]` -/
def P7268132241016506392.Spec : Prop :=
  ∀ n, P7268132241016506392.a n = A193393 (n + 1)

end A193393

/-! ## A193393.P5204173056447666152

`Δ[8*n²+Δ[A154322(2*n)]]`
-/

namespace A193393.P5204173056447666152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154322 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 2 : ℤ) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193393.P5204173056447666152

namespace A193393

/-- `Δ[8*n²+Δ[A154322(2*n)]]` -/
def P5204173056447666152.Spec : Prop :=
  ∀ n, P5204173056447666152.a n = A193393 (n + 1)

end A193393

/-! ## A193393.P10213909451915072242

`∑[A241848(Δ[A132209(n)])]`
-/

namespace A193393.P10213909451915072242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132209 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241848 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193393.P10213909451915072242

namespace A193393

/-- `∑[A241848(Δ[A132209(n)])]` -/
def P10213909451915072242.Spec : Prop :=
  ∀ n, P10213909451915072242.a n = A193393 (n + 1)

end A193393

/-! ## A193393.P4795167103405119211

`∑[A241848((n+1)*(A057427(n)+3))]`
-/

namespace A193393.P4795167103405119211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241848 ((n + 1 : ℤ) * (A057427 n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193393.P4795167103405119211

namespace A193393

/-- `∑[A241848((n+1)*(A057427(n)+3))]` -/
def P4795167103405119211.Spec : Prop :=
  ∀ n, P4795167103405119211.a n = A193393 (n + 1)

end A193393

/-!
# A193394: Hyper-Wiener index of a benzenoid consisting of a zig-zag chain of n hexagons (s=13; see the Gutman et al. reference).

The programs for A193394, the canonical program `A193394.P1247016197226480321` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193394 has offset 1).

The definition of A193394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193394.P1247016197226480321

`(8*(n+1)²+24*(n+1)+28)*(n+1)²/3+49*(n+1)-27`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193394

/-- `(8*(n+1)²+24*(n+1)+28)*(n+1)²/3+49*(n+1)-27` -/
def P1247016197226480321.Spec : Prop :=
  ∀ n, P1247016197226480321.a n = (A193394 (n + 1) : ℚ)

end A193394

/-!
# A193395: Wiener index of a benzenoid consisting of a double-step zig-zag chain of n hexagons (n >= 2, s = 2123; see the Gutman et al. reference).

The programs for A193395, the canonical program `A193395.P4594055360825143331` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193395 has offset 2).

The definition of A193395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193395.P4594055360825143331

`(16*(n+2)^3+24*(n+2)²+74*(n+2)+6*(-1)^(n+2))/3-17`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193395

/-- `(16*(n+2)^3+24*(n+2)²+74*(n+2)+6*(-1)^(n+2))/3-17` -/
def P4594055360825143331.Spec : Prop :=
  ∀ n, P4594055360825143331.a n = (A193395 (n + 2) : ℚ)

end A193395

/-!
# A193396: Hyper-Wiener index of a benzenoid consisting of a double-step zig-zag chain of n hexagons (n >= 2, s = 2123; see the Gutman et al. reference).

The programs for A193396, the canonical program `A193396.P2353911455353502255` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193396 has offset 2).

The definition of A193396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193396.P2353911455353502255

`(8*(n+2)^4+24*(n+2)^3+28*(n+2)²+213*(n+2)+33*(-1)^(n+2)-246)/3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193396

/-- `(8*(n+2)^4+24*(n+2)^3+28*(n+2)²+213*(n+2)+33*(-1)^(n+2)-246)/3` -/
def P2353911455353502255.Spec : Prop :=
  ∀ n, P2353911455353502255.a n = (A193396 (n + 2) : ℚ)

end A193396

/-!
# A193397: Wiener index of a benzenoid consisting of a double-step spiral chain of n hexagons (n>=2, s=21; see the Gutman et al. reference).

The programs for A193397, the canonical program `A193397.P13028599730476107757` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193397 has offset 2).

The definition of A193397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193397.P13028599730476107757

`4*(n+2)^3+20*(n+2)²-12*(n+2)+2*(-1)^(n+2)*n+21`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193397

/-- `4*(n+2)^3+20*(n+2)²-12*(n+2)+2*(-1)^(n+2)*n+21` -/
def P13028599730476107757.Spec : Prop :=
  ∀ n, P13028599730476107757.a n = A193397 (n + 2)

theorem P13028599730476107757.correct : P13028599730476107757.Spec := by
  intro n
  simp only [A193397, Nat.add_sub_cancel]

end A193397

/-!
# A193399: Wiener index of a benzenoid consisting of a chain of n hexagons characterized by the encoding s = 1133 (see the Gutman et al. reference, Sec. 5).

The programs for A193399, the canonical program `A193399.P14515360140099008722` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193399 has offset 1).

The definition of A193399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193399.P14515360140099008722

`4*(n+1)^3+16*(n+1)²+8*(n+1)+2*(-1)^(n+1)*(n-1)-3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193399

/-- `4*(n+1)^3+16*(n+1)²+8*(n+1)+2*(-1)^(n+1)*(n-1)-3` -/
def P14515360140099008722.Spec : Prop :=
  ∀ n, P14515360140099008722.a n = A193399 (n + 1)

theorem P14515360140099008722.correct : P14515360140099008722.Spec := by
  intro n
  simp only [A193399, Nat.add_sub_cancel]

end A193399

