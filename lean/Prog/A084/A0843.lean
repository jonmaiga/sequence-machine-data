import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A084300: a(n) = phi(n) mod 6.

The programs for A084300, the canonical program `A084300.P10262950517718551561` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084300 has offset 1).

The definition of A084300 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A084300.P10262950517718551561

`A000010(n+1)%6`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A084300

/-- `A000010(n+1)%6` -/
def P10262950517718551561.Spec : Prop :=
  ∀ n, P10262950517718551561.a n = A084300 (n + 1)

theorem P10262950517718551561.correct : P10262950517718551561.Spec := by
  intro n
  simp only [A084300, Nat.add_sub_cancel]

end A084300

/-! ## A084300.P13506649886164335287

`A010875(A000010(n+1))`
-/

namespace A084300.P13506649886164335287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A000010 (n + 1)).toNat

end

end A084300.P13506649886164335287

namespace A084300

/-- `A010875(A000010(n+1))` -/
def P13506649886164335287.Spec : Prop :=
  ∀ n, P13506649886164335287.a n = A084300 (n + 1)

end A084300

/-! ## A084300.P15134396800722416317

`((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%6`
-/

namespace A084300.P15134396800722416317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) 6

end

end A084300.P15134396800722416317

namespace A084300

/-- `((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%6` -/
def P15134396800722416317.Spec : Prop :=
  ∀ n, P15134396800722416317.a n = A084300 (n + 1)

end A084300

/-! ## A084300.P7639027548144800113

`Δ[A002088(n)]%6`
-/

namespace A084300.P7639027548144800113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 6

end

end A084300.P7639027548144800113

namespace A084300

/-- `Δ[A002088(n)]%6` -/
def P7639027548144800113.Spec : Prop :=
  ∀ n, P7639027548144800113.a n = A084300 (n + 1)

end A084300

/-! ## A084300.P14660576169707531780

`Δ[A005728(n)]%6`
-/

namespace A084300.P14660576169707531780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 6

end

end A084300.P14660576169707531780

namespace A084300

/-- `Δ[A005728(n)]%6` -/
def P14660576169707531780.Spec : Prop :=
  ∀ n, P14660576169707531780.a n = A084300 (n + 1)

end A084300

/-! ## A084300.P6092509487046532374

`A059376(n+1)%6`
-/

namespace A084300.P6092509487046532374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059376 (n + 1)) 6

end

end A084300.P6092509487046532374

namespace A084300

/-- `A059376(n+1)%6` -/
def P6092509487046532374.Spec : Prop :=
  ∀ n, P6092509487046532374.a n = A084300 (n + 1)

end A084300

/-! ## A084300.P4198997845328500539

`A059378(n+1)%6`
-/

namespace A084300.P4198997845328500539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059378 (n + 1)) 6

end

end A084300.P4198997845328500539

namespace A084300

/-- `A059378(n+1)%6` -/
def P4198997845328500539.Spec : Prop :=
  ∀ n, P4198997845328500539.a n = A084300 (n + 1)

end A084300

/-! ## A084300.P1723071788625332520

`A069092(n+1)%6`
-/

namespace A084300.P1723071788625332520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069092 (n + 1)) 6

end

end A084300.P1723071788625332520

namespace A084300

/-- `A069092(n+1)%6` -/
def P1723071788625332520.Spec : Prop :=
  ∀ n, P1723071788625332520.a n = A084300 (n + 1)

end A084300

/-! ## A084300.P14888237806317180374

`A069094(n+1)%6`
-/

namespace A084300.P14888237806317180374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069094 (n + 1)) 6

end

end A084300.P14888237806317180374

namespace A084300

/-- `A069094(n+1)%6` -/
def P14888237806317180374.Spec : Prop :=
  ∀ n, P14888237806317180374.a n = A084300 (n + 1)

end A084300

/-! ## A084300.P8962463932880773836

`A293484(n+1)%6`
-/

namespace A084300.P8962463932880773836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293484 (n + 1)) 6

end

end A084300.P8962463932880773836

namespace A084300

/-- `A293484(n+1)%6` -/
def P8962463932880773836.Spec : Prop :=
  ∀ n, P8962463932880773836.a n = A084300 (n + 1)

end A084300

/-! ## A084300.P6552761868472172256

`A358714(n+1)%6`
-/

namespace A084300.P6552761868472172256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358714 (n + 1)) 6

end

end A084300.P6552761868472172256

namespace A084300

/-- `A358714(n+1)%6` -/
def P6552761868472172256.Spec : Prop :=
  ∀ n, P6552761868472172256.a n = A084300 (n + 1)

end A084300

/-! ## A084300.P10934656185775858664

`(A109606(n+1)+1)%6`
-/

namespace A084300.P10934656185775858664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109606 (n + 1) + 1) 6

end

end A084300.P10934656185775858664

namespace A084300

/-- `(A109606(n+1)+1)%6` -/
def P10934656185775858664.Spec : Prop :=
  ∀ n, P10934656185775858664.a n = A084300 (n + 1)

end A084300

/-! ## A084300.P10597011718799086396

`(A039649(n+1)-1)%6`
-/

namespace A084300.P10597011718799086396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039649 (n + 1) - 1) 6

end

end A084300.P10597011718799086396

namespace A084300

/-- `(A039649(n+1)-1)%6` -/
def P10597011718799086396.Spec : Prop :=
  ∀ n, P10597011718799086396.a n = A084300 (n + 1)

end A084300

/-! ## A084300.P14034988589458663607

`A349137(2*n+1)%6`
-/

namespace A084300.P14034988589458663607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349137 (2 * n + 1)) 6

end

end A084300.P14034988589458663607

namespace A084300

/-- `A349137(2*n+1)%6` -/
def P14034988589458663607.Spec : Prop :=
  ∀ n, P14034988589458663607.a n = A084300 (n + 1)

end A084300

/-! ## A084300.P2162851498286503588

`dr(A000010(2*n-(n-1))%6)`
-/

namespace A084300.P2162851498286503588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) 6)

end

end A084300.P2162851498286503588

namespace A084300

/-- `dr(A000010(2*n-(n-1))%6)` -/
def P2162851498286503588.Spec : Prop :=
  ∀ n, (P2162851498286503588.a n : ℤ) = A084300 (n + 1)

end A084300

/-! ## A084300.P1717007126132003191

`∑{d}[n+1, #*A008683((n+1)/#)]%6`
-/

namespace A084300.P1717007126132003191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) 6

end

end A084300.P1717007126132003191

namespace A084300

/-- `∑{d}[n+1, #*A008683((n+1)/#)]%6` -/
def P1717007126132003191.Spec : Prop :=
  ∀ n, P1717007126132003191.a n = A084300 (n + 1)

end A084300

/-! ## A084300.P2247431274854746352

`A010875(A293484(n+1))`
-/

namespace A084300.P2247431274854746352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A293484 (n + 1)).toNat

end

end A084300.P2247431274854746352

namespace A084300

/-- `A010875(A293484(n+1))` -/
def P2247431274854746352.Spec : Prop :=
  ∀ n, P2247431274854746352.a n = A084300 (n + 1)

end A084300

/-! ## A084300.P11150937429737683985

`A029578(A039649(n+1))%6`
-/

namespace A084300.P11150937429737683985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029578 (A039649 (n + 1)).toNat) 6

end

end A084300.P11150937429737683985

namespace A084300

/-- `A029578(A039649(n+1))%6` -/
def P11150937429737683985.Spec : Prop :=
  ∀ n, P11150937429737683985.a n = A084300 (n + 1)

end A084300

/-! ## A084300.P6012789489725773386

`2-A109265(A000010(n+1)-1)`
-/

namespace A084300.P6012789489725773386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A109265 (A000010 (n + 1) - 1).toNat

end

end A084300.P6012789489725773386

namespace A084300

/-- `2-A109265(A000010(n+1)-1)` -/
def P6012789489725773386.Spec : Prop :=
  ∀ n, P6012789489725773386.a n = A084300 (n + 1)

end A084300

/-! ## A084300.P11567456665290501867

`(A046073(n+1)*A060594(n+1))%6`
-/

namespace A084300.P11567456665290501867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046073 (n + 1) * A060594 (n + 1)) 6

end

end A084300.P11567456665290501867

namespace A084300

/-- `(A046073(n+1)*A060594(n+1))%6` -/
def P11567456665290501867.Spec : Prop :=
  ∀ n, P11567456665290501867.a n = A084300 (n + 1)

end A084300

/-!
# A084301: a(n) = sigma(n) mod 6.

The programs for A084301, the canonical program `A084301.P6376384842934866913` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084301 has offset 1).

The definition of A084301 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)%6` (program `A084301.P6376384842934866913`, by `A084301.P6376384842934866913.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084301.P6376384842934866913

`A000203(n+1)%6`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084301

/-- `A000203(n+1)%6` -/
def P6376384842934866913.Spec : Prop :=
  ∀ n, P6376384842934866913.a n = A084301 (n + 1)

theorem P6376384842934866913.correct : P6376384842934866913.Spec := by
  intro n
  simp only [A084301, Nat.add_sub_cancel]

end A084301

/-! ## A084301.P14730179483325713181

`A010875(A000203(n+1))`
-/

namespace A084301.P14730179483325713181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A000203 (n + 1)).toNat

end

end A084301.P14730179483325713181

namespace A084301

/-- `A010875(A000203(n+1))` -/
def P14730179483325713181.Spec : Prop :=
  ∀ n, P14730179483325713181.a n = A084301 (n + 1)

end A084301

/-! ## A084301.P17076816872507779920

`∑{d}[n+1, #]%6`
-/

namespace A084301.P17076816872507779920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % 6

end

end A084301.P17076816872507779920

namespace A084301

/-- `∑{d}[n+1, #]%6` -/
def P17076816872507779920.Spec : Prop :=
  ∀ n, (P17076816872507779920.a n : ℤ) = A084301 (n + 1)

end A084301

/-! ## A084301.P14533694438070020508

`Δ[A160664(n)]%6`
-/

namespace A084301.P14533694438070020508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 6

end

end A084301.P14533694438070020508

namespace A084301

/-- `Δ[A160664(n)]%6` -/
def P14533694438070020508.Spec : Prop :=
  ∀ n, P14533694438070020508.a n = A084301 (n + 1)

end A084301

/-! ## A084301.P9299172616901210158

`A001158(n+1)%6`
-/

namespace A084301.P9299172616901210158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001158 (n + 1)) 6

end

end A084301.P9299172616901210158

namespace A084301

/-- `A001158(n+1)%6` -/
def P9299172616901210158.Spec : Prop :=
  ∀ n, P9299172616901210158.a n = A084301 (n + 1)

end A084301

/-! ## A084301.P16164871231835140226

`A001160(n+1)%6`
-/

namespace A084301.P16164871231835140226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001160 (n + 1)) 6

end

end A084301.P16164871231835140226

namespace A084301

/-- `A001160(n+1)%6` -/
def P16164871231835140226.Spec : Prop :=
  ∀ n, P16164871231835140226.a n = A084301 (n + 1)

end A084301

/-! ## A084301.P15430276101586518675

`A013955(n+1)%6`
-/

namespace A084301.P15430276101586518675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013955 (n + 1)) 6

end

end A084301.P15430276101586518675

namespace A084301

/-- `A013955(n+1)%6` -/
def P15430276101586518675.Spec : Prop :=
  ∀ n, P15430276101586518675.a n = A084301 (n + 1)

end A084301

/-! ## A084301.P13760088932883399471

`A013957(n+1)%6`
-/

namespace A084301.P13760088932883399471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013957 (n + 1)) 6

end

end A084301.P13760088932883399471

namespace A084301

/-- `A013957(n+1)%6` -/
def P13760088932883399471.Spec : Prop :=
  ∀ n, P13760088932883399471.a n = A084301 (n + 1)

end A084301

/-! ## A084301.P9966089502386435637

`A013959(n+1)%6`
-/

namespace A084301.P9966089502386435637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013959 (n + 1)) 6

end

end A084301.P9966089502386435637

namespace A084301

/-- `A013959(n+1)%6` -/
def P9966089502386435637.Spec : Prop :=
  ∀ n, P9966089502386435637.a n = A084301 (n + 1)

end A084301

/-! ## A084301.P1164719519436567443

`A013961(n+1)%6`
-/

namespace A084301.P1164719519436567443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013961 (n + 1)) 6

end

end A084301.P1164719519436567443

namespace A084301

/-- `A013961(n+1)%6` -/
def P1164719519436567443.Spec : Prop :=
  ∀ n, P1164719519436567443.a n = A084301 (n + 1)

end A084301

/-! ## A084301.P12612067145482335222

`A013967(n+1)%6`
-/

namespace A084301.P12612067145482335222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013967 (n + 1)) 6

end

end A084301.P12612067145482335222

namespace A084301

/-- `A013967(n+1)%6` -/
def P12612067145482335222.Spec : Prop :=
  ∀ n, P12612067145482335222.a n = A084301 (n + 1)

end A084301

/-! ## A084301.P11655212197649502651

`A013969(n+1)%6`
-/

namespace A084301.P11655212197649502651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013969 (n + 1)) 6

end

end A084301.P11655212197649502651

namespace A084301

/-- `A013969(n+1)%6` -/
def P11655212197649502651.Spec : Prop :=
  ∀ n, P11655212197649502651.a n = A084301 (n + 1)

end A084301

/-! ## A084301.P11795839910645242656

`A097011(n+1)%6`
-/

namespace A084301.P11795839910645242656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097011 (n + 1)) 6

end

end A084301.P11795839910645242656

namespace A084301

/-- `A097011(n+1)%6` -/
def P11795839910645242656.Spec : Prop :=
  ∀ n, P11795839910645242656.a n = A084301 (n + 1)

end A084301

/-! ## A084301.P16086543910798075512

`A097012(n+1)%6`
-/

namespace A084301.P16086543910798075512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097012 (n + 1)) 6

end

end A084301.P16086543910798075512

namespace A084301

/-- `A097012(n+1)%6` -/
def P16086543910798075512.Spec : Prop :=
  ∀ n, P16086543910798075512.a n = A084301 (n + 1)

end A084301

/-! ## A084301.P17968762089942021507

`A193553(n+1)%6`
-/

namespace A084301.P17968762089942021507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193553 (n + 1)) 6

end

end A084301.P17968762089942021507

namespace A084301

/-- `A193553(n+1)%6` -/
def P17968762089942021507.Spec : Prop :=
  ∀ n, P17968762089942021507.a n = A084301 (n + 1)

end A084301

/-! ## A084301.P5601813713945000440

`A283123(n+1)%6`
-/

namespace A084301.P5601813713945000440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283123 (n + 1)) 6

end

end A084301.P5601813713945000440

namespace A084301

/-- `A283123(n+1)%6` -/
def P5601813713945000440.Spec : Prop :=
  ∀ n, P5601813713945000440.a n = A084301 (n + 1)

end A084301

/-! ## A084301.P16126779983921984915

`A284326(n+1)%6`
-/

namespace A084301.P16126779983921984915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284326 (n + 1)) 6

end

end A084301.P16126779983921984915

namespace A084301

/-- `A284326(n+1)%6` -/
def P16126779983921984915.Spec : Prop :=
  ∀ n, P16126779983921984915.a n = A084301 (n + 1)

end A084301

/-! ## A084301.P1144790520494225819

`A319527(n+1)%6`
-/

namespace A084301.P1144790520494225819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319527 (n + 1)) 6

end

end A084301.P1144790520494225819

namespace A084301

/-- `A319527(n+1)%6` -/
def P1144790520494225819.Spec : Prop :=
  ∀ n, P1144790520494225819.a n = A084301 (n + 1)

end A084301

/-! ## A084301.P2461359571945103953

`A344132(n+1)%6`
-/

namespace A084301.P2461359571945103953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344132 (n + 1)) 6

end

end A084301.P2461359571945103953

namespace A084301

/-- `A344132(n+1)%6` -/
def P2461359571945103953.Spec : Prop :=
  ∀ n, P2461359571945103953.a n = A084301 (n + 1)

end A084301

/-!
# A084302: Remainder of tau(n) modulo 6.

The programs for A084302, the canonical program `A084302.P16315070894676843448` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084302 has offset 1).

The definition of A084302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084302.P16315070894676843448

`A000005(n+1)%6`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A084302

/-- `A000005(n+1)%6` -/
def P16315070894676843448.Spec : Prop :=
  ∀ n, P16315070894676843448.a n = A084302 (n + 1)

theorem P16315070894676843448.correct : P16315070894676843448.Spec := by
  intro n
  simp only [A084302, Nat.add_sub_cancel]

end A084302

/-! ## A084302.P12131117901451946415

`∏{e}[n+1, #+1]%6`
-/

namespace A084302.P12131117901451946415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) % 6

end

end A084302.P12131117901451946415

namespace A084302

/-- `∏{e}[n+1, #+1]%6` -/
def P12131117901451946415.Spec : Prop :=
  ∀ n, (P12131117901451946415.a n : ℤ) = A084302 (n + 1)

end A084302

/-! ## A084302.P4041549023106112573

`∑{d}[n+1, gcd(7, #)]%6`
-/

namespace A084302.P4041549023106112573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), Nat.gcd 7 d) % 6

end

end A084302.P4041549023106112573

namespace A084302

/-- `∑{d}[n+1, gcd(7, #)]%6` -/
def P4041549023106112573.Spec : Prop :=
  ∀ n, (P4041549023106112573.a n : ℤ) = A084302 (n + 1)

end A084302

/-! ## A084302.P7576993707010355879

`Δ[A006218(n)]%6`
-/

namespace A084302.P7576993707010355879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 6

end

end A084302.P7576993707010355879

namespace A084302

/-- `Δ[A006218(n)]%6` -/
def P7576993707010355879.Spec : Prop :=
  ∀ n, P7576993707010355879.a n = A084302 (n + 1)

end A084302

/-! ## A084302.P2222170403533637763

`Δ[A054519(n)]%6`
-/

namespace A084302.P2222170403533637763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 6

end

end A084302.P2222170403533637763

namespace A084302

/-- `Δ[A054519(n)]%6` -/
def P2222170403533637763.Spec : Prop :=
  ∀ n, P2222170403533637763.a n = A084302 (n + 1)

end A084302

/-! ## A084302.P15666549044095774825

`A016002(n+1)%6`
-/

namespace A084302.P15666549044095774825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016002 (n + 1)) 6

end

end A084302.P15666549044095774825

namespace A084302

/-- `A016002(n+1)%6` -/
def P15666549044095774825.Spec : Prop :=
  ∀ n, P15666549044095774825.a n = A084302 (n + 1)

end A084302

/-! ## A084302.P1616379885395227144

`A016009(n+1)%6`
-/

namespace A084302.P1616379885395227144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016009 (n + 1)) 6

end

end A084302.P1616379885395227144

namespace A084302

/-- `A016009(n+1)%6` -/
def P1616379885395227144.Spec : Prop :=
  ∀ n, P1616379885395227144.a n = A084302 (n + 1)

end A084302

/-! ## A084302.P13401103382002576361

`A319089(n+1)%6`
-/

namespace A084302.P13401103382002576361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319089 (n + 1)) 6

end

end A084302.P13401103382002576361

namespace A084302

/-- `A319089(n+1)%6` -/
def P13401103382002576361.Spec : Prop :=
  ∀ n, P13401103382002576361.a n = A084302 (n + 1)

end A084302

/-! ## A084302.P9099036948565434754

`A343526(n+1)%6`
-/

namespace A084302.P9099036948565434754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343526 (n + 1)) 6

end

end A084302.P9099036948565434754

namespace A084302

/-- `A343526(n+1)%6` -/
def P9099036948565434754.Spec : Prop :=
  ∀ n, P9099036948565434754.a n = A084302 (n + 1)

end A084302

/-! ## A084302.P6509086532619549712

`A359037(n+1)%6`
-/

namespace A084302.P6509086532619549712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359037 (n + 1)) 6

end

end A084302.P6509086532619549712

namespace A084302

/-- `A359037(n+1)%6` -/
def P6509086532619549712.Spec : Prop :=
  ∀ n, P6509086532619549712.a n = A084302 (n + 1)

end A084302

/-! ## A084302.P11023641453150951899

`A320111(2*(n+1))%6`
-/

namespace A084302.P11023641453150951899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320111 (2 * (n + 1))) 6

end

end A084302.P11023641453150951899

namespace A084302

/-- `A320111(2*(n+1))%6` -/
def P11023641453150951899.Spec : Prop :=
  ∀ n, P11023641453150951899.a n = A084302 (n + 1)

end A084302

/-! ## A084302.P9859654865018900774

`(A038040(n+1)/(n+1))%6`
-/

namespace A084302.P9859654865018900774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))) 6

end

end A084302.P9859654865018900774

namespace A084302

/-- `(A038040(n+1)/(n+1))%6` -/
def P9859654865018900774.Spec : Prop :=
  ∀ n, P9859654865018900774.a n = A084302 (n + 1)

end A084302

/-! ## A084302.P1777681365889578240

`∑{d}[n+1, 7^A001221(#)]%6`
-/

namespace A084302.P1777681365889578240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (7 : ℚ) ^ (A001221 d : ℤ))) 6

end

end A084302.P1777681365889578240

namespace A084302

/-- `∑{d}[n+1, 7^A001221(#)]%6` -/
def P1777681365889578240.Spec : Prop :=
  ∀ n, P1777681365889578240.a n = A084302 (n + 1)

end A084302

/-! ## A084302.P16534586367693282790

`dr(A000005(2*n-(n-1))%6)`
-/

namespace A084302.P16534586367693282790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000005 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) 6)

end

end A084302.P16534586367693282790

namespace A084302

/-- `dr(A000005(2*n-(n-1))%6)` -/
def P16534586367693282790.Spec : Prop :=
  ∀ n, (P16534586367693282790.a n : ℤ) = A084302 (n + 1)

end A084302

/-! ## A084302.P11877865470928934403

`A010875(A000005(n+1))`
-/

namespace A084302.P11877865470928934403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A000005 (n + 1)).toNat

end

end A084302.P11877865470928934403

namespace A084302

/-- `A010875(A000005(n+1))` -/
def P11877865470928934403.Spec : Prop :=
  ∀ n, P11877865470928934403.a n = A084302 (n + 1)

end A084302

/-! ## A084302.P3829893353308442594

`A010875(A016002(n+1))`
-/

namespace A084302.P3829893353308442594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A016002 (n + 1)).toNat

end

end A084302.P3829893353308442594

namespace A084302

/-- `A010875(A016002(n+1))` -/
def P3829893353308442594.Spec : Prop :=
  ∀ n, P3829893353308442594.a n = A084302 (n + 1)

end A084302

/-! ## A084302.P16227981831002659644

`(A006218(n+1)-A006218(n))%6`
-/

namespace A084302.P16227981831002659644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006218 (n + 1) - A006218 n) 6

end

end A084302.P16227981831002659644

namespace A084302

/-- `(A006218(n+1)-A006218(n))%6` -/
def P16227981831002659644.Spec : Prop :=
  ∀ n, P16227981831002659644.a n = A084302 (n + 1)

end A084302

/-! ## A084302.P7506179618611520616

`∑{d}[n+1, A057427(#)]%6`
-/

namespace A084302.P7506179618611520616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A057427 d) 6

end

end A084302.P7506179618611520616

namespace A084302

/-- `∑{d}[n+1, A057427(#)]%6` -/
def P7506179618611520616.Spec : Prop :=
  ∀ n, P7506179618611520616.a n = A084302 (n + 1)

end A084302

/-! ## A084302.P6898585343954318929

`A010875(A343526(n+1))`
-/

namespace A084302.P6898585343954318929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A343526 (n + 1)).toNat

end

end A084302.P6898585343954318929

namespace A084302

/-- `A010875(A343526(n+1))` -/
def P6898585343954318929.Spec : Prop :=
  ∀ n, P6898585343954318929.a n = A084302 (n + 1)

end A084302

/-! ## A084302.P6157361130843225340

`A069157(2*(n+1))%6`
-/

namespace A084302.P6157361130843225340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069157 (2 * (n + 1))) 6

end

end A084302.P6157361130843225340

namespace A084302

/-- `A069157(2*(n+1))%6` -/
def P6157361130843225340.Spec : Prop :=
  ∀ n, P6157361130843225340.a n = A084302 (n + 1)

end A084302

/-!
# A084303: Smallest x such that sigma(x) mod 6 = n.

The programs for A084303, there is no canonical definition to state claims against.
-/

/-! ## A084303.P9237145226141972616

`a(n-3)^4` with `a(0)=5, a(1)=1, a(2)=7, a(3)=2, a(4)=3`
-/

namespace A084303.P9237145226141972616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 1, 7, 2, 3] fun n a =>
  a (n - 3) ^ 4

end

end A084303.P9237145226141972616

/-!
# A084306: Numbers m not divisible by 6 such that sigma(m) == 12 (mod m).

The programs for A084306, there is no canonical definition to state claims against.
-/

/-! ## A084306.P9343845855600913521

`A234238(A165780(n+1)+1)`
-/

namespace A084306.P9343845855600913521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234238 (A165780 (n + 1) + 1).toNat

end

end A084306.P9343845855600913521

/-!
# A084307: a(n) is the least number x such that gcd(sigma(x), sigma(x+1)) = n.

The programs for A084307, there is no canonical definition to state claims against.
-/

/-! ## A084307.P4658183804175360794

`A255545(A007709(3*n+2)%A048111(n+1))`
-/

namespace A084307.P4658183804175360794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (Int.tmod (A007709 (3 * n + 2)) (A048111 (n + 1))).toNat

end

end A084307.P4658183804175360794

/-!
# A084309: a(n) = gcd(prime(n)-1, n).

The programs for A084309, the canonical program `A084309.P18237628626316260280` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084309 has offset 1).

The definition of A084309 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000040(n+1)-1, n+1)` (program `A084309.P18237628626316260280`, by `A084309.P18237628626316260280.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084309.P18237628626316260280

