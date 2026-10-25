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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B007.C000
import Seq.B007.C001
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
# A344300: Expansion of Sum_{k>=1} (-1)^(k+1) * k^2 * x^(k^2) / (1 - x^(k^2)).

The programs for A344300, the canonical program `A344300.P14345726006822671542` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344300 has offset 1).

The definition of A344300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344300.P14345726006822671542

`A321543(∏{p}[n+1, #^val(n+1, #²)])`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A344300

/-- `A321543(∏{p}[n+1, #^val(n+1, #²)])` -/
def P14345726006822671542.Spec : Prop :=
  ∀ n, P14345726006822671542.a n = A344300 (n + 1)

theorem P14345726006822671542.correct : P14345726006822671542.Spec := by
  intro n
  simp only [A344300, Nat.add_sub_cancel]

end A344300

/-! ## A344300.P7219620178400901940

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], A162395(#)]`
-/

namespace A344300.P7219620178400901940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162395 d

end

end A344300.P7219620178400901940

namespace A344300

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)], A162395(#)]` -/
def P7219620178400901940.Spec : Prop :=
  ∀ n, P7219620178400901940.a n = A344300 (n + 1)

end A344300

/-! ## A344300.P1511695552569234539

`A321543(A000188(n+1))`
-/

namespace A344300.P1511695552569234539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321543 (A000188 (n + 1)).toNat

end

end A344300.P1511695552569234539

namespace A344300

/-- `A321543(A000188(n+1))` -/
def P1511695552569234539.Spec : Prop :=
  ∀ n, P1511695552569234539.a n = A344300 (n + 1)

end A344300

/-! ## A344300.P12012462590883608177

`A321543(sqrt(A008833(n+1)))`
-/

namespace A344300.P12012462590883608177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321543 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

end

end A344300.P12012462590883608177

namespace A344300

/-- `A321543(sqrt(A008833(n+1)))` -/
def P12012462590883608177.Spec : Prop :=
  ∀ n, P12012462590883608177.a n = A344300 (n + 1)

end A344300

/-! ## A344300.P9390791378730181402

`A321543(A057918(n+1)+1)`
-/

namespace A344300.P9390791378730181402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321543 (A057918 (n + 1) + 1).toNat

end

end A344300.P9390791378730181402

namespace A344300

/-- `A321543(A057918(n+1)+1)` -/
def P9390791378730181402.Spec : Prop :=
  ∀ n, P9390791378730181402.a n = A344300 (n + 1)

end A344300

/-! ## A344300.P18263591664471092296

`∑{d}[A000188(n+1), A162395(#)]`
-/

namespace A344300.P18263591664471092296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A162395 d

end

end A344300.P18263591664471092296

namespace A344300

/-- `∑{d}[A000188(n+1), A162395(#)]` -/
def P18263591664471092296.Spec : Prop :=
  ∀ n, P18263591664471092296.a n = A344300 (n + 1)

end A344300

/-! ## A344300.P12078519534271652413

`∑{d}[A000188(n+1), #*A181983(#)]`
-/

namespace A344300.P12078519534271652413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A181983 d

end

end A344300.P12078519534271652413

namespace A344300

/-- `∑{d}[A000188(n+1), #*A181983(#)]` -/
def P12078519534271652413.Spec : Prop :=
  ∀ n, P12078519534271652413.a n = A344300 (n + 1)

end A344300

/-! ## A344300.P3658231288737618576

`2*A360159(n+1)-A035316(n+1)`
-/

namespace A344300.P3658231288737618576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A360159 (n + 1) - A035316 (n + 1)

end

end A344300.P3658231288737618576

namespace A344300

/-- `2*A360159(n+1)-A035316(n+1)` -/
def P3658231288737618576.Spec : Prop :=
  ∀ n, P3658231288737618576.a n = A344300 (n + 1)

end A344300

/-! ## A344300.P10744536748445793414

`∑{d}[n+1, #*A258998(#)]`
-/

namespace A344300.P10744536748445793414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A258998 d

end

end A344300.P10744536748445793414

namespace A344300

/-- `∑{d}[n+1, #*A258998(#)]` -/
def P10744536748445793414.Spec : Prop :=
  ∀ n, P10744536748445793414.a n = A344300 (n + 1)

end A344300

/-! ## A344300.P3954604204801333780

`∑{d}[A000188(n+1), A181983(#²)]`
-/

namespace A344300.P3954604204801333780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A181983 (d ^ 2)

end

end A344300.P3954604204801333780

namespace A344300

/-- `∑{d}[A000188(n+1), A181983(#²)]` -/
def P3954604204801333780.Spec : Prop :=
  ∀ n, P3954604204801333780.a n = A344300 (n + 1)

end A344300

/-!
# A344301: Minimum number of cells in an n X n grid that need to be painted so that each unpainted cell is orthogonally adjacent to exactly one painted cell.

The programs for A344301, there is no canonical definition to state claims against.
-/

/-! ## A344301.P850757001229773278

`lt[A005100(A006704(n+1)), A020639(n+1)]`
-/

namespace A344301.P850757001229773278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (A006704 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344301.P850757001229773278

/-! ## A344301.P3723799145460515896

`lt[A034042(A006704(n+1)), A006530(n+1)]`
-/

namespace A344301.P3723799145460515896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034042 (A006704 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344301.P3723799145460515896

/-! ## A344301.P12695551724936878289

`lt[A006093(A006704(n+1)), A223490(n+1)]`
-/

namespace A344301.P12695551724936878289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A006704 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344301.P12695551724936878289

/-! ## A344301.P11020279046682995522

`record[gcd(A276347(n+1), A276372(n+1))]`
-/

namespace A344301.P11020279046682995522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276347 (n + 1)) (A276372 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344301.P11020279046682995522

/-! ## A344301.P10855068814842056508

`eq[A236939(A003188(n)), A305831(n+1)]`
-/

namespace A344301.P10855068814842056508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236939 ((A003188 n).toNat + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344301.P10855068814842056508

/-!
# A344302: Number of cyclic subgroups of the group (C_n)^6, where C_n is the cyclic group of order n.

The programs for A344302, the canonical program `A344302.P10940073991271623497` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344302 has offset 1).

The definition of A344302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344302.P10940073991271623497

`∑{d}[n+1, A160895(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A344302

/-- `∑{d}[n+1, A160895(#)]` -/
def P10940073991271623497.Spec : Prop :=
  ∀ n, P10940073991271623497.a n = A344302 (n + 1)

theorem P10940073991271623497.correct : P10940073991271623497.Spec := by
  intro n
  simp only [A344302, Nat.add_sub_cancel]

end A344302

/-!
# A344303: Number of cyclic subgroups of the group (C_n)^7, where C_n is the cyclic group of order n.

The programs for A344303, the canonical program `A344303.P10862142479984927964` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344303 has offset 1).

The definition of A344303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344303.P10862142479984927964

`∑{d}[n+1, A160897(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A344303

/-- `∑{d}[n+1, A160897(#)]` -/
def P10862142479984927964.Spec : Prop :=
  ∀ n, P10862142479984927964.a n = A344303 (n + 1)

theorem P10862142479984927964.correct : P10862142479984927964.Spec := by
  intro n
  simp only [A344303, Nat.add_sub_cancel]

end A344303

/-!
# A344304: Number of cyclic subgroups of the group (C_n)^8, where C_n is the cyclic group of order n.

The programs for A344304, the canonical program `A344304.P9807031551801676204` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344304 has offset 1).

The definition of A344304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344304.P9807031551801676204

`∑{d}[n+1, A160908(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A344304

/-- `∑{d}[n+1, A160908(#)]` -/
def P9807031551801676204.Spec : Prop :=
  ∀ n, P9807031551801676204.a n = A344304 (n + 1)

theorem P9807031551801676204.correct : P9807031551801676204.Spec := by
  intro n
  simp only [A344304, Nat.add_sub_cancel]

end A344304

/-!
# A344305: Number of cyclic subgroups of the group (C_n)^9, where C_n is the cyclic group of order n.

The programs for A344305, the canonical program `A344305.P3366532404829955855` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344305 has offset 1).

The definition of A344305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344305.P3366532404829955855

`∑{d}[n+1, A160953(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A344305

/-- `∑{d}[n+1, A160953(#)]` -/
def P3366532404829955855.Spec : Prop :=
  ∀ n, P3366532404829955855.a n = A344305 (n + 1)

theorem P3366532404829955855.correct : P3366532404829955855.Spec := by
  intro n
  simp only [A344305, Nat.add_sub_cancel]

end A344305

/-!
# A344306: Number of cyclic subgroups of the group (C_n)^10, where C_n is the cyclic group of order n.

The programs for A344306, the canonical program `A344306.P17542131722112190094` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344306 has offset 1).

The definition of A344306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344306.P17542131722112190094

`∑{d}[n+1, A160957(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A344306

/-- `∑{d}[n+1, A160957(#)]` -/
def P17542131722112190094.Spec : Prop :=
  ∀ n, P17542131722112190094.a n = A344306 (n + 1)

theorem P17542131722112190094.correct : P17542131722112190094.Spec := by
  intro n
  simp only [A344306, Nat.add_sub_cancel]

end A344306

/-!
# A344307: a(n) is the smallest number not yet in the sequence that satisfies the following condition: if p is a prime factor of a(n), the next p terms are coprime to p.

The programs for A344307, there is no canonical definition to state claims against.
-/

/-! ## A344307.P16590224710738543545

`A084937(lt[A293933(n), A083754(2*n+1)])`
-/

namespace A344307.P16590224710738543545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083754 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344307.P16590224710738543545

/-! ## A344307.P14685212134621527608

`A084937(A185284(2*n+3)+n+1)`
-/

namespace A344307.P14685212134621527608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (A185284 (2 * n + 3) + (n + 1 : ℤ)).toNat

end

end A344307.P14685212134621527608

/-! ## A344307.P17122104355393151180

`A185284(A027581(n))+A084937(n+1)`
-/

namespace A344307.P17122104355393151180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A027581 n).toNat + A084937 (n + 1)

end

end A344307.P17122104355393151180

/-! ## A344307.P15901968815438627887

`A185284(A330141(n))+A084937(n+1)`
-/

namespace A344307.P15901968815438627887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A330141 n).toNat + A084937 (n + 1)

end

end A344307.P15901968815438627887

/-! ## A344307.P6532841919944140569

`abs(A084937(n+1)-A210716(A185036(n)))`
-/

namespace A344307.P6532841919944140569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084937 (n + 1) - A210716 (A185036 n).toNat|

end

end A344307.P6532841919944140569

/-!
# A344308: Numbers k such that A205791(k) = k+1.

The programs for A344308, there is no canonical definition to state claims against.
-/

/-! ## A344308.P7457822777211682563

`record[A052274(n+1)]`
-/

namespace A344308.P7457822777211682563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344308.P7457822777211682563

/-! ## A344308.P320424766016744572

`record[A205791(n+1)-1]`
-/

namespace A344308.P320424766016744572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205791 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344308.P320424766016744572

/-! ## A344308.P5459654508446745347

`record[1-A257303(n+1)+n]`
-/

namespace A344308.P5459654508446745347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A257303 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344308.P5459654508446745347

/-! ## A344308.P1403423127332206856

`record[gcd(∏{p}[n+1, #], A288100(n+1))]`
-/

namespace A344308.P1403423127332206856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) (A288100 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344308.P1403423127332206856

/-! ## A344308.P963385834029053083

`lt[A000027(n+1), A205791(n+1)]+1`
-/

namespace A344308.P963385834029053083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205791 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A344308.P963385834029053083

/-! ## A344308.P7561474295384734796

`A007947(lt[n+1, A205791(n+1)]+1)`
-/

namespace A344308.P7561474295384734796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A344308.P7561474295384734796

/-!
# A344309: a(n) is the number of eigensequences (including eigenvalues, where they exist) of the Fibonacci recurrence in Zp where p is prime(n).

The programs for A344309, there is no canonical definition to state claims against.
-/

/-! ## A344309.P8256657709114348354

`A116514(n+1)+A080891(A000040(n+1))`
-/

namespace A344309.P8256657709114348354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116514 (n + 1) + A080891 (A000040 (n + 1)).toNat

end

end A344309.P8256657709114348354

/-! ## A344309.P1819249821613838579

`A116514(n+1)+A100047(A100484(n+1))`
-/

namespace A344309.P1819249821613838579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116514 (n + 1) + A100047 (A100484 (n + 1)).toNat

end

end A344309.P1819249821613838579

/-! ## A344309.P10051597892848425881

`A000040(n+1)%A286335(A000124(A001602(n+1)))`
-/

namespace A344309.P10051597892848425881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A286335 (A000124 (A001602 (n + 1)).toNat).toNat)

end

end A344309.P10051597892848425881

/-! ## A344309.P9159607282806456046

`p?[A118759(n)]%A033619(A001602(n+1))`
-/

namespace A344309.P9159607282806456046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A033619 (A001602 (n + 1)).toNat)

end

end A344309.P9159607282806456046

/-!
# A344310: Number of knapsack partitions of n with largest part 4.

The programs for A344310, there is no canonical definition to state claims against.
-/

/-! ## A344310.P17665371619264380850

`A326017(A145018(n+1)-C(2, n))`
-/

namespace A344310.P17665371619264380850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326017 (A145018 (n + 1) - (Nat.choose 2 n : ℤ)).toNat

end

end A344310.P17665371619264380850

/-! ## A344310.P8461126618471542472

`A326017(A034856(n+1)-A004274(n))`
-/

namespace A344310.P8461126618471542472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326017 (A034856 (n + 1) - A004274 n).toNat

end

end A344310.P8461126618471542472

/-! ## A344310.P8060148552650953205

`A326017(A145018(n+1))-A094497(n)`
-/

namespace A344310.P8060148552650953205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326017 (A145018 (n + 1)).toNat - A094497 n

end

end A344310.P8060148552650953205

/-! ## A344310.P9311012346894580047

`A326017(A145018(n+1))%A000009(n)`
-/

namespace A344310.P9311012346894580047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326017 (A145018 (n + 1)).toNat) (A000009 n)

end

end A344310.P9311012346894580047

/-! ## A344310.P3762702727140375072

`A326017(gcd(A094497(n), A145018(n+1)))`
-/

namespace A344310.P3762702727140375072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326017 (Int.gcd (A094497 n) (A145018 (n + 1)))

end

end A344310.P3762702727140375072

/-! ## A344310.P4267683666418234894

`A185116(n+2)*A326017(A145018(n+1))`
-/

namespace A344310.P4267683666418234894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185116 (n + 2) * A326017 (A145018 (n + 1)).toNat

end

end A344310.P4267683666418234894

/-! ## A344310.P13124358015734757576

`A326017(A145018(n+1))-A000007(A339919(n))`
-/

namespace A344310.P13124358015734757576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326017 (A145018 (n + 1)).toNat - A000007 (A339919 n).toNat

end

end A344310.P13124358015734757576

/-! ## A344310.P8074199216677632958

`A326017(A145018(n+1))*A326017(A094497(n)²)`
-/

namespace A344310.P8074199216677632958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326017 (A145018 (n + 1)).toNat * A326017 (A094497 n ^ 2).toNat

end

end A344310.P8074199216677632958

/-!
# A344311: Number of polygons formed outside a regular n-gon when every pair of vertices of the n-gon are joined by an infinite line.

The programs for A344311, there is no canonical definition to state claims against.
-/

/-! ## A344311.P12811920699796200707

`A344857(n+1)-A007678(n+1)`
-/

namespace A344311.P12811920699796200707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344857 (n + 1) - A007678 (n + 1)

end

end A344311.P12811920699796200707

/-! ## A344311.P10204056198823074598

`1-A006533(n+1)+A344857(n+1)+n`
-/

namespace A344311.P10204056198823074598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006533 (n + 1) + (A344857 (n + 1) + (n : ℤ))

end

end A344311.P10204056198823074598

/-! ## A344311.P7998515969150939595

`A344857(n+1)-(A135565(n+1)+1-A007569(n+1))`
-/

namespace A344311.P7998515969150939595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344857 (n + 1) - (A135565 (n + 1) + (1 - A007569 (n + 1)))

end

end A344311.P7998515969150939595

/-! ## A344311.P556141916856404917

`A344857(n+1)-(A135565(n+1)-(A006561(n+1)+n))`
-/

namespace A344311.P556141916856404917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344857 (n + 1) - (A135565 (n + 1) - (A006561 (n + 1) + (n : ℤ)))

end

end A344311.P556141916856404917

/-! ## A344311.P14179886904475818902

`A344857(n+1)+A008683(A051698(n))*A007678(n+1)`
-/

namespace A344311.P14179886904475818902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344857 (n + 1) + A008683 (A051698 n).toNat * A007678 (n + 1)

end

end A344311.P14179886904475818902

/-!
# A344312: Number k such that k and k+1 have the same number of exponential divisors (A049419).

The programs for A344312, the canonical program `A344312.P5749535805421170525` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344312 has offset 1).

The definition of A344312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3948 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344312.P5749535805421170525

`eq[0, Δ[A049419(n+1)]]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A344312

/-- `eq[0, Δ[A049419(n+1)]]+1` -/
def P5749535805421170525.Spec : Prop :=
  ∀ n, (P5749535805421170525.a n : ℤ) = A344312 (n + 1)

theorem P5749535805421170525.correct : P5749535805421170525.Spec := by
  intro n
  simp only [A344312, Nat.add_sub_cancel]

end A344312

/-! ## A344312.P5724854039566126973

`eq[A049419(n+1), A049419(n+2)]+1`
-/

namespace A344312.P5724854039566126973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344312.P5724854039566126973

namespace A344312

/-- `eq[A049419(n+1), A049419(n+2)]+1` -/
def P5724854039566126973.Spec : Prop :=
  ∀ n, (P5724854039566126973.a n : ℤ) = A344312 (n + 1)

end A344312

/-! ## A344312.P8251549860863889608

`eq[A344417(n+1), A344417(n+2)]+1`
-/

namespace A344312.P8251549860863889608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344417 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344312.P8251549860863889608

namespace A344312

/-- `eq[A344417(n+1), A344417(n+2)]+1` -/
def P8251549860863889608.Spec : Prop :=
  ∀ n, (P8251549860863889608.a n : ℤ) = A344312 (n + 1)

end A344312

/-! ## A344312.P9295020542942649442

`eq[A051903(n+1), A344417(A028310(n))]`
-/

namespace A344312.P9295020542942649442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344417 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344312.P9295020542942649442

namespace A344312

/-- `eq[A051903(n+1), A344417(A028310(n))]` -/
def P9295020542942649442.Spec : Prop :=
  ∀ n, (P9295020542942649442.a n : ℤ) = A344312 (n + 1)

end A344312

/-! ## A344312.P2136134731893311853

`eq[A376657(n+1), A376657(A233583(n+1))]`
-/

namespace A344312.P2136134731893311853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376657 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344312.P2136134731893311853

namespace A344312

/-- `eq[A376657(n+1), A376657(A233583(n+1))]` -/
def P2136134731893311853.Spec : Prop :=
  ∀ n, (P2136134731893311853.a n : ℤ) = A344312 (n + 1)

end A344312

/-!
# A344313: Number k such that k and k+1 have the same number of bi-unitary divisors (A286324).

The programs for A344313, the canonical program `A344313.P8586429644628599476` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344313 has offset 1).

The definition of A344313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344313.P8586429644628599476

`eq[0, Δ[A286324(n+1)]]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A344313

/-- `eq[0, Δ[A286324(n+1)]]+1` -/
def P8586429644628599476.Spec : Prop :=
  ∀ n, (P8586429644628599476.a n : ℤ) = A344313 (n + 1)

theorem P8586429644628599476.correct : P8586429644628599476.Spec := by
  intro n
  simp only [A344313, Nat.add_sub_cancel]

end A344313

/-! ## A344313.P14973139243265331612

`eq[A286324(n+2), A286324(n+1)]+1`
-/

namespace A344313.P14973139243265331612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344313.P14973139243265331612

namespace A344313

/-- `eq[A286324(n+2), A286324(n+1)]+1` -/
def P14973139243265331612.Spec : Prop :=
  ∀ n, (P14973139243265331612.a n : ℤ) = A344313 (n + 1)

end A344313

/-! ## A344313.P11246436963929064931

`lt[Δ[A286338(A286324(n+1)+1)]², 1]+1`
-/

namespace A344313.P11246436963929064931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286338 (A286324 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A344313.P11246436963929064931

namespace A344313

/-- `lt[Δ[A286338(A286324(n+1)+1)]², 1]+1` -/
def P11246436963929064931.Spec : Prop :=
  ∀ n, (P11246436963929064931.a n : ℤ) = A344313 (n + 1)

end A344313

/-!
# A344314: Number k such that k and k+1 have the same number of nonunitary divisors (A048105).

The programs for A344314, the canonical program `A344314.P13255996641734891554` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344314 has offset 1).

The definition of A344314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3460 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344314.P13255996641734891554

`eq[A048105(n+1), A048105(n+2)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A344314

/-- `eq[A048105(n+1), A048105(n+2)]+1` -/
def P13255996641734891554.Spec : Prop :=
  ∀ n, (P13255996641734891554.a n : ℤ) = A344314 (n + 1)

theorem P13255996641734891554.correct : P13255996641734891554.Spec := by
  intro n
  simp only [A344314, Nat.add_sub_cancel]

end A344314

/-! ## A344314.P12676588502203211532

`eq[A360012(n+1), A360012(n+2)]+1`
-/

namespace A344314.P12676588502203211532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360012 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344314.P12676588502203211532

namespace A344314

/-- `eq[A360012(n+1), A360012(n+2)]+1` -/
def P12676588502203211532.Spec : Prop :=
  ∀ n, (P12676588502203211532.a n : ℤ) = A344314 (n + 1)

end A344314

/-! ## A344314.P7401493953108787326

`eq[A336424(n+1), A336424(n+2)]+1`
-/

namespace A344314.P7401493953108787326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336424 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344314.P7401493953108787326

namespace A344314

/-- `eq[A336424(n+1), A336424(n+2)]+1` -/
def P7401493953108787326.Spec : Prop :=
  ∀ n, (P7401493953108787326.a n : ℤ) = A344314 (n + 1)

end A344314

/-! ## A344314.P7585307871320425410

`eq[A000032(A285718(n+1)), A336424(n+1)]`
-/

namespace A344314.P7585307871320425410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A285718 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336424 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344314.P7585307871320425410

namespace A344314

/-- `eq[A000032(A285718(n+1)), A336424(n+1)]` -/
def P7585307871320425410.Spec : Prop :=
  ∀ n, (P7585307871320425410.a n : ℤ) = A344314 (n + 1)

end A344314

/-!
# A344316: Number of primes appearing along the border of an n X n square array whose elements are the numbers from 1..n^2, listed in increasing order by rows.

The programs for A344316, there is no canonical definition to state claims against.
-/

/-! ## A344316.P15432844668402715425

`∑[A014085(n)]-A342695(n+1)`
-/

namespace A344316.P15432844668402715425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A342695 (n + 1)

end

end A344316.P15432844668402715425

/-! ## A344316.P16487604824981323784

`A038107(n+1)-A342695(n+1)`
-/

namespace A344316.P16487604824981323784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - A342695 (n + 1)

end

end A344316.P16487604824981323784

/-! ## A344316.P11779087029956986714

`A000720((n+1)²)-A342695(n+1)`
-/

namespace A344316.P11779087029956986714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) ^ 2) - A342695 (n + 1)

end

end A344316.P11779087029956986714

/-! ## A344316.P3343871522676798681

`record[A000720(A095833(n+1))]-A342695(n+1)`
-/

namespace A344316.P3343871522676798681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A342695 (n + 1)

end

end A344316.P3343871522676798681

/-! ## A344316.P9557857025925919409

`record[A000720(A133819(n+1))]-A342695(n+1)`
-/

namespace A344316.P9557857025925919409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A133819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A342695 (n + 1)

end

end A344316.P9557857025925919409

/-! ## A344316.P17974325340271320554

`A230980((n+1)²)-A342695(n+1)`
-/

namespace A344316.P17974325340271320554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 ((n + 1) ^ 2) - A342695 (n + 1)

end

end A344316.P17974325340271320554

/-!
# A344317: a(n) = n*a(n-1) + n^(1+n mod 2), a(0) = 1.

The programs for A344317, there is no canonical definition to state claims against.
-/

/-! ## A344317.P8888963443327429982

`gcd(n, n%2)+n*a(n-1)` with `a(0)=1`
-/

namespace A344317.P8888963443327429982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd n (n % 2) + n * a (n - 1)

end

end A344317.P8888963443327429982

/-! ## A344317.P15558915641602235871

`n^((n+1)%2)+n*a(n-1)` with `a(0)=1`
-/

namespace A344317.P15558915641602235871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n ^ ((n + 1) % 2) + n * a (n - 1)

end

end A344317.P15558915641602235871

/-! ## A344317.P4823405618502147581

`A344418(n)+n!`
-/

namespace A344317.P4823405618502147581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344418 n + (Nat.factorial n : ℤ)

end

end A344317.P4823405618502147581

/-! ## A344317.P2552391228948017694

`A344418(n)+A000142(n)`
-/

namespace A344317.P2552391228948017694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344418 n + A000142 n

end

end A344317.P2552391228948017694

/-! ## A344317.P3743485861297956095

`A344418(n)+Δ[A003422(n)]`
-/

namespace A344317.P3743485861297956095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344418 n + (f1 (n + 1) - f1 n)

end

end A344317.P3743485861297956095

/-! ## A344317.P5369674637220158223

`A344418(n)+A008279(A000096(n))`
-/

namespace A344317.P5369674637220158223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344418 n + A008279 (A000096 n).toNat

end

end A344317.P5369674637220158223

/-! ## A344317.P4826774042801550993

`A344418(n)+A199660(2*n+1)`
-/

namespace A344317.P4826774042801550993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344418 n + A199660 (2 * n + 1)

end

end A344317.P4826774042801550993

/-!
# A344318: Number of partitions of n into consecutive parts not divisible by 3.

The programs for A344318, there is no canonical definition to state claims against.
-/

/-! ## A344318.P10432857768182892034

`A034178(comp[record[lcm(2, n)]])`
-/

namespace A344318.P10432857768182892034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A344318.P10432857768182892034

/-! ## A344318.P1634677826157472909

`A034178(∑[((n+1)%3)!])`
-/

namespace A344318.P1634677826157472909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n + 1) % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344318.P1634677826157472909

/-! ## A344318.P11001669209172761255

`A034178(ceil(4*n/3)+1)`
-/

namespace A344318.P11001669209172761255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (⌈4 * ((n : ℚ) / 3)⌉ + 1).toNat

end

end A344318.P11001669209172761255

/-! ## A344318.P15766574933019169380

`dr(A034178(comp[a(n-1)+4]))` with `a(0)=0, a(1)=2`
-/

namespace A344318.P15766574933019169380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A034178 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A344318.P15766574933019169380

/-! ## A344318.P14197254336313063217

`A038548(A188146(n))`
-/

namespace A344318.P14197254336313063217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A188146 n).toNat

end

end A344318.P14197254336313063217

/-! ## A344318.P2877377200409239461

`A230263(A310565(n+1))`
-/

namespace A344318.P2877377200409239461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230263 (A310565 (n + 1)).toNat

end

end A344318.P2877377200409239461

/-! ## A344318.P6920541155357528228

`A230263(A267958(n+2))`
-/

namespace A344318.P6920541155357528228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230263 (A267958 (n + 2)).toNat

end

end A344318.P6920541155357528228

/-! ## A344318.P12795605398529500006

`A220400(4*A188146(n))`
-/

namespace A344318.P12795605398529500006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (4 * A188146 n).toNat

end

end A344318.P12795605398529500006

/-! ## A344318.P3790346900218812245

`A230263(2*A047395(n+2))`
-/

namespace A344318.P3790346900218812245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230263 (2 * A047395 (n + 2)).toNat

end

end A344318.P3790346900218812245

/-! ## A344318.P17955314498264384661

`filter[A034178(n+1), A011558(#)]`
-/

namespace A344318.P17955314498264384661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A344318.P17955314498264384661

/-!
# A344319: Number of partitions of n into consecutive parts not divisible by 4.

The programs for A344319, there is no canonical definition to state claims against.
-/

/-! ## A344319.P8759684897193285961

`A242667(lcm(A001285(n), A187829(n+1)))`
-/

namespace A344319.P8759684897193285961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242667 (Int.lcm (A001285 n) (A187829 (n + 1)))

end

end A344319.P8759684897193285961

/-! ## A344319.P6679177075824999168

`A242667(n+1)+A221836(A110653(n+1))`
-/

namespace A344319.P6679177075824999168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242667 (n + 1) + A221836 (A110653 (n + 1)).toNat

end

end A344319.P6679177075824999168

/-! ## A344319.P9833890229904378070

`A242667(n+1)+A221836(A183102(n+1))`
-/

namespace A344319.P9833890229904378070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242667 (n + 1) + A221836 (A183102 (n + 1)).toNat

end

end A344319.P9833890229904378070

/-! ## A344319.P12913319158509115503

`A242667(n+1)+A221836(A183104(n+1))`
-/

namespace A344319.P12913319158509115503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242667 (n + 1) + A221836 (A183104 (n + 1)).toNat

end

end A344319.P12913319158509115503

/-!
# A344320: Number of partitions of n into consecutive parts not divisible by 5.

The programs for A344320, there is no canonical definition to state claims against.
-/

/-! ## A344320.P6101223935284439143

`A336570(A256998(n+1)+A029635(2*n+1))`
-/

namespace A344320.P6101223935284439143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336570 (A256998 (n + 1) + A029635 (2 * n + 1)).toNat

end

end A344320.P6101223935284439143

/-! ## A344320.P6227348331179659903

`A089309(A141285(A000032(n)))`
-/

namespace A344320.P6227348331179659903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A141285 (A000032 n).toNat).toNat

end

end A344320.P6227348331179659903

/-! ## A344320.P469294508457820383

`A341594(A339114(3*n+5)+A141069(n+2))`
-/

namespace A344320.P469294508457820383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341594 (A339114 (3 * n + 5) + A141069 (n + 2)).toNat

end

end A344320.P469294508457820383

/-! ## A344320.P7930625635115919983

`A020639(gcd(A024788(3*n+5), A340011(n+4)))`
-/

namespace A344320.P7930625635115919983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A024788 (3 * n + 5)) (A340011 (n + 4)))

end

end A344320.P7930625635115919983

/-!
# A344321: a(n) = 2^(2*n - 5)*binomial(n-5/2, -1/2)*(36*n^4 - 78*n^3 + 54*n^2 - 48*n + 24)/((n + 1)*n*(n - 1)) for n >= 2 and otherwise 1.

The programs for A344321, there is no canonical definition to state claims against.
-/

/-! ## A344321.P9418571000378472404

`A048247(A049152(n))`
-/

namespace A344321.P9418571000378472404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048247 (A049152 n).toNat

end

end A344321.P9418571000378472404

/-!
# A344322: a(n) is the number of forbidden values when computing A229037(n).

The programs for A344322, there is no canonical definition to state claims against.
-/

/-! ## A344322.P7643205305277747935

`A073642(n+4)-A026498(A167884(n+1))`
-/

namespace A344322.P7643205305277747935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (n + 4) - A026498 (A167884 (n + 1)).toNat

end

end A344322.P7643205305277747935

/-!
# A344323: Number of light-years in a parsec, as defined in 2015.

The programs for A344323, there is no canonical definition to state claims against.
-/

/-! ## A344323.P18243417659544633531

`A344310(A184983(n))+A248645(n+1)`
-/

namespace A344323.P18243417659544633531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344310 (A184983 n).toNat + A248645 (n + 1)

end

end A344323.P18243417659544633531

/-! ## A344323.P7848772484783137710

`or(A248639(A000045(n)), A248645(n+1))`
-/

namespace A344323.P7848772484783137710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A248639 (A000045 n).toNat) (A248645 (n + 1))

end

end A344323.P7848772484783137710

/-! ## A344323.P18100254768917972616

`or(A001842(A303980(n)), A248645(n+1))`
-/

namespace A344323.P18100254768917972616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001842 (A303980 n).toNat) (A248645 (n + 1))

