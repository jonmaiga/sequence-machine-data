import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B007.C000
import Seq.B008.C000
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
# A351600: a(n) = n^2 * Sum_{d^2|n} 1 / d^2.

The programs for A351600, the canonical program `A351600.P13050820985612902645` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351600 has offset 1).

The definition of A351600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351600.P362601000769321951

`(n+1)*A076752(n+1)`
-/

namespace A351600.P362601000769321951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076752 (n + 1)

end

end A351600.P362601000769321951

namespace A351600

/-- `(n+1)*A076752(n+1)` -/
def P362601000769321951.Spec : Prop :=
  ∀ n, P362601000769321951.a n = A351600 (n + 1)

end A351600

/-! ## A351600.P13050820985612902645

`(n+1)*∑{d}[n+1, A206369(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A351600

/-- `(n+1)*∑{d}[n+1, A206369(#)]` -/
def P13050820985612902645.Spec : Prop :=
  ∀ n, P13050820985612902645.a n = A351600 (n + 1)

theorem P13050820985612902645.correct : P13050820985612902645.Spec := by
  intro n
  simp only [A351600, Nat.add_sub_cancel]

end A351600

/-! ## A351600.P11876473288960046946

`∑{d}[A000188(n+1), ((n+1)/#)²]`
-/

namespace A351600.P11876473288960046946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ 2

end

end A351600.P11876473288960046946

namespace A351600

/-- `∑{d}[A000188(n+1), ((n+1)/#)²]` -/
def P11876473288960046946.Spec : Prop :=
  ∀ n, P11876473288960046946.a n = (A351600 (n + 1) : ℚ)

end A351600

/-! ## A351600.P17033138999924680772

`A035316(n+1)*A053143(n+1)`
-/

namespace A351600.P17033138999924680772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) * A053143 (n + 1)

end

end A351600.P17033138999924680772

namespace A351600

/-- `A035316(n+1)*A053143(n+1)` -/
def P17033138999924680772.Spec : Prop :=
  ∀ n, P17033138999924680772.a n = A351600 (n + 1)

end A351600

/-! ## A351600.P13808505225832065285

`A019554(n+1)²*A035316(n+1)`
-/

namespace A351600.P13808505225832065285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) ^ 2 * A035316 (n + 1)

end

end A351600.P13808505225832065285

namespace A351600

/-- `A019554(n+1)²*A035316(n+1)` -/
def P13808505225832065285.Spec : Prop :=
  ∀ n, P13808505225832065285.a n = A351600 (n + 1)

end A351600

/-! ## A351600.P17398449283419760284

`∑{d}[n+1, A007434(#)*A035316((n+1)/#)]`
-/

namespace A351600.P17398449283419760284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A035316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351600.P17398449283419760284

namespace A351600

/-- `∑{d}[n+1, A007434(#)*A035316((n+1)/#)]` -/
def P17398449283419760284.Spec : Prop :=
  ∀ n, P17398449283419760284.a n = A351600 (n + 1)

end A351600

/-! ## A351600.P14932467147879576846

`∑{d}[n+1, A061019(#)*A064987((n+1)/#)]`
-/

namespace A351600.P14932467147879576846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d * A064987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351600.P14932467147879576846

namespace A351600

/-- `∑{d}[n+1, A061019(#)*A064987((n+1)/#)]` -/
def P14932467147879576846.Spec : Prop :=
  ∀ n, P14932467147879576846.a n = A351600 (n + 1)

end A351600

/-! ## A351600.P8460686321011068763

`∑{d}[n+1, A061020(#)*A069097((n+1)/#)]`
-/

namespace A351600.P8460686321011068763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061020 d * A069097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351600.P8460686321011068763

namespace A351600

/-- `∑{d}[n+1, A061020(#)*A069097((n+1)/#)]` -/
def P8460686321011068763.Spec : Prop :=
  ∀ n, P8460686321011068763.a n = A351600 (n + 1)

end A351600

/-! ## A351600.P10104991931752780496

`∑{d}[n+1, A001001(#)*A158523((n+1)/#)]`
-/

namespace A351600.P10104991931752780496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A158523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351600.P10104991931752780496

namespace A351600

/-- `∑{d}[n+1, A001001(#)*A158523((n+1)/#)]` -/
def P10104991931752780496.Spec : Prop :=
  ∀ n, P10104991931752780496.a n = A351600 (n + 1)

end A351600

/-! ## A351600.P7727411653304034765

`∑{d}[n+1, A001157(#)*A358272((n+1)/#)]`
-/

namespace A351600.P7727411653304034765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A358272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351600.P7727411653304034765

namespace A351600

/-- `∑{d}[n+1, A001157(#)*A358272((n+1)/#)]` -/
def P7727411653304034765.Spec : Prop :=
  ∀ n, P7727411653304034765.a n = A351600 (n + 1)

end A351600

/-! ## A351600.P1548059721659878934

`∑{d}[n+1, A321322(#)*A383795((n+1)/#)]`
-/

namespace A351600.P1548059721659878934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321322 d * A383795 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351600.P1548059721659878934

namespace A351600

/-- `∑{d}[n+1, A321322(#)*A383795((n+1)/#)]` -/
def P1548059721659878934.Spec : Prop :=
  ∀ n, P1548059721659878934.a n = A351600 (n + 1)

end A351600

/-! ## A351600.P3158752926771801613

`(n+1)*∑{d}[n+1, A000203(#)*A008836((n+1)/#)]`
-/

namespace A351600.P3158752926771801613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A000203 d * A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A351600.P3158752926771801613

namespace A351600

/-- `(n+1)*∑{d}[n+1, A000203(#)*A008836((n+1)/#)]` -/
def P3158752926771801613.Spec : Prop :=
  ∀ n, P3158752926771801613.a n = A351600 (n + 1)

end A351600

/-!
# A351601: a(n) = n^3 * Sum_{d^2|n} 1 / d^3.

The programs for A351601, the canonical program `A351601.P128876837776672129` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351601 has offset 1).

The definition of A351601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351601.P6455144863370274396

`∑{d}[A000188(n+1), A000578((n+1)/#)]`
-/

namespace A351601.P6455144863370274396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351601.P6455144863370274396

namespace A351601

/-- `∑{d}[A000188(n+1), A000578((n+1)/#)]` -/
def P6455144863370274396.Spec : Prop :=
  ∀ n, P6455144863370274396.a n = A351601 (n + 1)

end A351601

/-! ## A351601.P12049414532926489838

`∑{d}[sqrt(A008833(n+1)), A000578((n+1)/#)]`
-/

namespace A351601.P12049414532926489838
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351601.P12049414532926489838

namespace A351601

/-- `∑{d}[sqrt(A008833(n+1)), A000578((n+1)/#)]` -/
def P12049414532926489838.Spec : Prop :=
  ∀ n, P12049414532926489838.a n = A351601 (n + 1)

end A351601

/-! ## A351601.P128876837776672129

`∑{d}[n+1, A059376(#)*A361794((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A351601

/-- `∑{d}[n+1, A059376(#)*A361794((n+1)/#)]` -/
def P128876837776672129.Spec : Prop :=
  ∀ n, P128876837776672129.a n = A351601 (n + 1)

theorem P128876837776672129.correct : P128876837776672129.Spec := by
  intro n
  simp only [A351601, Nat.add_sub_cancel]

end A351601

/-! ## A351601.P2461750458778763999

`A019554(A000005(5^n)*A097248(n+1)*(n+1)²)*A097248(n+1)`
-/

namespace A351601.P2461750458778763999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A000005 (5 ^ n) * A097248 (n + 1) * ((n + 1) ^ 2 : ℤ)).toNat * A097248 (n + 1)

end

end A351601.P2461750458778763999

namespace A351601

/-- `A019554(A000005(5^n)*A097248(n+1)*(n+1)²)*A097248(n+1)` -/
def P2461750458778763999.Spec : Prop :=
  ∀ n, P2461750458778763999.a n = A351601 (n + 1)

end A351601

/-!
# A351602: a(n) = n^4 * Sum_{d^2|n} 1 / d^4.

The programs for A351602, the canonical program `A351602.P15349090548129750929` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351602 has offset 1).

The definition of A351602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351602.P15349090548129750929

`(n+1)²*A328271(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A351602

/-- `(n+1)²*A328271(n+1)` -/
def P15349090548129750929.Spec : Prop :=
  ∀ n, P15349090548129750929.a n = A351602 (n + 1)

theorem P15349090548129750929.correct : P15349090548129750929.Spec := by
  intro n
  simp only [A351602, Nat.add_sub_cancel]

end A351602

/-! ## A351602.P13216237143747230825

`A053143(n+1)²*A351307(n+1)`
-/

namespace A351602.P13216237143747230825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (n + 1) ^ 2 * A351307 (n + 1)

end

end A351602.P13216237143747230825

namespace A351602

/-- `A053143(n+1)²*A351307(n+1)` -/
def P13216237143747230825.Spec : Prop :=
  ∀ n, P13216237143747230825.a n = A351602 (n + 1)

end A351602

/-! ## A351602.P2633434170382400559

`A019554(n+1)²²*A351307(n+1)`
-/

namespace A351602.P2633434170382400559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) ^ 2) ^ 2 * A351307 (n + 1)

end

end A351602.P2633434170382400559

namespace A351602

/-- `A019554(n+1)²²*A351307(n+1)` -/
def P2633434170382400559.Spec : Prop :=
  ∀ n, P2633434170382400559.a n = A351602 (n + 1)

end A351602

/-! ## A351602.P10598369668406646589

`(n+1)*A000027(n+1)*A328271(n+1)`
-/

namespace A351602.P10598369668406646589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000027 (n + 1) * A328271 (n + 1))

end

end A351602.P10598369668406646589

namespace A351602

/-- `(n+1)*A000027(n+1)*A328271(n+1)` -/
def P10598369668406646589.Spec : Prop :=
  ∀ n, P10598369668406646589.a n = A351602 (n + 1)

theorem P10598369668406646589.correct : P10598369668406646589.Spec := by
  intro n
  simp only [A351602, Nat.add_sub_cancel, A351602.P10598369668406646589.a, A351602.P15349090548129750929.a, A000027, A000027.P10331202704469894836.a, A328271, A328271.P2516295972375005117.f1, A328271.P2516295972375005117.a, A057660, A057660.P308819105178745283.a, A206369, A206369.P2534442500048428716.a, A000290, A000290.P12206242496348924484.a, A001157, A001157.P6892814788348726787.a, A061020, A061020.P8856517168126816648.f1, A061020.P8856517168126816648.a, A065764, A065764.P16236740945723656355.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A298473, A298473.P4129261461603736948.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A351602

/-! ## A351602.P905397635259208272

`∑{d}[n+1, A059377(#)*A351307((n+1)/#)]`
-/

namespace A351602.P905397635259208272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059377 d * A351307 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351602.P905397635259208272

namespace A351602

/-- `∑{d}[n+1, A059377(#)*A351307((n+1)/#)]` -/
def P905397635259208272.Spec : Prop :=
  ∀ n, P905397635259208272.a n = A351602 (n + 1)

end A351602

/-! ## A351602.P13805193314239742398

`∑{d}[n+1, A076792(#)*A372926((n+1)/#)]`
-/

namespace A351602.P13805193314239742398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076792 d * A372926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351602.P13805193314239742398

namespace A351602

/-- `∑{d}[n+1, A076792(#)*A372926((n+1)/#)]` -/
def P13805193314239742398.Spec : Prop :=
  ∀ n, P13805193314239742398.a n = A351602 (n + 1)

end A351602

/-! ## A351602.P10202229668262941853

`A000583(A019554(n+1))*A351307(n+1)`
-/

namespace A351602.P10202229668262941853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A019554 (n + 1)).toNat * A351307 (n + 1)

end

end A351602.P10202229668262941853

namespace A351602

/-- `A000583(A019554(n+1))*A351307(n+1)` -/
def P10202229668262941853.Spec : Prop :=
  ∀ n, P10202229668262941853.a n = A351602 (n + 1)

end A351602

/-! ## A351602.P11571974977900139848

`A008833(n+1)*A328271(n+1)*A053143(n+1)`
-/

namespace A351602.P11571974977900139848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) * A328271 (n + 1) * A053143 (n + 1)

end

end A351602.P11571974977900139848

namespace A351602

/-- `A008833(n+1)*A328271(n+1)*A053143(n+1)` -/
def P11571974977900139848.Spec : Prop :=
  ∀ n, P11571974977900139848.a n = A351602 (n + 1)

end A351602

/-! ## A351602.P15974849323727109780

`A000027(A328271(n+1))*A000290(n+1)`
-/

namespace A351602.P15974849323727109780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A328271 (n + 1)).toNat * A000290 (n + 1)

end

end A351602.P15974849323727109780

namespace A351602

/-- `A000027(A328271(n+1))*A000290(n+1)` -/
def P15974849323727109780.Spec : Prop :=
  ∀ n, P15974849323727109780.a n = A351602 (n + 1)

end A351602

/-!
# A351603: a(n) = n^5 * Sum_{d^2|n} 1 / d^5.

The programs for A351603, the canonical program `A351603.P15662806587639298420` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351603 has offset 1).

The definition of A351603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351603.P15662806587639298420

`∑{d}[A000188(n+1), A000584((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A351603

/-- `∑{d}[A000188(n+1), A000584((n+1)/#)]` -/
def P15662806587639298420.Spec : Prop :=
  ∀ n, P15662806587639298420.a n = A351603 (n + 1)

theorem P15662806587639298420.correct : P15662806587639298420.Spec := by
  intro n
  simp only [A351603, Nat.add_sub_cancel]

end A351603

/-! ## A351603.P14618448354747915679

`A055014((n+1)*A124496(n+1)!)`
-/

namespace A351603.P14618448354747915679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055014 ((n + 1) * Nat.factorial (A124496 (n + 1)).toNat)

end

end A351603.P14618448354747915679

namespace A351603

/-- `A055014((n+1)*A124496(n+1)!)` -/
def P14618448354747915679.Spec : Prop :=
  ∀ n, P14618448354747915679.a n = A351603 (n + 1)

end A351603

/-!
# A351604: a(n) = n^6 * Sum_{d^2|n} 1 / d^6.

The programs for A351604, the canonical program `A351604.P4214175923410223717` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351604 has offset 1).

The definition of A351604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351604.P10413418193515483702

`∑{d}[A000188(n+1), A000578((n+1)/#)²]`
-/

namespace A351604.P10413418193515483702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2

end

end A351604.P10413418193515483702

namespace A351604

/-- `∑{d}[A000188(n+1), A000578((n+1)/#)²]` -/
def P10413418193515483702.Spec : Prop :=
  ∀ n, P10413418193515483702.a n = A351604 (n + 1)

end A351604

/-! ## A351604.P4214175923410223717

`∑{d}[n+1, A069091(#)*A351308((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A351604

/-- `∑{d}[n+1, A069091(#)*A351308((n+1)/#)]` -/
def P4214175923410223717.Spec : Prop :=
  ∀ n, P4214175923410223717.a n = A351604 (n + 1)

theorem P4214175923410223717.correct : P4214175923410223717.Spec := by
  intro n
  simp only [A351604, Nat.add_sub_cancel]

end A351604

/-! ## A351604.P13088647386160765803

`A001014(A019554(n+1))*A351308(n+1)`
-/

namespace A351604.P13088647386160765803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A019554 (n + 1)).toNat * A351308 (n + 1)

end

end A351604.P13088647386160765803

namespace A351604

/-- `A001014(A019554(n+1))*A351308(n+1)` -/
def P13088647386160765803.Spec : Prop :=
  ∀ n, P13088647386160765803.a n = A351604 (n + 1)

end A351604

/-! ## A351604.P13887795897151019504

`A053143(n+1)*A351308(n+1)*A053143(n+1)²`
-/

namespace A351604.P13887795897151019504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (n + 1) * A351308 (n + 1) * A053143 (n + 1) ^ 2

end

end A351604.P13887795897151019504

namespace A351604

/-- `A053143(n+1)*A351308(n+1)*A053143(n+1)²` -/
def P13887795897151019504.Spec : Prop :=
  ∀ n, P13887795897151019504.a n = A351604 (n + 1)

end A351604

/-! ## A351604.P13247394942281079265

`A001014(A019554(n+1))*A013954(A057918(n+1)+1)`
-/

namespace A351604.P13247394942281079265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A019554 (n + 1)).toNat * A013954 (A057918 (n + 1) + 1).toNat

end

end A351604.P13247394942281079265

namespace A351604

/-- `A001014(A019554(n+1))*A013954(A057918(n+1)+1)` -/
def P13247394942281079265.Spec : Prop :=
  ∀ n, P13247394942281079265.a n = A351604 (n + 1)

end A351604

/-! ## A351604.P14280733177390495274

`∑{d}[sqrt(A008833(n+1)), A001014((n+1)/#)]`
-/

namespace A351604.P14280733177390495274
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001014 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351604.P14280733177390495274

namespace A351604

/-- `∑{d}[sqrt(A008833(n+1)), A001014((n+1)/#)]` -/
def P14280733177390495274.Spec : Prop :=
  ∀ n, P14280733177390495274.a n = A351604 (n + 1)

end A351604

/-! ## A351604.P15489769430090078399

`A000578(A053143(n+1))*A351308(n+1)`
-/

namespace A351604.P15489769430090078399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A053143 (n + 1)).toNat * A351308 (n + 1)