`gcd(A000040(n+1)-1, n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084309

/-- `gcd(A000040(n+1)-1, n+1)` -/
def P18237628626316260280.Spec : Prop :=
  ∀ n, (P18237628626316260280.a n : ℤ) = A084309 (n + 1)

theorem P18237628626316260280.correct : P18237628626316260280.Spec := by
  intro n
  simp only [A084309, Nat.add_sub_cancel]

end A084309

/-! ## A084309.P120448286094662423

`gcd(n+1, A006093(n+1))`
-/

namespace A084309.P120448286094662423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A006093 (n + 1))

end

end A084309.P120448286094662423

namespace A084309

/-- `gcd(n+1, A006093(n+1))` -/
def P120448286094662423.Spec : Prop :=
  ∀ n, (P120448286094662423.a n : ℤ) = A084309 (n + 1)

end A084309

/-! ## A084309.P12831988312698912665

`gcd(A006093(n+1), A131738(n))`
-/

namespace A084309.P12831988312698912665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006093 (n + 1)) (A131738 n)

end

end A084309.P12831988312698912665

namespace A084309

/-- `gcd(A006093(n+1), A131738(n))` -/
def P12831988312698912665.Spec : Prop :=
  ∀ n, (P12831988312698912665.a n : ℤ) = A084309 (n + 1)

end A084309

/-! ## A084309.P13709553621817891085

`gcd(A000027(n+1), A036689(n+1))`
-/

namespace A084309.P13709553621817891085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A036689 (n + 1))

end

end A084309.P13709553621817891085

namespace A084309

/-- `gcd(A000027(n+1), A036689(n+1))` -/
def P13709553621817891085.Spec : Prop :=
  ∀ n, (P13709553621817891085.a n : ℤ) = A084309 (n + 1)

end A084309

/-! ## A084309.P3518873930531709087

`gcd(A033286(n+1), A037167(n+1))`
-/

namespace A084309.P3518873930531709087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033286 (n + 1)) (A037167 (n + 1))

end

end A084309.P3518873930531709087

namespace A084309

/-- `gcd(A033286(n+1), A037167(n+1))` -/
def P3518873930531709087.Spec : Prop :=
  ∀ n, (P3518873930531709087.a n : ℤ) = A084309 (n + 1)

end A084309

/-! ## A084309.P9379260599088224112

`gcd(A060822(n+1), A061019(n+1))`
-/

namespace A084309.P9379260599088224112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060822 (n + 1)) (A061019 (n + 1))

end

end A084309.P9379260599088224112

namespace A084309

/-- `gcd(A060822(n+1), A061019(n+1))` -/
def P9379260599088224112.Spec : Prop :=
  ∀ n, (P9379260599088224112.a n : ℤ) = A084309 (n + 1)

end A084309

/-! ## A084309.P9683786372953053437

`gcd(A064830(n+1), A087611(n+1))`
-/

namespace A084309.P9683786372953053437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064830 (n + 1)) (A087611 (n + 1))

end

end A084309.P9683786372953053437

namespace A084309

/-- `gcd(A064830(n+1), A087611(n+1))` -/
def P9683786372953053437.Spec : Prop :=
  ∀ n, (P9683786372953053437.a n : ℤ) = A084309 (n + 1)

end A084309

/-! ## A084309.P12069913183665677866

`gcd(A066043(n+1), A095116(n+1))`
-/

namespace A084309.P12069913183665677866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066043 (n + 1)) (A095116 (n + 1))

end

end A084309.P12069913183665677866

namespace A084309

/-- `gcd(A066043(n+1), A095116(n+1))` -/
def P12069913183665677866.Spec : Prop :=
  ∀ n, (P12069913183665677866.a n : ℤ) = A084309 (n + 1)

end A084309

/-! ## A084309.P14598100125108069081

`gcd(A064505(n+1), A135177(n+1))`
-/

namespace A084309.P14598100125108069081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064505 (n + 1)) (A135177 (n + 1))

end

end A084309.P14598100125108069081

namespace A084309

/-- `gcd(A064505(n+1), A135177(n+1))` -/
def P14598100125108069081.Spec : Prop :=
  ∀ n, (P14598100125108069081.a n : ℤ) = A084309 (n + 1)

end A084309

/-! ## A084309.P5391960242329526816

`gcd(A080697(n+1), A138403(n+1))`
-/

namespace A084309.P5391960242329526816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080697 (n + 1)) (A138403 (n + 1))

end

end A084309.P5391960242329526816

namespace A084309

/-- `gcd(A080697(n+1), A138403(n+1))` -/
def P5391960242329526816.Spec : Prop :=
  ∀ n, (P5391960242329526816.a n : ℤ) = A084309 (n + 1)

end A084309

/-! ## A084309.P12784754658989906696

`gcd(A119972(n+1), A138407(n+1))`
-/

namespace A084309.P12784754658989906696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119972 (n + 1)) (A138407 (n + 1))

end

end A084309.P12784754658989906696

namespace A084309

/-- `gcd(A119972(n+1), A138407(n+1))` -/
def P12784754658989906696.Spec : Prop :=
  ∀ n, (P12784754658989906696.a n : ℤ) = A084309 (n + 1)

end A084309

/-! ## A084309.P16141132985192011809

`gcd(A138412(n+1), A140580(n+1))`
-/

namespace A084309.P16141132985192011809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138412 (n + 1)) (A140580 (n + 1))

end

end A084309.P16141132985192011809

namespace A084309

/-- `gcd(A138412(n+1), A140580(n+1))` -/
def P16141132985192011809.Spec : Prop :=
  ∀ n, (P16141132985192011809.a n : ℤ) = A084309 (n + 1)

end A084309

/-! ## A084309.P169827545631324711

`gcd(A040976(n+1)+1, A065890(n+1))`
-/

namespace A084309.P169827545631324711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040976 (n + 1) + 1) (A065890 (n + 1))

end

end A084309.P169827545631324711

namespace A084309

/-- `gcd(A040976(n+1)+1, A065890(n+1))` -/
def P169827545631324711.Spec : Prop :=
  ∀ n, (P169827545631324711.a n : ℤ) = A084309 (n + 1)

end A084309

/-! ## A084309.P6620198885462857414

`gcd(1-A161522(n+1), A039915(n+1))`
-/

namespace A084309.P6620198885462857414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A161522 (n + 1)) (A039915 (n + 1))

end

end A084309.P6620198885462857414

namespace A084309

/-- `gcd(1-A161522(n+1), A039915(n+1))` -/
def P6620198885462857414.Spec : Prop :=
  ∀ n, (P6620198885462857414.a n : ℤ) = A084309 (n + 1)

end A084309

/-! ## A084309.P13671043511072081359

`gcd(2-A131733(n+1), A087156(n+1))`
-/

namespace A084309.P13671043511072081359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A131733 (n + 1)) (A087156 (n + 1))

end

end A084309.P13671043511072081359

namespace A084309

/-- `gcd(2-A131733(n+1), A087156(n+1))` -/
def P13671043511072081359.Spec : Prop :=
  ∀ n, (P13671043511072081359.a n : ℤ) = A084309 (n + 1)

end A084309

/-! ## A084309.P14643793436968128982

`gcd(A014681(A014681(n))+1, A039915(n+1))`
-/

namespace A084309.P14643793436968128982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014681 (A014681 n).toNat + 1) (A039915 (n + 1))

end

end A084309.P14643793436968128982

namespace A084309

/-- `gcd(A014681(A014681(n))+1, A039915(n+1))` -/
def P14643793436968128982.Spec : Prop :=
  ∀ n, (P14643793436968128982.a n : ℤ) = A084309 (n + 1)

end A084309

/-! ## A084309.P8311330820247053520

`gcd(2-A008864(n+1), A000027(A000027(n+1)))`
-/

namespace A084309.P8311330820247053520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A008864 (n + 1)) (A000027 (A000027 (n + 1)).toNat)

end

end A084309.P8311330820247053520

namespace A084309

/-- `gcd(2-A008864(n+1), A000027(A000027(n+1)))` -/
def P8311330820247053520.Spec : Prop :=
  ∀ n, (P8311330820247053520.a n : ℤ) = A084309 (n + 1)

end A084309

/-! ## A084309.P11377823259244759946

`gcd(1-A008578(n+2), A028310(n+1))`
-/

namespace A084309.P11377823259244759946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A008578 (n + 2)) (A028310 (n + 1))

end

end A084309.P11377823259244759946

namespace A084309

/-- `gcd(1-A008578(n+2), A028310(n+1))` -/
def P11377823259244759946.Spec : Prop :=
  ∀ n, (P11377823259244759946.a n : ℤ) = A084309 (n + 1)

end A084309

/-! ## A084309.P10243185977052741937

`gcd(C(n+1, n), eq[2, A000005(n+1)])`
-/

namespace A084309.P10243185977052741937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose (n + 1) n) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084309.P10243185977052741937

namespace A084309

/-- `gcd(C(n+1, n), eq[2, A000005(n+1)])` -/
def P10243185977052741937.Spec : Prop :=
  ∀ n, (P10243185977052741937.a n : ℤ) = A084309 (n + 1)

end A084309

/-! ## A084309.P1779420849835342483

`gcd(abs(1-n)+2, eq[1, A054024(n+1)])`
-/

namespace A084309.P1779420849835342483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (|1 - (n : ℤ)| + 2) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A084309.P1779420849835342483

namespace A084309

/-- `gcd(abs(1-n)+2, eq[1, A054024(n+1)])` -/
def P1779420849835342483.Spec : Prop :=
  ∀ n, (P1779420849835342483.a n : ℤ) = A084309 (n + 1)

end A084309

/-!
# A084310: a(n) = gcd(prime(n)+1, n).

The programs for A084310, the canonical program `A084310.P6345130451328441445` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084310 has offset 1).

The definition of A084310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000040(n+1)+1, n+1)` (program `A084310.P6345130451328441445`, by `A084310.P6345130451328441445.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084310.P6345130451328441445

`gcd(A000040(n+1)+1, n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084310

/-- `gcd(A000040(n+1)+1, n+1)` -/
def P6345130451328441445.Spec : Prop :=
  ∀ n, (P6345130451328441445.a n : ℤ) = A084310 (n + 1)

theorem P6345130451328441445.correct : P6345130451328441445.Spec := by
  intro n
  simp only [A084310, Nat.add_sub_cancel]

end A084310

/-! ## A084310.P10795840808603017870

`gcd(n+1, A008864(n+1))`
-/

namespace A084310.P10795840808603017870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A008864 (n + 1))

end

end A084310.P10795840808603017870

namespace A084310

/-- `gcd(n+1, A008864(n+1))` -/
def P10795840808603017870.Spec : Prop :=
  ∀ n, (P10795840808603017870.a n : ℤ) = A084310 (n + 1)

end A084310

/-! ## A084310.P3811470267658581845

`gcd(xor(n, -1), A036690(n+1))`
-/

namespace A084310.P3811470267658581845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A036690 (n + 1))

end

end A084310.P3811470267658581845

namespace A084310

/-- `gcd(xor(n, -1), A036690(n+1))` -/
def P3811470267658581845.Spec : Prop :=
  ∀ n, (P3811470267658581845.a n : ℤ) = A084310 (n + 1)

end A084310

/-! ## A084310.P1627575541065132868

`gcd(round(sqrt(n²+1))+1, A055670(n+1))`
-/

namespace A084310.P1627575541065132868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1) (A055670 (n + 1))

end

end A084310.P1627575541065132868

namespace A084310

/-- `gcd(round(sqrt(n²+1))+1, A055670(n+1))` -/
def P1627575541065132868.Spec : Prop :=
  ∀ n, (P1627575541065132868.a n : ℤ) = A084310 (n + 1)

end A084310

/-! ## A084310.P879844716995358166

`gcd(A055670(n+1), A131738(n))`
-/

namespace A084310.P879844716995358166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055670 (n + 1)) (A131738 n)

end

end A084310.P879844716995358166

namespace A084310

/-- `gcd(A055670(n+1), A131738(n))` -/
def P879844716995358166.Spec : Prop :=
  ∀ n, (P879844716995358166.a n : ℤ) = A084310 (n + 1)

end A084310

/-! ## A084310.P8160469785629098299

`gcd(A000027(n+1), A014692(n+1))`
-/

namespace A084310.P8160469785629098299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A014692 (n + 1))

end

end A084310.P8160469785629098299

namespace A084310

/-- `gcd(A000027(n+1), A014692(n+1))` -/
def P8160469785629098299.Spec : Prop :=
  ∀ n, (P8160469785629098299.a n : ℤ) = A084310 (n + 1)

end A084310

/-! ## A084310.P12050937479459435472

`gcd(A028310(n+1), A028815(n+1))`
-/

namespace A084310.P12050937479459435472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (n + 1)) (A028815 (n + 1))

end

end A084310.P12050937479459435472

namespace A084310

/-- `gcd(A028310(n+1), A028815(n+1))` -/
def P12050937479459435472.Spec : Prop :=
  ∀ n, (P12050937479459435472.a n : ℤ) = A084310 (n + 1)

end A084310

/-! ## A084310.P16339418350868353098

`gcd(A061019(n+1), A096197(n+1))`
-/

namespace A084310.P16339418350868353098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061019 (n + 1)) (A096197 (n + 1))

end

end A084310.P16339418350868353098

namespace A084310

/-- `gcd(A061019(n+1), A096197(n+1))` -/
def P16339418350868353098.Spec : Prop :=
  ∀ n, (P16339418350868353098.a n : ℤ) = A084310 (n + 1)

end A084310

/-! ## A084310.P5346907200648911179

`gcd(A064830(n+1), A098935(n+1))`
-/

namespace A084310.P5346907200648911179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064830 (n + 1)) (A098935 (n + 1))

end

end A084310.P5346907200648911179

namespace A084310

/-- `gcd(A064830(n+1), A098935(n+1))` -/
def P5346907200648911179.Spec : Prop :=
  ∀ n, (P5346907200648911179.a n : ℤ) = A084310 (n + 1)

end A084310

/-! ## A084310.P1095024705751368008

`gcd(A087156(n+1), A131733(n+1))`
-/

namespace A084310.P1095024705751368008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087156 (n + 1)) (A131733 (n + 1))

end

end A084310.P1095024705751368008

namespace A084310

/-- `gcd(A087156(n+1), A131733(n+1))` -/
def P1095024705751368008.Spec : Prop :=
  ∀ n, (P1095024705751368008.a n : ℤ) = A084310 (n + 1)

end A084310

/-! ## A084310.P1964292196045951294

`gcd(A080697(n+1), A175216(n+1))`
-/

namespace A084310.P1964292196045951294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080697 (n + 1)) (A175216 (n + 1))

end

end A084310.P1964292196045951294

namespace A084310

/-- `gcd(A080697(n+1), A175216(n+1))` -/
def P1964292196045951294.Spec : Prop :=
  ∀ n, (P1964292196045951294.a n : ℤ) = A084310 (n + 1)

end A084310

/-! ## A084310.P6291486566894466076

`gcd(A033286(n+1), A345727(n+1))`
-/

namespace A084310.P6291486566894466076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033286 (n + 1)) (A345727 (n + 1))

end

end A084310.P6291486566894466076

namespace A084310

/-- `gcd(A033286(n+1), A345727(n+1))` -/
def P6291486566894466076.Spec : Prop :=
  ∀ n, (P6291486566894466076.a n : ℤ) = A084310 (n + 1)

end A084310

/-! ## A084310.P3676308658366872739

`gcd(A095116(n+1)+2, A066043(n+1))`
-/

namespace A084310.P3676308658366872739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095116 (n + 1) + 2) (A066043 (n + 1))

end

end A084310.P3676308658366872739

namespace A084310

/-- `gcd(A095116(n+1)+2, A066043(n+1))` -/
def P3676308658366872739.Spec : Prop :=
  ∀ n, (P3676308658366872739.a n : ℤ) = A084310 (n + 1)

end A084310

/-! ## A084310.P16965577718448132745

`gcd(A014689(n+1)+1, n%A151800(n)+1)`
-/

namespace A084310.P16965577718448132745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014689 (n + 1) + 1) (Int.tmod (n : ℤ) (A151800 n) + 1)

end

end A084310.P16965577718448132745

namespace A084310

/-- `gcd(A014689(n+1)+1, n%A151800(n)+1)` -/
def P16965577718448132745.Spec : Prop :=
  ∀ n, (P16965577718448132745.a n : ℤ) = A084310 (n + 1)

end A084310

/-! ## A084310.P11204803557229683080

`gcd(A008578(n+2)-n, A060681(2*(n+1)))`
-/

namespace A084310.P11204803557229683080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008578 (n + 2) - (n : ℤ)) (A060681 (2 * (n + 1)))

end

end A084310.P11204803557229683080

namespace A084310

/-- `gcd(A008578(n+2)-n, A060681(2*(n+1)))` -/
def P11204803557229683080.Spec : Prop :=
  ∀ n, (P11204803557229683080.a n : ℤ) = A084310 (n + 1)

end A084310

/-! ## A084310.P9091039881322858337

`gcd(A082500(2*(n+1))+1, A082500(2*n+1))`
-/

namespace A084310.P9091039881322858337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082500 (2 * (n + 1)) + 1) (A082500 (2 * n + 1))

end

end A084310.P9091039881322858337

namespace A084310

/-- `gcd(A082500(2*(n+1))+1, A082500(2*n+1))` -/
def P9091039881322858337.Spec : Prop :=
  ∀ n, (P9091039881322858337.a n : ℤ) = A084310 (n + 1)

end A084310

/-! ## A084310.P2980668681065286173

`A087267(A008864(n+1))`
-/

namespace A084310.P2980668681065286173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (A008864 (n + 1)).toNat

end

end A084310.P2980668681065286173

namespace A084310

/-- `A087267(A008864(n+1))` -/
def P2980668681065286173.Spec : Prop :=
  ∀ n, P2980668681065286173.a n = A084310 (n + 1)

end A084310

/-! ## A084310.P11948233287682769492

`A087267(A028815(n+1))`
-/

namespace A084310.P11948233287682769492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (A028815 (n + 1)).toNat

end

end A084310.P11948233287682769492

namespace A084310

/-- `A087267(A028815(n+1))` -/
def P11948233287682769492.Spec : Prop :=
  ∀ n, P11948233287682769492.a n = A084310 (n + 1)

end A084310

/-! ## A084310.P18209253529263602324

`A087267(A055670(n+1))`
-/

namespace A084310.P18209253529263602324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (A055670 (n + 1)).toNat

end

end A084310.P18209253529263602324

namespace A084310

/-- `A087267(A055670(n+1))` -/
def P18209253529263602324.Spec : Prop :=
  ∀ n, P18209253529263602324.a n = A084310 (n + 1)

end A084310

/-! ## A084310.P12745308847994172842

`A087267(A299763(n+2))`
-/

namespace A084310.P12745308847994172842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (A299763 (n + 2)).toNat

end

end A084310.P12745308847994172842

namespace A084310

/-- `A087267(A299763(n+2))` -/
def P12745308847994172842.Spec : Prop :=
  ∀ n, P12745308847994172842.a n = A084310 (n + 1)

end A084310

/-!
# A084311: a(n) = gcd(prime(n)-1,n-1).

The programs for A084311, the canonical program `A084311.P6427895288725106754` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084311 has offset 1).

The definition of A084311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000040(n+1)-1, n)` (program `A084311.P6427895288725106754`, by `A084311.P6427895288725106754.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084311.P6427895288725106754

`gcd(A000040(n+1)-1, n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084311

/-- `gcd(A000040(n+1)-1, n)` -/
def P6427895288725106754.Spec : Prop :=
  ∀ n, (P6427895288725106754.a n : ℤ) = A084311 (n + 1)

theorem P6427895288725106754.correct : P6427895288725106754.Spec := by
  intro n
  simp only [A084311, Nat.add_sub_cancel]

end A084311

/-! ## A084311.P15453012267840506494

`gcd(n, A006093(n+1))`
-/

namespace A084311.P15453012267840506494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A006093 (n + 1))

end

end A084311.P15453012267840506494

namespace A084311

/-- `gcd(n, A006093(n+1))` -/
def P15453012267840506494.Spec : Prop :=
  ∀ n, (P15453012267840506494.a n : ℤ) = A084311 (n + 1)

end A084311

/-! ## A084311.P1459809734355552419

`gcd(∑[2*n], A014689(n+1))`
-/

namespace A084311.P1459809734355552419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A014689 (n + 1))

end

end A084311.P1459809734355552419

namespace A084311

/-- `gcd(∑[2*n], A014689(n+1))` -/
def P1459809734355552419.Spec : Prop :=
  ∀ n, (P1459809734355552419.a n : ℤ) = A084311 (n + 1)

end A084311

/-! ## A084311.P14607656065138838757

`gcd(A014689(n+1), A028310(n))`
-/

namespace A084311.P14607656065138838757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014689 (n + 1)) (A028310 n)

end

end A084311.P14607656065138838757

namespace A084311

/-- `gcd(A014689(n+1), A028310(n))` -/
def P14607656065138838757.Spec : Prop :=
  ∀ n, (P14607656065138838757.a n : ℤ) = A084311 (n + 1)

end A084311

/-! ## A084311.P4305066387881078747

`gcd(A037167(n+1), A274922(n))`
-/

namespace A084311.P4305066387881078747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037167 (n + 1)) (A274922 n)

end

end A084311.P4305066387881078747

namespace A084311

/-- `gcd(A037167(n+1), A274922(n))` -/
def P4305066387881078747.Spec : Prop :=
  ∀ n, (P4305066387881078747.a n : ℤ) = A084311 (n + 1)

end A084311

/-! ## A084311.P116440218405971336

`gcd(A039915(n+1), A161522(n+1))`
-/

namespace A084311.P116440218405971336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039915 (n + 1)) (A161522 (n + 1))

end

end A084311.P116440218405971336

namespace A084311

/-- `gcd(A039915(n+1), A161522(n+1))` -/
def P116440218405971336.Spec : Prop :=
  ∀ n, (P116440218405971336.a n : ℤ) = A084311 (n + 1)

end A084311

/-! ## A084311.P16169374664038205094

`gcd(A135177(n+1), A182174(n+1))`
-/

namespace A084311.P16169374664038205094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135177 (n + 1)) (A182174 (n + 1))

end

end A084311.P16169374664038205094

namespace A084311

/-- `gcd(A135177(n+1), A182174(n+1))` -/
def P16169374664038205094.Spec : Prop :=
  ∀ n, (P16169374664038205094.a n : ℤ) = A084311 (n + 1)

end A084311

/-! ## A084311.P3011231289602565477

`gcd(1-A087156(n+1), A131733(n+1))`
-/

namespace A084311.P3011231289602565477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A087156 (n + 1)) (A131733 (n + 1))

end

end A084311.P3011231289602565477

namespace A084311

/-- `gcd(1-A087156(n+1), A131733(n+1))` -/
def P3011231289602565477.Spec : Prop :=
  ∀ n, (P3011231289602565477.a n : ℤ) = A084311 (n + 1)

end A084311

/-! ## A084311.P12808017330964319586

`gcd(A156037(n+1)+n, A156037(n+1))`
-/

namespace A084311.P12808017330964319586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156037 (n + 1) + (n : ℤ)) (A156037 (n + 1))

end

end A084311.P12808017330964319586

namespace A084311

/-- `gcd(A156037(n+1)+n, A156037(n+1))` -/
def P12808017330964319586.Spec : Prop :=
  ∀ n, (P12808017330964319586.a n : ℤ) = A084311 (n + 1)

end A084311

/-! ## A084311.P12096855454594428843

`gcd(A182174(n+1)+A138403(n+1)², A138403(n+1))`
-/

namespace A084311.P12096855454594428843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182174 (n + 1) + A138403 (n + 1) ^ 2) (A138403 (n + 1))

end

end A084311.P12096855454594428843

namespace A084311

/-- `gcd(A182174(n+1)+A138403(n+1)², A138403(n+1))` -/
def P12096855454594428843.Spec : Prop :=
  ∀ n, (P12096855454594428843.a n : ℤ) = A084311 (n + 1)

end A084311

/-! ## A084311.P661432893475286305

`gcd(2*n-n, record[A000010(n+1)])`
-/

namespace A084311.P661432893475286305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n : ℤ) - (n : ℤ)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A084311.P661432893475286305

namespace A084311

/-- `gcd(2*n-n, record[A000010(n+1)])` -/
def P661432893475286305.Spec : Prop :=
  ∀ n, (P661432893475286305.a n : ℤ) = A084311 (n + 1)

end A084311

/-! ## A084311.P13284919523315087678

`gcd(n-2*n, eq[2, A000005(n+1)])`
-/

namespace A084311.P13284919523315087678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - (2 * n : ℤ)) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A084311.P13284919523315087678

namespace A084311

/-- `gcd(n-2*n, eq[2, A000005(n+1)])` -/
def P13284919523315087678.Spec : Prop :=
  ∀ n, (P13284919523315087678.a n : ℤ) = A084311 (n + 1)

end A084311

/-! ## A084311.P14724790871376657777

`A118310(A014689(n+1))`
-/

namespace A084311.P14724790871376657777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118310 (A014689 (n + 1)).toNat

end

end A084311.P14724790871376657777

namespace A084311

/-- `A118310(A014689(n+1))` -/
def P14724790871376657777.Spec : Prop :=
  ∀ n, P14724790871376657777.a n = A084311 (n + 1)

end A084311

/-! ## A084311.P11065472517846519100

`A118310(A065890(n+1)+1)`
-/

namespace A084311.P11065472517846519100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118310 (A065890 (n + 1) + 1).toNat

end

end A084311.P11065472517846519100

namespace A084311

/-- `A118310(A065890(n+1)+1)` -/
def P11065472517846519100.Spec : Prop :=
  ∀ n, P11065472517846519100.a n = A084311 (n + 1)

end A084311

/-! ## A084311.P4849588812557205621

`A118310(record[A000010(n+1)]-n)`
-/

namespace A084311.P4849588812557205621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A084311.P4849588812557205621

namespace A084311

/-- `A118310(record[A000010(n+1)]-n)` -/
def P4849588812557205621.Spec : Prop :=
  ∀ n, P4849588812557205621.a n = A084311 (n + 1)

end A084311

/-! ## A084311.P6482436942791640467

`A118310(A000040(n+1)-(n+1))`
-/

namespace A084311.P6482436942791640467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118310 (A000040 (n + 1) - (n + 1 : ℤ)).toNat

end

end A084311.P6482436942791640467

namespace A084311

/-- `A118310(A000040(n+1)-(n+1))` -/
def P6482436942791640467.Spec : Prop :=
  ∀ n, P6482436942791640467.a n = A084311 (n + 1)

end A084311

/-! ## A084311.P675268103318804878

`A118310(A008578(n+2)-(n+1))`
-/

namespace A084311.P675268103318804878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118310 (A008578 (n + 2) - (n + 1 : ℤ)).toNat

end

end A084311.P675268103318804878

namespace A084311

/-- `A118310(A008578(n+2)-(n+1))` -/
def P675268103318804878.Spec : Prop :=
  ∀ n, P675268103318804878.a n = A084311 (n + 1)

end A084311

/-! ## A084311.P13573994723897717346

`A118310(A067747(2*n+1)-(n+1))`
-/

namespace A084311.P13573994723897717346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118310 (A067747 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A084311.P13573994723897717346

namespace A084311

/-- `A118310(A067747(2*n+1)-(n+1))` -/
def P13573994723897717346.Spec : Prop :=
  ∀ n, P13573994723897717346.a n = A084311 (n + 1)

end A084311

/-! ## A084311.P18430064496516976630

`A118310(A000010(A000040(n+1))-n)`
-/

namespace A084311.P18430064496516976630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118310 (A000010 (A000040 (n + 1)).toNat - (n : ℤ)).toNat

end

end A084311.P18430064496516976630

namespace A084311

/-- `A118310(A000010(A000040(n+1))-n)` -/
def P18430064496516976630.Spec : Prop :=
  ∀ n, P18430064496516976630.a n = A084311 (n + 1)

end A084311

/-! ## A084311.P15296541433832964876

`gcd(eq[1, A054024(n+1)], A002265(4*n))`
-/

namespace A084311.P15296541433832964876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A002265 (4 * n))

end

end A084311.P15296541433832964876

namespace A084311

/-- `gcd(eq[1, A054024(n+1)], A002265(4*n))` -/
def P15296541433832964876.Spec : Prop :=
  ∀ n, (P15296541433832964876.a n : ℤ) = A084311 (n + 1)

end A084311

/-!
# A084313: a(n) is the smallest number k such that gcd(prime(k)-1, k) = n.

The programs for A084313, there is no canonical definition to state claims against.
-/

/-! ## A084313.P7259106713895333392

`(n+1)*A106790(A056120(n))`
-/

namespace A084313.P7259106713895333392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A106790 (A056120 n).toNat

end

end A084313.P7259106713895333392

/-!
# A084314: a(n) is the smallest number k such that gcd(prime(k)+1, k) = n.

The programs for A084314, there is no canonical definition to state claims against.
-/

/-! ## A084314.P17019696586819544733

`lcm(n+1, A050271(A032559(n+1)))`
-/

namespace A084314.P17019696586819544733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A050271 (A032559 (n + 1)).toNat)

end

end A084314.P17019696586819544733

/-! ## A084314.P355375511376705671

`lcm(A050271(n+1), A098282(A007097(n)))`
-/

namespace A084314.P355375511376705671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050271 (n + 1)) (A098282 (A007097 n).toNat)

end

end A084314.P355375511376705671

/-! ## A084314.P1758695332726237891

`lcm(A050271(A032559(n+1)), A199343(n))`
-/

namespace A084314.P1758695332726237891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050271 (A032559 (n + 1)).toNat) (A199343 n)

end

end A084314.P1758695332726237891

/-! ## A084314.P3006491601103099417

`lcm(A000027(n+1), A322742(A032559(n+1)))`
-/

namespace A084314.P3006491601103099417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A322742 (A032559 (n + 1)).toNat)

end

end A084314.P3006491601103099417

/-! ## A084314.P11002028069712318850

`lcm(A032559(A032559(n+1)), A322742(n+1))`
-/

namespace A084314.P11002028069712318850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A032559 (A032559 (n + 1)).toNat) (A322742 (n + 1))

end

end A084314.P11002028069712318850

/-!
# A084315: a(n) is the smallest number k such that gcd(prime(k)-1,k-1) = n.

The programs for A084315, there is no canonical definition to state claims against.
-/

/-! ## A084315.P6045515114141669357

`A056239(A006704(n+1)+A001692(n))`
-/

namespace A084315.P6045515114141669357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A006704 (n + 1) + A001692 n).toNat

end

end A084315.P6045515114141669357

/-!
# A084317: Concatenation of the prime factors of n, in increasing order.

The programs for A084317, there is no canonical definition to state claims against.
-/

/-! ## A084317.P12945863555385985910

`A037276(∏{p}[n+1, #])-A008683(A065999(n))`
-/

namespace A084317.P12945863555385985910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (∏ p ∈ Nat.primeFactors (f1 n), p) - A008683 (A065999 n).toNat

end

end A084317.P12945863555385985910

/-! ## A084317.P16107388104027023081

`A037276(A007947(n+1))*A051904(A007947(n+1))`
-/

namespace A084317.P16107388104027023081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A007947 (n + 1)).toNat * A051904 (A007947 (n + 1)).toNat

end

end A084317.P16107388104027023081

/-! ## A084317.P3104451952474697786

`A154269(A000040(n+1))+A037276(∏{p}[n+1, #])`
-/

namespace A084317.P3104451952474697786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A000040 (n + 1)).toNat + A037276 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A084317.P3104451952474697786