end

end A344323.P18100254768917972616

/-! ## A344323.P6442075899249949090

`or(A248639(A248647(n+5)), A248645(n+1))`
-/

namespace A344323.P6442075899249949090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A248639 (A248647 (n + 5)).toNat) (A248645 (n + 1))

end

end A344323.P6442075899249949090

/-!
# A344325: Squares visited on a spirally numbered board when stepping to the closest unvisited square which contains a number that shares no digit with the number of the current square. If two or more such squares are the same distance away the one with the smaller number is chosen.

The programs for A344325, there is no canonical definition to state claims against.
-/

/-! ## A344325.P7108794995548859863

`A099375(A000931(n)^A000931(n)+1)+n`
-/

namespace A344325.P7108794995548859863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (SequenceMachineLib.roundAway ((A000931 n : ℚ) ^ (A000931 n : ℤ) + 1)).toNat + (n : ℤ)

end

end A344325.P7108794995548859863

/-! ## A344325.P4520273524952094701

`A294472(∑{digits}[n, C(n, #)])+n`
-/

namespace A344325.P4520273524952094701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294472 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose n x).sum + (n : ℤ)

end

end A344325.P4520273524952094701

/-! ## A344325.P15356872135831376681

`∑[A090894(A111696(n))]`
-/

namespace A344325.P15356872135831376681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090894 (A111696 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344325.P15356872135831376681

/-! ## A344325.P1984057480468387075

`∑[A182165(A309659(n)!)]`
-/

namespace A344325.P1984057480468387075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182165 (Nat.factorial (A309659 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344325.P1984057480468387075

/-! ## A344325.P9244169769180969217

`∑[A327187(A308908(n)!)]`
-/

namespace A344325.P9244169769180969217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327187 (Nat.factorial (A308908 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344325.P9244169769180969217

/-!
# A344326: Dirichlet g.f.: zeta(s)^2/zeta(2*s-1).

The programs for A344326, the canonical program `A344326.P6585231789986508577` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344326 has offset 1).

The definition of A344326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344326.P10628084384006548371

`∑{d}[n+1, A023900(gcd(#, (n+1)/#))]`
-/

namespace A344326.P10628084384006548371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 (Int.gcd (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))))

end

end A344326.P10628084384006548371

namespace A344326

/-- `∑{d}[n+1, A023900(gcd(#, (n+1)/#))]` -/
def P10628084384006548371.Spec : Prop :=
  ∀ n, P10628084384006548371.a n = A344326 (n + 1)

end A344326

/-! ## A344326.P270723928404320089

`∑{d}[n+1, A023900(A003557(#))]`
-/

namespace A344326.P270723928404320089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 (A003557 d).toNat

end

end A344326.P270723928404320089

namespace A344326

/-- `∑{d}[n+1, A023900(A003557(#))]` -/
def P270723928404320089.Spec : Prop :=
  ∀ n, P270723928404320089.a n = A344326 (n + 1)

end A344326

/-! ## A344326.P3400243965012655278

`A328641(n+1)/A023900(n+1)`
-/

namespace A344326.P3400243965012655278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328641 (n + 1) : ℚ) / (A023900 (n + 1) : ℚ)

end

end A344326.P3400243965012655278

namespace A344326

/-- `A328641(n+1)/A023900(n+1)` -/
def P3400243965012655278.Spec : Prop :=
  ∀ n, P3400243965012655278.a n = (A344326 (n + 1) : ℚ)

end A344326

/-! ## A344326.P14044260915010897366

`A328641(n+1)/(A318833(n+1)-(n+1))`
-/

namespace A344326.P14044260915010897366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328641 (n + 1) : ℚ) / (A318833 (n + 1) - (n + 1 : ℤ) : ℚ)

end

end A344326.P14044260915010897366

namespace A344326

/-- `A328641(n+1)/(A318833(n+1)-(n+1))` -/
def P14044260915010897366.Spec : Prop :=
  ∀ n, P14044260915010897366.a n = (A344326 (n + 1) : ℚ)

end A344326

/-! ## A344326.P1889631374098758004

`∑{d}[n+1, A023900(#)*A034448((n+1)/#)]`
-/

namespace A344326.P1889631374098758004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344326.P1889631374098758004

namespace A344326

/-- `∑{d}[n+1, A023900(#)*A034448((n+1)/#)]` -/
def P1889631374098758004.Spec : Prop :=
  ∀ n, P1889631374098758004.a n = A344326 (n + 1)

end A344326

/-! ## A344326.P6585231789986508577

`∑{d}[n+1, A055615(#)*A328485((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A344326

/-- `∑{d}[n+1, A055615(#)*A328485((n+1)/#)]` -/
def P6585231789986508577.Spec : Prop :=
  ∀ n, P6585231789986508577.a n = A344326 (n + 1)

theorem P6585231789986508577.correct : P6585231789986508577.Spec := by
  intro n
  simp only [A344326, Nat.add_sub_cancel]

end A344326

/-! ## A344326.P2297143127026948574

`∑{d}[n+1, A130054(#)*A254503((n+1)/#)]`
-/

namespace A344326.P2297143127026948574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A254503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344326.P2297143127026948574

namespace A344326

/-- `∑{d}[n+1, A130054(#)*A254503((n+1)/#)]` -/
def P2297143127026948574.Spec : Prop :=
  ∀ n, P2297143127026948574.a n = A344326 (n + 1)

end A344326

/-! ## A344326.P10125010136899599454

`∑{d}[n+1, A064840(#)*A328722((n+1)/#)]`
-/

namespace A344326.P10125010136899599454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064840 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344326.P10125010136899599454

namespace A344326

/-- `∑{d}[n+1, A064840(#)*A328722((n+1)/#)]` -/
def P10125010136899599454.Spec : Prop :=
  ∀ n, P10125010136899599454.a n = A344326 (n + 1)

end A344326

/-! ## A344326.P4022413885742944466

`∑{d}[n+1, A324986(#)*A327960((n+1)/#)]`
-/

namespace A344326.P4022413885742944466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A324986 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344326.P4022413885742944466

namespace A344326

/-- `∑{d}[n+1, A324986(#)*A327960((n+1)/#)]` -/
def P4022413885742944466.Spec : Prop :=
  ∀ n, P4022413885742944466.a n = A344326 (n + 1)

end A344326

/-! ## A344326.P3040115311406280055

`∑{d}[n+1, A328729(#)*A332619((n+1)/#)]`
-/

namespace A344326.P3040115311406280055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328729 d * A332619 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344326.P3040115311406280055

namespace A344326

/-- `∑{d}[n+1, A328729(#)*A332619((n+1)/#)]` -/
def P3040115311406280055.Spec : Prop :=
  ∀ n, P3040115311406280055.a n = A344326 (n + 1)

end A344326

/-!
# A344327: Number of divisors of n^4.

The programs for A344327, the canonical program `A344327.P12949124934553649627` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344327 has offset 1).

The definition of A344327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344327.P12949124934553649627

`A000005(A000583(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A344327

/-- `A000005(A000583(n+1))` -/
def P12949124934553649627.Spec : Prop :=
  ∀ n, P12949124934553649627.a n = A344327 (n + 1)

theorem P12949124934553649627.correct : P12949124934553649627.Spec := by
  intro n
  simp only [A344327, Nat.add_sub_cancel]

end A344327

/-! ## A344327.P15629150642307319447

`∏{e}[n+1, 4*#+1]`
-/

namespace A344327.P15629150642307319447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (4 * Nat.factorization (f1 n) p + 1)

end

end A344327.P15629150642307319447

namespace A344327

/-- `∏{e}[n+1, 4*#+1]` -/
def P15629150642307319447.Spec : Prop :=
  ∀ n, (P15629150642307319447.a n : ℤ) = A344327 (n + 1)

end A344327

/-! ## A344327.P2775933742149921455

`∑{d}[n+1, A034444(#)²]`
-/

namespace A344327.P2775933742149921455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d ^ 2

end

end A344327.P2775933742149921455

namespace A344327

/-- `∑{d}[n+1, A034444(#)²]` -/
def P2775933742149921455.Spec : Prop :=
  ∀ n, P2775933742149921455.a n = A344327 (n + 1)

end A344327

/-! ## A344327.P15396008516230759541

`4*A015996(n+1)-3`
-/

namespace A344327.P15396008516230759541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A015996 (n + 1) - 3

end

end A344327.P15396008516230759541

namespace A344327

/-- `4*A015996(n+1)-3` -/
def P15396008516230759541.Spec : Prop :=
  ∀ n, P15396008516230759541.a n = A344327 (n + 1)

end A344327

/-! ## A344327.P15423022234117528402

`∑{d}[n+1, 4^A001221(#)]`
-/

namespace A344327.P15423022234117528402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (4 : ℚ) ^ (A001221 d : ℤ)

end

end A344327.P15423022234117528402

namespace A344327

/-- `∑{d}[n+1, 4^A001221(#)]` -/
def P15423022234117528402.Spec : Prop :=
  ∀ n, P15423022234117528402.a n = (A344327 (n + 1) : ℚ)

end A344327

/-! ## A344327.P5235937020569947740

`A008586(A015996(n+1)-1)+1`
-/

namespace A344327.P5235937020569947740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A015996 (n + 1) - 1).toNat + 1

end

end A344327.P5235937020569947740

namespace A344327

/-- `A008586(A015996(n+1)-1)+1` -/
def P5235937020569947740.Spec : Prop :=
  ∀ n, P5235937020569947740.a n = A344327 (n + 1)

end A344327

/-! ## A344327.P10058736561780653026

`∑{d}[n+1, A007427(#)*A062368((n+1)/#)]`
-/

namespace A344327.P10058736561780653026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A062368 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344327.P10058736561780653026

namespace A344327

/-- `∑{d}[n+1, A007427(#)*A062368((n+1)/#)]` -/
def P10058736561780653026.Spec : Prop :=
  ∀ n, P10058736561780653026.a n = A344327 (n + 1)

end A344327

/-! ## A344327.P6993450583020393861

`∑{d}[n+1, A000005(#)*A347149((n+1)/#)]`
-/

namespace A344327.P6993450583020393861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A347149 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344327.P6993450583020393861

namespace A344327

/-- `∑{d}[n+1, A000005(#)*A347149((n+1)/#)]` -/
def P6993450583020393861.Spec : Prop :=
  ∀ n, P6993450583020393861.a n = A344327 (n + 1)

end A344327

/-! ## A344327.P16535559468205183922

`∑{d}[n+1, A008683(#)*A356574((n+1)/#)]`
-/

namespace A344327.P16535559468205183922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A356574 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344327.P16535559468205183922

namespace A344327

/-- `∑{d}[n+1, A008683(#)*A356574((n+1)/#)]` -/
def P16535559468205183922.Spec : Prop :=
  ∀ n, P16535559468205183922.a n = A344327 (n + 1)

end A344327

/-! ## A344327.P9324994080014495360

`∑{d}[n+1, A023900(#)*A344222((n+1)/#)]`
-/

namespace A344327.P9324994080014495360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A344222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344327.P9324994080014495360

namespace A344327

/-- `∑{d}[n+1, A023900(#)*A344222((n+1)/#)]` -/
def P9324994080014495360.Spec : Prop :=
  ∀ n, P9324994080014495360.a n = A344327 (n + 1)

end A344327

/-! ## A344327.P2907095806043862755

`∑{d}[A046523(n+1), A046523(A082476(#))²]`
-/

namespace A344327.P2907095806043862755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A046523 (A082476 d).toNat ^ 2

end

end A344327.P2907095806043862755

namespace A344327

/-- `∑{d}[A046523(n+1), A046523(A082476(#))²]` -/
def P2907095806043862755.Spec : Prop :=
  ∀ n, P2907095806043862755.a n = A344327 (n + 1)

end A344327

/-! ## A344327.P6392974300180959947

`2*A046079(2*(n+1)²)+1`
-/

namespace A344327.P6392974300180959947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046079 (2 * (n + 1) ^ 2) + 1

end

end A344327.P6392974300180959947

namespace A344327

/-- `2*A046079(2*(n+1)²)+1` -/
def P6392974300180959947.Spec : Prop :=
  ∀ n, P6392974300180959947.a n = A344327 (n + 1)

end A344327

/-! ## A344327.P16232435231795000798

`or(1, 2*A046079(Δ[2*A000330(n)]))`
-/

namespace A344327.P16232435231795000798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A046079 (f1 (n + 1) - f1 n).toNat)