end

end A351604.P15489769430090078399

namespace A351604

/-- `A000578(A053143(n+1))*A351308(n+1)` -/
def P15489769430090078399.Spec : Prop :=
  ∀ n, P15489769430090078399.a n = A351604 (n + 1)

end A351604

/-!
# A351605: a(n) = n^7 * Sum_{d^2|n} 1 / d^7.

The programs for A351605, the canonical program `A351605.P10268499449878988978` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351605 has offset 1).

The definition of A351605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351605.P17017473051889722223

`∑{d}[A000188(n+1), A001015((n+1)/#)]`
-/

namespace A351605.P17017473051889722223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001015 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351605.P17017473051889722223

namespace A351605

/-- `∑{d}[A000188(n+1), A001015((n+1)/#)]` -/
def P17017473051889722223.Spec : Prop :=
  ∀ n, P17017473051889722223.a n = A351605 (n + 1)

end A351605

/-! ## A351605.P10268499449878988978

`∑{d}[sqrt(A008833(n+1)), A001015((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A351605

/-- `∑{d}[sqrt(A008833(n+1)), A001015((n+1)/#)]` -/
def P10268499449878988978.Spec : Prop :=
  ∀ n, P10268499449878988978.a n = A351605 (n + 1)

theorem P10268499449878988978.correct : P10268499449878988978.Spec := by
  intro n
  simp only [A351605, Nat.add_sub_cancel]

end A351605

/-!
# A351606: a(n) = n^8 * Sum_{d^2|n} 1 / d^8.

The programs for A351606, the canonical program `A351606.P6841806232004786660` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351606 has offset 1).

The definition of A351606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351606.P16506337240813331140

`A053143(n+1)²²*A351309(n+1)`
-/

namespace A351606.P16506337240813331140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053143 (n + 1) ^ 2) ^ 2 * A351309 (n + 1)

end

end A351606.P16506337240813331140

namespace A351606

/-- `A053143(n+1)²²*A351309(n+1)` -/
def P16506337240813331140.Spec : Prop :=
  ∀ n, P16506337240813331140.a n = A351606 (n + 1)

end A351606

/-! ## A351606.P7816974295564184134

`A019554(n+1)²²²*A351309(n+1)`
-/

namespace A351606.P7816974295564184134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A019554 (n + 1) ^ 2) ^ 2) ^ 2 * A351309 (n + 1)

end

end A351606.P7816974295564184134

namespace A351606

/-- `A019554(n+1)²²²*A351309(n+1)` -/
def P7816974295564184134.Spec : Prop :=
  ∀ n, P7816974295564184134.a n = A351606 (n + 1)

end A351606

/-! ## A351606.P6841806232004786660

`∑{d}[n+1, A069093(#)*A351309((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A351606

/-- `∑{d}[n+1, A069093(#)*A351309((n+1)/#)]` -/
def P6841806232004786660.Spec : Prop :=
  ∀ n, P6841806232004786660.a n = A351606 (n + 1)

theorem P6841806232004786660.correct : P6841806232004786660.Spec := by
  intro n
  simp only [A351606, Nat.add_sub_cancel]

end A351606

/-! ## A351606.P17132233854776169643

`A001016(A019554(n+1))*A351309(n+1)`
-/

namespace A351606.P17132233854776169643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 (A019554 (n + 1)).toNat * A351309 (n + 1)

end

end A351606.P17132233854776169643

namespace A351606

/-- `A001016(A019554(n+1))*A351309(n+1)` -/
def P17132233854776169643.Spec : Prop :=
  ∀ n, P17132233854776169643.a n = A351606 (n + 1)

end A351606

/-! ## A351606.P667040605747725911

`∑{d}[A000188(n+1), A001016((n+1)/#)]`
-/

namespace A351606.P667040605747725911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001016 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351606.P667040605747725911

namespace A351606

/-- `∑{d}[A000188(n+1), A001016((n+1)/#)]` -/
def P667040605747725911.Spec : Prop :=
  ∀ n, P667040605747725911.a n = A351606 (n + 1)

end A351606

/-! ## A351606.P10823766164783938411

`A000583(A053143(n+1))*A351309(n+1)`
-/

namespace A351606.P10823766164783938411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A053143 (n + 1)).toNat * A351309 (n + 1)

end

end A351606.P10823766164783938411

namespace A351606

/-- `A000583(A053143(n+1))*A351309(n+1)` -/
def P10823766164783938411.Spec : Prop :=
  ∀ n, P10823766164783938411.a n = A351606 (n + 1)

end A351606

/-!
# A351607: a(n) = n^9 * Sum_{d^2|n} 1 / d^9.

The programs for A351607, the canonical program `A351607.P16174837817569097398` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351607 has offset 1).

The definition of A351607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351607.P16174837817569097398

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], ((n+1)/#)^9]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A351607

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)], ((n+1)/#)^9]` -/
def P16174837817569097398.Spec : Prop :=
  ∀ n, P16174837817569097398.a n = (A351607 (n + 1) : ℚ)

end A351607

/-! ## A351607.P1905066136485822943

`∑{d}[A000188(n+1), ((n+1)/#)^9]`
-/

namespace A351607.P1905066136485822943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ 9

end

end A351607.P1905066136485822943

namespace A351607

/-- `∑{d}[A000188(n+1), ((n+1)/#)^9]` -/
def P1905066136485822943.Spec : Prop :=
  ∀ n, P1905066136485822943.a n = (A351607 (n + 1) : ℚ)

end A351607

/-! ## A351607.P4072219126061367222

`∑{d}[sqrt(A008833(n+1)), A001017((n+1)/#)]`
-/

namespace A351607.P4072219126061367222
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001017 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351607.P4072219126061367222

namespace A351607

/-- `∑{d}[sqrt(A008833(n+1)), A001017((n+1)/#)]` -/
def P4072219126061367222.Spec : Prop :=
  ∀ n, P4072219126061367222.a n = A351607 (n + 1)

end A351607

/-!
# A351608: a(n) = n^10 * Sum_{d^2|n} 1 / d^10.

The programs for A351608, the canonical program `A351608.P2991250227882417481` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351608 has offset 1).

The definition of A351608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351608.P3789366057047754867

`∑{d}[A000188(n+1), ((n+1)/#)^10]`
-/

namespace A351608.P3789366057047754867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ 10

end

end A351608.P3789366057047754867

namespace A351608

/-- `∑{d}[A000188(n+1), ((n+1)/#)^10]` -/
def P3789366057047754867.Spec : Prop :=
  ∀ n, P3789366057047754867.a n = (A351608 (n + 1) : ℚ)

end A351608

/-! ## A351608.P2017063668035642426

`∑{d}[n+1, A069095(#)*A351310((n+1)/#)]`
-/

namespace A351608.P2017063668035642426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069095 d * A351310 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351608.P2017063668035642426

namespace A351608

/-- `∑{d}[n+1, A069095(#)*A351310((n+1)/#)]` -/
def P2017063668035642426.Spec : Prop :=
  ∀ n, P2017063668035642426.a n = A351608 (n + 1)

end A351608

/-! ## A351608.P1417676920209069668

`A008454(A019554(n+1))*A351310(n+1)`
-/

namespace A351608.P1417676920209069668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A019554 (n + 1)).toNat * A351310 (n + 1)

end

end A351608.P1417676920209069668

namespace A351608

/-- `A008454(A019554(n+1))*A351310(n+1)` -/
def P1417676920209069668.Spec : Prop :=
  ∀ n, P1417676920209069668.a n = A351608 (n + 1)

end A351608

/-! ## A351608.P5712695622175912407

`A008454(A019554(n+1))*A013958(A000188(n+1))`
-/

namespace A351608.P5712695622175912407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A019554 (n + 1)).toNat * A013958 (A000188 (n + 1)).toNat

end

end A351608.P5712695622175912407

namespace A351608

/-- `A008454(A019554(n+1))*A013958(A000188(n+1))` -/
def P5712695622175912407.Spec : Prop :=
  ∀ n, P5712695622175912407.a n = A351608 (n + 1)

end A351608

/-! ## A351608.P2991250227882417481

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], A000584((n+1)/#)²]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A351608

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)], A000584((n+1)/#)²]` -/
def P2991250227882417481.Spec : Prop :=
  ∀ n, P2991250227882417481.a n = A351608 (n + 1)

theorem P2991250227882417481.correct : P2991250227882417481.Spec := by
  intro n
  simp only [A351608, Nat.add_sub_cancel]

end A351608

/-! ## A351608.P14271833104879614700

`A000584(A053143(n+1))*A351310(n+1)`
-/

namespace A351608.P14271833104879614700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A053143 (n + 1)).toNat * A351310 (n + 1)

end

end A351608.P14271833104879614700

namespace A351608

/-- `A000584(A053143(n+1))*A351310(n+1)` -/
def P14271833104879614700.Spec : Prop :=
  ∀ n, P14271833104879614700.a n = A351608 (n + 1)

end A351608

/-!
# A351609: Maximal absolute value of the determinant of an n X n symmetric matrix using the integers 1 to n*(n + 1)/2.

The programs for A351609, there is no canonical definition to state claims against.
-/

/-! ## A351609.P17774753783757509322

`A082741(A088691(n))+A062707(n)`
-/

namespace A351609.P17774753783757509322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (A088691 n).toNat + A062707 n

end

end A351609.P17774753783757509322

/-!
# A351612: Number of ordered pairs, (s,t), 1 <= s <= t, such that (t^s) | n.

The programs for A351612, there is no canonical definition to state claims against.
-/

/-! ## A351612.P11677427792285031241

`A039927(A008833(n+1))+A000005(n+1)`
-/

namespace A351612.P11677427792285031241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039927 (A008833 (n + 1)).toNat + A000005 (n + 1)

end

end A351612.P11677427792285031241

/-! ## A351612.P6546649809370423715

`A068063(A339336(n+1))`
-/

namespace A351612.P6546649809370423715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A339336 (n + 1)).toNat

end

end A351612.P6546649809370423715

/-! ## A351612.P15968792641678222735

`A130193(A297174(n+1))`
-/

namespace A351612.P15968792641678222735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130193 (A297174 (n + 1)).toNat

end

end A351612.P15968792641678222735

/-! ## A351612.P16778809527644784201

`A177903(A325211(n+1))`
-/

namespace A351612.P16778809527644784201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177903 (A325211 (n + 1)).toNat

end

end A351612.P16778809527644784201

/-! ## A351612.P10705033019648153208

`A383194(A358223(n+1))`
-/

namespace A351612.P10705033019648153208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383194 (A358223 (n + 1)).toNat

end

end A351612.P10705033019648153208

/-!
# A351613: Number of pairs of divisors of n, (d1,d2) d1<=d2, such that d1+d2 is prime.

The programs for A351613, there is no canonical definition to state claims against.
-/

/-! ## A351613.P6220002113274271438

`∑{d}[n+1, A382983(#)]`
-/

namespace A351613.P6220002113274271438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A382983 d

end

end A351613.P6220002113274271438

/-! ## A351613.P12718131057772065827

`∑{d}[n+1, ceil(A282849(#)/2)]`
-/

namespace A351613.P12718131057772065827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈(A282849 d : ℚ) / 2⌉

end

end A351613.P12718131057772065827

/-! ## A351613.P9697097678556679978

`(∑{d}[n+1, A282849((n+1)/#)]+1)/2`
-/

namespace A351613.P9697097678556679978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A282849 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat + 1 : ℤ) : ℚ) / 2

end

end A351613.P9697097678556679978

/-! ## A351613.P5205149483096293730

`∑{d}[n+1, A088627(A123684(#))]`
-/

namespace A351613.P5205149483096293730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088627 (A123684 d).toNat

end

end A351613.P5205149483096293730

/-! ## A351613.P8962540067696145629

`A001057(∑{d}[n+1, A282849(#)])`
-/

namespace A351613.P8962540067696145629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (∑ d ∈ Nat.divisors (f1 n), A282849 d).toNat

end

end A351613.P8962540067696145629

/-! ## A351613.P10208106881144712451

`A008619(∑{d}[n+1, A282849(#)])`
-/

namespace A351613.P10208106881144712451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ d ∈ Nat.divisors (f1 n), A282849 d).toNat

end

end A351613.P10208106881144712451

/-! ## A351613.P15106846453962459530

`A152271(∑{d}[n+1, A282849(#)])`
-/

namespace A351613.P15106846453962459530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (∑ d ∈ Nat.divisors (f1 n), A282849 d).toNat

end

end A351613.P15106846453962459530

/-! ## A351613.P5166171295341229018

`A246425(∑{d}[n+1, A282849(#)])`
-/

namespace A351613.P5166171295341229018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (∑ d ∈ Nat.divisors (f1 n), A282849 d).toNat

end

end A351613.P5166171295341229018

/-! ## A351613.P11782861333751181358

`A004525(∑{d}[n+1, A282849(#)]+1)`
-/

namespace A351613.P11782861333751181358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ d ∈ Nat.divisors (f1 n), A282849 d + 1).toNat

end

end A351613.P11782861333751181358

/-! ## A351613.P14195695169172238870

`A025480(∑{d}[n+1, A282849(#)]+1)`
-/

namespace A351613.P14195695169172238870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (∑ d ∈ Nat.divisors (f1 n), A282849 d + 1).toNat

end

end A351613.P14195695169172238870

/-!
# A351614: Numbers with exactly one pair of distinct prime factors whose sum is prime.

The programs for A351614, there is no canonical definition to state claims against.
-/

/-! ## A351614.P1283052762007968873

`2*A331916(A187829(n+1))`
-/

namespace A351614.P1283052762007968873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331916 (A187829 (n + 1)).toNat

end

end A351614.P1283052762007968873

/-! ## A351614.P1932171747828831012

`A000005(A318189(n))*A331916(n+1)`
-/

namespace A351614.P1932171747828831012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A318189 n).toNat * A331916 (n + 1)

end

end A351614.P1932171747828831012

/-!
# A351615: Number of free polyominoes with n squares, having 180-degree rotational symmetry about the center of a square, and no other symmetry.

The programs for A351615, there is no canonical definition to state claims against.
-/

/-! ## A351615.P13314948193404803012

`(A390653(n+1)-A351190(n+1)*2-A351159(n+1)*2-A351142(n+1)*2-A351127(n+1))/4`
-/

namespace A351615.P13314948193404803012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390653 (n + 1) - A351190 (n + 1) * 2 - A351159 (n + 1) * 2 - A351142 (n + 1) * 2 - A351127 (n + 1) : ℚ) / 4

end

end A351615.P13314948193404803012

/-! ## A351615.P2025880036458165421

`A006747(A001987(n+1)*A327076(n+1))`
-/

namespace A351615.P2025880036458165421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006747 (A001987 (n + 1) * A327076 (n + 1)).toNat