/-! ## A084317.P2251104411843896368

`A037276(∏{p}[n+1, #])-A154269(∑[n+1])`
-/

namespace A084317.P2251104411843896368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (∏ p ∈ Nat.primeFactors (f1 n), p) - A154269 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A084317.P2251104411843896368

/-! ## A084317.P12680555853166262070

`A087712(A328878(n+1))%(2^n+n)`
-/

namespace A084317.P12680555853166262070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087712 (A328878 (n + 1)).toNat) (2 ^ n + n : ℤ)

end

end A084317.P12680555853166262070

/-! ## A084317.P15738410551131960612

`A154269(n²+2)+A037276(∏{p}[n+1, #])`
-/

namespace A084317.P15738410551131960612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (n ^ 2 + 2) + A037276 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A084317.P15738410551131960612

/-!
# A084318: Iterate function described in A084317 if started at initial value n until reaching a fixed point.

The programs for A084318, there is no canonical definition to state claims against.
-/

/-! ## A084318.P3535272944215019267

`∑{p}[A084317(n+1)²², #]`
-/

namespace A084318.P3535272944215019267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084317 (n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A084318.P3535272944215019267

/-! ## A084318.P1242013739611706584

`∑{p}[A084317(A077168(n)), #]`
-/

namespace A084318.P1242013739611706584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084317 (A077168 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A084318.P1242013739611706584

/-! ## A084318.P10309007039298609942

`A107286(A084317(n+1)^3)`
-/

namespace A084318.P10309007039298609942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A084317 (n + 1) ^ 3).toNat

end

end A084318.P10309007039298609942

/-! ## A084318.P2314153493491349555

`A084317(∏{p}[A084317(n+1)²², #])`
-/

namespace A084318.P2314153493491349555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084317 (n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084317 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A084318.P2314153493491349555

/-! ## A084318.P6205770063328511568

`A084317(A084317(n+1)^∑{d}[n+1, (#%(n+1))%2])`
-/

namespace A084318.P6205770063328511568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084317 (A084317 (n + 1) ^ (∑ d ∈ Nat.divisors (f1 n), d % (n + 1) % 2)).toNat

end

end A084318.P6205770063328511568

/-!
# A084319: Orbit of 91 under function described in A084317.

The programs for A084319, there is no canonical definition to state claims against.
-/

/-! ## A084319.P6517625553699436679

`A084317(a(n-1))` with `a(0)=91`
-/

namespace A084319.P6517625553699436679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [91] fun n a =>
  A084317 (a (n - 1)).toNat

end

end A084319.P6517625553699436679

/-!
# A084320: Number of powers of two between 2 consecutive factorials (2! including).

The programs for A084320, the canonical program `A084320.P13942213847821796117` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084320 has offset 1).

The definition of A084320 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067850, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A084320.P13942213847821796117

`A067850(n+2)-A067850(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A084320

/-- `A067850(n+2)-A067850(n+1)` -/
def P13942213847821796117.Spec : Prop :=
  ∀ n, P13942213847821796117.a n = A084320 (n + 1)

theorem P13942213847821796117.correct : P13942213847821796117.Spec := by
  intro n
  simp only [A084320, Nat.add_sub_cancel]

end A084320

/-! ## A084320.P16604424362431587349

`Δ[floor(∑[log2(n+1)])]`
-/

namespace A084320.P16604424362431587349
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 1 : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084320.P16604424362431587349

namespace A084320

/-- `Δ[floor(∑[log2(n+1)])]` -/
def P16604424362431587349.Spec : Prop :=
  ∀ n, P16604424362431587349.a n = A084320 (n + 1)

end A084320

/-! ## A084320.P12816708071823719032

`abs(Δ[A067850(n+1)])`
-/

namespace A084320.P12816708071823719032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A084320.P12816708071823719032

namespace A084320

/-- `abs(Δ[A067850(n+1)])` -/
def P12816708071823719032.Spec : Prop :=
  ∀ n, P12816708071823719032.a n = A084320 (n + 1)

end A084320

/-! ## A084320.P3615823749390174149

`abs(Δ[A072831(n+1)])`
-/

namespace A084320.P3615823749390174149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A084320.P3615823749390174149

namespace A084320

/-- `abs(Δ[A072831(n+1)])` -/
def P3615823749390174149.Spec : Prop :=
  ∀ n, P3615823749390174149.a n = A084320 (n + 1)

end A084320

/-! ## A084320.P1778920714251384382

`A000027(Δ[A067850(n+1)])`
-/

namespace A084320.P1778920714251384382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A084320.P1778920714251384382

namespace A084320

/-- `A000027(Δ[A067850(n+1)])` -/
def P1778920714251384382.Spec : Prop :=
  ∀ n, P1778920714251384382.a n = A084320 (n + 1)

end A084320

/-! ## A084320.P14357709924656657805

`A072831(n+2)-A072831(n+1)`
-/

namespace A084320.P14357709924656657805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 (n + 2) - A072831 (n + 1)

end

end A084320.P14357709924656657805

namespace A084320

/-- `A072831(n+2)-A072831(n+1)` -/
def P14357709924656657805.Spec : Prop :=
  ∀ n, P14357709924656657805.a n = A084320 (n + 1)

theorem P14357709924656657805.correct : P14357709924656657805.Spec := by
  intro n
  simp only [A084320, Nat.add_sub_cancel, A084320.P14357709924656657805.a, A084320.P13942213847821796117.a, A067850, A067850.P433127479858209906.a, A072831, A072831.P2075451572801131696.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084320

/-!
# A084321: Least number k such that between k! and (k+1)! there are n powers of 2 (each interval includes (k+1)! but not k!).

The programs for A084321, there is no canonical definition to state claims against.
-/

/-! ## A084321.P4979648458387338326

`A085355(n+1)+2^n`
-/

namespace A084321.P4979648458387338326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085355 (n + 1) + (2 ^ n : ℤ)

end

end A084321.P4979648458387338326

/-! ## A084321.P17022983071947486287

`xor(A000079(n), A085355(n+1))`
-/

namespace A084321.P17022983071947486287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A085355 (n + 1))

end

end A084321.P17022983071947486287

/-! ## A084321.P598824620307155628

`A085355(n+1)+A000918(n)+2`
-/

namespace A084321.P598824620307155628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085355 (n + 1) + A000918 n + 2

end

end A084321.P598824620307155628

/-! ## A084321.P18055173461998120855

`A300622(2*n)+A085355(n+1)`
-/

namespace A084321.P18055173461998120855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300622 (2 * n) + A085355 (n + 1)

end

end A084321.P18055173461998120855

/-! ## A084321.P17623367057248257870

`or(record[A122111(n+1)], A085355(n+1))`
-/

namespace A084321.P17623367057248257870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A085355 (n + 1))

end

end A084321.P17623367057248257870

/-!
# A084322: Fixed points if prime-factor-concatenation function (A084317) is iterated at primorial number initial values.

The programs for A084322, there is no canonical definition to state claims against.
-/

/-! ## A084322.P8190278196850908301

`A084323(∑[A152271(n)+1])`
-/

namespace A084322.P8190278196850908301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084323 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084322.P8190278196850908301

/-! ## A084322.P11174459936439595694

`∑[record[Δ[A084323(n+1)]]]`
-/

namespace A084322.P11174459936439595694
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084322.P11174459936439595694

/-!
# A084323: Fixed points reached when prime-factor-concatenation function (A084317) is started at n!.

The programs for A084323, there is no canonical definition to state claims against.
-/

/-! ## A084323.P6663095843940364773

`A061397(A080670(A080670(A034386(n+1))))`
-/

namespace A084323.P6663095843940364773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A080670 (A080670 (A034386 (n + 1)).toNat).toNat).toNat

end

end A084323.P6663095843940364773

/-! ## A084323.P13789563908042199859

`A084322(A008619(n))%A027898(n+1)`
-/

namespace A084323.P13789563908042199859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084322 (A008619 n).toNat) (A027898 (n + 1))

end

end A084323.P13789563908042199859

/-! ## A084323.P5688096694474549138

`A084322(A135020(n+1))%A027898(n+1)`
-/

namespace A084323.P5688096694474549138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084322 (A135020 (n + 1)).toNat) (A027898 (n + 1))

end

end A084323.P5688096694474549138

/-!
# A084324: Palindromic numbers that set a new record for number of palindromic divisors.

The programs for A084324, there is no canonical definition to state claims against.
-/

/-! ## A084324.P14020382441983158139

`∩[A083433(n+1), A231272(n+1)]`
-/

namespace A084324.P14020382441983158139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084324.P14020382441983158139

/-! ## A084324.P6927603067789081056

`A083434(A220423(n+1))`
-/

namespace A084324.P6927603067789081056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083434 (A220423 (n + 1)).toNat

end

end A084324.P6927603067789081056

/-! ## A084324.P7107060819252507623

`A083434(A308618(n+1))`
-/

namespace A084324.P7107060819252507623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083434 (A308618 (n + 1)).toNat

end

end A084324.P7107060819252507623

/-!
# A084325: Palindromes such that at least one divisor is non-palindromic; palindromes not in A062687.

The programs for A084325, there is no canonical definition to state claims against.
-/

/-! ## A084325.P1139680719317159494

`lt[A256756(n), A087991(A028310(n))]`
-/

namespace A084325.P1139680719317159494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087991 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084325.P1139680719317159494

/-! ## A084325.P6932500174256459962

`lt[A338827(n), A087991(A028310(n))]`
-/

namespace A084325.P6932500174256459962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087991 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084325.P6932500174256459962

/-! ## A084325.P8116499954658817288

`lt[A338827(n), A087991(A261423(n+1))]`
-/

namespace A084325.P8116499954658817288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087991 (A261423 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084325.P8116499954658817288

/-! ## A084325.P10243440586106694418

`lt[A256756(n), A087991(A261423(n+2))]`
-/

namespace A084325.P10243440586106694418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087991 (A261423 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084325.P10243440586106694418

/-!
# A084326: a(0)=0, a(1)=1; for n>1, a(n) = 6*a(n-1)-4*a(n-2).

The programs for A084326, the canonical program `A084326.P16392447023451147105` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084326 has offset 0).

The definition of A084326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-4*a(n-2)` (program `A084326.P16392447023451147105`, by `A084326.P16392447023451147105.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084326.P16392447023451147105

`6*a(n-1)-4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084326

/-- `6*a(n-1)-4*a(n-2)` -/
def P16392447023451147105.Spec : Prop :=
  ∀ n, P16392447023451147105.a n = A084326 n

theorem P16392447023451147105.correct : P16392447023451147105.Spec := by
  intro n
  simp only [A084326]

end A084326

/-! ## A084326.P7291912844686061129

`2^(n-1)*A001906(n)`
-/

namespace A084326.P7291912844686061129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001906 n : ℚ)

end

end A084326.P7291912844686061129

namespace A084326

/-- `2^(n-1)*A001906(n)` -/
def P7291912844686061129.Spec : Prop :=
  ∀ n, P7291912844686061129.a n = (A084326 n : ℚ)

end A084326

/-! ## A084326.P13155133617520187848

`2^(n-1)*A000045(2*n)`
-/

namespace A084326.P13155133617520187848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000045 (2 * n) : ℚ)

end

end A084326.P13155133617520187848

namespace A084326

/-- `2^(n-1)*A000045(2*n)` -/
def P13155133617520187848.Spec : Prop :=
  ∀ n, P13155133617520187848.a n = (A084326 n : ℚ)

end A084326

/-! ## A084326.P2376499773548397680

`sqrt(5)*((3+sqrt(5))^n-(3-sqrt(5))^n)/10`
-/

namespace A084326.P2376499773548397680
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (5 : ℝ) * ((3 + Real.sqrt (5 : ℝ)) ^ n - (3 - Real.sqrt (5 : ℝ)) ^ n) / 10

end

end A084326.P2376499773548397680

namespace A084326

/-- `sqrt(5)*((3+sqrt(5))^n-(3-sqrt(5))^n)/10` -/
def P2376499773548397680.Spec : Prop :=
  ∀ n, P2376499773548397680.a n = (A084326 n : ℝ)

theorem P2376499773548397680.correct : P2376499773548397680.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A084326, Nat.add_sub_cancel, A084326.P2376499773548397680.a, A084326.P16392447023451147105.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A084326, Nat.add_sub_cancel, A084326.P2376499773548397680.a, A084326.P16392447023451147105.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A084326

/-! ## A084326.P6124549323744644933

`ogf(x/(1-6x+4x^2))`
-/

namespace A084326.P6124549323744644933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, 4] n

end

end A084326.P6124549323744644933

namespace A084326

/-- `ogf(x/(1-6x+4x^2))` -/
def P6124549323744644933.Spec : Prop :=
  ∀ n, P6124549323744644933.a n = A084326 n

end A084326

/-! ## A084326.P2180805093333896907

`record[2*round((ϕ+1)*a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A084326.P2180805093333896907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * SequenceMachineLib.roundAway ((Real.goldenRatio + 1) * (f1 (n - 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084326.P2180805093333896907

namespace A084326

/-- `record[2*round((ϕ+1)*a(n-2))]` -/
def P2180805093333896907.Spec : Prop :=
  ∀ n, P2180805093333896907.a n = A084326 n

end A084326

/-! ## A084326.P4096298553117321673

`record[2*round(a(n-2)/(2-ϕ))]` with `a(0)=0, a(1)=1`
-/

namespace A084326.P4096298553117321673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * SequenceMachineLib.roundAway ((f1 (n - 2) : ℝ) / (2 - Real.goldenRatio))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084326.P4096298553117321673

namespace A084326

/-- `record[2*round(a(n-2)/(2-ϕ))]` -/
def P4096298553117321673.Spec : Prop :=
  ∀ n, P4096298553117321673.a n = A084326 n

end A084326

/-! ## A084326.P14139948054171301889

`A082761(n)-A098648(n)`
-/

namespace A084326.P14139948054171301889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082761 n - A098648 n

end

end A084326.P14139948054171301889

namespace A084326

/-- `A082761(n)-A098648(n)` -/
def P14139948054171301889.Spec : Prop :=
  ∀ n, P14139948054171301889.a n = A084326 n

end A084326

/-! ## A084326.P10298413751239689091

`A098648(n)-A154626(n)`
-/

namespace A084326.P10298413751239689091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098648 n - A154626 n

end

end A084326.P10298413751239689091

namespace A084326

/-- `A098648(n)-A154626(n)` -/
def P10298413751239689091.Spec : Prop :=
  ∀ n, P10298413751239689091.a n = A084326 n

end A084326

/-! ## A084326.P13271784522868284085

`A001906(n)*A011782(n)`
-/

namespace A084326.P13271784522868284085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A011782 n

end

end A084326.P13271784522868284085

namespace A084326

/-- `A001906(n)*A011782(n)` -/
def P13271784522868284085.Spec : Prop :=
  ∀ n, P13271784522868284085.a n = A084326 n

end A084326

/-! ## A084326.P15962396534425298291

`A000045(n)*A084057(n)`
-/

namespace A084326.P15962396534425298291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A084057 n

end

end A084326.P15962396534425298291

namespace A084326

/-- `A000045(n)*A084057(n)` -/
def P15962396534425298291.Spec : Prop :=
  ∀ n, P15962396534425298291.a n = A084326 n

end A084326

/-! ## A084326.P11065152281399748659

`A000032(n)*A085449(n)`
-/

namespace A084326.P11065152281399748659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A085449 n

end

end A084326.P11065152281399748659

namespace A084326

/-- `A000032(n)*A085449(n)` -/
def P11065152281399748659.Spec : Prop :=
  ∀ n, P11065152281399748659.a n = A084326 n

end A084326

/-! ## A084326.P14220285657021728923

`A001906(n)*A131577(n)`
-/

namespace A084326.P14220285657021728923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A131577 n

end

end A084326.P14220285657021728923

namespace A084326

/-- `A001906(n)*A131577(n)` -/
def P14220285657021728923.Spec : Prop :=
  ∀ n, P14220285657021728923.a n = A084326 n

end A084326

/-! ## A084326.P13484507856285425756

`A088305(n)*A131577(n)`
-/

namespace A084326.P13484507856285425756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n * A131577 n

end

end A084326.P13484507856285425756

namespace A084326

/-- `A088305(n)*A131577(n)` -/
def P13484507856285425756.Spec : Prop :=
  ∀ n, P13484507856285425756.a n = A084326 n

end A084326

/-! ## A084326.P4995971940761840241

`A082761(n)-A080878(2*n)`
-/

namespace A084326.P4995971940761840241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082761 n - A080878 (2 * n)

end

end A084326.P4995971940761840241

namespace A084326

/-- `A082761(n)-A080878(2*n)` -/
def P4995971940761840241.Spec : Prop :=
  ∀ n, P4995971940761840241.a n = A084326 n

end A084326

/-! ## A084326.P3545015680907026265

`A098648(n)-A080877(2*n)`
-/

namespace A084326.P3545015680907026265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098648 n - A080877 (2 * n)

end

end A084326.P3545015680907026265

namespace A084326

/-- `A098648(n)-A080877(2*n)` -/
def P3545015680907026265.Spec : Prop :=
  ∀ n, P3545015680907026265.a n = A084326 n

end A084326

/-! ## A084326.P12816177232666310234

`A080878(2*n)-A154626(n)`
-/

namespace A084326.P12816177232666310234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080878 (2 * n) - A154626 n

end

end A084326.P12816177232666310234

namespace A084326

/-- `A080878(2*n)-A154626(n)` -/
def P12816177232666310234.Spec : Prop :=
  ∀ n, P12816177232666310234.a n = A084326 n

end A084326

/-! ## A084326.P5169064224349767291

`A000045(2*n)*A011782(n)`
-/

namespace A084326.P5169064224349767291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A011782 n

end

end A084326.P5169064224349767291

namespace A084326

/-- `A000045(2*n)*A011782(n)` -/
def P5169064224349767291.Spec : Prop :=
  ∀ n, P5169064224349767291.a n = A084326 n

end A084326

/-! ## A084326.P405652223260846878

`A000045(2*n)*A131577(n)`
-/

namespace A084326.P405652223260846878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A131577 n

end

end A084326.P405652223260846878

namespace A084326

/-- `A000045(2*n)*A131577(n)` -/
def P405652223260846878.Spec : Prop :=
  ∀ n, P405652223260846878.a n = A084326 n

end A084326

/-! ## A084326.P892151673611008050

`A082761(n)-A080877(2*n+1)`
-/

namespace A084326.P892151673611008050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082761 n - A080877 (2 * n + 1)

end

end A084326.P892151673611008050

namespace A084326

/-- `A082761(n)-A080877(2*n+1)` -/
def P892151673611008050.Spec : Prop :=
  ∀ n, P892151673611008050.a n = A084326 n

end A084326

/-!
# A084328: a(0)=0, a(1)=1; a(n) = 13*a(n-1) - 11*a(n-2).

The programs for A084328, the canonical program `A084328.P14535250171613786319` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084328 has offset 0).

The definition of A084328 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*a(n-1)-11*a(n-2)` (program `A084328.P14535250171613786319`, by `A084328.P14535250171613786319.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084328.P14535250171613786319

`13*a(n-1)-11*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084328

/-- `13*a(n-1)-11*a(n-2)` -/
def P14535250171613786319.Spec : Prop :=
  ∀ n, P14535250171613786319.a n = A084328 n

theorem P14535250171613786319.correct : P14535250171613786319.Spec := by
  intro n
  simp only [A084328]

end A084328

/-! ## A084328.P7088473841417845023

`ogf(x/(1-13x+11x^2))`
-/

namespace A084328.P7088473841417845023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -13, 11] n

end

end A084328.P7088473841417845023

namespace A084328

/-- `ogf(x/(1-13x+11x^2))` -/
def P7088473841417845023.Spec : Prop :=
  ∀ n, P7088473841417845023.a n = A084328 n

end A084328

/-! ## A084328.P587236599294479178

`ceil((ϕ^5+1)*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A084328.P587236599294479178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈(Real.goldenRatio ^ 5 + 1) * (a (n - 1) : ℝ)⌉

end

end A084328.P587236599294479178

namespace A084328

/-- `ceil((ϕ^5+1)*a(n-1))` -/
def P587236599294479178.Spec : Prop :=
  ∀ n, P587236599294479178.a n = A084328 n

end A084328

/-! ## A084328.P17808260676473062677

`A087453(n)/5`
-/

namespace A084328.P17808260676473062677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087453 n : ℚ) / 5

end

end A084328.P17808260676473062677

namespace A084328

/-- `A087453(n)/5` -/
def P17808260676473062677.Spec : Prop :=
  ∀ n, P17808260676473062677.a n = (A084328 n : ℚ)

end A084328

/-!
# A084329: a(0)=0, a(1)=1, a(n) = 20*a(n-1) - 20*a(n-2).

The programs for A084329, the canonical program `A084329.P1818493134955642311` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084329 has offset 0).

The definition of A084329 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-20*a(n-2)` (program `A084329.P1818493134955642311`, by `A084329.P1818493134955642311.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084329.P1818493134955642311

`20*a(n-1)-20*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084329

/-- `20*a(n-1)-20*a(n-2)` -/
def P1818493134955642311.Spec : Prop :=
  ∀ n, P1818493134955642311.a n = A084329 n

theorem P1818493134955642311.correct : P1818493134955642311.Spec := by
  intro n
  simp only [A084329]

end A084329

/-! ## A084329.P12523443019441171684

`ogf(x/(1-20x+20x^2))`
-/

namespace A084329.P12523443019441171684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -20, 20] n

end

end A084329.P12523443019441171684

namespace A084329

/-- `ogf(x/(1-20x+20x^2))` -/
def P12523443019441171684.Spec : Prop :=
  ∀ n, P12523443019441171684.a n = A084329 n

end A084329

/-! ## A084329.P17541858301108007077

`20*(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A084329.P17541858301108007077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  20 * (a (n - 1) - a (n - 2))

end

end A084329.P17541858301108007077

namespace A084329

/-- `20*(a(n-1)-a(n-2))` -/
def P17541858301108007077.Spec : Prop :=
  ∀ n, P17541858301108007077.a n = A084329 n

theorem P17541858301108007077.correct : P17541858301108007077.Spec := by
  intro n
  simp only [A084329, Nat.add_sub_cancel, A084329.P17541858301108007077.a, A084329.P1818493134955642311.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084329

/-! ## A084329.P5102512586043631507

`record[A152568(n)]*A190987(n)`
-/

namespace A084329.P5102512586043631507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A190987 n

end

end A084329.P5102512586043631507

namespace A084329

/-- `record[A152568(n)]*A190987(n)` -/
def P5102512586043631507.Spec : Prop :=
  ∀ n, P5102512586043631507.a n = A084329 n

end A084329

/-! ## A084329.P8360217676614848358

`record[A277415(n)]*A190987(n)`
-/

namespace A084329.P8360217676614848358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A190987 n

end

end A084329.P8360217676614848358

namespace A084329

/-- `record[A277415(n)]*A190987(n)` -/
def P8360217676614848358.Spec : Prop :=
  ∀ n, P8360217676614848358.a n = A084329 n

end A084329

/-! ## A084329.P2908210685297741045

`record[abs(A009545(n))]*A190987(n)`
-/

namespace A084329.P2908210685297741045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009545 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A190987 n

end

end A084329.P2908210685297741045

namespace A084329

/-- `record[abs(A009545(n))]*A190987(n)` -/
def P2908210685297741045.Spec : Prop :=
  ∀ n, P2908210685297741045.a n = A084329 n

end A084329

/-! ## A084329.P14758292106592816337

`A038207(A161680(n))*A190987(n)`
-/

namespace A084329.P14758292106592816337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A161680 n).toNat * A190987 n

end

end A084329.P14758292106592816337

namespace A084329

/-- `A038207(A161680(n))*A190987(n)` -/
def P14758292106592816337.Spec : Prop :=
  ∀ n, P14758292106592816337.a n = A084329 n

end A084329

/-!
# A084330: a(0)=0, a(1)=1, a(n) = 31*a(n-1) - 29*a(n-2).

The programs for A084330, the canonical program `A084330.P9731759232801931741` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084330 has offset 0).

The definition of A084330 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `31*a(n-1)-29*a(n-2)` (program `A084330.P9731759232801931741`, by `A084330.P9731759232801931741.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084330.P9731759232801931741