end

end A344327.P16232435231795000798

namespace A344327

/-- `or(1, 2*A046079(Δ[2*A000330(n)]))` -/
def P16232435231795000798.Spec : Prop :=
  ∀ n, P16232435231795000798.a n = A344327 (n + 1)

end A344327

/-! ## A344327.P11365595395843370116

`A005408(A046079(2*(n+1)*(n+1)))`
-/

namespace A344327.P11365595395843370116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A046079 (2 * (n + 1) * (n + 1))).toNat

end

end A344327.P11365595395843370116

namespace A344327

/-- `A005408(A046079(2*(n+1)*(n+1)))` -/
def P11365595395843370116.Spec : Prop :=
  ∀ n, P11365595395843370116.a n = A344327 (n + 1)

end A344327

/-! ## A344327.P7171346533611948850

`A048691(A278254(n+1))`
-/

namespace A344327.P7171346533611948850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A278254 (n + 1)).toNat

end

end A344327.P7171346533611948850

namespace A344327

/-- `A048691(A278254(n+1))` -/
def P7171346533611948850.Spec : Prop :=
  ∀ n, P7171346533611948850.a n = A344327 (n + 1)

end A344327

/-! ## A344327.P17699017871919245375

`A048691((n+1)²)`
-/

namespace A344327.P17699017871919245375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 ((n + 1) ^ 2)

end

end A344327.P17699017871919245375

namespace A344327

/-- `A048691((n+1)²)` -/
def P17699017871919245375.Spec : Prop :=
  ∀ n, P17699017871919245375.a n = A344327 (n + 1)

end A344327

/-! ## A344327.P4176148154952368517

`A004273(A018892((n+1)²))`
-/

namespace A344327.P4176148154952368517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A018892 ((n + 1) ^ 2)).toNat

end

end A344327.P4176148154952368517

namespace A344327

/-- `A004273(A018892((n+1)²))` -/
def P4176148154952368517.Spec : Prop :=
  ∀ n, P4176148154952368517.a n = A344327 (n + 1)

end A344327

/-! ## A344327.P3336219982532917684

`A004396(A146564((n+1)²))`
-/

namespace A344327.P3336219982532917684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A146564 ((n + 1) ^ 2)).toNat

end

end A344327.P3336219982532917684

namespace A344327

/-- `A004396(A146564((n+1)²))` -/
def P3336219982532917684.Spec : Prop :=
  ∀ n, P3336219982532917684.a n = A344327 (n + 1)

end A344327

/-! ## A344327.P11629244652290830475

`∑{d}[A000290(n+1), A034444(#)]`
-/

namespace A344327.P11629244652290830475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A034444 d

end

end A344327.P11629244652290830475

namespace A344327

/-- `∑{d}[A000290(n+1), A034444(#)]` -/
def P11629244652290830475.Spec : Prop :=
  ∀ n, P11629244652290830475.a n = A344327 (n + 1)

end A344327

/-! ## A344327.P3736915106018581517

`A374802(A374801(A048691((n+1)*(n+1))))`
-/

namespace A344327.P3736915106018581517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374802 (A374801 (A048691 ((n + 1) * (n + 1))).toNat).toNat

end

end A344327.P3736915106018581517

namespace A344327

/-- `A374802(A374801(A048691((n+1)*(n+1))))` -/
def P3736915106018581517.Spec : Prop :=
  ∀ n, P3736915106018581517.a n = A344327 (n + 1)

end A344327

/-!
# A344328: Number of divisors of n^5.

The programs for A344328, the canonical program `A344328.P5887897113465707472` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344328 has offset 1).

The definition of A344328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344328.P5887897113465707472

`A000005(A000584(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A344328

/-- `A000005(A000584(n+1))` -/
def P5887897113465707472.Spec : Prop :=
  ∀ n, P5887897113465707472.a n = A344328 (n + 1)

theorem P5887897113465707472.correct : P5887897113465707472.Spec := by
  intro n
  simp only [A344328, Nat.add_sub_cancel]

end A344328

/-! ## A344328.P4779099462822187473

`∏{e}[n+1, 5*#+1]`
-/

namespace A344328.P4779099462822187473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (5 * Nat.factorization (f1 n) p + 1)

end

end A344328.P4779099462822187473

namespace A344328

/-- `∏{e}[n+1, 5*#+1]` -/
def P4779099462822187473.Spec : Prop :=
  ∀ n, (P4779099462822187473.a n : ℤ) = A344328 (n + 1)

end A344328

/-! ## A344328.P12198079109868057541

`∑{d}[n+1, A082476(#)]`
-/

namespace A344328.P12198079109868057541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A082476 d

end

end A344328.P12198079109868057541

namespace A344328

/-- `∑{d}[n+1, A082476(#)]` -/
def P12198079109868057541.Spec : Prop :=
  ∀ n, P12198079109868057541.a n = A344328 (n + 1)

end A344328

/-! ## A344328.P11313297961544471682

`5*A015999(n+1)-4`
-/

namespace A344328.P11313297961544471682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A015999 (n + 1) - 4

end

end A344328.P11313297961544471682

namespace A344328

/-- `5*A015999(n+1)-4` -/
def P11313297961544471682.Spec : Prop :=
  ∀ n, P11313297961544471682.a n = A344328 (n + 1)

end A344328

/-! ## A344328.P3269107101359274932

`∑{d}[n+1, 5^A001221(#)]`
-/

namespace A344328.P3269107101359274932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (5 : ℚ) ^ (A001221 d : ℤ)

end

end A344328.P3269107101359274932

namespace A344328

/-- `∑{d}[n+1, 5^A001221(#)]` -/
def P3269107101359274932.Spec : Prop :=
  ∀ n, P3269107101359274932.a n = (A344328 (n + 1) : ℚ)

end A344328

/-! ## A344328.P8753026441972183286

`∑{d}[n+1, A000005(#)*A351521((n+1)/#)]`
-/

namespace A344328.P8753026441972183286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A351521 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344328.P8753026441972183286

namespace A344328

/-- `∑{d}[n+1, A000005(#)*A351521((n+1)/#)]` -/
def P8753026441972183286.Spec : Prop :=
  ∀ n, P8753026441972183286.a n = A344328 (n + 1)

end A344328

/-! ## A344328.P3972405617685424788

`∑{d}[n+1, A008683(#)*A358380((n+1)/#)]`
-/

namespace A344328.P3972405617685424788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A358380 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344328.P3972405617685424788

namespace A344328

/-- `∑{d}[n+1, A008683(#)*A358380((n+1)/#)]` -/
def P3972405617685424788.Spec : Prop :=
  ∀ n, P3972405617685424788.a n = A344328 (n + 1)

end A344328

/-! ## A344328.P2819272560023050044

`∑{d}[n+1, A007427(#)*A397645((n+1)/#)]`
-/

namespace A344328.P2819272560023050044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A397645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344328.P2819272560023050044

namespace A344328

/-- `∑{d}[n+1, A007427(#)*A397645((n+1)/#)]` -/
def P2819272560023050044.Spec : Prop :=
  ∀ n, P2819272560023050044.a n = A344328 (n + 1)

end A344328

/-!
# A344329: Number of divisors of n^6.

The programs for A344329, the canonical program `A344329.P9888159302275244155` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344329 has offset 1).

The definition of A344329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344329.P9888159302275244155

`∏{e}[n+1, 6*#+1]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A344329

/-- `∏{e}[n+1, 6*#+1]` -/
def P9888159302275244155.Spec : Prop :=
  ∀ n, (P9888159302275244155.a n : ℤ) = A344329 (n + 1)

theorem P9888159302275244155.correct : P9888159302275244155.Spec := by
  intro n
  simp only [A344329, Nat.add_sub_cancel]

end A344329

/-! ## A344329.P15845173070379328159

`6*A016001(n+1)-5`
-/

namespace A344329.P15845173070379328159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A016001 (n + 1) - 5

end

end A344329.P15845173070379328159

namespace A344329

/-- `6*A016001(n+1)-5` -/
def P15845173070379328159.Spec : Prop :=
  ∀ n, P15845173070379328159.a n = A344329 (n + 1)

end A344329

/-! ## A344329.P8097886265701723681

`∑{d}[n+1, 6^A001221(#)]`
-/

namespace A344329.P8097886265701723681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (6 : ℚ) ^ (A001221 d : ℤ)

end

end A344329.P8097886265701723681

namespace A344329

/-- `∑{d}[n+1, 6^A001221(#)]` -/
def P8097886265701723681.Spec : Prop :=
  ∀ n, P8097886265701723681.a n = (A344329 (n + 1) : ℚ)

end A344329

/-! ## A344329.P15025082399746883798

`A008458(A016001(n+1))-5`
-/

namespace A344329.P15025082399746883798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A016001 (n + 1)).toNat - 5

end

end A344329.P15025082399746883798

namespace A344329

/-- `A008458(A016001(n+1))-5` -/
def P15025082399746883798.Spec : Prop :=
  ∀ n, P15025082399746883798.a n = A344329 (n + 1)

end A344329

/-! ## A344329.P2791696316644818177

`∑{d}[n+1, A008683(#)*A359037((n+1)/#)]`
-/

namespace A344329.P2791696316644818177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A359037 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344329.P2791696316644818177

namespace A344329

/-- `∑{d}[n+1, A008683(#)*A359037((n+1)/#)]` -/
def P2791696316644818177.Spec : Prop :=
  ∀ n, P2791696316644818177.a n = A344329 (n + 1)

end A344329

/-! ## A344329.P7681963205726696650

`∑{d}[n+1, A007427(#)*A397686((n+1)/#)]`
-/

namespace A344329.P7681963205726696650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A397686 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344329.P7681963205726696650

namespace A344329

/-- `∑{d}[n+1, A007427(#)*A397686((n+1)/#)]` -/
def P7681963205726696650.Spec : Prop :=
  ∀ n, P7681963205726696650.a n = A344329 (n + 1)

end A344329

/-! ## A344329.P9312369493132793934

`A026741(∏{e}[n+1, A008458(#)+1])`
-/

namespace A344329.P9312369493132793934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∏ p ∈ Nat.primeFactors (f1 n), (A008458 (Nat.factorization (f1 n) p) + 1)).toNat

end

end A344329.P9312369493132793934

namespace A344329

/-- `A026741(∏{e}[n+1, A008458(#)+1])` -/
def P9312369493132793934.Spec : Prop :=
  ∀ n, P9312369493132793934.a n = A344329 (n + 1)

end A344329

/-! ## A344329.P508612447809893435

`A343656(A055999(n+4))`
-/

namespace A344329.P508612447809893435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343656 (A055999 (n + 4)).toNat

end

end A344329.P508612447809893435

namespace A344329

/-- `A343656(A055999(n+4))` -/
def P508612447809893435.Spec : Prop :=
  ∀ n, P508612447809893435.a n = A344329 (n + 1)

end A344329

/-! ## A344329.P1474912016133239792

`A343656(A000124(n+7)-7)`
-/

namespace A344329.P1474912016133239792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343656 (A000124 (n + 7) - 7).toNat

end

end A344329.P1474912016133239792

namespace A344329

/-- `A343656(A000124(n+7)-7)` -/
def P1474912016133239792.Spec : Prop :=
  ∀ n, P1474912016133239792.a n = A344329 (n + 1)

end A344329

/-! ## A344329.P8399182432465493633

`A048785(A278254(n+1))`
-/

namespace A344329.P8399182432465493633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A278254 (n + 1)).toNat

end

end A344329.P8399182432465493633

namespace A344329

/-- `A048785(A278254(n+1))` -/
def P8399182432465493633.Spec : Prop :=
  ∀ n, P8399182432465493633.a n = A344329 (n + 1)

end A344329

/-! ## A344329.P4190485729815389656

`A048785(A046523(n+1)²)`
-/

namespace A344329.P4190485729815389656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A046523 (n + 1) ^ 2).toNat

end

end A344329.P4190485729815389656

namespace A344329

/-- `A048785(A046523(n+1)²)` -/
def P4190485729815389656.Spec : Prop :=
  ∀ n, P4190485729815389656.a n = A344329 (n + 1)

end A344329

/-! ## A344329.P9164844460411498230

`A048785((n+1)²)`
-/

namespace A344329.P9164844460411498230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 ((n + 1) ^ 2)

end

end A344329.P9164844460411498230

namespace A344329

/-- `A048785((n+1)²)` -/
def P9164844460411498230.Spec : Prop :=
  ∀ n, P9164844460411498230.a n = A344329 (n + 1)

end A344329

/-! ## A344329.P3252758393940244766

`∑{d}[(n+1)², A074816(#)]`
-/

namespace A344329.P3252758393940244766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074816 d

end

end A344329.P3252758393940244766

namespace A344329

/-- `∑{d}[(n+1)², A074816(#)]` -/
def P3252758393940244766.Spec : Prop :=
  ∀ n, P3252758393940244766.a n = A344329 (n + 1)

end A344329

/-! ## A344329.P4392702821373872996

`3*A015995((n+1)²)-2`
-/

namespace A344329.P4392702821373872996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A015995 ((n + 1) ^ 2) - 2

end

end A344329.P4392702821373872996

namespace A344329

/-- `3*A015995((n+1)²)-2` -/
def P4392702821373872996.Spec : Prop :=
  ∀ n, P4392702821373872996.a n = A344329 (n + 1)

end A344329

/-!
# A344330: Sides s of squares that can be tiled with squares of two different sizes so that the number of large or small squares is the same.

The programs for A344330, there is no canonical definition to state claims against.
-/

/-! ## A344330.P1254732728208834547

`∪[A111200(n+1), A344331(n+1)]`
-/

namespace A344330.P1254732728208834547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344330.P1254732728208834547

/-! ## A344330.P7015910437237561451

`∪[A344331(n+1), A344332(n+1)]`
-/

namespace A344330.P7015910437237561451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344330.P7015910437237561451

/-! ## A344330.P2359348469189337353

`record[A025480(A111200(n+2))]`
-/

namespace A344330.P2359348469189337353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A111200 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344330.P2359348469189337353

/-! ## A344330.P14855512945340878608

`A025480(∩[A111200(n+1), A344331(n+1)])`
-/

namespace A344330.P14855512945340878608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344331 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A344330.P14855512945340878608

/-! ## A344330.P16018091143530102682

`A178804(∩[A111200(n+1), A344331(n+1)])`
-/

namespace A344330.P16018091143530102682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344331 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178804 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A344330.P16018091143530102682

/-!
# A344331: Side s of squares of type 1 that can be tiled with squares of two different sizes so that the number of large or small squares is the same.

The programs for A344331, there is no canonical definition to state claims against.
-/

/-! ## A344331.P652636801594366766

`∩[2*n, A344330(n+1)]`
-/

namespace A344331.P652636801594366766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344331.P652636801594366766

/-! ## A344331.P6976429084368663725

`record[A038608(A344330(n+1))]`
-/

namespace A344331.P6976429084368663725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A344330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344331.P6976429084368663725

/-! ## A344331.P7436558499264800787

`filter[A344330(n+1), A059841(#)]`
-/

namespace A344331.P7436558499264800787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A344331.P7436558499264800787

/-! ## A344331.P6776618784632595699

`filter[A344330(n+1), A135528(#)]`
-/

namespace A344331.P6776618784632595699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A344331.P6776618784632595699

/-! ## A344331.P11115797663465460538

`filter[A344330(n+1), A266591(#)]`
-/

namespace A344331.P11115797663465460538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A344331.P11115797663465460538

/-!
# A344332: Side s of squares of type 2 that can be tiled with squares of two different sizes so that the number of large or small squares is the same.

The programs for A344332, there is no canonical definition to state claims against.
-/

/-! ## A344332.P8241069444004776102

`5*eq[1, A284792(A008527(n))]`
-/

namespace A344332.P8241069444004776102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284792 (A008527 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344332.P8241069444004776102

/-! ## A344332.P7203219433186198513

`A010720(A019332(n+1))*A230215(n+1)`
-/

namespace A344332.P7203219433186198513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010720 (A019332 (n + 1)).toNat * A230215 (n + 1)

end

end A344332.P7203219433186198513

/-! ## A344332.P15774616818078422696

`∩[A097752(n+1), A371287(n+1)]`
-/

namespace A344332.P15774616818078422696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344332.P15774616818078422696

/-! ## A344332.P5910458966553140443

`∩[A111200(n+1), A318981(n+1)]`
-/

namespace A344332.P5910458966553140443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344332.P5910458966553140443

/-!
# A344333: Primitive side of squares of type 1 (A344331) that are tiled with squares of two different sizes so that the number of large or small squares is the same.

The programs for A344333, there is no canonical definition to state claims against.
-/

/-! ## A344333.P10191936162342511148

`∩[A178210(n+1), A345285(n+1)]`
-/

namespace A344333.P10191936162342511148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344333.P10191936162342511148

/-! ## A344333.P11428090961633539525

`A345285(gcd(A337270(n)!, A031943(n+1)))`
-/

namespace A344333.P11428090961633539525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345285 (Int.gcd (Nat.factorial (A337270 n).toNat : ℤ) (A031943 (n + 1)))

end

end A344333.P11428090961633539525

/-! ## A344333.P7447367039772680392

`A345285(A217111(n+1)+A031943(n+1))`
-/

namespace A344333.P7447367039772680392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345285 (A217111 (n + 1) + A031943 (n + 1)).toNat

end

end A344333.P7447367039772680392

/-! ## A344333.P8572922172188840407

`A345285(A217111(n+1)+A039215(n+1))`
-/

namespace A344333.P8572922172188840407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345285 (A217111 (n + 1) + A039215 (n + 1)).toNat

end

end A344333.P8572922172188840407

/-! ## A344333.P3590005694512152318

`A345285(A224921(n+1)+A032559(n+1))`
-/

namespace A344333.P3590005694512152318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345285 (A224921 (n + 1) + A032559 (n + 1)).toNat

end

end A344333.P3590005694512152318

/-!
# A344334: a(n) is the number of large or small squares that are used to tile primitive squares of type 1 whose length of side is A344333(n).

The programs for A344334, there is no canonical definition to state claims against.
-/

/-! ## A344334.P4267037590010179562

`A345286(A031943(n+1)%A019332(n+1))`
-/

namespace A344334.P4267037590010179562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345286 (Int.tmod (A031943 (n + 1)) (A019332 (n + 1))).toNat

end

end A344334.P4267037590010179562

/-! ## A344334.P9167226576332909100

`A345286(A039215(n+1)%A019332(n+1))`
-/

namespace A344334.P9167226576332909100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345286 (Int.tmod (A039215 (n + 1)) (A019332 (n + 1))).toNat

end

end A344334.P9167226576332909100

/-! ## A344334.P14951981622924930859

`A345286(lcm(A031943(n+1), A292777(n+1)))`
-/

namespace A344334.P14951981622924930859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345286 (Int.lcm (A031943 (n + 1)) (A292777 (n + 1)))

end

end A344334.P14951981622924930859

/-! ## A344334.P8540432280377752077

`A345286(A031943(n+1)%A114007(n))`
-/

namespace A344334.P8540432280377752077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345286 (Int.tmod (A031943 (n + 1)) (A114007 n)).toNat

end

end A344334.P8540432280377752077

/-! ## A344334.P13216452529708584674

`A345286(A039215(n+1)%A114007(n))`
-/

namespace A344334.P13216452529708584674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345286 (Int.tmod (A039215 (n + 1)) (A114007 n)).toNat

end

end A344334.P13216452529708584674

/-!
# A344335: Number of divisors of n^8.

The programs for A344335, the canonical program `A344335.P9690583649130130250` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344335 has offset 1).