end

end A351615.P2025880036458165421

/-! ## A351615.P9468823848912563373

`A006747(A083961(n+1)*A327076(n+1))`
-/

namespace A351615.P9468823848912563373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006747 (A083961 (n + 1) * A327076 (n + 1)).toNat

end

end A351615.P9468823848912563373

/-! ## A351615.P14203329116163064692

`A006747(A060819(n+1)%A036493(3*(n+1)))`
-/

namespace A351615.P14203329116163064692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006747 (Int.tmod (A060819 (n + 1)) (A036493 (3 * (n + 1)))).toNat

end

end A351615.P14203329116163064692

/-!
# A351616: Number of free polyominoes with 2n squares, having 180-degree rotational symmetry about a vertex of a square, and no other symmetry.

The programs for A351616, there is no canonical definition to state claims against.
-/

/-! ## A351616.P3348247044323912445

`A085857(3*A150836(n))`
-/

namespace A351616.P3348247044323912445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085857 (3 * A150836 n).toNat

end

end A351616.P3348247044323912445

/-! ## A351616.P3304600264424371038

`Δ[A322531(A301700(n+1))]`
-/

namespace A351616.P3304600264424371038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322531 (A301700 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351616.P3304600264424371038

/-! ## A351616.P2254483326745315500

`ceil(e*2^n)%A361478(A112934(n))`
-/

namespace A351616.P2254483326745315500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.exp 1 * (2 ^ n : ℝ)⌉ (A361478 (A112934 n).toNat)

end

end A351616.P2254483326745315500

/-!
# A351617: Number of ways to write n as 11^w + x^2 + 2*y^2 + 3*z^2 + x*y*z, where w,x,y,z are nonnegative integers.

The programs for A351617, there is no canonical definition to state claims against.
-/

/-! ## A351617.P3722475384882290616

`gcd(A069010(A075200(n+1)), A327588(n))`
-/

namespace A351617.P3722475384882290616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069010 (A075200 (n + 1)).toNat) (A327588 n)

end

end A351617.P3722475384882290616

/-! ## A351617.P17888614224955591099

`A001221(A221660(2*(n+1))+A007909(n+1))`
-/

namespace A351617.P17888614224955591099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A221660 (2 * (n + 1)) + A007909 (n + 1)).toNat

end

end A351617.P17888614224955591099

/-!
# A351619: a(n) = Sum_{p|n, p prime} (-1)^p.

The programs for A351619, the canonical program `A351619.P11990260425290448833` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351619 has offset 1).

The definition of A351619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351619.P11990260425290448833

`∑{p}[n+1, (-1)^#]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A351619

/-- `∑{p}[n+1, (-1)^#]` -/
def P11990260425290448833.Spec : Prop :=
  ∀ n, P11990260425290448833.a n = A351619 (n + 1)

theorem P11990260425290448833.correct : P11990260425290448833.Spec := by
  intro n
  simp only [A351619, Nat.add_sub_cancel]

end A351619

/-! ## A351619.P10555779252513050520

`-∑{p}[n+1, #-xor(1, #)]`
-/

namespace A351619.P10555779252513050520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - (Nat.xor 1 p : ℤ)))

end

end A351619.P10555779252513050520

namespace A351619

/-- `-∑{p}[n+1, #-xor(1, #)]` -/
def P10555779252513050520.Spec : Prop :=
  ∀ n, P10555779252513050520.a n = A351619 (n + 1)

end A351619

/-! ## A351619.P16901939920646733396

`2-∑{p}[2*(n+1), gcd(n, #)]`
-/

namespace A351619.P16901939920646733396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)

end

end A351619.P16901939920646733396

namespace A351619

/-- `2-∑{p}[2*(n+1), gcd(n, #)]` -/
def P16901939920646733396.Spec : Prop :=
  ∀ n, P16901939920646733396.a n = A351619 (n + 1)

end A351619

/-! ## A351619.P8932239838526518839

`n%2-∑{p}[n+1, #%2]`
-/

namespace A351619.P8932239838526518839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), p % 2 : ℕ) : ℤ)

end

end A351619.P8932239838526518839

namespace A351619

/-- `n%2-∑{p}[n+1, #%2]` -/
def P8932239838526518839.Spec : Prop :=
  ∀ n, P8932239838526518839.a n = A351619 (n + 1)

end A351619

/-! ## A351619.P13811194692968330342

`Δ[or(1, n)]-∑{e}[∏{p}[n+1, #], #]`
-/

namespace A351619.P13811194692968330342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A351619.P13811194692968330342

namespace A351619

/-- `Δ[or(1, n)]-∑{e}[∏{p}[n+1, #], #]` -/
def P13811194692968330342.Spec : Prop :=
  ∀ n, P13811194692968330342.a n = A351619 (n + 1)

end A351619

/-! ## A351619.P14637550547311514259

`A318656(∏{p}[n+1, #])`
-/

namespace A351619.P14637550547311514259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318656 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351619.P14637550547311514259

namespace A351619

/-- `A318656(∏{p}[n+1, #])` -/
def P14637550547311514259.Spec : Prop :=
  ∀ n, P14637550547311514259.a n = A351619 (n + 1)

end A351619

/-! ## A351619.P12244495629858358822

`and(1, n)-A005087(n+1)`
-/

namespace A351619.P12244495629858358822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - A005087 (n + 1)

end

end A351619.P12244495629858358822

namespace A351619

/-- `and(1, n)-A005087(n+1)` -/
def P12244495629858358822.Spec : Prop :=
  ∀ n, P12244495629858358822.a n = A351619 (n + 1)

end A351619

/-! ## A351619.P14615842128227904695

`Δ[or(1, n)]-A001221(n+1)`
-/

namespace A351619.P14615842128227904695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A001221 (n + 1)

end

end A351619.P14615842128227904695

namespace A351619

/-- `Δ[or(1, n)]-A001221(n+1)` -/
def P14615842128227904695.Spec : Prop :=
  ∀ n, P14615842128227904695.a n = A351619 (n + 1)

end A351619

/-! ## A351619.P13888959430162338870

`Δ[or(1, n)]-∑{p}[n+1, A001222(#)]`
-/

namespace A351619.P13888959430162338870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ∑ p ∈ Nat.primeFactors (f2 n), A001222 p

end

end A351619.P13888959430162338870

namespace A351619

/-- `Δ[or(1, n)]-∑{p}[n+1, A001222(#)]` -/
def P13888959430162338870.Spec : Prop :=
  ∀ n, P13888959430162338870.a n = A351619 (n + 1)

end A351619

/-! ## A351619.P11450465027689516928

`Δ[or(1, n)]-A001222(∏{p}[n+1, #])`
-/

namespace A351619.P11450465027689516928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A001222 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A351619.P11450465027689516928

namespace A351619

/-- `Δ[or(1, n)]-A001222(∏{p}[n+1, #])` -/
def P11450465027689516928.Spec : Prop :=
  ∀ n, P11450465027689516928.a n = A351619 (n + 1)

end A351619

/-! ## A351619.P16898146914123930989

`gcd(2, n+1)-A001221(2*(n+1))`
-/

namespace A351619.P16898146914123930989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) - A001221 (2 * (n + 1))

end

end A351619.P16898146914123930989

namespace A351619

/-- `gcd(2, n+1)-A001221(2*(n+1))` -/
def P16898146914123930989.Spec : Prop :=
  ∀ n, P16898146914123930989.a n = A351619 (n + 1)

end A351619

/-! ## A351619.P121176453367169733

`2*and(1, n)-A001221(2*n+1-n)`
-/

namespace A351619.P121176453367169733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land 1 n : ℤ) - A001221 (2 * n + 1 - n)

end

end A351619.P121176453367169733

namespace A351619

/-- `2*and(1, n)-A001221(2*n+1-n)` -/
def P121176453367169733.Spec : Prop :=
  ∀ n, P121176453367169733.a n = A351619 (n + 1)

end A351619

/-! ## A351619.P12857301930567674320

`A318656(A007947(n+1))`
-/

namespace A351619.P12857301930567674320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318656 (A007947 (n + 1)).toNat

end

end A351619.P12857301930567674320

namespace A351619

/-- `A318656(A007947(n+1))` -/
def P12857301930567674320.Spec : Prop :=
  ∀ n, P12857301930567674320.a n = A351619 (n + 1)

end A351619

/-! ## A351619.P5663628101109837789

`A000035(n)-A005087(n+1)`
-/

namespace A351619.P5663628101109837789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n - A005087 (n + 1)

end

end A351619.P5663628101109837789

namespace A351619

/-- `A000035(n)-A005087(n+1)` -/
def P5663628101109837789.Spec : Prop :=
  ∀ n, P5663628101109837789.a n = A351619 (n + 1)

end A351619

/-! ## A351619.P10163298791990565645

`A010673(n)-A001221(n+1)`
-/

namespace A351619.P10163298791990565645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n - A001221 (n + 1)

end

end A351619.P10163298791990565645

namespace A351619

/-- `A010673(n)-A001221(n+1)` -/
def P10163298791990565645.Spec : Prop :=
  ∀ n, P10163298791990565645.a n = A351619 (n + 1)

end A351619

/-! ## A351619.P9886190127172340514

`A010684(n)-A083399(n+1)`
-/

namespace A351619.P9886190127172340514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n - A083399 (n + 1)

end

end A351619.P9886190127172340514

namespace A351619

/-- `A010684(n)-A083399(n+1)` -/
def P9886190127172340514.Spec : Prop :=
  ∀ n, P9886190127172340514.a n = A351619 (n + 1)

end A351619

/-! ## A351619.P7640071008638053400

`A000034(n)-A099812(n+1)`
-/

namespace A351619.P7640071008638053400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n - A099812 (n + 1)

end

end A351619.P7640071008638053400

namespace A351619

/-- `A000034(n)-A099812(n+1)` -/
def P7640071008638053400.Spec : Prop :=
  ∀ n, P7640071008638053400.a n = A351619 (n + 1)

end A351619

/-! ## A351619.P11618222621944485006

`A062157(n)-A297155(n+1)`
-/

namespace A351619.P11618222621944485006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n - A297155 (n + 1)

end

end A351619.P11618222621944485006

namespace A351619

/-- `A062157(n)-A297155(n+1)` -/
def P11618222621944485006.Spec : Prop :=
  ∀ n, P11618222621944485006.a n = A351619 (n + 1)

end A351619

/-! ## A351619.P4785361463267645321

`A378993(n+1)-A004442(n)`
-/

namespace A351619.P4785361463267645321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378993 (n + 1) - A004442 n

end

end A351619.P4785361463267645321

namespace A351619

/-- `A378993(n+1)-A004442(n)` -/
def P4785361463267645321.Spec : Prop :=
  ∀ n, P4785361463267645321.a n = A351619 (n + 1)

end A351619

/-! ## A351619.P11381392129682654258

`Δ[A008619(n)]-A005087(n+1)`
-/

namespace A351619.P11381392129682654258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005087 (n + 1)

end

end A351619.P11381392129682654258

namespace A351619

/-- `Δ[A008619(n)]-A005087(n+1)` -/
def P11381392129682654258.Spec : Prop :=
  ∀ n, P11381392129682654258.a n = A351619 (n + 1)

end A351619

/-!
# A351620: a(1) = 1; a(n) = a(n-1) + Sum_{k=2..n} a(floor(n/k)).

The programs for A351620, there is no canonical definition to state claims against.
-/

/-! ## A351620.P7649945413165346686

`∑[A320225(n+1)]`
-/

namespace A351620.P7649945413165346686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351620.P7649945413165346686

/-! ## A351620.P4281095249010504100

`∑{d}[A000079(n), A320225(A000005(#))]`
-/

namespace A351620.P4281095249010504100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A320225 (A000005 d).toNat

end

end A351620.P4281095249010504100

/-! ## A351620.P17625649208081330636

`∑[ceil(A003056(A345139(n+1)²)/2)]`
-/

namespace A351620.P17625649208081330636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003056 (A345139 (n + 1) ^ 2).toNat : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351620.P17625649208081330636

/-! ## A351620.P955605702429171262

`∑[A092982(A345139(n+1)+A004526(n))]`
-/

namespace A351620.P955605702429171262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092982 (A345139 (n + 1) + A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351620.P955605702429171262

/-! ## A351620.P8171835413294052145

`∑[A157684(A011979(n+4))]`
-/

namespace A351620.P8171835413294052145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157684 (A011979 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351620.P8171835413294052145

/-!
# A351621: a(1) = 1; a(n) = 1 + a(n-1) + Sum_{k=2..n} a(floor(n/k)).

The programs for A351621, there is no canonical definition to state claims against.
-/

/-! ## A351621.P3297209485096263234

`∑[A345139(n+1)]`
-/

namespace A351621.P3297209485096263234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351621.P3297209485096263234

/-! ## A351621.P6328864378095985976

`∑[record[A345139(ceil(C(or(1, n), n)/2))]]`
-/

namespace A351621.P6328864378095985976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345139 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351621.P6328864378095985976

/-! ## A351621.P4648673620328016046

`∑[record[A345139(A020986(n))]]`
-/

namespace A351621.P4648673620328016046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345139 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351621.P4648673620328016046

/-! ## A351621.P12997098043782439599

`∑[record[A345139(A065648(n))]]`
-/

namespace A351621.P12997098043782439599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345139 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351621.P12997098043782439599

/-! ## A351621.P1107499936230427619

`∑[record[A345139(A126759(n))]]`
-/

namespace A351621.P1107499936230427619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345139 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351621.P1107499936230427619

/-! ## A351621.P8024465364276747751

`∑[record[A345139(A133310(n))]]`
-/

namespace A351621.P8024465364276747751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345139 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351621.P8024465364276747751

/-! ## A351621.P14268574477612230350

`∑[record[A345139(A134478(n))]]`
-/

namespace A351621.P14268574477612230350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345139 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351621.P14268574477612230350

/-! ## A351621.P1651549348302929376

`∑[record[A345139(A143182(n))]]`
-/

namespace A351621.P1651549348302929376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345139 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351621.P1651549348302929376

/-! ## A351621.P10903524071248638072

`∑[record[A345139(A152271(n))]]`
-/

namespace A351621.P10903524071248638072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345139 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351621.P10903524071248638072

/-! ## A351621.P12978155030941435647

`∑[record[A345139(A033930(n))]]`
-/

namespace A351621.P12978155030941435647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345139 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351621.P12978155030941435647

/-!
# A351622: Palindromic primes (palprimes) whose sum of factorials of digits is also a palprime.

The programs for A351622, there is no canonical definition to state claims against.
-/

/-! ## A351622.P16700382345708824417

`∩[A083394(n+1), A134996(n+1)]`
-/

namespace A351622.P16700382345708824417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351622.P16700382345708824417

/-!
# A351623: Numbers k where 3k sets a record for the number of divisors of multiples of 3.

The programs for A351623, there is no canonical definition to state claims against.
-/

/-! ## A351623.P16887463878352156142

`floor(A002182(n+3)/3)`
-/

namespace A351623.P16887463878352156142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002182 (n + 3) : ℚ) / 3⌋

end

end A351623.P16887463878352156142

/-! ## A351623.P7126506880623949417

`floor(A135372(n+3)/3)`
-/

namespace A351623.P7126506880623949417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135372 (n + 3) : ℚ) / 3⌋

end

end A351623.P7126506880623949417

/-! ## A351623.P5818672656053112200

`Δ[round(∑[A002182(n+2)]/3)]`
-/

namespace A351623.P5818672656053112200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351623.P5818672656053112200

/-! ## A351623.P7238243076997277676

`round((A135372(4/2+n+1)-1)/3)`
-/

namespace A351623.P7238243076997277676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A135372 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 + (n : ℚ) + 1)).toNat - 1 : ℚ) / 3)

end

end A351623.P7238243076997277676

/-!
# A351624: Fixed points of A093714.

The programs for A351624, there is no canonical definition to state claims against.
-/

/-! ## A351624.P12895652499836615893

`eq[0, A352931(n+1)]+1`
-/

namespace A351624.P12895652499836615893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A351624.P12895652499836615893