`31*a(n-1)-29*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084330

/-- `31*a(n-1)-29*a(n-2)` -/
def P9731759232801931741.Spec : Prop :=
  ∀ n, P9731759232801931741.a n = A084330 n

theorem P9731759232801931741.correct : P9731759232801931741.Spec := by
  intro n
  simp only [A084330]

end A084330

/-! ## A084330.P5702873767164049260

`record[Δ[A256278(A002262(n))]]`
-/

namespace A084330.P5702873767164049260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256278 (A002262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084330.P5702873767164049260

namespace A084330

/-- `record[Δ[A256278(A002262(n))]]` -/
def P5702873767164049260.Spec : Prop :=
  ∀ n, P5702873767164049260.a n = A084330 n

end A084330

/-! ## A084330.P10340087419175369834

`record[Δ[A256278(A002264(n))]]`
-/

namespace A084330.P10340087419175369834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256278 (A002264 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084330.P10340087419175369834

namespace A084330

/-- `record[Δ[A256278(A002264(n))]]` -/
def P10340087419175369834.Spec : Prop :=
  ∀ n, P10340087419175369834.a n = A084330 n

end A084330

/-! ## A084330.P1545578546559983822

`record[Δ[A256278(A004526(n))]]`
-/

namespace A084330.P1545578546559983822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256278 (A004526 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084330.P1545578546559983822

namespace A084330

/-- `record[Δ[A256278(A004526(n))]]` -/
def P1545578546559983822.Spec : Prop :=
  ∀ n, P1545578546559983822.a n = A084330 n

end A084330

/-! ## A084330.P8591807377559133404

`record[Δ[A256278(A172474(n))]]`
-/

namespace A084330.P8591807377559133404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256278 (A172474 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084330.P8591807377559133404

namespace A084330

/-- `record[Δ[A256278(A172474(n))]]` -/
def P8591807377559133404.Spec : Prop :=
  ∀ n, P8591807377559133404.a n = A084330 n

end A084330

/-!
# A084331: a(1) = 2; a(n+1) is the least prime p not already used such that |p-a(n)| is not equal to |a(k+1)-a(k)| for any k < n.

The programs for A084331, there is no canonical definition to state claims against.
-/

/-! ## A084331.P12730025018628635863

`A101595(A106000(n+1))`
-/

namespace A084331.P12730025018628635863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101595 (A106000 (n + 1)).toNat

end

end A084331.P12730025018628635863

/-! ## A084331.P14948560690658764136

`A101595(A381225(n))`
-/

namespace A084331.P14948560690658764136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101595 (A381225 n).toNat

end

end A084331.P14948560690658764136

/-! ## A084331.P2305879174565123503

`A101595(A001104(n+1))`
-/

namespace A084331.P2305879174565123503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101595 (A001104 (n + 1)).toNat

end

end A084331.P2305879174565123503

/-! ## A084331.P7661123037598624176

`A101595(A002998(n+1))`
-/

namespace A084331.P7661123037598624176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101595 (A002998 (n + 1)).toNat

end

end A084331.P7661123037598624176

/-! ## A084331.P134412388717459798

`A101595(A023106(n+1))`
-/

namespace A084331.P134412388717459798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101595 (A023106 (n + 1)).toNat

end

end A084331.P134412388717459798

/-!
# A084338: a(1) = 1, a(2) = 2, a(3) = 3, a(n+3) = a(n) + a(n+1).

The programs for A084338, the canonical program `A084338.P1303857948102973700` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084338 has offset 1).

The definition of A084338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084338.P12869419285375666456

`ogf((1+2x+2x^2)/(1-x^2-x^3))`
-/

namespace A084338.P12869419285375666456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2] [1, 0, -1, -1] n

end

end A084338.P12869419285375666456

namespace A084338

/-- `ogf((1+2x+2x^2)/(1-x^2-x^3))` -/
def P12869419285375666456.Spec : Prop :=
  ∀ n, P12869419285375666456.a n = A084338 (n + 1)

end A084338

/-! ## A084338.P1303857948102973700

`a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084338

/-- `a(n-2)+a(n-3)` -/
def P1303857948102973700.Spec : Prop :=
  ∀ n, (P1303857948102973700.a n : ℤ) = A084338 (n + 1)

theorem P1303857948102973700.correct : P1303857948102973700.Spec := by
  intro n
  simp only [A084338, Nat.add_sub_cancel]

end A084338

/-! ## A084338.P16705327729365393980

`a(n-2)-floor(-a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A084338.P16705327729365393980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A084338.P16705327729365393980

namespace A084338

/-- `a(n-2)-floor(-a(n-3))` -/
def P16705327729365393980.Spec : Prop :=
  ∀ n, P16705327729365393980.a n = A084338 (n + 1)

end A084338

/-! ## A084338.P2340404573172174537

`a(n-2)-ceil(-a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A084338.P2340404573172174537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A084338.P2340404573172174537

namespace A084338

/-- `a(n-2)-ceil(-a(n-3))` -/
def P2340404573172174537.Spec : Prop :=
  ∀ n, P2340404573172174537.a n = A084338 (n + 1)

end A084338

/-! ## A084338.P13957833934973249832

`a(n-2)-round(-a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`

`round` is left out, it is the identity on integers.
-/

namespace A084338.P13957833934973249832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A084338.P13957833934973249832

namespace A084338

/-- `a(n-2)-round(-a(n-3))` -/
def P13957833934973249832.Spec : Prop :=
  ∀ n, P13957833934973249832.a n = A084338 (n + 1)

end A084338

/-! ## A084338.P7570569992672659741

`a(n-1)-(a(n-4)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=3`
-/

namespace A084338.P7570569992672659741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 3] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A084338.P7570569992672659741

namespace A084338

/-- `a(n-1)-(a(n-4)-a(n-2))` -/
def P7570569992672659741.Spec : Prop :=
  ∀ n, P7570569992672659741.a n = A084338 (n + 1)

end A084338

/-! ## A084338.P15854390132911841290

`abs(A109266(n+4))`
-/

namespace A084338.P15854390132911841290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109266 (n + 4)|

end

end A084338.P15854390132911841290

namespace A084338

/-- `abs(A109266(n+4))` -/
def P15854390132911841290.Spec : Prop :=
  ∀ n, P15854390132911841290.a n = A084338 (n + 1)

end A084338

/-! ## A084338.P14684010711121546269

`A001608(n+1)+A000931(n)`
-/

namespace A084338.P14684010711121546269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (n + 1) + A000931 n

end

end A084338.P14684010711121546269

namespace A084338

/-- `A001608(n+1)+A000931(n)` -/
def P14684010711121546269.Spec : Prop :=
  ∀ n, P14684010711121546269.a n = A084338 (n + 1)

end A084338

/-! ## A084338.P5704320803883949577

`A134816(n+1)+A007307(n)`
-/

namespace A084338.P5704320803883949577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) + A007307 n

end

end A084338.P5704320803883949577

namespace A084338

/-- `A134816(n+1)+A007307(n)` -/
def P5704320803883949577.Spec : Prop :=
  ∀ n, P5704320803883949577.a n = A084338 (n + 1)

end A084338

/-! ## A084338.P2599274702385361490

`A182097(n+2)+A007307(n)`
-/

namespace A084338.P2599274702385361490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 2) + A007307 n

end

end A084338.P2599274702385361490

namespace A084338

/-- `A182097(n+2)+A007307(n)` -/
def P2599274702385361490.Spec : Prop :=
  ∀ n, P2599274702385361490.a n = A084338 (n + 1)

end A084338

/-! ## A084338.P15324421420291540209

`A228361(n+3)-A000931(n)`
-/

namespace A084338.P15324421420291540209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (n + 3) - A000931 n

end

end A084338.P15324421420291540209

namespace A084338

/-- `A228361(n+3)-A000931(n)` -/
def P15324421420291540209.Spec : Prop :=
  ∀ n, P15324421420291540209.a n = A084338 (n + 1)

end A084338

/-! ## A084338.P9367315009987513051

`A134816(n+4)-A000931(n)`
-/

namespace A084338.P9367315009987513051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 4) - A000931 n

end

end A084338.P9367315009987513051

namespace A084338

/-- `A134816(n+4)-A000931(n)` -/
def P9367315009987513051.Spec : Prop :=
  ∀ n, P9367315009987513051.a n = A084338 (n + 1)

end A084338

/-! ## A084338.P1215345101797511175

`2*A007307(n)-A133034(n)`
-/

namespace A084338.P1215345101797511175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007307 n - A133034 n

end

end A084338.P1215345101797511175

namespace A084338

/-- `2*A007307(n)-A133034(n)` -/
def P1215345101797511175.Spec : Prop :=
  ∀ n, P1215345101797511175.a n = A084338 (n + 1)

end A084338

/-! ## A084338.P3039591182137775278

`A000931(n+8)-A000931(n)`
-/

namespace A084338.P3039591182137775278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 8) - A000931 n

end

end A084338.P3039591182137775278

namespace A084338

/-- `A000931(n+8)-A000931(n)` -/
def P3039591182137775278.Spec : Prop :=
  ∀ n, P3039591182137775278.a n = A084338 (n + 1)

end A084338

/-! ## A084338.P13118272628701633533

`A133034(n)+∑[2*A000931(n)]`
-/

namespace A084338.P13118272628701633533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084338.P13118272628701633533

namespace A084338

/-- `A133034(n)+∑[2*A000931(n)]` -/
def P13118272628701633533.Spec : Prop :=
  ∀ n, P13118272628701633533.a n = A084338 (n + 1)

end A084338

/-! ## A084338.P11255559049401373469

`A078027(n+2)+A001608(n+1)`
-/

namespace A084338.P11255559049401373469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 2) + A001608 (n + 1)

end

end A084338.P11255559049401373469

namespace A084338

/-- `A078027(n+2)+A001608(n+1)` -/
def P11255559049401373469.Spec : Prop :=
  ∀ n, P11255559049401373469.a n = A084338 (n + 1)

end A084338

/-! ## A084338.P3850148978968387759

`A078027(n+1)+A007307(n+2)`
-/

namespace A084338.P3850148978968387759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 1) + A007307 (n + 2)

end

end A084338.P3850148978968387759

namespace A084338

/-- `A078027(n+1)+A007307(n+2)` -/
def P3850148978968387759.Spec : Prop :=
  ∀ n, P3850148978968387759.a n = A084338 (n + 1)

end A084338

/-! ## A084338.P1336798670850240198

`A141038(n+1)+A000931(n+2)`
-/

namespace A084338.P1336798670850240198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141038 (n + 1) + A000931 (n + 2)

end

end A084338.P1336798670850240198

namespace A084338

/-- `A141038(n+1)+A000931(n+2)` -/
def P1336798670850240198.Spec : Prop :=
  ∀ n, P1336798670850240198.a n = A084338 (n + 1)

end A084338

/-! ## A084338.P2290798812509950586

`A182097(n+1)+A134816(n+2)`
-/

namespace A084338.P2290798812509950586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 1) + A134816 (n + 2)

end

end A084338.P2290798812509950586

namespace A084338

/-- `A182097(n+1)+A134816(n+2)` -/
def P2290798812509950586.Spec : Prop :=
  ∀ n, P2290798812509950586.a n = A084338 (n + 1)

end A084338

/-! ## A084338.P1307293578639761451

`A141038(n+2)-A133034(n+1)`
-/

namespace A084338.P1307293578639761451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141038 (n + 2) - A133034 (n + 1)

end

end A084338.P1307293578639761451

namespace A084338

/-- `A141038(n+2)-A133034(n+1)` -/
def P1307293578639761451.Spec : Prop :=
  ∀ n, P1307293578639761451.a n = A084338 (n + 1)

end A084338

/-!
# A084339: 7*n digit-reversed mod 7.

The programs for A084339, there is no canonical definition to state claims against.
-/

/-! ## A084339.P1724074446314432120

`A004086(7*(n+2))%7`
-/

namespace A084339.P1724074446314432120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (7 * (n + 2))) 7

end

end A084339.P1724074446314432120

/-! ## A084339.P576273279112912711

`A056964(7*(n+2))%7`
-/

namespace A084339.P576273279112912711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056964 (7 * (n + 2))) 7

end

end A084339.P576273279112912711

/-!
# A084340: 8*n digit-reversed mod 8.

The programs for A084340, there is no canonical definition to state claims against.
-/

/-! ## A084340.P13947099849897127799

`A004086(8*(n+2))%8`
-/

namespace A084340.P13947099849897127799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (8 * (n + 2))) 8

end

end A084340.P13947099849897127799

/-! ## A084340.P11402701403650903060

`and(7, A004086(8*n+16))`
-/

namespace A084340.P11402701403650903060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A004086 (8 * n + 16))

end

end A084340.P11402701403650903060

/-! ## A084340.P2928305723716896590

`A004093(4*(n+2))%8`
-/

namespace A084340.P2928305723716896590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004093 (4 * (n + 2))) 8

end

end A084340.P2928305723716896590

/-! ## A084340.P15597876356263652787

`A056964(8*(n+2))%8`
-/

namespace A084340.P15597876356263652787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056964 (8 * (n + 2))) 8

end

end A084340.P15597876356263652787

/-! ## A084340.P7223226309859378928

`and(7, A056964(8*n+16))`
-/

namespace A084340.P7223226309859378928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A056964 (8 * n + 16))

end

end A084340.P7223226309859378928

/-! ## A084340.P17223587783273813609

`and(7, A004093(A008586(n+2)))`
-/

namespace A084340.P17223587783273813609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A004093 (A008586 (n + 2)).toNat)

end

end A084340.P17223587783273813609

/-! ## A084340.P159305841462568418

`A010877(A004093(4*(n+2)))`
-/

namespace A084340.P159305841462568418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A004093 (4 * (n + 2))).toNat

end

end A084340.P159305841462568418

/-! ## A084340.P7852421644900836495

`A010877(A004086(8*(n+2)))`
-/

namespace A084340.P7852421644900836495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A004086 (8 * (n + 2))).toNat

end

end A084340.P7852421644900836495

/-! ## A084340.P11778574009179362648

`A010877(A056964(8*(n+2)))`
-/

namespace A084340.P11778574009179362648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A056964 (8 * (n + 2))).toNat

end

end A084340.P11778574009179362648

/-!
# A084341: 13*n digit-reversed mod 13.

The programs for A084341, there is no canonical definition to state claims against.
-/

/-! ## A084341.P6166029610574752906

`A004086(13*(n+1))%13`
-/

namespace A084341.P6166029610574752906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (13 * (n + 1))) 13

end

end A084341.P6166029610574752906

/-!
# A084342: Digit reversal of n concatenated with n mod n.

The programs for A084342, there is no canonical definition to state claims against.
-/

/-! ## A084342.P17449846709077695464

`A071273(n+1)%(n+1)`
-/

namespace A084342.P17449846709077695464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071273 (n + 1)) (n + 1 : ℤ)

end

end A084342.P17449846709077695464

/-! ## A084342.P7487598864835806990

`(A004086(n+1)*A061601(n))%(n+1)`
-/

namespace A084342.P7487598864835806990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (n + 1) * A061601 n) (n + 1 : ℤ)

end

end A084342.P7487598864835806990

/-! ## A084342.P12501099456469687974

`(A056524(n+1)*A061601(n))%(n+1)`
-/

namespace A084342.P12501099456469687974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056524 (n + 1) * A061601 n) (n + 1 : ℤ)

end

end A084342.P12501099456469687974

/-! ## A084342.P15144420788671168962

`(A061601(n)*A103168(n+1))%(n+1)`
-/

namespace A084342.P15144420788671168962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061601 n * A103168 (n + 1)) (n + 1 : ℤ)

end

end A084342.P15144420788671168962

/-! ## A084342.P13229843447461189244

`A008593(A071274(n+1))%(n+1)`
-/

namespace A084342.P13229843447461189244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008593 (A071274 (n + 1)).toNat) (n + 1 : ℤ)

end

end A084342.P13229843447461189244

/-! ## A084342.P9807225804376041631

`A008593(A110725(n+1)-A066492(n+1))%(n+1)`
-/

namespace A084342.P9807225804376041631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008593 (A110725 (n + 1) - A066492 (n + 1)).toNat) (n + 1 : ℤ)

end

end A084342.P9807225804376041631

/-! ## A084342.P12773444303832582691

`A321474(A044332(n+1))%(n+1)`
-/

namespace A084342.P12773444303832582691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321474 (A044332 (n + 1)).toNat) (n + 1 : ℤ)

end

end A084342.P12773444303832582691

/-! ## A084342.P15311953823071537697

`A077342(A056524(n+1))%(n+1)`
-/

namespace A084342.P15311953823071537697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077342 (A056524 (n + 1)).toNat) (n + 1 : ℤ)

end

end A084342.P15311953823071537697

/-!
# A084344: A077982(n) >= 5.

The programs for A084344, the canonical program `A084344.P2536127171943321024` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084344 has offset 1).

The definition of A084344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4883 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084344.P2985705604827607757

`∩[A100962(n+1), A333326(n+1)]`
-/

namespace A084344.P2985705604827607757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084344.P2985705604827607757

namespace A084344

/-- `∩[A100962(n+1), A333326(n+1)]` -/
def P2985705604827607757.Spec : Prop :=
  ∀ n, (P2985705604827607757.a n : ℤ) = A084344 (n + 1)

end A084344

/-! ## A084344.P2536127171943321024

`∩[A025583(n+1), A333326(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A084344

/-- `∩[A025583(n+1), A333326(n+1)]` -/
def P2536127171943321024.Spec : Prop :=
  ∀ n, (P2536127171943321024.a n : ℤ) = A084344 (n + 1)

theorem P2536127171943321024.correct : P2536127171943321024.Spec := by
  intro n
  simp only [A084344, Nat.add_sub_cancel]

end A084344

/-! ## A084344.P1466994084127323920

`∩[A109934(n+1), A333326(n+1)]`
-/

namespace A084344.P1466994084127323920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084344.P1466994084127323920

namespace A084344

/-- `∩[A109934(n+1), A333326(n+1)]` -/
def P1466994084127323920.Spec : Prop :=
  ∀ n, (P1466994084127323920.a n : ℤ) = A084344 (n + 1)

end A084344

/-! ## A084344.P7492141987413393742

`∩[A164376(n+1), A333326(n+1)]`
-/

namespace A084344.P7492141987413393742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084344.P7492141987413393742

namespace A084344

/-- `∩[A164376(n+1), A333326(n+1)]` -/
def P7492141987413393742.Spec : Prop :=
  ∀ n, (P7492141987413393742.a n : ℤ) = A084344 (n + 1)

end A084344

/-! ## A084344.P9047108938420111390

`∩[A072492(n+1), A333326(n+1)]`
-/

namespace A084344.P9047108938420111390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084344.P9047108938420111390

namespace A084344

/-- `∩[A072492(n+1), A333326(n+1)]` -/
def P9047108938420111390.Spec : Prop :=
  ∀ n, (P9047108938420111390.a n : ℤ) = A084344 (n + 1)

end A084344

/-! ## A084344.P97836791236220324

`∩[A014092(n+1), A333326(n+1)]`
-/

namespace A084344.P97836791236220324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084344.P97836791236220324

namespace A084344

/-- `∩[A014092(n+1), A333326(n+1)]` -/
def P97836791236220324.Spec : Prop :=
  ∀ n, (P97836791236220324.a n : ℤ) = A084344 (n + 1)

end A084344

/-! ## A084344.P1878501028514616393

`∩[A166081(n+1), A333326(n+1)]`
-/

namespace A084344.P1878501028514616393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084344.P1878501028514616393

namespace A084344

/-- `∩[A166081(n+1), A333326(n+1)]` -/
def P1878501028514616393.Spec : Prop :=
  ∀ n, (P1878501028514616393.a n : ℤ) = A084344 (n + 1)

end A084344

/-! ## A084344.P10375290585494352314

`∩[A068321(n+1), A333326(n+1)]`
-/

namespace A084344.P10375290585494352314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084344.P10375290585494352314

namespace A084344

/-- `∩[A068321(n+1), A333326(n+1)]` -/
def P10375290585494352314.Spec : Prop :=
  ∀ n, (P10375290585494352314.a n : ℤ) = A084344 (n + 1)

end A084344

/-! ## A084344.P5387660014330700610

`lt[4, A077982(n)]`
-/

namespace A084344.P5387660014330700610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A084344.P5387660014330700610

namespace A084344

/-- `lt[4, A077982(n)]` -/
def P5387660014330700610.Spec : Prop :=
  ∀ n, (P5387660014330700610.a n : ℤ) = A084344 (n + 1)

end A084344

/-! ## A084344.P11905572235008972286

`A000027(eq[5, A077982(n)])`
-/

namespace A084344.P11905572235008972286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084344.P11905572235008972286

namespace A084344

/-- `A000027(eq[5, A077982(n)])` -/
def P11905572235008972286.Spec : Prop :=
  ∀ n, P11905572235008972286.a n = A084344 (n + 1)

end A084344

/-! ## A084344.P15205976343579556579

`A000265(eq[5, A077982(n)])`
-/

namespace A084344.P15205976343579556579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084344.P15205976343579556579

namespace A084344

/-- `A000265(eq[5, A077982(n)])` -/
def P15205976343579556579.Spec : Prop :=
  ∀ n, P15205976343579556579.a n = A084344 (n + 1)

end A084344

/-! ## A084344.P13330722583884948434

`eq[A040021(n), A077982(n)]`
-/

namespace A084344.P13330722583884948434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040021 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084344.P13330722583884948434

namespace A084344

/-- `eq[A040021(n), A077982(n)]` -/
def P13330722583884948434.Spec : Prop :=
  ∀ n, (P13330722583884948434.a n : ℤ) = A084344 (n + 1)

end A084344

/-! ## A084344.P18275657062255985659

`∩[A014092(n+1), A058080(n+1)]`
-/

namespace A084344.P18275657062255985659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084344.P18275657062255985659

namespace A084344

/-- `∩[A014092(n+1), A058080(n+1)]` -/
def P18275657062255985659.Spec : Prop :=
  ∀ n, (P18275657062255985659.a n : ℤ) = A084344 (n + 1)

end A084344

/-! ## A084344.P2437086422712856874

`∩[A025583(n+1), A058080(n+1)]`
-/

namespace A084344.P2437086422712856874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084344.P2437086422712856874

namespace A084344

/-- `∩[A025583(n+1), A058080(n+1)]` -/
def P2437086422712856874.Spec : Prop :=
  ∀ n, (P2437086422712856874.a n : ℤ) = A084344 (n + 1)

end A084344

/-! ## A084344.P1984000715753497255

`∩[A058080(n+1), A068321(n+1)]`
-/

namespace A084344.P1984000715753497255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084344.P1984000715753497255

namespace A084344

/-- `∩[A058080(n+1), A068321(n+1)]` -/
def P1984000715753497255.Spec : Prop :=
  ∀ n, (P1984000715753497255.a n : ℤ) = A084344 (n + 1)

end A084344

/-! ## A084344.P4051985916991618560

`∩[A058080(n+1), A100962(n+1)]`
-/

namespace A084344.P4051985916991618560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084344.P4051985916991618560

namespace A084344

/-- `∩[A058080(n+1), A100962(n+1)]` -/
def P4051985916991618560.Spec : Prop :=
  ∀ n, (P4051985916991618560.a n : ℤ) = A084344 (n + 1)

end A084344

/-! ## A084344.P9442600661363932721

`∩[A058080(n+1), A109934(n+1)]`
-/

namespace A084344.P9442600661363932721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084344.P9442600661363932721

namespace A084344

/-- `∩[A058080(n+1), A109934(n+1)]` -/
def P9442600661363932721.Spec : Prop :=
  ∀ n, (P9442600661363932721.a n : ℤ) = A084344 (n + 1)

end A084344

/-! ## A084344.P3536866732515365398

`∩[A058080(n+1), A164376(n+1)]`
-/

namespace A084344.P3536866732515365398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084344.P3536866732515365398

namespace A084344

/-- `∩[A058080(n+1), A164376(n+1)]` -/
def P3536866732515365398.Spec : Prop :=
  ∀ n, (P3536866732515365398.a n : ℤ) = A084344 (n + 1)

end A084344

/-! ## A084344.P16879560004077009875

`∩[A058080(n+1), A166081(n+1)]`
-/

namespace A084344.P16879560004077009875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084344.P16879560004077009875

namespace A084344

/-- `∩[A058080(n+1), A166081(n+1)]` -/
def P16879560004077009875.Spec : Prop :=
  ∀ n, (P16879560004077009875.a n : ℤ) = A084344 (n + 1)

end A084344

/-! ## A084344.P15532994170315591295

`∩[A066423(n+1), A100962(n+1)]`
-/

namespace A084344.P15532994170315591295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084344.P15532994170315591295

namespace A084344

/-- `∩[A066423(n+1), A100962(n+1)]` -/
def P15532994170315591295.Spec : Prop :=
  ∀ n, (P15532994170315591295.a n : ℤ) = A084344 (n + 1)

end A084344

/-!
# A084345: Numbers with a nonprime number of 1's in their binary expansion (complement of A052294).

The programs for A084345, the canonical program `A084345.P17578340069334555207` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084345 has offset 1).

The definition of A084345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084345.P3351575246827418029

`comp[A052294(n+1)]`
-/

namespace A084345.P3351575246827418029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A084345.P3351575246827418029

namespace A084345

/-- `comp[A052294(n+1)]` -/
def P3351575246827418029.Spec : Prop :=
  ∀ n, (P3351575246827418029.a n : ℤ) = A084345 (n + 1)

end A084345

/-! ## A084345.P17578340069334555207

`eq[0, A123391(A001316(n))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A084345

/-- `eq[0, A123391(A001316(n))]` -/
def P17578340069334555207.Spec : Prop :=
  ∀ n, (P17578340069334555207.a n : ℤ) = A084345 (n + 1)

theorem P17578340069334555207.correct : P17578340069334555207.Spec := by
  intro n
  simp only [A084345, Nat.add_sub_cancel]

end A084345

/-! ## A084345.P3477782230597855615

`∪[A131577(n), A317295(n+1)]`
-/

namespace A084345.P3477782230597855615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084345.P3477782230597855615

namespace A084345

/-- `∪[A131577(n), A317295(n+1)]` -/
def P3477782230597855615.Spec : Prop :=
  ∀ n, (P3477782230597855615.a n : ℤ) = A084345 (n + 1)

end A084345

/-! ## A084345.P13035334304548080459

`∪[A084561(n+1), A317295(n+1)]`
-/

namespace A084345.P13035334304548080459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084345.P13035334304548080459

namespace A084345

/-- `∪[A084561(n+1), A317295(n+1)]` -/
def P13035334304548080459.Spec : Prop :=
  ∀ n, (P13035334304548080459.a n : ℤ) = A084345 (n + 1)

end A084345

/-! ## A084345.P8048246760552136463

`∪[A317295(n+1), A381720(n+1)]`
-/

namespace A084345.P8048246760552136463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084345.P8048246760552136463

namespace A084345

/-- `∪[A317295(n+1), A381720(n+1)]` -/
def P8048246760552136463.Spec : Prop :=
  ∀ n, (P8048246760552136463.a n : ℤ) = A084345 (n + 1)

end A084345

/-! ## A084345.P10416933255802460086

`eq[0, A137331(n)]`
-/

namespace A084345.P10416933255802460086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137331 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084345.P10416933255802460086

namespace A084345

/-- `eq[0, A137331(n)]` -/
def P10416933255802460086.Spec : Prop :=
  ∀ n, (P10416933255802460086.a n : ℤ) = A084345 (n + 1)

end A084345

/-! ## A084345.P224396441446849805

`eq[0, A055671(A000120(n))]`
-/

namespace A084345.P224396441446849805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084345.P224396441446849805

namespace A084345

/-- `eq[0, A055671(A000120(n))]` -/
def P224396441446849805.Spec : Prop :=
  ∀ n, (P224396441446849805.a n : ℤ) = A084345 (n + 1)

end A084345

/-! ## A084345.P500842650125977366

`eq[0, A105700(A000120(n)²)]`
-/

namespace A084345.P500842650125977366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A000120 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084345.P500842650125977366

namespace A084345

/-- `eq[0, A105700(A000120(n)²)]` -/
def P500842650125977366.Spec : Prop :=
  ∀ n, (P500842650125977366.a n : ℤ) = A084345 (n + 1)

end A084345

/-! ## A084345.P18262526493543216079

`lt[A105700(2*A000120(n)), 2]`
-/

namespace A084345.P18262526493543216079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * A000120 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084345.P18262526493543216079

namespace A084345

/-- `lt[A105700(2*A000120(n)), 2]` -/
def P18262526493543216079.Spec : Prop :=
  ∀ n, (P18262526493543216079.a n : ℤ) = A084345 (n + 1)

end A084345

/-! ## A084345.P8070031258441586568

`eq[A257000(4*n), A257000(A000120(n))]`
-/

namespace A084345.P8070031258441586568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084345.P8070031258441586568

namespace A084345

/-- `eq[A257000(4*n), A257000(A000120(n))]` -/
def P8070031258441586568.Spec : Prop :=
  ∀ n, (P8070031258441586568.a n : ℤ) = A084345 (n + 1)

end A084345

/-! ## A084345.P4682220995496136409

`eq[1, A219964(A001316(n)-1)]`
-/

namespace A084345.P4682220995496136409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 (A001316 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084345.P4682220995496136409

namespace A084345

/-- `eq[1, A219964(A001316(n)-1)]` -/
def P4682220995496136409.Spec : Prop :=
  ∀ n, (P4682220995496136409.a n : ℤ) = A084345 (n + 1)

end A084345

/-! ## A084345.P6066008719927901823

`eq[1, A008836(A050315(n))]`
-/

namespace A084345.P6066008719927901823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A050315 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084345.P6066008719927901823

namespace A084345

/-- `eq[1, A008836(A050315(n))]` -/
def P6066008719927901823.Spec : Prop :=
  ∀ n, (P6066008719927901823.a n : ℤ) = A084345 (n + 1)

end A084345

/-! ## A084345.P11850123414091730210

`eq[1, A001950(A147582(n+1)+1)%2]`
-/

namespace A084345.P11850123414091730210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001950 (A147582 (n + 1) + 1).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084345.P11850123414091730210

namespace A084345

/-- `eq[1, A001950(A147582(n+1)+1)%2]` -/
def P11850123414091730210.Spec : Prop :=
  ∀ n, (P11850123414091730210.a n : ℤ) = A084345 (n + 1)

end A084345

/-! ## A084345.P2939191278576246395

`eq[1, A008683(A030664(A038573(n)))]`
-/

namespace A084345.P2939191278576246395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A030664 (A038573 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084345.P2939191278576246395

namespace A084345

/-- `eq[1, A008683(A030664(A038573(n)))]` -/
def P2939191278576246395.Spec : Prop :=
  ∀ n, (P2939191278576246395.a n : ℤ) = A084345 (n + 1)

end A084345

/-! ## A084345.P18260480899291116956

`eq[1, A008683(A098008(A001316(n))+1)²]`
-/

namespace A084345.P18260480899291116956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A098008 (A001316 n).toNat + 1).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084345.P18260480899291116956

namespace A084345

/-- `eq[1, A008683(A098008(A001316(n))+1)²]` -/
def P18260480899291116956.Spec : Prop :=
  ∀ n, (P18260480899291116956.a n : ℤ) = A084345 (n + 1)

end A084345

/-! ## A084345.P4712387305358007431

`comp[A160899(n+1)]`
-/

namespace A084345.P4712387305358007431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A084345.P4712387305358007431

namespace A084345

/-- `comp[A160899(n+1)]` -/
def P4712387305358007431.Spec : Prop :=
  ∀ n, (P4712387305358007431.a n : ℤ) = A084345 (n + 1)

end A084345

/-! ## A084345.P4628020731005820399

`lt[A173457(A147582(n+1)), A173457(3*n+2)]`
-/

namespace A084345.P4628020731005820399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173457 (A147582 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173457 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084345.P4628020731005820399

namespace A084345

/-- `lt[A173457(A147582(n+1)), A173457(3*n+2)]` -/
def P4628020731005820399.Spec : Prop :=
  ∀ n, (P4628020731005820399.a n : ℤ) = A084345 (n + 1)

end A084345

/-!
# A084346: Triangle read by rows in which row n gives decomposition of Fib(n)*Fib(n+1) into non-adjacent Fibonacci numbers (given by their indices).

The programs for A084346, the canonical program `A084346.P15684392109665983060` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084346 has offset 1).

The definition of A084346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084346.P6960364564741006895

`ceil(2/acot(A082375(n)))`
-/

namespace A084346.P6960364564741006895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (A082375 n : ℝ)⌉

end

end A084346.P6960364564741006895

namespace A084346

/-- `ceil(2/acot(A082375(n)))` -/
def P6960364564741006895.Spec : Prop :=
  ∀ n, P6960364564741006895.a n = A084346 (n + 1)

end A084346

/-! ## A084346.P13093067983539348008

`A152204(n)+Δ[floor(sqrt(n))]`
-/

namespace A084346.P13093067983539348008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152204 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A084346.P13093067983539348008

namespace A084346

/-- `A152204(n)+Δ[floor(sqrt(n))]` -/
def P13093067983539348008.Spec : Prop :=
  ∀ n, P13093067983539348008.a n = A084346 (n + 1)

end A084346

/-! ## A084346.P1888891790429666403

`ceil(2/acot(A122196(n+1)-1))`
-/

namespace A084346.P1888891790429666403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (A122196 (n + 1) - 1 : ℝ)⌉

end

end A084346.P1888891790429666403

namespace A084346

/-- `ceil(2/acot(A122196(n+1)-1))` -/
def P1888891790429666403.Spec : Prop :=
  ∀ n, P1888891790429666403.a n = A084346 (n + 1)

end A084346

/-! ## A084346.P1267170138791519643

`A004280(C(ceil(2*sqrt(n+1)), 2)-n-(n-floor(sqrt(n)))+1)`
-/

namespace A084346.P1267170138791519643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 ((Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ) - ((n : ℤ) - (Nat.sqrt n : ℤ)) + 1).toNat

end

end A084346.P1267170138791519643

namespace A084346

/-- `A004280(C(ceil(2*sqrt(n+1)), 2)-n-(n-floor(sqrt(n)))+1)` -/
def P1267170138791519643.Spec : Prop :=
  ∀ n, P1267170138791519643.a n = A084346 (n + 1)

end A084346

/-! ## A084346.P15684392109665983060

`A004277(A082375(n))+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A084346

/-- `A004277(A082375(n))+1` -/
def P15684392109665983060.Spec : Prop :=
  ∀ n, P15684392109665983060.a n = A084346 (n + 1)

theorem P15684392109665983060.correct : P15684392109665983060.Spec := by
  intro n
  simp only [A084346, Nat.add_sub_cancel]

end A084346

/-! ## A084346.P12433260050193294923

`A026191(A209634(n+1))`
-/

namespace A084346.P12433260050193294923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026191 (A209634 (n + 1)).toNat

end

end A084346.P12433260050193294923

namespace A084346

/-- `A026191(A209634(n+1))` -/
def P12433260050193294923.Spec : Prop :=
  ∀ n, P12433260050193294923.a n = A084346 (n + 1)

end A084346

/-! ## A084346.P4304331381828305342

`A114112(A152204(n)+1)`
-/

namespace A084346.P4304331381828305342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (A152204 n + 1).toNat

end

end A084346.P4304331381828305342

namespace A084346

/-- `A114112(A152204(n)+1)` -/
def P4304331381828305342.Spec : Prop :=
  ∀ n, P4304331381828305342.a n = A084346 (n + 1)

end A084346

/-! ## A084346.P18386431751253495558

`A004274(A082375(n)+2)`
-/

namespace A084346.P18386431751253495558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A082375 n + 2).toNat

end

end A084346.P18386431751253495558

namespace A084346

/-- `A004274(A082375(n)+2)` -/
def P18386431751253495558.Spec : Prop :=
  ∀ n, P18386431751253495558.a n = A084346 (n + 1)

end A084346

/-! ## A084346.P7141348286821739487

`A082375(A082375(n)²)+2`
-/

namespace A084346.P7141348286821739487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (A082375 n ^ 2).toNat + 2

end

end A084346.P7141348286821739487

namespace A084346

/-- `A082375(A082375(n)²)+2` -/
def P7141348286821739487.Spec : Prop :=
  ∀ n, P7141348286821739487.a n = A084346 (n + 1)

end A084346

/-! ## A084346.P6492562876274135077

`A248808(n+1)+A027434(n+1)`
-/

namespace A084346.P6492562876274135077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248808 (n + 1) + A027434 (n + 1)

end

end A084346.P6492562876274135077

namespace A084346

/-- `A248808(n+1)+A027434(n+1)` -/
def P6492562876274135077.Spec : Prop :=
  ∀ n, P6492562876274135077.a n = A084346 (n + 1)

end A084346

/-!
# A084348: Triangle read by rows: T(n,k) = floor(e*k!) - n*floor(e*k!/n).

The programs for A084348, the canonical program `A084348.P16733597267592403529` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084348 has offset 1).

The definition of A084348 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(e*(col(n)+1)!)-(row(n)+1)*floor(e*(col(n)+1)!/(row(n)+1))` (program `A084348.P16733597267592403529`, by `A084348.P16733597267592403529.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084348.P16733597267592403529

`floor(e*(col(n)+1)!)-(row(n)+1)*floor(e*(col(n)+1)!/(row(n)+1))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084348

/-- `floor(e*(col(n)+1)!)-(row(n)+1)*floor(e*(col(n)+1)!/(row(n)+1))` -/
def P16733597267592403529.Spec : Prop :=
  ∀ n, P16733597267592403529.a n = A084348 (n + 1)

theorem P16733597267592403529.correct : P16733597267592403529.Spec := by
  intro n
  simp only [A084348, Nat.add_sub_cancel]

end A084348

/-! ## A084348.P8841809630906450510

`A000522(A048151(n+1))%∑[A010054(n)]`
-/

namespace A084348.P8841809630906450510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000522 (A048151 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084348.P8841809630906450510

namespace A084348

/-- `A000522(A048151(n+1))%∑[A010054(n)]` -/
def P8841809630906450510.Spec : Prop :=
  ∀ n, P8841809630906450510.a n = A084348 (n + 1)

end A084348

/-! ## A084348.P3172588292934411445

`A000522(1-C(∑[char[∑[n]]], 2)+n)%∑[char[∑[n]]]`
-/

namespace A084348.P3172588292934411445
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000522 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat) ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A084348.P3172588292934411445

namespace A084348

/-- `A000522(1-C(∑[char[∑[n]]], 2)+n)%∑[char[∑[n]]]` -/
def P3172588292934411445.Spec : Prop :=
  ∀ n, P3172588292934411445.a n = A084348 (n + 1)

end A084348

/-! ## A084348.P14019081737528680643

`A000522(A002260(n+1))%round(sqrt(2*(n+1)))`
-/

namespace A084348.P14019081737528680643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000522 (A002260 (n + 1)).toNat) (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)))