The definition of A344335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344335.P9690583649130130250

`∏{e}[n+1, 8*#+1]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A344335

/-- `∏{e}[n+1, 8*#+1]` -/
def P9690583649130130250.Spec : Prop :=
  ∀ n, (P9690583649130130250.a n : ℤ) = A344335 (n + 1)

theorem P9690583649130130250.correct : P9690583649130130250.Spec := by
  intro n
  simp only [A344335, Nat.add_sub_cancel]

end A344335

/-! ## A344335.P10150953468587320734

`∑{d}[n+1, 8^A001221(#)]`
-/

namespace A344335.P10150953468587320734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (8 : ℚ) ^ (A001221 d : ℤ)

end

end A344335.P10150953468587320734

namespace A344335

/-- `∑{d}[n+1, 8^A001221(#)]` -/
def P10150953468587320734.Spec : Prop :=
  ∀ n, P10150953468587320734.a n = (A344335 (n + 1) : ℚ)

end A344335

/-! ## A344335.P1251740256298058187

`8*(A016003(n+1)-1)+1`
-/

namespace A344335.P1251740256298058187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A016003 (n + 1) - 1) + 1

end

end A344335.P1251740256298058187

namespace A344335

/-- `8*(A016003(n+1)-1)+1` -/
def P1251740256298058187.Spec : Prop :=
  ∀ n, P1251740256298058187.a n = A344335 (n + 1)

end A344335

/-! ## A344335.P10056342481552689156

`∑{d}[n+1, A000578(A034444(#))]`
-/

namespace A344335.P10056342481552689156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 (A034444 d).toNat

end

end A344335.P10056342481552689156

namespace A344335

/-- `∑{d}[n+1, A000578(A034444(#))]` -/
def P10056342481552689156.Spec : Prop :=
  ∀ n, P10056342481552689156.a n = A344335 (n + 1)

end A344335

/-! ## A344335.P17507240335792009399

`A017077(A016003(n+1)-1)`
-/

namespace A344335.P17507240335792009399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A016003 (n + 1) - 1).toNat

end

end A344335.P17507240335792009399

namespace A344335

/-- `A017077(A016003(n+1)-1)` -/
def P17507240335792009399.Spec : Prop :=
  ∀ n, P17507240335792009399.a n = A344335 (n + 1)

end A344335

/-! ## A344335.P2797439515142003697

`sqrt(∏{e}[(n+1)², A273384(#+#)])`
-/

namespace A344335.P2797439515142003697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n), A273384 (Nat.factorization (f1 n) p + Nat.factorization (f1 n) p) : ℤ) : ℝ)

end

end A344335.P2797439515142003697

namespace A344335

/-- `sqrt(∏{e}[(n+1)², A273384(#+#)])` -/
def P2797439515142003697.Spec : Prop :=
  ∀ n, P2797439515142003697.a n = (A344335 (n + 1) : ℝ)

end A344335

/-! ## A344335.P12326445648510368259

`A343656(A005408(n)+A000217(n+7)+8)`
-/

namespace A344335.P12326445648510368259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343656 (A005408 n + (A000217 (n + 7) + 8)).toNat

end

end A344335.P12326445648510368259

namespace A344335

/-- `A343656(A005408(n)+A000217(n+7)+8)` -/
def P12326445648510368259.Spec : Prop :=
  ∀ n, P12326445648510368259.a n = A344335 (n + 1)

end A344335

/-! ## A344335.P16680275570457059046

`A344327(A278254(n+1))`
-/

namespace A344335.P16680275570457059046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344327 (A278254 (n + 1)).toNat

end

end A344335.P16680275570457059046

namespace A344335

/-- `A344327(A278254(n+1))` -/
def P16680275570457059046.Spec : Prop :=
  ∀ n, P16680275570457059046.a n = A344335 (n + 1)

end A344335

/-! ## A344335.P11690827294938812425

`A344327((n+1)²)`
-/

namespace A344335.P11690827294938812425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344327 ((n + 1) ^ 2)

end

end A344335.P11690827294938812425

namespace A344335

/-- `A344327((n+1)²)` -/
def P11690827294938812425.Spec : Prop :=
  ∀ n, P11690827294938812425.a n = A344335 (n + 1)

end A344335

/-! ## A344335.P17447836325657524576

`∑{d}[A000290(n+1), A034444(#)²]`
-/

namespace A344335.P17447836325657524576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A034444 d ^ 2

end

end A344335.P17447836325657524576

namespace A344335

/-- `∑{d}[A000290(n+1), A034444(#)²]` -/
def P17447836325657524576.Spec : Prop :=
  ∀ n, P17447836325657524576.a n = A344335 (n + 1)

end A344335

/-!
# A344336: Number of divisors of n^9.

The programs for A344336, the canonical program `A344336.P14406169467588826250` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344336 has offset 1).

The definition of A344336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344336.P14406169467588826250

`∏{e}[n+1, 9*#+1]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A344336

/-- `∏{e}[n+1, 9*#+1]` -/
def P14406169467588826250.Spec : Prop :=
  ∀ n, (P14406169467588826250.a n : ℤ) = A344336 (n + 1)

theorem P14406169467588826250.correct : P14406169467588826250.Spec := by
  intro n
  simp only [A344336, Nat.add_sub_cancel]

end A344336

/-! ## A344336.P9123434990351869675

`∑{d}[n+1, A344337(#)]`
-/

namespace A344336.P9123434990351869675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344337 d

end

end A344336.P9123434990351869675

namespace A344336

/-- `∑{d}[n+1, A344337(#)]` -/
def P9123434990351869675.Spec : Prop :=
  ∀ n, P9123434990351869675.a n = A344336 (n + 1)

end A344336

/-! ## A344336.P13049584014428986352

`∑{d}[n+1, A074816(#)²]`
-/

namespace A344336.P13049584014428986352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074816 d ^ 2

end

end A344336.P13049584014428986352

namespace A344336

/-- `∑{d}[n+1, A074816(#)²]` -/
def P13049584014428986352.Spec : Prop :=
  ∀ n, P13049584014428986352.a n = A344336 (n + 1)

end A344336

/-! ## A344336.P673761549570528393

`∑{d}[n+1, 9^A001221(#)]`
-/

namespace A344336.P673761549570528393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (9 : ℚ) ^ (A001221 d : ℤ)

end

end A344336.P673761549570528393

namespace A344336

/-- `∑{d}[n+1, 9^A001221(#)]` -/
def P673761549570528393.Spec : Prop :=
  ∀ n, P673761549570528393.a n = (A344336 (n + 1) : ℚ)

end A344336

/-! ## A344336.P12401475950879247622

`abs(∏{e}[(n+1)², #-A061870(#+1)])`
-/

namespace A344336.P12401475950879247622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - A061870 (Nat.factorization (f1 n) p + 1))|

end

end A344336.P12401475950879247622

namespace A344336

/-- `abs(∏{e}[(n+1)², #-A061870(#+1)])` -/
def P12401475950879247622.Spec : Prop :=
  ∀ n, P12401475950879247622.a n = A344336 (n + 1)

end A344336

/-!
# A344337: a(n) = 9^omega(n), where omega(n) is the number of distinct primes dividing n.

The programs for A344337, the canonical program `A344337.P17958014122864807732` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344337 has offset 1).

The definition of A344337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344337.P17958014122864807732

`∏{p}[n+1, dr(9*#)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A344337

/-- `∏{p}[n+1, dr(9*#)]` -/
def P17958014122864807732.Spec : Prop :=
  ∀ n, (P17958014122864807732.a n : ℤ) = A344337 (n + 1)

theorem P17958014122864807732.correct : P17958014122864807732.Spec := by
  intro n
  simp only [A344337, Nat.add_sub_cancel]

end A344337

/-! ## A344337.P12939966375425568586

`∏{e}[n+1, dr(9*#)]`
-/

namespace A344337.P12939966375425568586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.digitalRoot (9 * Nat.factorization (f1 n) p : ℤ)

end

end A344337.P12939966375425568586

namespace A344337

/-- `∏{e}[n+1, dr(9*#)]` -/
def P12939966375425568586.Spec : Prop :=
  ∀ n, (P12939966375425568586.a n : ℤ) = A344337 (n + 1)

end A344337

/-! ## A344337.P10641573328879710627

`∏{p}[n+1, 9%(5*#)]`
-/

namespace A344337.P10641573328879710627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 9 % (5 * p)

end

end A344337.P10641573328879710627

namespace A344337

/-- `∏{p}[n+1, 9%(5*#)]` -/
def P10641573328879710627.Spec : Prop :=
  ∀ n, (P10641573328879710627.a n : ℤ) = A344337 (n + 1)

end A344337

/-! ## A344337.P10390973185446445169

`∏{p}[n+1, val(#, 4)+9]`
-/

namespace A344337.P10390973185446445169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation p 4 + 9)

end

end A344337.P10390973185446445169

namespace A344337

/-- `∏{p}[n+1, val(#, 4)+9]` -/
def P10390973185446445169.Spec : Prop :=
  ∀ n, (P10390973185446445169.a n : ℤ) = A344337 (n + 1)

end A344337

/-! ## A344337.P5012954147167675524

`∏{p}[n+1, gcd(9, 9*#)]`
-/

namespace A344337.P5012954147167675524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd 9 (9 * p)

end

end A344337.P5012954147167675524

namespace A344337

/-- `∏{p}[n+1, gcd(9, 9*#)]` -/
def P5012954147167675524.Spec : Prop :=
  ∀ n, (P5012954147167675524.a n : ℤ) = A344337 (n + 1)

end A344337

/-! ## A344337.P16702837114960342516

`∏{p}[n+1, or(9, #%2)]`
-/

namespace A344337.P16702837114960342516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.lor 9 (p % 2)

end

end A344337.P16702837114960342516

namespace A344337

/-- `∏{p}[n+1, or(9, #%2)]` -/
def P16702837114960342516.Spec : Prop :=
  ∀ n, (P16702837114960342516.a n : ℤ) = A344337 (n + 1)

end A344337

/-! ## A344337.P784504644535285328

`9^∑{p}[n+1, gcd(n, #)]`
-/

namespace A344337.P784504644535285328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)

end

end A344337.P784504644535285328

namespace A344337

/-- `9^∑{p}[n+1, gcd(n, #)]` -/
def P784504644535285328.Spec : Prop :=
  ∀ n, (P784504644535285328.a n : ℤ) = A344337 (n + 1)

end A344337

/-! ## A344337.P14269265996878323090

`∏{p}[n+1, (3%#²)²]`
-/

namespace A344337.P14269265996878323090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (3 % p ^ 2) ^ 2

end

end A344337.P14269265996878323090

namespace A344337

/-- `∏{p}[n+1, (3%#²)²]` -/
def P14269265996878323090.Spec : Prop :=
  ∀ n, (P14269265996878323090.a n : ℤ) = A344337 (n + 1)

end A344337

/-! ## A344337.P3203807257282120288

`3^∑{p}[n+1, 2%#²]`
-/

namespace A344337.P3203807257282120288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ p ∈ Nat.primeFactors (f1 n), 2 % p ^ 2)

end

end A344337.P3203807257282120288

namespace A344337

/-- `3^∑{p}[n+1, 2%#²]` -/
def P3203807257282120288.Spec : Prop :=
  ∀ n, (P3203807257282120288.a n : ℤ) = A344337 (n + 1)

end A344337

/-! ## A344337.P4667736329195861413

`∏{e}[n+1, root(3^#, #)²]`
-/

namespace A344337.P4667736329195861413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((3 ^ Nat.factorization (f1 n) p : ℝ) ^ (1 / (Nat.factorization (f1 n) p : ℝ))) ^ 2

end

end A344337.P4667736329195861413

namespace A344337

/-- `∏{e}[n+1, root(3^#, #)²]` -/
def P4667736329195861413.Spec : Prop :=
  ∀ n, P4667736329195861413.a n = (A344337 (n + 1) : ℝ)

end A344337

/-! ## A344337.P13239020158694488711

`∏{p}[n+1, or(-3, #²)²]`
-/

namespace A344337.P13239020158694488711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.lor (-3) (p ^ 2 : ℤ) ^ 2

end

end A344337.P13239020158694488711

namespace A344337

/-- `∏{p}[n+1, or(-3, #²)²]` -/
def P13239020158694488711.Spec : Prop :=
  ∀ n, P13239020158694488711.a n = A344337 (n + 1)

end A344337

/-! ## A344337.P17191902762668370433

`∏{p}[n+1, xor(#, xor(3, #))]²`
-/

namespace A344337.P17191902762668370433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.xor p (Nat.xor 3 p)) ^ 2

end

end A344337.P17191902762668370433

namespace A344337

/-- `∏{p}[n+1, xor(#, xor(3, #))]²` -/
def P17191902762668370433.Spec : Prop :=
  ∀ n, (P17191902762668370433.a n : ℤ) = A344337 (n + 1)

end A344337

/-! ## A344337.P11470285699225623463

`∏{e}[n+1, xor(#, xor(3, #))]²`
-/

namespace A344337.P11470285699225623463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.xor (Nat.factorization (f1 n) p) (Nat.xor 3 (Nat.factorization (f1 n) p))) ^ 2

end

end A344337.P11470285699225623463

namespace A344337

/-- `∏{e}[n+1, xor(#, xor(3, #))]²` -/
def P11470285699225623463.Spec : Prop :=
  ∀ n, (P11470285699225623463.a n : ℤ) = A344337 (n + 1)

end A344337

/-! ## A344337.P3667594536827079838

`∏{e}[∏{p}[n+1, #], #+2]²`
-/

namespace A344337.P3667594536827079838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 2)) ^ 2

end

end A344337.P3667594536827079838

namespace A344337

/-- `∏{e}[∏{p}[n+1, #], #+2]²` -/
def P3667594536827079838.Spec : Prop :=
  ∀ n, (P3667594536827079838.a n : ℤ) = A344337 (n + 1)

end A344337

/-! ## A344337.P9247660370689375976

`(3^∑{e}[∏{p}[n+1, #], #])²`
-/

namespace A344337.P9247660370689375976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) ^ 2

end

end A344337.P9247660370689375976

namespace A344337

/-- `(3^∑{e}[∏{p}[n+1, #], #])²` -/
def P9247660370689375976.Spec : Prop :=
  ∀ n, (P9247660370689375976.a n : ℤ) = A344337 (n + 1)

end A344337

/-! ## A344337.P803569400263443104

`(3^∑{e}[n+1, round(tanh(#))])²`
-/

namespace A344337.P803569400263443104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.tanh (Nat.factorization (f1 n) p : ℝ)) : ℤ)) ^ 2

end

end A344337.P803569400263443104

namespace A344337

/-- `(3^∑{e}[n+1, round(tanh(#))])²` -/
def P803569400263443104.Spec : Prop :=
  ∀ n, P803569400263443104.a n = (A344337 (n + 1) : ℚ)

end A344337

/-! ## A344337.P497878494444439509

`∏{p}[n+1, (n+1)%#+9]`
-/

namespace A344337.P497878494444439509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((n + 1) % p + 9)

end

end A344337.P497878494444439509

namespace A344337

/-- `∏{p}[n+1, (n+1)%#+9]` -/
def P497878494444439509.Spec : Prop :=
  ∀ n, (P497878494444439509.a n : ℤ) = A344337 (n + 1)

end A344337

/-! ## A344337.P13119241213436776393

`∏{p}[n+1, C(#, n+2)+9]`
-/

namespace A344337.P13119241213436776393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.choose p (n + 2) + 9)

end

end A344337.P13119241213436776393

namespace A344337

/-- `∏{p}[n+1, C(#, n+2)+9]` -/
def P13119241213436776393.Spec : Prop :=
  ∀ n, (P13119241213436776393.a n : ℤ) = A344337 (n + 1)

end A344337

/-! ## A344337.P7262439547034748319

`∏{e}[n+1, val(#, n+1)+3]²`
-/

namespace A344337.P7262439547034748319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (Nat.factorization (f1 n) p) (n + 1) + 3)) ^ 2

end

end A344337.P7262439547034748319

namespace A344337

/-- `∏{e}[n+1, val(#, n+1)+3]²` -/
def P7262439547034748319.Spec : Prop :=
  ∀ n, (P7262439547034748319.a n : ℤ) = A344337 (n + 1)

end A344337

/-! ## A344337.P7716710818059516538

`∏{e}[n+1, C(#, n+1)+3]²`
-/

namespace A344337.P7716710818059516538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.choose (Nat.factorization (f1 n) p) (n + 1) + 3)) ^ 2

end

end A344337.P7716710818059516538

namespace A344337

/-- `∏{e}[n+1, C(#, n+1)+3]²` -/
def P7716710818059516538.Spec : Prop :=
  ∀ n, (P7716710818059516538.a n : ℤ) = A344337 (n + 1)

end A344337

/-!
# A344339: a(n) is the minimal number of terms of A332520 that need to be combined with the bitwise OR operator in order to give n.

The programs for A344339, there is no canonical definition to state claims against.
-/

/-! ## A344339.P12653587759834718356

`A055640((A259153(n+1)+A112413(3*n))%A140140(3*n+1))`
-/

namespace A344339.P12653587759834718356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (Int.tmod (A259153 (n + 1) + A112413 (3 * n)) (A140140 (3 * n + 1))).toNat

end

end A344339.P12653587759834718356

/-! ## A344339.P9417280122322583715

`A000120(A000120(lcm(n, A276597(n+1))))`
-/

namespace A344339.P9417280122322583715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 (Int.lcm (n : ℤ) (A276597 (n + 1)))).toNat

end

end A344339.P9417280122322583715

/-! ## A344339.P15357273623639804509

`A001221(A329548(3*n+2)-A376812(n))`
-/

namespace A344339.P15357273623639804509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A329548 (3 * n + 2) - A376812 n).toNat

end

end A344339.P15357273623639804509

/-! ## A344339.P8784481999117148312

`A001221(A094275(2*n+3)-2)`
-/

namespace A344339.P8784481999117148312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A094275 (2 * n + 3) - 2).toNat

end

end A344339.P8784481999117148312

/-! ## A344339.P90107853051469412

`A323022(A000330(record[A300788(n)]))`
-/

namespace A344339.P90107853051469412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A000330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A344339.P90107853051469412

/-!
# A344341: Gray-code Niven numbers: numbers divisible by the number of 1's in their binary reflected Gray code (A005811).

The programs for A344341, the canonical program `A344341.P1218540494126931545` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344341 has offset 1).

The definition of A344341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344341.P1218540494126931545

`lt[(n+1)%A005811(n+1), 1]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A344341

/-- `lt[(n+1)%A005811(n+1), 1]+1` -/
def P1218540494126931545.Spec : Prop :=
  ∀ n, (P1218540494126931545.a n : ℤ) = A344341 (n + 1)

theorem P1218540494126931545.correct : P1218540494126931545.Spec := by
  intro n
  simp only [A344341, Nat.add_sub_cancel]

end A344341

/-! ## A344341.P13908710006626249847

`eq[lcm(n, A005811(n)), A028310(n)]`
-/

namespace A344341.P13908710006626249847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A005811 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344341.P13908710006626249847

namespace A344341

/-- `eq[lcm(n, A005811(n)), A028310(n)]` -/
def P13908710006626249847.Spec : Prop :=
  ∀ n, (P13908710006626249847.a n : ℤ) = A344341 (n + 1)

end A344341

/-! ## A344341.P14467666121092734224

`lt[A087116(n), gcd(n, A005811(n))]`
-/

namespace A344341.P14467666121092734224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A005811 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344341.P14467666121092734224

namespace A344341

/-- `lt[A087116(n), gcd(n, A005811(n))]` -/
def P14467666121092734224.Spec : Prop :=
  ∀ n, (P14467666121092734224.a n : ℤ) = A344341 (n + 1)

end A344341

/-!
# A344342: Numbers k such that k and k + 1 are both Gray-code Niven numbers (A344341).

The programs for A344342, the canonical program `A344342.P1548768335190184719` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344342 has offset 1).

The definition of A344342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2017 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344342.P1548768335190184719

`A344341(lt[Δ[A344341(n+1)], 2]+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A344342

/-- `A344341(lt[Δ[A344341(n+1)], 2]+1)` -/
def P1548768335190184719.Spec : Prop :=
  ∀ n, P1548768335190184719.a n = A344342 (n + 1)

theorem P1548768335190184719.correct : P1548768335190184719.Spec := by
  intro n
  simp only [A344342, Nat.add_sub_cancel]

end A344342

/-! ## A344342.P1599754982528665162

`∑[gcd(A146432(2*n+3), A356797(n))]`
-/

namespace A344342.P1599754982528665162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A146432 (2 * n + 3)) (A356797 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344342.P1599754982528665162

namespace A344342

/-- `∑[gcd(A146432(2*n+3), A356797(n))]` -/
def P1599754982528665162.Spec : Prop :=
  ∀ n, (P1599754982528665162.a n : ℤ) = A344342 (n + 1)

end A344342

/-! ## A344342.P3146503830689282799

`record[xor(A102632(n+1), A245093(n+1))]`
-/

namespace A344342.P3146503830689282799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102632 (n + 1)) (A245093 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344342.P3146503830689282799

namespace A344342

/-- `record[xor(A102632(n+1), A245093(n+1))]` -/
def P3146503830689282799.Spec : Prop :=
  ∀ n, P3146503830689282799.a n = A344342 (n + 1)

end A344342

/-! ## A344342.P11864310948501696748

`record[xor(A198194(n+1), A333119(n+1))]`
-/

namespace A344342.P11864310948501696748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A198194 (n + 1)) (A333119 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344342.P11864310948501696748

namespace A344342

/-- `record[xor(A198194(n+1), A333119(n+1))]` -/
def P11864310948501696748.Spec : Prop :=
  ∀ n, P11864310948501696748.a n = A344342 (n + 1)

end A344342

/-!
# A344343: Starts of runs of 3 consecutive Gray-code Niven numbers (A344341).

The programs for A344343, the canonical program `A344343.P11569095817677921307` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344343 has offset 1).