/-! ## A351624.P5429871485591503674

`eq[0, A353706(n+1)]+1`
-/

namespace A351624.P5429871485591503674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A351624.P5429871485591503674

/-! ## A351624.P11615265031923360831

`eq[A048671(n+1), A352588(n+1)]+1`
-/

namespace A351624.P11615265031923360831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352588 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A351624.P11615265031923360831

/-! ## A351624.P16571491631397620290

`eq[A000007(n), A352931(A028310(n))]`
-/

namespace A351624.P16571491631397620290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352931 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351624.P16571491631397620290

/-! ## A351624.P12580055914178663469

`eq[A000038(n), A352931(A028310(n))]`
-/

namespace A351624.P12580055914178663469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352931 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351624.P12580055914178663469

/-! ## A351624.P17120770178483576541

`eq[A093714(n+1), A093714(A093714(n+1))]+1`
-/

namespace A351624.P17120770178483576541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093714 (A093714 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A351624.P17120770178483576541

/-!
# A351625: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest positive number that has not appeared that shares a factor with the largest previous term.

The programs for A351625, there is no canonical definition to state claims against.
-/

/-! ## A351625.P1621061563845770474

`A352976(n+1)-A185284(A084937(n+1))`
-/

namespace A351625.P1621061563845770474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352976 (n + 1) - A185284 (A084937 (n + 1)).toNat

end

end A351625.P1621061563845770474

/-! ## A351625.P10892689439017900943

`A352976(n+1)-A025463(A316893(3*n+2))`
-/

namespace A351625.P10892689439017900943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352976 (n + 1) - A025463 (A316893 (3 * n + 2)).toNat

end

end A351625.P10892689439017900943

/-! ## A351625.P676421975834659924

`A066401(A352976(n+1)²)`
-/

namespace A351625.P676421975834659924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066401 (A352976 (n + 1) ^ 2).toNat

end

end A351625.P676421975834659924

/-! ## A351625.P18176848487757985146

`gcd(∏[A001769(n)], A352976(n+1))`
-/

namespace A351625.P18176848487757985146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A352976 (n + 1))

end

end A351625.P18176848487757985146

/-! ## A351625.P11994299366804391926

`A352976(n+1)%A305667(n+1)`
-/

namespace A351625.P11994299366804391926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352976 (n + 1)) (A305667 (n + 1))

end

end A351625.P11994299366804391926

/-!
# A351627: a(n) = A133411(n+1)/A133411(n).

The programs for A351627, there is no canonical definition to state claims against.
-/

/-! ## A351627.P7938663505561446313

`A133411(n+2)/A133411(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351627.P7938663505561446313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133411 (n + 2) : ℚ) / (A133411 (n + 1) : ℚ)

end

end A351627.P7938663505561446313

/-! ## A351627.P2199174297363873801

`ratio[A133411(n+1)]`
-/

namespace A351627.P2199174297363873801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133411 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A351627.P2199174297363873801

/-! ## A351627.P14052891940074006293

`ratio[A328521(A055645(n))]`
-/

namespace A351627.P14052891940074006293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328521 (A055645 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A351627.P14052891940074006293

/-! ## A351627.P1677606503756597465

`ratio[A328521(n)]%A328543(2*n+1)`
-/

namespace A351627.P1677606503756597465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))) (A328543 (2 * n + 1))

end

end A351627.P1677606503756597465

/-!
# A351628: Partial sums of A352717.

The programs for A351628, there is no canonical definition to state claims against.
-/

/-! ## A351628.P5368203411668231482

`∑[A352717(n+1)]`
-/

namespace A351628.P5368203411668231482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351628.P5368203411668231482

/-! ## A351628.P1039792429643545164

`∑[A280694((n+1)*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A351628.P1039792429643545164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A280694 ((n + 1 : ℤ) * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351628.P1039792429643545164

/-! ## A351628.P7344762952317955270

`∑[A000032(A130241(n+1))]`
-/

namespace A351628.P7344762952317955270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A130241 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351628.P7344762952317955270

/-! ## A351628.P12939320046415360625

`∑[A000204(A130247(n+1)+char[1])]`
-/

namespace A351628.P12939320046415360625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (A130247 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351628.P12939320046415360625

/-! ## A351628.P16598155516568705223

`∑[A000032(∑[char[∑[A000032(n)]]]+1)]`
-/

namespace A351628.P16598155516568705223
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351628.P16598155516568705223

/-! ## A351628.P6859402461286845254

`∑[A000032(A130247(n+1)+A063524(n))]`
-/

namespace A351628.P6859402461286845254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A130247 (n + 1) + A063524 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351628.P6859402461286845254

/-!
# A351631: The numbers that are not doubled in column -1 of the extended Trithoff (tribonacci) array.

The programs for A351631, the canonical program `A351631.P11342261309472884604` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351631 has offset 1).

The definition of A351631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351631.P5602554186593183573

`comp[A278039(n)+1]`
-/

namespace A351631.P5602554186593183573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A351631.P5602554186593183573

namespace A351631

/-- `comp[A278039(n)+1]` -/
def P5602554186593183573.Spec : Prop :=
  ∀ n, (P5602554186593183573.a n : ℤ) = A351631 (n + 1)

end A351631

/-! ## A351631.P11342261309472884604

`lt[A275925(n+1), 6]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A351631

/-- `lt[A275925(n+1), 6]` -/
def P11342261309472884604.Spec : Prop :=
  ∀ n, (P11342261309472884604.a n : ℤ) = A351631 (n + 1)

theorem P11342261309472884604.correct : P11342261309472884604.Spec := by
  intro n
  simp only [A351631, Nat.add_sub_cancel]

end A351631

/-! ## A351631.P9130670855790622256

`A385455(n+1)+1+n`
-/

namespace A351631.P9130670855790622256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385455 (n + 1) + 1 + (n : ℤ)

end

end A351631.P9130670855790622256

namespace A351631

/-- `A385455(n+1)+1+n` -/
def P9130670855790622256.Spec : Prop :=
  ∀ n, P9130670855790622256.a n = A351631 (n + 1)

theorem P9130670855790622256.correct : P9130670855790622256.Spec := by
  intro n
  simp only [A351631, Nat.add_sub_cancel, A351631.P9130670855790622256.a, A351631.P11342261309472884604.f1, A351631.P11342261309472884604.f2, A351631.P11342261309472884604.a, A275925, A275925.P1014596103965212206.a, A385455, A385455.P302993814553403510.a, A003796, A003796.P430726989961333611.f1, A003796.P430726989961333611.f2, A003796.P430726989961333611.a, A056974, A056974.P14269005406388105579.a, A014082, A014082.P16446960074050354385.a, A035327, A035327.P258997810375859489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A351631

/-! ## A351631.P13832338902607560950

`A278039(A385455(n+1)+1)`
-/

namespace A351631.P13832338902607560950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A385455 (n + 1) + 1).toNat

end

end A351631.P13832338902607560950

namespace A351631

/-- `A278039(A385455(n+1)+1)` -/
def P13832338902607560950.Spec : Prop :=
  ∀ n, P13832338902607560950.a n = A351631 (n + 1)

end A351631

/-! ## A351631.P2710204497224805611

`A385533(n+1)+A288463(n+1)`
-/

namespace A351631.P2710204497224805611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385533 (n + 1) + A288463 (n + 1)

end

end A351631.P2710204497224805611

namespace A351631

/-- `A385533(n+1)+A288463(n+1)` -/
def P2710204497224805611.Spec : Prop :=
  ∀ n, P2710204497224805611.a n = A351631 (n + 1)

theorem P2710204497224805611.correct : P2710204497224805611.Spec := by
  intro n
  simp only [A351631, Nat.add_sub_cancel, A351631.P2710204497224805611.a, A351631.P11342261309472884604.f1, A351631.P11342261309472884604.f2, A351631.P11342261309472884604.a, A275925, A275925.P1014596103965212206.a, A288463, A288463.P14445574240156194646.a, A385533, A385533.P17951931454137274781.a, A003796, A003796.P430726989961333611.f1, A003796.P430726989961333611.f2, A003796.P430726989961333611.a, A385532, A385532.P17146396601814636055.f2, A385532.P17146396601814636055.f1, A385532.P17146396601814636055.a, A056974, A056974.P14269005406388105579.a, A140101, A140101.P15800623837645593610.f1, A140101.P15800623837645593610.a, A014082, A014082.P16446960074050354385.a, A035327, A035327.P258997810375859489.a, A140100, A140100.P9463033727352148210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A351631

/-! ## A351631.P10042134222988506313

`lt[0, A278045(n)%3]`
-/

namespace A351631.P10042134222988506313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278045 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A351631.P10042134222988506313

namespace A351631

/-- `lt[0, A278045(n)%3]` -/
def P10042134222988506313.Spec : Prop :=
  ∀ n, (P10042134222988506313.a n : ℤ) = A351631 (n + 1)

end A351631

/-! ## A351631.P3934942848225589702

`comp[A003144(n+1)]`
-/

namespace A351631.P3934942848225589702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A351631.P3934942848225589702

namespace A351631

/-- `comp[A003144(n+1)]` -/
def P3934942848225589702.Spec : Prop :=
  ∀ n, (P3934942848225589702.a n : ℤ) = A351631 (n + 1)

end A351631

/-! ## A351631.P9803967209183358724

`eq[0, A356898(n)]`
-/

namespace A351631.P9803967209183358724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351631.P9803967209183358724

namespace A351631

/-- `eq[0, A356898(n)]` -/
def P9803967209183358724.Spec : Prop :=
  ∀ n, (P9803967209183358724.a n : ℤ) = A351631 (n + 1)

end A351631

/-! ## A351631.P17072386330618378634

`eq[0, A352103(n)%2]`
-/

namespace A351631.P17072386330618378634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352103 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351631.P17072386330618378634

namespace A351631

/-- `eq[0, A352103(n)%2]` -/
def P17072386330618378634.Spec : Prop :=
  ∀ n, (P17072386330618378634.a n : ℤ) = A351631 (n + 1)

end A351631

/-! ## A351631.P17674875775974056545

`A385436(∑[n]+1)`
-/

namespace A351631.P17674875775974056545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385436 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A351631.P17674875775974056545

namespace A351631

/-- `A385436(∑[n]+1)` -/
def P17674875775974056545.Spec : Prop :=
  ∀ n, P17674875775974056545.a n = A351631 (n + 1)

end A351631

/-!
# A351632: Number of copies of the star graph S(2,1,1,1) contained in the n-dimensional hypercube graph.

The programs for A351632, the canonical program `A351632.P6642896738446716116` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351632 has offset 1).

The definition of A351632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351632.P6642896738446716116

`2^(n+1)*C(n+1, 3)*n*(n-2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A351632

/-- `2^(n+1)*C(n+1, 3)*n*(n-2)` -/
def P6642896738446716116.Spec : Prop :=
  ∀ n, P6642896738446716116.a n = A351632 (n + 1)

theorem P6642896738446716116.correct : P6642896738446716116.Spec := by
  intro n
  simp only [A351632, Nat.add_sub_cancel]

end A351632

/-! ## A351632.P12691158943923754710

`∑[2*n]*A290031(n)`
-/

namespace A351632.P12691158943923754710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A290031 n

end

end A351632.P12691158943923754710

namespace A351632

/-- `∑[2*n]*A290031(n)` -/
def P12691158943923754710.Spec : Prop :=
  ∀ n, P12691158943923754710.a n = A351632 (n + 1)

end A351632

/-! ## A351632.P17810606760197186204

`C(n, 3)*A128796(n+1)`
-/

namespace A351632.P17810606760197186204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) * A128796 (n + 1)

end

end A351632.P17810606760197186204

namespace A351632

/-- `C(n, 3)*A128796(n+1)` -/
def P17810606760197186204.Spec : Prop :=
  ∀ n, P17810606760197186204.a n = A351632 (n + 1)

theorem P17810606760197186204.correct : P17810606760197186204.Spec := by
  intro n
  simp only [A351632, Nat.add_sub_cancel, A351632.P17810606760197186204.a, A351632.P6642896738446716116.a, A128796, A128796.P2345555735138113176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A351632

/-! ## A351632.P17858537839908534153

`2*(n²+n)*A000079(n)*C(n, 3)`
-/

namespace A351632.P17858537839908534153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n ^ 2 + n : ℤ) * A000079 n * (Nat.choose n 3 : ℤ))

end

end A351632.P17858537839908534153

namespace A351632

/-- `2*(n²+n)*A000079(n)*C(n, 3)` -/
def P17858537839908534153.Spec : Prop :=
  ∀ n, P17858537839908534153.a n = A351632 (n + 1)

theorem P17858537839908534153.correct : P17858537839908534153.Spec := by
  intro n
  simp only [A351632, Nat.add_sub_cancel, A351632.P17858537839908534153.a, A351632.P6642896738446716116.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A351632

/-! ## A351632.P14836258653341563573

`2*2*n*(n+1)*A131577(n)*C(n, 3)`
-/

namespace A351632.P14836258653341563573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * ((n : ℤ) * ((n + 1 : ℤ) * A131577 n * (Nat.choose n 3 : ℤ))))

end

end A351632.P14836258653341563573

namespace A351632

/-- `2*2*n*(n+1)*A131577(n)*C(n, 3)` -/
def P14836258653341563573.Spec : Prop :=
  ∀ n, P14836258653341563573.a n = A351632 (n + 1)

end A351632

/-! ## A351632.P13860320701471875795

`A004277(2*n)*A331419(2*(n+1))`
-/

namespace A351632.P13860320701471875795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) * A331419 (2 * (n + 1))

end

end A351632.P13860320701471875795

namespace A351632

/-- `A004277(2*n)*A331419(2*(n+1))` -/
def P13860320701471875795.Spec : Prop :=
  ∀ n, P13860320701471875795.a n = A351632 (n + 1)

end A351632

/-! ## A351632.P10872650041281514555

`2*n*A057711(n+1)*A007290(n)`
-/

namespace A351632.P10872650041281514555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A057711 (n + 1) * A007290 n

end

end A351632.P10872650041281514555

namespace A351632

/-- `2*n*A057711(n+1)*A007290(n)` -/
def P10872650041281514555.Spec : Prop :=
  ∀ n, P10872650041281514555.a n = A351632 (n + 1)

end A351632

/-! ## A351632.P6760182684906108268

`2^n*A034827(n+1)*A008574(n)`
-/

namespace A351632.P6760182684906108268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A034827 (n + 1) * A008574 n

end

end A351632.P6760182684906108268

namespace A351632

/-- `2^n*A034827(n+1)*A008574(n)` -/
def P6760182684906108268.Spec : Prop :=
  ∀ n, P6760182684906108268.a n = A351632 (n + 1)

end A351632

/-! ## A351632.P1805483114591224813

`∑[2*n]*Δ[A000051(n)]*A007290(n)`
-/

namespace A351632.P1805483114591224813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * ((f2 (n + 1) - f2 n) * A007290 n)

end

end A351632.P1805483114591224813

namespace A351632

/-- `∑[2*n]*Δ[A000051(n)]*A007290(n)` -/
def P1805483114591224813.Spec : Prop :=
  ∀ n, P1805483114591224813.a n = A351632 (n + 1)

end A351632

/-! ## A351632.P14910629395170586543

`(A000225(abs(1-n))+1)*A046092(n)*2*C(n, 3)`
-/

namespace A351632.P14910629395170586543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 |1 - (n : ℤ)|.toNat + 1) * A046092 n * (2 * Nat.choose n 3 : ℤ)

end

end A351632.P14910629395170586543

namespace A351632

/-- `(A000225(abs(1-n))+1)*A046092(n)*2*C(n, 3)` -/
def P14910629395170586543.Spec : Prop :=
  ∀ n, P14910629395170586543.a n = A351632 (n + 1)

end A351632

/-!
# A351633: G.f. A(x) satisfies: 1 = Sum_{n>=0} (-x)^n * A(x)^n * (1 - (-x)^(n+1))^(n+1).

The programs for A351633, there is no canonical definition to state claims against.
-/

/-! ## A351633.P6004838488802482333