end

end A084348.P14019081737528680643

namespace A084348

/-- `A000522(A002260(n+1))%round(sqrt(2*(n+1)))` -/
def P14019081737528680643.Spec : Prop :=
  ∀ n, P14019081737528680643.a n = A084348 (n + 1)

end A084348

/-! ## A084348.P10699115554887786065

`A000522(A002262(n)+1)%A002024(n+1)`
-/

namespace A084348.P10699115554887786065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000522 (A002262 n + 1).toNat) (A002024 (n + 1))

end

end A084348.P10699115554887786065

namespace A084348

/-- `A000522(A002262(n)+1)%A002024(n+1)` -/
def P10699115554887786065.Spec : Prop :=
  ∀ n, P10699115554887786065.a n = A084348 (n + 1)

end A084348

/-! ## A084348.P2871281539192492233

`A000522(A108872(n+1))%A002024(n+1)`
-/

namespace A084348.P2871281539192492233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000522 (A108872 (n + 1)).toNat) (A002024 (n + 1))

end

end A084348.P2871281539192492233

namespace A084348

/-- `A000522(A108872(n+1))%A002024(n+1)` -/
def P2871281539192492233.Spec : Prop :=
  ∀ n, P2871281539192492233.a n = A084348 (n + 1)

end A084348

/-!
# A084349: Squarefree numbers that are not the sum of two squares.

The programs for A084349, the canonical program `A084349.P2302578402751710961` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084349 has offset 1).

The definition of A084349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084349.P1256010900037224097

`record[gcd(A007913(n+1), A133388(n+1))]`
-/

namespace A084349.P1256010900037224097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007913 (n + 1)) (A133388 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084349.P1256010900037224097

namespace A084349

/-- `record[gcd(A007913(n+1), A133388(n+1))]` -/
def P1256010900037224097.Spec : Prop :=
  ∀ n, (P1256010900037224097.a n : ℤ) = A084349 (n + 1)

end A084349

/-! ## A084349.P5359890673101788237

`filter[A018825(n+1), A008966(#)]`
-/

namespace A084349.P5359890673101788237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A084349.P5359890673101788237

namespace A084349

/-- `filter[A018825(n+1), A008966(#)]` -/
def P5359890673101788237.Spec : Prop :=
  ∀ n, P5359890673101788237.a n = A084349 (n + 1)

end A084349

/-! ## A084349.P2302578402751710961

`∩[A005117(n+1), A018825(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A084349

/-- `∩[A005117(n+1), A018825(n+1)]` -/
def P2302578402751710961.Spec : Prop :=
  ∀ n, (P2302578402751710961.a n : ℤ) = A084349 (n + 1)

theorem P2302578402751710961.correct : P2302578402751710961.Spec := by
  intro n
  simp only [A084349, Nat.add_sub_cancel]

end A084349

/-! ## A084349.P3578921667595730895

`record[∏{p}[comp[A037942(n+1)], #]]`
-/

namespace A084349.P3578921667595730895
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037942 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084349.P3578921667595730895

namespace A084349

/-- `record[∏{p}[comp[A037942(n+1)], #]]` -/
def P3578921667595730895.Spec : Prop :=
  ∀ n, (P3578921667595730895.a n : ℤ) = A084349 (n + 1)

end A084349

/-! ## A084349.P5635380374798225279

`record[gcd(∏{p}[n+1, 3-#%4], ∏{p}[n+1, #])]`
-/

namespace A084349.P5635380374798225279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ p ∈ Nat.primeFactors (f2 n), (3 - ((p % 4 : ℕ) : ℤ))) ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084349.P5635380374798225279

namespace A084349

/-- `record[gcd(∏{p}[n+1, 3-#%4], ∏{p}[n+1, #])]` -/
def P5635380374798225279.Spec : Prop :=
  ∀ n, (P5635380374798225279.a n : ℤ) = A084349 (n + 1)

end A084349

/-! ## A084349.P3377444538574716343

`eq[n, ∏{p}[n-A229062(n), #]]`
-/

namespace A084349.P3377444538574716343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A229062 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084349.P3377444538574716343

namespace A084349

/-- `eq[n, ∏{p}[n-A229062(n), #]]` -/
def P3377444538574716343.Spec : Prop :=
  ∀ n, (P3377444538574716343.a n : ℤ) = A084349 (n + 1)

end A084349

/-! ## A084349.P5249333530247166767

`record[∏{p}[n+1, #]/(A025426(n+1)+1)]`
-/

namespace A084349.P5249333530247166767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / (A025426 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084349.P5249333530247166767

namespace A084349

/-- `record[∏{p}[n+1, #]/(A025426(n+1)+1)]` -/
def P5249333530247166767.Spec : Prop :=
  ∀ n, P5249333530247166767.a n = (A084349 (n + 1) : ℚ)

end A084349

/-! ## A084349.P13392461183871406908

`eq[A087049(n), A143574(n)]`
-/

namespace A084349.P13392461183871406908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084349.P13392461183871406908

namespace A084349

/-- `eq[A087049(n), A143574(n)]` -/
def P13392461183871406908.Spec : Prop :=
  ∀ n, (P13392461183871406908.a n : ℤ) = A084349 (n + 1)

end A084349

/-! ## A084349.P10734522403621426463

`eq[A087049(n), A302771(n)]`
-/

namespace A084349.P10734522403621426463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084349.P10734522403621426463

namespace A084349

/-- `eq[A087049(n), A302771(n)]` -/
def P10734522403621426463.Spec : Prop :=
  ∀ n, (P10734522403621426463.a n : ℤ) = A084349 (n + 1)

end A084349

/-! ## A084349.P12306701832704857147

`eq[n*A087049(n), A133573(n)]`
-/

namespace A084349.P12306701832704857147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084349.P12306701832704857147

namespace A084349

/-- `eq[n*A087049(n), A133573(n)]` -/
def P12306701832704857147.Spec : Prop :=
  ∀ n, (P12306701832704857147.a n : ℤ) = A084349 (n + 1)

end A084349

/-!
# A084350: Palindromic brilliant numbers.

The programs for A084350, there is no canonical definition to state claims against.
-/

/-! ## A084350.P1153450112811664006

`∩[A002113(n+1), A115655(n+1)]`
-/

namespace A084350.P1153450112811664006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084350.P1153450112811664006

/-! ## A084350.P1866571605996916242

`∩[A032350(n+1), A115655(n+1)]`
-/

namespace A084350.P1866571605996916242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084350.P1866571605996916242

/-! ## A084350.P16715436569002204338

`∩[A035135(n+1), A115655(n+1)]`
-/

namespace A084350.P16715436569002204338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084350.P16715436569002204338

/-! ## A084350.P6578047064984302552

`∩[A046328(n+1), A115655(n+1)]`
-/

namespace A084350.P6578047064984302552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084350.P6578047064984302552

/-! ## A084350.P10156913473430970080

`∩[A046338(n+1), A115655(n+1)]`
-/

namespace A084350.P10156913473430970080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084350.P10156913473430970080

/-! ## A084350.P9447958405462093519

`∩[A056525(n+1), A115655(n+1)]`
-/

namespace A084350.P9447958405462093519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084350.P9447958405462093519

/-! ## A084350.P6004186946675229595

`∩[A061917(n+1), A115655(n+1)]`
-/

namespace A084350.P6004186946675229595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084350.P6004186946675229595

/-! ## A084350.P10824173894700344611

`∩[A083136(n+1), A115655(n+1)]`
-/

namespace A084350.P10824173894700344611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084350.P10824173894700344611

/-! ## A084350.P5502903487626604410

`∩[A083158(n+1), A115655(n+1)]`
-/

namespace A084350.P5502903487626604410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084350.P5502903487626604410

/-! ## A084350.P12738847327784028331

`∩[A083970(n+1), A115655(n+1)]`
-/

namespace A084350.P12738847327784028331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084350.P12738847327784028331

/-!
# A084351: Length of period of sequences r(k,n)=floor(sin(1)*k!)-n*floor(sin(1)*k!/n) when n is fixed.

The programs for A084351, the canonical program `A084351.P16633846142287889478` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084351 has offset 1).

The definition of A084351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084351.P14748919711001169384

`lcm(ceil(atan(n+1))², n+1)`
-/

namespace A084351.P14748919711001169384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (⌈Real.arctan (n + 1 : ℝ)⌉ ^ 2) (n + 1 : ℤ)

end

end A084351.P14748919711001169384

namespace A084351

/-- `lcm(ceil(atan(n+1))², n+1)` -/
def P14748919711001169384.Spec : Prop :=
  ∀ n, (P14748919711001169384.a n : ℤ) = A084351 (n + 1)

end A084351

/-! ## A084351.P8677311956965350640

`lcm(4, ceil(acot(a(n-1))+n))` with `a(0)=1`
-/

namespace A084351.P8677311956965350640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 4 ⌈SequenceMachineLib.acot (a (n - 1) : ℝ) + (n : ℝ)⌉

end

end A084351.P8677311956965350640

namespace A084351

/-- `lcm(4, ceil(acot(a(n-1))+n))` -/
def P8677311956965350640.Spec : Prop :=
  ∀ n, (P8677311956965350640.a n : ℤ) = A084351 (n + 1)

end A084351

/-! ## A084351.P5624682662922187314

`lcm(Δ[n²]-n, (2-floor(acot(n)))²)`
-/

namespace A084351.P5624682662922187314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) ((2 - ⌊SequenceMachineLib.acot (n : ℝ)⌋) ^ 2)

end

end A084351.P5624682662922187314

namespace A084351

/-- `lcm(Δ[n²]-n, (2-floor(acot(n)))²)` -/
def P5624682662922187314.Spec : Prop :=
  ∀ n, (P5624682662922187314.a n : ℤ) = A084351 (n + 1)

end A084351

/-! ## A084351.P15686723344437412077

`4*(n+1)/gcd(4, (n+1)%(n+1)²)`
-/

namespace A084351.P15686723344437412077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℚ) / (Nat.gcd 4 ((n + 1) % (n + 1) ^ 2) : ℚ))

end

end A084351.P15686723344437412077

namespace A084351

/-- `4*(n+1)/gcd(4, (n+1)%(n+1)²)` -/
def P15686723344437412077.Spec : Prop :=
  ∀ n, P15686723344437412077.a n = (A084351 (n + 1) : ℚ)

end A084351

/-! ## A084351.P5298560197819597207

`lcm(n+1, A123932(n))`
-/

namespace A084351.P5298560197819597207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A123932 n)

end

end A084351.P5298560197819597207

namespace A084351

/-- `lcm(n+1, A123932(n))` -/
def P5298560197819597207.Spec : Prop :=
  ∀ n, (P5298560197819597207.a n : ℤ) = A084351 (n + 1)

end A084351

/-! ## A084351.P5722856659805108569

`lcm(4, a(A008683(4*n))+n)` with `a(0)=1`
-/

namespace A084351.P5722856659805108569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 4 (a (A008683 (4 * n)).toNat + n)

end

end A084351.P5722856659805108569

namespace A084351

/-- `lcm(4, a(A008683(4*n))+n)` -/
def P5722856659805108569.Spec : Prop :=
  ∀ n, (P5722856659805108569.a n : ℤ) = A084351 (n + 1)

end A084351

/-! ## A084351.P16633846142287889478