The definition of A344343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344343.P17058703986305226015

`∩[A344342(n+1)-1, A344342(n+1)]`
-/

namespace A344343.P17058703986305226015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344342 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344343.P17058703986305226015

namespace A344343

/-- `∩[A344342(n+1)-1, A344342(n+1)]` -/
def P17058703986305226015.Spec : Prop :=
  ∀ n, (P17058703986305226015.a n : ℤ) = A344343 (n + 1)

end A344343

/-! ## A344343.P11569095817677921307

`A344342(eq[1, A344342(n+2)-A344342(n+1)]+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A344343

/-- `A344342(eq[1, A344342(n+2)-A344342(n+1)]+1)` -/
def P11569095817677921307.Spec : Prop :=
  ∀ n, P11569095817677921307.a n = A344343 (n + 1)

theorem P11569095817677921307.correct : P11569095817677921307.Spec := by
  intro n
  simp only [A344343, Nat.add_sub_cancel]

end A344343

/-! ## A344343.P10661853181501042920

`∩[A344342(n+1), A023443(A344342(n+1))]`
-/

namespace A344343.P10661853181501042920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A344342 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344343.P10661853181501042920

namespace A344343

/-- `∩[A344342(n+1), A023443(A344342(n+1))]` -/
def P10661853181501042920.Spec : Prop :=
  ∀ n, (P10661853181501042920.a n : ℤ) = A344343 (n + 1)

end A344343

/-! ## A344343.P7558535386164754866

`A059893(lt[n/(4*gcd(32, n+1)), n²%3])`
-/

namespace A344343.P7558535386164754866
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (4 * Nat.gcd 32 (n + 1) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A344343.P7558535386164754866

namespace A344343

/-- `A059893(lt[n/(4*gcd(32, n+1)), n²%3])` -/
def P7558535386164754866.Spec : Prop :=
  ∀ n, P7558535386164754866.a n = A344343 (n + 1)

end A344343

/-! ## A344343.P2440421400391521782

`record[A341121(A191663(n+1))]`
-/

namespace A344343.P2440421400391521782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341121 (A191663 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344343.P2440421400391521782

namespace A344343

/-- `record[A341121(A191663(n+1))]` -/
def P2440421400391521782.Spec : Prop :=
  ∀ n, P2440421400391521782.a n = A344343 (n + 1)

end A344343

/-!
# A344344: Starts of runs of 4 consecutive Gray-code Niven numbers (A344341).

The programs for A344344, the canonical program `A344344.P11501963061493860304` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344344 has offset 1).

The definition of A344344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 557 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344344.P11501963061493860304

`∩[A344343(n+1)-1, A344343(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A344344

/-- `∩[A344343(n+1)-1, A344343(n+1)]` -/
def P11501963061493860304.Spec : Prop :=
  ∀ n, (P11501963061493860304.a n : ℤ) = A344344 (n + 1)

theorem P11501963061493860304.correct : P11501963061493860304.Spec := by
  intro n
  simp only [A344344, Nat.add_sub_cancel]

end A344344

/-! ## A344344.P1412330321609668188

`∩[A344342(n+1)-2, A344342(n+1)]`
-/

namespace A344344.P1412330321609668188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344342 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344344.P1412330321609668188

namespace A344344

/-- `∩[A344342(n+1)-2, A344342(n+1)]` -/
def P1412330321609668188.Spec : Prop :=
  ∀ n, (P1412330321609668188.a n : ℤ) = A344344 (n + 1)

end A344344

/-!
# A344345: Digitally balanced numbers in Gray code: numbers whose binary reflected Gray code has the same number of 0's as 1's.

The programs for A344345, the canonical program `A344345.P14857744057970681340` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344345 has offset 1).

The definition of A344345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344345.P14857744057970681340

`eq[1, A320042(n+1)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A344345

/-- `eq[1, A320042(n+1)]+1` -/
def P14857744057970681340.Spec : Prop :=
  ∀ n, (P14857744057970681340.a n : ℤ) = A344345 (n + 1)

theorem P14857744057970681340.correct : P14857744057970681340.Spec := by
  intro n
  simp only [A344345, Nat.add_sub_cancel]

end A344345

/-! ## A344345.P17658998315731936080

`eq[A088748(n), A227185(n)]`
-/

namespace A344345.P17658998315731936080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344345.P17658998315731936080

namespace A344345

/-- `eq[A088748(n), A227185(n)]` -/
def P17658998315731936080.Spec : Prop :=
  ∀ n, (P17658998315731936080.a n : ℤ) = A344345 (n + 1)

end A344345

/-! ## A344345.P5934713394508922784

`eq[A005811(n)+1, A227185(n)]`
-/

namespace A344345.P5934713394508922784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344345.P5934713394508922784

namespace A344345

/-- `eq[A005811(n)+1, A227185(n)]` -/
def P5934713394508922784.Spec : Prop :=
  ∀ n, (P5934713394508922784.a n : ℤ) = A344345 (n + 1)

end A344345

/-! ## A344345.P2689995565646623412

`A341911(A031443(n+1))`
-/

namespace A344345.P2689995565646623412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341911 (A031443 (n + 1)).toNat

end

end A344345.P2689995565646623412

namespace A344345

/-- `A341911(A031443(n+1))` -/
def P2689995565646623412.Spec : Prop :=
  ∀ n, P2689995565646623412.a n = A344345 (n + 1)

end A344345

/-! ## A344345.P3968774600672845969

`A341911(eq[0, A037861(n)])`
-/

namespace A344345.P3968774600672845969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A344345.P3968774600672845969

namespace A344345

/-- `A341911(eq[0, A037861(n)])` -/
def P3968774600672845969.Spec : Prop :=
  ∀ n, P3968774600672845969.a n = A344345 (n + 1)

end A344345

/-! ## A344345.P6945341289927338804

`A341911(eq[A000120(n), A023416(n)])`
-/

namespace A344345.P6945341289927338804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341911 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A344345.P6945341289927338804

namespace A344345

/-- `A341911(eq[A000120(n), A023416(n)])` -/
def P6945341289927338804.Spec : Prop :=
  ∀ n, P6945341289927338804.a n = A344345 (n + 1)

end A344345

/-! ## A344345.P3895636010100292746

`eq[A088748(2*n+1)+A088748(2*n), A007456(4*n+1)]`
-/

namespace A344345.P3895636010100292746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (2 * n + 1) + A088748 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344345.P3895636010100292746

namespace A344345

/-- `eq[A088748(2*n+1)+A088748(2*n), A007456(4*n+1)]` -/
def P3895636010100292746.Spec : Prop :=
  ∀ n, (P3895636010100292746.a n : ℤ) = A344345 (n + 1)

end A344345

/-!
# A344346: Numbers k which have an odd number of trailing zeros in their binary reflected Gray code A014550(k).

The programs for A344346, the canonical program `A344346.P16964101836230254873` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344346 has offset 1).

The definition of A344346 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081706, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344346.P16964101836230254873

`A081706(n+1)+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344346

/-- `A081706(n+1)+1` -/
def P16964101836230254873.Spec : Prop :=
  ∀ n, P16964101836230254873.a n = A344346 (n + 1)

theorem P16964101836230254873.correct : P16964101836230254873.Spec := by
  intro n
  simp only [A344346, Nat.add_sub_cancel]

end A344346

/-! ## A344346.P11016358425093090706

`eq[1, and(n+1, -n)%3]`
-/

namespace A344346.P11016358425093090706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n + 1 : ℤ) (-(n : ℤ))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344346.P11016358425093090706

namespace A344346

/-- `eq[1, and(n+1, -n)%3]` -/
def P11016358425093090706.Spec : Prop :=
  ∀ n, (P11016358425093090706.a n : ℤ) = A344346 (n + 1)

end A344346

/-! ## A344346.P14788076382490981698

`eq[0, xor(n+1, n-1)%3]`
-/

namespace A344346.P14788076382490981698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n + 1 : ℤ) ((n : ℤ) - 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344346.P14788076382490981698

namespace A344346

/-- `eq[0, xor(n+1, n-1)%3]` -/
def P14788076382490981698.Spec : Prop :=
  ∀ n, (P14788076382490981698.a n : ℤ) = A344346 (n + 1)

end A344346

/-! ## A344346.P8925933590124143702

`eq[0, xor(n, n+2)%3]+1`
-/

namespace A344346.P8925933590124143702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 2) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344346.P8925933590124143702

namespace A344346

/-- `eq[0, xor(n, n+2)%3]+1` -/
def P8925933590124143702.Spec : Prop :=
  ∀ n, (P8925933590124143702.a n : ℤ) = A344346 (n + 1)