`A157271(A271941(n+2)+floor(n-atan(n)))`
-/

namespace A351633.P6004838488802482333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A271941 (n + 2) + ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋).toNat

end

end A351633.P6004838488802482333

/-! ## A351633.P16897562103366379594

`A248231(A005773(n)+A000108(n))`
-/

namespace A351633.P16897562103366379594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A005773 n + A000108 n).toNat

end

end A351633.P16897562103366379594

/-! ## A351633.P10059904995560851814

`A127757(A307570(n)+A000219(n))`
-/

namespace A351633.P10059904995560851814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A307570 n + A000219 n).toNat

end

end A351633.P10059904995560851814

/-! ## A351633.P5153434149253029011

`A248231(A191354(n)+A007318(n))`
-/

namespace A351633.P5153434149253029011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A191354 n + A007318 n).toNat

end

end A351633.P5153434149253029011

/-!
# A351634: G.f. A(x) satisfies: 1 + x = P(A(x)) / Q(A(x)), where P(x) = Product_{n>=0} (1 + x^(5*n+1))*(1 + x^(5*n+4)) and Q(x) = Product_{n>=0} (1 + x^(5*n+2))*(1 + x^(5*n+3)), with A(0) = 0, A'(0) = 1.

The programs for A351634, there is no canonical definition to state claims against.
-/

/-! ## A351634.P1594035562537463968

`A110656(3*A150951(n))`
-/

namespace A351634.P1594035562537463968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (3 * A150951 n).toNat

end

end A351634.P1594035562537463968

/-! ## A351634.P3649118096549137631

`A307488(n)+A033665(A352146(n))`
-/

namespace A351634.P3649118096549137631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307488 n + A033665 (A352146 n).toNat

end

end A351634.P3649118096549137631

/-! ## A351634.P9133752317050000716

`A307598(A307569(n))+A307488(n)`
-/

namespace A351634.P9133752317050000716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A307569 n).toNat + A307488 n

end

end A351634.P9133752317050000716

/-!
# A351635: a(n) is the number of perfect matchings of an edge-labeled 2 X n Klein bottle grid graph, or equivalently the number of domino tilings of a 2 X n Klein bottle grid. (The twist is on the length-n side.)

The programs for A351635, the canonical program `A351635.P4980103002490702875` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351635 has offset 1).

The definition of A351635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351635.P17657693864022593947

`a(n-1)+a(n-2)+(n+1)%2*a(n-1)-4*(n+1)%2` with `a(0)=2, a(1)=6`
-/

namespace A351635.P17657693864022593947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  a (n - 1) + a (n - 2) + (((n + 1) % 2 : ℕ) : ℤ) * a (n - 1) - ((4 * ((n + 1) % 2) : ℕ) : ℤ)

end

end A351635.P17657693864022593947

namespace A351635

/-- `a(n-1)+a(n-2)+(n+1)%2*a(n-1)-4*(n+1)%2` -/
def P17657693864022593947.Spec : Prop :=
  ∀ n, P17657693864022593947.a n = A351635 (n + 1)

end A351635

/-! ## A351635.P4980103002490702875

`5*a(n-2)-5*a(n-4)+a(n-6)` with `a(0)=2, a(1)=6, a(2)=10, a(3)=16, a(4)=38, a(5)=54`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A351635

/-- `5*a(n-2)-5*a(n-4)+a(n-6)` -/
def P4980103002490702875.Spec : Prop :=
  ∀ n, P4980103002490702875.a n = A351635 (n + 1)

theorem P4980103002490702875.correct : P4980103002490702875.Spec := by
  intro n
  simp only [A351635, Nat.add_sub_cancel]

end A351635

/-! ## A351635.P15320293153497722642

`2*(A002531(n+1)+n%2)`
-/

namespace A351635.P15320293153497722642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002531 (n + 1) + ((n % 2 : ℕ) : ℤ))

end

end A351635.P15320293153497722642

namespace A351635

/-- `2*(A002531(n+1)+n%2)` -/
def P15320293153497722642.Spec : Prop :=
  ∀ n, P15320293153497722642.a n = A351635 (n + 1)

end A351635

/-! ## A351635.P9374469872228557806

`A010684(n)+record[A174510(n)]`
-/

namespace A351635.P9374469872228557806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351635.P9374469872228557806

namespace A351635

/-- `A010684(n)+record[A174510(n)]` -/
def P9374469872228557806.Spec : Prop :=
  ∀ n, P9374469872228557806.a n = A351635 (n + 1)

end A351635

/-! ## A351635.P15764141137763747840

`2*(A002531(n+1)+A000035(n))`
-/

namespace A351635.P15764141137763747840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002531 (n + 1) + A000035 n)

end

end A351635.P15764141137763747840

namespace A351635

/-- `2*(A002531(n+1)+A000035(n))` -/
def P15764141137763747840.Spec : Prop :=
  ∀ n, P15764141137763747840.a n = A351635 (n + 1)

end A351635

/-! ## A351635.P9932873802948995382

`2-(a(n-1)-2*A259593(n))` with `a(0)=2`
-/

namespace A351635.P9932873802948995382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - (a (n - 1) - 2 * A259593 n)

end

end A351635.P9932873802948995382

namespace A351635

/-- `2-(a(n-1)-2*A259593(n))` -/
def P9932873802948995382.Spec : Prop :=
  ∀ n, P9932873802948995382.a n = A351635 (n + 1)

end A351635

/-!
# A351637: Triangle read by rows: T(n,k) is the number of length n word structures with all distinct run-lengths using exactly k different symbols, n >= 0, k = 0..floor(sqrt(8*n+1)-1/2).

The programs for A351637, there is no canonical definition to state claims against.
-/

/-! ## A351637.P3288651713838541426

`sqrt(A350824(n)*A351645(n))`
-/

namespace A351637.P3288651713838541426
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A350824 n * A351645 n : ℝ)

end

end A351637.P3288651713838541426

/-! ## A351637.P1706255383266351722

`A237451(n+1)!*A351645(n)`
-/

namespace A351637.P1706255383266351722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A237451 (n + 1)).toNat : ℤ) * A351645 n

end

end A351637.P1706255383266351722

/-! ## A351637.P5105785293569682977

`A350824(n)/A237451(n+1)!`
-/

namespace A351637.P5105785293569682977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350824 n : ℚ) / (Nat.factorial (A237451 (n + 1)).toNat : ℚ)

end

end A351637.P5105785293569682977

/-! ## A351637.P15417339897542508899

`(A350824(n)*A351645(n))^((A000038(n)+1)/2)`
-/

namespace A351637.P15417339897542508899
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A350824 n * A351645 n : ℝ) ^ ((A000038 n + 1 : ℚ) / 2 : ℝ)

end

end A351637.P15417339897542508899

/-! ## A351637.P13277191407376281745

`A000194(A350824(n)*A351645(n))`
-/

namespace A351637.P13277191407376281745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A350824 n * A351645 n).toNat

end

end A351637.P13277191407376281745

/-!
# A351638: Number of length n word structures with all distinct run-lengths using an infinite alphabet.

The programs for A351638, there is no canonical definition to state claims against.
-/

/-! ## A351638.P3418384136728947994

`A321655(n)+1-A321662(n)`
-/

namespace A351638.P3418384136728947994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321655 n + (1 - A321662 n)

end

end A351638.P3418384136728947994

/-! ## A351638.P42134394728808299

`A014681(A321655(n))-A321662(n)`
-/

namespace A351638.P42134394728808299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A321655 n).toNat - A321662 n

end

end A351638.P42134394728808299

/-! ## A351638.P7238894423192830320

`A351639(n^(2-∑{p}[n^3, val(#, 11)]^floor(n/10))²)`
-/

namespace A351638.P7238894423192830320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351639 (SequenceMachineLib.roundAway ((n : ℝ) ^ ((2 - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 11 : ℕ) : ℚ) ^ (⌊(n : ℚ) / 10⌋ : ℤ)) ^ 2 : ℝ))).toNat

end

end A351638.P7238894423192830320

/-! ## A351638.P14235619029805075190

`A351639(A087051(n))`
-/

namespace A351638.P14235619029805075190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351639 (A087051 n).toNat

end

end A351638.P14235619029805075190

/-! ## A351638.P5577196639395435271

`A351639(A349423(n))`
-/

namespace A351638.P5577196639395435271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351639 (A349423 n).toNat

end

end A351638.P5577196639395435271

/-!
# A351639: Number of length n word structures with all distinct run-lengths using at most 3 symbols.

The programs for A351639, there is no canonical definition to state claims against.
-/

/-! ## A351639.P11613832963983604924

`ceil(A032043(n)/2)`
-/

namespace A351639.P11613832963983604924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032043 n : ℚ) / 2⌉

end

end A351639.P11613832963983604924

/-! ## A351639.P5015860185102603142

`ceil(A032005(n)/4)`
-/

namespace A351639.P5015860185102603142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032005 n : ℚ) / 4⌉

end

end A351639.P5015860185102603142

/-! ## A351639.P964519099065905942

`(A397660(n)+1)/2`
-/

namespace A351639.P964519099065905942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397660 n + 1 : ℚ) / 2

end

end A351639.P964519099065905942

/-! ## A351639.P76703098392995575

`A032043(round(acot(n)+n))/2`
-/

namespace A351639.P76703098392995575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032043 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ) / 2

end

end A351639.P76703098392995575

/-! ## A351639.P3160288708375290339

`A032043(round(sqrt(n²+1)))/2`
-/

namespace A351639.P3160288708375290339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032043 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

end

end A351639.P3160288708375290339

/-! ## A351639.P14682078227954571454

`(A032005(round(acot(n)+n))/2+1)/2`
-/

namespace A351639.P14682078227954571454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A032005 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ) / 2 + 1) / 2

end

end A351639.P14682078227954571454

/-! ## A351639.P3870010301777892418

`A032043(n)/A032005(n)*A397660(n)`
-/

namespace A351639.P3870010301777892418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032043 n : ℚ) / (A032005 n : ℚ) * (A397660 n : ℚ)

end

end A351639.P3870010301777892418

/-! ## A351639.P6370953257587634152

`A011782(n)/A011782(n+1)*A032043(n)`
-/

namespace A351639.P6370953257587634152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n : ℚ) / (A011782 (n + 1) : ℚ) * (A032043 n : ℚ)

end

end A351639.P6370953257587634152

/-!
# A351640: Triangle read by rows: T(n,k) is the number of patterns of length n with all distinct runs and maximum value k.

The programs for A351640, there is no canonical definition to state claims against.
-/

/-! ## A351640.P13335767973508267421

`A233543(n)*A351641(n)`
-/

namespace A351640.P13335767973508267421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A351641 n

end

end A351640.P13335767973508267421

/-! ## A351640.P14748209940399156806

`A002262(n)!*A351641(n)`
-/

namespace A351640.P14748209940399156806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A351641 n

end

end A351640.P14748209940399156806

/-! ## A351640.P13245745358854351272

`log2(A059268(n))!*A351641(n)`
-/

namespace A351640.P13245745358854351272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat : ℤ) * A351641 n

end

end A351640.P13245745358854351272

/-! ## A351640.P13500938837062916647

`A144328(n+1)!*A351641(n)`
-/

namespace A351640.P13500938837062916647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A351641 n

end

end A351640.P13500938837062916647

/-! ## A351640.P830363814396782431

`A166350(A028310(n))*A351641(n)`
-/

namespace A351640.P830363814396782431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (A028310 n).toNat * A351641 n

end

end A351640.P830363814396782431

/-! ## A351640.P12613897355852419942

`A166350(A007401(n+1))*A351641(n)`
-/

namespace A351640.P12613897355852419942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (A007401 (n + 1)).toNat * A351641 n

end

end A351640.P12613897355852419942

/-!
# A351641: Triangle read by rows: T(n,k) is the number of length n word structures with all distinct runs using exactly k different symbols.

The programs for A351641, there is no canonical definition to state claims against.
-/

/-! ## A351641.P6516743840850164354

`A351640(n)/A233543(n)`
-/

namespace A351641.P6516743840850164354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351640 n : ℚ) / (A233543 n : ℚ)

end

end A351641.P6516743840850164354

/-! ## A351641.P13194096858745259519

`A351640(n)/A002262(n)!`
-/

namespace A351641.P13194096858745259519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351640 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A351641.P13194096858745259519

/-! ## A351641.P14390087903783595072

`A351640(n)/A144328(n+1)!`
-/

namespace A351641.P14390087903783595072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351640 n : ℚ) / (Nat.factorial (A144328 (n + 1)).toNat : ℚ)

end

end A351641.P14390087903783595072

/-! ## A351641.P4856767443964561065

`A351640(n)/A166350(A028310(n))`
-/

namespace A351641.P4856767443964561065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351640 n : ℚ) / (A166350 (A028310 n).toNat : ℚ)

end

end A351641.P4856767443964561065

/-! ## A351641.P15337068136637380391

`A351640(n)/A166350(A007401(n+1))`
-/

namespace A351641.P15337068136637380391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351640 n : ℚ) / (A166350 (A007401 (n + 1)).toNat : ℚ)

end

end A351641.P15337068136637380391

/-! ## A351641.P13147635873835913860

`A351640(n)/A166350(A066182(n+1))`
-/

namespace A351641.P13147635873835913860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351640 n : ℚ) / (A166350 (A066182 (n + 1)).toNat : ℚ)

end

end A351641.P13147635873835913860

/-!
# A351642: Number of length n word structures with all distinct runs using an infinite alphabet.

The programs for A351642, there is no canonical definition to state claims against.
-/

/-! ## A351642.P1251339760676163

`A230662(A073790(n))`
-/

namespace A351642.P1251339760676163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230662 (A073790 n).toNat

end

end A351642.P1251339760676163

/-! ## A351642.P2541317310749806710

`A230662(A004881(n+1))`
-/

namespace A351642.P2541317310749806710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230662 (A004881 (n + 1)).toNat

end

end A351642.P2541317310749806710

/-! ## A351642.P4577719408560381679

`A230662(A004892(n+1))`
-/

namespace A351642.P4577719408560381679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230662 (A004892 (n + 1)).toNat

end

end A351642.P4577719408560381679

/-! ## A351642.P16020424627751070555

`A230662(A004903(n+1))`
-/

namespace A351642.P16020424627751070555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230662 (A004903 (n + 1)).toNat

end

end A351642.P16020424627751070555

/-! ## A351642.P15411635602455330377

`A230662(A004914(n+1))`
-/

namespace A351642.P15411635602455330377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230662 (A004914 (n + 1)).toNat

end

end A351642.P15411635602455330377

/-!
# A351643: Number of length n word structures with all distinct runs using exactly 3 symbols.

The programs for A351643, there is no canonical definition to state claims against.
-/

/-! ## A351643.P15731636457386568443

`A351644(n+1)-A351018(n+1)`
-/

namespace A351643.P15731636457386568443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351644 (n + 1) - A351018 (n + 1)

end

end A351643.P15731636457386568443

/-! ## A351643.P16655860261211875245

`A351641(A253145(n)+3)`
-/

namespace A351643.P16655860261211875245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351641 (A253145 n + 3).toNat

end

end A351643.P16655860261211875245

/-! ## A351643.P8094375126481092639

`A351641(A134869(n+1)+2)`
-/

namespace A351643.P8094375126481092639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351641 (A134869 (n + 1) + 2).toNat

end

end A351643.P8094375126481092639

/-! ## A351643.P2402337027941974312

`A351641(A133263(n)+2+n)`
-/

namespace A351643.P2402337027941974312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351641 (A133263 n + 2 + (n : ℤ)).toNat

end

end A351643.P2402337027941974312

/-! ## A351643.P9032160633985295628

`A351641(∑[A233583(n+1)+1])`
-/

namespace A351643.P9032160633985295628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351641 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A351643.P9032160633985295628

/-!
# A351644: Number of length n word structures with all distinct runs using at most 3 symbols.

The programs for A351644, there is no canonical definition to state claims against.
-/

/-! ## A351644.P16006703130072981069

`A351643(round(acot(n)+n))+A351018(n)`
-/