`lcm(2*n+1-n, A000032(C(2, n+2))²)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084351

/-- `lcm(2*n+1-n, A000032(C(2, n+2))²)` -/
def P16633846142287889478.Spec : Prop :=
  ∀ n, (P16633846142287889478.a n : ℤ) = A084351 (n + 1)

theorem P16633846142287889478.correct : P16633846142287889478.Spec := by
  intro n
  simp only [A084351, Nat.add_sub_cancel]

end A084351

/-! ## A084351.P16693152275592564170

`A060819(n+1)*A123932(n)`
-/

namespace A084351.P16693152275592564170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 1) * A123932 n

end

end A084351.P16693152275592564170

namespace A084351

/-- `A060819(n+1)*A123932(n)` -/
def P16693152275592564170.Spec : Prop :=
  ∀ n, P16693152275592564170.a n = A084351 (n + 1)

end A084351

/-! ## A084351.P1746743207226032661

`lcm(A143545(n+1), A151798(n))`
-/

namespace A084351.P1746743207226032661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143545 (n + 1)) (A151798 n)

end

end A084351.P1746743207226032661

namespace A084351

/-- `lcm(A143545(n+1), A151798(n))` -/
def P1746743207226032661.Spec : Prop :=
  ∀ n, (P1746743207226032661.a n : ℤ) = A084351 (n + 1)

end A084351

/-! ## A084351.P8405815643326727550

`A329601(A329601(n+1))²*A060819(n+1)`
-/

namespace A084351.P8405815643326727550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329601 (A329601 (n + 1)).toNat ^ 2 * A060819 (n + 1)

end

end A084351.P8405815643326727550

namespace A084351

/-- `A329601(A329601(n+1))²*A060819(n+1)` -/
def P8405815643326727550.Spec : Prop :=
  ∀ n, P8405815643326727550.a n = A084351 (n + 1)

end A084351

/-! ## A084351.P6565918822659490976

`A246943(A246943(n+1)/A010121(2*n))`
-/

namespace A084351.P6565918822659490976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246943 (SequenceMachineLib.roundAway ((A246943 (n + 1) : ℚ) / (A010121 (2 * n) : ℚ))).toNat

end

end A084351.P6565918822659490976

namespace A084351

/-- `A246943(A246943(n+1)/A010121(2*n))` -/
def P6565918822659490976.Spec : Prop :=
  ∀ n, P6565918822659490976.a n = A084351 (n + 1)

end A084351

/-! ## A084351.P15249102981112530713

`A266491(A066043(n+1))`
-/

namespace A084351.P15249102981112530713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 (A066043 (n + 1)).toNat

end

end A084351.P15249102981112530713

namespace A084351

/-- `A266491(A066043(n+1))` -/
def P15249102981112530713.Spec : Prop :=
  ∀ n, P15249102981112530713.a n = A084351 (n + 1)

end A084351

/-!
# A084353: Palindromes such that the product of the nonzero digits + 1 is prime.

The programs for A084353, there is no canonical definition to state claims against.
-/

/-! ## A084353.P15654979978969957153

`record[A265520(A287662(n+1))]`
-/

namespace A084353.P15654979978969957153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265520 (A287662 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084353.P15654979978969957153

/-! ## A084353.P13884535125704036246

`record[A265522(A005574(n+1))]`
-/

namespace A084353.P13884535125704036246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265522 (A005574 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084353.P13884535125704036246

/-! ## A084353.P16710510618318711126

`record[A265571(A175298(n)+1)]`
-/

namespace A084353.P16710510618318711126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265571 (A175298 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084353.P16710510618318711126

/-! ## A084353.P14221863173030795567

`record[A265522(A262087((n-1)^(n%2)))]`
-/

namespace A084353.P14221863173030795567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265522 (A262087 (((n : ℤ) - 1) ^ (n % 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084353.P14221863173030795567

/-! ## A084353.P1008795850496434812

`A265540(A133488(n+1))`
-/

namespace A084353.P1008795850496434812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265540 (A133488 (n + 1)).toNat

end

end A084353.P1008795850496434812

/-!
# A084354: Primes whose product of nonzero digits + 1 is prime.

The programs for A084354, the canonical program `A084354.P18237609210739072839` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084354 has offset 1).

The definition of A084354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084354.P18237609210739072839

`p?[n*(A066247(A051801(n)+1)+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084354

/-- `p?[n*(A066247(A051801(n)+1)+1)]` -/
def P18237609210739072839.Spec : Prop :=
  ∀ n, P18237609210739072839.a n = A084354 (n + 1)

theorem P18237609210739072839.correct : P18237609210739072839.Spec := by
  intro n
  simp only [A084354, Nat.add_sub_cancel]

end A084354

/-! ## A084354.P6240953307128571569

`p?[and(n+1, A066247(A051801(n+1)+1)-1)]`
-/

namespace A084354.P6240953307128571569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A066247 (A051801 (n + 1) + 1).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084354.P6240953307128571569

namespace A084354

/-- `p?[and(n+1, A066247(A051801(n+1)+1)-1)]` -/
def P6240953307128571569.Spec : Prop :=
  ∀ n, P6240953307128571569.a n = A084354 (n + 1)

end A084354

/-! ## A084354.P7844576035945515073

`eq[A225244(A051801(n)+1), A225244(n)]`
-/

namespace A084354.P7844576035945515073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 (A051801 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084354.P7844576035945515073

namespace A084354

/-- `eq[A225244(A051801(n)+1), A225244(n)]` -/
def P7844576035945515073.Spec : Prop :=
  ∀ n, (P7844576035945515073.a n : ℤ) = A084354 (n + 1)

end A084354

/-! ## A084354.P17198613349019407624

`p?[n*A245714(A051801(n))]`
-/

namespace A084354.P17198613349019407624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A245714 (A051801 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084354.P17198613349019407624

namespace A084354

/-- `p?[n*A245714(A051801(n))]` -/
def P17198613349019407624.Spec : Prop :=
  ∀ n, P17198613349019407624.a n = A084354 (n + 1)

end A084354

/-! ## A084354.P3762164344956914595

`p?[n*A318827(A051801(n)+1)]`
-/

namespace A084354.P3762164344956914595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A318827 (A051801 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084354.P3762164344956914595

namespace A084354

/-- `p?[n*A318827(A051801(n)+1)]` -/
def P3762164344956914595.Spec : Prop :=
  ∀ n, P3762164344956914595.a n = A084354 (n + 1)

end A084354

/-! ## A084354.P16395516391520014717

`p?[n*A343227(A051801(n)%(n+1)+1)]`
-/

namespace A084354.P16395516391520014717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A343227 (Int.tmod (A051801 n) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084354.P16395516391520014717

namespace A084354

/-- `p?[n*A343227(A051801(n)%(n+1)+1)]` -/
def P16395516391520014717.Spec : Prop :=
  ∀ n, P16395516391520014717.a n = A084354 (n + 1)

end A084354

/-!
# A084356: a(n) = A000055(n+2) - A023359(n).

The programs for A084356, there is no canonical definition to state claims against.
-/

/-! ## A084356.P7605760414600562781

`A000055(n+2)-A023359(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084356.P7605760414600562781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (n + 2) - A023359 n

end

end A084356.P7605760414600562781

/-! ## A084356.P17407591398880437335

`A191845(A005676(n))`
-/

namespace A084356.P17407591398880437335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191845 (A005676 n).toNat

end

end A084356.P17407591398880437335

/-! ## A084356.P15388070612605528552

`A088526(A294816(n))`
-/

namespace A084356.P15388070612605528552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088526 (A294816 n).toNat

end

end A084356.P15388070612605528552

/-! ## A084356.P148741285706571847

`A191845(A352066(n))`
-/

namespace A084356.P148741285706571847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191845 (A352066 n).toNat

end

end A084356.P148741285706571847

/-! ## A084356.P13628479815133804930

`A191845(A365079(n))`
-/

namespace A084356.P13628479815133804930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191845 (A365079 n).toNat

end

end A084356.P13628479815133804930

/-!
# A084357: Number of sets of sets of lists.

The programs for A084357, there is no canonical definition to state claims against.
-/

/-! ## A084357.P13605719118329786781

`xor(-A062028((2*n-1)*a(n-1)), -n)` with `a(0)=1`
-/

namespace A084357.P13605719118329786781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (-A062028 (((2 * n : ℤ) - 1) * a (n - 1)).toNat) (-(n : ℤ))

end

end A084357.P13605719118329786781

/-! ## A084357.P7396565543757953618

`A008619(A052801(n)-A029847(n))`
-/

namespace A084357.P7396565543757953618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A052801 n - A029847 n).toNat

end

end A084357.P7396565543757953618

/-!
# A084358: Lists of sets of lists.

The programs for A084358, there is no canonical definition to state claims against.
-/

/-! ## A084358.P14073591912043196931

`A133289(∑[n])`
-/

namespace A084358.P14073591912043196931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133289 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084358.P14073591912043196931

/-! ## A084358.P11920799842862824890

`or(1, A133289(A000217(n)))`
-/

namespace A084358.P11920799842862824890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A133289 (A000217 n).toNat)

end

end A084358.P11920799842862824890

/-! ## A084358.P9231501551801424052

`A133289(A000217(n))+A000007(n+1)`
-/

namespace A084358.P9231501551801424052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133289 (A000217 n).toNat + A000007 (n + 1)

end

end A084358.P9231501551801424052

/-! ## A084358.P18343848127815016918

`A133289(A000217(n))+A000035(2*n)`
-/

namespace A084358.P18343848127815016918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133289 (A000217 n).toNat + A000035 (2 * n)

end

end A084358.P18343848127815016918

/-! ## A084358.P15876864750222101377

`A001222(A308052(n+1))*A133289(A000217(n))`
-/

namespace A084358.P15876864750222101377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A308052 (n + 1)).toNat * A133289 (A000217 n).toNat

end

end A084358.P15876864750222101377

/-!
# A084359: a(n) = number of partitions of n into pair of parts n=p+q, p>=q>=1, with p-q equal to a square >= 0.

The programs for A084359, the canonical program `A084359.P13508041457539725378` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084359 has offset 1).

The definition of A084359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084359.P10568363723850382707

`round((n%2+sqrt(n))/2)`
-/

namespace A084359.P10568363723850382707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n % 2 : ℕ) : ℝ) + Real.sqrt (n : ℝ)) / 2)

end

end A084359.P10568363723850382707

namespace A084359

/-- `round((n%2+sqrt(n))/2)` -/
def P10568363723850382707.Spec : Prop :=
  ∀ n, P10568363723850382707.a n = A084359 (n + 1)

end A084359

/-! ## A084359.P14519913758860318520

`round((and(1, n)+sqrt(n))/2)`
-/

namespace A084359.P14519913758860318520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.land 1 n : ℝ) + Real.sqrt (n : ℝ)) / 2)

end

end A084359.P14519913758860318520

namespace A084359

/-- `round((and(1, n)+sqrt(n))/2)` -/
def P14519913758860318520.Spec : Prop :=
  ∀ n, P14519913758860318520.a n = A084359 (n + 1)

end A084359

/-! ## A084359.P1358759654765744656

`ceil(sqrt(n)-a(n-1))` with `a(0)=0`
-/

namespace A084359.P1358759654765744656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈Real.sqrt (n : ℝ) - (a (n - 1) : ℝ)⌉

end

end A084359.P1358759654765744656

namespace A084359

/-- `ceil(sqrt(n)-a(n-1))` -/
def P1358759654765744656.Spec : Prop :=
  ∀ n, P1358759654765744656.a n = A084359 (n + 1)

end A084359

/-! ## A084359.P14835697244423770160

`ceil(root(n, 2))-a(n-1)` with `a(0)=0`
-/

namespace A084359.P14835697244423770160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(n : ℝ) ^ (1 / (2 : ℝ))⌉ - a (n - 1)

end

end A084359.P14835697244423770160

namespace A084359

/-- `ceil(root(n, 2))-a(n-1)` -/
def P14835697244423770160.Spec : Prop :=
  ∀ n, P14835697244423770160.a n = A084359 (n + 1)

end A084359

/-! ## A084359.P4246784037036514909

`abs(floor(a(n-1)-sqrt(n)))` with `a(0)=0`
-/

namespace A084359.P4246784037036514909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |⌊(a (n - 1) : ℝ) - Real.sqrt (n : ℝ)⌋|

end

end A084359.P4246784037036514909

namespace A084359

/-- `abs(floor(a(n-1)-sqrt(n)))` -/
def P4246784037036514909.Spec : Prop :=
  ∀ n, P4246784037036514909.a n = A084359 (n + 1)

end A084359

/-! ## A084359.P278056886884193185

`-floor(a(n-1)-sqrt(n))` with `a(0)=0`
-/

namespace A084359.P278056886884193185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -⌊(a (n - 1) : ℝ) - Real.sqrt (n : ℝ)⌋

end

end A084359.P278056886884193185

namespace A084359

/-- `-floor(a(n-1)-sqrt(n))` -/
def P278056886884193185.Spec : Prop :=
  ∀ n, P278056886884193185.a n = A084359 (n + 1)

end A084359

/-! ## A084359.P9458393887335959327

`∑[char[n²+1]-a(n-1)]` with `a(0)=0`
-/

namespace A084359.P9458393887335959327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084359.P9458393887335959327

namespace A084359

/-- `∑[char[n²+1]-a(n-1)]` -/
def P9458393887335959327.Spec : Prop :=
  ∀ n, P9458393887335959327.a n = A084359 (n + 1)

end A084359

/-! ## A084359.P6727398506993044692

`a(n-2)+and(1, A000005(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A084359.P6727398506993044692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Int.land 1 (A000005 (n - 1))

end

end A084359.P6727398506993044692

namespace A084359

/-- `a(n-2)+and(1, A000005(n-1))` -/
def P6727398506993044692.Spec : Prop :=
  ∀ n, P6727398506993044692.a n = A084359 (n + 1)

end A084359

/-! ## A084359.P13508041457539725378

`A080513(n)-A008619(A028391(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084359

/-- `A080513(n)-A008619(A028391(n))` -/
def P13508041457539725378.Spec : Prop :=
  ∀ n, P13508041457539725378.a n = A084359 (n + 1)

theorem P13508041457539725378.correct : P13508041457539725378.Spec := by
  intro n
  simp only [A084359, Nat.add_sub_cancel]

end A084359

/-! ## A084359.P7910431882146170792

`A008619(n+1)-A008619(A028391(n))`
-/

namespace A084359.P7910431882146170792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) - A008619 (A028391 n).toNat

end

end A084359.P7910431882146170792

namespace A084359

/-- `A008619(n+1)-A008619(A028391(n))` -/
def P7910431882146170792.Spec : Prop :=
  ∀ n, P7910431882146170792.a n = A084359 (n + 1)

end A084359

/-! ## A084359.P566532519516954802

`A110654(2*A110654(n)-A028391(n))`
-/

namespace A084359.P566532519516954802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * A110654 n - A028391 n).toNat

end

end A084359.P566532519516954802

namespace A084359

/-- `A110654(2*A110654(n)-A028391(n))` -/
def P566532519516954802.Spec : Prop :=
  ∀ n, P566532519516954802.a n = A084359 (n + 1)

end A084359

/-! ## A084359.P17964577146142003905

`A080513(A028392(n))-A008619(n)`
-/

namespace A084359.P17964577146142003905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A028392 n).toNat - A008619 n

end

end A084359.P17964577146142003905

namespace A084359

/-- `A080513(A028392(n))-A008619(n)` -/
def P17964577146142003905.Spec : Prop :=
  ∀ n, P17964577146142003905.a n = A084359 (n + 1)

end A084359

/-! ## A084359.P9652926512890969968

`A008619(A028392(n)+1)-A008619(n)`
-/

namespace A084359.P9652926512890969968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A028392 n + 1).toNat - A008619 n

end

end A084359.P9652926512890969968

namespace A084359

/-- `A008619(A028392(n)+1)-A008619(n)` -/
def P9652926512890969968.Spec : Prop :=
  ∀ n, P9652926512890969968.a n = A084359 (n + 1)

end A084359

/-! ## A084359.P16426585647825098256

`A004526(A028392(n)+1)-A004526(n)`
-/

namespace A084359.P16426585647825098256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028392 n + 1).toNat - A004526 n

end

end A084359.P16426585647825098256

namespace A084359

/-- `A004526(A028392(n)+1)-A004526(n)` -/
def P16426585647825098256.Spec : Prop :=
  ∀ n, P16426585647825098256.a n = A084359 (n + 1)

end A084359

/-! ## A084359.P2470418850356492446

`A004526(A078358(n+1))-A004526(n)`
-/

namespace A084359.P2470418850356492446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A078358 (n + 1)).toNat - A004526 n

end

end A084359.P2470418850356492446

namespace A084359

/-- `A004526(A078358(n+1))-A004526(n)` -/
def P2470418850356492446.Spec : Prop :=
  ∀ n, P2470418850356492446.a n = A084359 (n + 1)

end A084359

/-! ## A084359.P8530271128423713091

`A004526(A135668(n+1)-1)-A004526(n)`
-/

namespace A084359.P8530271128423713091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A135668 (n + 1) - 1).toNat - A004526 n

end

end A084359.P8530271128423713091

namespace A084359

/-- `A004526(A135668(n+1)-1)-A004526(n)` -/
def P8530271128423713091.Spec : Prop :=
  ∀ n, P8530271128423713091.a n = A084359 (n + 1)

end A084359

/-! ## A084359.P13121723312550727756

`A004526(A003059(n+1)+n)-A004526(n)`
-/

namespace A084359.P13121723312550727756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003059 (n + 1) + (n : ℤ)).toNat - A004526 n

end

end A084359.P13121723312550727756

namespace A084359

/-- `A004526(A003059(n+1)+n)-A004526(n)` -/
def P13121723312550727756.Spec : Prop :=
  ∀ n, P13121723312550727756.a n = A084359 (n + 1)

end A084359

/-! ## A084359.P11578653684407916847

`∑[char[A001614(n+1)]]-A002265(2*n)`
-/

namespace A084359.P11578653684407916847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002265 (2 * n)

end

end A084359.P11578653684407916847

namespace A084359

/-- `∑[char[A001614(n+1)]]-A002265(2*n)` -/
def P11578653684407916847.Spec : Prop :=
  ∀ n, P11578653684407916847.a n = A084359 (n + 1)

end A084359

/-! ## A084359.P15934397486919796335

`ceil(A086520(n+1)/2)`
-/

namespace A084359.P15934397486919796335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A086520 (n + 1) : ℚ) / 2⌉

end

end A084359.P15934397486919796335

namespace A084359

/-- `ceil(A086520(n+1)/2)` -/
def P15934397486919796335.Spec : Prop :=
  ∀ n, P15934397486919796335.a n = A084359 (n + 1)

end A084359

/-!
# A084360: Number of partitions of n into pair of parts whose difference is a prime.

The programs for A084360, the canonical program `A084360.P16112422958158698758` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084360 has offset 1).

The definition of A084360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084360.P2318778706390929588

`A303223(n+1)/(2*(n+1))`
-/

namespace A084360.P2318778706390929588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303223 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A084360.P2318778706390929588

namespace A084360

/-- `A303223(n+1)/(2*(n+1))` -/
def P2318778706390929588.Spec : Prop :=
  ∀ n, P2318778706390929588.a n = (A084360 (n + 1) : ℚ)

end A084360

/-! ## A084360.P16112422958158698758

`A230980(n-1)-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084360

/-- `A230980(n-1)-a(n-1)` -/
def P16112422958158698758.Spec : Prop :=
  ∀ n, P16112422958158698758.a n = A084360 (n + 1)

theorem P16112422958158698758.correct : P16112422958158698758.Spec := by
  intro n
  simp only [A084360, Nat.add_sub_cancel]

end A084360

/-! ## A084360.P13409403557816513205

`A000720(n-1)-a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A084360.P13409403557816513205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000720 (n - 1) - a (n - 1)

end

end A084360.P13409403557816513205

namespace A084360

/-- `A000720(n-1)-a(n-1)` -/
def P13409403557816513205.Spec : Prop :=
  ∀ n, P13409403557816513205.a n = A084360 (n + 1)

end A084360

/-! ## A084360.P4488892566566380533

`A010051(n-1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A084360.P4488892566566380533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A010051 (n - 1) + a (n - 2)

end

end A084360.P4488892566566380533

namespace A084360

/-- `A010051(n-1)+a(n-2)` -/
def P4488892566566380533.Spec : Prop :=
  ∀ n, P4488892566566380533.a n = A084360 (n + 1)

end A084360

/-! ## A084360.P8014074456437360732

`char[A008864(n+1)]+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A084360.P8014074456437360732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 2)

end

end A084360.P8014074456437360732

namespace A084360

/-- `char[A008864(n+1)]+a(n-2)` -/
def P8014074456437360732.Spec : Prop :=
  ∀ n, (P8014074456437360732.a n : ℤ) = A084360 (n + 1)

end A084360

/-! ## A084360.P2448351897589791730

`a(n-2)+C(2, A000005(n-1))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A084360.P2448351897589791730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 2) + Nat.choose 2 (A000005 (n - 1)).toNat

end

end A084360.P2448351897589791730

namespace A084360

/-- `a(n-2)+C(2, A000005(n-1))` -/
def P2448351897589791730.Spec : Prop :=
  ∀ n, (P2448351897589791730.a n : ℤ) = A084360 (n + 1)

end A084360

/-! ## A084360.P17634408093401482264

`a(n-2)+C(n, A000203(n-1))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A084360.P17634408093401482264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 2) + Nat.choose n (A000203 (n - 1)).toNat

end

end A084360.P17634408093401482264

namespace A084360

/-- `a(n-2)+C(n, A000203(n-1))` -/
def P17634408093401482264.Spec : Prop :=
  ∀ n, (P17634408093401482264.a n : ℤ) = A084360 (n + 1)

end A084360

/-! ## A084360.P4558537138437328172

`a(n-2)+C(A006530(n-1), n-1)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A084360.P4558537138437328172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 2) + Nat.choose (A006530 (n - 1)).toNat ((n : ℤ) - 1).toNat

end

end A084360.P4558537138437328172

namespace A084360

/-- `a(n-2)+C(A006530(n-1), n-1)` -/
def P4558537138437328172.Spec : Prop :=
  ∀ n, (P4558537138437328172.a n : ℤ) = A084360 (n + 1)

end A084360

/-! ## A084360.P17188805991962617916

`a(n-2)+C(A014963(n-1), n-1)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A084360.P17188805991962617916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 2) + Nat.choose (A014963 (n - 1)).toNat ((n : ℤ) - 1).toNat

end

end A084360.P17188805991962617916

namespace A084360

/-- `a(n-2)+C(A014963(n-1), n-1)` -/
def P17188805991962617916.Spec : Prop :=
  ∀ n, (P17188805991962617916.a n : ℤ) = A084360 (n + 1)

end A084360

/-! ## A084360.P14987390725499911265

`a(n-2)+C(A000010(n-1), n-2)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A084360.P14987390725499911265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 2) + Nat.choose (A000010 (n - 1)).toNat ((n : ℤ) - 2).toNat

end

end A084360.P14987390725499911265

namespace A084360

/-- `a(n-2)+C(A000010(n-1), n-2)` -/
def P14987390725499911265.Spec : Prop :=
  ∀ n, (P14987390725499911265.a n : ℤ) = A084360 (n + 1)

end A084360

/-! ## A084360.P17790756238818200932

`A303223(n+1)%A157142(n)`
-/

namespace A084360.P17790756238818200932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303223 (n + 1)) (A157142 n)

end

end A084360.P17790756238818200932

namespace A084360

/-- `A303223(n+1)%A157142(n)` -/
def P17790756238818200932.Spec : Prop :=
  ∀ n, P17790756238818200932.a n = A084360 (n + 1)

end A084360

/-! ## A084360.P17525495537276861079

`A082460(n+1)-A010051(n+1)`
-/

namespace A084360.P17525495537276861079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (n + 1) - A010051 (n + 1)

end

end A084360.P17525495537276861079

namespace A084360

/-- `A082460(n+1)-A010051(n+1)` -/
def P17525495537276861079.Spec : Prop :=
  ∀ n, P17525495537276861079.a n = A084360 (n + 1)

end A084360

/-! ## A084360.P3986430564871200283

`A082460(n+1)+A230980(n)-A000720(n+1)`
-/

namespace A084360.P3986430564871200283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (n + 1) + (A230980 n - A000720 (n + 1))

end

end A084360.P3986430564871200283

namespace A084360

/-- `A082460(n+1)+A230980(n)-A000720(n+1)` -/
def P3986430564871200283.Spec : Prop :=
  ∀ n, P3986430564871200283.a n = A084360 (n + 1)

end A084360

/-! ## A084360.P5035642696768068903

`A000720(A028310(n))-A082460(A028310(n))`
-/

namespace A084360.P5035642696768068903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A028310 n).toNat - A082460 (A028310 n).toNat

end

end A084360.P5035642696768068903

namespace A084360

/-- `A000720(A028310(n))-A082460(A028310(n))` -/
def P5035642696768068903.Spec : Prop :=
  ∀ n, P5035642696768068903.a n = A084360 (n + 1)

end A084360

/-! ## A084360.P6563878764009563887

`A082460(n+1)+A230980(n)-A230980(n+1)`
-/

namespace A084360.P6563878764009563887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (n + 1) + (A230980 n - A230980 (n + 1))

end

end A084360.P6563878764009563887

namespace A084360

/-- `A082460(n+1)+A230980(n)-A230980(n+1)` -/
def P6563878764009563887.Spec : Prop :=
  ∀ n, P6563878764009563887.a n = A084360 (n + 1)

end A084360

/-! ## A084360.P706203680439026923

`A082460(eq[1, A082460(n+1)]-n)`
-/

namespace A084360.P706203680439026923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - n)

end

end A084360.P706203680439026923

namespace A084360

/-- `A082460(eq[1, A082460(n+1)]-n)` -/
def P706203680439026923.Spec : Prop :=
  ∀ n, P706203680439026923.a n = A084360 (n + 1)

end A084360

/-! ## A084360.P7774536116003149451

`A082460(A082460(A000040(A082460(A000040(n+1)))))`
-/

namespace A084360.P7774536116003149451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (A082460 (A000040 (A082460 (A000040 (n + 1)).toNat).toNat).toNat).toNat

end

end A084360.P7774536116003149451

namespace A084360

/-- `A082460(A082460(A000040(A082460(A000040(n+1)))))` -/
def P7774536116003149451.Spec : Prop :=
  ∀ n, P7774536116003149451.a n = A084360 (n + 1)

end A084360

/-!
# A084361: a(1) = 1; a(n+1) is the least prime of the form (2^k)*a(n)+-1, for some positive k.

The programs for A084361, there is no canonical definition to state claims against.
-/

/-! ## A084361.P17151909395474030614

`A194603(a(n-1))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A084361.P17151909395474030614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  A194603 (a (n - 1)).toNat

end

end A084361.P17151909395474030614

/-! ## A084361.P13805107505076980795

`record[A090368(A246878(n))]`
-/

namespace A084361.P13805107505076980795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A246878 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084361.P13805107505076980795

/-! ## A084361.P3773515261674934674

`A194603(A005843(a(n-1)))` with `a(0)=1`
-/

namespace A084361.P3773515261674934674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194603 (A005843 (a (n - 1)).toNat).toNat

end

end A084361.P3773515261674934674

/-!
# A084362: a(n) = Sum_{lambda_1 + lambda_2 + ... = n} Sum_{k=1..lambda_1} k * C(lambda_1-1, k-1), where lambda_1 is the largest part of the partition of n.

The programs for A084362, there is no canonical definition to state claims against.
-/

/-! ## A084362.P8246483778590141956

`A262689(A041005(n)+n)`
-/

namespace A084362.P8246483778590141956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A041005 n + (n : ℤ)).toNat

end

end A084362.P8246483778590141956

/-! ## A084362.P9304712563419458162

`∑[A342517(∑[A288468(n+1)])]`
-/

namespace A084362.P9304712563419458162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288468 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084362.P9304712563419458162

/-!
# A084363: a(n) = n^(n+1) - (n-1)^n.

The programs for A084363, the canonical program `A084363.P144361439383095257` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084363 has offset 1).

The definition of A084363 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(n+2)-n^(n+1)` (program `A084363.P144361439383095257`, by `A084363.P144361439383095257.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084363.P144361439383095257

`(n+1)^(n+2)-n^(n+1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084363

/-- `(n+1)^(n+2)-n^(n+1)` -/
def P144361439383095257.Spec : Prop :=
  ∀ n, P144361439383095257.a n = A084363 (n + 1)

theorem P144361439383095257.correct : P144361439383095257.Spec := by
  intro n
  simp only [A084363, Nat.add_sub_cancel]

end A084363

/-! ## A084363.P13355512849013844780

`or(1, Δ[n*n^n])`
-/

namespace A084363.P13355512849013844780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A084363.P13355512849013844780

namespace A084363

/-- `or(1, Δ[n*n^n])` -/
def P13355512849013844780.Spec : Prop :=
  ∀ n, P13355512849013844780.a n = A084363 (n + 1)

end A084363

/-! ## A084363.P12340690518996431206

`abs(Δ[n^-xor(n, -1)])`
-/

namespace A084363.P12340690518996431206
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (-Int.xor (n : ℤ) (-1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A084363.P12340690518996431206

namespace A084363

/-- `abs(Δ[n^-xor(n, -1)])` -/
def P12340690518996431206.Spec : Prop :=
  ∀ n, P12340690518996431206.a n = (A084363 (n + 1) : ℚ)

end A084363

/-! ## A084363.P3916350891093218730

`record[floor(Δ[(n-2)^(n-1)])]`
-/

namespace A084363.P3916350891093218730
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084363.P3916350891093218730

namespace A084363

/-- `record[floor(Δ[(n-2)^(n-1)])]` -/
def P3916350891093218730.Spec : Prop :=
  ∀ n, P3916350891093218730.a n = A084363 (n + 1)

end A084363

/-! ## A084363.P10394849256000911964

`abs(Δ[A007778(n)])`
-/

namespace A084363.P10394849256000911964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A084363.P10394849256000911964

namespace A084363

/-- `abs(Δ[A007778(n)])` -/
def P10394849256000911964.Spec : Prop :=
  ∀ n, P10394849256000911964.a n = A084363 (n + 1)

end A084363

/-! ## A084363.P14156804571838185788

`abs(Δ[A110567(n)])`
-/

namespace A084363.P14156804571838185788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A084363.P14156804571838185788

namespace A084363

/-- `abs(Δ[A110567(n)])` -/
def P14156804571838185788.Spec : Prop :=
  ∀ n, P14156804571838185788.a n = A084363 (n + 1)

end A084363

/-! ## A084363.P14419872855349883950

`Δ[A085606(n+1)]`
-/

namespace A084363.P14419872855349883950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084363.P14419872855349883950

namespace A084363

/-- `Δ[A085606(n+1)]` -/
def P14419872855349883950.Spec : Prop :=
  ∀ n, P14419872855349883950.a n = A084363 (n + 1)

theorem P14419872855349883950.correct : P14419872855349883950.Spec := by
  intro n
  simp only [A084363, Nat.add_sub_cancel, A084363.P14419872855349883950.f1, A084363.P14419872855349883950.a, A084363.P144361439383095257.a, A085606, A085606.P9291025308928995895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084363

/-! ## A084363.P9852985710439989295

`abs(Δ[A065440(n+1)])`
-/

namespace A084363.P9852985710439989295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A084363.P9852985710439989295

namespace A084363

/-- `abs(Δ[A065440(n+1)])` -/
def P9852985710439989295.Spec : Prop :=
  ∀ n, P9852985710439989295.a n = A084363 (n + 1)

end A084363

/-! ## A084363.P17115352069268868054

`Δ[A110132(2*n+1)]`
-/

namespace A084363.P17115352069268868054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110132 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084363.P17115352069268868054

namespace A084363

/-- `Δ[A110132(2*n+1)]` -/
def P17115352069268868054.Spec : Prop :=
  ∀ n, P17115352069268868054.a n = A084363 (n + 1)

end A084363

/-!
# A084364: Define the operations M: multiply by 11, D: divide by 11, R: reverse digits. Sequence gives trajectory of 19 under action of M,R,D,R.

The programs for A084364, the canonical program `A084364.P878464073509061719` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084364 has offset 0).

The definition of A084364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084364.P878464073509061719

`9*n%9+19`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084364

/-- `9*n%9+19` -/
def P878464073509061719.Spec : Prop :=
  ∀ n, (P878464073509061719.a n : ℤ) = A084364 n

theorem P878464073509061719.correct : P878464073509061719.Spec := by
  intro n
  simp only [A084364]

end A084364

/-!
# A084365: Squarefree kernel of numbers that are not prime powers.

The programs for A084365, the canonical program `A084365.P12351951049728921383` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084365 has offset 1).

The definition of A084365 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A084365.P12351951049728921383

`A007947(A024619(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A084365

/-- `A007947(A024619(n+1))` -/
def P12351951049728921383.Spec : Prop :=
  ∀ n, P12351951049728921383.a n = A084365 (n + 1)

theorem P12351951049728921383.correct : P12351951049728921383.Spec := by
  intro n
  simp only [A084365, Nat.add_sub_cancel]

end A084365

/-! ## A084365.P8610560870078084818

`∏{p}[lt[1, A344763(n+1)]+1, #]`
-/

namespace A084365.P8610560870078084818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344763 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A084365.P8610560870078084818

namespace A084365

/-- `∏{p}[lt[1, A344763(n+1)]+1, #]` -/
def P8610560870078084818.Spec : Prop :=
  ∀ n, (P8610560870078084818.a n : ℤ) = A084365 (n + 1)

end A084365

/-! ## A084365.P11394219138330314513

`A007947(lt[1, A231813(n)])`
-/

namespace A084365.P11394219138330314513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A084365.P11394219138330314513

namespace A084365

/-- `A007947(lt[1, A231813(n)])` -/
def P11394219138330314513.Spec : Prop :=
  ∀ n, P11394219138330314513.a n = A084365 (n + 1)

end A084365

/-! ## A084365.P14511844945058917593

`A007947(A080765(n+1)+1)`
-/

namespace A084365.P14511844945058917593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A080765 (n + 1) + 1).toNat

end

end A084365.P14511844945058917593

namespace A084365

/-- `A007947(A080765(n+1)+1)` -/
def P14511844945058917593.Spec : Prop :=
  ∀ n, P14511844945058917593.a n = A084365 (n + 1)

end A084365

/-! ## A084365.P5383765264471175461

`filter[A007947(n+1), A354353(#)]`
-/

namespace A084365.P5383765264471175461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A084365.P5383765264471175461

namespace A084365

/-- `filter[A007947(n+1), A354353(#)]` -/
def P5383765264471175461.Spec : Prop :=
  ∀ n, P5383765264471175461.a n = A084365 (n + 1)

end A084365

/-! ## A084365.P16089046857773477315

`filter[A340679(n+1), A049240(#)]`
-/

namespace A084365.P16089046857773477315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A084365.P16089046857773477315

namespace A084365

/-- `filter[A340679(n+1), A049240(#)]` -/
def P16089046857773477315.Spec : Prop :=
  ∀ n, P16089046857773477315.a n = A084365 (n + 1)

end A084365

/-! ## A084365.P6650866466904622722

`filter[A007947(n+3), A005171(#)]`
-/

namespace A084365.P6650866466904622722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A084365.P6650866466904622722

namespace A084365

/-- `filter[A007947(n+3), A005171(#)]` -/
def P6650866466904622722.Spec : Prop :=
  ∀ n, P6650866466904622722.a n = A084365 (n + 1)

end A084365

/-! ## A084365.P11731181569156347257

`filter[A007947(n+3), A066247(#)]`
-/

namespace A084365.P11731181569156347257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A084365.P11731181569156347257

namespace A084365

/-- `filter[A007947(n+3), A066247(#)]` -/
def P11731181569156347257.Spec : Prop :=
  ∀ n, P11731181569156347257.a n = A084365 (n + 1)

end A084365

/-! ## A084365.P9089856702487597441

`filter[A007947(n+3), A174898(#)]`
-/

namespace A084365.P9089856702487597441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A084365.P9089856702487597441

namespace A084365

/-- `filter[A007947(n+3), A174898(#)]` -/
def P9089856702487597441.Spec : Prop :=
  ∀ n, P9089856702487597441.a n = A084365 (n + 1)

end A084365

/-! ## A084365.P13400188818789618621

`filter[A007947(n+3), A202238(#)]`
-/

namespace A084365.P13400188818789618621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A084365.P13400188818789618621

namespace A084365

/-- `filter[A007947(n+3), A202238(#)]` -/
def P13400188818789618621.Spec : Prop :=
  ∀ n, P13400188818789618621.a n = A084365 (n + 1)

end A084365

/-! ## A084365.P9617042854336408416

`A007947(lt[A006530(n+1), A007947(n+1)]+1)`
-/

namespace A084365.P9617042854336408416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A084365.P9617042854336408416

namespace A084365

/-- `A007947(lt[A006530(n+1), A007947(n+1)]+1)` -/
def P9617042854336408416.Spec : Prop :=
  ∀ n, P9617042854336408416.a n = A084365 (n + 1)

end A084365

/-! ## A084365.P2056265903806208722

`A007947(lt[A051903(n+1), A001222(n+1)]+1)`
-/

namespace A084365.P2056265903806208722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A084365.P2056265903806208722

namespace A084365

/-- `A007947(lt[A051903(n+1), A001222(n+1)]+1)` -/
def P2056265903806208722.Spec : Prop :=
  ∀ n, P2056265903806208722.a n = A084365 (n + 1)

end A084365

/-! ## A084365.P8312896208299275133

`∏{p}[A361102(n+2), #]`
-/

namespace A084365.P8312896208299275133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A084365.P8312896208299275133

namespace A084365

/-- `∏{p}[A361102(n+2), #]` -/
def P8312896208299275133.Spec : Prop :=
  ∀ n, (P8312896208299275133.a n : ℤ) = A084365 (n + 1)

end A084365

/-! ## A084365.P16875557692592913936

`A007947(A361102(n+2))`
-/

namespace A084365.P16875557692592913936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A361102 (n + 2)).toNat

end

end A084365.P16875557692592913936

namespace A084365

/-- `A007947(A361102(n+2))` -/
def P16875557692592913936.Spec : Prop :=
  ∀ n, P16875557692592913936.a n = A084365 (n + 1)

end A084365

/-! ## A084365.P5808632167259067784

`∏{p}[A360529(n+1), #]`
-/

namespace A084365.P5808632167259067784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A084365.P5808632167259067784

namespace A084365

/-- `∏{p}[A360529(n+1), #]` -/
def P5808632167259067784.Spec : Prop :=
  ∀ n, (P5808632167259067784.a n : ℤ) = A084365 (n + 1)

end A084365

/-! ## A084365.P11079988195888478264

`filter[A007947(n+1), A143731(#)]`
-/

namespace A084365.P11079988195888478264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A084365.P11079988195888478264

namespace A084365

/-- `filter[A007947(n+1), A143731(#)]` -/
def P11079988195888478264.Spec : Prop :=
  ∀ n, P11079988195888478264.a n = A084365 (n + 1)

end A084365

/-! ## A084365.P4661363528451300683

`filter[A361255(n+2), A354819(#)]`
-/

namespace A084365.P4661363528451300683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361255 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A084365.P4661363528451300683

namespace A084365

/-- `filter[A361255(n+2), A354819(#)]` -/
def P4661363528451300683.Spec : Prop :=
  ∀ n, P4661363528451300683.a n = A084365 (n + 1)

end A084365

/-! ## A084365.P13918260040584504828

`filter[A383761(n+2), A354819(#)]`
-/

namespace A084365.P13918260040584504828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383761 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A084365.P13918260040584504828

namespace A084365

/-- `filter[A383761(n+2), A354819(#)]` -/
def P13918260040584504828.Spec : Prop :=
  ∀ n, P13918260040584504828.a n = A084365 (n + 1)

end A084365

/-! ## A084365.P602275833255389382

`filter[A284318(n+2), A354819(#)]`
-/

namespace A084365.P602275833255389382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284318 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A084365.P602275833255389382

namespace A084365

/-- `filter[A284318(n+2), A354819(#)]` -/
def P602275833255389382.Spec : Prop :=
  ∀ n, P602275833255389382.a n = A084365 (n + 1)

end A084365

/-!
# A084367: a(n) = n*(2*n+1)^2.

The programs for A084367, the canonical program `A084367.P17760541641912809913` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084367 has offset 0).

The definition of A084367 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n+1)²` (program `A084367.P17760541641912809913`, by `A084367.P17760541641912809913.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084367.P17760541641912809913

`n*(2*n+1)²`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084367

/-- `n*(2*n+1)²` -/
def P17760541641912809913.Spec : Prop :=
  ∀ n, (P17760541641912809913.a n : ℤ) = A084367 n

theorem P17760541641912809913.correct : P17760541641912809913.Spec := by
  intro n
  simp only [A084367]

end A084367

/-! ## A084367.P7901619026294843456

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=9, a(2)=50, a(3)=147`
-/

namespace A084367.P7901619026294843456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 9, 50, 147] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A084367.P7901619026294843456

namespace A084367

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7901619026294843456.Spec : Prop :=
  ∀ n, P7901619026294843456.a n = A084367 n

theorem P7901619026294843456.correct : P7901619026294843456.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A084367, Nat.add_sub_cancel, A084367.P7901619026294843456.a, A084367.P17760541641912809913.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A084367, Nat.add_sub_cancel, A084367.P7901619026294843456.a, A084367.P17760541641912809913.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A084367

/-! ## A084367.P7624908705384007526

`lcm(n, Δ[n²]²)`
-/

namespace A084367.P7624908705384007526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A084367.P7624908705384007526

namespace A084367

/-- `lcm(n, Δ[n²]²)` -/
def P7624908705384007526.Spec : Prop :=
  ∀ n, (P7624908705384007526.a n : ℤ) = A084367 n

end A084367

/-! ## A084367.P8069655335328146567

`n/(1/or(1, 2*n))²`
-/

namespace A084367.P8069655335328146567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 / (Nat.lor 1 (2 * n) : ℚ)) ^ 2

end

end A084367.P8069655335328146567

namespace A084367

/-- `n/(1/or(1, 2*n))²` -/
def P8069655335328146567.Spec : Prop :=
  ∀ n, P8069655335328146567.a n = (A084367 n : ℚ)

end A084367

/-! ## A084367.P6000978743650794501

`n/(1/xor(1, 2*n))²`
-/

namespace A084367.P6000978743650794501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 / (Nat.xor 1 (2 * n) : ℚ)) ^ 2

end

end A084367.P6000978743650794501

namespace A084367

/-- `n/(1/xor(1, 2*n))²` -/
def P6000978743650794501.Spec : Prop :=
  ∀ n, P6000978743650794501.a n = (A084367 n : ℚ)

end A084367

/-! ## A084367.P7014498771449527940

`n/or(1, 2*n)^-2`
-/

namespace A084367.P7014498771449527940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.lor 1 (2 * n) : ℚ) ^ (-2 : ℤ)

end

end A084367.P7014498771449527940

namespace A084367

/-- `n/or(1, 2*n)^-2` -/
def P7014498771449527940.Spec : Prop :=
  ∀ n, P7014498771449527940.a n = (A084367 n : ℚ)

end A084367

/-! ## A084367.P3626506784997198696

`n/xor(1, 2*n)^-2`
-/

namespace A084367.P3626506784997198696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.xor 1 (2 * n) : ℚ) ^ (-2 : ℤ)

end

end A084367.P3626506784997198696

namespace A084367

/-- `n/xor(1, 2*n)^-2` -/
def P3626506784997198696.Spec : Prop :=
  ∀ n, P3626506784997198696.a n = (A084367 n : ℚ)

end A084367

/-! ## A084367.P8282304459202335560

`floor(2*n/Δ[atan(2*n)])`
-/

namespace A084367.P8282304459202335560
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / (f1 (n + 1) - f1 n)⌋

end

end A084367.P8282304459202335560

namespace A084367

/-- `floor(2*n/Δ[atan(2*n)])` -/
def P8282304459202335560.Spec : Prop :=
  ∀ n, P8282304459202335560.a n = A084367 n

end A084367

/-! ## A084367.P16346803287489717445

`round(2*n/Δ[atan(2*n)])`
-/

namespace A084367.P16346803287489717445
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) / (f1 (n + 1) - f1 n))

end

end A084367.P16346803287489717445

namespace A084367

/-- `round(2*n/Δ[atan(2*n)])` -/
def P16346803287489717445.Spec : Prop :=
  ∀ n, P16346803287489717445.a n = A084367 n

end A084367

/-! ## A084367.P12258836256752075632

`floor(n/acot((n+1+n)²))`
-/

namespace A084367.P12258836256752075632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot ((n + 1 + n) ^ 2 : ℝ)⌋

end

end A084367.P12258836256752075632

namespace A084367

/-- `floor(n/acot((n+1+n)²))` -/
def P12258836256752075632.Spec : Prop :=
  ∀ n, P12258836256752075632.a n = A084367 n

end A084367

/-! ## A084367.P5131466192181497582

`round(n/acot((n+1+n)²))`
-/

namespace A084367.P5131466192181497582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot ((n + 1 + n) ^ 2 : ℝ))

end

end A084367.P5131466192181497582

namespace A084367

/-- `round(n/acot((n+1+n)²))` -/
def P5131466192181497582.Spec : Prop :=
  ∀ n, P5131466192181497582.a n = A084367 n

end A084367

/-! ## A084367.P9696798536343567646

`n/tan(acot((n+1+n)²))`
-/

namespace A084367.P9696798536343567646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.tan (SequenceMachineLib.acot ((n + 1 + n) ^ 2 : ℝ))

end

end A084367.P9696798536343567646

namespace A084367

/-- `n/tan(acot((n+1+n)²))` -/
def P9696798536343567646.Spec : Prop :=
  ∀ n, P9696798536343567646.a n = (A084367 n : ℝ)

end A084367

/-! ## A084367.P6587958436410780584

`floor(n*∑[a(n-1)+8])` with `a(0)=1, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A084367.P6587958436410780584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084367.P6587958436410780584

namespace A084367

/-- `floor(n*∑[a(n-1)+8])` -/
def P6587958436410780584.Spec : Prop :=
  ∀ n, (P6587958436410780584.a n : ℤ) = A084367 n

end A084367

/-! ## A084367.P9432240544369668331

`(n+1)*Δ[C(2*n, 3)]+n`
-/

namespace A084367.P9432240544369668331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n : ℤ)

end

end A084367.P9432240544369668331

namespace A084367

/-- `(n+1)*Δ[C(2*n, 3)]+n` -/
def P9432240544369668331.Spec : Prop :=
  ∀ n, P9432240544369668331.a n = A084367 n

theorem P9432240544369668331.correct : P9432240544369668331.Spec := by
  intro n
  simp only [A084367, Nat.add_sub_cancel, A084367.P9432240544369668331.f1, A084367.P9432240544369668331.a, A084367.P17760541641912809913.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084367

/-! ## A084367.P15219921044180681404

`n*∑[a(n-1)+8]+n` with `a(0)=0`
-/

namespace A084367.P15219921044180681404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A084367.P15219921044180681404

namespace A084367

/-- `n*∑[a(n-1)+8]+n` -/
def P15219921044180681404.Spec : Prop :=
  ∀ n, (P15219921044180681404.a n : ℤ) = A084367 n

end A084367

/-! ## A084367.P8173672527478685942

`n-n*∑[a(n-1)-8]` with `a(0)=0`
-/

namespace A084367.P8173672527478685942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084367.P8173672527478685942

namespace A084367

/-- `n-n*∑[a(n-1)-8]` -/
def P8173672527478685942.Spec : Prop :=
  ∀ n, P8173672527478685942.a n = A084367 n

end A084367

/-! ## A084367.P13434282875080270973

`∑[a(n-1)+4]²/(n+1)+n` with `a(0)=0`
-/

namespace A084367.P13434282875080270973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (n + 1 : ℚ) + (n : ℚ)

end

end A084367.P13434282875080270973

namespace A084367

/-- `∑[a(n-1)+4]²/(n+1)+n` -/
def P13434282875080270973.Spec : Prop :=
  ∀ n, P13434282875080270973.a n = (A084367 n : ℚ)

end A084367

/-! ## A084367.P4669779855737896187

`∑[A014642(n)]+n`
-/

namespace A084367.P4669779855737896187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A084367.P4669779855737896187

namespace A084367

/-- `∑[A014642(n)]+n` -/
def P4669779855737896187.Spec : Prop :=
  ∀ n, P4669779855737896187.a n = A084367 n

end A084367

/-! ## A084367.P12858392559262752591

`A302302(n)-∑[n]`
-/

namespace A084367.P12858392559262752591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302302 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A084367.P12858392559262752591

namespace A084367

/-- `A302302(n)-∑[n]` -/
def P12858392559262752591.Spec : Prop :=
  ∀ n, P12858392559262752591.a n = A084367 n

end A084367

/-! ## A084367.P16165901442801828507

`2*A048395(n)-n`
-/

namespace A084367.P16165901442801828507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048395 n - (n : ℤ)

end

end A084367.P16165901442801828507

namespace A084367

/-- `2*A048395(n)-n` -/
def P16165901442801828507.Spec : Prop :=
  ∀ n, P16165901442801828507.a n = A084367 n

theorem P16165901442801828507.correct : P16165901442801828507.Spec := by
  intro n
  simp only [A084367, Nat.add_sub_cancel, A084367.P16165901442801828507.a, A084367.P17760541641912809913.a, A048395, A048395.P3571630861933578872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084367

/-!
# A084368: Numbers k such that prime(k) does not contain the digit 1.

The programs for A084368, there is no canonical definition to state claims against.
-/

/-! ## A084368.P2832684335776122984

`lt[A085975(n+1), 1]+1`
-/

namespace A084368.P2832684335776122984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085975 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A084368.P2832684335776122984

/-! ## A084368.P6743522669623718556

`A000720(A038603(n+1))`
-/

namespace A084368.P6743522669623718556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A038603 (n + 1)).toNat

end

end A084368.P6743522669623718556

/-! ## A084368.P9753949226859699280

`A000720(p?[A132080(n+1)])`
-/

namespace A084368.P9753949226859699280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A084368.P9753949226859699280

/-! ## A084368.P7069887135393681189

`record[(n+1)/A000005(n+1)^A085975(n+1)]`
-/

namespace A084368.P7069887135393681189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000005 (n + 1) : ℚ) ^ (A085975 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084368.P7069887135393681189

/-! ## A084368.P13684842006582703268

`record[(n+1)/A120642(n+1)^A085975(n+1)]`
-/

namespace A084368.P13684842006582703268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A120642 (n + 1) : ℚ) ^ (A085975 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084368.P13684842006582703268

/-! ## A084368.P12954193599596037528

`eq[A000040(n+1), A004176(A000040(n+1))]+1`
-/

namespace A084368.P12954193599596037528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A084368.P12954193599596037528

/-!
# A084369: Numbers n such that the n-th prime number doesn't contain any even digits.

The programs for A084369, the canonical program `A084369.P2349708795339258249` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084369 has offset 1).

The definition of A084369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084369.P2349708795339258249

`A000720(A030096(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A084369

/-- `A000720(A030096(n+1))` -/
def P2349708795339258249.Spec : Prop :=
  ∀ n, P2349708795339258249.a n = A084369 (n + 1)

theorem P2349708795339258249.correct : P2349708795339258249.Spec := by
  intro n
  simp only [A084369, Nat.add_sub_cancel]

end A084369

/-! ## A084369.P14056702033134412003

`A000720(p?[A014261(n+1)])`
-/

namespace A084369.P14056702033134412003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A084369.P14056702033134412003

namespace A084369

/-- `A000720(p?[A014261(n+1)])` -/
def P14056702033134412003.Spec : Prop :=
  ∀ n, P14056702033134412003.a n = A084369 (n + 1)

end A084369

/-! ## A084369.P6029293137785382671

`A000720(p?[A066640(n+1)])`
-/

namespace A084369.P6029293137785382671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A084369.P6029293137785382671

namespace A084369

/-- `A000720(p?[A066640(n+1)])` -/
def P6029293137785382671.Spec : Prop :=
  ∀ n, P6029293137785382671.a n = A084369 (n + 1)

end A084369

/-! ## A084369.P18129092103047775477

`A061395(p?[A014261(n+1)])`
-/

namespace A084369.P18129092103047775477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A084369.P18129092103047775477

namespace A084369

/-- `A061395(p?[A014261(n+1)])` -/
def P18129092103047775477.Spec : Prop :=
  ∀ n, P18129092103047775477.a n = A084369 (n + 1)

end A084369

/-! ## A084369.P9509235540080868696

`record[A061395(A014261(n+2))]`
-/

namespace A084369.P9509235540080868696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A014261 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084369.P9509235540080868696

namespace A084369

/-- `record[A061395(A014261(n+2))]` -/
def P9509235540080868696.Spec : Prop :=
  ∀ n, P9509235540080868696.a n = A084369 (n + 1)

end A084369

/-! ## A084369.P316448230289627609

`A065770(p?[A014261(n+1)])`
-/

namespace A084369.P316448230289627609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A084369.P316448230289627609

namespace A084369

/-- `A065770(p?[A014261(n+1)])` -/
def P316448230289627609.Spec : Prop :=
  ∀ n, P316448230289627609.a n = A084369 (n + 1)

end A084369

/-! ## A084369.P2665170513277172563

`A003963(p?[A014261(n+1)])`
-/

namespace A084369.P2665170513277172563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A084369.P2665170513277172563

namespace A084369

/-- `A003963(p?[A014261(n+1)])` -/
def P2665170513277172563.Spec : Prop :=
  ∀ n, P2665170513277172563.a n = A084369 (n + 1)

end A084369

/-! ## A084369.P5721309952001132903

`A049084(p?[A014261(n+1)])`
-/

namespace A084369.P5721309952001132903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A084369.P5721309952001132903

namespace A084369

/-- `A049084(p?[A014261(n+1)])` -/
def P5721309952001132903.Spec : Prop :=
  ∀ n, P5721309952001132903.a n = A084369 (n + 1)

end A084369

/-! ## A084369.P3982074500833993414

`A055396(p?[A014261(n+1)])`
-/

namespace A084369.P3982074500833993414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A084369.P3982074500833993414

namespace A084369

/-- `A055396(p?[A014261(n+1)])` -/
def P3982074500833993414.Spec : Prop :=
  ∀ n, P3982074500833993414.a n = A084369 (n + 1)

end A084369

/-!
# A084370: Convolution of odd primes with themselves.

The programs for A084370, there is no canonical definition to state claims against.
-/

/-! ## A084370.P9979913926446377665

`A209403(n+2)-2*A065091(n+2)`
-/

namespace A084370.P9979913926446377665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209403 (n + 2) - 2 * A065091 (n + 2)

end

end A084370.P9979913926446377665

/-! ## A084370.P12182453871387062214

`A014342(n+3)-A001749(n+3)`
-/

namespace A084370.P12182453871387062214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014342 (n + 3) - A001749 (n + 3)

end

end A084370.P12182453871387062214

/-! ## A084370.P4117625700398872312

`A209403(n+2)+A209403(n+2)-A014342(n+3)`
-/

namespace A084370.P4117625700398872312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209403 (n + 2) + (A209403 (n + 2) - A014342 (n + 3))

end

end A084370.P4117625700398872312

/-!
# A084371: Squarefree kernels of powerful numbers (A001694).

The programs for A084371, there is no canonical definition to state claims against.
-/

/-! ## A084371.P11852064341254542614

`A007947(A001694(n+1))`
-/

namespace A084371.P11852064341254542614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A001694 (n + 1)).toNat

end

end A084371.P11852064341254542614

/-! ## A084371.P11833654786091926252

`∏{p}[A369429(n+1), #]`
-/

namespace A084371.P11833654786091926252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369429 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A084371.P11833654786091926252

/-! ## A084371.P14330311275335732631

`∏{p}[A369430(n+1), #]`
-/

namespace A084371.P14330311275335732631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369430 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A084371.P14330311275335732631

/-! ## A084371.P10831737885183155094

`A007947(A369429(n+1))`
-/

namespace A084371.P10831737885183155094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A369429 (n + 1)).toNat

end

end A084371.P10831737885183155094

/-! ## A084371.P15999354756076450964

`A007947(A369430(n+1))`
-/

namespace A084371.P15999354756076450964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A369430 (n + 1)).toNat

end

end A084371.P15999354756076450964

/-! ## A084371.P16826990970468323180

`A001694(n+1)/A306458(n+1)`
-/

namespace A084371.P16826990970468323180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) : ℚ) / (A306458 (n + 1) : ℚ)