theorem P8925933590124143702.correct : P8925933590124143702.Spec := by
  intro n
  simp only [A344346, Nat.add_sub_cancel, A344346.P8925933590124143702.f1, A344346.P8925933590124143702.f2, A344346.P8925933590124143702.a, A344346.P16964101836230254873.a, A081706, A081706.P2549860807253607026.f1, A081706.P2549860807253607026.f2, A081706.P2549860807253607026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344346

/-! ## A344346.P9759065430913095353

`2*A284392(n+1)-(n+3)`
-/

namespace A344346.P9759065430913095353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284392 (n + 1) - (n + 3 : ℤ)

end

end A344346.P9759065430913095353

namespace A344346

/-- `2*A284392(n+1)-(n+3)` -/
def P9759065430913095353.Spec : Prop :=
  ∀ n, P9759065430913095353.a n = A344346 (n + 1)

end A344346

/-! ## A344346.P7125742363032075388

`lt[3, A020639(and(n+1, -n)+1)]`
-/

namespace A344346.P7125742363032075388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.land (n + 1 : ℤ) (-(n : ℤ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344346.P7125742363032075388

namespace A344346

/-- `lt[3, A020639(and(n+1, -n)+1)]` -/
def P7125742363032075388.Spec : Prop :=
  ∀ n, (P7125742363032075388.a n : ℤ) = A344346 (n + 1)

end A344346

/-! ## A344346.P12385175970848456427

`∪[A108269(n+1), A131323(n+1)]`
-/

namespace A344346.P12385175970848456427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344346.P12385175970848456427

namespace A344346

/-- `∪[A108269(n+1), A131323(n+1)]` -/
def P12385175970848456427.Spec : Prop :=
  ∀ n, (P12385175970848456427.a n : ℤ) = A344346 (n + 1)

end A344346

/-! ## A344346.P14716761366969081976

`eq[1, A316826(floor(2*(n+1)/4))]`
-/

namespace A344346.P14716761366969081976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 ⌊(2 * (n + 1) : ℚ) / 4⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344346.P14716761366969081976

namespace A344346

/-- `eq[1, A316826(floor(2*(n+1)/4))]` -/
def P14716761366969081976.Spec : Prop :=
  ∀ n, (P14716761366969081976.a n : ℤ) = A344346 (n + 1)

end A344346

/-! ## A344346.P16498452715707836718

`lt[2, A260738(and(n+1, -n)+1)]`
-/

namespace A344346.P16498452715707836718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (Int.land (n + 1 : ℤ) (-(n : ℤ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344346.P16498452715707836718

namespace A344346

/-- `lt[2, A260738(and(n+1, -n)+1)]` -/
def P16498452715707836718.Spec : Prop :=
  ∀ n, (P16498452715707836718.a n : ℤ) = A344346 (n + 1)

end A344346

/-! ## A344346.P4290332031263226601

`record[or(2, A161641(n+1))+1]`
-/

namespace A344346.P4290332031263226601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A161641 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344346.P4290332031263226601

namespace A344346

/-- `record[or(2, A161641(n+1))+1]` -/
def P4290332031263226601.Spec : Prop :=
  ∀ n, P4290332031263226601.a n = A344346 (n + 1)

end A344346

/-! ## A344346.P16119124414176342392

`A161641(A014601(n+1))+1`
-/

namespace A344346.P16119124414176342392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161641 (A014601 (n + 1)).toNat + 1

end

end A344346.P16119124414176342392

namespace A344346

/-- `A161641(A014601(n+1))+1` -/
def P16119124414176342392.Spec : Prop :=
  ∀ n, P16119124414176342392.a n = A344346 (n + 1)

end A344346

/-! ## A344346.P4665361356620824013

`A161641(A154708(n+1))+1`
-/

namespace A344346.P4665361356620824013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161641 (A154708 (n + 1)).toNat + 1

end

end A344346.P4665361356620824013

namespace A344346

/-- `A161641(A154708(n+1))+1` -/
def P4665361356620824013.Spec : Prop :=
  ∀ n, P4665361356620824013.a n = A344346 (n + 1)

end A344346

/-! ## A344346.P6977401610934126393

`A161641(A042964(n+1))+2`
-/

namespace A344346.P6977401610934126393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161641 (A042964 (n + 1)).toNat + 2

end

end A344346.P6977401610934126393

namespace A344346

/-- `A161641(A042964(n+1))+2` -/
def P6977401610934126393.Spec : Prop :=
  ∀ n, P6977401610934126393.a n = A344346 (n + 1)

end A344346

/-! ## A344346.P11413129877080835239

`A161641(A053438(n+1))+2`
-/

namespace A344346.P11413129877080835239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161641 (A053438 (n + 1)).toNat + 2

end

end A344346.P11413129877080835239

namespace A344346

/-- `A161641(A053438(n+1))+2` -/
def P11413129877080835239.Spec : Prop :=
  ∀ n, P11413129877080835239.a n = A344346 (n + 1)

end A344346

/-! ## A344346.P15927464816097070885

`A121539(A284392(n+1))`
-/

namespace A344346.P15927464816097070885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121539 (A284392 (n + 1)).toNat

end

end A344346.P15927464816097070885

namespace A344346

/-- `A121539(A284392(n+1))` -/
def P15927464816097070885.Spec : Prop :=
  ∀ n, P15927464816097070885.a n = A344346 (n + 1)

end A344346

/-! ## A344346.P4022742659930521503

`A003159(A284392(n+1)-1)`
-/

namespace A344346.P4022742659930521503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (A284392 (n + 1) - 1).toNat

end

end A344346.P4022742659930521503

namespace A344346

/-- `A003159(A284392(n+1)-1)` -/
def P4022742659930521503.Spec : Prop :=
  ∀ n, P4022742659930521503.a n = A344346 (n + 1)

end A344346

/-! ## A344346.P2310811085182882513

`filter[A121539(n+2), A035263(#)]`
-/

namespace A344346.P2310811085182882513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121539 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A344346.P2310811085182882513

namespace A344346

/-- `filter[A121539(n+2), A035263(#)]` -/
def P2310811085182882513.Spec : Prop :=
  ∀ n, P2310811085182882513.a n = A344346 (n + 1)

end A344346

/-! ## A344346.P6310456523361194892

`A004273(A284392(n+1)-1)-n`
-/

namespace A344346.P6310456523361194892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A284392 (n + 1) - 1).toNat - (n : ℤ)

end

end A344346.P6310456523361194892

namespace A344346

/-- `A004273(A284392(n+1)-1)-n` -/
def P6310456523361194892.Spec : Prop :=
  ∀ n, P6310456523361194892.a n = A344346 (n + 1)

end A344346

/-!
# A344347: Numbers k such that sigma(k)^2 is divisible by k-1.

The programs for A344347, there is no canonical definition to state claims against.
-/

/-! ## A344347.P2962634365409543189

`eq[n, gcd(n, A000203(n+1)²)]+1`
-/

namespace A344347.P2962634365409543189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000203 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344347.P2962634365409543189

/-!
# A344348: a(n) = floor(frac(e * n) * n).

The programs for A344348, the canonical program `A344348.P15733958830858671622` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344348 has offset 0).

The definition of A344348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344348.P1837002651356594247

`floor(e*n²)-n*floor(e*n)`
-/

namespace A344348.P1837002651356594247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n ^ 2 : ℝ)⌋ - (n : ℤ) * ⌊Real.exp 1 * (n : ℝ)⌋

end

end A344348.P1837002651356594247

namespace A344348

/-- `floor(e*n²)-n*floor(e*n)` -/
def P1837002651356594247.Spec : Prop :=
  ∀ n, P1837002651356594247.a n = A344348 n

end A344348

/-! ## A344348.P8693023792753287374

`floor(e*n²)%(C(2, n+2)+n)`
-/

namespace A344348.P8693023792753287374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.exp 1 * (n ^ 2 : ℝ)⌋ (Nat.choose 2 (n + 2) + n : ℤ)

end

end A344348.P8693023792753287374

namespace A344348

/-- `floor(e*n²)%(C(2, n+2)+n)` -/
def P8693023792753287374.Spec : Prop :=
  ∀ n, P8693023792753287374.a n = A344348 n

end A344348

/-! ## A344348.P15733958830858671622

`A293412(n)%A028310(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344348

/-- `A293412(n)%A028310(n)` -/
def P15733958830858671622.Spec : Prop :=
  ∀ n, P15733958830858671622.a n = A344348 n

theorem P15733958830858671622.correct : P15733958830858671622.Spec := by
  intro n
  simp only [A344348]

end A344348

/-! ## A344348.P9252363145611423201

`(A293413(n)-1)%A028310(n)`
-/

namespace A344348.P9252363145611423201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293413 n - 1) (A028310 n)

end

end A344348.P9252363145611423201

namespace A344348

/-- `(A293413(n)-1)%A028310(n)` -/
def P9252363145611423201.Spec : Prop :=
  ∀ n, P9252363145611423201.a n = A344348 n

end A344348

/-! ## A344348.P4719010267379707858

`A293412(A233583(n+1))%A233583(n+1)`
-/

namespace A344348.P4719010267379707858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293412 (A233583 (n + 1)).toNat) (A233583 (n + 1))

end

end A344348.P4719010267379707858

namespace A344348

/-- `A293412(A233583(n+1))%A233583(n+1)` -/
def P4719010267379707858.Spec : Prop :=
  ∀ n, P4719010267379707858.a n = A344348 n

end A344348

/-! ## A344348.P3242306285246484492

`A022843(n²)%floor(sqrt(n²+4))`
-/

namespace A344348.P3242306285246484492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022843 (n ^ 2)) (Nat.sqrt (n ^ 2 + 4) : ℤ)

end

end A344348.P3242306285246484492

namespace A344348

/-- `A022843(n²)%floor(sqrt(n²+4))` -/
def P3242306285246484492.Spec : Prop :=
  ∀ n, P3242306285246484492.a n = A344348 n

end A344348

/-!
# A344349: Number of primes along the main antidiagonal of the n X n square array whose elements are the numbers from 1..n^2, listed in increasing order by rows.

The programs for A344349, there is no canonical definition to state claims against.
-/

/-! ## A344349.P896900926463844044

`A221491(n+1)+A010051(n+1)`
-/

namespace A344349.P896900926463844044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221491 (n + 1) + A010051 (n + 1)

end

end A344349.P896900926463844044

/-! ## A344349.P13799431425312069396

`A221491(n+1)+abs(A129950(n+1))`
-/

namespace A344349.P13799431425312069396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221491 (n + 1) + |A129950 (n + 1)|

end

end A344349.P13799431425312069396

/-! ## A344349.P3582769666899596640

`A221491(n+1)+char[record[A000010(n+1)]]`
-/

namespace A344349.P3582769666899596640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221491 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A344349.P3582769666899596640

/-! ## A344349.P1439658465491745594

`A221491(n+1)+char[A000040(n+1)-1]`
-/

namespace A344349.P1439658465491745594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221491 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A344349.P1439658465491745594

/-! ## A344349.P3924554414542738614

`A221491(n+1)+char[A006530(n+2)-1]`
-/

namespace A344349.P3924554414542738614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221491 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A344349.P3924554414542738614

/-! ## A344349.P13672583571795560497

`A221491(n+1)+char[A020639(n+2)-1]`
-/

namespace A344349.P13672583571795560497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221491 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A344349.P13672583571795560497

/-! ## A344349.P15265684911861186462

`A221491(n+1)+A084928(A000005(n+1))`
-/

namespace A344349.P15265684911861186462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221491 (n + 1) + A084928 (A000005 (n + 1)).toNat

end

end A344349.P15265684911861186462

/-! ## A344349.P2847483650013997576

`A221491(n+1)+Δ[A230980(n)]`
-/

namespace A344349.P2847483650013997576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221491 (n + 1) + (f1 (n + 1) - f1 n)

end

end A344349.P2847483650013997576

/-! ## A344349.P8842548274672366823

`A221491(n+1)+char[A000010(A014963(n+1))]`
-/

namespace A344349.P8842548274672366823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221491 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A344349.P8842548274672366823

/-!
# A344351: Number of squarefree numbers along the main diagonal of an n X n square array whose elements are the numbers from 1..n^2, listed in increasing order by rows.

The programs for A344351, there is no canonical definition to state claims against.
-/

/-! ## A344351.P13259144224619207519

`A344374(n+2)-A209229(A000079(n))`
-/

namespace A344351.P13259144224619207519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344374 (n + 2) - A209229 (A000079 n).toNat

end

end A344351.P13259144224619207519

/-! ## A344351.P16767410623168576101

`A344374(n+2)-A289508(A017138(n))`
-/

namespace A344351.P16767410623168576101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344374 (n + 2) - A289508 (A017138 n).toNat

end

end A344351.P16767410623168576101

/-! ## A344351.P12901003701227303198

`A344374(n+2)-A007318(A108558(n))!`
-/

namespace A344351.P12901003701227303198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344374 (n + 2) - (Nat.factorial (A007318 (A108558 n).toNat).toNat : ℤ)

end

end A344351.P12901003701227303198

/-! ## A344351.P13046934336681395322

`A344374(n+2)-A177706(A344344(n+1))`
-/

namespace A344351.P13046934336681395322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344374 (n + 2) - A177706 (A344344 (n + 1)).toNat

end

end A344351.P13046934336681395322

/-!
# A344354: Numbers that are the sum of five fourth powers in four or more ways.

The programs for A344354, there is no canonical definition to state claims against.
-/

/-! ## A344354.P7807677672707472448

`∪[A344355(n+1), A344358(n+1)]`
-/

namespace A344354.P7807677672707472448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344354.P7807677672707472448

/-!
# A344355: Numbers that are the sum of five fourth powers in exactly four ways.

The programs for A344355, there is no canonical definition to state claims against.
-/

/-! ## A344355.P10914129031602437447

`A344354(lt[A344348(n), A184157(3*n+1)])`
-/

namespace A344355.P10914129031602437447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184157 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344354 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344355.P10914129031602437447

/-! ## A344355.P9506355219041314882

`A344354(n+1)%A107275(n+1)`
-/

namespace A344355.P9506355219041314882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344354 (n + 1)) (A107275 (n + 1))

end

end A344355.P9506355219041314882

/-! ## A344355.P17736672158755689017

`A344354(n+1)+A025468(A036378(n))`
-/

namespace A344355.P17736672158755689017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344354 (n + 1) + A025468 (A036378 n).toNat

end

end A344355.P17736672158755689017

/-! ## A344355.P12426546426454340444

`A344354(n+1)+A010051(A111845(n))`
-/

namespace A344355.P12426546426454340444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344354 (n + 1) + A010051 (A111845 n).toNat

end

end A344355.P12426546426454340444

/-! ## A344355.P14315272251669523734

`A344354(n+1)+A099892(A080530(n))`
-/

namespace A344355.P14315272251669523734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344354 (n + 1) + A099892 (A080530 n).toNat

end

end A344355.P14315272251669523734

/-!
# A344356: Numbers that are the sum of four fourth powers in five or more ways.

The programs for A344356, there is no canonical definition to state claims against.
-/

/-! ## A344356.P1435595338949063419

`∪[A344357(n+1), A344904(n+1)]`
-/

namespace A344356.P1435595338949063419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344356.P1435595338949063419

/-! ## A344356.P1711078462593889798

`A344357(A292125(n+1))`
-/

namespace A344356.P1711078462593889798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344357 (A292125 (n + 1)).toNat

end

end A344356.P1711078462593889798

/-!
# A344357: Numbers that are the sum of four fourth powers in exactly five ways.

The programs for A344357, there is no canonical definition to state claims against.
-/

/-! ## A344357.P12972678709871865601

`A344356(record[A086257(n)])`
-/

namespace A344357.P12972678709871865601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344356 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344357.P12972678709871865601

/-! ## A344357.P14712279617252414301

`A344356(A250482(n+1)%A250520(n+1))`
-/

namespace A344357.P14712279617252414301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344356 (Int.tmod (A250482 (n + 1)) (A250520 (n + 1))).toNat

end

end A344357.P14712279617252414301

/-! ## A344357.P13005109580648807423

`A344356(A336109(n+1)%A224322(n+3))`
-/

namespace A344357.P13005109580648807423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344356 (Int.tmod (A336109 (n + 1)) (A224322 (n + 3))).toNat

end

end A344357.P13005109580648807423

/-! ## A344357.P5126451323538440330

`A344356(A193988(n+1)%A273931(n+1))`
-/

namespace A344357.P5126451323538440330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344356 (Int.tmod (A193988 (n + 1)) (A273931 (n + 1))).toNat

end

end A344357.P5126451323538440330

/-! ## A344357.P10702612566273807740

`A344356(A336109(n+1))%A273931(n+1)`
-/

namespace A344357.P10702612566273807740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344356 (A336109 (n + 1)).toNat) (A273931 (n + 1))

end

end A344357.P10702612566273807740

/-!
# A344358: Numbers that are the sum of five fourth powers in five or more ways.

The programs for A344358, there is no canonical definition to state claims against.
-/

/-! ## A344358.P12565270569221528604

`∪[A344359(n+1), A344940(n+1)]`
-/

namespace A344358.P12565270569221528604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344358.P12565270569221528604

/-! ## A344358.P8284880958852172038

`A344359(A032551(n+2))`
-/

namespace A344358.P8284880958852172038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344359 (A032551 (n + 2)).toNat

end

end A344358.P8284880958852172038

/-! ## A344358.P2264237926110168145

`A344359((n+1)^A109538(n))`
-/

namespace A344358.P2264237926110168145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344359 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A109538 n : ℤ))).toNat

end

end A344358.P2264237926110168145

/-!
# A344359: Numbers that are the sum of five fourth powers in exactly five ways.

The programs for A344359, there is no canonical definition to state claims against.
-/

/-! ## A344359.P3292424286308929857

`A344358(lt[A002374(n+3), A229120(3*n+2)])`
-/

namespace A344359.P3292424286308929857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229120 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344359.P3292424286308929857

/-! ## A344359.P12318361748014530436

`A344358(A020660(n+1)%A300398(n+1))`
-/

namespace A344359.P12318361748014530436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344358 (Int.tmod (A020660 (n + 1)) (A300398 (n + 1))).toNat

end

end A344359.P12318361748014530436

/-! ## A344359.P1835101402324595386

`A344358(A020660(n+1))%A109178(2*n+1)`
-/

namespace A344359.P1835101402324595386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344358 (A020660 (n + 1)).toNat) (A109178 (2 * n + 1))

end

end A344359.P1835101402324595386

/-! ## A344359.P16341301120141630009

`A344358(A037143(n+1)%A295992(n+1))`
-/

namespace A344359.P16341301120141630009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344358 (Int.tmod (A037143 (n + 1)) (A295992 (n + 1))).toNat

end

end A344359.P16341301120141630009

/-!
# A344364: Numbers that are the sum of three fourth powers in five or more ways.

The programs for A344364, there is no canonical definition to state claims against.
-/

/-! ## A344364.P377885335603656437

`∪[A344365(n+1), A344647(n+1)]`
-/

namespace A344364.P377885335603656437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344364.P377885335603656437

/-!
# A344366: Integers k such that the sum of squares of digits of both k and k-1 are prime.

The programs for A344366, there is no canonical definition to state claims against.
-/

/-! ## A344366.P885009951023718977

`∩[A108662(n+1)+1, A108662(n+1)]`
-/

namespace A344366.P885009951023718977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344366.P885009951023718977

/-!
# A344368: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(1-s)).

The programs for A344368, there is no canonical definition to state claims against.
-/

/-! ## A344368.P4900972588929395311

`(n+1)*A001055(n+1)`
-/

namespace A344368.P4900972588929395311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001055 (n + 1)

end

end A344368.P4900972588929395311

/-! ## A344368.P13940486328278231334

`(n+1)*Δ[A096276(n)]`
-/

namespace A344368.P13940486328278231334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A344368.P13940486328278231334

/-! ## A344368.P14795689345048015364

`(n+1)*(A028422(n+1)+1)`
-/

namespace A344368.P14795689345048015364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A028422 (n + 1) + 1)

end

end A344368.P14795689345048015364

/-! ## A344368.P13719353578246635630

`(n+1)*A050322(A101296(n+1))`
-/

namespace A344368.P13719353578246635630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A050322 (A101296 (n + 1)).toNat

end

end A344368.P13719353578246635630

/-! ## A344368.P6956763613053785064

`(n+1)*A331049(A077462(n+1))`
-/

namespace A344368.P6956763613053785064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A331049 (A077462 (n + 1)).toNat

end

end A344368.P6956763613053785064

/-! ## A344368.P5611010481076675556

`(n+1)*A318284(A181819(n+1))`
-/

namespace A344368.P5611010481076675556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A318284 (A181819 (n + 1)).toNat

end

end A344368.P5611010481076675556

/-! ## A344368.P1162934477841909773

`(n+1)*(A096276(n+1)-A096276(n))`
-/

namespace A344368.P1162934477841909773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A096276 (n + 1) - A096276 n)

end

end A344368.P1162934477841909773

/-! ## A344368.P9300109416866835403

`(n+1)*(A057567(n+1)-A339564(n+1))`
-/

namespace A344368.P9300109416866835403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A057567 (n + 1) - A339564 (n + 1))

end

end A344368.P9300109416866835403

/-! ## A344368.P12390654215224546314

`A001055(A328399(2*n))*A328399(2*n)`
-/

namespace A344368.P12390654215224546314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A328399 (2 * n)).toNat * A328399 (2 * n)

end

end A344368.P12390654215224546314

/-! ## A344368.P11580255959006735932

`A001055(A008619(2*n))*A008619(2*n)`
-/

namespace A344368.P11580255959006735932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A008619 (2 * n)).toNat * A008619 (2 * n)

end

end A344368.P11580255959006735932

/-! ## A344368.P11828812669104787029

`A001055(A080513(2*n))*A080513(2*n)`
-/

namespace A344368.P11828812669104787029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A080513 (2 * n)).toNat * A080513 (2 * n)

end

end A344368.P11828812669104787029

/-! ## A344368.P9160584974340264672

`(n+1)*A347438((n+1)²)`
-/

namespace A344368.P9160584974340264672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A347438 ((n + 1) ^ 2)

end

end A344368.P9160584974340264672

/-! ## A344368.P11873449297556092143

`(n+1)*A066032(∑[n+1])`
-/

namespace A344368.P11873449297556092143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A066032 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344368.P11873449297556092143

/-! ## A344368.P12977472943963717145

`(n+1)*A108455(∑[n+1])`
-/

namespace A344368.P12977472943963717145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A108455 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344368.P12977472943963717145

/-!
# A344369: Dirichlet g.f.: Product_{k>=2} 1 / (1 + k^(1-s)).

The programs for A344369, there is no canonical definition to state claims against.
-/

/-! ## A344369.P4697856841528342821

`(n+1)*A316441(n+1)`
-/

namespace A344369.P4697856841528342821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A316441 (n + 1)

end

end A344369.P4697856841528342821

/-! ## A344369.P2991445887846028700

`(n+1)*A320835(A181819(n+1))`
-/

namespace A344369.P2991445887846028700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A320835 (A181819 (n + 1)).toNat

end

end A344369.P2991445887846028700

/-! ## A344369.P10659588632626781319

`(n+1)*(A339846(n+1)-A339890(n+1))`
-/

namespace A344369.P10659588632626781319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A339846 (n + 1) - A339890 (n + 1))

end

end A344369.P10659588632626781319

/-! ## A344369.P5823329932511260619

`A316441(A328399(2*n))*A328399(2*n)`
-/

namespace A344369.P5823329932511260619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A328399 (2 * n)).toNat * A328399 (2 * n)

end

end A344369.P5823329932511260619

/-! ## A344369.P17599879690397737824

`(n+1)*A112299(A349922(n+1))`
-/

namespace A344369.P17599879690397737824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112299 (A349922 (n + 1)).toNat

end

end A344369.P17599879690397737824

/-! ## A344369.P411879953755507068

`(n+1)*A102283(A339340(n+1))`
-/

namespace A344369.P411879953755507068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A102283 (A339340 (n + 1)).toNat

end

end A344369.P411879953755507068

/-!
# A344370: Dirichlet g.f.: Product_{k>=2} (1 + k^(1-s)).

The programs for A344370, there is no canonical definition to state claims against.
-/

/-! ## A344370.P872811412254503973

`(n+1)*A045778(n+1)`
-/

namespace A344370.P872811412254503973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A045778 (n + 1)

end

end A344370.P872811412254503973

/-! ## A344370.P1121787520686668967

`(n+1)*A050323(A101296(n+1))`
-/

namespace A344370.P1121787520686668967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A050323 (A101296 (n + 1)).toNat

end

end A344370.P1121787520686668967

/-! ## A344370.P5690686468091833789

`(n+1)*A318286(A181819(n+1))`
-/

namespace A344370.P5690686468091833789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A318286 (A181819 (n + 1)).toNat

end

end A344370.P5690686468091833789

/-! ## A344370.P14950624516841688872

`A000027(n+1)/tan(acot(A045778(n+1)))`
-/

namespace A344370.P14950624516841688872
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℝ) / Real.tan (SequenceMachineLib.acot (A045778 (n + 1) : ℝ))

end

end A344370.P14950624516841688872

/-! ## A344370.P6538616558212296921

`A045778(A131732(2*n))*A131732(2*n)`
-/

namespace A344370.P6538616558212296921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A131732 (2 * n)).toNat * A131732 (2 * n)

end

end A344370.P6538616558212296921

/-! ## A344370.P10235190391860709539

`A075362(A045778(n+1)+∑[n])`
-/

namespace A344370.P10235190391860709539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A045778 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A344370.P10235190391860709539

/-! ## A344370.P4418546323368404572

`(n+1)*A006530(A200213(n+1)!)`
-/

namespace A344370.P4418546323368404572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006530 (Nat.factorial (A200213 (n + 1)).toNat)

end

end A344370.P4418546323368404572

/-!
# A344371: a(n) = Sum_{k=1..n} (-1)^(n-k) gcd(k,n).

The programs for A344371, the canonical program `A344371.P8509343865360483063` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344371 has offset 1).

The definition of A344371 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199084, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344371.P8509343865360483063

`abs(A199084(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A344371

/-- `abs(A199084(n+1))` -/
def P8509343865360483063.Spec : Prop :=
  ∀ n, P8509343865360483063.a n = A344371 (n + 1)

theorem P8509343865360483063.correct : P8509343865360483063.Spec := by
  intro n
  simp only [A344371, Nat.add_sub_cancel]

end A344371

/-! ## A344371.P3665812849879486337

`A344373(n+1)+1+n`
-/

namespace A344371.P3665812849879486337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344373 (n + 1) + 1 + (n : ℤ)

end

end A344371.P3665812849879486337

namespace A344371

/-- `A344373(n+1)+1+n` -/
def P3665812849879486337.Spec : Prop :=
  ∀ n, P3665812849879486337.a n = A344371 (n + 1)

theorem P3665812849879486337.correct : P3665812849879486337.Spec := by
  intro n
  simp only [A344371, Nat.add_sub_cancel, A344371.P3665812849879486337.a, A344371.P8509343865360483063.a, A199084, A199084.P6700998896668001716.a, A344373, A344373.P3639027277485766421.a, A018804, A018804.P15177010680010264719.f1, A018804.P15177010680010264719.a, A193356, A193356.P18165301230396846274.a, A344372, A344372.P8730494171943305758.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A332794, A332794.P344464151084610744.a, A001065, A001065.P4097147489331274860.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A255655, A255655.P17610219700829856514.f1, A255655.P17610219700829856514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344371

/-! ## A344371.P7495540352944171989

`A033999(n)*A199084(n+1)`
-/

namespace A344371.P7495540352944171989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A199084 (n + 1)

end

end A344371.P7495540352944171989

namespace A344371

/-- `A033999(n)*A199084(n+1)` -/
def P7495540352944171989.Spec : Prop :=
  ∀ n, P7495540352944171989.a n = A344371 (n + 1)

end A344371

/-! ## A344371.P14531215607036400766

`gcd(A000038(n), A199084(n+1))`
-/

namespace A344371.P14531215607036400766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A199084 (n + 1))

end

end A344371.P14531215607036400766

namespace A344371

/-- `gcd(A000038(n), A199084(n+1))` -/
def P14531215607036400766.Spec : Prop :=
  ∀ n, (P14531215607036400766.a n : ℤ) = A344371 (n + 1)

end A344371

/-! ## A344371.P1232956964874346415

`lcm(A020985(n), A199084(n+1))`
-/

namespace A344371.P1232956964874346415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A199084 (n + 1))

end

end A344371.P1232956964874346415

namespace A344371

/-- `lcm(A020985(n), A199084(n+1))` -/
def P1232956964874346415.Spec : Prop :=
  ∀ n, (P1232956964874346415.a n : ℤ) = A344371 (n + 1)

end A344371

/-! ## A344371.P13210584994843713917

`2*A193356(n+1)-A199084(n+1)`
-/

namespace A344371.P13210584994843713917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193356 (n + 1) - A199084 (n + 1)

end

end A344371.P13210584994843713917

namespace A344371

/-- `2*A193356(n+1)-A199084(n+1)` -/
def P13210584994843713917.Spec : Prop :=
  ∀ n, P13210584994843713917.a n = A344371 (n + 1)

end A344371

/-! ## A344371.P18310129981737292684

`A193356(n+1)+A344372(n+1)-A018804(n+1)`
-/

namespace A344371.P18310129981737292684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1) + (A344372 (n + 1) - A018804 (n + 1))

end

end A344371.P18310129981737292684

namespace A344371

/-- `A193356(n+1)+A344372(n+1)-A018804(n+1)` -/
def P18310129981737292684.Spec : Prop :=
  ∀ n, P18310129981737292684.a n = A344371 (n + 1)

end A344371

/-! ## A344371.P8818573287654413826

`A199084(n+1)+A344372(n+1)-A368736(n+1)`
-/

namespace A344371.P8818573287654413826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199084 (n + 1) + (A344372 (n + 1) - A368736 (n + 1))

end

end A344371.P8818573287654413826

namespace A344371

/-- `A199084(n+1)+A344372(n+1)-A368736(n+1)` -/
def P8818573287654413826.Spec : Prop :=
  ∀ n, P8818573287654413826.a n = A344371 (n + 1)

end A344371

/-! ## A344371.P3790754946168096143

`(A181983(n+1)+A181983(n))*A199084(n+1)`
-/

namespace A344371.P3790754946168096143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181983 (n + 1) + A181983 n) * A199084 (n + 1)

end

end A344371.P3790754946168096143

namespace A344371

/-- `(A181983(n+1)+A181983(n))*A199084(n+1)` -/
def P3790754946168096143.Spec : Prop :=
  ∀ n, P3790754946168096143.a n = A344371 (n + 1)

end A344371

/-! ## A344371.P870356364502998649

`A128317(A236453(n))`
-/

namespace A344371.P870356364502998649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128317 (A236453 n).toNat

end

end A344371.P870356364502998649

namespace A344371

/-- `A128317(A236453(n))` -/
def P870356364502998649.Spec : Prop :=
  ∀ n, P870356364502998649.a n = A344371 (n + 1)

end A344371

/-!
# A344372: a(n) = Sum_{k = 1..n} gcd(2*k, n).

The programs for A344372, the canonical program `A344372.P8730494171943305758` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344372 has offset 1).

The definition of A344372 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332794, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344372.P7179076021680351608

`2*(n+1)-A106475(n)`
-/

namespace A344372.P7179076021680351608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A106475 n

end

end A344372.P7179076021680351608

namespace A344372

/-- `2*(n+1)-A106475(n)` -/
def P7179076021680351608.Spec : Prop :=
  ∀ n, P7179076021680351608.a n = A344372 (n + 1)

theorem P7179076021680351608.correct : P7179076021680351608.Spec := by
  intro n
  simp only [A344372, Nat.add_sub_cancel, A344372.P7179076021680351608.a, A344372.P8730494171943305758.a, A106475, A106475.P1754682136822621499.a, A332794, A332794.P344464151084610744.a, A018804, A018804.P15177010680010264719.f1, A018804.P15177010680010264719.a, A255655, A255655.P17610219700829856514.f1, A255655.P17610219700829856514.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A109386, A109386.P5253081201004666906.f1, A109386.P5253081201004666906.a, A001065, A001065.P4097147489331274860.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A245579, A245579.P1038564678599800465.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A344372

/-! ## A344372.P7034499054774724911

`A344371(2*(n+1))`
-/

namespace A344372.P7034499054774724911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344371 (2 * (n + 1))

end

end A344372.P7034499054774724911

namespace A344372

/-- `A344371(2*(n+1))` -/
def P7034499054774724911.Spec : Prop :=
  ∀ n, P7034499054774724911.a n = A344372 (n + 1)

end A344372

/-! ## A344372.P6594083096250894902

`-A199084(2*(n+1))`
-/

namespace A344372.P6594083096250894902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A199084 (2 * (n + 1))

end

end A344372.P6594083096250894902

namespace A344372

/-- `-A199084(2*(n+1))` -/
def P6594083096250894902.Spec : Prop :=
  ∀ n, P6594083096250894902.a n = A344372 (n + 1)

end A344372

/-! ## A344372.P8730494171943305758

`-A332794(2*(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A344372

/-- `-A332794(2*(n+1))` -/
def P8730494171943305758.Spec : Prop :=
  ∀ n, P8730494171943305758.a n = A344372 (n + 1)

theorem P8730494171943305758.correct : P8730494171943305758.Spec := by
  intro n
  simp only [A344372, Nat.add_sub_cancel]

end A344372

/-! ## A344372.P13169426320633266243

`A345754(n+1)/(n+1)²`
-/

namespace A344372.P13169426320633266243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345754 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A344372.P13169426320633266243

namespace A344372

/-- `A345754(n+1)/(n+1)²` -/
def P13169426320633266243.Spec : Prop :=
  ∀ n, P13169426320633266243.a n = (A344372 (n + 1) : ℚ)

end A344372

/-! ## A344372.P13921931409709836530

`∑{d}[n+1, #*A062570((n+1)/#)]`
-/

namespace A344372.P13921931409709836530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A062570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344372.P13921931409709836530

namespace A344372

/-- `∑{d}[n+1, #*A062570((n+1)/#)]` -/
def P13921931409709836530.Spec : Prop :=
  ∀ n, P13921931409709836530.a n = A344372 (n + 1)

end A344372

/-! ## A344372.P16145895955489713988

`A001511(n+1)*A368736(n+1)`
-/

namespace A344372.P16145895955489713988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A368736 (n + 1)

end

end A344372.P16145895955489713988

namespace A344372

/-- `A001511(n+1)*A368736(n+1)` -/
def P16145895955489713988.Spec : Prop :=
  ∀ n, P16145895955489713988.a n = A344372 (n + 1)

end A344372

/-! ## A344372.P17850666625171724671

`2*A018804(n+1)-A368736(n+1)`
-/

namespace A344372.P17850666625171724671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018804 (n + 1) - A368736 (n + 1)

end

end A344372.P17850666625171724671

namespace A344372

/-- `2*A018804(n+1)-A368736(n+1)` -/
def P17850666625171724671.Spec : Prop :=
  ∀ n, P17850666625171724671.a n = A344372 (n + 1)

end A344372

/-! ## A344372.P12264498720652963850

`∑{d}[n+1, A001511(#)*A029935((n+1)/#)]`
-/

namespace A344372.P12264498720652963850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A029935 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344372.P12264498720652963850

namespace A344372

/-- `∑{d}[n+1, A001511(#)*A029935((n+1)/#)]` -/
def P12264498720652963850.Spec : Prop :=
  ∀ n, P12264498720652963850.a n = A344372 (n + 1)

end A344372

/-! ## A344372.P6607333579586813037

`∑{d}[n+1, A038040(#)*A087003((n+1)/#)]`
-/

namespace A344372.P6607333579586813037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344372.P6607333579586813037

namespace A344372

/-- `∑{d}[n+1, A038040(#)*A087003((n+1)/#)]` -/
def P6607333579586813037.Spec : Prop :=
  ∀ n, P6607333579586813037.a n = A344372 (n + 1)

end A344372

/-! ## A344372.P12957138094728866268

`∑{d}[n+1, A000010(#)*A129527((n+1)/#)]`
-/

namespace A344372.P12957138094728866268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A129527 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344372.P12957138094728866268

namespace A344372

/-- `∑{d}[n+1, A000010(#)*A129527((n+1)/#)]` -/
def P12957138094728866268.Spec : Prop :=
  ∀ n, P12957138094728866268.a n = A344372 (n + 1)

end A344372

/-! ## A344372.P5721838043841452632

`∑{d}[n+1, A000265(#)*A162728((n+1)/#)]`
-/

namespace A344372.P5721838043841452632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 d * A162728 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344372.P5721838043841452632

namespace A344372

/-- `∑{d}[n+1, A000265(#)*A162728((n+1)/#)]` -/
def P5721838043841452632.Spec : Prop :=
  ∀ n, P5721838043841452632.a n = A344372 (n + 1)

end A344372

/-! ## A344372.P1625276772548837449

`∑{d}[n+1, A018804(#)*A209229((n+1)/#)]`
-/

namespace A344372.P1625276772548837449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344372.P1625276772548837449

namespace A344372

/-- `∑{d}[n+1, A018804(#)*A209229((n+1)/#)]` -/
def P1625276772548837449.Spec : Prop :=
  ∀ n, P1625276772548837449.a n = A344372 (n + 1)

end A344372

/-! ## A344372.P12363363847070733028

`∑{d}[n+1, A129628(#)*A143275((n+1)/#)]`
-/

namespace A344372.P12363363847070733028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129628 d * A143275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344372.P12363363847070733028

namespace A344372

/-- `∑{d}[n+1, A129628(#)*A143275((n+1)/#)]` -/
def P12363363847070733028.Spec : Prop :=
  ∀ n, P12363363847070733028.a n = A344372 (n + 1)

end A344372

/-! ## A344372.P7477462192654138606

`∑{d}[n+1, A034718(#)*A326938((n+1)/#)]`
-/

namespace A344372.P7477462192654138606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034718 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344372.P7477462192654138606

namespace A344372

/-- `∑{d}[n+1, A034718(#)*A326938((n+1)/#)]` -/
def P7477462192654138606.Spec : Prop :=
  ∀ n, P7477462192654138606.a n = A344372 (n + 1)

end A344372

/-! ## A344372.P11267021604606695745

`∑{d}[n+1, A060640(#)*A327276((n+1)/#)]`
-/

namespace A344372.P11267021604606695745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344372.P11267021604606695745

namespace A344372

/-- `∑{d}[n+1, A060640(#)*A327276((n+1)/#)]` -/
def P11267021604606695745.Spec : Prop :=
  ∀ n, P11267021604606695745.a n = A344372 (n + 1)

end A344372

/-! ## A344372.P4340747464626918937

`∑{d}[n+1, A126246(#)*A373188((n+1)/#)]`
-/

namespace A344372.P4340747464626918937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A126246 d * A373188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344372.P4340747464626918937

namespace A344372

/-- `∑{d}[n+1, A126246(#)*A373188((n+1)/#)]` -/
def P4340747464626918937.Spec : Prop :=
  ∀ n, P4340747464626918937.a n = A344372 (n + 1)

end A344372

/-! ## A344372.P9329155179334374703

`∑{d}[n+1, A349131(#)*A357689((n+1)/#)]`
-/

namespace A344372.P9329155179334374703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349131 d * A357689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344372.P9329155179334374703

namespace A344372

/-- `∑{d}[n+1, A349131(#)*A357689((n+1)/#)]` -/
def P9329155179334374703.Spec : Prop :=
  ∀ n, P9329155179334374703.a n = A344372 (n + 1)

end A344372

/-! ## A344372.P7693913888937010260

`∑{d}[n+1, A349341(#)*A390258((n+1)/#)]`
-/

namespace A344372.P7693913888937010260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349341 d * A390258 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344372.P7693913888937010260

namespace A344372

/-- `∑{d}[n+1, A349341(#)*A390258((n+1)/#)]` -/
def P7693913888937010260.Spec : Prop :=
  ∀ n, P7693913888937010260.a n = A344372 (n + 1)

end A344372

/-! ## A344372.P116898836111887786

`∑{d}[n+1, A018804(#)*A036987((n+1)/#-1)]`
-/

namespace A344372.P116898836111887786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A036987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A344372.P116898836111887786

namespace A344372

/-- `∑{d}[n+1, A018804(#)*A036987((n+1)/#-1)]` -/
def P116898836111887786.Spec : Prop :=
  ∀ n, P116898836111887786.a n = A344372 (n + 1)

end A344372

/-!
# A344373: a(n) = Sum_{k=1..n-1} (-1)^k gcd(k, n).

The programs for A344373, the canonical program `A344373.P3639027277485766421` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344373 has offset 1).

The definition of A344373 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344371, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344373.P3639027277485766421

`A344371(n+1)-(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A344373

/-- `A344371(n+1)-(n+1)` -/
def P3639027277485766421.Spec : Prop :=
  ∀ n, P3639027277485766421.a n = A344373 (n + 1)

theorem P3639027277485766421.correct : P3639027277485766421.Spec := by
  intro n
  simp only [A344373, Nat.add_sub_cancel]

end A344373

/-! ## A344373.P15211691786354028367

`abs(A199084(n+1))-(n+1)`
-/

namespace A344373.P15211691786354028367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199084 (n + 1)| - (n + 1 : ℤ)

end

end A344373.P15211691786354028367

namespace A344373

/-- `abs(A199084(n+1))-(n+1)` -/
def P15211691786354028367.Spec : Prop :=
  ∀ n, P15211691786354028367.a n = A344373 (n + 1)

end A344373

/-! ## A344373.P242684767755170910

`-((A199084(n+1)+n+1)*A000035(n))`
-/

namespace A344373.P242684767755170910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A199084 (n + 1) + (n + 1 : ℤ)) * A000035 n)

end

end A344373.P242684767755170910

namespace A344373

/-- `-((A199084(n+1)+n+1)*A000035(n))` -/
def P242684767755170910.Spec : Prop :=
  ∀ n, P242684767755170910.a n = A344373 (n + 1)

end A344373

/-! ## A344373.P18019746160026876871

`lcm(A000188(n+1), A199084(n+1))-(n+1)`
-/

namespace A344373.P18019746160026876871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000188 (n + 1)) (A199084 (n + 1)) : ℤ) - (n + 1 : ℤ)

end

end A344373.P18019746160026876871

namespace A344373

/-- `lcm(A000188(n+1), A199084(n+1))-(n+1)` -/
def P18019746160026876871.Spec : Prop :=
  ∀ n, P18019746160026876871.a n = A344373 (n + 1)

end A344373

/-! ## A344373.P15071818542943073574

`∑{d}[n+1, A106475(#-1)*A159075((n+1)/#-1)]`
-/

namespace A344373.P15071818542943073574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A106475 (d - 1) * A159075 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A344373.P15071818542943073574

namespace A344373

/-- `∑{d}[n+1, A106475(#-1)*A159075((n+1)/#-1)]` -/
def P15071818542943073574.Spec : Prop :=
  ∀ n, P15071818542943073574.a n = A344373 (n + 1)

end A344373

/-! ## A344373.P16604299979692683295

`Δ[A001057(n)]-A199084(n+1)`
-/

namespace A344373.P16604299979692683295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A199084 (n + 1)

end

end A344373.P16604299979692683295

namespace A344373

/-- `Δ[A001057(n)]-A199084(n+1)` -/
def P16604299979692683295.Spec : Prop :=
  ∀ n, P16604299979692683295.a n = A344373 (n + 1)

end A344373

/-! ## A344373.P932765805300345759

`A181983(n+1)-A199084(n+1)`
-/

namespace A344373.P932765805300345759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (n + 1) - A199084 (n + 1)

end

end A344373.P932765805300345759

namespace A344373

/-- `A181983(n+1)-A199084(n+1)` -/
def P932765805300345759.Spec : Prop :=
  ∀ n, P932765805300345759.a n = A344373 (n + 1)

end A344373

/-! ## A344373.P17363018470733825080

`A329116((n+1)²)-A199084(n+1)`
-/

namespace A344373.P17363018470733825080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 ((n + 1) ^ 2) - A199084 (n + 1)

end

end A344373.P17363018470733825080

namespace A344373

/-- `A329116((n+1)²)-A199084(n+1)` -/
def P17363018470733825080.Spec : Prop :=
  ∀ n, P17363018470733825080.a n = A344373 (n + 1)

end A344373

/-!
# A344374: a(n) is the number of squarefree numbers appearing in the 1st column of an n X n square array whose elements are the numbers from 1..n^2, listed in increasing order by rows.

The programs for A344374, there is no canonical definition to state claims against.
-/

/-! ## A344374.P1491417750869927919

`∑{e}[A005010(n), A344351(#)]`
-/

namespace A344374.P1491417750869927919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A344351 (Nat.factorization (f1 n).natAbs p)

end

end A344374.P1491417750869927919

/-!
# A344375: Numbers n that can be written as the concatenation ab such that n mod (a*b) = a+b.

The programs for A344375, there is no canonical definition to state claims against.
-/

/-! ## A344375.P660788786938995431

`A268044(n+5)%A350545(comp[∑[n]])`
-/

namespace A344375.P660788786938995431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268044 (n + 5)) (A350545 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A344375.P660788786938995431

/-! ## A344375.P3720404684273446083

`A131229(n+5)+2%A271580(n+1)`
-/

namespace A344375.P3720404684273446083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131229 (n + 5) + Int.tmod 2 (A271580 (n + 1))

end

end A344375.P3720404684273446083

/-! ## A344375.P9583257058643141749

`A109007(A090799(n+5))+A090772(n+5)`
-/

namespace A344375.P9583257058643141749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109007 (A090799 (n + 5)).toNat + A090772 (n + 5)

end

end A344375.P9583257058643141749

/-! ## A344375.P13416543560539870266

`A205691(A047218(n+5)²)`
-/

namespace A344375.P13416543560539870266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205691 (A047218 (n + 5) ^ 2).toNat

end

end A344375.P13416543560539870266

/-! ## A344375.P4583556093956313796

`A235089(n+5)-A205745(A304660(n+1))`
-/

namespace A344375.P4583556093956313796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235089 (n + 5) - A205745 (A304660 (n + 1)).toNat

end

end A344375.P4583556093956313796

/-!
# A344378: Positive integers m for which there exists a positive even integer 2k such that Sum_{j=1..m} j^(2k) has no prime divisor smaller than 2*m + 3.

The programs for A344378, there is no canonical definition to state claims against.
-/

/-! ## A344378.P7185122042093223703

`∩[A172186(n+1), comp[A344380(n+1)]]`
-/

namespace A344378.P7185122042093223703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172186 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344380 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A344378.P7185122042093223703

/-! ## A344378.P16295971123870244324

`∩[A179019(n+1)-1, comp[A344380(n+1)]]`
-/

namespace A344378.P16295971123870244324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179019 (n + 1) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344380 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A344378.P16295971123870244324

/-! ## A344378.P876732894697520726

`eq[A087960(n+2), A110566(A086843(n+3))]`
-/

namespace A344378.P876732894697520726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A086843 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344378.P876732894697520726

/-!
# A344384: Prime numbers p such that p-1 or p+1 is a number of least prime signature (A025487).

The programs for A344384, there is no canonical definition to state claims against.
-/

/-! ## A344384.P17009325346476404808

`record[A362840(n+3)%A189326(n+2)]`
-/

namespace A344384.P17009325346476404808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362840 (n + 3)) (A189326 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344384.P17009325346476404808

/-! ## A344384.P16015929661787022645

`eq[A003415(n), A016735(A375924(n))]`
-/

namespace A344384.P16015929661787022645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016735 (A375924 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344384.P16015929661787022645

/-! ## A344384.P17795688316733388377

`eq[A069293(A156042(n+1)+2), A105700(n)]`
-/

namespace A344384.P17795688316733388377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069293 (A156042 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344384.P17795688316733388377

/-! ## A344384.P17334394085814095865

`A300271(A065393(n+1))`
-/

namespace A344384.P17334394085814095865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300271 (A065393 (n + 1)).toNat

end

end A344384.P17334394085814095865

/-! ## A344384.P18257066685310954293

`p?[∑[A356936(2*n+1)]]`
-/

namespace A344384.P18257066685310954293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356936 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344384.P18257066685310954293

/-!
# A344385: Numbers k of least prime signature (A025487) such that k-1 or k+1 is prime.

The programs for A344385, there is no canonical definition to state claims against.
-/

/-! ## A344385.P7243329284463231767

`filter[A045718(n), A322585(#)]`
-/

namespace A344385.P7243329284463231767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A344385.P7243329284463231767

/-! ## A344385.P14353198078573870102

`∩[A025487(n+1), A045718(n)]`
-/

namespace A344385.P14353198078573870102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344385.P14353198078573870102

/-! ## A344385.P3750654036204519748

`∩[A025487(n+1), A210940(n+1)]`
-/

namespace A344385.P3750654036204519748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344385.P3750654036204519748

/-! ## A344385.P11309698016334861576

`record[A328479(A045718(n))]`
-/

namespace A344385.P11309698016334861576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (A045718 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344385.P11309698016334861576

/-! ## A344385.P15177848583096958468

`record[A046523(n+1)/A103689(n+1)]`
-/

namespace A344385.P15177848583096958468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046523 (n + 1) : ℚ) / (A103689 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344385.P15177848583096958468

/-! ## A344385.P11851322062002139850

`record[A328479(n+1)/A103689(n+1)]`
-/

namespace A344385.P11851322062002139850
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328479 (n + 1) : ℚ) / (A103689 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344385.P11851322062002139850

/-! ## A344385.P6204232724702546247

`A000027(record[A046523(A045718(n))])`
-/

namespace A344385.P6204232724702546247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A045718 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344385.P6204232724702546247

/-! ## A344385.P6818413200922362567

`A046523(record[A046523(A045718(n))])`
-/

namespace A344385.P6818413200922362567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A045718 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344385.P6818413200922362567

/-! ## A344385.P3437288373777797525

`record[A046523(A151800(n)-A209615(n+1))]`
-/

namespace A344385.P3437288373777797525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A151800 n - A209615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344385.P3437288373777797525

/-! ## A344385.P1483244273148128775

`record[A046523(n+1)/A102462(A007920(n))]`
-/

namespace A344385.P1483244273148128775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046523 (n + 1) : ℚ) / (A102462 (A007920 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344385.P1483244273148128775

/-!
# A344389: a(n) is the number of nonnegative numbers < 10^n with all digits distinct.

The programs for A344389, the canonical program `A344389.P579981487796978420` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344389 has offset 0).

The definition of A344389 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073531, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344389.P579981487796978420

`A073531(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344389

/-- `A073531(n)+a(n-1)` -/
def P579981487796978420.Spec : Prop :=
  ∀ n, P579981487796978420.a n = A344389 n

theorem P579981487796978420.correct : P579981487796978420.Spec := by
  intro n
  simp only [A344389]

end A344389

/-!
# A344390: Continued fraction for A073084, the constant LambertW(log(sqrt(2)))/log(sqrt(2)).

The programs for A344390, there is no canonical definition to state claims against.
-/

/-! ## A344390.P18305042915822333501

`A002517(A044327(n*a(n-1)+1))` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3, a(4)=1, a(5)=1`
-/

namespace A344390.P18305042915822333501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 3, 1, 1] fun n a =>
  A002517 (A044327 ((n : ℤ) * a (n - 1) + 1).toNat).toNat

end

end A344390.P18305042915822333501

/-!
# A344391: T(n, k) = binomial(n - k, k) * factorial(k), for n >= 0 and 0 <= k <= floor(n/2). Triangle read by rows.

The programs for A344391, the canonical program `A344391.P11217493897690199327` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344391 has offset 0).

The definition of A344391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344391.P11217493897690199327

`(n%floor(sqrt(n+1)))!*A011973(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A344391

/-- `(n%floor(sqrt(n+1)))!*A011973(n)` -/
def P11217493897690199327.Spec : Prop :=
  ∀ n, P11217493897690199327.a n = A344391 n

theorem P11217493897690199327.correct : P11217493897690199327.Spec := by
  intro n
  simp only [A344391]

end A344391

/-! ## A344391.P10069358643231544256

`A055087(n)!*A011973(n)`
-/

namespace A344391.P10069358643231544256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A055087 n).toNat : ℤ) * A011973 n

end

end A344391.P10069358643231544256

namespace A344391

/-- `A055087(n)!*A011973(n)` -/
def P10069358643231544256.Spec : Prop :=
  ∀ n, P10069358643231544256.a n = A344391 n

end A344391

/-! ## A344391.P1457344864311620722

`A059344(n)/A034868(n)`
-/

namespace A344391.P1457344864311620722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059344 n : ℚ) / (A034868 n : ℚ)

end

end A344391.P1457344864311620722

namespace A344391

/-- `A059344(n)/A034868(n)` -/
def P1457344864311620722.Spec : Prop :=
  ∀ n, P1457344864311620722.a n = (A344391 n : ℚ)

end A344391

/-! ## A344391.P7161596046670306906

`A059344(n)/A046899(A091018(n))`
-/

namespace A344391.P7161596046670306906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059344 n : ℚ) / (A046899 (A091018 n).toNat : ℚ)

end

end A344391.P7161596046670306906

namespace A344391

/-- `A059344(n)/A046899(A091018(n))` -/
def P7161596046670306906.Spec : Prop :=
  ∀ n, P7161596046670306906.a n = (A344391 n : ℚ)

end A344391

/-! ## A344391.P13195207337339804705

`A008279(A091018(n))`
-/

namespace A344391.P13195207337339804705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A091018 n).toNat

end

end A344391.P13195207337339804705

namespace A344391

/-- `A008279(A091018(n))` -/
def P13195207337339804705.Spec : Prop :=
  ∀ n, P13195207337339804705.a n = A344391 n

end A344391

/-! ## A344391.P13577857329866220783

`A008279(A056536(n+1)-1)`
-/

namespace A344391.P13577857329866220783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A056536 (n + 1) - 1).toNat

end

end A344391.P13577857329866220783

namespace A344391

/-- `A008279(A056536(n+1)-1)` -/
def P13577857329866220783.Spec : Prop :=
  ∀ n, P13577857329866220783.a n = A344391 n

end A344391

/-! ## A344391.P10379600346413437325

`A011973(n)*A233543(A091018(n))`
-/

namespace A344391.P10379600346413437325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 n * A233543 (A091018 n).toNat

end

end A344391.P10379600346413437325

namespace A344391

/-- `A011973(n)*A233543(A091018(n))` -/
def P10379600346413437325.Spec : Prop :=
  ∀ n, P10379600346413437325.a n = A344391 n

end A344391

/-! ## A344391.P17622050022587282124

`A008279(A057428(n)+A056536(n+1))`
-/

namespace A344391.P17622050022587282124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A057428 n + A056536 (n + 1)).toNat

end

end A344391.P17622050022587282124

namespace A344391

/-- `A008279(A057428(n)+A056536(n+1))` -/
def P17622050022587282124.Spec : Prop :=
  ∀ n, P17622050022587282124.a n = A344391 n

end A344391

/-!
# A344392: T(n, k) = k!*Stirling2(n - k, k), for n >= 0 and 0 <= k <= floor(n/2). Triangle read by rows.

The programs for A344392, there is no canonical definition to state claims against.
-/

/-! ## A344392.P3369976699677401055

`A362789(n)/A011973(n)`
-/

namespace A344392.P3369976699677401055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362789 n : ℚ) / (A011973 n : ℚ)

end

end A344392.P3369976699677401055

/-! ## A344392.P4317364181743092064

`A131689(A091018(n))`
-/

namespace A344392.P4317364181743092064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A091018 n).toNat

end

end A344392.P4317364181743092064

/-! ## A344392.P10507285390966056213

`A131689(A056536(n+1)-1)`
-/

namespace A344392.P10507285390966056213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A056536 (n + 1) - 1).toNat

end

end A344392.P10507285390966056213

/-! ## A344392.P8060304153858696069

`A131689(A153881(n+1)+A056536(n+1))`
-/

namespace A344392.P8060304153858696069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A153881 (n + 1) + A056536 (n + 1)).toNat

end

end A344392.P8060304153858696069

/-! ## A344392.P18425056665504178148

`A090657(A091018(n))/A011973(n)`
-/

namespace A344392.P18425056665504178148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090657 (A091018 n).toNat : ℚ) / (A011973 n : ℚ)

end

end A344392.P18425056665504178148

/-! ## A344392.P15389215120298379297

`A090657(A056536(n+1)-1)/A011973(n)`
-/

namespace A344392.P15389215120298379297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090657 (A056536 (n + 1) - 1).toNat : ℚ) / (A011973 n : ℚ)

end

end A344392.P15389215120298379297

/-!
# A344393: T(n, k) = Eulerian1(n - k, k), for n >= 0 and 0 <= k <= floor(n/2). Triangle read by rows.

The programs for A344393, there is no canonical definition to state claims against.
-/

/-! ## A344393.P14180256602136779900

`A173018(A091018(n))`
-/

namespace A344393.P14180256602136779900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A091018 n).toNat

end

end A344393.P14180256602136779900

/-! ## A344393.P13807865383747275297

`A173018(A056536(n+1)-1)`
-/

namespace A344393.P13807865383747275297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A056536 (n + 1) - 1).toNat

end

end A344393.P13807865383747275297

/-! ## A344393.P3772773179728418943

`A123125(A056536(n+1)+C(2, n))`
-/

namespace A344393.P3772773179728418943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A056536 (n + 1) + (Nat.choose 2 n : ℤ)).toNat

end

end A344393.P3772773179728418943

/-! ## A344393.P9251017923349897446

`A123125(A056536(n+1)%(2*n+1))`
-/

namespace A344393.P9251017923349897446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (Int.tmod (A056536 (n + 1)) (2 * n + 1 : ℤ)).toNat

end

end A344393.P9251017923349897446

/-! ## A344393.P2420786766680318313

`A123125(A056536(n+1)+A000007(n))`
-/

namespace A344393.P2420786766680318313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A056536 (n + 1) + A000007 n).toNat

end

end A344393.P2420786766680318313

/-! ## A344393.P12740402189201307088

`gcd(A089810(n), A123125(A056536(n+1)))`
-/

namespace A344393.P12740402189201307088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089810 n) (A123125 (A056536 (n + 1)).toNat)

end

end A344393.P12740402189201307088

/-! ## A344393.P2625696530312976049

`A123125(Δ[A056847(n)]*A056536(n+1))`
-/

namespace A344393.P2625696530312976049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 ((f1 (n + 1) - f1 n) * A056536 (n + 1)).toNat

end

end A344393.P2625696530312976049

/-! ## A344393.P124625798774603878

`A123125(A056536(n+1))^(A000040(n+1)%2)`
-/

namespace A344393.P124625798774603878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123125 (A056536 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A344393.P124625798774603878

/-! ## A344393.P15800371776935133774

`A123125(A091018(n)+A014963((2*n)²+2))`
-/

namespace A344393.P15800371776935133774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A091018 n + A014963 ((2 * n) ^ 2 + 2)).toNat

end

end A344393.P15800371776935133774

/-!
# A344394: a(n) = binomial(n, n/2 - 1/4 + (-1)^n/4)*hypergeom([-n/4 - 1/8 + (-1)^n/8, -n/4 + 3/8 + (-1)^n/8], [n/2 + 7/4 + (-1)^n/4], 4).

The programs for A344394, there is no canonical definition to state claims against.
-/

/-! ## A344394.P2074543122694094439

`A064189(∑[or(1, n)]-1)`
-/

namespace A344394.P2074543122694094439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A344394.P2074543122694094439

/-! ## A344394.P4586976934145380283

`A064189(∑[and(n, -2)]+n)`
-/

namespace A344394.P4586976934145380283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A344394.P4586976934145380283

/-! ## A344394.P16502102939432188932

`A026300(floor((n+1)²/2))`
-/

namespace A344394.P16502102939432188932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat

end

end A344394.P16502102939432188932

/-! ## A344394.P13666888005025310943

`A064189(∑[n]+floor(n/2))`
-/

namespace A344394.P13666888005025310943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n : ℚ) / 2⌋).toNat

end

end A344394.P13666888005025310943

/-! ## A344394.P9717847298087466040

`A122896(A007590(n+2))`
-/

namespace A344394.P9717847298087466040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122896 (A007590 (n + 2)).toNat

end

end A344394.P9717847298087466040

/-!
# A344395: a(n) = binomial(4*n - 1, 2*n - 1)*hypergeom([-n, -n + 1/2], [2*n + 1], 4).

The programs for A344395, there is no canonical definition to state claims against.
-/

/-! ## A344395.P5404233125336787779

`record[gcd(A035363(n), A344396(n))]`
-/

namespace A344395.P5404233125336787779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 n) (A344396 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344395.P5404233125336787779

/-! ## A344395.P17403247600444622972

`A027913(2*A004277(n))/2`
-/

namespace A344395.P17403247600444622972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027913 (2 * A004277 n).toNat : ℚ) / 2

end

end A344395.P17403247600444622972

/-! ## A344395.P2172195641360425705

`A344396(2*n-A057427(n))`
-/

namespace A344395.P2172195641360425705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344396 ((2 * n : ℤ) - A057427 n).toNat

end

end A344395.P2172195641360425705

/-! ## A344395.P2254147047091604885

`A344396(n-A057427(n)+n)`
-/

namespace A344395.P2254147047091604885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344396 ((n : ℤ) - A057427 n + (n : ℤ)).toNat

end

end A344395.P2254147047091604885

/-! ## A344395.P6185423517438180252

`A344396(n-(A057427(n)-n))`
-/

namespace A344395.P6185423517438180252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344396 ((n : ℤ) - (A057427 n - (n : ℤ))).toNat

end

end A344395.P6185423517438180252

/-! ## A344395.P15912145202343429902

`A344396(2*n-A211666(n+1))`
-/

namespace A344395.P15912145202343429902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344396 ((2 * n : ℤ) - A211666 (n + 1)).toNat

end

end A344395.P15912145202343429902

/-! ## A344395.P2104870248396090150

`A344396(n-A211666(n+1)+n)`
-/

namespace A344395.P2104870248396090150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344396 ((n : ℤ) - A211666 (n + 1) + (n : ℤ)).toNat

end

end A344395.P2104870248396090150

/-! ## A344395.P14003445321020377213

`A027913(A004277(A004277(n)))/2`
-/

namespace A344395.P14003445321020377213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027913 (A004277 (A004277 n).toNat).toNat : ℚ) / 2

end

end A344395.P14003445321020377213

/-!
# A344396: a(n) = binomial(2*n + 1, n)*hypergeom([-(n + 1)/2, -n/2], [n + 2], 4).

The programs for A344396, there is no canonical definition to state claims against.
-/

/-! ## A344396.P8279364818493559087

`1/2*A027908(n+1)`
-/

namespace A344396.P8279364818493559087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A027908 (n + 1) : ℚ)

end

end A344396.P8279364818493559087

/-! ## A344396.P1168683142905041741

`A027908(n+1)/2`
-/

namespace A344396.P1168683142905041741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027908 (n + 1) : ℚ) / 2

end

end A344396.P1168683142905041741

/-! ## A344396.P12856614719352384612

`A027913(2*(n+1))/2`
-/

namespace A344396.P12856614719352384612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027913 (2 * (n + 1)) : ℚ) / 2

end

end A344396.P12856614719352384612

/-! ## A344396.P1765404385386607905

`A026306(n+1)-A026116(n+1)`
-/

namespace A344396.P1765404385386607905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026306 (n + 1) - A026116 (n + 1)

end

end A344396.P1765404385386607905

/-! ## A344396.P6433769549133265461

`A026300(2*(n+1)²)`
-/

namespace A344396.P6433769549133265461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (2 * (n + 1) ^ 2)

end

end A344396.P6433769549133265461

/-! ## A344396.P14027934289413410624

`A122896(∑[4*(n+1)])`
-/

namespace A344396.P14027934289413410624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122896 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344396.P14027934289413410624

/-! ## A344396.P9312325640149972109

`A064189(2*(n+1)²-1)`
-/

namespace A344396.P9312325640149972109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (2 * (n + 1) ^ 2 - 1)

end

end A344396.P9312325640149972109

/-! ## A344396.P13849152803404841712

`record[A064189(A105638(n+3))]`
-/

namespace A344396.P13849152803404841712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A105638 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344396.P13849152803404841712

/-!
# A344397: a(n) = Stirling2(n, floor(n/2)) * floor(n/2)!.

The programs for A344397, there is no canonical definition to state claims against.
-/

/-! ## A344397.P16756874758322353524

`A131689(record[A151890(n)])`
-/

namespace A344397.P16756874758322353524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344397.P16756874758322353524

/-! ## A344397.P8368660152131638506

`A131689(record[A245300(n)])`
-/

namespace A344397.P8368660152131638506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344397.P8368660152131638506

/-! ## A344397.P9932635772207180565

`A131689(A007590(n)+n)`
-/

namespace A344397.P9932635772207180565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A007590 n + (n : ℤ)).toNat

end

end A344397.P9932635772207180565

/-! ## A344397.P11918810995774597641

`A131689(∑[A109613(n)]-1)`
-/

namespace A344397.P11918810995774597641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A344397.P11918810995774597641

/-! ## A344397.P9508890949812544072

`A131689(A004526(n²)+n)`
-/

namespace A344397.P9508890949812544072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A004526 (n ^ 2) + (n : ℤ)).toNat

end

end A344397.P9508890949812544072

/-!
# A344398: a(n) = (-1)^n * F_{n}((-1)^n * n), where F_{n}(x) is the Fubini polynomial.

The programs for A344398, there is no canonical definition to state claims against.
-/

/-! ## A344398.P9970439010671871578

`A292031(A094420(n))+A054390(n)`
-/

namespace A344398.P9970439010671871578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292031 (A094420 n).toNat + A054390 n

end

end A344398.P9970439010671871578

/-!
# A344399: a(n) = 4^n*binomial(n - 1/2, -1/2)*(n^2 + 1).

The programs for A344399, the canonical program `A344399.P13589682430989550627` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344399 has offset 0).

The definition of A344399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344399.P13589682430989550627

`(n²+1)*A000984(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344399

/-- `(n²+1)*A000984(n)` -/
def P13589682430989550627.Spec : Prop :=
  ∀ n, P13589682430989550627.a n = A344399 n

theorem P13589682430989550627.correct : P13589682430989550627.Spec := by
  intro n
  simp only [A344399]

end A344399

/-! ## A344399.P17078446916848411567

`(n+1)*A180266(n+1)`
-/

namespace A344399.P17078446916848411567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A180266 (n + 1)

end

end A344399.P17078446916848411567

namespace A344399

/-- `(n+1)*A180266(n+1)` -/
def P17078446916848411567.Spec : Prop :=
  ∀ n, P17078446916848411567.a n = A344399 n

end A344399

/-! ## A344399.P12512603239449032616

`(n²+1)*record[A126869(n)]`
-/

namespace A344399.P12512603239449032616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344399.P12512603239449032616

namespace A344399

/-- `(n²+1)*record[A126869(n)]` -/
def P12512603239449032616.Spec : Prop :=
  ∀ n, P12512603239449032616.a n = A344399 n

end A344399

/-! ## A344399.P11218039393847464031

`(n²+1)*record[A126930(n)]`
-/

namespace A344399.P11218039393847464031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344399.P11218039393847464031

namespace A344399

/-- `(n²+1)*record[A126930(n)]` -/
def P11218039393847464031.Spec : Prop :=
  ∀ n, P11218039393847464031.a n = A344399 n

end A344399

/-! ## A344399.P10175365817919303461

`∑[∑[n+1]]*A071725(n)`
-/

namespace A344399.P10175365817919303461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A071725 n

end

end A344399.P10175365817919303461

namespace A344399

/-- `∑[∑[n+1]]*A071725(n)` -/
def P10175365817919303461.Spec : Prop :=
  ∀ n, P10175365817919303461.a n = A344399 n

end A344399

/-! ## A344399.P15076788179994888011

`(n²+1)*A001405(2*n)`
-/

namespace A344399.P15076788179994888011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * A001405 (2 * n)

end

end A344399.P15076788179994888011

namespace A344399

/-- `(n²+1)*A001405(2*n)` -/
def P15076788179994888011.Spec : Prop :=
  ∀ n, P15076788179994888011.a n = A344399 n

end A344399

/-! ## A344399.P17577951208625316349

`(n²+1)*A056040(2*n)`
-/

namespace A344399.P17577951208625316349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * A056040 (2 * n)

end

end A344399.P17577951208625316349

namespace A344399

/-- `(n²+1)*A056040(2*n)` -/
def P17577951208625316349.Spec : Prop :=
  ∀ n, P17577951208625316349.a n = A344399 n

end A344399

/-! ## A344399.P3148335066698557596

`(n+1)*(n²+1)*A000108(n)`
-/

namespace A344399.P3148335066698557596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n ^ 2 + 1 : ℤ) * A000108 n)

end

end A344399.P3148335066698557596

namespace A344399

/-- `(n+1)*(n²+1)*A000108(n)` -/
def P3148335066698557596.Spec : Prop :=
  ∀ n, P3148335066698557596.a n = A344399 n

end A344399

/-! ## A344399.P4411047914092023380

`A002736(n)+A000984(n)`
-/

namespace A344399.P4411047914092023380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002736 n + A000984 n

end

end A344399.P4411047914092023380

namespace A344399

/-- `A002736(n)+A000984(n)` -/
def P4411047914092023380.Spec : Prop :=
  ∀ n, P4411047914092023380.a n = A344399 n

theorem P4411047914092023380.correct : P4411047914092023380.Spec := by
  intro n
  simp only [A344399, Nat.add_sub_cancel, A344399.P4411047914092023380.a, A344399.P13589682430989550627.a, A000984, A000984.P7946844122574426130.a, A002736, A002736.P9373791893693471064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A344399

/-! ## A344399.P5665106646988278973

`A000984(n)*A002522(n)`
-/

namespace A344399.P5665106646988278973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A002522 n

end

end A344399.P5665106646988278973

namespace A344399

/-- `A000984(n)*A002522(n)` -/
def P5665106646988278973.Spec : Prop :=
  ∀ n, P5665106646988278973.a n = A344399 n

theorem P5665106646988278973.correct : P5665106646988278973.Spec := by
  intro n
  simp only [A344399, Nat.add_sub_cancel, A344399.P5665106646988278973.a, A344399.P13589682430989550627.a, A000984, A000984.P7946844122574426130.a, A002522, A002522.P3778392011853271743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A344399

/-! ## A344399.P9384261853765598626

`A000108(n)*A053698(n)`
-/

namespace A344399.P9384261853765598626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A053698 n

end

end A344399.P9384261853765598626

namespace A344399

/-- `A000108(n)*A053698(n)` -/
def P9384261853765598626.Spec : Prop :=
  ∀ n, P9384261853765598626.a n = A344399 n

end A344399

/-! ## A344399.P7262927478942672435

`A005893(n)*A088218(n)`
-/

namespace A344399.P7262927478942672435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n * A088218 n

end

end A344399.P7262927478942672435

namespace A344399

/-- `A005893(n)*A088218(n)` -/
def P7262927478942672435.Spec : Prop :=
  ∀ n, P7262927478942672435.a n = A344399 n

end A344399

/-! ## A344399.P17331368291054460236

`A000108(n)*∑[A056106(n)]`
-/

namespace A344399.P17331368291054460236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344399.P17331368291054460236

namespace A344399

/-- `A000108(n)*∑[A056106(n)]` -/
def P17331368291054460236.Spec : Prop :=
  ∀ n, P17331368291054460236.a n = A344399 n

end A344399

/-! ## A344399.P6571704480765403819

`(A027444(n)+1)*A000108(n)`
-/

namespace A344399.P6571704480765403819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027444 n + 1) * A000108 n

end

end A344399.P6571704480765403819

namespace A344399

/-- `(A027444(n)+1)*A000108(n)` -/
def P6571704480765403819.Spec : Prop :=
  ∀ n, P6571704480765403819.a n = A344399 n

end A344399

/-! ## A344399.P11746020766954979715

`A001405(2*n)*A002522(n)`
-/

namespace A344399.P11746020766954979715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A002522 n

end

end A344399.P11746020766954979715

namespace A344399

/-- `A001405(2*n)*A002522(n)` -/
def P11746020766954979715.Spec : Prop :=
  ∀ n, P11746020766954979715.a n = A344399 n

end A344399

/-! ## A344399.P8966486698278171406

`A000984(n)+n*A005430(n)`
-/

namespace A344399.P8966486698278171406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (n : ℤ) * A005430 n

end

end A344399.P8966486698278171406

namespace A344399

/-- `A000984(n)+n*A005430(n)` -/
def P8966486698278171406.Spec : Prop :=
  ∀ n, P8966486698278171406.a n = A344399 n

theorem P8966486698278171406.correct : P8966486698278171406.Spec := by
  intro n
  simp only [A344399, Nat.add_sub_cancel, A344399.P8966486698278171406.a, A344399.P13589682430989550627.a, A000984, A000984.P7946844122574426130.a, A005430, A005430.P3213108425417519818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A344399

/-! ## A344399.P7263057106349668534

`A000108(n)+n*A034275(n+1)`
-/

namespace A344399.P7263057106349668534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (n : ℤ) * A034275 (n + 1)

end

end A344399.P7263057106349668534

namespace A344399

/-- `A000108(n)+n*A034275(n+1)` -/
def P7263057106349668534.Spec : Prop :=
  ∀ n, P7263057106349668534.a n = A344399 n

end A344399

/-! ## A344399.P10815718121444609565

`A001405(2*n)+n*A100071(2*n)`
-/

namespace A344399.P10815718121444609565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) + (n : ℤ) * A100071 (2 * n)

end

end A344399.P10815718121444609565

namespace A344399

/-- `A001405(2*n)+n*A100071(2*n)` -/
def P10815718121444609565.Spec : Prop :=
  ∀ n, P10815718121444609565.a n = A344399 n

end A344399

/-! ## A344399.P15240602740718057861

`A056040(2*n)+n*A100071(2*n)`
-/

namespace A344399.P15240602740718057861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n) + (n : ℤ) * A100071 (2 * n)

end

end A344399.P15240602740718057861

namespace A344399

/-- `A056040(2*n)+n*A100071(2*n)` -/
def P15240602740718057861.Spec : Prop :=
  ∀ n, P15240602740718057861.a n = A344399 n

end A344399

/-! ## A344399.P11579087112776404803

`A126869(2*n)+n*A100071(2*n)`
-/

namespace A344399.P11579087112776404803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) + (n : ℤ) * A100071 (2 * n)

end

end A344399.P11579087112776404803

namespace A344399

/-- `A126869(2*n)+n*A100071(2*n)` -/
def P11579087112776404803.Spec : Prop :=
  ∀ n, P11579087112776404803.a n = A344399 n

end A344399