namespace A351644.P16006703130072981069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351643 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A351018 n

end

end A351644.P16006703130072981069

/-! ## A351644.P16397278386377528967

`A351643(round(sqrt(n²+1)))+A351018(n)`
-/

namespace A351644.P16397278386377528967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351643 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A351018 n

end

end A351644.P16397278386377528967

/-! ## A351644.P15287552554300008917

`A351643(A028310(n))+ceil(A351016(n)/2)`
-/

namespace A351644.P15287552554300008917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351643 (A028310 n).toNat + ⌈(A351016 n : ℚ) / 2⌉

end

end A351644.P15287552554300008917

/-! ## A351644.P14866017290244472830

`A008651((A013929(n+1)+1)*A000051(n))`
-/

namespace A351644.P14866017290244472830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 ((A013929 (n + 1) + 1) * A000051 n).toNat

end

end A351644.P14866017290244472830

/-!
# A351645: Triangle read by rows: T(n,k) is the number of length n word structures using exactly k different symbols with all distinct run-lengths and the first run length of a symbol less than that of previous symbols, n >= 0, k = 0..floor(sqrt(8*n+1)-1/2).

The programs for A351645, there is no canonical definition to state claims against.
-/

/-! ## A351645.P5405525836766911132

`A351637(n)/A237451(n+1)!`
-/

namespace A351645.P5405525836766911132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351637 n : ℚ) / (Nat.factorial (A237451 (n + 1)).toNat : ℚ)

end

end A351645.P5405525836766911132

/-! ## A351645.P4111661445316070558

`A350824(n)/A237451(n+1)!²`
-/

namespace A351645.P4111661445316070558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350824 n : ℚ) / (Nat.factorial (A237451 (n + 1)).toNat ^ 2 : ℚ)

end

end A351645.P4111661445316070558

/-! ## A351645.P13548609493582450898

`A007376(A382864(n)^n)`
-/

namespace A351645.P13548609493582450898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A382864 n ^ n).toNat

end

end A351645.P13548609493582450898

/-! ## A351645.P250249433989739355

`A341975(2^A245120(n+1))`
-/

namespace A351645.P250249433989739355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341975 ((SequenceMachineLib.roundAway ((2 : ℚ) ^ (A245120 (n + 1) : ℤ))).toNat + 11)

end

end A351645.P250249433989739355

/-! ## A351645.P14271617834483594642

`A326029(A245120(n+1)*A347649(n))`
-/

namespace A351645.P14271617834483594642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326029 (A245120 (n + 1) * A347649 n).toNat

end

end A351645.P14271617834483594642

/-!
# A351646: a(n) = A097465(n) - n.

The programs for A351646, there is no canonical definition to state claims against.
-/

/-! ## A351646.P1741351318060737794

`A097465(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351646.P1741351318060737794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097465 (n + 1) - (n + 1 : ℤ)

end

end A351646.P1741351318060737794

/-! ## A351646.P4628106309734714844

`A023443(A097465(n+1))-n`
-/

namespace A351646.P4628106309734714844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A097465 (n + 1)).toNat - (n : ℤ)

end

end A351646.P4628106309734714844

/-! ## A351646.P5856122363969456729

`A097465(A008619(2*n))-1-n`
-/

namespace A351646.P5856122363969456729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097465 (A008619 (2 * n)).toNat - 1 - (n : ℤ)

end

end A351646.P5856122363969456729

/-! ## A351646.P16465269211925254515

`A130595(A034856(n+1))+A097465(n+1)`
-/

namespace A351646.P16465269211925254515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A034856 (n + 1)).toNat + A097465 (n + 1)

end

end A351646.P16465269211925254515

/-! ## A351646.P11568934649279766892

`A105353(A274631(n+1)^A351241(n+1))-(n+1)`
-/

namespace A351646.P11568934649279766892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105353 (SequenceMachineLib.roundAway ((A274631 (n + 1) : ℚ) ^ (A351241 (n + 1) : ℤ))).toNat - (n + 1 : ℤ)

end

end A351646.P11568934649279766892

/-!
# A351647: Sum of the squares of the odd proper divisors of n.

The programs for A351647, the canonical program `A351647.P10795607768851863414` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351647 has offset 1).

The definition of A351647 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050999, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351647.P10795607768851863414

`A050999(n+1)-(n+1)²*A000035(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A351647

/-- `A050999(n+1)-(n+1)²*A000035(n+1)` -/
def P10795607768851863414.Spec : Prop :=
  ∀ n, P10795607768851863414.a n = A351647 (n + 1)

theorem P10795607768851863414.correct : P10795607768851863414.Spec := by
  intro n
  simp only [A351647, Nat.add_sub_cancel]

end A351647

/-! ## A351647.P1393461173761277752

`∑{d}[n+1, (#*#%2)²]%(n+1)²`
-/

namespace A351647.P1393461173761277752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (d * (d % 2)) ^ 2) % (n + 1) ^ 2

end

end A351647.P1393461173761277752

namespace A351647

/-- `∑{d}[n+1, (#*#%2)²]%(n+1)²` -/
def P1393461173761277752.Spec : Prop :=
  ∀ n, (P1393461173761277752.a n : ℤ) = A351647 (n + 1)

end A351647

/-! ## A351647.P13200131955429015220

`∑{d}[n+1, (lcm(2, #)-#)²]%(n+1)²`
-/

namespace A351647.P13200131955429015220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), ((Nat.lcm 2 d : ℤ) - (d : ℤ)) ^ 2) ((n + 1) ^ 2 : ℤ)

end

end A351647.P13200131955429015220

namespace A351647

/-- `∑{d}[n+1, (lcm(2, #)-#)²]%(n+1)²` -/
def P13200131955429015220.Spec : Prop :=
  ∀ n, P13200131955429015220.a n = A351647 (n + 1)

end A351647

/-! ## A351647.P4075903285615517277

`(∑{d}[n+1, #²]/∑{d}[2^val(n+1, 2), #²])%(n+1)²`
-/

namespace A351647.P4075903285615517277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℚ))) ((n + 1) ^ 2 : ℤ)

end

end A351647.P4075903285615517277

namespace A351647

/-- `(∑{d}[n+1, #²]/∑{d}[2^val(n+1, 2), #²])%(n+1)²` -/
def P4075903285615517277.Spec : Prop :=
  ∀ n, P4075903285615517277.a n = A351647 (n + 1)

end A351647

/-! ## A351647.P15068731074370321838

`A050999(n+1)%(n+1)²`
-/

namespace A351647.P15068731074370321838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050999 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A351647.P15068731074370321838

namespace A351647

/-- `A050999(n+1)%(n+1)²` -/
def P15068731074370321838.Spec : Prop :=
  ∀ n, P15068731074370321838.a n = A351647 (n + 1)

end A351647

/-! ## A351647.P8196112292034371575

`∑{d}[A000265(n+1), (#%(n+1))²]`
-/

namespace A351647.P8196112292034371575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d % (n + 1)) ^ 2

end

end A351647.P8196112292034371575

namespace A351647

/-- `∑{d}[A000265(n+1), (#%(n+1))²]` -/
def P8196112292034371575.Spec : Prop :=
  ∀ n, (P8196112292034371575.a n : ℤ) = A351647 (n + 1)

end A351647

/-! ## A351647.P13744306013593481706

`A001157((n+1)/2^val(n+1, 2))%((n+1)²*(-1)^n)`
-/

namespace A351647.P13744306013593481706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001157 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat) (((n + 1) ^ 2 : ℤ) * (-1) ^ n)

end

end A351647.P13744306013593481706

namespace A351647

/-- `A001157((n+1)/2^val(n+1, 2))%((n+1)²*(-1)^n)` -/
def P13744306013593481706.Spec : Prop :=
  ∀ n, P13744306013593481706.a n = A351647 (n + 1)

end A351647

/-! ## A351647.P2077856624273778773

`A321558((n+1)/2^val(n+1, 2))%((n+1)²*(-1)^n)`
-/

namespace A351647.P2077856624273778773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321558 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat) (((n + 1) ^ 2 : ℤ) * (-1) ^ n)

end

end A351647.P2077856624273778773

namespace A351647

/-- `A321558((n+1)/2^val(n+1, 2))%((n+1)²*(-1)^n)` -/
def P2077856624273778773.Spec : Prop :=
  ∀ n, P2077856624273778773.a n = A351647 (n + 1)

end A351647

/-! ## A351647.P16957228195489759989

`∑{d}[n+1, A002618(#)*A058344((n+1)/#)]`
-/

namespace A351647.P16957228195489759989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A058344 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351647.P16957228195489759989

namespace A351647

/-- `∑{d}[n+1, A002618(#)*A058344((n+1)/#)]` -/
def P16957228195489759989.Spec : Prop :=
  ∀ n, P16957228195489759989.a n = A351647 (n + 1)

end A351647

/-! ## A351647.P18020453295111528510

`∑{d}[n+1, A050999(#)*A157658((n+1)/#)]`
-/

namespace A351647.P18020453295111528510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050999 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351647.P18020453295111528510

namespace A351647

/-- `∑{d}[n+1, A050999(#)*A157658((n+1)/#)]` -/
def P18020453295111528510.Spec : Prop :=
  ∀ n, P18020453295111528510.a n = A351647 (n + 1)

end A351647

/-! ## A351647.P4090930710964407668

`A050999(2*(n+1))-C(xor(1, n), n)²`
-/

namespace A351647.P4090930710964407668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050999 (2 * (n + 1)) - (Nat.choose (Nat.xor 1 n) n ^ 2 : ℤ)

end

end A351647.P4090930710964407668

namespace A351647

/-- `A050999(2*(n+1))-C(xor(1, n), n)²` -/
def P4090930710964407668.Spec : Prop :=
  ∀ n, P4090930710964407668.a n = A351647 (n + 1)

end A351647

/-! ## A351647.P14326097547759753813

`A347161(A097053(n+1))`
-/

namespace A351647.P14326097547759753813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347161 (A097053 (n + 1)).toNat

end

end A351647.P14326097547759753813

namespace A351647

/-- `A347161(A097053(n+1))` -/
def P14326097547759753813.Spec : Prop :=
  ∀ n, P14326097547759753813.a n = A351647 (n + 1)

end A351647

/-! ## A351647.P10503916732780367273

`A293235(A328407(n+1))`
-/

namespace A351647.P10503916732780367273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293235 (A328407 (n + 1)).toNat

end

end A351647.P10503916732780367273

namespace A351647

/-- `A293235(A328407(n+1))` -/
def P10503916732780367273.Spec : Prop :=
  ∀ n, P10503916732780367273.a n = A351647 (n + 1)

end A351647

/-! ## A351647.P2336039922374524944

`A328373((n+1)²)%(n+1)²`
-/

namespace A351647.P2336039922374524944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328373 ((n + 1) ^ 2)) ((n + 1) ^ 2 : ℤ)

end

end A351647.P2336039922374524944

namespace A351647

/-- `A328373((n+1)²)%(n+1)²` -/
def P2336039922374524944.Spec : Prop :=
  ∀ n, P2336039922374524944.a n = A351647 (n + 1)

end A351647

/-! ## A351647.P14639876262330258933

`∑{d}[n+1, (#*and(1, #))²]-A193356((n+1)²)`
-/

namespace A351647.P14639876262330258933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d * Nat.land 1 d) ^ 2 : ℕ) : ℤ) - A193356 ((n + 1) ^ 2)

end

end A351647.P14639876262330258933

namespace A351647

/-- `∑{d}[n+1, (#*and(1, #))²]-A193356((n+1)²)` -/
def P14639876262330258933.Spec : Prop :=
  ∀ n, P14639876262330258933.a n = A351647 (n + 1)

end A351647

/-!
# A351648: G.f. A(x) satisfies: A(x) = 1 + x + x^2 * A(x/(1 - x)) / (1 - x)^5.

The programs for A351648, there is no canonical definition to state claims against.
-/

/-! ## A351648.P11294996773607310297

`A046155(xor(A045623(n), A079291(n)))`
-/

namespace A351648.P11294996773607310297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (Int.xor (A045623 n) (A079291 n)).toNat

end

end A351648.P11294996773607310297

/-! ## A351648.P10189688462918390759

`xor(A047022(n), A103153(A050146(n)))`
-/

namespace A351648.P10189688462918390759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A047022 n) (A103153 (A050146 n).toNat)

end

end A351648.P10189688462918390759

/-! ## A351648.P10630214312409243749

`A319333(A005207(n))-A069010(3*(n+1))`
-/

namespace A351648.P10630214312409243749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319333 (A005207 n).toNat - A069010 (3 * (n + 1))

end

end A351648.P10630214312409243749

/-!
# A351649: a(n) = minimal average of a pair of twin primes m, such that m * twin_prime(n) is the average of another pair of twin primes, or -1 if no m exists.

The programs for A351649, there is no canonical definition to state claims against.
-/

/-! ## A351649.P11235172715052631329

`A185145(A001097(n+1))`
-/

namespace A351649.P11235172715052631329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185145 (A001097 (n + 1)).toNat

end

end A351649.P11235172715052631329

/-! ## A351649.P2238392529626492030

`A185145(A171821(n+2))`
-/

namespace A351649.P2238392529626492030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185145 (A171821 (n + 2)).toNat

end

end A351649.P2238392529626492030

/-! ## A351649.P17129466046700394635

`A185145(p?[A062505(n+1)])`
-/

namespace A351649.P17129466046700394635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185145 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A351649.P17129466046700394635

/-! ## A351649.P8365927570786480949

`A185145(p?[A334141(n+1)])`
-/

namespace A351649.P8365927570786480949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185145 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A351649.P8365927570786480949

/-! ## A351649.P12552573333374317915

`A185145(A278972(n+1)/2)`
-/

namespace A351649.P12552573333374317915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185145 (SequenceMachineLib.roundAway ((A278972 (n + 1) : ℚ) / 2)).toNat

end

end A351649.P12552573333374317915

/-! ## A351649.P16876042708024120519

`A185145(p?[comp[A167706(n+1)]])`
-/

namespace A351649.P16876042708024120519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185145 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A351649.P16876042708024120519

/-! ## A351649.P10695894653503905413

`A258811(p?[A062505(n+1)])+1`
-/

namespace A351649.P10695894653503905413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258811 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A351649.P10695894653503905413

/-! ## A351649.P4164110763245786431

`A185145(or(1, A161220(n+1)+2*(n+1)))`
-/

namespace A351649.P4164110763245786431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185145 (Int.lor 1 (A161220 (n + 1) + (2 * (n + 1) : ℤ))).toNat

end

end A351649.P4164110763245786431

/-!
# A351651: a(n) is the quotient obtained when digsum(m^2) is divided by digsum(m), with digsum = sum of digits = A007953 and m = A351650(n).

The programs for A351651, there is no canonical definition to state claims against.
-/

/-! ## A351651.P11975524568420471656

`A004159(A351650(n+1))/A007953(A351650(n+1))`
-/

namespace A351651.P11975524568420471656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004159 (A351650 (n + 1)).toNat : ℚ) / (A007953 (A351650 (n + 1)).toNat : ℚ)

end

end A351651.P11975524568420471656

/-! ## A351651.P4873538197974423682

`A007953(A351650(n+1)²)/A007953(A351650(n+1))`
-/

namespace A351651.P4873538197974423682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 (A351650 (n + 1) ^ 2).toNat : ℚ) / (A007953 (A351650 (n + 1)).toNat : ℚ)

end

end A351651.P4873538197974423682

/-!
# A351652: a(1) = 1; for n > 1, a(n) is the smallest positive integer not occurring earlier such that the intersection of the periodic parts of the continued fractions for square roots of a(n) and a(n-1) is the empty set.

The programs for A351652, there is no canonical definition to state claims against.
-/

/-! ## A351652.P14645209987493524854

`∑{e}[A008776(n), A114650(#)]`
-/

namespace A351652.P14645209987493524854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A114650 (Nat.factorization (f1 n).natAbs p)

end

end A351652.P14645209987493524854

/-! ## A351652.P6906547882068079059

`A065187(A065190(n+1))%A065196(n+4)`
-/