end

end A084371.P16826990970468323180

/-! ## A084371.P5649067395418433784

`(A224866(n+1)-1)/A306458(n+1)`
-/

namespace A084371.P5649067395418433784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224866 (n + 1) - 1 : ℚ) / (A306458 (n + 1) : ℚ)

end

end A084371.P5649067395418433784

/-! ## A084371.P16124415743016168958

`∏{p}[A306458(n+1), #]`
-/

namespace A084371.P16124415743016168958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A084371.P16124415743016168958

/-! ## A084371.P14020070344955694020

`∏{p}[A076446(n)+a(n-1), #]` with `a(0)=1`
-/

namespace A084371.P14020070344955694020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A076446 n + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A084371.P14020070344955694020

/-! ## A084371.P4201855848968355287

`A007947(A306458(n+1))`
-/

namespace A084371.P4201855848968355287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A306458 (n + 1)).toNat

end

end A084371.P4201855848968355287

/-! ## A084371.P904492056576535633

`A007947(A224866(n+1)-1)`
-/

namespace A084371.P904492056576535633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A224866 (n + 1) - 1).toNat

end

end A084371.P904492056576535633

/-! ## A084371.P6245494889301281943

`A336643(A001694(n+1))*A342477(n+1)`
-/

namespace A084371.P6245494889301281943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A001694 (n + 1)).toNat * A342477 (n + 1)

end

end A084371.P6245494889301281943

/-! ## A084371.P14594472898670995698

`A336643(A001694(n+1)/A342477(n+1))`
-/

namespace A084371.P14594472898670995698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (SequenceMachineLib.roundAway ((A001694 (n + 1) : ℚ) / (A342477 (n + 1) : ℚ))).toNat

end

end A084371.P14594472898670995698

/-! ## A084371.P12298392624759933130

`A001694(n+1)*A173557(A001694(n+1))/A323333(n+1)`
-/

namespace A084371.P12298392624759933130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) * A173557 (A001694 (n + 1)).toNat : ℚ) / (A323333 (n + 1) : ℚ)

end

end A084371.P12298392624759933130

/-! ## A084371.P6102375033749207382

`gcd(A001694(n+1), A186944(n+1))`
-/

namespace A084371.P6102375033749207382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001694 (n + 1)) (A186944 (n + 1))

end

end A084371.P6102375033749207382

/-! ## A084371.P16301146768924921847

`∏{p}[record[A057521(n+1)], #]`
-/

namespace A084371.P16301146768924921847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A084371.P16301146768924921847

/-! ## A084371.P3039257048875159443

`A007947(record[A057521(n+1)])`
-/

namespace A084371.P3039257048875159443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084371.P3039257048875159443

/-! ## A084371.P7111202763025308873

`gcd(A068510(n+1), A369429(n+1))`
-/

namespace A084371.P7111202763025308873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068510 (n + 1)) (A369429 (n + 1))

end

end A084371.P7111202763025308873

/-! ## A084371.P7546947919983325799

`A071773(A071773(A001694(n+1))²)`
-/

namespace A084371.P7546947919983325799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (A071773 (A001694 (n + 1)).toNat ^ 2).toNat

end

end A084371.P7546947919983325799

/-!
# A084372: Least composite k such that the nearest integer to the average of the smallest and largest prime factors of k equals n.

The programs for A084372, there is no canonical definition to state claims against.
-/

/-! ## A084372.P14754114670203413025

`A073046(n+2)-A085090(n+1)`
-/

namespace A084372.P14754114670203413025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073046 (n + 2) - A085090 (n + 1)

end

end A084372.P14754114670203413025

/-! ## A084372.P12318968424201416619

`A073046(n+2)-A005408(n)*A101264(n)`
-/

namespace A084372.P12318968424201416619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073046 (n + 2) - A005408 n * A101264 n

end

end A084372.P12318968424201416619

/-! ## A084372.P11568930086077101266

`A073046(n+2)-A061397(2*n+1)`
-/

namespace A084372.P11568930086077101266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073046 (n + 2) - A061397 (2 * n + 1)

end

end A084372.P11568930086077101266

/-! ## A084372.P4355558207087284092

`A186101(A073046(n+2))`
-/

namespace A084372.P4355558207087284092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 (A073046 (n + 2)).toNat

end

end A084372.P4355558207087284092

/-! ## A084372.P1586354223971659926

`A066048(A085090(n+1)+A073046(n+2))`
-/

namespace A084372.P1586354223971659926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A085090 (n + 1) + A073046 (n + 2)).toNat

end

end A084372.P1586354223971659926

/-! ## A084372.P509079947545683754

`A075861(2*A073046(n+2))`
-/

namespace A084372.P509079947545683754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (2 * A073046 (n + 2)).toNat

end

end A084372.P509079947545683754

/-! ## A084372.P7969171901961960980

`A086571(2*A073046(n+2))`
-/

namespace A084372.P7969171901961960980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086571 (2 * A073046 (n + 2)).toNat

end

end A084372.P7969171901961960980

/-!
# A084373: Numbers k such that smallest digit of k = total number of divisors of k.

The programs for A084373, the canonical program `A084373.P17875525676827923178` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084373 has offset 1).

The definition of A084373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084373.P17875525676827923178

`eq[A032741(n)+1, A054054(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A084373

/-- `eq[A032741(n)+1, A054054(n)]` -/
def P17875525676827923178.Spec : Prop :=
  ∀ n, (P17875525676827923178.a n : ℤ) = A084373 (n + 1)

theorem P17875525676827923178.correct : P17875525676827923178.Spec := by
  intro n
  simp only [A084373, Nat.add_sub_cancel]

end A084373

/-! ## A084373.P15520993150772265700

`eq[A054054(n+1), A299701(n+1)]+1`
-/

namespace A084373.P15520993150772265700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A084373.P15520993150772265700

namespace A084373

/-- `eq[A054054(n+1), A299701(n+1)]+1` -/
def P15520993150772265700.Spec : Prop :=
  ∀ n, (P15520993150772265700.a n : ℤ) = A084373 (n + 1)

end A084373

/-! ## A084373.P801004258427223562

`eq[A054054(n), A348553(A032741(n))]`
-/

namespace A084373.P801004258427223562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084373.P801004258427223562

namespace A084373

/-- `eq[A054054(n), A348553(A032741(n))]` -/
def P801004258427223562.Spec : Prop :=
  ∀ n, (P801004258427223562.a n : ℤ) = A084373 (n + 1)

end A084373

/-! ## A084373.P5155703692785194466

`eq[A000005(A000007(n)+n), A054054(n)]`
-/

namespace A084373.P5155703692785194466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084373.P5155703692785194466

namespace A084373

/-- `eq[A000005(A000007(n)+n), A054054(n)]` -/
def P5155703692785194466.Spec : Prop :=
  ∀ n, (P5155703692785194466.a n : ℤ) = A084373 (n + 1)

end A084373

/-! ## A084373.P6446396019443559726

`eq[A000005(A008574(n)-3*n), A054054(n)]`
-/

namespace A084373.P6446396019443559726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008574 n - (3 * n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084373.P6446396019443559726

namespace A084373

/-- `eq[A000005(A008574(n)-3*n), A054054(n)]` -/
def P6446396019443559726.Spec : Prop :=
  ∀ n, (P6446396019443559726.a n : ℤ) = A084373 (n + 1)

end A084373

/-!
# A084374: Numbers k such that the smallest digit of k = number of prime divisors of k (counted with multiplicity).

The programs for A084374, the canonical program `A084374.P2711585573747654606` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084374 has offset 1).

The definition of A084374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1423 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084374.P2711585573747654606

`eq[A001222(abs(1-n)+1), A054054(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A084374

/-- `eq[A001222(abs(1-n)+1), A054054(n)]` -/
def P2711585573747654606.Spec : Prop :=
  ∀ n, (P2711585573747654606.a n : ℤ) = A084374 (n + 1)

theorem P2711585573747654606.correct : P2711585573747654606.Spec := by
  intro n
  simp only [A084374, Nat.add_sub_cancel]

end A084374

/-! ## A084374.P10004011145910948552

`eq[A001222(n+1), A054054(n+1)]+1`
-/

namespace A084374.P10004011145910948552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A084374.P10004011145910948552

namespace A084374

/-- `eq[A001222(n+1), A054054(n+1)]+1` -/
def P10004011145910948552.Spec : Prop :=
  ∀ n, (P10004011145910948552.a n : ℤ) = A084374 (n + 1)

end A084374

/-! ## A084374.P9278015960532726718

`eq[log2(A061142(n+1)), A054054(n+1)]+1`
-/

namespace A084374.P9278015960532726718
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A084374.P9278015960532726718

namespace A084374

/-- `eq[log2(A061142(n+1)), A054054(n+1)]+1` -/
def P9278015960532726718.Spec : Prop :=
  ∀ n, (P9278015960532726718.a n : ℤ) = A084374 (n + 1)

end A084374

/-! ## A084374.P8367220588227223291

`eq[A004186(n)%10, A001222(abs(1-n)+1)]`
-/

namespace A084374.P8367220588227223291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004186 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084374.P8367220588227223291

namespace A084374

/-- `eq[A004186(n)%10, A001222(abs(1-n)+1)]` -/
def P8367220588227223291.Spec : Prop :=
  ∀ n, (P8367220588227223291.a n : ℤ) = A084374 (n + 1)

end A084374

/-! ## A084374.P16501691617864410187

`eq[A054054(n)+1, A001222(A008486(n))]`
-/

namespace A084374.P16501691617864410187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084374.P16501691617864410187

namespace A084374

/-- `eq[A054054(n)+1, A001222(A008486(n))]` -/
def P16501691617864410187.Spec : Prop :=
  ∀ n, (P16501691617864410187.a n : ℤ) = A084374 (n + 1)

end A084374

/-!
# A084375: Indices of primes which remain prime if any one digit is deleted (leading zeros allowed).

The programs for A084375, there is no canonical definition to state claims against.
-/

/-! ## A084375.P2393962068012761007

`A000720(A051362(n+1))`
-/

namespace A084375.P2393962068012761007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A051362 (n + 1)).toNat

end

end A084375.P2393962068012761007

/-! ## A084375.P16745059080114310883

`A000720(p?[A034895(n+1)])`
-/

namespace A084375.P16745059080114310883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A084375.P16745059080114310883

/-! ## A084375.P9984907407579901702

`A061395(p?[A034895(n+1)])`
-/

namespace A084375.P9984907407579901702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A084375.P9984907407579901702

/-! ## A084375.P6870307322001265536

`record[A061395(A034895(n+2))]`
-/

namespace A084375.P6870307322001265536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A034895 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084375.P6870307322001265536

/-!
# A084376: G.f.: (1+x)/Product_{m>0} (1 - x^m).

The programs for A084376, there is no canonical definition to state claims against.
-/

/-! ## A084376.P193553961447626005

`∑[A027336(n)]`
-/

namespace A084376.P193553961447626005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084376.P193553961447626005

/-! ## A084376.P4145457762666288249

`A194805(n)+1`
-/

namespace A084376.P4145457762666288249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194805 n + 1

end

end A084376.P4145457762666288249

/-! ## A084376.P7929279353372609811

`∑[∑[A008483(n)]]`
-/

namespace A084376.P7929279353372609811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084376.P7929279353372609811

/-! ## A084376.P18176993289649453876

`∑[∑[A026796(n+3)]]`
-/

namespace A084376.P18176993289649453876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084376.P18176993289649453876

/-! ## A084376.P15671966186291009819

`A320689(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A084376.P15671966186291009819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A320689 n + a (n - 2)

end

end A084376.P15671966186291009819

/-! ## A084376.P244428831820182339

`A139582(n)-A002865(n)`
-/

namespace A084376.P244428831820182339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 n - A002865 n

end

end A084376.P244428831820182339

/-! ## A084376.P625227019753465930

`A139582(n)-A085811(n+3)`
-/

namespace A084376.P625227019753465930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 n - A085811 (n + 3)

end

end A084376.P625227019753465930

/-! ## A084376.P7669867957805856410

`2*A000041(n)-A002865(n)`
-/

namespace A084376.P7669867957805856410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000041 n - A002865 n

end

end A084376.P7669867957805856410

/-! ## A084376.P15746822127180758462

`A000041(n)+∑[A085811(n+2)]`
-/

namespace A084376.P15746822127180758462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084376.P15746822127180758462

/-! ## A084376.P10132589125789992292

`∑[A085811(n+2)+A002865(n)]`
-/

namespace A084376.P10132589125789992292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2) + A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084376.P10132589125789992292

/-! ## A084376.P11478443668311615043

`A324368(n+1)+A000041(n+1)`
-/

namespace A084376.P11478443668311615043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324368 (n + 1) + A000041 (n + 1)

end

end A084376.P11478443668311615043

/-! ## A084376.P15417300264512569169

`a(n-1)+A000041(n)-A000041(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A084376.P15417300264512569169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (A000041 n - A000041 (n - 2))

end

end A084376.P15417300264512569169

/-! ## A084376.P6663269499079050319

`A182712(n+1)+A182712(n)+A000041(n)`
-/

namespace A084376.P6663269499079050319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (n + 1) + (A182712 n + A000041 n)

end

end A084376.P6663269499079050319

/-! ## A084376.P9987360179192293162

`A000041(n+1)+A000041(n)-A027336(n+1)`
-/

namespace A084376.P9987360179192293162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A000041 n - A027336 (n + 1))

end

end A084376.P9987360179192293162

/-! ## A084376.P17266747503166149862

`A229816(n+1)+A229816(n)-A008483(n+1)`
-/

namespace A084376.P17266747503166149862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229816 (n + 1) + (A229816 n - A008483 (n + 1))

end

end A084376.P17266747503166149862

/-! ## A084376.P2626594841487355789

`A000070(n)-∑[∑[A085811(n+1)]]`
-/

namespace A084376.P2626594841487355789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084376.P2626594841487355789

/-! ## A084376.P4856010742533485936

`A000041(n)+A000070(n)-A120452(n+1)`
-/

namespace A084376.P4856010742533485936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A000070 n - A120452 (n + 1))

end

end A084376.P4856010742533485936

/-! ## A084376.P11765438402332207591

`A000070(n+1)-(A120452(n+1)+A002865(n+1))`
-/

namespace A084376.P11765438402332207591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - (A120452 (n + 1) + A002865 (n + 1))

end

end A084376.P11765438402332207591

/-! ## A084376.P7511242052594534622

`A000041(n)+A277101(n)+A276428(n)`
-/

namespace A084376.P7511242052594534622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A277101 n + A276428 n)

end

end A084376.P7511242052594534622

/-! ## A084376.P9458392882373618522

`A035363(2*n)+∑[A085811(n+2)]`
-/

namespace A084376.P9458392882373618522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084376.P9458392882373618522

/-!
# A084377: a(n) = n^3 + 7.

The programs for A084377, the canonical program `A084377.P14432466081675126345` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084377 has offset 0).

The definition of A084377 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+7` (program `A084377.P14432466081675126345`, by `A084377.P14432466081675126345.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084377.P14432466081675126345

`n^3+7`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084377

/-- `n^3+7` -/
def P14432466081675126345.Spec : Prop :=
  ∀ n, (P14432466081675126345.a n : ℤ) = A084377 n

theorem P14432466081675126345.correct : P14432466081675126345.Spec := by
  intro n
  simp only [A084377]

end A084377

/-!
# A084378: a(n) = n^3 + 3.

The programs for A084378, the canonical program `A084378.P12410888067211315786` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084378 has offset 0).

The definition of A084378 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+3` (program `A084378.P12410888067211315786`, by `A084378.P12410888067211315786.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084378.P12410888067211315786

`n^3+3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084378

/-- `n^3+3` -/
def P12410888067211315786.Spec : Prop :=
  ∀ n, (P12410888067211315786.a n : ℤ) = A084378 n

theorem P12410888067211315786.correct : P12410888067211315786.Spec := by
  intro n
  simp only [A084378]

end A084378

/-!
# A084379: a(n) = n^3 + 17.

The programs for A084379, the canonical program `A084379.P9464346252429086088` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084379 has offset 0).

The definition of A084379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+17` (program `A084379.P9464346252429086088`, by `A084379.P9464346252429086088.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084379.P9464346252429086088

`n^3+17`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084379

/-- `n^3+17` -/
def P9464346252429086088.Spec : Prop :=
  ∀ n, (P9464346252429086088.a n : ℤ) = A084379 n

theorem P9464346252429086088.correct : P9464346252429086088.Spec := by
  intro n
  simp only [A084379]

end A084379

/-!
# A084380: a(n) = n^3 + 2.

The programs for A084380, the canonical program `A084380.P6829574100812521440` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084380 has offset 0).

The definition of A084380 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+2` (program `A084380.P6829574100812521440`, by `A084380.P6829574100812521440.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084380.P6829574100812521440

`n^3+2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084380

/-- `n^3+2` -/
def P6829574100812521440.Spec : Prop :=
  ∀ n, (P6829574100812521440.a n : ℤ) = A084380 n

theorem P6829574100812521440.correct : P6829574100812521440.Spec := by
  intro n
  simp only [A084380]

end A084380

/-!
# A084381: a(n) = n^3 + 5.

The programs for A084381, the canonical program `A084381.P13489523062464461301` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084381 has offset 0).

The definition of A084381 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+5` (program `A084381.P13489523062464461301`, by `A084381.P13489523062464461301.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084381.P13489523062464461301

`n^3+5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084381

/-- `n^3+5` -/
def P13489523062464461301.Spec : Prop :=
  ∀ n, (P13489523062464461301.a n : ℤ) = A084381 n

theorem P13489523062464461301.correct : P13489523062464461301.Spec := by
  intro n
  simp only [A084381]

end A084381

/-!
# A084382: a(n) = n^3 + 6.

The programs for A084382, the canonical program `A084382.P5802453322173886620` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084382 has offset 0).

The definition of A084382 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+6` (program `A084382.P5802453322173886620`, by `A084382.P5802453322173886620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084382.P5802453322173886620

`n^3+6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084382

/-- `n^3+6` -/
def P5802453322173886620.Spec : Prop :=
  ∀ n, (P5802453322173886620.a n : ℤ) = A084382 n

theorem P5802453322173886620.correct : P5802453322173886620.Spec := by
  intro n
  simp only [A084382]

end A084382

/-!
# A084383: a(0)=0; for n>0, a(n) = smallest number that is not a concatenation of any number of distinct earlier terms in increasing order.

The programs for A084383, there is no canonical definition to state claims against.
-/

/-! ## A084383.P10688012457874917207

`comp[A297146(n+1)]%∑[A220394(n+1)]`
-/

namespace A084383.P10688012457874917207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220394 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A084383.P10688012457874917207

/-! ## A084383.P5522110522280652143

`lt[n, A239217(n+1)]`
-/

namespace A084383.P5522110522280652143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A084383.P5522110522280652143

/-! ## A084383.P12355778999886671563

`record[A028310(n)%A239217(n+1)]`
-/

namespace A084383.P12355778999886671563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A239217 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084383.P12355778999886671563

/-! ## A084383.P17090965959291969432

`comp[A297146(n+1)]%A219828(n+1)`
-/

namespace A084383.P17090965959291969432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297146 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A219828 (n + 1))

end

end A084383.P17090965959291969432

/-! ## A084383.P16848471497219892130

`comp[A297146(n+1)]%A002648(A130883(n))`
-/

namespace A084383.P16848471497219892130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297146 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A002648 (A130883 n).toNat)

end

end A084383.P16848471497219892130

/-!
# A084384: a(1) = 2; a(n+1) = smallest k > a(n) that is divisible by at most (1/2)*[tau(k)] previous terms.

The programs for A084384, there is no canonical definition to state claims against.
-/

/-! ## A084384.P14176675041047276276

`eq[2, A048614(A048785(n)²+2)+1]`
-/

namespace A084384.P14176675041047276276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (A048785 n ^ 2 + 2).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084384.P14176675041047276276

/-! ## A084384.P17258424318344836548

`lt[A343806(A074206(n)), n]`
-/

namespace A084384.P17258424318344836548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343806 (A074206 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084384.P17258424318344836548

/-! ## A084384.P12751201210196546395

`lt[A306209(A074206(n)²), n]`
-/

namespace A084384.P12751201210196546395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A074206 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084384.P12751201210196546395

/-! ## A084384.P540266977602487541

`lt[A156823(A074206(n)), A082345(n)]`
-/

namespace A084384.P540266977602487541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156823 (A074206 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084384.P540266977602487541

/-! ## A084384.P1916069667727547291

`lt[A253891(A074206(n)), A006046(n)]`
-/

namespace A084384.P1916069667727547291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253891 (A074206 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084384.P1916069667727547291

/-!
# A084385: a(1) = 1; a(n+1) is the smallest number not occurring earlier and coprime to Sum_{j=1..n} a(j).

The programs for A084385, there is no canonical definition to state claims against.
-/

/-! ## A084385.P8892406746166097715

`A000007(n)+Δ[A111244(A028310(n))]`
-/

namespace A084385.P8892406746166097715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111244 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A084385.P8892406746166097715

/-! ## A084385.P7296075314241708410

`A010051(2*(n+1))+Δ[A111244(A028310(n))]`
-/

namespace A084385.P7296075314241708410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111244 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A084385.P7296075314241708410

/-! ## A084385.P10466490678727185094

`A111244(n+1)+A000007(n)-A111244(A028310(n))`
-/

namespace A084385.P10466490678727185094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111244 (n + 1) + (A000007 n - A111244 (A028310 n).toNat)

end

end A084385.P10466490678727185094

/-! ## A084385.P10961334697426306897

`A111244(n+1)+A057428(n)*A111244(A028310(n))`
-/

namespace A084385.P10961334697426306897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111244 (n + 1) + A057428 n * A111244 (A028310 n).toNat

end

end A084385.P10961334697426306897

/-! ## A084385.P12621862356154943164

`A054977(n)*A111244(n+1)-A111244(A028310(n))`
-/

namespace A084385.P12621862356154943164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A111244 (n + 1) - A111244 (A028310 n).toNat

end

end A084385.P12621862356154943164

/-! ## A084385.P1113921716113281138

`A111244(n+1)-A057427(n)*A111244(A028310(n))`
-/

namespace A084385.P1113921716113281138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111244 (n + 1) - A057427 n * A111244 (A028310 n).toNat

end

end A084385.P1113921716113281138

/-! ## A084385.P5463823687604513057

`Δ[A111244(A028310(n))+A057427(n)]`
-/

namespace A084385.P5463823687604513057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111244 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084385.P5463823687604513057

/-! ## A084385.P8139451100706487187

`Δ[A111244(A028310(n))-A054977(n)]`
-/

namespace A084385.P8139451100706487187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111244 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084385.P8139451100706487187

/-! ## A084385.P7512235545449242071

`Δ[A111244(A028310(n))-A057428(n)]`
-/

namespace A084385.P7512235545449242071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111244 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084385.P7512235545449242071

/-! ## A084385.P15397603843210047611

`Δ[A111244(A028310(n))%A000125(n)]`
-/

namespace A084385.P15397603843210047611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111244 (A028310 n).toNat) (A000125 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084385.P15397603843210047611

/-! ## A084385.P4602436695272700369

`A028310(Δ[A111244(A028310(n))])`
-/

namespace A084385.P4602436695272700369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111244 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A084385.P4602436695272700369

/-! ## A084385.P14727888211894334660

`A056699(A261351(A056699(n+1)))`
-/

namespace A084385.P14727888211894334660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (A261351 (A056699 (n + 1)).toNat).toNat

end

end A084385.P14727888211894334660

/-!
# A084386: Number of pairs of rabbits when there are 3 pairs per litter and offspring reach parenthood after 3 gestation periods; a(n) = a(n-1) + 3*a(n-3), with a(0) = a(1) = a(2) = 1.

The programs for A084386, the canonical program `A084386.P6435567352303681928` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084386 has offset 0).

The definition of A084386 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-3)` (program `A084386.P6435567352303681928`, by `A084386.P6435567352303681928.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084386.P6435567352303681928

`a(n-1)+3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084386

/-- `a(n-1)+3*a(n-3)` -/
def P6435567352303681928.Spec : Prop :=
  ∀ n, (P6435567352303681928.a n : ℤ) = A084386 n

theorem P6435567352303681928.correct : P6435567352303681928.Spec := by
  intro n
  simp only [A084386]

end A084386

/-! ## A084386.P18281662035673036760

`A052900(n+3)/3`
-/

namespace A084386.P18281662035673036760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052900 (n + 3) : ℚ) / 3

end

end A084386.P18281662035673036760

namespace A084386

/-- `A052900(n+3)/3` -/
def P18281662035673036760.Spec : Prop :=
  ∀ n, P18281662035673036760.a n = (A084386 n : ℚ)

end A084386

/-! ## A084386.P7003113168647510405

`ogf(1/(1-x-3x^3))`
-/

namespace A084386.P7003113168647510405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, -3] n

end

end A084386.P7003113168647510405

namespace A084386

/-- `ogf(1/(1-x-3x^3))` -/
def P7003113168647510405.Spec : Prop :=
  ∀ n, P7003113168647510405.a n = A084386 n

end A084386

/-! ## A084386.P9801621301818196805

`a(n-1)+lcm(3, a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A084386.P9801621301818196805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + Nat.lcm 3 (a (n - 3))

end

end A084386.P9801621301818196805

namespace A084386

/-- `a(n-1)+lcm(3, a(n-3))` -/
def P9801621301818196805.Spec : Prop :=
  ∀ n, (P9801621301818196805.a n : ℤ) = A084386 n

end A084386

/-! ## A084386.P16228930558664646337

`4*a(n-3)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A084386.P16228930558664646337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  4 * a (n - 3) - (a (n - 3) - a (n - 1))

end

end A084386.P16228930558664646337

namespace A084386

/-- `4*a(n-3)-(a(n-3)-a(n-1))` -/
def P16228930558664646337.Spec : Prop :=
  ∀ n, P16228930558664646337.a n = A084386 n

end A084386

/-! ## A084386.P12409413562595081106

`a(n-3)+a(n-3)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A084386.P12409413562595081106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) + (a (n - 3) + (a (n - 1) + a (n - 3)))

end

end A084386.P12409413562595081106

namespace A084386

/-- `a(n-3)+a(n-3)+a(n-1)+a(n-3)` -/
def P12409413562595081106.Spec : Prop :=
  ∀ n, (P12409413562595081106.a n : ℤ) = A084386 n

end A084386

/-! ## A084386.P4593286662996508487

`∑[A052900(n)]`
-/

namespace A084386.P4593286662996508487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084386.P4593286662996508487

namespace A084386

/-- `∑[A052900(n)]` -/
def P4593286662996508487.Spec : Prop :=
  ∀ n, P4593286662996508487.a n = A084386 n

end A084386

/-! ## A084386.P10058966010355748473

`A193515(∑[n+2]-1)`
-/

namespace A084386.P10058966010355748473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193515 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A084386.P10058966010355748473

namespace A084386

/-- `A193515(∑[n+2]-1)` -/
def P10058966010355748473.Spec : Prop :=
  ∀ n, P10058966010355748473.a n = A084386 n

end A084386

/-!
# A084391: For n>3, a(n) = smallest number divisible by exactly n-2 previous terms; a(n)=n for n<=3.

The programs for A084391, there is no canonical definition to state claims against.
-/

/-! ## A084391.P17888797658040534822

`A265548(∑[∏[A287213(n)]])`
-/

namespace A084391.P17888797658040534822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265548 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084391.P17888797658040534822

/-! ## A084391.P629807551134577652

`A000005(A181821(n+1)+A052663(n))`
-/

namespace A084391.P629807551134577652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A181821 (n + 1) + A052663 n).toNat

end

end A084391.P629807551134577652

/-! ## A084391.P8998598004459587490

`A000005(lcm(A033877(n+1)², A176006(n)))`
-/

namespace A084391.P8998598004459587490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A033877 (n + 1) ^ 2) (A176006 n))

end

end A084391.P8998598004459587490

/-! ## A084391.P11785480927341074837

`A073061(A014859(n+1)^A046591(n+1))`
-/

namespace A084391.P11785480927341074837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (SequenceMachineLib.roundAway ((A014859 (n + 1) : ℚ) ^ (A046591 (n + 1) : ℤ))).toNat

end

end A084391.P11785480927341074837

/-! ## A084391.P8021981824003021295

`A073061(C(A014859(n+1), A046591(n+1)))`
-/

namespace A084391.P8021981824003021295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (Nat.choose (A014859 (n + 1)).toNat (A046591 (n + 1)).toNat)

end

end A084391.P8021981824003021295

/-!
# A084392: For k not divisible by 10, let f(k) be the number obtained by moving the last digit of k to the front. Then a(n) is the smallest k > 0, made of nonzero digits, such that for all 1 <= i < n, i+1 divides f^i(k).

The programs for A084392, there is no canonical definition to state claims against.
-/

/-! ## A084392.P10320636458235115051

`3*A235203(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A084392.P10320636458235115051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * A235203 (a (n - 1)).toNat

end

end A084392.P10320636458235115051

/-!
# A084394: Sum of n terms starting with the n-th term of A084393.

The programs for A084394, there is no canonical definition to state claims against.
-/

/-! ## A084394.P16356243874843298054

`(n+1)*A084395(n+1)`
-/

namespace A084394.P16356243874843298054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A084395 (n + 1)

end

end A084394.P16356243874843298054

/-! ## A084394.P213383972436982764

`A084395(A110514(2*n))*A110514(2*n)`
-/

namespace A084394.P213383972436982764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084395 (A110514 (2 * n)).toNat * A110514 (2 * n)

end

end A084394.P213383972436982764

/-! ## A084394.P10499110277210672160

`A084395(A131732(2*n))*A131732(2*n)`
-/

namespace A084394.P10499110277210672160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084395 (A131732 (2 * n)).toNat * A131732 (2 * n)

end

end A084394.P10499110277210672160

/-!
# A084395: a(n) = A084394(n)/n.

The programs for A084395, there is no canonical definition to state claims against.
-/

/-! ## A084395.P11183481799680713210

`A084394(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084395.P11183481799680713210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084394 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A084395.P11183481799680713210

/-! ## A084395.P5947561190546841521

`(3*A084394(n+1))%A016789(n)`
-/

namespace A084395.P5947561190546841521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A084394 (n + 1)) (A016789 n)

end

end A084395.P5947561190546841521

/-! ## A084395.P12369877532730745090

`(4*A084394(n+1))%A004767(n)`
-/

namespace A084395.P12369877532730745090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A084394 (n + 1)) (A004767 n)

end

end A084395.P12369877532730745090

/-! ## A084395.P6951297612888618057

`(n+1)^or(-1, A003558(n))*A084394(n+1)`
-/

namespace A084395.P6951297612888618057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.lor (-1) (A003558 n) : ℤ) * (A084394 (n + 1) : ℚ)

end

end A084395.P6951297612888618057

/-! ## A084395.P17404778137255464994

`A293137(A084394(n+1)-n²)`
-/

namespace A084395.P17404778137255464994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A084394 (n + 1) - (n ^ 2 : ℤ)).toNat

end

end A084395.P17404778137255464994