namespace A351652.P6906547882068079059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065187 (A065190 (n + 1)).toNat) (A065196 (n + 4))

end

end A351652.P6906547882068079059

/-! ## A351652.P7306655468612582763

`gcd(A065187(A065190(n+1)), A065218(3*n+4))`
-/

namespace A351652.P7306655468612582763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065187 (A065190 (n + 1)).toNat) (A065218 (3 * n + 4))

end

end A351652.P7306655468612582763

/-!
# A351653: a(n) is the concatenation of the length of each run of digits in the decimal representation of n.

The programs for A351653, there is no canonical definition to state claims against.
-/

/-! ## A351653.P13717825194024810220

`and(11, A139337(n))`
-/

namespace A351653.P13717825194024810220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 11 (A139337 n)

end

end A351653.P13717825194024810220

/-!
# A351654: Dirichlet g.f.: zeta(s) / (zeta(s-1) * zeta(s-2)).

The programs for A351654, the canonical program `A351654.P14786926509315681649` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351654 has offset 1).

The definition of A351654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351654.P14786926509315681649

`∑{d}[n+1, #*A046692(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A351654

/-- `∑{d}[n+1, #*A046692(#)]` -/
def P14786926509315681649.Spec : Prop :=
  ∀ n, P14786926509315681649.a n = A351654 (n + 1)

theorem P14786926509315681649.correct : P14786926509315681649.Spec := by
  intro n
  simp only [A351654, Nat.add_sub_cancel]

end A351654

/-! ## A351654.P17125397363072165093

`∑{d}[n+1, A046970(#)*A055615((n+1)/#)]`
-/

namespace A351654.P17125397363072165093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046970 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351654.P17125397363072165093

namespace A351654

/-- `∑{d}[n+1, A046970(#)*A055615((n+1)/#)]` -/
def P17125397363072165093.Spec : Prop :=
  ∀ n, P17125397363072165093.a n = A351654 (n + 1)

end A351654

/-! ## A351654.P2978723680478621302

`∑{d}[n+1, A053822(#)*A130054((n+1)/#)]`
-/

namespace A351654.P2978723680478621302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351654.P2978723680478621302

namespace A351654

/-- `∑{d}[n+1, A053822(#)*A130054((n+1)/#)]` -/
def P2978723680478621302.Spec : Prop :=
  ∀ n, P2978723680478621302.a n = A351654 (n + 1)

end A351654

/-! ## A351654.P45530083481445898

`∑{d}[n+1, A000005(#)*A328254((n+1)/#)]`
-/

namespace A351654.P45530083481445898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351654.P45530083481445898

namespace A351654

/-- `∑{d}[n+1, A000005(#)*A328254((n+1)/#)]` -/
def P45530083481445898.Spec : Prop :=
  ∀ n, P45530083481445898.a n = A351654 (n + 1)

end A351654

/-! ## A351654.P9096856207160777260

`∑{d}[n+1, A023900(#)*A334657((n+1)/#)]`
-/

namespace A351654.P9096856207160777260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351654.P9096856207160777260

namespace A351654

/-- `∑{d}[n+1, A023900(#)*A334657((n+1)/#)]` -/
def P9096856207160777260.Spec : Prop :=
  ∀ n, P9096856207160777260.a n = A351654 (n + 1)

end A351654

/-! ## A351654.P15650799664113880807

`∑{d}[n+1, A328502(#)*A328641((n+1)/#)]`
-/

namespace A351654.P15650799664113880807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328502 d * A328641 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351654.P15650799664113880807

namespace A351654

/-- `∑{d}[n+1, A328502(#)*A328641((n+1)/#)]` -/
def P15650799664113880807.Spec : Prop :=
  ∀ n, P15650799664113880807.a n = A351654 (n + 1)

end A351654

/-!
# A351655: Dirichlet g.f.: Product_{p prime} 1 / (1 - p^(-s) - p^(-2*s) - p^(-3*s)).

The programs for A351655, the canonical program `A351655.P9261021295990022912` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351655 has offset 1).

The definition of A351655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351655.P9261021295990022912

`∏{e}[n+1, A000073(#+2)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A351655

/-- `∏{e}[n+1, A000073(#+2)]` -/
def P9261021295990022912.Spec : Prop :=
  ∀ n, P9261021295990022912.a n = A351655 (n + 1)

theorem P9261021295990022912.correct : P9261021295990022912.Spec := by
  intro n
  simp only [A351655, Nat.add_sub_cancel]

end A351655

/-! ## A351655.P13845408685728395351

`∏{e}[A332212(n+1), A002843(#)]`
-/

namespace A351655.P13845408685728395351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002843 (Nat.factorization (f1 n).natAbs p)

end

end A351655.P13845408685728395351

namespace A351655

/-- `∏{e}[A332212(n+1), A002843(#)]` -/
def P13845408685728395351.Spec : Prop :=
  ∀ n, P13845408685728395351.a n = A351655 (n + 1)

end A351655

/-! ## A351655.P14315703356792911633

`A318874(A293524(n+1))`
-/

namespace A351655.P14315703356792911633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (A293524 (n + 1)).toNat

end

end A351655.P14315703356792911633

namespace A351655

/-- `A318874(A293524(n+1))` -/
def P14315703356792911633.Spec : Prop :=
  ∀ n, P14315703356792911633.a n = A351655 (n + 1)

end A351655

/-! ## A351655.P11583445108920472372

`A086445(∑{e}[n+1, #-1]%A338331(n+1))`
-/

namespace A351655.P11583445108920472372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086445 (Int.tmod (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)) (A338331 (n + 1))).toNat

end

end A351655.P11583445108920472372

namespace A351655

/-- `A086445(∑{e}[n+1, #-1]%A338331(n+1))` -/
def P11583445108920472372.Spec : Prop :=
  ∀ n, P11583445108920472372.a n = A351655 (n + 1)

end A351655

/-! ## A351655.P15465775322433804328

`A305900(2^∑{e}[n+1, #-1])%A000092(2*n+3)`
-/

namespace A351655.P15465775322433804328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305900 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ))).toNat) (A000092 (2 * n + 3))

end

end A351655.P15465775322433804328

namespace A351655

/-- `A305900(2^∑{e}[n+1, #-1])%A000092(2*n+3)` -/
def P15465775322433804328.Spec : Prop :=
  ∀ n, P15465775322433804328.a n = A351655 (n + 1)

end A351655

/-! ## A351655.P14287021978785362900

`A112310(lcm(2, ∏{e}[n+1, #^#]))`
-/

namespace A351655.P14287021978785362900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (Nat.lcm 2 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ Nat.factorization (f1 n) p))

end

end A351655.P14287021978785362900

namespace A351655

/-- `A112310(lcm(2, ∏{e}[n+1, #^#]))` -/
def P14287021978785362900.Spec : Prop :=
  ∀ n, P14287021978785362900.a n = A351655 (n + 1)

end A351655

/-! ## A351655.P4456690903115669830

`A083375(A037291(n+1))`
-/

namespace A351655.P4456690903115669830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A037291 (n + 1)).toNat

end

end A351655.P4456690903115669830

namespace A351655

/-- `A083375(A037291(n+1))` -/
def P4456690903115669830.Spec : Prop :=
  ∀ n, P4456690903115669830.a n = A351655 (n + 1)

end A351655

/-! ## A351655.P417761889550056329

`A151897(A046660(n+1)%A376601(n+1))`
-/

namespace A351655.P417761889550056329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151897 (Int.tmod (A046660 (n + 1)) (A376601 (n + 1))).toNat

end

end A351655.P417761889550056329

namespace A351655

/-- `A151897(A046660(n+1)%A376601(n+1))` -/
def P417761889550056329.Spec : Prop :=
  ∀ n, P417761889550056329.a n = A351655 (n + 1)

end A351655

/-! ## A351655.P8273634210525939462

`∏{e}[A174342(n), A026625(#)]`
-/

namespace A351655.P8273634210525939462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174342 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A026625 (Nat.factorization (f1 n).natAbs p)

end

end A351655.P8273634210525939462

namespace A351655

/-- `∏{e}[A174342(n), A026625(#)]` -/
def P8273634210525939462.Spec : Prop :=
  ∀ n, P8273634210525939462.a n = A351655 (n + 1)

end A351655

/-! ## A351655.P6260662011781431949

`A305900(2^∑{e}[n+1, #-1])%A229304(n+1)`
-/

namespace A351655.P6260662011781431949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305900 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ))).toNat) (A229304 (n + 1))

end

end A351655.P6260662011781431949

namespace A351655

/-- `A305900(2^∑{e}[n+1, #-1])%A229304(n+1)` -/
def P6260662011781431949.Spec : Prop :=
  ∀ n, P6260662011781431949.a n = A351655 (n + 1)

end A351655

/-!
# A351656: Dirichlet g.f.: Product_{p prime} 1 / (1 - p^(-s) - p^(-2*s) - p^(-3*s) - p^(-4*s)).

The programs for A351656, the canonical program `A351656.P7142552291936618535` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351656 has offset 1).

The definition of A351656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351656.P7142552291936618535

`∏{e}[n+1, A000078(#+3)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A351656

/-- `∏{e}[n+1, A000078(#+3)]` -/
def P7142552291936618535.Spec : Prop :=
  ∀ n, P7142552291936618535.a n = A351656 (n + 1)

theorem P7142552291936618535.correct : P7142552291936618535.Spec := by
  intro n
  simp only [A351656, Nat.add_sub_cancel]

end A351656

/-! ## A351656.P17370577315496034928

`A374697(A375136(n+1)%A236403(n+1))`
-/

namespace A351656.P17370577315496034928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374697 (Int.tmod (A375136 (n + 1)) (A236403 (n + 1))).toNat

end

end A351656.P17370577315496034928

namespace A351656

/-- `A374697(A375136(n+1)%A236403(n+1))` -/
def P17370577315496034928.Spec : Prop :=
  ∀ n, P17370577315496034928.a n = A351656 (n + 1)

end A351656

/-! ## A351656.P8445907502748154709

`A374743(∑{e}[A375400(n+1), #])`
-/

namespace A351656.P8445907502748154709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374743 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A351656.P8445907502748154709

namespace A351656

/-- `A374743(∑{e}[A375400(n+1), #])` -/
def P8445907502748154709.Spec : Prop :=
  ∀ n, P8445907502748154709.a n = A351656 (n + 1)

end A351656

/-! ## A351656.P6313837618708350468

`A374697(A375136(n+1))%A375398(n+2)`
-/

namespace A351656.P6313837618708350468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374697 (A375136 (n + 1)).toNat) (A375398 (n + 2))

end

end A351656.P6313837618708350468

namespace A351656

/-- `A374697(A375136(n+1))%A375398(n+2)` -/
def P6313837618708350468.Spec : Prop :=
  ∀ n, P6313837618708350468.a n = A351656 (n + 1)

end A351656

/-! ## A351656.P1806192654886473427

`ceil(sqrt(A037291(n+1)))`
-/

namespace A351656.P1806192654886473427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A037291 (n + 1) : ℝ)⌉

end

end A351656.P1806192654886473427

namespace A351656

/-- `ceil(sqrt(A037291(n+1)))` -/
def P1806192654886473427.Spec : Prop :=
  ∀ n, P1806192654886473427.a n = A351656 (n + 1)

end A351656

/-! ## A351656.P11455560761842812347

`A045778(8^∑{e}[n+1, #-1])`
-/

namespace A351656.P11455560761842812347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ))).toNat

end

end A351656.P11455560761842812347

namespace A351656

/-- `A045778(8^∑{e}[n+1, #-1])` -/
def P11455560761842812347.Spec : Prop :=
  ∀ n, P11455560761842812347.a n = A351656 (n + 1)

end A351656

/-! ## A351656.P12839840170702388735

`A003059(A037291(n+1))`
-/

namespace A351656.P12839840170702388735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A037291 (n + 1)).toNat

end

end A351656.P12839840170702388735

namespace A351656

/-- `A003059(A037291(n+1))` -/
def P12839840170702388735.Spec : Prop :=
  ∀ n, P12839840170702388735.a n = A351656 (n + 1)

end A351656

/-! ## A351656.P11252955742011568655

`A295101(A127707(n+1))`
-/

namespace A351656.P11252955742011568655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295101 (A127707 (n + 1)).toNat

end

end A351656.P11252955742011568655

namespace A351656

/-- `A295101(A127707(n+1))` -/
def P11252955742011568655.Spec : Prop :=
  ∀ n, P11252955742011568655.a n = A351656 (n + 1)

end A351656

/-! ## A351656.P12473758057710175616

`A326764(A224231(∑{e}[n+1, #-1]))`
-/

namespace A351656.P12473758057710175616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326764 (A224231 (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)).toNat).toNat

end

end A351656.P12473758057710175616

namespace A351656

/-- `A326764(A224231(∑{e}[n+1, #-1]))` -/
def P12473758057710175616.Spec : Prop :=
  ∀ n, P12473758057710175616.a n = A351656 (n + 1)

end A351656

/-! ## A351656.P17887854408837138221

`A033677(A325242(2^∑{e}[n+1, #-1])²)`
-/

namespace A351656.P17887854408837138221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A325242 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ))).toNat ^ 2).toNat

end

end A351656.P17887854408837138221

namespace A351656

/-- `A033677(A325242(2^∑{e}[n+1, #-1])²)` -/
def P17887854408837138221.Spec : Prop :=
  ∀ n, P17887854408837138221.a n = A351656 (n + 1)

end A351656

/-!
# A351657: Period of the Fibonacci n-step sequence mod n.

The programs for A351657, there is no canonical definition to state claims against.
-/

/-! ## A351657.P8412090015690816587

`A351889(∑[4*n]+1)`
-/

namespace A351657.P8412090015690816587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351889 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A351657.P8412090015690816587

/-! ## A351657.P2818132033777987244

`A351889(A001844(n))+char[18]`
-/

namespace A351657.P2818132033777987244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351889 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A351657.P2818132033777987244

/-! ## A351657.P3884629484269671345

`gcd(A000038(n), A351889(A001844(n)))`
-/

namespace A351657.P3884629484269671345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A351889 (A001844 n).toNat)

end

end A351657.P3884629484269671345

/-! ## A351657.P18390389706324385708

`lcm(A219347(n), A351889(A001844(n)))`
-/

namespace A351657.P18390389706324385708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A219347 n) (A351889 (A001844 n).toNat)

end

end A351657.P18390389706324385708

/-!
# A351660: G.f. A(x) satisfies: A(x) = 1 + x + x^2 + x^3 * A(x/(1 - x)) / (1 - x)^2.

The programs for A351660, there is no canonical definition to state claims against.
-/

/-! ## A351660.P4275041651522091648

`or(1, A268273(A200542(n+1)))`
-/

namespace A351660.P4275041651522091648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A268273 (A200542 (n + 1)).toNat)

end

end A351660.P4275041651522091648

/-! ## A351660.P5530998496446742489

`A004273(A200542(n+1)^A140356(n))`
-/

namespace A351660.P5530998496446742489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A200542 (n + 1) : ℚ) ^ (A140356 n : ℤ))).toNat

end

end A351660.P5530998496446742489

/-! ## A351660.P16284771287229710343

`A004273(A140356(n)²*A200542(n+1))`
-/

namespace A351660.P16284771287229710343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A140356 n ^ 2 * A200542 (n + 1)).toNat

end

end A351660.P16284771287229710343

/-! ## A351660.P17033749804690883861

`A004273(A146410(n+1)*A200542(n+1))`
-/

namespace A351660.P17033749804690883861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A146410 (n + 1) * A200542 (n + 1)).toNat

end

end A351660.P17033749804690883861

/-! ## A351660.P9722031840047690524

`A004273(A200542(n+1)^A146410(n+1))`
-/

namespace A351660.P9722031840047690524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A200542 (n + 1) : ℚ) ^ (A146410 (n + 1) : ℤ))).toNat

end

end A351660.P9722031840047690524

/-!
# A351661: a(n) is the smallest integer m (m > 2n) not the sum of one or more nonzero powers of n, n+1, ..., 2n.

The programs for A351661, there is no canonical definition to state claims against.
-/

/-! ## A351661.P61450137039748199

`xor(n, A084589(a(n-1)))` with `a(0)=1, a(1)=6, a(2)=10`
-/

namespace A351661.P61450137039748199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 10] fun n a =>
  Int.xor (n : ℤ) (A084589 (a (n - 1)).toNat)

end

end A351661.P61450137039748199

/-!
# A351663: Perfect powers that are divisible by 7.

The programs for A351663, there is no canonical definition to state claims against.
-/

/-! ## A351663.P2563689603765910067

`∩[49*n, abs(A157985(n+1))]`
-/

namespace A351663.P2563689603765910067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 1)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351663.P2563689603765910067

/-! ## A351663.P17252829543090954533

`∩[7*7*n, A001597(n+2)]`
-/

namespace A351663.P17252829543090954533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (7 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351663.P17252829543090954533

/-! ## A351663.P4809851126347296721

`∩[A001597(n+1), 7*n]`
-/

namespace A351663.P4809851126347296721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A351663.P4809851126347296721

/-! ## A351663.P16596824760019382601

`∩[7*n, A045542(n+1)+1]`
-/

namespace A351663.P16596824760019382601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351663.P16596824760019382601

/-! ## A351663.P5100576947787436224

`∩[7*n, A216765(n+1)-1]`
-/

namespace A351663.P5100576947787436224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351663.P5100576947787436224

/-!
# A351681: Stirling transform of {1, primes}.

The programs for A351681, there is no canonical definition to state claims against.
-/

/-! ## A351681.P8176954022195365934

`A306022(A001096(n)+1)`
-/

namespace A351681.P8176954022195365934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306022 (A001096 n + 1).toNat

end

end A351681.P8176954022195365934

/-! ## A351681.P16491061190937567882

`A306022(∑[A218626(n)!])`
-/

namespace A351681.P16491061190937567882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A218626 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306022 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351681.P16491061190937567882

/-!
# A351682: Prime numbers p such that the (p-1)-st Bell number B(p-1) is a primitive root modulo p.

The programs for A351682, there is no canonical definition to state claims against.
-/

/-! ## A351682.P13754509371820121710

`p?[∑[A318829(A331260(n+1))]]`
-/

namespace A351682.P13754509371820121710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318829 (A331260 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A351682.P13754509371820121710

/-! ## A351682.P7957501733774597534

`∩[A020634(n+1), A102705(n)]`
-/

namespace A351682.P7957501733774597534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351682.P7957501733774597534

/-! ## A351682.P3192171747795841126

`∩[A038613(n+1), A102705(n)]`
-/

namespace A351682.P3192171747795841126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351682.P3192171747795841126

/-! ## A351682.P4199611952907699663

`∩[A045319(n+1), A102705(n)]`
-/

namespace A351682.P4199611952907699663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351682.P4199611952907699663

/-! ## A351682.P15372590682201911444

`∩[A075235(n+1), A102705(n)]`
-/

namespace A351682.P15372590682201911444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351682.P15372590682201911444

/-!
# A351683: Squares that are also 4-dimensional pyramidal numbers.

The programs for A351683, the canonical program `A351683.P16005110043192433238` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351683 has offset 1).

The definition of A351683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351683.P16005110043192433238

`A007655(n+1)²`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A351683

/-- `A007655(n+1)²` -/
def P16005110043192433238.Spec : Prop :=
  ∀ n, P16005110043192433238.a n = A351683 (n + 1)

theorem P16005110043192433238.correct : P16005110043192433238.Spec := by
  intro n
  simp only [A351683, Nat.add_sub_cancel]

end A351683

/-! ## A351683.P3236361401999867246

`∑[floor((sqrt(3)+2)²*a(n-1))]²` with `a(0)=0, a(1)=1`
-/

namespace A351683.P3236361401999867246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊(Real.sqrt (3 : ℝ) + 2) ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A351683.P3236361401999867246

namespace A351683

/-- `∑[floor((sqrt(3)+2)²*a(n-1))]²` -/
def P3236361401999867246.Spec : Prop :=
  ∀ n, P3236361401999867246.a n = A351683 (n + 1)

end A351683

/-! ## A351683.P7129283622245856235

`194*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=1`
-/

namespace A351683.P7129283622245856235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  194 * a (n - 1) - a (n - 2) + 2

end

end A351683.P7129283622245856235

namespace A351683

/-- `194*a(n-1)-a(n-2)+2` -/
def P7129283622245856235.Spec : Prop :=
  ∀ n, P7129283622245856235.a n = A351683 (n + 1)

end A351683

/-! ## A351683.P15744505578795485222

`∑[14*a(n-1)-a(n-2)]²` with `a(0)=0, a(1)=1, a(2)=13`
-/

namespace A351683.P15744505578795485222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 13] fun n f1 =>
  14 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A351683.P15744505578795485222

namespace A351683

/-- `∑[14*a(n-1)-a(n-2)]²` -/
def P15744505578795485222.Spec : Prop :=
  ∀ n, P15744505578795485222.a n = A351683 (n + 1)

end A351683

/-! ## A351683.P16318810793515277107

`(A011944(n)/2)²`
-/

namespace A351683.P16318810793515277107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A011944 n : ℚ) / 2) ^ 2

end

end A351683.P16318810793515277107

namespace A351683

/-- `(A011944(n)/2)²` -/
def P16318810793515277107.Spec : Prop :=
  ∀ n, P16318810793515277107.a n = (A351683 (n + 1) : ℚ)

end A351683

/-!
# A351685: a(n) is the row of the Trithoff (tribonacci) array that contains the tails of the sequence which is n times the tribonacci numbers.

The programs for A351685, there is no canonical definition to state claims against.
-/

/-! ## A351685.P2449074953645707799

`A136175(A298391(n+1))`
-/

namespace A351685.P2449074953645707799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136175 (A298391 (n + 1)).toNat

end

end A351685.P2449074953645707799

/-!
# A351686: Solution to stepping stone puzzle if we start with one 1 and n 2's for consecutive primes.

The programs for A351686, there is no canonical definition to state claims against.
-/

/-! ## A351686.P3748714814277054285

`p?[A222409(comp[n*n%4]-2)+1]`
-/

namespace A351686.P3748714814277054285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 4)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222409 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A351686.P3748714814277054285

/-! ## A351686.P7333489638891570522

`p?[A222409(comp[n*and(3, n)-2])+1]`
-/

namespace A351686.P7333489638891570522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.land 3 n : ℤ) - 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222409 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A351686.P7333489638891570522

/-! ## A351686.P3440354236991240790

`A040123(A111905(n+1))`
-/

namespace A351686.P3440354236991240790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040123 (A111905 (n + 1)).toNat

end

end A351686.P3440354236991240790

/-! ## A351686.P4723499476519086812

`A040150(A118672(n+1))`
-/

namespace A351686.P4723499476519086812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040150 (A118672 (n + 1)).toNat

end

end A351686.P4723499476519086812

/-! ## A351686.P14336930565149965826

`A095283(A091066(n+1))`
-/

namespace A351686.P14336930565149965826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095283 (A091066 (n + 1)).toNat

end

end A351686.P14336930565149965826

/-!
# A351689: a(n) is the number in the first column of the Trithoff (tribonacci) array that starts off the row containing the tail of n times the tribonacci sequence.

The programs for A351689, there is no canonical definition to state claims against.
-/

/-! ## A351689.P5604168382423942668

`A003265(A351685(n+1))`
-/

namespace A351689.P5604168382423942668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003265 (A351685 (n + 1)).toNat

end

end A351689.P5604168382423942668

/-! ## A351689.P396891047152265876

`(n+1)*A046074(A039936(n+1))`
-/

namespace A351689.P396891047152265876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A046074 (A039936 (n + 1)).toNat

end

end A351689.P396891047152265876

/-!
# A351690: a(n) is the number of n-subsets of [0..p-1] whose n*(n-1) differences are congruent to 1..p-1 (mod p), where p=n*(n-1)+1.

The programs for A351690, there is no canonical definition to state claims against.
-/

/-! ## A351690.P494114334167663976

`(∑[2*n]+1)*A325787(A004136(n+1))`
-/

namespace A351690.P494114334167663976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * A325787 (A004136 (n + 1)).toNat

end

end A351690.P494114334167663976

/-! ## A351690.P13339788790107000102

`A002061(n+1)*A325787(A002061(n+1))`
-/

namespace A351690.P13339788790107000102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1) * A325787 (A002061 (n + 1)).toNat

end

end A351690.P13339788790107000102

/-! ## A351690.P5032265599085781455

`A004136(n+1)*A325787(A247890(n+1))`
-/

namespace A351690.P5032265599085781455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004136 (n + 1) * A325787 (A247890 (n + 1)).toNat

end

end A351690.P5032265599085781455

/-! ## A351690.P9255856965710893501

`A004136(n+1)*A325787(A353887(n+1))`
-/

namespace A351690.P9255856965710893501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004136 (n + 1) * A325787 (A353887 (n + 1)).toNat

end

end A351690.P9255856965710893501

/-! ## A351690.P11101909212926342729

`A004136(n+1)*A325787(A181385(2*n+1))`
-/

namespace A351690.P11101909212926342729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004136 (n + 1) * A325787 (A181385 (2 * n + 1)).toNat

end

end A351690.P11101909212926342729

/-!
# A351694: Positions of records in A351532, divided by 3.

The programs for A351694, there is no canonical definition to state claims against.
-/

/-! ## A351694.P3754451043417879918

`A119500(A026819(n+1)+n)`
-/

namespace A351694.P3754451043417879918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119500 (A026819 (n + 1) + (n : ℤ)).toNat

end

end A351694.P3754451043417879918

/-! ## A351694.P13351414610124389637

`A119500(lcm(A285465(n+1), A363349(n+1)))`
-/

namespace A351694.P13351414610124389637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119500 (Int.lcm (A285465 (n + 1)) (A363349 (n + 1)))

end

end A351694.P13351414610124389637

/-! ## A351694.P9337759500252586145

`∩[A153769(n+1), A358101(n+1)]`
-/

namespace A351694.P9337759500252586145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351694.P9337759500252586145

/-! ## A351694.P14955913532426814103

`∩[A299233(n+1), A358101(n+1)]`
-/

namespace A351694.P14955913532426814103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351694.P14955913532426814103

/-! ## A351694.P3773341762473856675

`∩[A267415(n+1), A358101(n+1)]`
-/

namespace A351694.P3773341762473856675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351694.P3773341762473856675

/-!
# A351695: Records in A351532.

The programs for A351695, there is no canonical definition to state claims against.
-/

/-! ## A351695.P17463599538490038959

`A351532(3*A351694(n+1))`
-/

namespace A351695.P17463599538490038959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351532 (3 * A351694 (n + 1)).toNat

end

end A351695.P17463599538490038959

/-! ## A351695.P4609831217520724283

`∑[A048669(∑[A128437(n+1)])]`
-/

namespace A351695.P4609831217520724283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128437 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048669 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351695.P4609831217520724283

/-! ## A351695.P13161423664147994482

`A255056(n)+A107286(A098597(n))`
-/

namespace A351695.P13161423664147994482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255056 n + A107286 (A098597 n).toNat

end

end A351695.P13161423664147994482

/-! ## A351695.P6237330785624449912

`eq[n%2, A056957(A098473(n))]`
-/

namespace A351695.P6237330785624449912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (A098473 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351695.P6237330785624449912

/-!
# A351696: a(n) is the numerator of the squared circumradius of a cyclic quadrilateral with sides n, n+1, n+2, n+3.

The programs for A351696, there is no canonical definition to state claims against.
-/

/-! ## A351696.P12743742853346721586

`24*A351698(n+1)+1`
-/

namespace A351696.P12743742853346721586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A351698 (n + 1) + 1

end

end A351696.P12743742853346721586

/-! ## A351696.P3154537689300498544

`A103214(A351698(n+1))`
-/

namespace A351696.P3154537689300498544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (A351698 (n + 1)).toNat

end

end A351696.P3154537689300498544

/-!
# A351697: 32*a(n) is the denominator of the squared circumradius of a cyclic quadrilateral with sides n, n+1, n+2, n+3.

The programs for A351697, the canonical program `A351697.P8907333974855870751` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351697 has offset 1).

The definition of A351697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351697.P8907333974855870751

`gcd(3, C(n, 2))*A067047(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A351697

/-- `gcd(3, C(n, 2))*A067047(n+1)` -/
def P8907333974855870751.Spec : Prop :=
  ∀ n, P8907333974855870751.a n = A351697 (n + 1)

theorem P8907333974855870751.correct : P8907333974855870751.Spec := by
  intro n
  simp only [A351697, Nat.add_sub_cancel]

end A351697

/-! ## A351697.P6303664660295505388

`A067047(n+1)*A144437(n+1)`
-/

namespace A351697.P6303664660295505388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067047 (n + 1) * A144437 (n + 1)

end

end A351697.P6303664660295505388

namespace A351697

/-- `A067047(n+1)*A144437(n+1)` -/
def P6303664660295505388.Spec : Prop :=
  ∀ n, P6303664660295505388.a n = A351697 (n + 1)

end A351697

/-! ## A351697.P2821244280843210989

`gcd(3, A055998(n))*A067047(n+1)`
-/

namespace A351697.P2821244280843210989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A055998 n) : ℤ) * A067047 (n + 1)

end

end A351697.P2821244280843210989

namespace A351697

/-- `gcd(3, A055998(n))*A067047(n+1)` -/
def P2821244280843210989.Spec : Prop :=
  ∀ n, P2821244280843210989.a n = A351697 (n + 1)

end A351697

/-! ## A351697.P4771286349767912994

`A067047(n+1)*A169609(n+1)`
-/

namespace A351697.P4771286349767912994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067047 (n + 1) * A169609 (n + 1)

end

end A351697.P4771286349767912994

namespace A351697

/-- `A067047(n+1)*A169609(n+1)` -/
def P4771286349767912994.Spec : Prop :=
  ∀ n, P4771286349767912994.a n = A351697 (n + 1)

end A351697

/-! ## A351697.P4266182099516316667

`A222310(∑[n+4]+3)/2`
-/

namespace A351697.P4266182099516316667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222310 (∑ j ∈ Finset.range (n + 1), f1 j + 3) : ℚ) / 2

end

end A351697.P4266182099516316667

namespace A351697

/-- `A222310(∑[n+4]+3)/2` -/
def P4266182099516316667.Spec : Prop :=
  ∀ n, P4266182099516316667.a n = (A351697 (n + 1) : ℚ)

end A351697

/-!
# A351698: 24*a(n)+1 is the numerator of the squared circumradius of a cyclic quadrilateral with sides n, n+1, n+2, n+3.

The programs for A351698, there is no canonical definition to state claims against.
-/

/-! ## A351698.P4023320259155091209

`(A351696(n+1)-1)/24`
-/

namespace A351698.P4023320259155091209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351696 (n + 1) - 1 : ℚ) / 24

end

end A351698.P4023320259155091209

/-! ## A351698.P15469672533326748052

`floor(A351696(n+1)/24)`
-/

namespace A351698.P15469672533326748052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A351696 (n + 1) : ℚ) / 24⌋

end

end A351698.P15469672533326748052

/-! ## A351698.P15633167266020168974

`A000041(C(2, n+2))*round(A351696(n+1)/24)`
-/

namespace A351698.P15633167266020168974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * SequenceMachineLib.roundAway ((A351696 (n + 1) : ℚ) / 24)

end

end A351698.P15633167266020168974

/-! ## A351698.P1414171240670638736

`round(A351696(n+1)/A040132(n+1))`
-/

namespace A351698.P1414171240670638736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A351696 (n + 1) : ℚ) / (A040132 (n + 1) : ℚ))

end

end A351698.P1414171240670638736

/-! ## A351698.P11557332709073047270

`round(A351696(n+1)/24)*A014963(14*(n+1))`
-/

namespace A351698.P11557332709073047270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A351696 (n + 1) : ℚ) / 24) * A014963 (14 * (n + 1))

end

end A351698.P11557332709073047270

