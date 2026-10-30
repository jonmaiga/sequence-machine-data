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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
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
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C010
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C020

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A077800: List of twin primes {p, p+2}.

The programs for A077800, the canonical program `A077800.P16009445446139691322` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077800 has offset 1).

The definition of A077800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077800.P15762263320113220922

`A001097(round(sqrt(n²+2)))`
-/

namespace A077800.P15762263320113220922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 2 : ℝ))).toNat

end

end A077800.P15762263320113220922

namespace A077800

/-- `A001097(round(sqrt(n²+2)))` -/
def P15762263320113220922.Spec : Prop :=
  ∀ n, P15762263320113220922.a n = A077800 (n + 1)

end A077800

/-! ## A077800.P1083216691026148647

`A171821(ceil(sqrt(n²+4)))`
-/

namespace A077800.P1083216691026148647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat

end

end A077800.P1083216691026148647

namespace A077800

/-- `A171821(ceil(sqrt(n²+4)))` -/
def P1083216691026148647.Spec : Prop :=
  ∀ n, P1083216691026148647.a n = A077800 (n + 1)

end A077800

/-! ## A077800.P16009445446139691322

`A096281(n)-a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A077800

/-- `A096281(n)-a(n-1)` -/
def P16009445446139691322.Spec : Prop :=
  ∀ n, P16009445446139691322.a n = A077800 (n + 1)

theorem P16009445446139691322.correct : P16009445446139691322.Spec := by
  intro n
  simp only [A077800, Nat.add_sub_cancel]

end A077800

/-! ## A077800.P7047170724273959368

`A171821(n+1)+C(2, n²)`
-/

namespace A077800.P7047170724273959368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1) + (Nat.choose 2 (n ^ 2) : ℤ)

end

end A077800.P7047170724273959368

namespace A077800

/-- `A171821(n+1)+C(2, n²)` -/
def P7047170724273959368.Spec : Prop :=
  ∀ n, P7047170724273959368.a n = A077800 (n + 1)

end A077800

/-! ## A077800.P10905883790573635482

`A171821(n+1)+A130706(n)`
-/

namespace A077800.P10905883790573635482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1) + A130706 n

end

end A077800.P10905883790573635482

namespace A077800

/-- `A171821(n+1)+A130706(n)` -/
def P10905883790573635482.Spec : Prop :=
  ∀ n, P10905883790573635482.a n = A077800 (n + 1)

theorem P10905883790573635482.correct : P10905883790573635482.Spec := by
  intro n
  simp only [A077800, Nat.add_sub_cancel, A077800.P10905883790573635482.a, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A130706, A130706.P6943270999618007984.a, A171821, A171821.P6124203405807324285.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P14552351031517696526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077800

/-! ## A077800.P14234832413249691608

`A096281(n+1)+A001097(n+2)-A096281(n+2)`
-/

namespace A077800.P14234832413249691608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096281 (n + 1) + (A001097 (n + 2) - A096281 (n + 2))

end

end A077800.P14234832413249691608

namespace A077800

/-- `A096281(n+1)+A001097(n+2)-A096281(n+2)` -/
def P14234832413249691608.Spec : Prop :=
  ∀ n, P14234832413249691608.a n = A077800 (n + 1)

end A077800

/-! ## A077800.P10419527624886937393

`A099609(n+3)`
-/

namespace A077800.P10419527624886937393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099609 (n + 3)

end

end A077800.P10419527624886937393

namespace A077800

/-- `A099609(n+3)` -/
def P10419527624886937393.Spec : Prop :=
  ∀ n, P10419527624886937393.a n = A077800 (n + 1)

end A077800

/-! ## A077800.P13624098128077928277

`filter[A162753(2*n), A164292(#)]`
-/

namespace A077800.P13624098128077928277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A077800.P13624098128077928277

namespace A077800

/-- `filter[A162753(2*n), A164292(#)]` -/
def P13624098128077928277.Spec : Prop :=
  ∀ n, P13624098128077928277.a n = A077800 (n + 1)

end A077800

/-! ## A077800.P987982714867054557

`A134451(n+1)+eq[A134451(2*n), A166597(n+1)]`
-/

namespace A077800.P987982714867054557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A077800.P987982714867054557

namespace A077800

/-- `A134451(n+1)+eq[A134451(2*n), A166597(n+1)]` -/
def P987982714867054557.Spec : Prop :=
  ∀ n, P987982714867054557.a n = A077800 (n + 1)

end A077800

/-! ## A077800.P11757596264834321242

`filter[A366871(n+1), A164292(#)]`
-/

namespace A077800.P11757596264834321242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A077800.P11757596264834321242

namespace A077800

/-- `filter[A366871(n+1), A164292(#)]` -/
def P11757596264834321242.Spec : Prop :=
  ∀ n, P11757596264834321242.a n = A077800 (n + 1)

end A077800

/-! ## A077800.P14176006201977211084

`filter[A063201(n+2), A164292(#)]`
-/

namespace A077800.P14176006201977211084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063201 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A077800.P14176006201977211084

namespace A077800

/-- `filter[A063201(n+2), A164292(#)]` -/
def P14176006201977211084.Spec : Prop :=
  ∀ n, P14176006201977211084.a n = A077800 (n + 1)

end A077800

/-! ## A077800.P464547349378385049

`filter[A228297(n+1), A164292(#)]`
-/

namespace A077800.P464547349378385049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A077800.P464547349378385049

namespace A077800

/-- `filter[A228297(n+1), A164292(#)]` -/
def P464547349378385049.Spec : Prop :=
  ∀ n, P464547349378385049.a n = A077800 (n + 1)

end A077800

/-! ## A077800.P10284666203300037301

`filter[A255347(n+1), A164292(#)]`
-/

namespace A077800.P10284666203300037301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A077800.P10284666203300037301

namespace A077800

/-- `filter[A255347(n+1), A164292(#)]` -/
def P10284666203300037301.Spec : Prop :=
  ∀ n, P10284666203300037301.a n = A077800 (n + 1)

end A077800

/-! ## A077800.P12754631218855748062

`filter[A373188(n+1), A164292(#)]`
-/

namespace A077800.P12754631218855748062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A077800.P12754631218855748062

namespace A077800

/-- `filter[A373188(n+1), A164292(#)]` -/
def P12754631218855748062.Spec : Prop :=
  ∀ n, P12754631218855748062.a n = A077800 (n + 1)

end A077800

/-! ## A077800.P2677694867828781398

`filter[A076752(n+1), A164292(#)]`
-/

namespace A077800.P2677694867828781398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A077800.P2677694867828781398

namespace A077800

/-- `filter[A076752(n+1), A164292(#)]` -/
def P2677694867828781398.Spec : Prop :=
  ∀ n, P2677694867828781398.a n = A077800 (n + 1)

end A077800

/-! ## A077800.P11489257269785108800

`filter[A090701(2*n+1), A164292(#)]`
-/

namespace A077800.P11489257269785108800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090701 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A077800.P11489257269785108800

namespace A077800

/-- `filter[A090701(2*n+1), A164292(#)]` -/
def P11489257269785108800.Spec : Prop :=
  ∀ n, P11489257269785108800.a n = A077800 (n + 1)

end A077800

/-! ## A077800.P65944846718846603

`filter[A180125(2*(n+1)), A164292(#)]`
-/

namespace A077800.P65944846718846603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180125 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A077800.P65944846718846603

namespace A077800

/-- `filter[A180125(2*(n+1)), A164292(#)]` -/
def P65944846718846603.Spec : Prop :=
  ∀ n, P65944846718846603.a n = A077800 (n + 1)

end A077800

/-!
# A077801: Non-balanced numbers in A015767.

The programs for A077801, there is no canonical definition to state claims against.
-/

/-! ## A077801.P9776712249398400713

`∩[A015767(n+1), A078542(n+1)]`
-/

namespace A077801.P9776712249398400713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077801.P9776712249398400713

/-!
# A077802: Sum of products of parts increased by 1 in hook partitions of n, where hook partitions are of the form h*1^(n-h).

The programs for A077802, the canonical program `A077802.P10514780311267771554` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077802 has offset 0).

The definition of A077802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077802.P10514780311267771554

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=18`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077802

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P10514780311267771554.Spec : Prop :=
  ∀ n, P10514780311267771554.a n = A077802 n

theorem P10514780311267771554.correct : P10514780311267771554.Spec := by
  intro n
  simp only [A077802]

end A077802

/-! ## A077802.P7329860370688749452

`∑[ogf((1+2x^2)/(1-2x))]-n`
-/

namespace A077802.P7329860370688749452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A077802.P7329860370688749452

namespace A077802

/-- `∑[ogf((1+2x^2)/(1-2x))]-n` -/
def P7329860370688749452.Spec : Prop :=
  ∀ n, P7329860370688749452.a n = A077802 n

end A077802

/-! ## A077802.P18236905558547693043

`∑[ogf((1-2x+4x^2-2x^3)/(1-3x+2x^2))]`
-/

namespace A077802.P18236905558547693043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4, -2] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077802.P18236905558547693043

namespace A077802

/-- `∑[ogf((1-2x+4x^2-2x^3)/(1-3x+2x^2))]` -/
def P18236905558547693043.Spec : Prop :=
  ∀ n, P18236905558547693043.a n = A077802 n

end A077802

/-! ## A077802.P4028679364968331134

`ogf((1-2x+4x^2-2x^3)/(1-4x+5x^2-2x^3))`
-/

namespace A077802.P4028679364968331134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4, -2] [1, -4, 5, -2] n

end

end A077802.P4028679364968331134

namespace A077802

/-- `ogf((1-2x+4x^2-2x^3)/(1-4x+5x^2-2x^3))` -/
def P4028679364968331134.Spec : Prop :=
  ∀ n, P4028679364968331134.a n = A077802 n

end A077802

/-! ## A077802.P17877930200818628759

`or(1, 3*(2^n-1))-n`
-/

namespace A077802.P17877930200818628759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * ((2 ^ n : ℤ) - 1)) - (n : ℤ)

end

end A077802.P17877930200818628759

namespace A077802

/-- `or(1, 3*(2^n-1))-n` -/
def P17877930200818628759.Spec : Prop :=
  ∀ n, P17877930200818628759.a n = A077802 n

end A077802

/-! ## A077802.P13073886558404442805

`record[2*a(n-1)+n]` with `a(0)=1, a(1)=0`
-/

namespace A077802.P13073886558404442805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 * f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077802.P13073886558404442805

namespace A077802

/-- `record[2*a(n-1)+n]` -/
def P13073886558404442805.Spec : Prop :=
  ∀ n, (P13073886558404442805.a n : ℤ) = A077802 n

end A077802

/-! ## A077802.P7830533180824408773

`∑[2*a(n-1)+1]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A077802.P7830533180824408773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077802.P7830533180824408773

namespace A077802

/-- `∑[2*a(n-1)+1]` -/
def P7830533180824408773.Spec : Prop :=
  ∀ n, (P7830533180824408773.a n : ℤ) = A077802 n

end A077802

/-! ## A077802.P15250166585344508351

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=4, a(3)=6`
-/

namespace A077802.P15250166585344508351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4, 6] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077802.P15250166585344508351

namespace A077802

/-- `∑[∑[2*a(n-1)]]` -/
def P15250166585344508351.Spec : Prop :=
  ∀ n, (P15250166585344508351.a n : ℤ) = A077802 n

end A077802

/-! ## A077802.P10285491984680220527

`1+2*a(n-1)+n` with `a(0)=1, a(1)=2`
-/

namespace A077802.P10285491984680220527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 + 2 * a (n - 1) + n

end

end A077802.P10285491984680220527

namespace A077802

/-- `1+2*a(n-1)+n` -/
def P10285491984680220527.Spec : Prop :=
  ∀ n, (P10285491984680220527.a n : ℤ) = A077802 n

end A077802

/-! ## A077802.P17382835666195221823

`3-(2*(1-a(n-1))-n)` with `a(0)=1, a(1)=2`
-/

namespace A077802.P17382835666195221823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - (2 * (1 - a (n - 1)) - (n : ℤ))

end

end A077802.P17382835666195221823

namespace A077802

/-- `3-(2*(1-a(n-1))-n)` -/
def P17382835666195221823.Spec : Prop :=
  ∀ n, P17382835666195221823.a n = A077802 n

end A077802

/-! ## A077802.P16104002127587411155

`record[a(n-1)+a(n-1)+n]` with `a(0)=1, a(1)=0`
-/

namespace A077802.P16104002127587411155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077802.P16104002127587411155

namespace A077802

/-- `record[a(n-1)+a(n-1)+n]` -/
def P16104002127587411155.Spec : Prop :=
  ∀ n, (P16104002127587411155.a n : ℤ) = A077802 n

end A077802

/-! ## A077802.P16450510775117873654

`∑[a(n-1)+a(n-1)+1]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A077802.P16450510775117873654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077802.P16450510775117873654

namespace A077802

/-- `∑[a(n-1)+a(n-1)+1]` -/
def P16450510775117873654.Spec : Prop :=
  ∀ n, (P16450510775117873654.a n : ℤ) = A077802 n

end A077802

/-! ## A077802.P5411036358496207852

`n+1+a(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A077802.P5411036358496207852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  n + 1 + (a (n - 1) + a (n - 1))

end

end A077802.P5411036358496207852

namespace A077802

/-- `n+1+a(n-1)+a(n-1)` -/
def P5411036358496207852.Spec : Prop :=
  ∀ n, (P5411036358496207852.a n : ℤ) = A077802 n

end A077802

/-! ## A077802.P2854541178723945926

`1-(a(n-1)/(1/2-1)-n)` with `a(0)=1, a(1)=2`
-/

namespace A077802.P2854541178723945926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (a (n - 1) / ((1 : ℚ) / 2 - 1) - (n : ℚ))

end

end A077802.P2854541178723945926

namespace A077802

/-- `1-(a(n-1)/(1/2-1)-n)` -/
def P2854541178723945926.Spec : Prop :=
  ∀ n, P2854541178723945926.a n = (A077802 n : ℚ)

end A077802

/-! ## A077802.P1931222598238459966

`2-floor(1-a(n-1)-a(n-1)-n)` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A077802.P1931222598238459966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - (1 - a (n - 1) - a (n - 1) - (n : ℤ))

end

end A077802.P1931222598238459966

namespace A077802

/-- `2-floor(1-a(n-1)-a(n-1)-n)` -/
def P1931222598238459966.Spec : Prop :=
  ∀ n, P1931222598238459966.a n = A077802 n

end A077802

/-! ## A077802.P1107461213007655242

`A068156(n)-n`
-/

namespace A077802.P1107461213007655242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068156 n - (n : ℤ)

end

end A077802.P1107461213007655242

namespace A077802

/-- `A068156(n)-n` -/
def P1107461213007655242.Spec : Prop :=
  ∀ n, P1107461213007655242.a n = A077802 n

end A077802

/-! ## A077802.P14825238012564931886

`record[A087009(n)-n]`
-/

namespace A077802.P14825238012564931886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087009 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077802.P14825238012564931886

namespace A077802

/-- `record[A087009(n)-n]` -/
def P14825238012564931886.Spec : Prop :=
  ∀ n, P14825238012564931886.a n = A077802 n

end A077802

/-! ## A077802.P15674320420025434971

`record[abs(2-A179744(n))]`
-/

namespace A077802.P15674320420025434971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A179744 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077802.P15674320420025434971

namespace A077802

/-- `record[abs(2-A179744(n))]` -/
def P15674320420025434971.Spec : Prop :=
  ∀ n, P15674320420025434971.a n = A077802 n

end A077802

/-! ## A077802.P16268116791312012027

`∑[A083329(n-char[1])]`
-/

namespace A077802.P16268116791312012027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (n - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077802.P16268116791312012027

namespace A077802

/-- `∑[A083329(n-char[1])]` -/
def P16268116791312012027.Spec : Prop :=
  ∀ n, P16268116791312012027.a n = A077802 n

end A077802

/-! ## A077802.P3303777307278893478

`A060482(Δ[n²])-n`
-/

namespace A077802.P3303777307278893478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060482 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A077802.P3303777307278893478

namespace A077802

/-- `A060482(Δ[n²])-n` -/
def P3303777307278893478.Spec : Prop :=
  ∀ n, P3303777307278893478.a n = A077802 n

end A077802

/-!
# A077804: Deficient oblong numbers.

The programs for A077804, there is no canonical definition to state claims against.
-/

/-! ## A077804.P17956752796506373587

`A002378(A191969(n+1))`
-/

namespace A077804.P17956752796506373587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A191969 (n + 1)).toNat

end

end A077804.P17956752796506373587

/-! ## A077804.P6421938359279636731

`A165900(A191969(n+1)+1)+1`
-/

namespace A077804.P6421938359279636731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (A191969 (n + 1) + 1).toNat + 1

end

end A077804.P6421938359279636731

/-! ## A077804.P2333629872819801343

`A110660(2*A191969(n+1))`
-/

namespace A077804.P2333629872819801343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (2 * A191969 (n + 1)).toNat

end

end A077804.P2333629872819801343

/-! ## A077804.P14349086871506290508

`A110660(A191969(n+1)+A191969(n+1)+1)`
-/

namespace A077804.P14349086871506290508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (A191969 (n + 1) + (A191969 (n + 1) + 1)).toNat

end

end A077804.P14349086871506290508

/-! ## A077804.P3979271147981530351

`A008619(2*A191969(n+1))*A191969(n+1)`
-/

namespace A077804.P3979271147981530351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A191969 (n + 1)).toNat * A191969 (n + 1)

end

end A077804.P3979271147981530351

/-! ## A077804.P11689457211522062583

`(A191969(n+1)+A071944(∑[n]))*A191969(n+1)`
-/

namespace A077804.P11689457211522062583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A191969 (n + 1) + A071944 (∑ j ∈ Finset.range (n + 1), f1 j)) * A191969 (n + 1)

end

end A077804.P11689457211522062583

/-! ## A077804.P16253711380389849037

`A000027((A191969(n+1)+1)*A191969(n+1))`
-/

namespace A077804.P16253711380389849037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((A191969 (n + 1) + 1) * A191969 (n + 1)).toNat

end

end A077804.P16253711380389849037

/-!
# A077805: Smallest prime factor of numbers containing in their decimal representation only the digits 0 and 1.

The programs for A077805, there is no canonical definition to state claims against.
-/

/-! ## A077805.P13856533132863508726

`A020639(A007088(n+1))`
-/

namespace A077805.P13856533132863508726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007088 (n + 1)).toNat

end

end A077805.P13856533132863508726

/-! ## A077805.P10082615819071366533

`A020639(Δ[A067894(n)])`
-/

namespace A077805.P10082615819071366533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat

end

end A077805.P10082615819071366533

/-! ## A077805.P13105250706460383552

`A020639(1+A007088(n))`
-/

namespace A077805.P13105250706460383552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (1 + A007088 n).toNat

end

end A077805.P13105250706460383552

/-! ## A077805.P4413863734481216195

`A020639(A077812(n+1))`
-/

namespace A077805.P4413863734481216195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A077812 (n + 1)).toNat

end

end A077805.P4413863734481216195

/-!
# A077806: Greatest prime factor of numbers containing in their decimal representation only the digits 0 and 1.

The programs for A077806, the canonical program `A077806.P828100804955235734` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077806 has offset 1).

The definition of A077806 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077806.P828100804955235734

`A006530(A007088(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A077806

/-- `A006530(A007088(n+1))` -/
def P828100804955235734.Spec : Prop :=
  ∀ n, P828100804955235734.a n = A077806 (n + 1)

theorem P828100804955235734.correct : P828100804955235734.Spec := by
  intro n
  simp only [A077806, Nat.add_sub_cancel]

end A077806

/-! ## A077806.P14900002596322788560

`A006530(A354838(n+1))`
-/

namespace A077806.P14900002596322788560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A354838 (n + 1)).toNat

end

end A077806.P14900002596322788560

namespace A077806

/-- `A006530(A354838(n+1))` -/
def P14900002596322788560.Spec : Prop :=
  ∀ n, P14900002596322788560.a n = A077806 (n + 1)

end A077806

/-! ## A077806.P12745775656692284721

`A006530(Δ[A067894(n)])`
-/

namespace A077806.P12745775656692284721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A077806.P12745775656692284721

namespace A077806

/-- `A006530(Δ[A067894(n)])` -/
def P12745775656692284721.Spec : Prop :=
  ∀ n, P12745775656692284721.a n = A077806 (n + 1)

end A077806

/-! ## A077806.P7464675049407250583

`A006530(A077812(n+1))`
-/

namespace A077806.P7464675049407250583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A077812 (n + 1)).toNat

end

end A077806.P7464675049407250583

namespace A077806

/-- `A006530(A077812(n+1))` -/
def P7464675049407250583.Spec : Prop :=
  ∀ n, P7464675049407250583.a n = A077806 (n + 1)

end A077806

/-! ## A077806.P8370874987380665402

`A034699(∏{p}[A007088(n+1), #])`
-/

namespace A077806.P8370874987380665402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A077806.P8370874987380665402

namespace A077806

/-- `A034699(∏{p}[A007088(n+1), #])` -/
def P8370874987380665402.Spec : Prop :=
  ∀ n, P8370874987380665402.a n = A077806 (n + 1)

end A077806

/-!
# A077807: Number of distinct prime factors of numbers containing in their decimal representation only the digits 0 and 1.

The programs for A077807, the canonical program `A077807.P2572054208741145495` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077807 has offset 1).

The definition of A077807 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077807.P2572054208741145495

`A001221(A007088(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A077807

/-- `A001221(A007088(n+1))` -/
def P2572054208741145495.Spec : Prop :=
  ∀ n, P2572054208741145495.a n = A077807 (n + 1)

theorem P2572054208741145495.correct : P2572054208741145495.Spec := by
  intro n
  simp only [A077807, Nat.add_sub_cancel]

end A077807

/-! ## A077807.P2407381332845463302

`∑{e}[A077812(n+1), #]`
-/

namespace A077807.P2407381332845463302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077812 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A077807.P2407381332845463302

namespace A077807

/-- `∑{e}[A077812(n+1), #]` -/
def P2407381332845463302.Spec : Prop :=
  ∀ n, (P2407381332845463302.a n : ℤ) = A077807 (n + 1)

end A077807

/-! ## A077807.P6863451554043833283

`∑{e}[A007088(A327937(n+1)), #]`
-/

namespace A077807.P6863451554043833283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A327937 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A077807.P6863451554043833283

namespace A077807

/-- `∑{e}[A007088(A327937(n+1)), #]` -/
def P6863451554043833283.Spec : Prop :=
  ∀ n, (P6863451554043833283.a n : ℤ) = A077807 (n + 1)

end A077807

/-! ## A077807.P4971669912034371333

`∑{e}[A007088(n+1), A000383(#)]`
-/

namespace A077807.P4971669912034371333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000383 (Nat.factorization (f1 n).natAbs p)

end

end A077807.P4971669912034371333

namespace A077807

/-- `∑{e}[A007088(n+1), A000383(#)]` -/
def P4971669912034371333.Spec : Prop :=
  ∀ n, P4971669912034371333.a n = A077807 (n + 1)

end A077807

/-! ## A077807.P3892522467562135761

`∑{e}[A007088(n+1), A005709(#)]`
-/

namespace A077807.P3892522467562135761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005709 (Nat.factorization (f1 n).natAbs p)

end

end A077807.P3892522467562135761

namespace A077807

/-- `∑{e}[A007088(n+1), A005709(#)]` -/
def P3892522467562135761.Spec : Prop :=
  ∀ n, P3892522467562135761.a n = A077807 (n + 1)

end A077807

/-! ## A077807.P17382081598403436410

`∑{e}[A007088(n+1), A008284(#)]`
-/

namespace A077807.P17382081598403436410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008284 (Nat.factorization (f1 n).natAbs p)

end

end A077807.P17382081598403436410

namespace A077807

/-- `∑{e}[A007088(n+1), A008284(#)]` -/
def P17382081598403436410.Spec : Prop :=
  ∀ n, P17382081598403436410.a n = A077807 (n + 1)

end A077807

/-! ## A077807.P1283812188235534792

`∑{e}[A007088(n+1), A008289(#)]`
-/

namespace A077807.P1283812188235534792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008289 (Nat.factorization (f1 n).natAbs p)

end

end A077807.P1283812188235534792

namespace A077807

/-- `∑{e}[A007088(n+1), A008289(#)]` -/
def P1283812188235534792.Spec : Prop :=
  ∀ n, P1283812188235534792.a n = A077807 (n + 1)

end A077807

/-! ## A077807.P723372398703004628

`∑{e}[A007088(n+1), A008480(#)]`
-/

namespace A077807.P723372398703004628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008480 (Nat.factorization (f1 n).natAbs p)

end

end A077807.P723372398703004628

namespace A077807

/-- `∑{e}[A007088(n+1), A008480(#)]` -/
def P723372398703004628.Spec : Prop :=
  ∀ n, P723372398703004628.a n = A077807 (n + 1)

end A077807

/-! ## A077807.P15908836919096568748

`∑{e}[A007088(n+1), A010055(#)]`
-/

namespace A077807.P15908836919096568748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010055 (Nat.factorization (f1 n).natAbs p)

end

end A077807.P15908836919096568748

namespace A077807

/-- `∑{e}[A007088(n+1), A010055(#)]` -/
def P15908836919096568748.Spec : Prop :=
  ∀ n, P15908836919096568748.a n = A077807 (n + 1)

end A077807

/-!
# A077808: Number of prime factors of numbers containing in their decimal representation only the digits 0 and 1 (counted with multiplicity).

The programs for A077808, the canonical program `A077808.P6672535155909729965` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077808 has offset 1).

The definition of A077808 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077808.P6672535155909729965

`A001222(A007088(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A077808

/-- `A001222(A007088(n+1))` -/
def P6672535155909729965.Spec : Prop :=
  ∀ n, P6672535155909729965.a n = A077808 (n + 1)

theorem P6672535155909729965.correct : P6672535155909729965.Spec := by
  intro n
  simp only [A077808, Nat.add_sub_cancel]

end A077808

/-! ## A077808.P15134310902946008544

`∑{e}[Δ[A067894(n)], #]`
-/

namespace A077808.P15134310902946008544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067894 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A077808.P15134310902946008544

namespace A077808

/-- `∑{e}[Δ[A067894(n)], #]` -/
def P15134310902946008544.Spec : Prop :=
  ∀ n, (P15134310902946008544.a n : ℤ) = A077808 (n + 1)

end A077808

/-! ## A077808.P2346055911820708825

`∑{e}[A007088(1+n), #]`
-/

namespace A077808.P2346055911820708825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A077808.P2346055911820708825

namespace A077808

/-- `∑{e}[A007088(1+n), #]` -/
def P2346055911820708825.Spec : Prop :=
  ∀ n, (P2346055911820708825.a n : ℤ) = A077808 (n + 1)

end A077808

/-! ## A077808.P5121515318604041814

`∑{e}[∑[A138342(n+1)], #]`
-/

namespace A077808.P5121515318604041814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A077808.P5121515318604041814

namespace A077808

/-- `∑{e}[∑[A138342(n+1)], #]` -/
def P5121515318604041814.Spec : Prop :=
  ∀ n, (P5121515318604041814.a n : ℤ) = A077808 (n + 1)

end A077808

/-! ## A077808.P4872778678944810217

`∑{e}[record[A182620(n+1)], #]`
-/

namespace A077808.P4872778678944810217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182620 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A077808.P4872778678944810217

namespace A077808

/-- `∑{e}[record[A182620(n+1)], #]` -/
def P4872778678944810217.Spec : Prop :=
  ∀ n, (P4872778678944810217.a n : ℤ) = A077808 (n + 1)

end A077808

/-! ## A077808.P5744066104074202716

`∑{e}[A097256(n+1), #]-2`
-/

namespace A077808.P5744066104074202716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 2

end

end A077808.P5744066104074202716

namespace A077808

/-- `∑{e}[A097256(n+1), #]-2` -/
def P5744066104074202716.Spec : Prop :=
  ∀ n, P5744066104074202716.a n = A077808 (n + 1)

end A077808

/-! ## A077808.P15729203358941099033

`∑{e}[A169965(n+2), #]-1`
-/

namespace A077808.P15729203358941099033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A077808.P15729203358941099033

namespace A077808

/-- `∑{e}[A169965(n+2), #]-1` -/
def P15729203358941099033.Spec : Prop :=
  ∀ n, P15729203358941099033.a n = A077808 (n + 1)

end A077808

/-! ## A077808.P18231792660035360358

`∑{e}[A185544(2*(n+1)), #]`
-/

namespace A077808.P18231792660035360358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A077808.P18231792660035360358

namespace A077808

/-- `∑{e}[A185544(2*(n+1)), #]` -/
def P18231792660035360358.Spec : Prop :=
  ∀ n, (P18231792660035360358.a n : ℤ) = A077808 (n + 1)

end A077808

/-! ## A077808.P17139004125955522365

`∑{e}[Δ[A169964(n+1)/5]+A169964(n+1)/5, #]`
-/

namespace A077808.P17139004125955522365
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169964 (n + 1) : ℚ) / 5

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (A169964 (n + 1) : ℚ) / 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A077808.P17139004125955522365

namespace A077808

/-- `∑{e}[Δ[A169964(n+1)/5]+A169964(n+1)/5, #]` -/
def P17139004125955522365.Spec : Prop :=
  ∀ n, (P17139004125955522365.a n : ℤ) = A077808 (n + 1)

end A077808

/-!
# A077809: Number of divisors of numbers containing in their decimal representation only the digits 0 and 1.

The programs for A077809, the canonical program `A077809.P14212101923891153479` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077809 has offset 1).

The definition of A077809 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077809.P14212101923891153479

`A000005(A007088(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A077809

/-- `A000005(A007088(n+1))` -/
def P14212101923891153479.Spec : Prop :=
  ∀ n, P14212101923891153479.a n = A077809 (n + 1)

theorem P14212101923891153479.correct : P14212101923891153479.Spec := by
  intro n
  simp only [A077809, Nat.add_sub_cancel]

end A077809

/-! ## A077809.P15928480884863062969

`∏{e}[Δ[A067894(n)], #+1]`
-/

namespace A077809.P15928480884863062969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067894 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A077809.P15928480884863062969

namespace A077809

/-- `∏{e}[Δ[A067894(n)], #+1]` -/
def P15928480884863062969.Spec : Prop :=
  ∀ n, (P15928480884863062969.a n : ℤ) = A077809 (n + 1)

end A077809

/-! ## A077809.P17793318931064282079

`∏{e}[A007088(n+1), #+1]`
-/

namespace A077809.P17793318931064282079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A077809.P17793318931064282079

namespace A077809

/-- `∏{e}[A007088(n+1), #+1]` -/
def P17793318931064282079.Spec : Prop :=
  ∀ n, (P17793318931064282079.a n : ℤ) = A077809 (n + 1)

end A077809

/-! ## A077809.P16248449017142279679

`∏{e}[sqrt(A063009(n+1)), #+1]`
-/

namespace A077809.P16248449017142279679
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A077809.P16248449017142279679

namespace A077809

/-- `∏{e}[sqrt(A063009(n+1)), #+1]` -/
def P16248449017142279679.Spec : Prop :=
  ∀ n, (P16248449017142279679.a n : ℤ) = A077809 (n + 1)

end A077809

/-! ## A077809.P18259455908524008750

`∏{e}[∑[A138342(n+1)], #+1]`
-/

namespace A077809.P18259455908524008750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A077809.P18259455908524008750

namespace A077809

/-- `∏{e}[∑[A138342(n+1)], #+1]` -/
def P18259455908524008750.Spec : Prop :=
  ∀ n, (P18259455908524008750.a n : ℤ) = A077809 (n + 1)

end A077809

/-! ## A077809.P4688279143132598846

`∏{e}[A169966(2*n+3)/30, #+1]`
-/

namespace A077809.P4688279143132598846
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169966 (2 * n + 3) : ℚ) / 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A077809.P4688279143132598846

namespace A077809

/-- `∏{e}[A169966(2*n+3)/30, #+1]` -/
def P4688279143132598846.Spec : Prop :=
  ∀ n, (P4688279143132598846.a n : ℤ) = A077809 (n + 1)

end A077809

/-!
# A077810: Sum of divisors of numbers containing in their decimal representation only the digits 0 and 1.

The programs for A077810, the canonical program `A077810.P10946061899893420603` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077810 has offset 1).

The definition of A077810 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077810.P10946061899893420603

`A000203(A007088(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A077810

/-- `A000203(A007088(n+1))` -/
def P10946061899893420603.Spec : Prop :=
  ∀ n, P10946061899893420603.a n = A077810 (n + 1)

theorem P10946061899893420603.correct : P10946061899893420603.Spec := by
  intro n
  simp only [A077810, Nat.add_sub_cancel]

end A077810

/-! ## A077810.P17468886050691314555

`∑{d}[Δ[A067894(n)], #]`
-/

namespace A077810.P17468886050691314555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067894 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A077810.P17468886050691314555

namespace A077810

/-- `∑{d}[Δ[A067894(n)], #]` -/
def P17468886050691314555.Spec : Prop :=
  ∀ n, (P17468886050691314555.a n : ℤ) = A077810 (n + 1)

end A077810

/-! ## A077810.P13842496928119127775

`∑{d}[A007088(n+1), #]`
-/

namespace A077810.P13842496928119127775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A077810.P13842496928119127775

namespace A077810

/-- `∑{d}[A007088(n+1), #]` -/
def P13842496928119127775.Spec : Prop :=
  ∀ n, (P13842496928119127775.a n : ℤ) = A077810 (n + 1)

end A077810

/-! ## A077810.P4228273373786865598

`∑{d}[sqrt(A063009(n+1)), #]`
-/

namespace A077810.P4228273373786865598
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A077810.P4228273373786865598

namespace A077810

/-- `∑{d}[sqrt(A063009(n+1)), #]` -/
def P4228273373786865598.Spec : Prop :=
  ∀ n, (P4228273373786865598.a n : ℤ) = A077810 (n + 1)

end A077810

/-! ## A077810.P11020995271012119710

`∑{d}[∑[A138342(n+1)], #]`
-/

namespace A077810.P11020995271012119710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A077810.P11020995271012119710

namespace A077810

/-- `∑{d}[∑[A138342(n+1)], #]` -/
def P11020995271012119710.Spec : Prop :=
  ∀ n, (P11020995271012119710.a n : ℤ) = A077810 (n + 1)

end A077810

/-! ## A077810.P15242854812865583639

`∑{d}[record[A182620(n+1)], #]`
-/

namespace A077810.P15242854812865583639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182620 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A077810.P15242854812865583639

namespace A077810

/-- `∑{d}[record[A182620(n+1)], #]` -/
def P15242854812865583639.Spec : Prop :=
  ∀ n, (P15242854812865583639.a n : ℤ) = A077810 (n + 1)

end A077810

/-! ## A077810.P13799495278021997144

`∑{d}[A185544(2*(n+1)), #]`
-/

namespace A077810.P13799495278021997144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A077810.P13799495278021997144

namespace A077810

/-- `∑{d}[A185544(2*(n+1)), #]` -/
def P13799495278021997144.Spec : Prop :=
  ∀ n, (P13799495278021997144.a n : ℤ) = A077810 (n + 1)

end A077810

/-! ## A077810.P3236935013516663490

`∑{d}[A204093(n+1)/6, #]`
-/

namespace A077810.P3236935013516663490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204093 (n + 1) : ℚ) / 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A077810.P3236935013516663490

namespace A077810

/-- `∑{d}[A204093(n+1)/6, #]` -/
def P3236935013516663490.Spec : Prop :=
  ∀ n, (P3236935013516663490.a n : ℤ) = A077810 (n + 1)

end A077810

/-! ## A077810.P16066366402644863836

`∑{d}[A228071(n+1)+n+1, #]`
-/

namespace A077810.P16066366402644863836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228071 (n + 1) + (n : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A077810.P16066366402644863836

namespace A077810

/-- `∑{d}[A228071(n+1)+n+1, #]` -/
def P16066366402644863836.Spec : Prop :=
  ∀ n, (P16066366402644863836.a n : ℤ) = A077810 (n + 1)

end A077810

/-! ## A077810.P14470760378583898535

`∑{d}[n-A269130(n+1)+1, #]`
-/

namespace A077810.P14470760378583898535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A269130 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A077810.P14470760378583898535

namespace A077810

/-- `∑{d}[n-A269130(n+1)+1, #]` -/
def P14470760378583898535.Spec : Prop :=
  ∀ n, (P14470760378583898535.a n : ℤ) = A077810 (n + 1)

end A077810

/-!
# A077811: Euler's totient of numbers containing in their decimal representation only the digits 0 and 1.

The programs for A077811, the canonical program `A077811.P9629137586577371590` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077811 has offset 1).

The definition of A077811 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077811.P9629137586577371590

`A000010(A007088(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A077811

/-- `A000010(A007088(n+1))` -/
def P9629137586577371590.Spec : Prop :=
  ∀ n, P9629137586577371590.a n = A077811 (n + 1)

theorem P9629137586577371590.correct : P9629137586577371590.Spec := by
  intro n
  simp only [A077811, Nat.add_sub_cancel]

end A077811

/-! ## A077811.P3075037008019033699

`A000010(Δ[A067894(n)])`
-/

namespace A077811.P3075037008019033699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A077811.P3075037008019033699

namespace A077811

/-- `A000010(Δ[A067894(n)])` -/
def P3075037008019033699.Spec : Prop :=
  ∀ n, P3075037008019033699.a n = A077811 (n + 1)

end A077811

/-! ## A077811.P18024466245968214020

`A000010(sqrt(A063009(n+1)))`
-/

namespace A077811.P18024466245968214020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A063009 (n + 1) : ℝ))).toNat

end

end A077811.P18024466245968214020

namespace A077811

/-- `A000010(sqrt(A063009(n+1)))` -/
def P18024466245968214020.Spec : Prop :=
  ∀ n, P18024466245968214020.a n = A077811 (n + 1)

end A077811

/-! ## A077811.P18258697627660705399

`A000010(∑[A138342(1+n)])`
-/

namespace A077811.P18258697627660705399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077811.P18258697627660705399

namespace A077811

/-- `A000010(∑[A138342(1+n)])` -/
def P18258697627660705399.Spec : Prop :=
  ∀ n, P18258697627660705399.a n = A077811 (n + 1)

end A077811

/-! ## A077811.P17248831026271749447

`A000010(record[A182620(n+1)])`
-/

namespace A077811.P17248831026271749447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077811.P17248831026271749447

namespace A077811

/-- `A000010(record[A182620(n+1)])` -/
def P17248831026271749447.Spec : Prop :=
  ∀ n, P17248831026271749447.a n = A077811 (n + 1)

end A077811

/-!
# A077812: Squarefree kernel of numbers containing in their decimal representation only the digits 0 and 1.

The programs for A077812, the canonical program `A077812.P18266462485263755102` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077812 has offset 1).

The definition of A077812 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077812.P18266462485263755102

`A007947(A007088(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A077812

/-- `A007947(A007088(n+1))` -/
def P18266462485263755102.Spec : Prop :=
  ∀ n, P18266462485263755102.a n = A077812 (n + 1)

theorem P18266462485263755102.correct : P18266462485263755102.Spec := by
  intro n
  simp only [A077812, Nat.add_sub_cancel]

end A077812

/-! ## A077812.P10797540830443024029

`A007088(A327937(n+1))%A005935(A005935(n+1))`
-/

namespace A077812.P10797540830443024029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 (A327937 (n + 1)).toNat) (A005935 (A005935 (n + 1)).toNat)

end

end A077812.P10797540830443024029

namespace A077812

/-- `A007088(A327937(n+1))%A005935(A005935(n+1))` -/
def P10797540830443024029.Spec : Prop :=
  ∀ n, P10797540830443024029.a n = A077812 (n + 1)

end A077812

/-! ## A077812.P15823071233746536567

`A010051(A005935(n+1)+1)+A007088(A327937(n+1))`
-/

namespace A077812.P15823071233746536567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A005935 (n + 1) + 1).toNat + A007088 (A327937 (n + 1)).toNat

end

end A077812.P15823071233746536567

namespace A077812

/-- `A010051(A005935(n+1)+1)+A007088(A327937(n+1))` -/
def P15823071233746536567.Spec : Prop :=
  ∀ n, P15823071233746536567.a n = A077812 (n + 1)

end A077812

/-! ## A077812.P11338993176290663950

`A007088(A327937(n+1))%A001844(A001844(n))`
-/

namespace A077812.P11338993176290663950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 (A327937 (n + 1)).toNat) (A001844 (A001844 n).toNat)

end

end A077812.P11338993176290663950

namespace A077812

/-- `A007088(A327937(n+1))%A001844(A001844(n))` -/
def P11338993176290663950.Spec : Prop :=
  ∀ n, P11338993176290663950.a n = A077812 (n + 1)

end A077812

/-! ## A077812.P2702246453447524836

`A185014(A007504(n))+A007088(A327937(n+1))`
-/

namespace A077812.P2702246453447524836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 (A007504 n).toNat + A007088 (A327937 (n + 1)).toNat

end

end A077812.P2702246453447524836

namespace A077812

/-- `A185014(A007504(n))+A007088(A327937(n+1))` -/
def P2702246453447524836.Spec : Prop :=
  ∀ n, P2702246453447524836.a n = A077812 (n + 1)

end A077812

/-! ## A077812.P8692742924716861071

`A000001(A046117(2*(n+1)))*A007088(A327937(n+1))`
-/

namespace A077812.P8692742924716861071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A046117 (2 * (n + 1))).toNat * A007088 (A327937 (n + 1)).toNat

end

end A077812.P8692742924716861071

namespace A077812

/-- `A000001(A046117(2*(n+1)))*A007088(A327937(n+1))` -/
def P8692742924716861071.Spec : Prop :=
  ∀ n, P8692742924716861071.a n = A077812 (n + 1)

end A077812

/-! ## A077812.P4622518058608904199

`∏{p}[A007088(∏{p}[n+1, gcd(n+1, #²)]), #]`
-/

namespace A077812.P4622518058608904199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd (n + 1) (p ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077812.P4622518058608904199

namespace A077812

/-- `∏{p}[A007088(∏{p}[n+1, gcd(n+1, #²)]), #]` -/
def P4622518058608904199.Spec : Prop :=
  ∀ n, (P4622518058608904199.a n : ℤ) = A077812 (n + 1)

end A077812

/-! ## A077812.P11835593465663060217

`∏{p}[A007088((∏{p}[n+1, #]^3+n)%(n+1)+1), #]`
-/

namespace A077812.P11835593465663060217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (((∏ p ∈ Nat.primeFactors (f2 n), p) ^ 3 + n) % (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077812.P11835593465663060217

namespace A077812

/-- `∏{p}[A007088((∏{p}[n+1, #]^3+n)%(n+1)+1), #]` -/
def P11835593465663060217.Spec : Prop :=
  ∀ n, (P11835593465663060217.a n : ℤ) = A077812 (n + 1)

end A077812

/-! ## A077812.P17005916845619859375

`∏{p}[A007088(n+1), #]`
-/

namespace A077812.P17005916845619859375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077812.P17005916845619859375

namespace A077812

/-- `∏{p}[A007088(n+1), #]` -/
def P17005916845619859375.Spec : Prop :=
  ∀ n, (P17005916845619859375.a n : ℤ) = A077812 (n + 1)

end A077812

/-!
# A077813: Squarefree numbers containing in their decimal representation only the digits 0 and 1.

The programs for A077813, the canonical program `A077813.P3578931286237445826` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077813 has offset 1).

The definition of A077813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077813.P3578931286237445826

`record[A077812(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A077813

/-- `record[A077812(n+1)]` -/
def P3578931286237445826.Spec : Prop :=
  ∀ n, P3578931286237445826.a n = A077813 (n + 1)

theorem P3578931286237445826.correct : P3578931286237445826.Spec := by
  intro n
  simp only [A077813, Nat.add_sub_cancel]

end A077813

/-! ## A077813.P8091822369038003420

`A089461(n)%2*A007088(A048103(n+1))`
-/

namespace A077813.P8091822369038003420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089461 n) 2 * A007088 (A048103 (n + 1)).toNat

end

end A077813.P8091822369038003420

namespace A077813

/-- `A089461(n)%2*A007088(A048103(n+1))` -/
def P8091822369038003420.Spec : Prop :=
  ∀ n, P8091822369038003420.a n = A077813 (n + 1)

end A077813

/-! ## A077813.P8176433277693318260

`A007088(A048103(n+1))%A092184(3*(n+1))`
-/

namespace A077813.P8176433277693318260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 (A048103 (n + 1)).toNat) (A092184 (3 * (n + 1)))

end

end A077813.P8176433277693318260

namespace A077813

/-- `A007088(A048103(n+1))%A092184(3*(n+1))` -/
def P8176433277693318260.Spec : Prop :=
  ∀ n, P8176433277693318260.a n = A077813 (n + 1)

end A077813

/-! ## A077813.P9648639156221336451

`A007088(A048103(n+1))*A050358(A093929(n+1))`
-/

namespace A077813.P9648639156221336451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A048103 (n + 1)).toNat * A050358 (A093929 (n + 1)).toNat

end

end A077813.P9648639156221336451

namespace A077813

/-- `A007088(A048103(n+1))*A050358(A093929(n+1))` -/
def P9648639156221336451.Spec : Prop :=
  ∀ n, P9648639156221336451.a n = A077813 (n + 1)

end A077813

/-! ## A077813.P7473553394368404262

`A007088(A048103(n+1))*A050358(A093931(n+1))`
-/

namespace A077813.P7473553394368404262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A048103 (n + 1)).toNat * A050358 (A093931 (n + 1)).toNat

end

end A077813.P7473553394368404262

namespace A077813

/-- `A007088(A048103(n+1))*A050358(A093931(n+1))` -/
def P7473553394368404262.Spec : Prop :=
  ∀ n, P7473553394368404262.a n = A077813 (n + 1)

end A077813

/-! ## A077813.P14350664813600844032

`A007088(A048103(n+1))%(A089461(n)+A038279(n))`
-/

namespace A077813.P14350664813600844032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 (A048103 (n + 1)).toNat) (A089461 n + A038279 n)

end

end A077813.P14350664813600844032

namespace A077813

/-- `A007088(A048103(n+1))%(A089461(n)+A038279(n))` -/
def P14350664813600844032.Spec : Prop :=
  ∀ n, P14350664813600844032.a n = A077813 (n + 1)

end A077813

/-!
# A077814: a(n) = #{0<=k<=n: mod(k*n,4)=2}.

The programs for A077814, the canonical program `A077814.P14443698375759428085` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077814 has offset 0).

The definition of A077814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077814.P14443698375759428085

`ogf((x^2-x^3+x^4)/(1-2x+3x^2-4x^3+3x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077814

/-- `ogf((x^2-x^3+x^4)/(1-2x+3x^2-4x^3+3x^4-2x^5+x^6))` -/
def P14443698375759428085.Spec : Prop :=
  ∀ n, P14443698375759428085.a n = A077814 n

theorem P14443698375759428085.correct : P14443698375759428085.Spec := by
  intro n
  simp only [A077814]

end A077814

/-! ## A077814.P1153780925982348255

`round(lcm(n, n²%8)/4)`
-/

namespace A077814.P1153780925982348255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm n (n ^ 2 % 8) : ℚ) / 4)

end

end A077814.P1153780925982348255

namespace A077814

/-- `round(lcm(n, n²%8)/4)` -/
def P1153780925982348255.Spec : Prop :=
  ∀ n, P1153780925982348255.a n = A077814 n

end A077814

/-! ## A077814.P11370815126418534564

`round(n*gcd(4, n)%4/4)`
-/

namespace A077814.P11370815126418534564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n * (Nat.gcd 4 n % 4) : ℕ) : ℚ) / 4)

end

end A077814.P11370815126418534564

namespace A077814

/-- `round(n*gcd(4, n)%4/4)` -/
def P11370815126418534564.Spec : Prop :=
  ∀ n, P11370815126418534564.a n = A077814 n

end A077814

/-! ## A077814.P7151071905313727802

`and(-2, ∑[n])%(n+1)/2`
-/

namespace A077814.P7151071905313727802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (Int.land (-2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (n + 1 : ℤ) : ℚ) / 2

end

end A077814.P7151071905313727802

namespace A077814

/-- `and(-2, ∑[n])%(n+1)/2` -/
def P7151071905313727802.Spec : Prop :=
  ∀ n, P7151071905313727802.a n = (A077814 n : ℚ)

end A077814

/-! ## A077814.P11512481266395876458

`floor(∑[n]%lcm(2, n+1)/2)`
-/

namespace A077814.P11512481266395876458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) % Nat.lcm 2 (n + 1) : ℕ) : ℚ) / 2⌋

end

end A077814.P11512481266395876458

namespace A077814

/-- `floor(∑[n]%lcm(2, n+1)/2)` -/
def P11512481266395876458.Spec : Prop :=
  ∀ n, P11512481266395876458.a n = A077814 n

end A077814

/-! ## A077814.P659652232527939380

`floor(xor(1, ∑[n])%(n+1)/2)`
-/

namespace A077814.P659652232527939380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℚ) / 2⌋

end

end A077814.P659652232527939380

namespace A077814

/-- `floor(xor(1, ∑[n])%(n+1)/2)` -/
def P659652232527939380.Spec : Prop :=
  ∀ n, P659652232527939380.a n = A077814 n

end A077814

/-! ## A077814.P8325740341345345090

`∑[∑[and(2, n)]]%(n+1)/2`
-/

namespace A077814.P8325740341345345090
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℚ) / 2

end

end A077814.P8325740341345345090

namespace A077814

/-- `∑[∑[and(2, n)]]%(n+1)/2` -/
def P8325740341345345090.Spec : Prop :=
  ∀ n, P8325740341345345090.a n = (A077814 n : ℚ)

end A077814

/-! ## A077814.P738245659915569782

`(or(1, ∑[n])-1)%(n+1)/2`
-/

namespace A077814.P738245659915569782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1) (n + 1 : ℤ) : ℚ) / 2

end

end A077814.P738245659915569782

namespace A077814

/-- `(or(1, ∑[n])-1)%(n+1)/2` -/
def P738245659915569782.Spec : Prop :=
  ∀ n, P738245659915569782.a n = (A077814 n : ℚ)

end A077814

/-! ## A077814.P4200641841568875848

`∑[and(1, ∑[n])-a(n-2)]` with `a(0)=0, a(1)=0`
-/

namespace A077814.P4200641841568875848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077814.P4200641841568875848

namespace A077814

/-- `∑[and(1, ∑[n])-a(n-2)]` -/
def P4200641841568875848.Spec : Prop :=
  ∀ n, P4200641841568875848.a n = A077814 n

end A077814

/-! ## A077814.P1474106388736008747

`Δ[floor((n+1)/4)*floor(n/2)]`
-/

namespace A077814.P1474106388736008747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 4⌋ * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077814.P1474106388736008747

namespace A077814

/-- `Δ[floor((n+1)/4)*floor(n/2)]` -/
def P1474106388736008747.Spec : Prop :=
  ∀ n, P1474106388736008747.a n = A077814 n

end A077814

/-! ## A077814.P8741897148372770483

`n-(a(n-4)+2*a(n-2)+2)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A077814.P8741897148372770483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  (n : ℤ) - (a (n - 4) + 2 * a (n - 2) + 2)

end

end A077814.P8741897148372770483

namespace A077814

/-- `n-(a(n-4)+2*a(n-2)+2)` -/
def P8741897148372770483.Spec : Prop :=
  ∀ n, P8741897148372770483.a n = A077814 n

end A077814

/-! ## A077814.P8363346588476425247

`A131728((n-1)%(n+1))`
-/

namespace A077814.P8363346588476425247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A077814.P8363346588476425247

namespace A077814

/-- `A131728((n-1)%(n+1))` -/
def P8363346588476425247.Spec : Prop :=
  ∀ n, P8363346588476425247.a n = A077814 n

end A077814

/-! ## A077814.P12125944566763570285

`A134172(n)-a(n-1)` with `a(0)=0`
-/

namespace A077814.P12125944566763570285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A134172 n - a (n - 1)

end

end A077814.P12125944566763570285

namespace A077814

/-- `A134172(n)-a(n-1)` -/
def P12125944566763570285.Spec : Prop :=
  ∀ n, P12125944566763570285.a n = A077814 n

end A077814

/-! ## A077814.P12344582988181424219

`abs(a(n-2)-n)-A049206(n+1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A077814.P12344582988181424219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  |a (n - 2) - (n : ℤ)| - A049206 (n + 1)

end

end A077814.P12344582988181424219

namespace A077814

/-- `abs(a(n-2)-n)-A049206(n+1)` -/
def P12344582988181424219.Spec : Prop :=
  ∀ n, P12344582988181424219.a n = A077814 n

end A077814

/-! ## A077814.P3419752572352769026

`abs(a(n-2)-n)-A004525(n+1)%(n+1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A077814.P3419752572352769026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  |a (n - 2) - (n : ℤ)| - Int.tmod (A004525 (n + 1)) (n + 1 : ℤ)

end

end A077814.P3419752572352769026

namespace A077814

/-- `abs(a(n-2)-n)-A004525(n+1)%(n+1)` -/
def P3419752572352769026.Spec : Prop :=
  ∀ n, P3419752572352769026.a n = A077814 n

end A077814

/-! ## A077814.P14037609645302104682

`A131728(A263313(n))`
-/

namespace A077814.P14037609645302104682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 (A263313 n).toNat

end

end A077814.P14037609645302104682

namespace A077814

/-- `A131728(A263313(n))` -/
def P14037609645302104682.Spec : Prop :=
  ∀ n, P14037609645302104682.a n = A077814 n

end A077814

/-! ## A077814.P8243466880453467144

`A214392(n)-A030065(n)`
-/

namespace A077814.P8243466880453467144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214392 n - A030065 n

end

end A077814.P8243466880453467144

namespace A077814

/-- `A214392(n)-A030065(n)` -/
def P8243466880453467144.Spec : Prop :=
  ∀ n, P8243466880453467144.a n = A077814 n

end A077814

/-! ## A077814.P16410764513458839174

`A281026(n)%A030640(n)`
-/

namespace A077814.P16410764513458839174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281026 n) (A030640 n)

end

end A077814.P16410764513458839174

namespace A077814

/-- `A281026(n)%A030640(n)` -/
def P16410764513458839174.Spec : Prop :=
  ∀ n, P16410764513458839174.a n = A077814 n

end A077814

/-! ## A077814.P15402298489131054050

`A332495(n)%A030640(n)`
-/

namespace A077814.P15402298489131054050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332495 n) (A030640 n)

end

end A077814.P15402298489131054050

namespace A077814

/-- `A332495(n)%A030640(n)` -/
def P15402298489131054050.Spec : Prop :=
  ∀ n, P15402298489131054050.a n = A077814 n

end A077814

/-! ## A077814.P9507470682029509062

`A373750(n)%A008619(n)`
-/

namespace A077814.P9507470682029509062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373750 n) (A008619 n)

end

end A077814.P9507470682029509062

namespace A077814

/-- `A373750(n)%A008619(n)` -/
def P9507470682029509062.Spec : Prop :=
  ∀ n, P9507470682029509062.a n = A077814 n

end A077814

/-!
# A077815: 2^phi(n) mod n^2, where phi is Euler's totient function A000010.

The programs for A077815, the canonical program `A077815.P4388261198569135926` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077815 has offset 1).

The definition of A077815 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^A000010(n+1))%(n+1)²` (program `A077815.P4388261198569135926`, by `A077815.P4388261198569135926.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077815.P4388261198569135926

`(2^A000010(n+1))%(n+1)²`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A077815

/-- `(2^A000010(n+1))%(n+1)²` -/
def P4388261198569135926.Spec : Prop :=
  ∀ n, P4388261198569135926.a n = A077815 (n + 1)

theorem P4388261198569135926.correct : P4388261198569135926.Spec := by
  intro n
  simp only [A077815, Nat.add_sub_cancel]

end A077815

/-! ## A077815.P3875949264075291780

`A066781(n+1)%(n+1)²`
-/

namespace A077815.P3875949264075291780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066781 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A077815.P3875949264075291780

namespace A077815

/-- `A066781(n+1)%(n+1)²` -/
def P3875949264075291780.Spec : Prop :=
  ∀ n, P3875949264075291780.a n = A077815 (n + 1)

end A077815

/-! ## A077815.P123602633198351952

`A000079(Δ[A002088(n)])%(n+1)²`
-/

namespace A077815.P123602633198351952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (f1 (n + 1) - f1 n).toNat) ((n + 1) ^ 2 : ℤ)

end

end A077815.P123602633198351952

namespace A077815

/-- `A000079(Δ[A002088(n)])%(n+1)²` -/
def P123602633198351952.Spec : Prop :=
  ∀ n, P123602633198351952.a n = A077815 (n + 1)

end A077815

/-! ## A077815.P15626332884249278624

`A000079(A000010(n+1))%(n+1)²`
-/

namespace A077815.P15626332884249278624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A000010 (n + 1)).toNat) ((n + 1) ^ 2 : ℤ)

end

end A077815.P15626332884249278624

namespace A077815

/-- `A000079(A000010(n+1))%(n+1)²` -/
def P15626332884249278624.Spec : Prop :=
  ∀ n, P15626332884249278624.a n = A077815 (n + 1)

end A077815

/-! ## A077815.P5878555156600204991

`A131577(A039649(n+1))%(n+1)²`
-/

namespace A077815.P5878555156600204991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131577 (A039649 (n + 1)).toNat) ((n + 1) ^ 2 : ℤ)

end

end A077815.P5878555156600204991

namespace A077815

/-- `A131577(A039649(n+1))%(n+1)²` -/
def P5878555156600204991.Spec : Prop :=
  ∀ n, P5878555156600204991.a n = A077815 (n + 1)

end A077815

/-! ## A077815.P2327874294048200239

`A000079(A039649(n+1)-1)%(n+1)²`
-/

namespace A077815.P2327874294048200239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A039649 (n + 1) - 1).toNat) ((n + 1) ^ 2 : ℤ)

end

end A077815.P2327874294048200239

namespace A077815

/-- `A000079(A039649(n+1)-1)%(n+1)²` -/
def P2327874294048200239.Spec : Prop :=
  ∀ n, P2327874294048200239.a n = A077815 (n + 1)

end A077815

/-! ## A077815.P1168661009435721506

`A277867(A000010(n+1))%∑[A005408(n)]`
-/

namespace A077815.P1168661009435721506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277867 (A000010 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077815.P1168661009435721506

namespace A077815

/-- `A277867(A000010(n+1))%∑[A005408(n)]` -/
def P1168661009435721506.Spec : Prop :=
  ∀ n, P1168661009435721506.a n = A077815 (n + 1)

end A077815

/-!
# A077816: Wieferich numbers (1): n > 1 such that 2^A000010(n) == 1 (mod n^2).

The programs for A077816, there is no canonical definition to state claims against.
-/

/-! ## A077816.P6120479923575527780

`A291961(A084193(∑[n]))`
-/

namespace A077816.P6120479923575527780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291961 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A077816.P6120479923575527780

/-! ## A077816.P15899289883130641927

`A291961(A043317(n+1))`
-/

namespace A077816.P15899289883130641927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291961 (A043317 (n + 1)).toNat

end

end A077816.P15899289883130641927

/-! ## A077816.P11203549783925155301

`A291961(A044914(n+1))`
-/

namespace A077816.P11203549783925155301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291961 (A044914 (n + 1)).toNat

end

end A077816.P11203549783925155301

/-! ## A077816.P13346406221802484717

`A291961(A049872(n)+1)`
-/

namespace A077816.P13346406221802484717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291961 (A049872 n + 1).toNat

end

end A077816.P13346406221802484717

/-! ## A077816.P9640086136780641376

`A291961(A055648(n+1))`
-/

namespace A077816.P9640086136780641376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291961 (A055648 (n + 1)).toNat

end

end A077816.P9640086136780641376

/-!
# A077821: Expansion of 1/((1-3*x-3*x^2-3*x^3)*(1-x)).

The programs for A077821, the canonical program `A077821.P406162816112684477` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077821 has offset 0).

The definition of A077821 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+3x^4))` (program `A077821.P406162816112684477`, by `A077821.P406162816112684477.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077821.P406162816112684477

`ogf(1/(1-4x+3x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077821

/-- `ogf(1/(1-4x+3x^4))` -/
def P406162816112684477.Spec : Prop :=
  ∀ n, P406162816112684477.a n = A077821 n

theorem P406162816112684477.correct : P406162816112684477.Spec := by
  intro n
  simp only [A077821]

end A077821

/-! ## A077821.P15783191472490045791

`4*a(n-1)-3*a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=64`
-/

namespace A077821.P15783191472490045791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 16, 64] fun n a =>
  4 * a (n - 1) - 3 * a (n - 4)

end

end A077821.P15783191472490045791

namespace A077821

/-- `4*a(n-1)-3*a(n-4)` -/
def P15783191472490045791.Spec : Prop :=
  ∀ n, P15783191472490045791.a n = A077821 n

end A077821

/-! ## A077821.P1733234473286597345

`∑[A077828(n)]`
-/

namespace A077821.P1733234473286597345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077821.P1733234473286597345

namespace A077821

/-- `∑[A077828(n)]` -/
def P1733234473286597345.Spec : Prop :=
  ∀ n, P1733234473286597345.a n = A077821 n

end A077821

/-! ## A077821.P9876706648625074023

`∑[∑[A077836(n)]]`
-/

namespace A077821.P9876706648625074023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077836 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077821.P9876706648625074023

namespace A077821

/-- `∑[∑[A077836(n)]]` -/
def P9876706648625074023.Spec : Prop :=
  ∀ n, P9876706648625074023.a n = A077821 n

end A077821

/-! ## A077821.P4483831594569635944

`A077828(n)+a(A140106(2*n+1))` with `a(0)=1`
-/

namespace A077821.P4483831594569635944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077828 n + a (A140106 (2 * n + 1)).toNat

end

end A077821.P4483831594569635944

namespace A077821

/-- `A077828(n)+a(A140106(2*n+1))` -/
def P4483831594569635944.Spec : Prop :=
  ∀ n, P4483831594569635944.a n = A077821 n

end A077821

/-! ## A077821.P15789071929285382122

`a(n-1)+A077828(n)*A131561(A262689(n)^4)` with `a(0)=1`
-/

namespace A077821.P15789071929285382122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A077828 n * A131561 (A262689 n ^ 4).toNat

end

end A077821.P15789071929285382122

namespace A077821

/-- `a(n-1)+A077828(n)*A131561(A262689(n)^4)` -/
def P15789071929285382122.Spec : Prop :=
  ∀ n, P15789071929285382122.a n = A077821 n

end A077821

/-!
# A077822: Expansion of (1-x)^(-1)/(1-3*x-3*x^2-2*x^3).

The programs for A077822, the canonical program `A077822.P2943257143942977199` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077822 has offset 0).

The definition of A077822 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+x^3+2x^4))` (program `A077822.P2943257143942977199`, by `A077822.P2943257143942977199.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077822.P2943257143942977199

`ogf(1/(1-4x+x^3+2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077822

/-- `ogf(1/(1-4x+x^3+2x^4))` -/
def P2943257143942977199.Spec : Prop :=
  ∀ n, P2943257143942977199.a n = A077822 n

theorem P2943257143942977199.correct : P2943257143942977199.Spec := by
  intro n
  simp only [A077822]

end A077822

/-! ## A077822.P12597269902435365244

`4*a(n-1)-a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=63`
-/

namespace A077822.P12597269902435365244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 16, 63] fun n a =>
  4 * a (n - 1) - a (n - 3) - 2 * a (n - 4)

end

end A077822.P12597269902435365244

namespace A077822

/-- `4*a(n-1)-a(n-3)-2*a(n-4)` -/
def P12597269902435365244.Spec : Prop :=
  ∀ n, P12597269902435365244.a n = A077822 n

end A077822

/-! ## A077822.P5734507102265641790

`∑[A077829(n)]`
-/

namespace A077822.P5734507102265641790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077822.P5734507102265641790

namespace A077822

/-- `∑[A077829(n)]` -/
def P5734507102265641790.Spec : Prop :=
  ∀ n, P5734507102265641790.a n = A077822 n

end A077822

/-! ## A077822.P2584616051509035289

`∑[∑[A077837(n)]]`
-/

namespace A077822.P2584616051509035289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077837 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077822.P2584616051509035289

namespace A077822

/-- `∑[∑[A077837(n)]]` -/
def P2584616051509035289.Spec : Prop :=
  ∀ n, P2584616051509035289.a n = A077822 n

end A077822

/-! ## A077822.P970998963906084439

`A077829(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A077822.P970998963906084439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077829 n + a (A023443 n).toNat

end

end A077822.P970998963906084439

namespace A077822

/-- `A077829(n)+a(A023443(n))` -/
def P970998963906084439.Spec : Prop :=
  ∀ n, P970998963906084439.a n = A077822 n

end A077822

/-!
# A077823: Expansion of (1-x)^(-1)/(1-3*x-2*x^2-3*x^3).

The programs for A077823, the canonical program `A077823.P15863997484934069766` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077823 has offset 0).

The definition of A077823 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+x^2-x^3+3x^4))` (program `A077823.P15863997484934069766`, by `A077823.P15863997484934069766.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077823.P15863997484934069766

`ogf(1/(1-4x+x^2-x^3+3x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077823

/-- `ogf(1/(1-4x+x^2-x^3+3x^4))` -/
def P15863997484934069766.Spec : Prop :=
  ∀ n, P15863997484934069766.a n = A077823 n

theorem P15863997484934069766.correct : P15863997484934069766.Spec := by
  intro n
  simp only [A077823]

end A077823

/-! ## A077823.P8932438836428160068

`∑[A077830(n)]`
-/

namespace A077823.P8932438836428160068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077823.P8932438836428160068

namespace A077823

/-- `∑[A077830(n)]` -/
def P8932438836428160068.Spec : Prop :=
  ∀ n, P8932438836428160068.a n = A077823 n

end A077823

/-! ## A077823.P17877808294190796838

`∑[∑[A077838(n)]]`
-/

namespace A077823.P17877808294190796838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077838 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077823.P17877808294190796838

namespace A077823

/-- `∑[∑[A077838(n)]]` -/
def P17877808294190796838.Spec : Prop :=
  ∀ n, P17877808294190796838.a n = A077823 n

end A077823

/-! ## A077823.P2299629067284018670

`a(n-1)+1-(A057427(n)-A077830(n))` with `a(0)=1`
-/

namespace A077823.P2299629067284018670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (A057427 n - A077830 n)

end

end A077823.P2299629067284018670

namespace A077823

/-- `a(n-1)+1-(A057427(n)-A077830(n))` -/
def P2299629067284018670.Spec : Prop :=
  ∀ n, P2299629067284018670.a n = A077823 n

end A077823

/-!
# A077824: Expansion of (1-x)^(-1)/(1-3*x-2*x^2-2*x^3).

The programs for A077824, the canonical program `A077824.P11197647367381638605` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077824 has offset 0).

The definition of A077824 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+x^2+2x^4))` (program `A077824.P11197647367381638605`, by `A077824.P11197647367381638605.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077824.P11197647367381638605

`ogf(1/(1-4x+x^2+2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077824

/-- `ogf(1/(1-4x+x^2+2x^4))` -/
def P11197647367381638605.Spec : Prop :=
  ∀ n, P11197647367381638605.a n = A077824 n

theorem P11197647367381638605.correct : P11197647367381638605.Spec := by
  intro n
  simp only [A077824]

end A077824

/-! ## A077824.P5135323619985155378

`∑[A077831(n)]`
-/

namespace A077824.P5135323619985155378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077824.P5135323619985155378

namespace A077824

/-- `∑[A077831(n)]` -/
def P5135323619985155378.Spec : Prop :=
  ∀ n, P5135323619985155378.a n = A077824 n

end A077824

/-! ## A077824.P3598495186949243638

`∑[∑[A077839(n)]]`
-/

namespace A077824.P3598495186949243638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077839 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077824.P3598495186949243638

namespace A077824

/-- `∑[∑[A077839(n)]]` -/
def P3598495186949243638.Spec : Prop :=
  ∀ n, P3598495186949243638.a n = A077824 n

end A077824

/-! ## A077824.P4432214643894485742

`∑[4*a(n-1)-A084519(n)]` with `a(0)=1`
-/

namespace A077824.P4432214643894485742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (n - 1) - A084519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077824.P4432214643894485742

namespace A077824

/-- `∑[4*a(n-1)-A084519(n)]` -/
def P4432214643894485742.Spec : Prop :=
  ∀ n, P4432214643894485742.a n = A077824 n

end A077824

/-! ## A077824.P5750108853322641680

`floor(A077831(n)/A077839(n)*A077831(n))`
-/

namespace A077824.P5750108853322641680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077831 n : ℚ) / (A077839 n : ℚ) * (A077831 n : ℚ)⌋

end

end A077824.P5750108853322641680

namespace A077824

/-- `floor(A077831(n)/A077839(n)*A077831(n))` -/
def P5750108853322641680.Spec : Prop :=
  ∀ n, P5750108853322641680.a n = A077824 n

end A077824

/-! ## A077824.P13184553558039945423

`floor(A077831(n)²/A077839(n))`
-/

namespace A077824.P13184553558039945423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077831 n ^ 2 : ℚ) / (A077839 n : ℚ)⌋

end

end A077824.P13184553558039945423

namespace A077824

/-- `floor(A077831(n)²/A077839(n))` -/
def P13184553558039945423.Spec : Prop :=
  ∀ n, P13184553558039945423.a n = A077824 n

end A077824

/-! ## A077824.P11228951007256247867

`ceil(A077831(n)²/A077839(n)-A057427(n))`
-/

namespace A077824.P11228951007256247867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077831 n ^ 2 : ℚ) / (A077839 n : ℚ) - (A057427 n : ℚ)⌉

end

end A077824.P11228951007256247867

namespace A077824

/-- `ceil(A077831(n)²/A077839(n)-A057427(n))` -/
def P11228951007256247867.Spec : Prop :=
  ∀ n, P11228951007256247867.a n = A077824 n

end A077824

/-! ## A077824.P12755946585431979583

`ceil(A077831(n)²/A077839(n)+A000007(n)-1)`
-/

namespace A077824.P12755946585431979583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077831 n ^ 2 : ℚ) / (A077839 n : ℚ) + (A000007 n - 1 : ℚ)⌉

end

end A077824.P12755946585431979583

namespace A077824

/-- `ceil(A077831(n)²/A077839(n)+A000007(n)-1)` -/
def P12755946585431979583.Spec : Prop :=
  ∀ n, P12755946585431979583.a n = A077824 n

end A077824

/-!
# A077825: Expansion of (1-x)^(-1)/(1-2*x-3*x^2-3*x^3).

The programs for A077825, the canonical program `A077825.P9138351348693549080` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077825 has offset 0).

The definition of A077825 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x-x^2+3x^4))` (program `A077825.P9138351348693549080`, by `A077825.P9138351348693549080.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077825.P9138351348693549080

`ogf(1/(1-3x-x^2+3x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077825

/-- `ogf(1/(1-3x-x^2+3x^4))` -/
def P9138351348693549080.Spec : Prop :=
  ∀ n, P9138351348693549080.a n = A077825 n

theorem P9138351348693549080.correct : P9138351348693549080.Spec := by
  intro n
  simp only [A077825]

end A077825

/-! ## A077825.P15379905899290269973

`∑[A077832(n)]`
-/

namespace A077825.P15379905899290269973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077825.P15379905899290269973

namespace A077825

/-- `∑[A077832(n)]` -/
def P15379905899290269973.Spec : Prop :=
  ∀ n, P15379905899290269973.a n = A077825 n

end A077825

/-! ## A077825.P1395023001075341724

`∑[∑[A077840(n)]]`
-/

namespace A077825.P1395023001075341724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077840 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077825.P1395023001075341724

namespace A077825

/-- `∑[∑[A077840(n)]]` -/
def P1395023001075341724.Spec : Prop :=
  ∀ n, P1395023001075341724.a n = A077825 n

end A077825

/-! ## A077825.P3614671251840140602

`A077832(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A077825.P3614671251840140602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077832 n + a (A023443 n).toNat

end

end A077825.P3614671251840140602

namespace A077825

/-- `A077832(n)+a(A023443(n))` -/
def P3614671251840140602.Spec : Prop :=
  ∀ n, P3614671251840140602.a n = A077825 n

end A077825

/-! ## A077825.P2902008886009413175

`A077832(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A077825.P2902008886009413175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077832 (A028310 n).toNat + a (n - 1)

end

end A077825.P2902008886009413175

namespace A077825

/-- `A077832(A028310(n))+a(n-1)` -/
def P2902008886009413175.Spec : Prop :=
  ∀ n, P2902008886009413175.a n = A077825 n

end A077825

/-! ## A077825.P10110035930284763354

`A077832(A000038(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A077825.P10110035930284763354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077832 (A000038 n + (n : ℤ)).toNat + a (n - 1)

end

end A077825.P10110035930284763354

namespace A077825

/-- `A077832(A000038(n)+n)+a(n-1)` -/
def P10110035930284763354.Spec : Prop :=
  ∀ n, P10110035930284763354.a n = A077825 n

end A077825

/-! ## A077825.P4332429622524186898

`a(n-1)+1-(A057427(n)-A077832(n))` with `a(0)=1`
-/

namespace A077825.P4332429622524186898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (A057427 n - A077832 n)

end

end A077825.P4332429622524186898

namespace A077825

/-- `a(n-1)+1-(A057427(n)-A077832(n))` -/
def P4332429622524186898.Spec : Prop :=
  ∀ n, P4332429622524186898.a n = A077825 n

end A077825

/-!
# A077826: Expansion of (1-x)^(-1)/(1-2*x-3*x^2-2*x^3).

The programs for A077826, the canonical program `A077826.P13274814491088330343` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077826 has offset 0).

The definition of A077826 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x-x^2+x^3+2x^4))` (program `A077826.P13274814491088330343`, by `A077826.P13274814491088330343.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077826.P13274814491088330343

`ogf(1/(1-3x-x^2+x^3+2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077826

/-- `ogf(1/(1-3x-x^2+x^3+2x^4))` -/
def P13274814491088330343.Spec : Prop :=
  ∀ n, P13274814491088330343.a n = A077826 n

theorem P13274814491088330343.correct : P13274814491088330343.Spec := by
  intro n
  simp only [A077826]

end A077826

/-! ## A077826.P163654081689534977

`3*a(n-1)+a(n-2)-a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=32`
-/

namespace A077826.P163654081689534977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10, 32] fun n a =>
  3 * a (n - 1) + a (n - 2) - a (n - 3) - 2 * a (n - 4)

end

end A077826.P163654081689534977

namespace A077826

/-- `3*a(n-1)+a(n-2)-a(n-3)-2*a(n-4)` -/
def P163654081689534977.Spec : Prop :=
  ∀ n, P163654081689534977.a n = A077826 n

end A077826

/-! ## A077826.P9075197096472687771

`∑[A077833(n)]`
-/

namespace A077826.P9075197096472687771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077826.P9075197096472687771

namespace A077826

/-- `∑[A077833(n)]` -/
def P9075197096472687771.Spec : Prop :=
  ∀ n, P9075197096472687771.a n = A077826 n

end A077826

/-! ## A077826.P6737961295653393422

`∑[∑[A077841(n)]]`
-/

namespace A077826.P6737961295653393422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077841 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077826.P6737961295653393422

namespace A077826

/-- `∑[∑[A077841(n)]]` -/
def P6737961295653393422.Spec : Prop :=
  ∀ n, P6737961295653393422.a n = A077826 n

end A077826

/-! ## A077826.P17352002521311908630

`A077833(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A077826.P17352002521311908630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077833 n + a (A023443 n).toNat

end

end A077826.P17352002521311908630

namespace A077826

/-- `A077833(n)+a(A023443(n))` -/
def P17352002521311908630.Spec : Prop :=
  ∀ n, P17352002521311908630.a n = A077826 n

end A077826

/-! ## A077826.P17385189523965738164

`a(n-1)+1-(A057427(n)-A077833(n))` with `a(0)=1`
-/

namespace A077826.P17385189523965738164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (A057427 n - A077833 n)

end

end A077826.P17385189523965738164

namespace A077826

/-- `a(n-1)+1-(A057427(n)-A077833(n))` -/
def P17385189523965738164.Spec : Prop :=
  ∀ n, P17385189523965738164.a n = A077826 n

end A077826

/-! ## A077826.P5097313450863394188

`a(n-1)+A077833(n)%A189336(n+1)` with `a(0)=1`
-/

namespace A077826.P5097313450863394188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A077833 n) (A189336 (n + 1))

end

end A077826.P5097313450863394188

namespace A077826

/-- `a(n-1)+A077833(n)%A189336(n+1)` -/
def P5097313450863394188.Spec : Prop :=
  ∀ n, P5097313450863394188.a n = A077826 n

end A077826

/-!
# A077827: Expansion of (1-x)^(-1)/(1-2*x-2*x^2-2*x^3).

The programs for A077827, the canonical program `A077827.P6278100109299707053` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077827 has offset 0).

The definition of A077827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+2x^4))` (program `A077827.P6278100109299707053`, by `A077827.P6278100109299707053.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077827.P6278100109299707053

`ogf(1/(1-3x+2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077827

/-- `ogf(1/(1-3x+2x^4))` -/
def P6278100109299707053.Spec : Prop :=
  ∀ n, P6278100109299707053.a n = A077827 n

theorem P6278100109299707053.correct : P6278100109299707053.Spec := by
  intro n
  simp only [A077827]

end A077827

/-! ## A077827.P17500044555705200378

`∑[∑[2*(a(n-1)+a(n-2)+a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A077827.P17500044555705200378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n f2 =>
  2 * (f2 (n - 1) + (f2 (n - 2) + f2 (n - 3)))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077827.P17500044555705200378

namespace A077827

/-- `∑[∑[2*(a(n-1)+a(n-2)+a(n-3))]]` -/
def P17500044555705200378.Spec : Prop :=
  ∀ n, (P17500044555705200378.a n : ℤ) = A077827 n

end A077827

/-! ## A077827.P2178153504329655944

`∑[A077835(n)]`
-/

namespace A077827.P2178153504329655944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077827.P2178153504329655944

namespace A077827

/-- `∑[A077835(n)]` -/
def P2178153504329655944.Spec : Prop :=
  ∀ n, P2178153504329655944.a n = A077827 n

end A077827

/-! ## A077827.P4064934392088672728

`∑[abs(A077984(n))]`
-/

namespace A077827.P4064934392088672728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077984 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077827.P4064934392088672728

namespace A077827

/-- `∑[abs(A077984(n))]` -/
def P4064934392088672728.Spec : Prop :=
  ∀ n, P4064934392088672728.a n = A077827 n

end A077827

/-! ## A077827.P16144801749956761430

`∑[∑[A077843(n)]]`
-/

namespace A077827.P16144801749956761430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077843 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077827.P16144801749956761430

namespace A077827

/-- `∑[∑[A077843(n)]]` -/
def P16144801749956761430.Spec : Prop :=
  ∀ n, P16144801749956761430.a n = A077827 n

end A077827

/-! ## A077827.P11052500735588369229

`A119826(n)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A077827.P11052500735588369229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  A119826 n + a (n - 3)

end

end A077827.P11052500735588369229

namespace A077827

/-- `A119826(n)+a(n-3)` -/
def P11052500735588369229.Spec : Prop :=
  ∀ n, P11052500735588369229.a n = A077827 n

end A077827

/-! ## A077827.P11264968304705697645

`∑[abs(∑[A078055(n)])]`
-/

namespace A077827.P11264968304705697645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078055 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077827.P11264968304705697645

namespace A077827

/-- `∑[abs(∑[A078055(n)])]` -/
def P11264968304705697645.Spec : Prop :=
  ∀ n, P11264968304705697645.a n = A077827 n

end A077827

/-!
# A077828: Expansion of 1/(1-3*x-3*x^2-3*x^3).

The programs for A077828, the canonical program `A077828.P15840222207778867382` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077828 has offset 0).

The definition of A077828 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x-3x^2-3x^3))` (program `A077828.P15840222207778867382`, by `A077828.P15840222207778867382.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077828.P15840222207778867382

`ogf(1/(1-3x-3x^2-3x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077828

/-- `ogf(1/(1-3x-3x^2-3x^3))` -/
def P15840222207778867382.Spec : Prop :=
  ∀ n, P15840222207778867382.a n = A077828 n

theorem P15840222207778867382.correct : P15840222207778867382.Spec := by
  intro n
  simp only [A077828]

end A077828

/-! ## A077828.P11602495265684133379

`Δ[4*a(n-1)-3*a(n-4)]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=16, a(4)=64`
-/

namespace A077828.P11602495265684133379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 16, 64] fun n f1 =>
  4 * f1 (n - 1) - 3 * f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077828.P11602495265684133379

namespace A077828

/-- `Δ[4*a(n-1)-3*a(n-4)]` -/
def P11602495265684133379.Spec : Prop :=
  ∀ n, P11602495265684133379.a n = A077828 n

end A077828

/-! ## A077828.P6563442020681631751

`∑[3*(a(n-1)+a(n-2)+a(n-3))]` with `a(0)=1, a(1)=2, a(2)=9`
-/

namespace A077828.P6563442020681631751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 9] fun n f1 =>
  3 * (f1 (n - 1) + (f1 (n - 2) + f1 (n - 3)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077828.P6563442020681631751

namespace A077828

/-- `∑[3*(a(n-1)+a(n-2)+a(n-3))]` -/
def P6563442020681631751.Spec : Prop :=
  ∀ n, (P6563442020681631751.a n : ℤ) = A077828 n

end A077828

/-! ## A077828.P3454730128695759864

`∑[A077836(n)]`
-/

namespace A077828.P3454730128695759864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077828.P3454730128695759864

namespace A077828

/-- `∑[A077836(n)]` -/
def P3454730128695759864.Spec : Prop :=
  ∀ n, P3454730128695759864.a n = A077828 n

end A077828

/-! ## A077828.P14985063045328962142

`Δ[A077821(n)]-A077836(n+1)`
-/

namespace A077828.P14985063045328962142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077836 (n + 1)

end

end A077828.P14985063045328962142

namespace A077828

/-- `Δ[A077821(n)]-A077836(n+1)` -/
def P14985063045328962142.Spec : Prop :=
  ∀ n, P14985063045328962142.a n = A077828 n

end A077828

/-! ## A077828.P786669268402749165

`Δ[A077821(n)-A077836(n)]-A077836(n)`
-/

namespace A077828.P786669268402749165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077821 n - A077836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077836 n

end

end A077828.P786669268402749165

namespace A077828

/-- `Δ[A077821(n)-A077836(n)]-A077836(n)` -/
def P786669268402749165.Spec : Prop :=
  ∀ n, P786669268402749165.a n = A077828 n

end A077828

/-! ## A077828.P13093362996917413528

`Δ[A077821(n+3)-A188714(n+3)]`
-/

namespace A077828.P13093362996917413528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077821 (n + 3) - A188714 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077828.P13093362996917413528

namespace A077828

/-- `Δ[A077821(n+3)-A188714(n+3)]` -/
def P13093362996917413528.Spec : Prop :=
  ∀ n, P13093362996917413528.a n = A077828 n

end A077828

/-!
# A077829: Expansion of 1/(1-3*x-3*x^2-2*x^3).

The programs for A077829, the canonical program `A077829.P6669533525269785143` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077829 has offset 0).

The definition of A077829 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x-3x^2-2x^3))` (program `A077829.P6669533525269785143`, by `A077829.P6669533525269785143.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077829.P6669533525269785143

`ogf(1/(1-3x-3x^2-2x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077829

/-- `ogf(1/(1-3x-3x^2-2x^3))` -/
def P6669533525269785143.Spec : Prop :=
  ∀ n, P6669533525269785143.a n = A077829 n

theorem P6669533525269785143.correct : P6669533525269785143.Spec := by
  intro n
  simp only [A077829]

end A077829

/-! ## A077829.P13043519024281250926

`3*a(n-1)+3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=12`
-/

namespace A077829.P13043519024281250926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 12] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) + 2 * a (n - 3)

end

end A077829.P13043519024281250926

namespace A077829

/-- `3*a(n-1)+3*a(n-2)+2*a(n-3)` -/
def P13043519024281250926.Spec : Prop :=
  ∀ n, (P13043519024281250926.a n : ℤ) = A077829 n

end A077829

/-! ## A077829.P1019193706492408757

`∑[A077837(n)]`
-/

namespace A077829.P1019193706492408757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077829.P1019193706492408757

namespace A077829

/-- `∑[A077837(n)]` -/
def P1019193706492408757.Spec : Prop :=
  ∀ n, P1019193706492408757.a n = A077829 n

end A077829

/-! ## A077829.P14064499708813446291

`a(n-1)+A077837(A000007(n)+n)` with `a(0)=1`
-/

namespace A077829.P14064499708813446291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A077837 (A000007 n + (n : ℤ)).toNat

end

end A077829.P14064499708813446291

namespace A077829

/-- `a(n-1)+A077837(A000007(n)+n)` -/
def P14064499708813446291.Spec : Prop :=
  ∀ n, P14064499708813446291.a n = A077829 n

end A077829

/-! ## A077829.P4928834878441819830

`Δ[A077822(n)]-A077837(n+1)`
-/

namespace A077829.P4928834878441819830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077837 (n + 1)

end

end A077829.P4928834878441819830

namespace A077829

/-- `Δ[A077822(n)]-A077837(n+1)` -/
def P4928834878441819830.Spec : Prop :=
  ∀ n, P4928834878441819830.a n = A077829 n

end A077829

/-! ## A077829.P8906352141853485510

`Δ[A077822(n)-A077837(n)]-A077837(n)`
-/

namespace A077829.P8906352141853485510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077822 n - A077837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077837 n

end

end A077829.P8906352141853485510

namespace A077829

/-- `Δ[A077822(n)-A077837(n)]-A077837(n)` -/
def P8906352141853485510.Spec : Prop :=
  ∀ n, P8906352141853485510.a n = A077829 n

end A077829

/-! ## A077829.P748439110553681524

`A077837(n+2)%A281831(n+1)`
-/

namespace A077829.P748439110553681524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077837 (n + 2)) (A281831 (n + 1))

end

end A077829.P748439110553681524

namespace A077829

/-- `A077837(n+2)%A281831(n+1)` -/
def P748439110553681524.Spec : Prop :=
  ∀ n, P748439110553681524.a n = A077829 n

end A077829

/-! ## A077829.P7612406233704461756

`∑[∑[A281831(n+3)%A281831(n+1)]]`
-/

namespace A077829.P7612406233704461756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281831 (n + 3)) (A281831 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077829.P7612406233704461756

namespace A077829

/-- `∑[∑[A281831(n+3)%A281831(n+1)]]` -/
def P7612406233704461756.Spec : Prop :=
  ∀ n, P7612406233704461756.a n = A077829 n

end A077829

/-!
# A077830: Expansion of 1/(1-3*x-2*x^2-3*x^3).

The programs for A077830, the canonical program `A077830.P17969790684610464026` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077830 has offset 0).

The definition of A077830 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x-2x^2-3x^3))` (program `A077830.P17969790684610464026`, by `A077830.P17969790684610464026.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077830.P17969790684610464026

`ogf(1/(1-3x-2x^2-3x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077830

/-- `ogf(1/(1-3x-2x^2-3x^3))` -/
def P17969790684610464026.Spec : Prop :=
  ∀ n, P17969790684610464026.a n = A077830 n

theorem P17969790684610464026.correct : P17969790684610464026.Spec := by
  intro n
  simp only [A077830]

end A077830

/-! ## A077830.P6053613756305204427

`∑[A077838(n)]`
-/

namespace A077830.P6053613756305204427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077830.P6053613756305204427

namespace A077830

/-- `∑[A077838(n)]` -/
def P6053613756305204427.Spec : Prop :=
  ∀ n, P6053613756305204427.a n = A077830 n

end A077830

/-! ## A077830.P15957640866436065198

`a(n-1)+A077838(A000007(n)+n)` with `a(0)=1`
-/

namespace A077830.P15957640866436065198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A077838 (A000007 n + (n : ℤ)).toNat

end

end A077830.P15957640866436065198

namespace A077830

/-- `a(n-1)+A077838(A000007(n)+n)` -/
def P15957640866436065198.Spec : Prop :=
  ∀ n, P15957640866436065198.a n = A077830 n

end A077830

/-! ## A077830.P14229002076159681359

`A077838(n%A077838(n))+a(n-1)` with `a(0)=1`
-/

namespace A077830.P14229002076159681359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077838 (Int.tmod (n : ℤ) (A077838 n)).toNat + a (n - 1)

end

end A077830.P14229002076159681359

namespace A077830

/-- `A077838(n%A077838(n))+a(n-1)` -/
def P14229002076159681359.Spec : Prop :=
  ∀ n, P14229002076159681359.a n = A077830 n

end A077830

/-! ## A077830.P6529370844809852281

`a(n-1)+1-(A057427(n)-A077838(n))` with `a(0)=1`
-/

namespace A077830.P6529370844809852281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (A057427 n - A077838 n)

end

end A077830.P6529370844809852281

namespace A077830

/-- `a(n-1)+1-(A057427(n)-A077838(n))` -/
def P6529370844809852281.Spec : Prop :=
  ∀ n, P6529370844809852281.a n = A077830 n

end A077830

/-! ## A077830.P16904986904635402017

`Δ[A077823(n)]-A077838(n+1)`
-/

namespace A077830.P16904986904635402017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077838 (n + 1)

end

end A077830.P16904986904635402017

namespace A077830

/-- `Δ[A077823(n)]-A077838(n+1)` -/
def P16904986904635402017.Spec : Prop :=
  ∀ n, P16904986904635402017.a n = A077830 n

end A077830

/-! ## A077830.P16860381429564434162

`Δ[A077823(n)-A077838(n)]-A077838(n)`
-/

namespace A077830.P16860381429564434162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077823 n - A077838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077838 n

end

end A077830.P16860381429564434162

namespace A077830

/-- `Δ[A077823(n)-A077838(n)]-A077838(n)` -/
def P16860381429564434162.Spec : Prop :=
  ∀ n, P16860381429564434162.a n = A077830 n

end A077830

/-!
# A077831: Expansion of 1/(1-3*x-2*x^2-2*x^3).

The programs for A077831, the canonical program `A077831.P5453221588402114986` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077831 has offset 0).

The definition of A077831 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x-2x^2-2x^3))` (program `A077831.P5453221588402114986`, by `A077831.P5453221588402114986.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077831.P5453221588402114986

`ogf(1/(1-3x-2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077831

/-- `ogf(1/(1-3x-2x^2-2x^3))` -/
def P5453221588402114986.Spec : Prop :=
  ∀ n, P5453221588402114986.a n = A077831 n

theorem P5453221588402114986.correct : P5453221588402114986.Spec := by
  intro n
  simp only [A077831]

end A077831

/-! ## A077831.P5913645038759850823

`∑[A077839(n)]`
-/

namespace A077831.P5913645038759850823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077831.P5913645038759850823

namespace A077831

/-- `∑[A077839(n)]` -/
def P5913645038759850823.Spec : Prop :=
  ∀ n, P5913645038759850823.a n = A077831 n

end A077831

/-! ## A077831.P2415039189501645800

`4*a(n-1)-A084519(n)` with `a(0)=1`
-/

namespace A077831.P2415039189501645800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - A084519 n

end

end A077831.P2415039189501645800

namespace A077831

/-- `4*a(n-1)-A084519(n)` -/
def P2415039189501645800.Spec : Prop :=
  ∀ n, P2415039189501645800.a n = A077831 n

end A077831

/-! ## A077831.P17609130323351026059

`a(n-1)+A077839(n)^and(1, A000040(n+1))` with `a(0)=1`
-/

namespace A077831.P17609130323351026059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A077839 n : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A077831.P17609130323351026059

namespace A077831

/-- `a(n-1)+A077839(n)^and(1, A000040(n+1))` -/
def P17609130323351026059.Spec : Prop :=
  ∀ n, P17609130323351026059.a n = (A077831 n : ℚ)

end A077831

/-! ## A077831.P6270322952507422029

`Δ[A077824(n)]-A077839(n+1)`
-/

namespace A077831.P6270322952507422029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077839 (n + 1)

end

end A077831.P6270322952507422029

namespace A077831

/-- `Δ[A077824(n)]-A077839(n+1)` -/
def P6270322952507422029.Spec : Prop :=
  ∀ n, P6270322952507422029.a n = A077831 n

end A077831

/-! ## A077831.P16464507716582608453

`Δ[A077824(n)-A077839(n)]-A077839(n)`
-/

namespace A077831.P16464507716582608453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077824 n - A077839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077839 n

end

end A077831.P16464507716582608453

namespace A077831

/-- `Δ[A077824(n)-A077839(n)]-A077839(n)` -/
def P16464507716582608453.Spec : Prop :=
  ∀ n, P16464507716582608453.a n = A077831 n

end A077831

/-! ## A077831.P11045953461640010256

`a(n-1)+A077839(n)^A007318(A000096(n))` with `a(0)=1`
-/

namespace A077831.P11045953461640010256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A077839 n : ℚ) ^ (A007318 (A000096 n).toNat : ℤ)

end

end A077831.P11045953461640010256

namespace A077831

/-- `a(n-1)+A077839(n)^A007318(A000096(n))` -/
def P11045953461640010256.Spec : Prop :=
  ∀ n, P11045953461640010256.a n = (A077831 n : ℚ)

end A077831

/-! ## A077831.P9288636323238245464

`ceil(sqrt(A077824(n)*A077839(n)))`
-/

namespace A077831.P9288636323238245464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A077824 n * A077839 n : ℝ)⌉

end

end A077831.P9288636323238245464

namespace A077831

/-- `ceil(sqrt(A077824(n)*A077839(n)))` -/
def P9288636323238245464.Spec : Prop :=
  ∀ n, P9288636323238245464.a n = A077831 n

end A077831

/-!
# A077832: Expansion of 1/(1-2*x-3*x^2-3*x^3).

The programs for A077832, the canonical program `A077832.P16515110789290635121` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077832 has offset 0).

The definition of A077832 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-3x^2-3x^3))` (program `A077832.P16515110789290635121`, by `A077832.P16515110789290635121.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077832.P16515110789290635121

`ogf(1/(1-2x-3x^2-3x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077832

/-- `ogf(1/(1-2x-3x^2-3x^3))` -/
def P16515110789290635121.Spec : Prop :=
  ∀ n, P16515110789290635121.a n = A077832 n

theorem P16515110789290635121.correct : P16515110789290635121.Spec := by
  intro n
  simp only [A077832]

end A077832

/-! ## A077832.P1918053625685314064

`∑[A077840(n)]`
-/

namespace A077832.P1918053625685314064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077832.P1918053625685314064

namespace A077832

/-- `∑[A077840(n)]` -/
def P1918053625685314064.Spec : Prop :=
  ∀ n, P1918053625685314064.a n = A077832 n

end A077832

/-! ## A077832.P16909034324758475468

`A077840(n-char[1])+a(n-1)` with `a(0)=1`
-/

namespace A077832.P16909034324758475468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077840 (n - (if ∃ j, f1 j = n then 1 else 0)) + a (n - 1)

end

end A077832.P16909034324758475468

namespace A077832

/-- `A077840(n-char[1])+a(n-1)` -/
def P16909034324758475468.Spec : Prop :=
  ∀ n, P16909034324758475468.a n = A077832 n

end A077832

/-! ## A077832.P12730437180351668486

`a(n-1)+A077840(n)+A000007(n)` with `a(0)=1`
-/

namespace A077832.P12730437180351668486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A077840 n + A000007 n)

end

end A077832.P12730437180351668486

namespace A077832

/-- `a(n-1)+A077840(n)+A000007(n)` -/
def P12730437180351668486.Spec : Prop :=
  ∀ n, P12730437180351668486.a n = A077832 n

end A077832

/-! ## A077832.P4540403760097492669

`A250128(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A077832.P4540403760097492669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A250128 (n + 1) - a (n - 1)

end

end A077832.P4540403760097492669

namespace A077832

/-- `A250128(n+1)-a(n-1)` -/
def P4540403760097492669.Spec : Prop :=
  ∀ n, P4540403760097492669.a n = A077832 n

end A077832

/-! ## A077832.P9451311790889941580

`Δ[A077825(n)]-A077840(n+1)`
-/

namespace A077832.P9451311790889941580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077840 (n + 1)

end

end A077832.P9451311790889941580

namespace A077832

/-- `Δ[A077825(n)]-A077840(n+1)` -/
def P9451311790889941580.Spec : Prop :=
  ∀ n, P9451311790889941580.a n = A077832 n

end A077832

/-! ## A077832.P7153141111912448563

`Δ[A077825(n)-A077840(n)]-A077840(n)`
-/

namespace A077832.P7153141111912448563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077825 n - A077840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077840 n

end

end A077832.P7153141111912448563

namespace A077832

/-- `Δ[A077825(n)-A077840(n)]-A077840(n)` -/
def P7153141111912448563.Spec : Prop :=
  ∀ n, P7153141111912448563.a n = A077832 n

end A077832

/-!
# A077833: Expansion of 1/(1-2*x-3*x^2-2*x^3).

The programs for A077833, the canonical program `A077833.P1314260934548217047` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077833 has offset 0).

The definition of A077833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-3x^2-2x^3))` (program `A077833.P1314260934548217047`, by `A077833.P1314260934548217047.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077833.P1314260934548217047

`ogf(1/(1-2x-3x^2-2x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077833

/-- `ogf(1/(1-2x-3x^2-2x^3))` -/
def P1314260934548217047.Spec : Prop :=
  ∀ n, P1314260934548217047.a n = A077833 n

theorem P1314260934548217047.correct : P1314260934548217047.Spec := by
  intro n
  simp only [A077833]

end A077833

/-! ## A077833.P15057206269338499307

`∑[A077841(n)]`
-/

namespace A077833.P15057206269338499307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077833.P15057206269338499307

namespace A077833

/-- `∑[A077841(n)]` -/
def P15057206269338499307.Spec : Prop :=
  ∀ n, P15057206269338499307.a n = A077833 n

end A077833

/-! ## A077833.P15048073754039256962

`A077841(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A077833.P15048073754039256962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077841 n + a (A023443 n).toNat

end

end A077833.P15048073754039256962

namespace A077833

/-- `A077841(n)+a(A023443(n))` -/
def P15048073754039256962.Spec : Prop :=
  ∀ n, P15048073754039256962.a n = A077833 n

end A077833

/-! ## A077833.P3823471919671131297

`Δ[A077826(n)]-A077841(n+1)`
-/

namespace A077833.P3823471919671131297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077841 (n + 1)

end

end A077833.P3823471919671131297

namespace A077833

/-- `Δ[A077826(n)]-A077841(n+1)` -/
def P3823471919671131297.Spec : Prop :=
  ∀ n, P3823471919671131297.a n = A077833 n

end A077833

/-! ## A077833.P6715582467575183113

`Δ[A077826(n)-A077841(n)]-A077841(n)`
-/

namespace A077833.P6715582467575183113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077826 n - A077841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077841 n

end

end A077833.P6715582467575183113

namespace A077833

/-- `Δ[A077826(n)-A077841(n)]-A077841(n)` -/
def P6715582467575183113.Spec : Prop :=
  ∀ n, P6715582467575183113.a n = A077833 n

end A077833

/-! ## A077833.P1610911083456815235

`round(sqrt(A077826(n)*A077841(n)))`
-/

namespace A077833.P1610911083456815235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A077826 n * A077841 n : ℝ))

end

end A077833.P1610911083456815235

namespace A077833

/-- `round(sqrt(A077826(n)*A077841(n)))` -/
def P1610911083456815235.Spec : Prop :=
  ∀ n, P1610911083456815235.a n = A077833 n

end A077833

/-!
# A077834: Expansion of 1/(1 - 2*x - 2*x^2 - 3*x^3).

The programs for A077834, the canonical program `A077834.P8916983458963867800` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077834 has offset 0).

The definition of A077834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-2x^2-3x^3))` (program `A077834.P8916983458963867800`, by `A077834.P8916983458963867800.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077834.P8916983458963867800

`ogf(1/(1-2x-2x^2-3x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077834

/-- `ogf(1/(1-2x-2x^2-3x^3))` -/
def P8916983458963867800.Spec : Prop :=
  ∀ n, P8916983458963867800.a n = A077834 n

theorem P8916983458963867800.correct : P8916983458963867800.Spec := by
  intro n
  simp only [A077834]

end A077834

/-! ## A077834.P6547229313423025394

`2*a(n-1)+2*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A077834.P6547229313423025394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) + 3 * a (n - 3)

end

end A077834.P6547229313423025394

namespace A077834

/-- `2*a(n-1)+2*a(n-2)+3*a(n-3)` -/
def P6547229313423025394.Spec : Prop :=
  ∀ n, (P6547229313423025394.a n : ℤ) = A077834 n

end A077834

/-! ## A077834.P8585674944027040038

`∑{#}[n, 3^#*2*sqrt(3)*cos(2*π*(n-#)/3+π/6)/3]`
-/

namespace A077834.P8585674944027040038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 ^ k * 2 : ℝ) * Real.sqrt (3 : ℝ) * Real.cos (2 * Real.pi * ((n : ℤ) - (k : ℤ) : ℝ) / 3 + Real.pi / 6) / 3

end

end A077834.P8585674944027040038

namespace A077834

/-- `∑{#}[n, 3^#*2*sqrt(3)*cos(2*π*(n-#)/3+π/6)/3]` -/
def P8585674944027040038.Spec : Prop :=
  ∀ n, P8585674944027040038.a n = (A077834 n : ℝ)

end A077834

/-! ## A077834.P6921509617259894113

`A152733(n+3)/3`
-/

namespace A077834.P6921509617259894113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152733 (n + 3) : ℚ) / 3

end

end A077834.P6921509617259894113

namespace A077834

/-- `A152733(n+3)/3` -/
def P6921509617259894113.Spec : Prop :=
  ∀ n, P6921509617259894113.a n = (A077834 n : ℚ)

end A077834

/-! ## A077834.P10122372969192681052

`xor(3*a(n-1), (n+1)²%3)` with `a(0)=1`
-/

namespace A077834.P10122372969192681052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (3 * a (n - 1)) ((n + 1) ^ 2 % 3)

end

end A077834.P10122372969192681052

namespace A077834

/-- `xor(3*a(n-1), (n+1)²%3)` -/
def P10122372969192681052.Spec : Prop :=
  ∀ n, (P10122372969192681052.a n : ℤ) = A077834 n

end A077834

/-! ## A077834.P12267403556209687813

`3^n-(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A077834.P12267403556209687813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 ^ n : ℤ) - (a (n - 1) + a (n - 2))

end

end A077834.P12267403556209687813

namespace A077834

/-- `3^n-(a(n-1)+a(n-2))` -/
def P12267403556209687813.Spec : Prop :=
  ∀ n, P12267403556209687813.a n = A077834 n

end A077834

/-! ## A077834.P7739385309985339940

`3^n-a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A077834.P7739385309985339940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 ^ n : ℤ) - a (n - 1) - a (n - 2)

end

end A077834.P7739385309985339940

namespace A077834

/-- `3^n-a(n-1)-a(n-2)` -/
def P7739385309985339940.Spec : Prop :=
  ∀ n, P7739385309985339940.a n = A077834 n

end A077834

/-! ## A077834.P10653687749986044488

`∑[3*(a(n-1)-∑[n]%3)+1]` with `a(0)=1`
-/

namespace A077834.P10653687749986044488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * (f1 (n - 1) - (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077834.P10653687749986044488

namespace A077834

/-- `∑[3*(a(n-1)-∑[n]%3)+1]` -/
def P10653687749986044488.Spec : Prop :=
  ∀ n, P10653687749986044488.a n = A077834 n

end A077834

/-! ## A077834.P2606510919291343319

`3*a(n-1)+a(n-2)%3-1` with `a(0)=1, a(1)=2`
-/

namespace A077834.P2606510919291343319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) + (Int.tmod (a (n - 2)) 3 - 1)

end

end A077834.P2606510919291343319

namespace A077834

/-- `3*a(n-1)+a(n-2)%3-1` -/
def P2606510919291343319.Spec : Prop :=
  ∀ n, P2606510919291343319.a n = A077834 n

end A077834

/-! ## A077834.P1175933826432696102

`∑[A077842(n)]`
-/

namespace A077834.P1175933826432696102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077834.P1175933826432696102

namespace A077834

/-- `∑[A077842(n)]` -/
def P1175933826432696102.Spec : Prop :=
  ∀ n, P1175933826432696102.a n = A077834 n

end A077834

/-! ## A077834.P5687206687671272414

`Δ[Δ[A368344(n+1)]]`
-/

namespace A077834.P5687206687671272414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368344 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077834.P5687206687671272414

namespace A077834

/-- `Δ[Δ[A368344(n+1)]]` -/
def P5687206687671272414.Spec : Prop :=
  ∀ n, P5687206687671272414.a n = A077834 n

end A077834

/-! ## A077834.P18279184901068592200

`ceil(A033130(n+1)/2)`
-/

namespace A077834.P18279184901068592200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033130 (n + 1) : ℚ) / 2⌉

end

end A077834.P18279184901068592200

namespace A077834

/-- `ceil(A033130(n+1)/2)` -/
def P18279184901068592200.Spec : Prop :=
  ∀ n, P18279184901068592200.a n = A077834 n

end A077834

/-! ## A077834.P17636442049143385759

`A025192(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A077834.P17636442049143385759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  A025192 n + a (n - 3)

end

end A077834.P17636442049143385759

namespace A077834

/-- `A025192(n)+a(n-3)` -/
def P17636442049143385759.Spec : Prop :=
  ∀ n, P17636442049143385759.a n = A077834 n

end A077834

/-! ## A077834.P11381000734486925559

`A152733(n+2)+A049347(n)`
-/

namespace A077834.P11381000734486925559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152733 (n + 2) + A049347 n

end

end A077834.P11381000734486925559

namespace A077834

/-- `A152733(n+2)+A049347(n)` -/
def P11381000734486925559.Spec : Prop :=
  ∀ n, P11381000734486925559.a n = A077834 n

end A077834

/-! ## A077834.P7647510746471404401

`A011655(n)+A046631(n+1)-2`
-/

namespace A077834.P7647510746471404401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + (A046631 (n + 1) - 2)

end

end A077834.P7647510746471404401

namespace A077834

/-- `A011655(n)+A046631(n+1)-2` -/
def P7647510746471404401.Spec : Prop :=
  ∀ n, P7647510746471404401.a n = A077834 n

end A077834

/-! ## A077834.P1618535794564936559

`A152733(n+2)-A057078(n+2)`
-/

namespace A077834.P1618535794564936559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152733 (n + 2) - A057078 (n + 2)

end

end A077834.P1618535794564936559

namespace A077834

/-- `A152733(n+2)-A057078(n+2)` -/
def P1618535794564936559.Spec : Prop :=
  ∀ n, P1618535794564936559.a n = A077834 n

end A077834

/-! ## A077834.P14822964060489333824

`A057078(n+1)+A152733(n+2)+A057078(n)`
-/

namespace A077834.P14822964060489333824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (n + 1) + (A152733 (n + 2) + A057078 n)

end

end A077834.P14822964060489333824

namespace A077834

/-- `A057078(n+1)+A152733(n+2)+A057078(n)` -/
def P14822964060489333824.Spec : Prop :=
  ∀ n, P14822964060489333824.a n = A077834 n

end A077834

/-! ## A077834.P5665139937697839617

`A152733(n+2)+A077947(n)-A152732(n+2)`
-/

namespace A077834.P5665139937697839617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152733 (n + 2) + (A077947 n - A152732 (n + 2))

end

end A077834.P5665139937697839617

namespace A077834

/-- `A152733(n+2)+A077947(n)-A152732(n+2)` -/
def P5665139937697839617.Spec : Prop :=
  ∀ n, P5665139937697839617.a n = A077834 n

end A077834

/-! ## A077834.P4806243236417703526

`A033139(n+1)+A033139(n+1)-A033130(n+1)`
-/

namespace A077834.P4806243236417703526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (n + 1) + (A033139 (n + 1) - A033130 (n + 1))

end

end A077834.P4806243236417703526

namespace A077834

/-- `A033139(n+1)+A033139(n+1)-A033130(n+1)` -/
def P4806243236417703526.Spec : Prop :=
  ∀ n, P4806243236417703526.a n = A077834 n

end A077834

/-! ## A077834.P9471582037828362423

`Δ[a(n-3)+3^n/3]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A077834.P9471582037828362423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  f1 (n - 3) + (3 ^ n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077834.P9471582037828362423

namespace A077834

/-- `Δ[a(n-3)+3^n/3]` -/
def P9471582037828362423.Spec : Prop :=
  ∀ n, P9471582037828362423.a n = (A077834 n : ℚ)

end A077834

/-!
# A077835: Expansion of 1/(1 - 2*x - 2*x^2 - 2*x^3).

The programs for A077835, the canonical program `A077835.P14748691743493517859` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077835 has offset 0).

The definition of A077835 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-2x^2-2x^3))` (program `A077835.P14748691743493517859`, by `A077835.P14748691743493517859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077835.P14748691743493517859

`ogf(1/(1-2x-2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077835

/-- `ogf(1/(1-2x-2x^2-2x^3))` -/
def P14748691743493517859.Spec : Prop :=
  ∀ n, P14748691743493517859.a n = A077835 n

theorem P14748691743493517859.correct : P14748691743493517859.Spec := by
  intro n
  simp only [A077835]

end A077835

/-! ## A077835.P7963908927228936751

`2*a(n-1)+2*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A077835.P7963908927228936751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) + 2 * a (n - 3)

end

end A077835.P7963908927228936751

namespace A077835

/-- `2*a(n-1)+2*a(n-2)+2*a(n-3)` -/
def P7963908927228936751.Spec : Prop :=
  ∀ n, (P7963908927228936751.a n : ℤ) = A077835 n

end A077835

/-! ## A077835.P461868401344252348

`2*(a(n-1)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A077835.P461868401344252348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  2 * (a (n - 1) + (a (n - 2) + a (n - 3)))

end

end A077835.P461868401344252348

namespace A077835

/-- `2*(a(n-1)+a(n-2)+a(n-3))` -/
def P461868401344252348.Spec : Prop :=
  ∀ n, (P461868401344252348.a n : ℤ) = A077835 n

end A077835

/-! ## A077835.P4172677731407635709

`abs(A077984(n))`
-/

namespace A077835.P4172677731407635709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077984 n|

end

end A077835.P4172677731407635709

namespace A077835

/-- `abs(A077984(n))` -/
def P4172677731407635709.Spec : Prop :=
  ∀ n, P4172677731407635709.a n = A077835 n

end A077835

/-! ## A077835.P3105822794184903088

`∑[A077843(n)]`
-/

namespace A077835.P3105822794184903088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077835.P3105822794184903088

namespace A077835

/-- `∑[A077843(n)]` -/
def P3105822794184903088.Spec : Prop :=
  ∀ n, P3105822794184903088.a n = A077835 n

end A077835

/-! ## A077835.P267002843835424314

`A033999(n)*A077984(n)`
-/

namespace A077835.P267002843835424314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077984 n

end

end A077835.P267002843835424314

namespace A077835

/-- `A033999(n)*A077984(n)` -/
def P267002843835424314.Spec : Prop :=
  ∀ n, P267002843835424314.a n = A077835 n

end A077835

/-! ## A077835.P11474734152792722446

`gcd(A000038(n), A077984(n))`
-/

namespace A077835.P11474734152792722446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A077984 n)

end

end A077835.P11474734152792722446

namespace A077835

/-- `gcd(A000038(n), A077984(n))` -/
def P11474734152792722446.Spec : Prop :=
  ∀ n, (P11474734152792722446.a n : ℤ) = A077835 n

end A077835

/-! ## A077835.P4955669299264113878

`lcm(A000034(n), A077984(n))`
-/

namespace A077835.P4955669299264113878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A077984 n)

end

end A077835.P4955669299264113878

namespace A077835

/-- `lcm(A000034(n), A077984(n))` -/
def P4955669299264113878.Spec : Prop :=
  ∀ n, (P4955669299264113878.a n : ℤ) = A077835 n

end A077835

/-! ## A077835.P7059614058503539466

`lcm(-A077984(n), A040000(n))`
-/

namespace A077835.P7059614058503539466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A077984 n) (A040000 n)

end

end A077835.P7059614058503539466

namespace A077835

/-- `lcm(-A077984(n), A040000(n))` -/
def P7059614058503539466.Spec : Prop :=
  ∀ n, (P7059614058503539466.a n : ℤ) = A077835 n

end A077835

/-! ## A077835.P16602692455416811210

`A077984(n)*A165326(n+1)`
-/

namespace A077835.P16602692455416811210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077984 n * A165326 (n + 1)

end

end A077835.P16602692455416811210

namespace A077835

/-- `A077984(n)*A165326(n+1)` -/
def P16602692455416811210.Spec : Prop :=
  ∀ n, P16602692455416811210.a n = A077835 n

end A077835

/-! ## A077835.P3345357843770722902

`(-1)^A163617(n)*A077984(n)`
-/

namespace A077835.P3345357843770722902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A163617 n : ℤ) * (A077984 n : ℚ)

end

end A077835.P3345357843770722902

namespace A077835

/-- `(-1)^A163617(n)*A077984(n)` -/
def P3345357843770722902.Spec : Prop :=
  ∀ n, P3345357843770722902.a n = (A077835 n : ℚ)

end A077835

/-! ## A077835.P10383098826036567457

`A077984(n)/A165326(A165326(n)+n)`
-/

namespace A077835.P10383098826036567457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077984 n : ℚ) / (A165326 (A165326 n + (n : ℤ)).toNat : ℚ)

end

end A077835.P10383098826036567457

namespace A077835

/-- `A077984(n)/A165326(A165326(n)+n)` -/
def P10383098826036567457.Spec : Prop :=
  ∀ n, P10383098826036567457.a n = (A077835 n : ℚ)

end A077835

/-! ## A077835.P16320531319737611647

`lcm(A020985(n)*A077984(n), A020985(n))`
-/

namespace A077835.P16320531319737611647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n * A077984 n) (A020985 n)

end

end A077835.P16320531319737611647

namespace A077835

/-- `lcm(A020985(n)*A077984(n), A020985(n))` -/
def P16320531319737611647.Spec : Prop :=
  ∀ n, (P16320531319737611647.a n : ℤ) = A077835 n

end A077835

/-! ## A077835.P7369842982258590780

`abs(∑[A078055(n)])`
-/

namespace A077835.P7369842982258590780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A077835.P7369842982258590780

namespace A077835

/-- `abs(∑[A078055(n)])` -/
def P7369842982258590780.Spec : Prop :=
  ∀ n, P7369842982258590780.a n = A077835 n

end A077835

/-! ## A077835.P11159134608577122408

`A181137(n+3)-A119826(n+3)`
-/

namespace A077835.P11159134608577122408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181137 (n + 3) - A119826 (n + 3)

end

end A077835.P11159134608577122408

namespace A077835

/-- `A181137(n+3)-A119826(n+3)` -/
def P11159134608577122408.Spec : Prop :=
  ∀ n, P11159134608577122408.a n = A077835 n

end A077835

/-!
# A077836: Expansion of (1-x)/(1-3*x-3*x^2-3*x^3).

The programs for A077836, the canonical program `A077836.P10342132566173474996` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077836 has offset 0).

The definition of A077836 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-3x-3x^2-3x^3))` (program `A077836.P10342132566173474996`, by `A077836.P10342132566173474996.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077836.P10342132566173474996

`ogf((1-x)/(1-3x-3x^2-3x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077836

/-- `ogf((1-x)/(1-3x-3x^2-3x^3))` -/
def P10342132566173474996.Spec : Prop :=
  ∀ n, P10342132566173474996.a n = A077836 n

theorem P10342132566173474996.correct : P10342132566173474996.Spec := by
  intro n
  simp only [A077836]

end A077836

/-! ## A077836.P15229406282245969143

`3*a(n-1)+3*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=2, a(2)=9`
-/

namespace A077836.P15229406282245969143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 9] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) + 3 * a (n - 3)

end

end A077836.P15229406282245969143

namespace A077836

/-- `3*a(n-1)+3*a(n-2)+3*a(n-3)` -/
def P15229406282245969143.Spec : Prop :=
  ∀ n, (P15229406282245969143.a n : ℤ) = A077836 n

end A077836

/-! ## A077836.P2551658725071876836

`Δ[4*a(n-1)-3*a(n-4)]` with `a(0)=2, a(1)=3, a(2)=5, a(3)=14`
-/

namespace A077836.P2551658725071876836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 14] fun n f1 =>
  4 * f1 (n - 1) - 3 * f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077836.P2551658725071876836

namespace A077836

/-- `Δ[4*a(n-1)-3*a(n-4)]` -/
def P2551658725071876836.Spec : Prop :=
  ∀ n, P2551658725071876836.a n = A077836 n

end A077836

/-! ## A077836.P30478134929477439

`3*(a(n-1)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=2, a(2)=9`
-/

namespace A077836.P30478134929477439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 9] fun n a =>
  3 * (a (n - 1) + (a (n - 2) + a (n - 3)))

end

end A077836.P30478134929477439

namespace A077836

/-- `3*(a(n-1)+a(n-2)+a(n-3))` -/
def P30478134929477439.Spec : Prop :=
  ∀ n, (P30478134929477439.a n : ℤ) = A077836 n

end A077836

/-! ## A077836.P17052575032411764741

`(A282310(n+2)+A077828(n))%A282310(n+1)`
-/

namespace A077836.P17052575032411764741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282310 (n + 2) + A077828 n) (A282310 (n + 1))

end

end A077836.P17052575032411764741

namespace A077836

/-- `(A282310(n+2)+A077828(n))%A282310(n+1)` -/
def P17052575032411764741.Spec : Prop :=
  ∀ n, P17052575032411764741.a n = A077836 n

end A077836

/-! ## A077836.P7497649710134548351

`Δ[Δ[A077821(n+2)%A282310(n+1)]]`
-/

namespace A077836.P7497649710134548351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077821 (n + 2)) (A282310 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077836.P7497649710134548351

namespace A077836

/-- `Δ[Δ[A077821(n+2)%A282310(n+1)]]` -/
def P7497649710134548351.Spec : Prop :=
  ∀ n, P7497649710134548351.a n = A077836 n

end A077836

/-!
# A077837: Expansion of (1-x)/(1-3*x-3*x^2-2*x^3).

The programs for A077837, the canonical program `A077837.P9833411332508762908` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077837 has offset 0).

The definition of A077837 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-3x-3x^2-2x^3))` (program `A077837.P9833411332508762908`, by `A077837.P9833411332508762908.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077837.P9833411332508762908

`ogf((1-x)/(1-3x-3x^2-2x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077837

/-- `ogf((1-x)/(1-3x-3x^2-2x^3))` -/
def P9833411332508762908.Spec : Prop :=
  ∀ n, P9833411332508762908.a n = A077837 n

theorem P9833411332508762908.correct : P9833411332508762908.Spec := by
  intro n
  simp only [A077837]

end A077837

/-! ## A077837.P7848014182324253137

`floor(A077829(n)/A077822(n)*A077829(n))`
-/

namespace A077837.P7848014182324253137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077829 n : ℚ) / (A077822 n : ℚ) * (A077829 n : ℚ)⌋

end

end A077837.P7848014182324253137

namespace A077837

/-- `floor(A077829(n)/A077822(n)*A077829(n))` -/
def P7848014182324253137.Spec : Prop :=
  ∀ n, P7848014182324253137.a n = A077837 n

end A077837

/-! ## A077837.P15105970181172909722

`∑[A281831(n+3)%A281831(n+1)]`
-/

namespace A077837.P15105970181172909722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281831 (n + 3)) (A281831 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077837.P15105970181172909722

namespace A077837

/-- `∑[A281831(n+3)%A281831(n+1)]` -/
def P15105970181172909722.Spec : Prop :=
  ∀ n, P15105970181172909722.a n = A077837 n

end A077837

/-! ## A077837.P15268506391229853678

`floor(A077829(n)²/A077822(n))`
-/

namespace A077837.P15268506391229853678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077829 n ^ 2 : ℚ) / (A077822 n : ℚ)⌋

end

end A077837.P15268506391229853678

namespace A077837

/-- `floor(A077829(n)²/A077822(n))` -/
def P15268506391229853678.Spec : Prop :=
  ∀ n, P15268506391229853678.a n = A077837 n

end A077837

/-! ## A077837.P12736149109373317062

`round(A077829(2*n-n)²/A077822(n))`
-/

namespace A077837.P12736149109373317062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077829 (2 * n - n) ^ 2 : ℚ) / (A077822 n : ℚ))

end

end A077837.P12736149109373317062

namespace A077837

/-- `round(A077829(2*n-n)²/A077822(n))` -/
def P12736149109373317062.Spec : Prop :=
  ∀ n, P12736149109373317062.a n = A077837 n

end A077837

/-! ## A077837.P15213223765424870084

`round(A077829(n)²/A077822(n)*A158740(n)%2)`
-/

namespace A077837.P15213223765424870084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077829 n ^ 2 : ℚ) / (A077822 n : ℚ) * (Int.tmod (A158740 n) 2 : ℚ))

end

end A077837.P15213223765424870084

namespace A077837

/-- `round(A077829(n)²/A077822(n)*A158740(n)%2)` -/
def P15213223765424870084.Spec : Prop :=
  ∀ n, P15213223765424870084.a n = A077837 n

end A077837

/-! ## A077837.P2251908775706243365

`round(A077829(n)²/A077822(n)*A325311(n+1)%2)`
-/

namespace A077837.P2251908775706243365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077829 n ^ 2 : ℚ) / (A077822 n : ℚ) * (Int.tmod (A325311 (n + 1)) 2 : ℚ))

end

end A077837.P2251908775706243365

namespace A077837

/-- `round(A077829(n)²/A077822(n)*A325311(n+1)%2)` -/
def P2251908775706243365.Spec : Prop :=
  ∀ n, P2251908775706243365.a n = A077837 n

end A077837

/-!
# A077838: Expansion of (1-x)/(1-3*x-2*x^2-3*x^3).

The programs for A077838, the canonical program `A077838.P12748029119822792419` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077838 has offset 0).

The definition of A077838 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-3x-2x^2-3x^3))` (program `A077838.P12748029119822792419`, by `A077838.P12748029119822792419.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077838.P12748029119822792419

`ogf((1-x)/(1-3x-2x^2-3x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077838

/-- `ogf((1-x)/(1-3x-2x^2-3x^3))` -/
def P12748029119822792419.Spec : Prop :=
  ∀ n, P12748029119822792419.a n = A077838 n

theorem P12748029119822792419.correct : P12748029119822792419.Spec := by
  intro n
  simp only [A077838]

end A077838

/-! ## A077838.P11192655379614838157

`A008621(A050478(n)-(n+1)/∏{p}[n+1, (n+1)/#])`
-/

namespace A077838.P11192655379614838157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (SequenceMachineLib.roundAway ((A050478 n : ℚ) - (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)))).toNat

end

end A077838.P11192655379614838157

namespace A077838

/-- `A008621(A050478(n)-(n+1)/∏{p}[n+1, (n+1)/#])` -/
def P11192655379614838157.Spec : Prop :=
  ∀ n, P11192655379614838157.a n = A077838 n

end A077838

/-! ## A077838.P316229300570336023

`A002266(A108070(n+1)+A077236(n))`
-/

namespace A077838.P316229300570336023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A108070 (n + 1) + A077236 n).toNat

end

end A077838.P316229300570336023

namespace A077838

/-- `A002266(A108070(n+1)+A077236(n))` -/
def P316229300570336023.Spec : Prop :=
  ∀ n, P316229300570336023.a n = A077838 n

end A077838

/-!
# A077839: Expansion of (1 - x)/(1 - 3*x - 2*x^2 - 2*x^3).

The programs for A077839, the canonical program `A077839.P18130804355468658824` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077839 has offset 0).

The definition of A077839 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-3x-2x^2-2x^3))` (program `A077839.P18130804355468658824`, by `A077839.P18130804355468658824.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077839.P18130804355468658824

`ogf((1-x)/(1-3x-2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077839

/-- `ogf((1-x)/(1-3x-2x^2-2x^3))` -/
def P18130804355468658824.Spec : Prop :=
  ∀ n, P18130804355468658824.a n = A077839 n

theorem P18130804355468658824.correct : P18130804355468658824.Spec := by
  intro n
  simp only [A077839]

end A077839

/-! ## A077839.P8668160542152568800

`3*a(n-1)+2*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A077839.P8668160542152568800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  3 * a (n - 1) + 2 * a (n - 2) + 2 * a (n - 3)

end

end A077839.P8668160542152568800

namespace A077839

/-- `3*a(n-1)+2*a(n-2)+2*a(n-3)` -/
def P8668160542152568800.Spec : Prop :=
  ∀ n, (P8668160542152568800.a n : ℤ) = A077839 n

end A077839

/-! ## A077839.P1654792489091547373

`floor(A077831(n)/A077824(n)*A077831(n))`
-/

namespace A077839.P1654792489091547373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077831 n : ℚ) / (A077824 n : ℚ) * (A077831 n : ℚ)⌋

end

end A077839.P1654792489091547373

namespace A077839

/-- `floor(A077831(n)/A077824(n)*A077831(n))` -/
def P1654792489091547373.Spec : Prop :=
  ∀ n, P1654792489091547373.a n = A077839 n

end A077839

/-! ## A077839.P16279532112185575909

`floor(A077831(n)²/A077824(n))`
-/

namespace A077839.P16279532112185575909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077831 n ^ 2 : ℚ) / (A077824 n : ℚ)⌋

end

end A077839.P16279532112185575909

namespace A077839

/-- `floor(A077831(n)²/A077824(n))` -/
def P16279532112185575909.Spec : Prop :=
  ∀ n, P16279532112185575909.a n = A077839 n

end A077839

/-! ## A077839.P9151446639506430657

`round(A077831(2*n-n)²/A077824(n))`
-/

namespace A077839.P9151446639506430657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077831 (2 * n - n) ^ 2 : ℚ) / (A077824 n : ℚ))

end

end A077839.P9151446639506430657

namespace A077839

/-- `round(A077831(2*n-n)²/A077824(n))` -/
def P9151446639506430657.Spec : Prop :=
  ∀ n, P9151446639506430657.a n = A077839 n

end A077839

/-! ## A077839.P14359403278699055951

`A020985(n)²*round(A077831(n)²/A077824(n))`
-/

namespace A077839.P14359403278699055951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * SequenceMachineLib.roundAway ((A077831 n ^ 2 : ℚ) / (A077824 n : ℚ))

end

end A077839.P14359403278699055951

namespace A077839

/-- `A020985(n)²*round(A077831(n)²/A077824(n))` -/
def P14359403278699055951.Spec : Prop :=
  ∀ n, P14359403278699055951.a n = A077839 n

end A077839

/-! ## A077839.P2919939315962941880

`round(A077831(n)²/A077824(n))^A057428(n)²`
-/

namespace A077839.P2919939315962941880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A077831 n ^ 2 : ℚ) / (A077824 n : ℚ)) : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A077839.P2919939315962941880

namespace A077839

/-- `round(A077831(n)²/A077824(n))^A057428(n)²` -/
def P2919939315962941880.Spec : Prop :=
  ∀ n, P2919939315962941880.a n = (A077839 n : ℚ)

end A077839

/-! ## A077839.P5343385854474844038

`A000041(n²%(n+1))*round(A077831(n)²/A077824(n))`
-/

namespace A077839.P5343385854474844038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n ^ 2 % (n + 1)) * SequenceMachineLib.roundAway ((A077831 n ^ 2 : ℚ) / (A077824 n : ℚ))

end

end A077839.P5343385854474844038

namespace A077839

/-- `A000041(n²%(n+1))*round(A077831(n)²/A077824(n))` -/
def P5343385854474844038.Spec : Prop :=
  ∀ n, P5343385854474844038.a n = A077839 n

end A077839

/-!
# A077840: Expansion of (1-x)/(1-2*x-3*x^2-3*x^3).

The programs for A077840, the canonical program `A077840.P3547465375916997522` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077840 has offset 0).

The definition of A077840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-3x^2-3x^3))` (program `A077840.P3547465375916997522`, by `A077840.P3547465375916997522.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077840.P3547465375916997522

`ogf((1-x)/(1-2x-3x^2-3x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077840

/-- `ogf((1-x)/(1-2x-3x^2-3x^3))` -/
def P3547465375916997522.Spec : Prop :=
  ∀ n, P3547465375916997522.a n = A077840 n

theorem P3547465375916997522.correct : P3547465375916997522.Spec := by
  intro n
  simp only [A077840]

end A077840

/-! ## A077840.P10706509310272458820

`2*a(n-1)+3*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A077840.P10706509310272458820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) + 3 * a (n - 3)

end

end A077840.P10706509310272458820

namespace A077840

/-- `2*a(n-1)+3*a(n-2)+3*a(n-3)` -/
def P10706509310272458820.Spec : Prop :=
  ∀ n, (P10706509310272458820.a n : ℤ) = A077840 n

end A077840

/-! ## A077840.P2733280026806243718

`abs(Δ[A077832(abs(1-n))])`
-/

namespace A077840.P2733280026806243718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077832 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A077840.P2733280026806243718

namespace A077840

/-- `abs(Δ[A077832(abs(1-n))])` -/
def P2733280026806243718.Spec : Prop :=
  ∀ n, P2733280026806243718.a n = A077840 n

end A077840

/-! ## A077840.P6770181663312964301

`round(A077832(n)/A077825(n)*A077832(n))`
-/

namespace A077840.P6770181663312964301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077832 n : ℚ) / (A077825 n : ℚ) * (A077832 n : ℚ))

end

end A077840.P6770181663312964301

namespace A077840

/-- `round(A077832(n)/A077825(n)*A077832(n))` -/
def P6770181663312964301.Spec : Prop :=
  ∀ n, P6770181663312964301.a n = A077840 n

end A077840

/-! ## A077840.P6715730540197816927

`A077832(n)+A077832(n)-A250128(n+1)`
-/

namespace A077840.P6715730540197816927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077832 n + (A077832 n - A250128 (n + 1))

end

end A077840.P6715730540197816927

namespace A077840

/-- `A077832(n)+A077832(n)-A250128(n+1)` -/
def P6715730540197816927.Spec : Prop :=
  ∀ n, P6715730540197816927.a n = A077840 n

end A077840

/-! ## A077840.P8259887404572708545

`round(A077832(n)²/A077825(n))`
-/

namespace A077840.P8259887404572708545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077832 n ^ 2 : ℚ) / (A077825 n : ℚ))

end

end A077840.P8259887404572708545

namespace A077840

/-- `round(A077832(n)²/A077825(n))` -/
def P8259887404572708545.Spec : Prop :=
  ∀ n, P8259887404572708545.a n = A077840 n

end A077840

/-!
# A077841: Expansion of (1-x)/(1-2*x-3*x^2-2*x^3).

The programs for A077841, the canonical program `A077841.P6753475975210564376` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077841 has offset 0).

The definition of A077841 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-3x^2-2x^3))` (program `A077841.P6753475975210564376`, by `A077841.P6753475975210564376.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077841.P6753475975210564376

`ogf((1-x)/(1-2x-3x^2-2x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077841

/-- `ogf((1-x)/(1-2x-3x^2-2x^3))` -/
def P6753475975210564376.Spec : Prop :=
  ∀ n, P6753475975210564376.a n = A077841 n

theorem P6753475975210564376.correct : P6753475975210564376.Spec := by
  intro n
  simp only [A077841]

end A077841

/-! ## A077841.P3470682549641035918

`abs(Δ[A077833(abs(1-n))])`
-/

namespace A077841.P3470682549641035918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077833 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A077841.P3470682549641035918

namespace A077841

/-- `abs(Δ[A077833(abs(1-n))])` -/
def P3470682549641035918.Spec : Prop :=
  ∀ n, P3470682549641035918.a n = A077841 n

end A077841

/-! ## A077841.P10862285025672970091

`round(A077833(n)/A077826(n)*A077833(n))`
-/

namespace A077841.P10862285025672970091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077833 n : ℚ) / (A077826 n : ℚ) * (A077833 n : ℚ))

end

end A077841.P10862285025672970091

namespace A077841

/-- `round(A077833(n)/A077826(n)*A077833(n))` -/
def P10862285025672970091.Spec : Prop :=
  ∀ n, P10862285025672970091.a n = A077841 n

end A077841

/-! ## A077841.P10047660094414021585

`round(A077833(n)²/A077826(n))`
-/

namespace A077841.P10047660094414021585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077833 n ^ 2 : ℚ) / (A077826 n : ℚ))

end

end A077841.P10047660094414021585

namespace A077841

/-- `round(A077833(n)²/A077826(n))` -/
def P10047660094414021585.Spec : Prop :=
  ∀ n, P10047660094414021585.a n = A077841 n

end A077841

/-!
# A077842: Expansion of (1-x)/(1-2*x-2*x^2-3*x^3).

The programs for A077842, the canonical program `A077842.P3958144668654683207` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077842 has offset 0).

The definition of A077842 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-2x^2-3x^3))` (program `A077842.P3958144668654683207`, by `A077842.P3958144668654683207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077842.P3958144668654683207

`ogf((1-x)/(1-2x-2x^2-3x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077842

/-- `ogf((1-x)/(1-2x-2x^2-3x^3))` -/
def P3958144668654683207.Spec : Prop :=
  ∀ n, P3958144668654683207.a n = A077842 n

theorem P3958144668654683207.correct : P3958144668654683207.Spec := by
  intro n
  simp only [A077842]

end A077842

/-! ## A077842.P9246403341862121243

`3*floor(2*3^n/13)+1`
-/

namespace A077842.P9246403341862121243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(2 * 3 ^ n : ℚ) / 13⌋ + 1

end

end A077842.P9246403341862121243

namespace A077842

/-- `3*floor(2*3^n/13)+1` -/
def P9246403341862121243.Spec : Prop :=
  ∀ n, P9246403341862121243.a n = A077842 n

end A077842

/-! ## A077842.P13480370893133802755

`Δ[Δ[Δ[A368344(n)]]]`
-/

namespace A077842.P13480370893133802755
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368344 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077842.P13480370893133802755

namespace A077842

/-- `Δ[Δ[Δ[A368344(n)]]]` -/
def P13480370893133802755.Spec : Prop :=
  ∀ n, P13480370893133802755.a n = A077842 n

end A077842

/-! ## A077842.P9817038719128415385

`Δ[A152733(n+2)/3]`
-/

namespace A077842.P9817038719128415385
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152733 (n + 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077842.P9817038719128415385

namespace A077842

/-- `Δ[A152733(n+2)/3]` -/
def P9817038719128415385.Spec : Prop :=
  ∀ n, P9817038719128415385.a n = (A077842 n : ℚ)

end A077842

/-! ## A077842.P1233366728401250561

`Δ[A037536(n+1)-A037528(n+1)]`
-/

namespace A077842.P1233366728401250561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037536 (n + 1) - A037528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077842.P1233366728401250561

namespace A077842

/-- `Δ[A037536(n+1)-A037528(n+1)]` -/
def P1233366728401250561.Spec : Prop :=
  ∀ n, P1233366728401250561.a n = A077842 n

end A077842

/-! ## A077842.P3659487116913657713

`Δ[A037560(n+1)-A037568(n+1)]`
-/

namespace A077842.P3659487116913657713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037560 (n + 1) - A037568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077842.P3659487116913657713

namespace A077842

/-- `Δ[A037560(n+1)-A037568(n+1)]` -/
def P3659487116913657713.Spec : Prop :=
  ∀ n, P3659487116913657713.a n = A077842 n

end A077842

/-!
# A077843: Expansion of (1-x)/(1-2*x-2*x^2-2*x^3).

The programs for A077843, the canonical program `A077843.P10074378673041563109` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077843 has offset 0).

The definition of A077843 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-2x^2-2x^3))` (program `A077843.P10074378673041563109`, by `A077843.P10074378673041563109.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077843.P10074378673041563109

`ogf((1-x)/(1-2x-2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077843

/-- `ogf((1-x)/(1-2x-2x^2-2x^3))` -/
def P10074378673041563109.Spec : Prop :=
  ∀ n, P10074378673041563109.a n = A077843 n

theorem P10074378673041563109.correct : P10074378673041563109.Spec := by
  intro n
  simp only [A077843]

end A077843

/-! ## A077843.P219371244718657630

`2*(a(n-1)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A077843.P219371244718657630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  2 * (a (n - 1) + (a (n - 2) + a (n - 3)))

end

end A077843.P219371244718657630

namespace A077843

/-- `2*(a(n-1)+a(n-2)+a(n-3))` -/
def P219371244718657630.Spec : Prop :=
  ∀ n, (P219371244718657630.a n : ℤ) = A077843 n

end A077843

/-! ## A077843.P7844630671030705068

`abs(Δ[A077835(abs(1-n))])`
-/

namespace A077843.P7844630671030705068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077835 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A077843.P7844630671030705068

namespace A077843

/-- `abs(Δ[A077835(abs(1-n))])` -/
def P7844630671030705068.Spec : Prop :=
  ∀ n, P7844630671030705068.a n = A077843 n

end A077843

/-! ## A077843.P3968230054827065132

`abs(A077984(n)+A077984(n)-A078055(n))`
-/

namespace A077843.P3968230054827065132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077984 n + (A077984 n - A078055 n)|

end

end A077843.P3968230054827065132

namespace A077843

/-- `abs(A077984(n)+A077984(n)-A078055(n))` -/
def P3968230054827065132.Spec : Prop :=
  ∀ n, P3968230054827065132.a n = A077843 n

end A077843

/-! ## A077843.P5514928205310223583

`Δ[abs(A077984(n)-A078055(n))]`
-/

namespace A077843.P5514928205310223583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077984 n - A078055 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077843.P5514928205310223583

namespace A077843

/-- `Δ[abs(A077984(n)-A078055(n))]` -/
def P5514928205310223583.Spec : Prop :=
  ∀ n, P5514928205310223583.a n = A077843 n

end A077843

/-! ## A077843.P12186005948480778243

`Δ[(A077984(n)-A078055(n))*A165326(n)]`
-/

namespace A077843.P12186005948480778243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077984 n - A078055 n) * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077843.P12186005948480778243

namespace A077843

/-- `Δ[(A077984(n)-A078055(n))*A165326(n)]` -/
def P12186005948480778243.Spec : Prop :=
  ∀ n, P12186005948480778243.a n = A077843 n

end A077843

/-! ## A077843.P4270108685336461053

`Δ[A181137(n+2)-A119826(n+2)]`
-/

namespace A077843.P4270108685336461053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181137 (n + 2) - A119826 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077843.P4270108685336461053

namespace A077843

/-- `Δ[A181137(n+2)-A119826(n+2)]` -/
def P4270108685336461053.Spec : Prop :=
  ∀ n, P4270108685336461053.a n = A077843 n

end A077843

/-!
# A077845: Expansion of (1-x)^(-1)/(1-2*x-2*x^2-x^3).

The programs for A077845, the canonical program `A077845.P10669897644443224576` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077845 has offset 0).

The definition of A077845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+x^3+x^4))` (program `A077845.P10669897644443224576`, by `A077845.P10669897644443224576.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077845.P10669897644443224576

`ogf(1/(1-3x+x^3+x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077845

/-- `ogf(1/(1-3x+x^3+x^4))` -/
def P10669897644443224576.Spec : Prop :=
  ∀ n, P10669897644443224576.a n = A077845 n

theorem P10669897644443224576.correct : P10669897644443224576.Spec := by
  intro n
  simp only [A077845]

end A077845

/-! ## A077845.P5936883336664312558

`3*a(n-1)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=26`
-/

namespace A077845.P5936883336664312558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 26] fun n a =>
  3 * a (n - 1) - a (n - 3) - a (n - 4)

end

end A077845.P5936883336664312558

namespace A077845

/-- `3*a(n-1)-a(n-3)-a(n-4)` -/
def P5936883336664312558.Spec : Prop :=
  ∀ n, P5936883336664312558.a n = A077845 n

end A077845

/-! ## A077845.P6588469841977889189

`∑[A077936(n)]`
-/

namespace A077845.P6588469841977889189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077845.P6588469841977889189

namespace A077845

/-- `∑[A077936(n)]` -/
def P6588469841977889189.Spec : Prop :=
  ∀ n, P6588469841977889189.a n = A077845 n

end A077845

/-! ## A077845.P12474884832190350035

`∑[abs(A077983(n))]`
-/

namespace A077845.P12474884832190350035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077983 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077845.P12474884832190350035

namespace A077845

/-- `∑[abs(A077983(n))]` -/
def P12474884832190350035.Spec : Prop :=
  ∀ n, P12474884832190350035.a n = A077845 n

end A077845

/-! ## A077845.P11585494918365091603

`∑[∑[A077995(n)]]`
-/

namespace A077845.P11585494918365091603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077995 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077845.P11585494918365091603

namespace A077845

/-- `∑[∑[A077995(n)]]` -/
def P11585494918365091603.Spec : Prop :=
  ∀ n, P11585494918365091603.a n = A077845 n

end A077845

/-! ## A077845.P8013004787097247906

`∑[abs(∑[A078054(n)])]`
-/

namespace A077845.P8013004787097247906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078054 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077845.P8013004787097247906

namespace A077845

/-- `∑[abs(∑[A078054(n)])]` -/
def P8013004787097247906.Spec : Prop :=
  ∀ n, P8013004787097247906.a n = A077845 n

end A077845

/-! ## A077845.P2312139692894281353

`A101168(n)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A077845.P2312139692894281353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  A101168 n + a (n - 3)

end

end A077845.P2312139692894281353

namespace A077845

/-- `A101168(n)+a(n-3)` -/
def P2312139692894281353.Spec : Prop :=
  ∀ n, P2312139692894281353.a n = A077845 n

end A077845

/-!
# A077846: Expansion of g.f. 1/(1 - 3*x + 2*x^3).

The programs for A077846, the canonical program `A077846.P1352696305256443310` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077846 has offset 0).

The definition of A077846 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+2x^3))` (program `A077846.P1352696305256443310`, by `A077846.P1352696305256443310.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077846.P1352696305256443310

`ogf(1/(1-3x+2x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077846

/-- `ogf(1/(1-3x+2x^3))` -/
def P1352696305256443310.Spec : Prop :=
  ∀ n, P1352696305256443310.a n = A077846 n

theorem P1352696305256443310.correct : P1352696305256443310.Spec := by
  intro n
  simp only [A077846]

end A077846

/-! ## A077846.P14392846599328136103

`2*(a(n-1)+a(n-2))+1` with `a(0)=1, a(1)=3`
-/

namespace A077846.P14392846599328136103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (a (n - 1) + a (n - 2)) + 1

end

end A077846.P14392846599328136103

namespace A077846

/-- `2*(a(n-1)+a(n-2))+1` -/
def P14392846599328136103.Spec : Prop :=
  ∀ n, (P14392846599328136103.a n : ℤ) = A077846 n

end A077846

/-! ## A077846.P14818645318772960765

`3*a(n-1)-2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A077846.P14818645318772960765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  3 * a (n - 1) - 2 * a (n - 3)

end

end A077846.P14818645318772960765

namespace A077846

/-- `3*a(n-1)-2*a(n-3)` -/
def P14818645318772960765.Spec : Prop :=
  ∀ n, P14818645318772960765.a n = A077846 n

end A077846

/-! ## A077846.P14531837303851253087

`2*A057960(n)-1`
-/

namespace A077846.P14531837303851253087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057960 n - 1

end

end A077846.P14531837303851253087

namespace A077846

/-- `2*A057960(n)-1` -/
def P14531837303851253087.Spec : Prop :=
  ∀ n, P14531837303851253087.a n = A077846 n

end A077846

/-! ## A077846.P7034246338373815608

`round(2*A028859(n)/sqrt(3)-1/3)`
-/

namespace A077846.P7034246338373815608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * A028859 n : ℝ) / Real.sqrt (3 : ℝ) - ((1 : ℚ) / 3 : ℝ))

end

end A077846.P7034246338373815608

namespace A077846

/-- `round(2*A028859(n)/sqrt(3)-1/3)` -/
def P7034246338373815608.Spec : Prop :=
  ∀ n, P7034246338373815608.a n = A077846 n

end A077846

/-! ## A077846.P17901398653147476138

`(2*A052945(n+1)-1)/3`
-/

namespace A077846.P17901398653147476138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A052945 (n + 1) - 1 : ℚ) / 3

end

end A077846.P17901398653147476138

namespace A077846

/-- `(2*A052945(n+1)-1)/3` -/
def P17901398653147476138.Spec : Prop :=
  ∀ n, P17901398653147476138.a n = (A077846 n : ℚ)

end A077846

/-! ## A077846.P10024729944834987748

`ceil((sqrt(3)+1)*a(n-1))` with `a(0)=1`
-/

namespace A077846.P10024729944834987748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 1) * (a (n - 1) : ℝ)⌉

end

end A077846.P10024729944834987748

namespace A077846

/-- `ceil((sqrt(3)+1)*a(n-1))` -/
def P10024729944834987748.Spec : Prop :=
  ∀ n, P10024729944834987748.a n = A077846 n

end A077846

/-! ## A077846.P7477354481633794018

`floor((sqrt(3)+1)*a(n-1))+1` with `a(0)=1`
-/

namespace A077846.P7477354481633794018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 1) * (a (n - 1) : ℝ)⌋ + 1

end

end A077846.P7477354481633794018

namespace A077846

/-- `floor((sqrt(3)+1)*a(n-1))+1` -/
def P7477354481633794018.Spec : Prop :=
  ∀ n, P7477354481633794018.a n = A077846 n

end A077846

/-! ## A077846.P5314320089556569603

`or(1, round((sqrt(3)+1)*a(n-1)))` with `a(0)=1`
-/

namespace A077846.P5314320089556569603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 1) * (a (n - 1) : ℝ)))

end

end A077846.P5314320089556569603

namespace A077846

/-- `or(1, round((sqrt(3)+1)*a(n-1)))` -/
def P5314320089556569603.Spec : Prop :=
  ∀ n, P5314320089556569603.a n = A077846 n

end A077846

/-! ## A077846.P15846875068848126205

`∑[round((sqrt(3)+1)*a(n-1))]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A077846.P15846875068848126205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 1) * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077846.P15846875068848126205

namespace A077846

/-- `∑[round((sqrt(3)+1)*a(n-1))]` -/
def P15846875068848126205.Spec : Prop :=
  ∀ n, P15846875068848126205.a n = A077846 n

end A077846

/-! ## A077846.P10835377080389410796

`∑[2*(a(n-1)+a(n-2))]` with `a(0)=1, a(1)=2`
-/

namespace A077846.P10835377080389410796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077846.P10835377080389410796

namespace A077846

/-- `∑[2*(a(n-1)+a(n-2))]` -/
def P10835377080389410796.Spec : Prop :=
  ∀ n, (P10835377080389410796.a n : ℤ) = A077846 n

end A077846

/-! ## A077846.P9201824965439263974

`∑[a(n-1)+a(n-2)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A077846.P9201824965439263974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + (f1 (n - 1) + f1 (n - 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077846.P9201824965439263974

namespace A077846

/-- `∑[a(n-1)+a(n-2)+a(n-1)+a(n-2)]` -/
def P9201824965439263974.Spec : Prop :=
  ∀ n, (P9201824965439263974.a n : ℤ) = A077846 n

end A077846

/-! ## A077846.P9311993350036336754

`a(n-1)+1+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A077846.P9311993350036336754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + 1 + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A077846.P9311993350036336754

namespace A077846

/-- `a(n-1)+1+a(n-2)+a(n-1)+a(n-2)` -/
def P9311993350036336754.Spec : Prop :=
  ∀ n, (P9311993350036336754.a n : ℤ) = A077846 n

end A077846

/-! ## A077846.P1571826460034289215

`∑[∑[A026150(n)]]`
-/

namespace A077846.P1571826460034289215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077846.P1571826460034289215

namespace A077846

/-- `∑[∑[A026150(n)]]` -/
def P1571826460034289215.Spec : Prop :=
  ∀ n, P1571826460034289215.a n = A077846 n

end A077846

/-! ## A077846.P15589250125490505961

`∑[A002605(n+1)]`
-/

namespace A077846.P15589250125490505961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077846.P15589250125490505961

namespace A077846

/-- `∑[A002605(n+1)]` -/
def P15589250125490505961.Spec : Prop :=
  ∀ n, P15589250125490505961.a n = A077846 n

end A077846

/-! ## A077846.P16197855558741814136

`∑[A005665(n)+1]`
-/

namespace A077846.P16197855558741814136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005665 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077846.P16197855558741814136

namespace A077846

/-- `∑[A005665(n)+1]` -/
def P16197855558741814136.Spec : Prop :=
  ∀ n, P16197855558741814136.a n = A077846 n

end A077846

/-! ## A077846.P17330744344356812236

`A293006(n+1)+1`
-/

namespace A077846.P17330744344356812236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293006 (n + 1) + 1

end

end A077846.P17330744344356812236

namespace A077846

/-- `A293006(n+1)+1` -/
def P17330744344356812236.Spec : Prop :=
  ∀ n, P17330744344356812236.a n = A077846 n

end A077846

/-! ## A077846.P12191053064180518317

`2*A293005(n)+1`
-/

namespace A077846.P12191053064180518317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293005 n + 1

end

end A077846.P12191053064180518317

namespace A077846

/-- `2*A293005(n)+1` -/
def P12191053064180518317.Spec : Prop :=
  ∀ n, P12191053064180518317.a n = A077846 n

end A077846

/-! ## A077846.P10520696066216113740

`∑[∑[A080040(n)/2]]`
-/

namespace A077846.P10520696066216113740
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080040 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077846.P10520696066216113740

namespace A077846

/-- `∑[∑[A080040(n)/2]]` -/
def P10520696066216113740.Spec : Prop :=
  ∀ n, P10520696066216113740.a n = (A077846 n : ℚ)

end A077846

/-! ## A077846.P7677810625247168304

`∑[A152035(n+1)/2]`
-/

namespace A077846.P7677810625247168304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152035 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077846.P7677810625247168304

namespace A077846

/-- `∑[A152035(n+1)/2]` -/
def P7677810625247168304.Spec : Prop :=
  ∀ n, P7677810625247168304.a n = (A077846 n : ℚ)

end A077846

/-!
# A077847: Expansion of (1-x)^(-1)/(1-2*x-2*x^2+2*x^3).

The programs for A077847, the canonical program `A077847.P7798576768151068918` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077847 has offset 0).

The definition of A077847 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+4x^3-2x^4))` (program `A077847.P7798576768151068918`, by `A077847.P7798576768151068918.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077847.P7798576768151068918

`ogf(1/(1-3x+4x^3-2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077847

/-- `ogf(1/(1-3x+4x^3-2x^4))` -/
def P7798576768151068918.Spec : Prop :=
  ∀ n, P7798576768151068918.a n = A077847 n

theorem P7798576768151068918.correct : P7798576768151068918.Spec := by
  intro n
  simp only [A077847]

end A077847

/-! ## A077847.P12025183853406442424

`3*a(n-1)-4*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=23`
-/

namespace A077847.P12025183853406442424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 23] fun n a =>
  3 * a (n - 1) - 4 * a (n - 3) + 2 * a (n - 4)

end

end A077847.P12025183853406442424

namespace A077847

/-- `3*a(n-1)-4*a(n-3)+2*a(n-4)` -/
def P12025183853406442424.Spec : Prop :=
  ∀ n, P12025183853406442424.a n = A077847 n

end A077847

/-! ## A077847.P7261650725006652739

`∑[∑[2*(a(n-1)+a(n-2)-a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A077847.P7261650725006652739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n f2 =>
  2 * (f2 (n - 1) + (f2 (n - 2) - f2 (n - 3)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077847.P7261650725006652739

namespace A077847

/-- `∑[∑[2*(a(n-1)+a(n-2)-a(n-3))]]` -/
def P7261650725006652739.Spec : Prop :=
  ∀ n, P7261650725006652739.a n = A077847 n

end A077847

/-! ## A077847.P4997435678228127467

`∑[A077937(n)]`
-/

namespace A077847.P4997435678228127467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077847.P4997435678228127467

namespace A077847

/-- `∑[A077937(n)]` -/
def P4997435678228127467.Spec : Prop :=
  ∀ n, P4997435678228127467.a n = A077847 n

end A077847

/-! ## A077847.P16496498245930259499

`∑[abs(A077981(n))]`
-/

namespace A077847.P16496498245930259499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077981 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077847.P16496498245930259499

namespace A077847

/-- `∑[abs(A077981(n))]` -/
def P16496498245930259499.Spec : Prop :=
  ∀ n, P16496498245930259499.a n = A077847 n

end A077847

/-! ## A077847.P7878644787101219044

`∑[∑[A052528(n)]]`
-/

namespace A077847.P7878644787101219044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052528 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077847.P7878644787101219044

namespace A077847

/-- `∑[∑[A052528(n)]]` -/
def P7878644787101219044.Spec : Prop :=
  ∀ n, P7878644787101219044.a n = A077847 n

end A077847

/-! ## A077847.P1935917799306509599

`A052987(n+1)-1`
-/

namespace A077847.P1935917799306509599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052987 (n + 1) - 1

end

end A077847.P1935917799306509599

namespace A077847

/-- `A052987(n+1)-1` -/
def P1935917799306509599.Spec : Prop :=
  ∀ n, P1935917799306509599.a n = A077847 n

end A077847

/-! ## A077847.P2383162583319191848

`2*A118649(n)-1`
-/

namespace A077847.P2383162583319191848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118649 n - 1

end

end A077847.P2383162583319191848

namespace A077847

/-- `2*A118649(n)-1` -/
def P2383162583319191848.Spec : Prop :=
  ∀ n, P2383162583319191848.a n = A077847 n

end A077847

/-! ## A077847.P12358804843188114063

`∑[2*A181306(n)]-1`
-/

namespace A077847.P12358804843188114063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A077847.P12358804843188114063

namespace A077847

/-- `∑[2*A181306(n)]-1` -/
def P12358804843188114063.Spec : Prop :=
  ∀ n, P12358804843188114063.a n = A077847 n

end A077847

/-! ## A077847.P9536589842858167459

`A077937(n+1)-A106666(n)`
-/

namespace A077847.P9536589842858167459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077937 (n + 1) - A106666 n

end

end A077847.P9536589842858167459

namespace A077847

/-- `A077937(n+1)-A106666(n)` -/
def P9536589842858167459.Spec : Prop :=
  ∀ n, P9536589842858167459.a n = A077847 n

end A077847

/-! ## A077847.P7752090400833384392

`abs(A077981(n+1))-A106666(n)`
-/

namespace A077847.P7752090400833384392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077981 (n + 1)| - A106666 n

end

end A077847.P7752090400833384392

namespace A077847

/-- `abs(A077981(n+1))-A106666(n)` -/
def P7752090400833384392.Spec : Prop :=
  ∀ n, P7752090400833384392.a n = A077847 n

end A077847

/-! ## A077847.P13775213853224641093

`A052528(n+2)-A106666(n+1)`
-/

namespace A077847.P13775213853224641093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052528 (n + 2) - A106666 (n + 1)

end

end A077847.P13775213853224641093

namespace A077847

/-- `A052528(n+2)-A106666(n+1)` -/
def P13775213853224641093.Spec : Prop :=
  ∀ n, P13775213853224641093.a n = A077847 n

end A077847

/-! ## A077847.P17276410488205200072

`∑[abs(∑[A078053(n)])]`
-/

namespace A077847.P17276410488205200072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078053 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077847.P17276410488205200072

namespace A077847

/-- `∑[abs(∑[A078053(n)])]` -/
def P17276410488205200072.Spec : Prop :=
  ∀ n, P17276410488205200072.a n = A077847 n

end A077847

/-! ## A077847.P12403024212251507705

`∑[Δ[A118649(n+1)]-A118649(n+1)]`
-/

namespace A077847.P12403024212251507705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118649 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A118649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077847.P12403024212251507705

namespace A077847

/-- `∑[Δ[A118649(n+1)]-A118649(n+1)]` -/
def P12403024212251507705.Spec : Prop :=
  ∀ n, P12403024212251507705.a n = A077847 n

end A077847

/-!
# A077848: Expansion of (1-x)^(-1)/(1-2*x-x^2-2*x^3).

The programs for A077848, the canonical program `A077848.P11017221129979422770` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077848 has offset 0).

The definition of A077848 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+x^2-x^3+2x^4))` (program `A077848.P11017221129979422770`, by `A077848.P11017221129979422770.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077848.P11017221129979422770

`ogf(1/(1-3x+x^2-x^3+2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077848

/-- `ogf(1/(1-3x+x^2-x^3+2x^4))` -/
def P11017221129979422770.Spec : Prop :=
  ∀ n, P11017221129979422770.a n = A077848 n

theorem P11017221129979422770.correct : P11017221129979422770.Spec := by
  intro n
  simp only [A077848]

end A077848

/-! ## A077848.P251800778752225150

`3*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=22`
-/

namespace A077848.P251800778752225150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8, 22] fun n a =>
  3 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4)

end

end A077848.P251800778752225150

namespace A077848

/-- `3*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)` -/
def P251800778752225150.Spec : Prop :=
  ∀ n, P251800778752225150.a n = A077848 n

end A077848

/-! ## A077848.P15938842277833619453

`∑[a(n-2)+2*(a(n-1)+a(n-3))]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A077848.P15938842277833619453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n f1 =>
  f1 (n - 2) + 2 * (f1 (n - 1) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077848.P15938842277833619453

namespace A077848

/-- `∑[a(n-2)+2*(a(n-1)+a(n-3))]` -/
def P15938842277833619453.Spec : Prop :=
  ∀ n, (P15938842277833619453.a n : ℤ) = A077848 n

end A077848

/-! ## A077848.P645429999663632189

`∑[A077938(n)]`
-/

namespace A077848.P645429999663632189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077848.P645429999663632189

namespace A077848

/-- `∑[A077938(n)]` -/
def P645429999663632189.Spec : Prop :=
  ∀ n, P645429999663632189.a n = A077848 n

end A077848

/-! ## A077848.P1403121258321132933

`∑[abs(A077987(n))]`
-/

namespace A077848.P1403121258321132933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077987 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077848.P1403121258321132933

namespace A077848

/-- `∑[abs(A077987(n))]` -/
def P1403121258321132933.Spec : Prop :=
  ∀ n, P1403121258321132933.a n = A077848 n

end A077848

/-! ## A077848.P15276056623608420906

`∑[∑[A077996(n)]]`
-/

namespace A077848.P15276056623608420906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077848.P15276056623608420906

namespace A077848

/-- `∑[∑[A077996(n)]]` -/
def P15276056623608420906.Spec : Prop :=
  ∀ n, P15276056623608420906.a n = A077848 n

end A077848

/-! ## A077848.P2657100367766077783

`∑[abs(∑[A078059(n)])]`
-/

namespace A077848.P2657100367766077783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077848.P2657100367766077783

namespace A077848

/-- `∑[abs(∑[A078059(n)])]` -/
def P2657100367766077783.Spec : Prop :=
  ∀ n, P2657100367766077783.a n = A077848 n

end A077848

/-!
# A077849: Expansion of (1-x)^(-1)/(1 - 2*x - x^2 - x^3).

The programs for A077849, the canonical program `A077849.P4617527767539867255` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077849 has offset 0).

The definition of A077849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+x^2+x^4))` (program `A077849.P4617527767539867255`, by `A077849.P4617527767539867255.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077849.P4617527767539867255

`ogf(1/(1-3x+x^2+x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077849

/-- `ogf(1/(1-3x+x^2+x^4))` -/
def P4617527767539867255.Spec : Prop :=
  ∀ n, P4617527767539867255.a n = A077849 n

theorem P4617527767539867255.correct : P4617527767539867255.Spec := by
  intro n
  simp only [A077849]

end A077849

/-! ## A077849.P15584647469362914484

`∑[2*a(n-1)+a(n-2)+a(n-3)]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A077849.P15584647469362914484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n f1 =>
  2 * f1 (n - 1) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077849.P15584647469362914484

namespace A077849

/-- `∑[2*a(n-1)+a(n-2)+a(n-3)]` -/
def P15584647469362914484.Spec : Prop :=
  ∀ n, (P15584647469362914484.a n : ℤ) = A077849 n

end A077849

/-! ## A077849.P5483473409092272187

`∑[A077939(n)]`
-/

namespace A077849.P5483473409092272187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077849.P5483473409092272187

namespace A077849

/-- `∑[A077939(n)]` -/
def P5483473409092272187.Spec : Prop :=
  ∀ n, P5483473409092272187.a n = A077849 n

end A077849

/-! ## A077849.P11160888345168650936

`∑[abs(A077986(n))]`
-/

namespace A077849.P11160888345168650936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077986 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077849.P11160888345168650936

namespace A077849

/-- `∑[abs(A077986(n))]` -/
def P11160888345168650936.Spec : Prop :=
  ∀ n, P11160888345168650936.a n = A077849 n

end A077849

/-! ## A077849.P949412477689416028

`∑[∑[A077997(n)]]`
-/

namespace A077849.P949412477689416028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077997 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077849.P949412477689416028

namespace A077849

/-- `∑[∑[A077997(n)]]` -/
def P949412477689416028.Spec : Prop :=
  ∀ n, P949412477689416028.a n = A077849 n

end A077849

/-! ## A077849.P2501250520697604598

`A116413(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A077849.P2501250520697604598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A116413 n + a (n - 2)

end

end A077849.P2501250520697604598

namespace A077849

/-- `A116413(n)+a(n-2)` -/
def P2501250520697604598.Spec : Prop :=
  ∀ n, P2501250520697604598.a n = A077849 n

end A077849

/-! ## A077849.P1706499130683759703

`∑[abs(∑[A078058(n)])]`
-/

namespace A077849.P1706499130683759703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078058 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077849.P1706499130683759703

namespace A077849

/-- `∑[abs(∑[A078058(n)])]` -/
def P1706499130683759703.Spec : Prop :=
  ∀ n, P1706499130683759703.a n = A077849 n

end A077849

/-! ## A077849.P13878808400679180568

`(A347725(n+2)-1)/3`
-/

namespace A077849.P13878808400679180568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347725 (n + 2) - 1 : ℚ) / 3

end

end A077849.P13878808400679180568

namespace A077849

/-- `(A347725(n+2)-1)/3` -/
def P13878808400679180568.Spec : Prop :=
  ∀ n, P13878808400679180568.a n = (A077849 n : ℚ)

end A077849

/-!
# A077850: Expansion of (1-x)^(-1)/(1 - 2*x - x^2 + x^3).

The programs for A077850, the canonical program `A077850.P8544488254574730932` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077850 has offset 0).

The definition of A077850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+x^2+2x^3-x^4))` (program `A077850.P8544488254574730932`, by `A077850.P8544488254574730932.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077850.P8544488254574730932

`ogf(1/(1-3x+x^2+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077850

/-- `ogf(1/(1-3x+x^2+2x^3-x^4))` -/
def P8544488254574730932.Spec : Prop :=
  ∀ n, P8544488254574730932.a n = A077850 n

theorem P8544488254574730932.correct : P8544488254574730932.Spec := by
  intro n
  simp only [A077850]

end A077850

/-! ## A077850.P10855757583631948831

`3*a(n-1)-a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=19`
-/

namespace A077850.P10855757583631948831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8, 19] fun n a =>
  3 * a (n - 1) - a (n - 2) - 2 * a (n - 3) + a (n - 4)

end

end A077850.P10855757583631948831

namespace A077850

/-- `3*a(n-1)-a(n-2)-2*a(n-3)+a(n-4)` -/
def P10855757583631948831.Spec : Prop :=
  ∀ n, P10855757583631948831.a n = A077850 n

end A077850

/-! ## A077850.P4353195241099806808

`∑[2*a(n-1)+a(n-2)-a(n-3)]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A077850.P4353195241099806808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n f1 =>
  2 * f1 (n - 1) + (f1 (n - 2) - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077850.P4353195241099806808

namespace A077850

/-- `∑[2*a(n-1)+a(n-2)-a(n-3)]` -/
def P4353195241099806808.Spec : Prop :=
  ∀ n, P4353195241099806808.a n = A077850 n

end A077850

/-! ## A077850.P1679409226813767307

`∑[A106805(n)]`
-/

namespace A077850.P1679409226813767307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077850.P1679409226813767307

namespace A077850

/-- `∑[A106805(n)]` -/
def P1679409226813767307.Spec : Prop :=
  ∀ n, P1679409226813767307.a n = A077850 n

end A077850

/-! ## A077850.P17276100862730425097

`∑[∑[A077998(n)]]`
-/

namespace A077850.P17276100862730425097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077850.P17276100862730425097

namespace A077850

/-- `∑[∑[A077998(n)]]` -/
def P17276100862730425097.Spec : Prop :=
  ∀ n, P17276100862730425097.a n = A077850 n

end A077850

/-! ## A077850.P889591835910327012

`∑[A006054(n+2)]`
-/

namespace A077850.P889591835910327012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077850.P889591835910327012

namespace A077850

/-- `∑[A006054(n+2)]` -/
def P889591835910327012.Spec : Prop :=
  ∀ n, P889591835910327012.a n = A077850 n

end A077850

/-! ## A077850.P2203246735126250298

`∑[A370377(2*n)]`
-/

namespace A077850.P2203246735126250298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370377 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077850.P2203246735126250298

namespace A077850

/-- `∑[A370377(2*n)]` -/
def P2203246735126250298.Spec : Prop :=
  ∀ n, P2203246735126250298.a n = A077850 n

end A077850

/-! ## A077850.P3861312245068219827

`∑[abs(Δ[A052534(n)])]`
-/

namespace A077850.P3861312245068219827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077850.P3861312245068219827

namespace A077850

/-- `∑[abs(Δ[A052534(n)])]` -/
def P3861312245068219827.Spec : Prop :=
  ∀ n, P3861312245068219827.a n = A077850 n

end A077850

/-! ## A077850.P14160351820910492678

`∑[A038196(Δ[n²])]`
-/

namespace A077850.P14160351820910492678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077850.P14160351820910492678

namespace A077850

/-- `∑[A038196(Δ[n²])]` -/
def P14160351820910492678.Spec : Prop :=
  ∀ n, P14160351820910492678.a n = A077850 n

end A077850

/-! ## A077850.P9848403074600981030

`A052534(n+1)-1`
-/

namespace A077850.P9848403074600981030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 (n + 1) - 1

end

end A077850.P9848403074600981030

namespace A077850

/-- `A052534(n+1)-1` -/
def P9848403074600981030.Spec : Prop :=
  ∀ n, P9848403074600981030.a n = A077850 n

end A077850

/-! ## A077850.P9235691506482609738

`∑[∑[A106803(n+1)]]`
-/

namespace A077850.P9235691506482609738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077850.P9235691506482609738

namespace A077850

/-- `∑[∑[A106803(n+1)]]` -/
def P9235691506482609738.Spec : Prop :=
  ∀ n, P9235691506482609738.a n = A077850 n

end A077850

/-! ## A077850.P9133980381060762506

`∑[∑[A052949(n)-1]]`
-/

namespace A077850.P9133980381060762506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052949 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077850.P9133980381060762506

namespace A077850

/-- `∑[∑[A052949(n)-1]]` -/
def P9133980381060762506.Spec : Prop :=
  ∀ n, P9133980381060762506.a n = A077850 n

end A077850

/-! ## A077850.P3877284740522343524

`∑[∑[A038196(2*n)]]`
-/

namespace A077850.P3877284740522343524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077850.P3877284740522343524

namespace A077850

/-- `∑[∑[A038196(2*n)]]` -/
def P3877284740522343524.Spec : Prop :=
  ∀ n, P3877284740522343524.a n = A077850 n

end A077850

/-! ## A077850.P8331703818956659451

`record[Δ[A370377(n)]-1]`
-/

namespace A077850.P8331703818956659451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370377 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077850.P8331703818956659451

namespace A077850

/-- `record[Δ[A370377(n)]-1]` -/
def P8331703818956659451.Spec : Prop :=
  ∀ n, P8331703818956659451.a n = A077850 n

end A077850

/-! ## A077850.P5757406290802966636

`∑[A187069(2*(n+2))]`
-/

namespace A077850.P5757406290802966636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077850.P5757406290802966636

namespace A077850

/-- `∑[A187069(2*(n+2))]` -/
def P5757406290802966636.Spec : Prop :=
  ∀ n, P5757406290802966636.a n = A077850 n

end A077850

/-! ## A077850.P3853966628810314809

`∑[A187070(2*n+3)]`
-/

namespace A077850.P3853966628810314809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077850.P3853966628810314809

namespace A077850

/-- `∑[A187070(2*n+3)]` -/
def P3853966628810314809.Spec : Prop :=
  ∀ n, P3853966628810314809.a n = A077850 n

end A077850

/-! ## A077850.P8820641703199874065

`∑[∑[abs(A199853(n+1))]]`
-/

namespace A077850.P8820641703199874065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199853 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077850.P8820641703199874065

namespace A077850

/-- `∑[∑[abs(A199853(n+1))]]` -/
def P8820641703199874065.Spec : Prop :=
  ∀ n, P8820641703199874065.a n = A077850 n

end A077850

/-! ## A077850.P1003624259957245584

`∑[record[Δ[A038196(n+2)]]]`
-/

namespace A077850.P1003624259957245584
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077850.P1003624259957245584

namespace A077850

/-- `∑[record[Δ[A038196(n+2)]]]` -/
def P1003624259957245584.Spec : Prop :=
  ∀ n, P1003624259957245584.a n = A077850 n

end A077850

/-! ## A077850.P5863682999020493972

`A187069(2*n+5)-1`
-/

namespace A077850.P5863682999020493972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (2 * n + 5) - 1

end

end A077850.P5863682999020493972

namespace A077850

/-- `A187069(2*n+5)-1` -/
def P5863682999020493972.Spec : Prop :=
  ∀ n, P5863682999020493972.a n = A077850 n

end A077850

/-! ## A077850.P9906400636705648599

`∑[∑[A052994(n+1)/2]]`
-/

namespace A077850.P9906400636705648599
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052994 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077850.P9906400636705648599

namespace A077850

/-- `∑[∑[A052994(n+1)/2]]` -/
def P9906400636705648599.Spec : Prop :=
  ∀ n, P9906400636705648599.a n = (A077850 n : ℚ)

end A077850

/-!
# A077851: Expansion of (1-x)^(-1)/(1 - 2*x - 2*x^3).

The programs for A077851, the canonical program `A077851.P859344082722273856` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077851 has offset 0).

The definition of A077851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+2x^2-2x^3+2x^4))` (program `A077851.P859344082722273856`, by `A077851.P859344082722273856.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077851.P859344082722273856

`ogf(1/(1-3x+2x^2-2x^3+2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077851

/-- `ogf(1/(1-3x+2x^2-2x^3+2x^4))` -/
def P859344082722273856.Spec : Prop :=
  ∀ n, P859344082722273856.a n = A077851 n

theorem P859344082722273856.correct : P859344082722273856.Spec := by
  intro n
  simp only [A077851]

end A077851

/-! ## A077851.P6431253669861976284

`∑[2*(a(n-1)+a(n-3))]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A077851.P6431253669861976284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  2 * (f1 (n - 1) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077851.P6431253669861976284

namespace A077851

/-- `∑[2*(a(n-1)+a(n-3))]` -/
def P6431253669861976284.Spec : Prop :=
  ∀ n, (P6431253669861976284.a n : ℤ) = A077851 n

end A077851

/-! ## A077851.P4216422051749603177

`2*(a(n-1)+a(n-3))+1` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A077851.P4216422051749603177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  2 * (a (n - 1) + a (n - 3)) + 1

end

end A077851.P4216422051749603177

namespace A077851

/-- `2*(a(n-1)+a(n-3))+1` -/
def P4216422051749603177.Spec : Prop :=
  ∀ n, (P4216422051749603177.a n : ℤ) = A077851 n

end A077851

/-! ## A077851.P6295301467488267994

`∑[A052912(n)]`
-/

namespace A077851.P6295301467488267994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077851.P6295301467488267994

namespace A077851

/-- `∑[A052912(n)]` -/
def P6295301467488267994.Spec : Prop :=
  ∀ n, P6295301467488267994.a n = A077851 n

end A077851

/-! ## A077851.P9025676828530640417

`∑[∑[A077999(n)]]`
-/

namespace A077851.P9025676828530640417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077851.P9025676828530640417

namespace A077851

/-- `∑[∑[A077999(n)]]` -/
def P9025676828530640417.Spec : Prop :=
  ∀ n, P9025676828530640417.a n = A077851 n

end A077851

/-! ## A077851.P9899156302254433398

`∑[abs(∑[A078062(n)])]`
-/

namespace A077851.P9899156302254433398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078062 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077851.P9899156302254433398

namespace A077851

/-- `∑[abs(∑[A078062(n)])]` -/
def P9899156302254433398.Spec : Prop :=
  ∀ n, P9899156302254433398.a n = A077851 n

end A077851

/-! ## A077851.P2589828834364819122

`∑[∑[abs(A110524(n))]]`
-/

namespace A077851.P2589828834364819122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110524 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077851.P2589828834364819122

namespace A077851

/-- `∑[∑[abs(A110524(n))]]` -/
def P2589828834364819122.Spec : Prop :=
  ∀ n, P2589828834364819122.a n = A077851 n

end A077851

/-! ## A077851.P2537386834992140065

`∑[A239333(n+2)%A239333(n+1)]`
-/

namespace A077851.P2537386834992140065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239333 (n + 2)) (A239333 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077851.P2537386834992140065

namespace A077851

/-- `∑[A239333(n+2)%A239333(n+1)]` -/
def P2537386834992140065.Spec : Prop :=
  ∀ n, P2537386834992140065.a n = A077851 n

end A077851

/-! ## A077851.P16665320833565810463

`A019494(n)+Δ[A239333(n+1)-A019494(n)]`
-/

namespace A077851.P16665320833565810463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239333 (n + 1) - A019494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019494 n + (f1 (n + 1) - f1 n)

end

end A077851.P16665320833565810463

namespace A077851

/-- `A019494(n)+Δ[A239333(n+1)-A019494(n)]` -/
def P16665320833565810463.Spec : Prop :=
  ∀ n, P16665320833565810463.a n = A077851 n

end A077851

/-!
# A077852: Expansion of (1-x)^(-1)/(1-2*x-x^3).

The programs for A077852, the canonical program `A077852.P2052607372370416898` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077852 has offset 0).

The definition of A077852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+2x^2-x^3+x^4))` (program `A077852.P2052607372370416898`, by `A077852.P2052607372370416898.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077852.P2052607372370416898

`ogf(1/(1-3x+2x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077852

/-- `ogf(1/(1-3x+2x^2-x^3+x^4))` -/
def P2052607372370416898.Spec : Prop :=
  ∀ n, P2052607372370416898.a n = A077852 n

theorem P2052607372370416898.correct : P2052607372370416898.Spec := by
  intro n
  simp only [A077852]

end A077852

/-! ## A077852.P15900965360008709277

`2*a(n-1)+a(n-3)+1` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A077852.P15900965360008709277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  2 * a (n - 1) + a (n - 3) + 1

end

end A077852.P15900965360008709277

namespace A077852

/-- `2*a(n-1)+a(n-3)+1` -/
def P15900965360008709277.Spec : Prop :=
  ∀ n, (P15900965360008709277.a n : ℤ) = A077852 n

end A077852

/-! ## A077852.P11808568653781676749

`∑[a(n-3)+2*a(n-1)]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A077852.P11808568653781676749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  f1 (n - 3) + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077852.P11808568653781676749

namespace A077852

/-- `∑[a(n-3)+2*a(n-1)]` -/
def P11808568653781676749.Spec : Prop :=
  ∀ n, (P11808568653781676749.a n : ℤ) = A077852 n

end A077852

/-! ## A077852.P16299363383397736186

`∑[a(n-1)+a(n-1)+a(n-3)]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A077852.P16299363383397736186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077852.P16299363383397736186

namespace A077852

/-- `∑[a(n-1)+a(n-1)+a(n-3)]` -/
def P16299363383397736186.Spec : Prop :=
  ∀ n, (P16299363383397736186.a n : ℤ) = A077852 n

end A077852

/-! ## A077852.P13665483110344360303

`ceil(a(n-1)/a(n-2)*a(n-1))-1` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A077852.P13665483110344360303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  ⌈(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌉ - 1

end

end A077852.P13665483110344360303

namespace A077852

/-- `ceil(a(n-1)/a(n-2)*a(n-1))-1` -/
def P13665483110344360303.Spec : Prop :=
  ∀ n, P13665483110344360303.a n = A077852 n

end A077852

/-! ## A077852.P14339689299422917555

`∑[A008998(n)]`
-/

namespace A077852.P14339689299422917555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077852.P14339689299422917555

namespace A077852

/-- `∑[A008998(n)]` -/
def P14339689299422917555.Spec : Prop :=
  ∀ n, P14339689299422917555.a n = A077852 n

end A077852

/-! ## A077852.P1519613476893525521

`∑[∑[A052980(n)]]`
-/

namespace A077852.P1519613476893525521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077852.P1519613476893525521

namespace A077852

/-- `∑[∑[A052980(n)]]` -/
def P1519613476893525521.Spec : Prop :=
  ∀ n, P1519613476893525521.a n = A077852 n

end A077852

/-! ## A077852.P4497404938162246751

`∑[∑[abs(A110513(n))]]`
-/

namespace A077852.P4497404938162246751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110513 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077852.P4497404938162246751

namespace A077852

/-- `∑[∑[abs(A110513(n))]]` -/
def P4497404938162246751.Spec : Prop :=
  ∀ n, P4497404938162246751.a n = A077852 n

end A077852

/-! ## A077852.P11990633787092457667

`∑[A052910(n+1)/2]`
-/

namespace A077852.P11990633787092457667
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052910 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077852.P11990633787092457667

namespace A077852

/-- `∑[A052910(n+1)/2]` -/
def P11990633787092457667.Spec : Prop :=
  ∀ n, P11990633787092457667.a n = (A077852 n : ℚ)

end A077852

/-! ## A077852.P3315442977537587735

`A020708(n-2)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A077852.P3315442977537587735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A020708 (n - 2) + a (n - 1)

end

end A077852.P3315442977537587735

namespace A077852

/-- `A020708(n-2)+a(n-1)` -/
def P3315442977537587735.Spec : Prop :=
  ∀ n, P3315442977537587735.a n = A077852 n

end A077852

/-! ## A077852.P3406480121162481440

`∑[abs(∑[A078061(n)])]`
-/

namespace A077852.P3406480121162481440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077852.P3406480121162481440

namespace A077852

/-- `∑[abs(∑[A078061(n)])]` -/
def P3406480121162481440.Spec : Prop :=
  ∀ n, P3406480121162481440.a n = A077852 n

end A077852

/-! ## A077852.P8795409706902005082

`A232230(n+2)/2`
-/

namespace A077852.P8795409706902005082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232230 (n + 2) : ℚ) / 2

end

end A077852.P8795409706902005082

namespace A077852

/-- `A232230(n+2)/2` -/
def P8795409706902005082.Spec : Prop :=
  ∀ n, P8795409706902005082.a n = (A077852 n : ℚ)

end A077852

/-! ## A077852.P5216826466529638377

`(A193641(n+2)-1)/2`
-/

namespace A077852.P5216826466529638377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193641 (n + 2) - 1 : ℚ) / 2

end

end A077852.P5216826466529638377

namespace A077852

/-- `(A193641(n+2)-1)/2` -/
def P5216826466529638377.Spec : Prop :=
  ∀ n, P5216826466529638377.a n = (A077852 n : ℚ)

end A077852

/-! ## A077852.P17034680101682593887

`∑[Δ[A193641(n+1)]/2]`
-/

namespace A077852.P17034680101682593887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077852.P17034680101682593887

namespace A077852

/-- `∑[Δ[A193641(n+1)]/2]` -/
def P17034680101682593887.Spec : Prop :=
  ∀ n, P17034680101682593887.a n = (A077852 n : ℚ)

end A077852

/-! ## A077852.P11273565804486253764

`A019489(n)-A008998(n+1)`
-/

namespace A077852.P11273565804486253764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019489 n - A008998 (n + 1)

end

end A077852.P11273565804486253764

namespace A077852

/-- `A019489(n)-A008998(n+1)` -/
def P11273565804486253764.Spec : Prop :=
  ∀ n, P11273565804486253764.a n = A077852 n

end A077852

/-! ## A077852.P14292106292803253676

`A019489(n)-(A193641(n+1)+A052980(n))`
-/

namespace A077852.P14292106292803253676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019489 n - (A193641 (n + 1) + A052980 n)

end

end A077852.P14292106292803253676

namespace A077852

/-- `A019489(n)-(A193641(n+1)+A052980(n))` -/
def P14292106292803253676.Spec : Prop :=
  ∀ n, P14292106292803253676.a n = A077852 n

end A077852

/-! ## A077852.P10379348193400099468

`∑[A020708(n+1)%A020708(n)]`
-/

namespace A077852.P10379348193400099468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020708 (n + 1)) (A020708 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077852.P10379348193400099468

namespace A077852

/-- `∑[A020708(n+1)%A020708(n)]` -/
def P10379348193400099468.Spec : Prop :=
  ∀ n, P10379348193400099468.a n = A077852 n

end A077852

/-! ## A077852.P17088596599214290618

`A022040(n)-A193641(n+4)`
-/

namespace A077852.P17088596599214290618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022040 n - A193641 (n + 4)

end

end A077852.P17088596599214290618

namespace A077852

/-- `A022040(n)-A193641(n+4)` -/
def P17088596599214290618.Spec : Prop :=
  ∀ n, P17088596599214290618.a n = A077852 n

end A077852

/-! ## A077852.P9824416697960345497

`Δ[Δ[A019479(n)]]-A019479(n)`
-/

namespace A077852.P9824416697960345497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019479 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A019479 n

end

end A077852.P9824416697960345497

namespace A077852

/-- `Δ[Δ[A019479(n)]]-A019479(n)` -/
def P9824416697960345497.Spec : Prop :=
  ∀ n, P9824416697960345497.a n = A077852 n

end A077852

/-! ## A077852.P1622307421945920587

`A019489(n+2)-A193641(n+4)`
-/

namespace A077852.P1622307421945920587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019489 (n + 2) - A193641 (n + 4)

end

end A077852.P1622307421945920587

namespace A077852

/-- `A019489(n+2)-A193641(n+4)` -/
def P1622307421945920587.Spec : Prop :=
  ∀ n, P1622307421945920587.a n = A077852 n

end A077852

/-!
# A077853: Expansion of (1-x)^(-1)/(1-2*x+2*x^3).

The programs for A077853, the canonical program `A077853.P14429868041278908344` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077853 has offset 0).

The definition of A077853 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+2x^2+2x^3-2x^4))` (program `A077853.P14429868041278908344`, by `A077853.P14429868041278908344.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077853.P14429868041278908344

`ogf(1/(1-3x+2x^2+2x^3-2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077853

/-- `ogf(1/(1-3x+2x^2+2x^3-2x^4))` -/
def P14429868041278908344.Spec : Prop :=
  ∀ n, P14429868041278908344.a n = A077853 n

theorem P14429868041278908344.correct : P14429868041278908344.Spec := by
  intro n
  simp only [A077853]

end A077853

/-! ## A077853.P5747782958764089309

`3*a(n-1)-2*a(n-2)-2*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=13`
-/

namespace A077853.P5747782958764089309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 13] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 2 * a (n - 4)

end

end A077853.P5747782958764089309

namespace A077853

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+2*a(n-4)` -/
def P5747782958764089309.Spec : Prop :=
  ∀ n, P5747782958764089309.a n = A077853 n

end A077853

/-! ## A077853.P10082650294919847068

`∑[ogf(1/(1-2x+2x^3))]`
-/

namespace A077853.P10082650294919847068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 0, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077853.P10082650294919847068

namespace A077853

/-- `∑[ogf(1/(1-2x+2x^3))]` -/
def P10082650294919847068.Spec : Prop :=
  ∀ n, P10082650294919847068.a n = A077853 n

end A077853

/-! ## A077853.P6753609573218058851

`∑[2*(a(n-1)-a(n-3))]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A077853.P6753609573218058851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  2 * (f1 (n - 1) - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077853.P6753609573218058851

namespace A077853

/-- `∑[2*(a(n-1)-a(n-3))]` -/
def P6753609573218058851.Spec : Prop :=
  ∀ n, P6753609573218058851.a n = A077853 n

end A077853

/-! ## A077853.P7593928198310410453

`2*(a(n-1)-a(n-3))+1` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A077853.P7593928198310410453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  2 * (a (n - 1) - a (n - 3)) + 1

end

end A077853.P7593928198310410453

namespace A077853

/-- `2*(a(n-1)-a(n-3))+1` -/
def P7593928198310410453.Spec : Prop :=
  ∀ n, P7593928198310410453.a n = A077853 n

end A077853

/-! ## A077853.P9704073283160108207

`1-2*(a(n-3)-a(n-1))` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A077853.P9704073283160108207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  1 - 2 * (a (n - 3) - a (n - 1))

end

end A077853.P9704073283160108207

namespace A077853

/-- `1-2*(a(n-3)-a(n-1))` -/
def P9704073283160108207.Spec : Prop :=
  ∀ n, P9704073283160108207.a n = A077853 n

end A077853

/-! ## A077853.P5883882027839957822

`∑[A077940(n)]`
-/

namespace A077853.P5883882027839957822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077853.P5883882027839957822

namespace A077853

/-- `∑[A077940(n)]` -/
def P5883882027839957822.Spec : Prop :=
  ∀ n, P5883882027839957822.a n = A077853 n

end A077853

/-! ## A077853.P5620774049419854351

`∑[(-1)^n*A077988(n)]`
-/

namespace A077853.P5620774049419854351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077853.P5620774049419854351

namespace A077853

/-- `∑[(-1)^n*A077988(n)]` -/
def P5620774049419854351.Spec : Prop :=
  ∀ n, P5620774049419854351.a n = A077853 n

end A077853

/-! ## A077853.P15626147244138577458

`∑[∑[(1-4/2)*A073358(n+1)]]`
-/

namespace A077853.P15626147244138577458
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) * (A073358 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077853.P15626147244138577458

namespace A077853

/-- `∑[∑[(1-4/2)*A073358(n+1)]]` -/
def P15626147244138577458.Spec : Prop :=
  ∀ n, P15626147244138577458.a n = (A077853 n : ℚ)

end A077853

/-!
# A077854: Expansion of 1/((1-x)*(1-2*x)*(1+x^2)).

The programs for A077854, the canonical program `A077854.P2995230366092341875` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077854 has offset 0).

The definition of A077854 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+3x^2-3x^3+2x^4))` (program `A077854.P2995230366092341875`, by `A077854.P2995230366092341875.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077854.P2995230366092341875

`ogf(1/(1-3x+3x^2-3x^3+2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077854

/-- `ogf(1/(1-3x+3x^2-3x^3+2x^4))` -/
def P2995230366092341875.Spec : Prop :=
  ∀ n, P2995230366092341875.a n = A077854 n

theorem P2995230366092341875.correct : P2995230366092341875.Spec := by
  intro n
  simp only [A077854]

end A077854

/-! ## A077854.P17448674866908251891

`2^(n+1)-1-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A077854.P17448674866908251891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 ^ (n + 1) : ℤ) - 1 - a (n - 2)

end

end A077854.P17448674866908251891

namespace A077854

/-- `2^(n+1)-1-a(n-2)` -/
def P17448674866908251891.Spec : Prop :=
  ∀ n, P17448674866908251891.a n = A077854 n

end A077854

/-! ## A077854.P7465897977417184046

`3*a(n-1)-3*a(n-2)+3*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=12`
-/

namespace A077854.P7465897977417184046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 12] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3) - 2 * a (n - 4)

end

end A077854.P7465897977417184046

namespace A077854

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)-2*a(n-4)` -/
def P7465897977417184046.Spec : Prop :=
  ∀ n, P7465897977417184046.a n = A077854 n

end A077854

/-! ## A077854.P15347550994745743050

`floor(2^(n+3)/5)`
-/

namespace A077854.P15347550994745743050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 3) : ℚ) / 5⌋

end

end A077854.P15347550994745743050

namespace A077854

/-- `floor(2^(n+3)/5)` -/
def P15347550994745743050.Spec : Prop :=
  ∀ n, P15347550994745743050.a n = A077854 n

end A077854

/-! ## A077854.P830837297466629828

`∑[2^n-a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A077854.P830837297466629828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (2 ^ n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077854.P830837297466629828

namespace A077854

/-- `∑[2^n-a(n-2)]` -/
def P830837297466629828.Spec : Prop :=
  ∀ n, P830837297466629828.a n = A077854 n

end A077854

/-! ## A077854.P9095441499096233397

`2^(n+1)-(a(n-2)+1)` with `a(0)=1, a(1)=3`
-/

namespace A077854.P9095441499096233397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 ^ (n + 1) : ℤ) - (a (n - 2) + 1)

end

end A077854.P9095441499096233397

namespace A077854

/-- `2^(n+1)-(a(n-2)+1)` -/
def P9095441499096233397.Spec : Prop :=
  ∀ n, P9095441499096233397.a n = A077854 n

end A077854

/-! ## A077854.P2510260763380676392

`∑[n+1]%2+2*a(n-1)` with `a(0)=1`
-/

namespace A077854.P2510260763380676392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2 + 2 * a (n - 1)

end

end A077854.P2510260763380676392

namespace A077854

/-- `∑[n+1]%2+2*a(n-1)` -/
def P2510260763380676392.Spec : Prop :=
  ∀ n, (P2510260763380676392.a n : ℤ) = A077854 n

end A077854

/-! ## A077854.P10023853988036354316

`and(1, ∑[n+1])+2*a(n-1)` with `a(0)=1`
-/

namespace A077854.P10023853988036354316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 * a (n - 1)

end

end A077854.P10023853988036354316

namespace A077854

/-- `and(1, ∑[n+1])+2*a(n-1)` -/
def P10023853988036354316.Spec : Prop :=
  ∀ n, (P10023853988036354316.a n : ℤ) = A077854 n

end A077854

/-! ## A077854.P10017836508040043640

`∑[2*a(n-1)]-floor(a(n-1)/2)` with `a(0)=1`
-/

namespace A077854.P10017836508040043640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(a (n - 1) : ℚ) / 2⌋

end

end A077854.P10017836508040043640

namespace A077854

/-- `∑[2*a(n-1)]-floor(a(n-1)/2)` -/
def P10017836508040043640.Spec : Prop :=
  ∀ n, P10017836508040043640.a n = A077854 n

end A077854

/-! ## A077854.P17801584953050419301

`1-(a(n-2)%2-2*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A077854.P17801584953050419301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  1 - (Int.tmod (a (n - 2)) 2 - 2 * a (n - 1))

end

end A077854.P17801584953050419301

namespace A077854

/-- `1-(a(n-2)%2-2*a(n-1))` -/
def P17801584953050419301.Spec : Prop :=
  ∀ n, P17801584953050419301.a n = A077854 n

end A077854

/-! ## A077854.P5979877757022218562

`2*a(n-1)+gcd(2, a(n-2))-1` with `a(0)=1, a(1)=3`
-/

namespace A077854.P5979877757022218562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) + ((Int.gcd 2 (a (n - 2)) : ℤ) - 1)

end

end A077854.P5979877757022218562

namespace A077854

/-- `2*a(n-1)+gcd(2, a(n-2))-1` -/
def P5979877757022218562.Spec : Prop :=
  ∀ n, P5979877757022218562.a n = A077854 n

end A077854

/-! ## A077854.P8188575101990117059

`a(n-1)-((1-a(n-2))%2-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A077854.P8188575101990117059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - (Int.tmod (1 - a (n - 2)) 2 - a (n - 1))

end

end A077854.P8188575101990117059

namespace A077854

/-- `a(n-1)-((1-a(n-2))%2-a(n-1))` -/
def P8188575101990117059.Spec : Prop :=
  ∀ n, P8188575101990117059.a n = A077854 n

end A077854

/-! ## A077854.P7800649013611475159

`∑[A007910(n)]`
-/

namespace A077854.P7800649013611475159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077854.P7800649013611475159

namespace A077854

/-- `∑[A007910(n)]` -/
def P7800649013611475159.Spec : Prop :=
  ∀ n, P7800649013611475159.a n = A077854 n

end A077854

/-! ## A077854.P1187867267788756621

`∑[∑[A007909(n)]]`
-/

namespace A077854.P1187867267788756621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077854.P1187867267788756621

namespace A077854

/-- `∑[∑[A007909(n)]]` -/
def P1187867267788756621.Spec : Prop :=
  ∀ n, P1187867267788756621.a n = A077854 n

end A077854

/-! ## A077854.P10697170813184873107

`A262267(n+1)-1`
-/

namespace A077854.P10697170813184873107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262267 (n + 1) - 1

end

end A077854.P10697170813184873107

namespace A077854

/-- `A262267(n+1)-1` -/
def P10697170813184873107.Spec : Prop :=
  ∀ n, P10697170813184873107.a n = A077854 n

end A077854

/-! ## A077854.P14997589517278984454

`∑[∑[A274845(2*n)]]`
-/

namespace A077854.P14997589517278984454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274845 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077854.P14997589517278984454

namespace A077854

/-- `∑[∑[A274845(2*n)]]` -/
def P14997589517278984454.Spec : Prop :=
  ∀ n, P14997589517278984454.a n = A077854 n

end A077854

/-! ## A077854.P10216683120157075844

`∑[∑[abs(A118408(2*n+1))]]`
-/

namespace A077854.P10216683120157075844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118408 (2 * n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077854.P10216683120157075844

namespace A077854

/-- `∑[∑[abs(A118408(2*n+1))]]` -/
def P10216683120157075844.Spec : Prop :=
  ∀ n, P10216683120157075844.a n = A077854 n

end A077854

/-! ## A077854.P7708562564976479888

`xor(a(n-1), A000975(n+1))` with `a(0)=1`
-/

namespace A077854.P7708562564976479888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A000975 (n + 1))

end

end A077854.P7708562564976479888

namespace A077854

/-- `xor(a(n-1), A000975(n+1))` -/
def P7708562564976479888.Spec : Prop :=
  ∀ n, P7708562564976479888.a n = A077854 n

end A077854

/-! ## A077854.P7738005494564484921

`xor(A000975(n), A262864(n))`
-/

namespace A077854.P7738005494564484921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000975 n) (A262864 n)

end

end A077854.P7738005494564484921

namespace A077854

/-- `xor(A000975(n), A262864(n))` -/
def P7738005494564484921.Spec : Prop :=
  ∀ n, P7738005494564484921.a n = A077854 n

end A077854

/-! ## A077854.P16321137838897909130

`A007910(n+1)-A133872(n+1)`
-/

namespace A077854.P16321137838897909130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (n + 1) - A133872 (n + 1)

end

end A077854.P16321137838897909130

namespace A077854

/-- `A007910(n+1)-A133872(n+1)` -/
def P16321137838897909130.Spec : Prop :=
  ∀ n, P16321137838897909130.a n = A077854 n

end A077854

/-!
# A077855: Expansion of 1/((1-2*x+x^2-x^3)*(1-x)).

The programs for A077855, the canonical program `A077855.P15362185107991144960` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077855 has offset 0).

The definition of A077855 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+3x^2-2x^3+x^4))` (program `A077855.P15362185107991144960`, by `A077855.P15362185107991144960.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077855.P15362185107991144960

`ogf(1/(1-3x+3x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077855

/-- `ogf(1/(1-3x+3x^2-2x^3+x^4))` -/
def P15362185107991144960.Spec : Prop :=
  ∀ n, P15362185107991144960.a n = A077855 n

theorem P15362185107991144960.correct : P15362185107991144960.Spec := by
  intro n
  simp only [A077855]

end A077855

/-! ## A077855.P16978286041471467054

`A005251(n+4)-1`
-/

namespace A077855.P16978286041471467054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 4) - 1

end

end A077855.P16978286041471467054

namespace A077855

/-- `A005251(n+4)-1` -/
def P16978286041471467054.Spec : Prop :=
  ∀ n, P16978286041471467054.a n = A077855 n

end A077855

/-! ## A077855.P11668010406273319605

`2*a(n-1)-a(n-2)+a(n-3)+1` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A077855.P11668010406273319605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) + 1

end

end A077855.P11668010406273319605

namespace A077855

/-- `2*a(n-1)-a(n-2)+a(n-3)+1` -/
def P11668010406273319605.Spec : Prop :=
  ∀ n, P11668010406273319605.a n = A077855 n

end A077855

/-! ## A077855.P13684274958715921445

`∑[record[a(n-2)-a(n-3)]]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A077855.P13684274958715921445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  f2 (n - 2) - f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077855.P13684274958715921445

namespace A077855

/-- `∑[record[a(n-2)-a(n-3)]]` -/
def P13684274958715921445.Spec : Prop :=
  ∀ n, P13684274958715921445.a n = A077855 n

end A077855

/-! ## A077855.P105002406980397109

`record[-(a(n-3)+1-a(n-2))]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077855.P105002406980397109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  -(f1 (n - 3) + (1 - f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077855.P105002406980397109

namespace A077855

/-- `record[-(a(n-3)+1-a(n-2))]` -/
def P105002406980397109.Spec : Prop :=
  ∀ n, P105002406980397109.a n = A077855 n

end A077855

/-! ## A077855.P14483518782652853104

`∑[a(n-1)+a(n-2)+a(n-4)]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A077855.P14483518782652853104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077855.P14483518782652853104

namespace A077855

/-- `∑[a(n-1)+a(n-2)+a(n-4)]` -/
def P14483518782652853104.Spec : Prop :=
  ∀ n, (P14483518782652853104.a n : ℤ) = A077855 n

end A077855

/-! ## A077855.P2587217116645870752

`∑[record[A124745(n)]]`
-/

namespace A077855.P2587217116645870752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077855.P2587217116645870752

namespace A077855

/-- `∑[record[A124745(n)]]` -/
def P2587217116645870752.Spec : Prop :=
  ∀ n, P2587217116645870752.a n = A077855 n

end A077855

/-! ## A077855.P10293446476975217441

`∑[A005314(n+1)]`
-/

namespace A077855.P10293446476975217441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077855.P10293446476975217441

namespace A077855

/-- `∑[A005314(n+1)]` -/
def P10293446476975217441.Spec : Prop :=
  ∀ n, P10293446476975217441.a n = A077855 n

end A077855

/-! ## A077855.P8580137969321112127

`∑[abs(∑[A078065(n)])]`
-/

namespace A077855.P8580137969321112127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078065 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077855.P8580137969321112127

namespace A077855

/-- `∑[abs(∑[A078065(n)])]` -/
def P8580137969321112127.Spec : Prop :=
  ∀ n, P8580137969321112127.a n = A077855 n

end A077855

/-! ## A077855.P5040889103685149696

`A023434(2*(n+1))`
-/

namespace A077855.P5040889103685149696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (2 * (n + 1))

end

end A077855.P5040889103685149696

namespace A077855

/-- `A023434(2*(n+1))` -/
def P5040889103685149696.Spec : Prop :=
  ∀ n, P5040889103685149696.a n = A077855 n

end A077855

/-! ## A077855.P969541861184081756

`A007383(2*n+3)`
-/

namespace A077855.P969541861184081756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007383 (2 * n + 3)

end

end A077855.P969541861184081756

namespace A077855

/-- `A007383(2*n+3)` -/
def P969541861184081756.Spec : Prop :=
  ∀ n, P969541861184081756.a n = A077855 n

end A077855

/-! ## A077855.P8535313301466901847

`record[abs(1-A005251(n))]`
-/

namespace A077855.P8535313301466901847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A005251 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077855.P8535313301466901847

namespace A077855

/-- `record[abs(1-A005251(n))]` -/
def P8535313301466901847.Spec : Prop :=
  ∀ n, P8535313301466901847.a n = A077855 n

end A077855

/-! ## A077855.P9495865343094353678

`∑[∑[A005251(n+1)]]`
-/

namespace A077855.P9495865343094353678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077855.P9495865343094353678

namespace A077855

/-- `∑[∑[A005251(n+1)]]` -/
def P9495865343094353678.Spec : Prop :=
  ∀ n, P9495865343094353678.a n = A077855 n

end A077855

/-! ## A077855.P2295188755141140822

`∑[∑[A182097(2*n)]]`
-/

namespace A077855.P2295188755141140822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077855.P2295188755141140822

namespace A077855

/-- `∑[∑[A182097(2*n)]]` -/
def P2295188755141140822.Spec : Prop :=
  ∀ n, P2295188755141140822.a n = A077855 n

end A077855

/-! ## A077855.P3107069065221453980

`∑[record[A000931(2*n)]]`
-/

namespace A077855.P3107069065221453980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077855.P3107069065221453980

namespace A077855

/-- `∑[record[A000931(2*n)]]` -/
def P3107069065221453980.Spec : Prop :=
  ∀ n, P3107069065221453980.a n = A077855 n

end A077855

/-! ## A077855.P2387559515673084373

`∑[record[A078027(2*n)]]`
-/

namespace A077855.P2387559515673084373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077855.P2387559515673084373

namespace A077855

/-- `∑[record[A078027(2*n)]]` -/
def P2387559515673084373.Spec : Prop :=
  ∀ n, P2387559515673084373.a n = A077855 n

end A077855

/-! ## A077855.P17317048929358993398

`∑[A289692(n+1)+1]`
-/

namespace A077855.P17317048929358993398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289692 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077855.P17317048929358993398

namespace A077855

/-- `∑[A289692(n+1)+1]` -/
def P17317048929358993398.Spec : Prop :=
  ∀ n, P17317048929358993398.a n = A077855 n

end A077855

/-! ## A077855.P13487020146586968413

`∑[A134816(2*(n+1))]`
-/

namespace A077855.P13487020146586968413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077855.P13487020146586968413

namespace A077855

/-- `∑[A134816(2*(n+1))]` -/
def P13487020146586968413.Spec : Prop :=
  ∀ n, P13487020146586968413.a n = A077855 n

end A077855

/-! ## A077855.P2265848900932967868

`∑[A000931(2*(n+3))]`
-/

namespace A077855.P2265848900932967868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077855.P2265848900932967868

namespace A077855

/-- `∑[A000931(2*(n+3))]` -/
def P2265848900932967868.Spec : Prop :=
  ∀ n, P2265848900932967868.a n = A077855 n

end A077855

/-! ## A077855.P10976423901116757794

`∑[A232582(n+2)/2]`
-/

namespace A077855.P10976423901116757794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232582 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077855.P10976423901116757794

namespace A077855

/-- `∑[A232582(n+2)/2]` -/
def P10976423901116757794.Spec : Prop :=
  ∀ n, P10976423901116757794.a n = (A077855 n : ℚ)

end A077855

/-!
# A077856: Expansion of (1-x)^(-1)/(1-2*x+x^2+x^3).

The programs for A077856, the canonical program `A077856.P6493179780525416712` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077856 has offset 0).

The definition of A077856 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+3x^2-x^4))` (program `A077856.P6493179780525416712`, by `A077856.P6493179780525416712.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077856.P6493179780525416712

`ogf(1/(1-3x+3x^2-x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077856

/-- `ogf(1/(1-3x+3x^2-x^4))` -/
def P6493179780525416712.Spec : Prop :=
  ∀ n, P6493179780525416712.a n = A077856 n

theorem P6493179780525416712.correct : P6493179780525416712.Spec := by
  intro n
  simp only [A077856]

end A077856

/-! ## A077856.P17712720515742217277

`3*a(n-1)-3*a(n-2)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=9`
-/

namespace A077856.P17712720515742217277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 9] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 4)

end

end A077856.P17712720515742217277

namespace A077856

/-- `3*a(n-1)-3*a(n-2)+a(n-4)` -/
def P17712720515742217277.Spec : Prop :=
  ∀ n, P17712720515742217277.a n = A077856 n

end A077856

/-! ## A077856.P7404391760236566741

`∑[ogf(1/(1-2x+x^2+x^3))]`
-/

namespace A077856.P7404391760236566741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077856.P7404391760236566741

namespace A077856

/-- `∑[ogf(1/(1-2x+x^2+x^3))]` -/
def P7404391760236566741.Spec : Prop :=
  ∀ n, P7404391760236566741.a n = A077856 n

end A077856

/-! ## A077856.P14250907651633801786

`∑[2*a(n-1)-(a(n-2)+a(n-3))]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A077856.P14250907651633801786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  2 * f1 (n - 1) - (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077856.P14250907651633801786

namespace A077856

/-- `∑[2*a(n-1)-(a(n-2)+a(n-3))]` -/
def P14250907651633801786.Spec : Prop :=
  ∀ n, P14250907651633801786.a n = A077856 n

end A077856

/-! ## A077856.P7408750932790166580

`∑[∑[A078001(n)]]`
-/

namespace A077856.P7408750932790166580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077856.P7408750932790166580

namespace A077856

/-- `∑[∑[A078001(n)]]` -/
def P7408750932790166580.Spec : Prop :=
  ∀ n, P7408750932790166580.a n = A077856 n

end A077856

/-! ## A077856.P14407159776804241761

`1-A078001(n+3)`
-/

namespace A077856.P14407159776804241761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A078001 (n + 3)

end

end A077856.P14407159776804241761

namespace A077856

/-- `1-A078001(n+3)` -/
def P14407159776804241761.Spec : Prop :=
  ∀ n, P14407159776804241761.a n = A077856 n

end A077856

/-! ## A077856.P5707769489462312394

`∑[A033999(n)*A077990(n)]`
-/

namespace A077856.P5707769489462312394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077856.P5707769489462312394

namespace A077856

/-- `∑[A033999(n)*A077990(n)]` -/
def P5707769489462312394.Spec : Prop :=
  ∀ n, P5707769489462312394.a n = A077856 n

end A077856

/-! ## A077856.P10220125270875860733

`∑[A077941(n)]`
-/

namespace A077856.P10220125270875860733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077856.P10220125270875860733

namespace A077856

/-- `∑[A077941(n)]` -/
def P10220125270875860733.Spec : Prop :=
  ∀ n, P10220125270875860733.a n = A077856 n

end A077856

/-! ## A077856.P1793481181905002119

`∑[∑[A077961(2*n)*A087960(2*n)]]`
-/

namespace A077856.P1793481181905002119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 (2 * n) * A087960 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077856.P1793481181905002119

namespace A077856

/-- `∑[∑[A077961(2*n)*A087960(2*n)]]` -/
def P1793481181905002119.Spec : Prop :=
  ∀ n, P1793481181905002119.a n = A077856 n

end A077856

/-! ## A077856.P6507993821687627738

`1-Δ[A077941(n+2)]`
-/

namespace A077856.P6507993821687627738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077941 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A077856.P6507993821687627738

namespace A077856

/-- `1-Δ[A077941(n+2)]` -/
def P6507993821687627738.Spec : Prop :=
  ∀ n, P6507993821687627738.a n = A077856 n

end A077856

/-!
# A077857: Expansion of (1-x)^(-1)/(1-2*x+x^2+2*x^3).

The programs for A077857, the canonical program `A077857.P14592797355231714159` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077857 has offset 0).

The definition of A077857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+3x^2+x^3-2x^4))` (program `A077857.P14592797355231714159`, by `A077857.P14592797355231714159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077857.P14592797355231714159

`ogf(1/(1-3x+3x^2+x^3-2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077857

/-- `ogf(1/(1-3x+3x^2+x^3-2x^4))` -/
def P14592797355231714159.Spec : Prop :=
  ∀ n, P14592797355231714159.a n = A077857 n

theorem P14592797355231714159.correct : P14592797355231714159.Spec := by
  intro n
  simp only [A077857]

end A077857

/-! ## A077857.P14822301304327565598

`3*a(n-1)-3*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=8`
-/

namespace A077857.P14822301304327565598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 8] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) - a (n - 3) + 2 * a (n - 4)

end

end A077857.P14822301304327565598

namespace A077857

/-- `3*a(n-1)-3*a(n-2)-a(n-3)+2*a(n-4)` -/
def P14822301304327565598.Spec : Prop :=
  ∀ n, P14822301304327565598.a n = A077857 n

end A077857

/-! ## A077857.P13524811846478952078

`∑[ogf(1/(1-2x+x^2+2x^3))]`
-/

namespace A077857.P13524811846478952078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077857.P13524811846478952078

namespace A077857

/-- `∑[ogf(1/(1-2x+x^2+2x^3))]` -/
def P13524811846478952078.Spec : Prop :=
  ∀ n, P13524811846478952078.a n = A077857 n

end A077857

/-! ## A077857.P9142185396261912038

`∑[2*(a(n-1)-a(n-3))-a(n-2)]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A077857.P9142185396261912038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  2 * (f1 (n - 1) - f1 (n - 3)) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077857.P9142185396261912038

namespace A077857

/-- `∑[2*(a(n-1)-a(n-3))-a(n-2)]` -/
def P9142185396261912038.Spec : Prop :=
  ∀ n, P9142185396261912038.a n = A077857 n

end A077857

/-! ## A077857.P4761931203707036228

`∑[A077942(n)]`
-/

namespace A077857.P4761931203707036228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077857.P4761931203707036228

namespace A077857

/-- `∑[A077942(n)]` -/
def P4761931203707036228.Spec : Prop :=
  ∀ n, P4761931203707036228.a n = A077857 n

end A077857

/-! ## A077857.P15242550135554053573

`∑[∑[A078002(n)]]`
-/

namespace A077857.P15242550135554053573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078002 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077857.P15242550135554053573

namespace A077857

/-- `∑[∑[A078002(n)]]` -/
def P15242550135554053573.Spec : Prop :=
  ∀ n, P15242550135554053573.a n = A077857 n

end A077857

/-! ## A077857.P9139627069029006351

`(1-A078002(n+3))/2`
-/

namespace A077857.P9139627069029006351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A078002 (n + 3) : ℚ) / 2

end

end A077857.P9139627069029006351

namespace A077857

/-- `(1-A078002(n+3))/2` -/
def P9139627069029006351.Spec : Prop :=
  ∀ n, P9139627069029006351.a n = (A077857 n : ℚ)

end A077857

/-! ## A077857.P544490047466122729

`∑[A033999(n)*A077989(n)]`
-/

namespace A077857.P544490047466122729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077857.P544490047466122729

namespace A077857

/-- `∑[A033999(n)*A077989(n)]` -/
def P544490047466122729.Spec : Prop :=
  ∀ n, P544490047466122729.a n = A077857 n

end A077857

/-! ## A077857.P16357089255803535968

`∑[(A004442(n)-n)*A077989(n)]`
-/

namespace A077857.P16357089255803535968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A077989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077857.P16357089255803535968

namespace A077857

/-- `∑[(A004442(n)-n)*A077989(n)]` -/
def P16357089255803535968.Spec : Prop :=
  ∀ n, P16357089255803535968.a n = A077857 n

end A077857

/-!
# A077858: Expansion of (1-x)^(-1)/(1-2*x+2*x^2-2*x^3).

The programs for A077858, the canonical program `A077858.P2227526579522795421` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077858 has offset 0).

The definition of A077858 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+4x^2-4x^3+2x^4))` (program `A077858.P2227526579522795421`, by `A077858.P2227526579522795421.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077858.P2227526579522795421

`ogf(1/(1-3x+4x^2-4x^3+2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077858

/-- `ogf(1/(1-3x+4x^2-4x^3+2x^4))` -/
def P2227526579522795421.Spec : Prop :=
  ∀ n, P2227526579522795421.a n = A077858 n

theorem P2227526579522795421.correct : P2227526579522795421.Spec := by
  intro n
  simp only [A077858]

end A077858

/-! ## A077858.P4813935477954653720

`∑[a(n-1)+2*a(n-4)]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A077858.P4813935477954653720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 2] fun n f1 =>
  f1 (n - 1) + 2 * f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077858.P4813935477954653720

namespace A077858

/-- `∑[a(n-1)+2*a(n-4)]` -/
def P4813935477954653720.Spec : Prop :=
  ∀ n, (P4813935477954653720.a n : ℤ) = A077858 n

end A077858

/-! ## A077858.P1866494497316003212

`∑[a(n-4)+a(n-1)+a(n-4)]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A077858.P1866494497316003212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 2] fun n f1 =>
  f1 (n - 4) + (f1 (n - 1) + f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077858.P1866494497316003212

namespace A077858

/-- `∑[a(n-4)+a(n-1)+a(n-4)]` -/
def P1866494497316003212.Spec : Prop :=
  ∀ n, (P1866494497316003212.a n : ℤ) = A077858 n

end A077858

/-! ## A077858.P3972912753491496554

`∑[A077943(n)]`
-/

namespace A077858.P3972912753491496554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077858.P3972912753491496554

namespace A077858

/-- `∑[A077943(n)]` -/
def P3972912753491496554.Spec : Prop :=
  ∀ n, P3972912753491496554.a n = A077858 n

end A077858

/-! ## A077858.P2228235943632630314

`∑[abs(A077993(n))]`
-/

namespace A077858.P2228235943632630314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077993 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077858.P2228235943632630314

namespace A077858

/-- `∑[abs(A077993(n))]` -/
def P2228235943632630314.Spec : Prop :=
  ∀ n, P2228235943632630314.a n = A077858 n

end A077858

/-! ## A077858.P5570739479974885876

`∑[∑[A078003(n)]]`
-/

namespace A077858.P5570739479974885876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078003 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077858.P5570739479974885876

namespace A077858

/-- `∑[∑[A078003(n)]]` -/
def P5570739479974885876.Spec : Prop :=
  ∀ n, P5570739479974885876.a n = A077858 n

end A077858

/-! ## A077858.P951999320939661598

`A393995(n+1)-1`
-/

namespace A077858.P951999320939661598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393995 (n + 1) - 1

end

end A077858.P951999320939661598

namespace A077858

/-- `A393995(n+1)-1` -/
def P951999320939661598.Spec : Prop :=
  ∀ n, P951999320939661598.a n = A077858 n

end A077858

/-! ## A077858.P9638343442087777443

`∑[∑[A122788(n+1)]]`
-/

namespace A077858.P9638343442087777443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122788 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077858.P9638343442087777443

namespace A077858

/-- `∑[∑[A122788(n+1)]]` -/
def P9638343442087777443.Spec : Prop :=
  ∀ n, P9638343442087777443.a n = A077858 n

end A077858

/-! ## A077858.P1446794685375419222

`2*A104767(n+1)-1`
-/

namespace A077858.P1446794685375419222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104767 (n + 1) - 1

end

end A077858.P1446794685375419222

namespace A077858

/-- `2*A104767(n+1)-1` -/
def P1446794685375419222.Spec : Prop :=
  ∀ n, P1446794685375419222.a n = A077858 n

end A077858

/-! ## A077858.P12803934253213200782

`∑[abs(∑[A078071(n)])]`
-/

namespace A077858.P12803934253213200782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078071 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077858.P12803934253213200782

namespace A077858

/-- `∑[abs(∑[A078071(n)])]` -/
def P12803934253213200782.Spec : Prop :=
  ∀ n, P12803934253213200782.a n = A077858 n

end A077858

/-!
# A077859: Expansion of g.f. (1 - x)^(-1)/(1 - 2*x + 2*x^2 + x^3).

The programs for A077859, the canonical program `A077859.P12744319795152172013` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077859 has offset 0).

The definition of A077859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077859.P451401040108501241

`ogf(1/(1-3x+4x^2-3x^3+x^4))`
-/

namespace A077859.P451401040108501241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 4, -3, 1] n

end

end A077859.P451401040108501241

namespace A077859

/-- `ogf(1/(1-3x+4x^2-3x^3+x^4))` -/
def P451401040108501241.Spec : Prop :=
  ∀ n, P451401040108501241.a n = A077859 n

end A077859

/-! ## A077859.P12744319795152172013

`n+1+a(n-1)-a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077859

/-- `n+1+a(n-1)-a(n-2)` -/
def P12744319795152172013.Spec : Prop :=
  ∀ n, P12744319795152172013.a n = A077859 n

theorem P12744319795152172013.correct : P12744319795152172013.Spec := by
  intro n
  simp only [A077859]

end A077859

/-! ## A077859.P4595130674199785398

`n+2+A010892(n+4)`
-/

namespace A077859.P4595130674199785398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + A010892 (n + 4)

end

end A077859.P4595130674199785398

namespace A077859

/-- `n+2+A010892(n+4)` -/
def P4595130674199785398.Spec : Prop :=
  ∀ n, P4595130674199785398.a n = A077859 n

end A077859

/-! ## A077859.P2613017894352799745

`∑[floor(exp(sin(n%6)))]`
-/

namespace A077859.P2613017894352799745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.sin ((n % 6 : ℕ) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077859.P2613017894352799745

namespace A077859

/-- `∑[floor(exp(sin(n%6)))]` -/
def P2613017894352799745.Spec : Prop :=
  ∀ n, P2613017894352799745.a n = A077859 n

end A077859

/-! ## A077859.P10305773324018344257

`∑[∑[ogf(1/(1-x+x^2))]]`
-/

namespace A077859.P10305773324018344257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077859.P10305773324018344257

namespace A077859

/-- `∑[∑[ogf(1/(1-x+x^2))]]` -/
def P10305773324018344257.Spec : Prop :=
  ∀ n, P10305773324018344257.a n = A077859 n

end A077859

/-! ## A077859.P4054243719966766421

`∑[(gcd(n, ∑[n])+1)%3]`
-/

namespace A077859.P4054243719966766421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) + 1) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077859.P4054243719966766421

namespace A077859

/-- `∑[(gcd(n, ∑[n])+1)%3]` -/
def P4054243719966766421.Spec : Prop :=
  ∀ n, (P4054243719966766421.a n : ℤ) = A077859 n

end A077859

/-! ## A077859.P5522741322632988108

`∑[2-a(n-3)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A077859.P5522741322632988108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  2 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077859.P5522741322632988108

namespace A077859

/-- `∑[2-a(n-3)]` -/
def P5522741322632988108.Spec : Prop :=
  ∀ n, P5522741322632988108.a n = A077859 n

end A077859

/-! ## A077859.P9536009625331595968

`∑[round(cos((1-n)%6))]+n`
-/

namespace A077859.P9536009625331595968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (Int.tmod (1 - (n : ℤ)) 6 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A077859.P9536009625331595968

namespace A077859

/-- `∑[round(cos((1-n)%6))]+n` -/
def P9536009625331595968.Spec : Prop :=
  ∀ n, P9536009625331595968.a n = A077859 n

end A077859

/-! ## A077859.P4593503919016147208

`Δ[n²-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A077859.P4593503919016147208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  (n ^ 2 : ℤ) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077859.P4593503919016147208

namespace A077859

/-- `Δ[n²-a(n-3)]` -/
def P4593503919016147208.Spec : Prop :=
  ∀ n, P4593503919016147208.a n = A077859 n

end A077859

/-! ## A077859.P16926281573319215833

`round(n+2-cos((n+1)%6))`
-/

namespace A077859.P16926281573319215833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) - Real.cos (((n + 1) % 6 : ℕ) : ℝ))

end

end A077859.P16926281573319215833

namespace A077859

/-- `round(n+2-cos((n+1)%6))` -/
def P16926281573319215833.Spec : Prop :=
  ∀ n, P16926281573319215833.a n = A077859 n

end A077859

/-! ## A077859.P16209316202561472569

`round(sin((n-1)%6)+n+2)`
-/

namespace A077859.P16209316202561472569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Int.tmod ((n : ℤ) - 1) 6 : ℝ) + (n + 2 : ℝ))

end

end A077859.P16209316202561472569

namespace A077859

/-- `round(sin((n-1)%6)+n+2)` -/
def P16209316202561472569.Spec : Prop :=
  ∀ n, P16209316202561472569.a n = A077859 n

end A077859

/-! ## A077859.P3907227003866295138

`2*n+1-a(n-3)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A077859.P3907227003866295138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  (2 * n : ℤ) + (1 - a (n - 3))

end

end A077859.P3907227003866295138

namespace A077859

/-- `2*n+1-a(n-3)` -/
def P3907227003866295138.Spec : Prop :=
  ∀ n, P3907227003866295138.a n = A077859 n

end A077859

/-! ## A077859.P4650056255544685438

`1-(a(n-3)-2*n)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A077859.P4650056255544685438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  1 - (a (n - 3) - (2 * n : ℤ))

end

end A077859.P4650056255544685438

namespace A077859

/-- `1-(a(n-3)-2*n)` -/
def P4650056255544685438.Spec : Prop :=
  ∀ n, P4650056255544685438.a n = A077859 n

end A077859

/-! ## A077859.P10609507186999454729

`1-a(n-3)+n+n` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A077859.P10609507186999454729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  1 - a (n - 3) + (n : ℤ) + (n : ℤ)

end

end A077859.P10609507186999454729

namespace A077859

/-- `1-a(n-3)+n+n` -/
def P10609507186999454729.Spec : Prop :=
  ∀ n, P10609507186999454729.a n = A077859 n

end A077859

/-! ## A077859.P2468715878963890039

`1-(a(n-3)-n-n)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A077859.P2468715878963890039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  1 - (a (n - 3) - (n : ℤ) - (n : ℤ))

end

end A077859.P2468715878963890039

namespace A077859

/-- `1-(a(n-3)-n-n)` -/
def P2468715878963890039.Spec : Prop :=
  ∀ n, P2468715878963890039.a n = A077859 n

end A077859

/-! ## A077859.P10129787143328513121

`∑[∑[n+1-∑[n]%(n+1)]%3]`
-/

namespace A077859.P10129787143328513121
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1) : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077859.P10129787143328513121

namespace A077859

/-- `∑[∑[n+1-∑[n]%(n+1)]%3]` -/
def P10129787143328513121.Spec : Prop :=
  ∀ n, P10129787143328513121.a n = A077859 n

end A077859

/-! ## A077859.P9408772583585199170

`∑[A164965(n)]`
-/

namespace A077859.P9408772583585199170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077859.P9408772583585199170

namespace A077859

/-- `∑[A164965(n)]` -/
def P9408772583585199170.Spec : Prop :=
  ∀ n, P9408772583585199170.a n = A077859 n

end A077859

/-! ## A077859.P846351935954451951

`∑[∑[A010892(n)]]`
-/

namespace A077859.P846351935954451951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077859.P846351935954451951

namespace A077859

/-- `∑[∑[A010892(n)]]` -/
def P846351935954451951.Spec : Prop :=
  ∀ n, P846351935954451951.a n = A077859 n

end A077859

/-! ## A077859.P10299983564314019962

`∑[A128834(n)+1]`
-/

namespace A077859.P10299983564314019962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077859.P10299983564314019962

namespace A077859

/-- `∑[A128834(n)+1]` -/
def P10299983564314019962.Spec : Prop :=
  ∀ n, P10299983564314019962.a n = A077859 n

end A077859

/-! ## A077859.P10886711808681166519

`∑[A163806(n)]+n`
-/

namespace A077859.P10886711808681166519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A077859.P10886711808681166519

namespace A077859

/-- `∑[A163806(n)]+n` -/
def P10886711808681166519.Spec : Prop :=
  ∀ n, P10886711808681166519.a n = A077859 n

end A077859

/-!
# A077860: Expansion of 1/((1 - 2*x + 2*x^2)*(1-x)).

The programs for A077860, the canonical program `A077860.P14235584798553615257` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077860 has offset 0).

The definition of A077860 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+4x^2-2x^3))` (program `A077860.P14235584798553615257`, by `A077860.P14235584798553615257.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077860.P14235584798553615257

`ogf(1/(1-3x+4x^2-2x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077860

/-- `ogf(1/(1-3x+4x^2-2x^3))` -/
def P14235584798553615257.Spec : Prop :=
  ∀ n, P14235584798553615257.a n = A077860 n

theorem P14235584798553615257.correct : P14235584798553615257.Spec := by
  intro n
  simp only [A077860]

end A077860

/-! ## A077860.P9612953668617622724

`3*a(n-1)-4*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A077860.P9612953668617622724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 2 * a (n - 3)

end

end A077860.P9612953668617622724

namespace A077860

/-- `3*a(n-1)-4*a(n-2)+2*a(n-3)` -/
def P9612953668617622724.Spec : Prop :=
  ∀ n, P9612953668617622724.a n = A077860 n

end A077860

/-! ## A077860.P3258565286071854190

`1-A146559(n+2)`
-/

namespace A077860.P3258565286071854190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A146559 (n + 2)

end

end A077860.P3258565286071854190

namespace A077860

/-- `1-A146559(n+2)` -/
def P3258565286071854190.Spec : Prop :=
  ∀ n, P3258565286071854190.a n = A077860 n

end A077860

/-! ## A077860.P7981220848278718367

`∑{#}[floor(n/2), (-1)^#*C(n+2, 2*#+2)]`
-/

namespace A077860.P7981220848278718367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (Nat.choose (n + 2) (2 * k + 2) : ℤ)

end

end A077860.P7981220848278718367

namespace A077860

/-- `∑{#}[floor(n/2), (-1)^#*C(n+2, 2*#+2)]` -/
def P7981220848278718367.Spec : Prop :=
  ∀ n, P7981220848278718367.a n = A077860 n

end A077860

/-! ## A077860.P852741947759355831

`∑[ogf(1/(1-2x+2x^2))]`
-/

namespace A077860.P852741947759355831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077860.P852741947759355831

namespace A077860

/-- `∑[ogf(1/(1-2x+2x^2))]` -/
def P852741947759355831.Spec : Prop :=
  ∀ n, P852741947759355831.a n = A077860 n

end A077860

/-! ## A077860.P12873794008634660837

`5-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=5`
-/

namespace A077860.P12873794008634660837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 5] fun n a =>
  5 - 4 * a (n - 4)

end

end A077860.P12873794008634660837

namespace A077860

/-- `5-4*a(n-4)` -/
def P12873794008634660837.Spec : Prop :=
  ∀ n, P12873794008634660837.a n = A077860 n

end A077860

/-! ## A077860.P24951504034480445

`∑[a(n-1)-a(n-3)-a(n-3)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A077860.P24951504034480445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 1) - f1 (n - 3) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077860.P24951504034480445

namespace A077860

/-- `∑[a(n-1)-a(n-3)-a(n-3)]` -/
def P24951504034480445.Spec : Prop :=
  ∀ n, P24951504034480445.a n = A077860 n

end A077860

/-! ## A077860.P16462078191190024003

`a(n-1)+2-(a(n-3)+a(n-3))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A077860.P16462078191190024003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  a (n - 1) + (2 - (a (n - 3) + a (n - 3)))

end

end A077860.P16462078191190024003

namespace A077860

/-- `a(n-1)+2-(a(n-3)+a(n-3))` -/
def P16462078191190024003.Spec : Prop :=
  ∀ n, P16462078191190024003.a n = A077860 n

end A077860

/-! ## A077860.P2784702611054267865

`2-(a(n-3)-(a(n-1)-a(n-3)))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A077860.P2784702611054267865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  2 - (a (n - 3) - (a (n - 1) - a (n - 3)))

end

end A077860.P2784702611054267865

namespace A077860

/-- `2-(a(n-3)-(a(n-1)-a(n-3)))` -/
def P2784702611054267865.Spec : Prop :=
  ∀ n, P2784702611054267865.a n = A077860 n

end A077860

/-! ## A077860.P719645849426004309

`∑[A099087(n)]`
-/

namespace A077860.P719645849426004309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077860.P719645849426004309

namespace A077860

/-- `∑[A099087(n)]` -/
def P719645849426004309.Spec : Prop :=
  ∀ n, P719645849426004309.a n = A077860 n

end A077860

/-! ## A077860.P8317973258519784481

`∑[∑[A146559(n)]]`
-/

namespace A077860.P8317973258519784481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077860.P8317973258519784481

namespace A077860

/-- `∑[∑[A146559(n)]]` -/
def P8317973258519784481.Spec : Prop :=
  ∀ n, P8317973258519784481.a n = A077860 n

end A077860

/-! ## A077860.P13112632183553817825

`∑[A009545(n+1)]`
-/

namespace A077860.P13112632183553817825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077860.P13112632183553817825

namespace A077860

/-- `∑[A009545(n+1)]` -/
def P13112632183553817825.Spec : Prop :=
  ∀ n, P13112632183553817825.a n = A077860 n

end A077860

/-! ## A077860.P9193061528974809468

`2*A009545(n)+1`
-/

namespace A077860.P9193061528974809468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009545 n + 1

end

end A077860.P9193061528974809468

namespace A077860

/-- `2*A009545(n)+1` -/
def P9193061528974809468.Spec : Prop :=
  ∀ n, P9193061528974809468.a n = A077860 n

end A077860

/-! ## A077860.P10239826420783473777

`or(1, A106664(n+1))`
-/

namespace A077860.P10239826420783473777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A106664 (n + 1))

end

end A077860.P10239826420783473777

namespace A077860

/-- `or(1, A106664(n+1))` -/
def P10239826420783473777.Spec : Prop :=
  ∀ n, P10239826420783473777.a n = A077860 n

end A077860

/-! ## A077860.P2289226675116324317

`1-Δ[A099087(n+1)]`
-/

namespace A077860.P2289226675116324317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A077860.P2289226675116324317

namespace A077860

/-- `1-Δ[A099087(n+1)]` -/
def P2289226675116324317.Spec : Prop :=
  ∀ n, P2289226675116324317.a n = A077860 n

end A077860

/-! ## A077860.P7617220033703691470

`1-Δ[A009545(n+2)]`
-/

namespace A077860.P7617220033703691470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A077860.P7617220033703691470

namespace A077860

/-- `1-Δ[A009545(n+2)]` -/
def P7617220033703691470.Spec : Prop :=
  ∀ n, P7617220033703691470.a n = A077860 n

end A077860

/-! ## A077860.P1577131863487130942

`(∑[A132723(n)]-1)/2`
-/

namespace A077860.P1577131863487130942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132723 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A077860.P1577131863487130942

namespace A077860

/-- `(∑[A132723(n)]-1)/2` -/
def P1577131863487130942.Spec : Prop :=
  ∀ n, P1577131863487130942.a n = (A077860 n : ℚ)

end A077860

/-! ## A077860.P16759632720219587720

`1-A099087(n+3)/2`
-/

namespace A077860.P16759632720219587720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A099087 (n + 3) : ℚ) / 2

end

end A077860.P16759632720219587720

namespace A077860

/-- `1-A099087(n+3)/2` -/
def P16759632720219587720.Spec : Prop :=
  ∀ n, P16759632720219587720.a n = (A077860 n : ℚ)

end A077860

/-! ## A077860.P1316077548145839842

`(A279230(n+1)-(n+2))/2`
-/

namespace A077860.P1316077548145839842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279230 (n + 1) - (n + 2 : ℤ) : ℚ) / 2

end

end A077860.P1316077548145839842

namespace A077860

/-- `(A279230(n+1)-(n+2))/2` -/
def P1316077548145839842.Spec : Prop :=
  ∀ n, P1316077548145839842.a n = (A077860 n : ℚ)

end A077860

/-! ## A077860.P14545491097519412569

`2*A099087(A263313(n))+1`
-/

namespace A077860.P14545491097519412569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099087 (A263313 n).toNat + 1

end

end A077860.P14545491097519412569

namespace A077860

/-- `2*A099087(A263313(n))+1` -/
def P14545491097519412569.Spec : Prop :=
  ∀ n, P14545491097519412569.a n = A077860 n

end A077860

/-!
# A077861: Expansion of (1-x)^(-1)/(1-2*x+2*x^2+x^3).

The programs for A077861, the canonical program `A077861.P12671436087209452969` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077861 has offset 0).

The definition of A077861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+4x^2-x^3-x^4))` (program `A077861.P12671436087209452969`, by `A077861.P12671436087209452969.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077861.P12671436087209452969

`ogf(1/(1-3x+4x^2-x^3-x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077861

/-- `ogf(1/(1-3x+4x^2-x^3-x^4))` -/
def P12671436087209452969.Spec : Prop :=
  ∀ n, P12671436087209452969.a n = A077861 n

theorem P12671436087209452969.correct : P12671436087209452969.Spec := by
  intro n
  simp only [A077861]

end A077861

/-! ## A077861.P14491460877393510405

`∑[ogf(1/(1-2x+2x^2+x^3))]`
-/

namespace A077861.P14491460877393510405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077861.P14491460877393510405

namespace A077861

/-- `∑[ogf(1/(1-2x+2x^2+x^3))]` -/
def P14491460877393510405.Spec : Prop :=
  ∀ n, P14491460877393510405.a n = A077861 n

end A077861

/-! ## A077861.P15004342875623027122

`∑[2*(a(n-1)-a(n-2))-a(n-3)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A077861.P15004342875623027122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  2 * (f1 (n - 1) - f1 (n - 2)) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077861.P15004342875623027122

namespace A077861

/-- `∑[2*(a(n-1)-a(n-2))-a(n-3)]` -/
def P15004342875623027122.Spec : Prop :=
  ∀ n, P15004342875623027122.a n = A077861 n

end A077861

/-! ## A077861.P1726667908418868673

`∑[A077944(n)]`
-/

namespace A077861.P1726667908418868673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077861.P1726667908418868673

namespace A077861

/-- `∑[A077944(n)]` -/
def P1726667908418868673.Spec : Prop :=
  ∀ n, P1726667908418868673.a n = A077861 n

end A077861

/-! ## A077861.P14644769855440888564

`∑[∑[A078004(n)]]`
-/

namespace A077861.P14644769855440888564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078004 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077861.P14644769855440888564

namespace A077861

/-- `∑[∑[A078004(n)]]` -/
def P14644769855440888564.Spec : Prop :=
  ∀ n, P14644769855440888564.a n = A077861 n

end A077861

/-! ## A077861.P5426829599590978962

`∑[A033999(n)*A077992(n)]`
-/

namespace A077861.P5426829599590978962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077861.P5426829599590978962

namespace A077861

/-- `∑[A033999(n)*A077992(n)]` -/
def P5426829599590978962.Spec : Prop :=
  ∀ n, P5426829599590978962.a n = A077861 n

end A077861

/-! ## A077861.P7349531705714307155

`∑[(A004442(n)-n)*A077992(n)]`
-/

namespace A077861.P7349531705714307155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A077992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077861.P7349531705714307155

namespace A077861

/-- `∑[(A004442(n)-n)*A077992(n)]` -/
def P7349531705714307155.Spec : Prop :=
  ∀ n, P7349531705714307155.a n = A077861 n

end A077861

/-!
# A077862: Expansion of (1-x)^(-1)/(1-2*x+2*x^2+2*x^3).

The programs for A077862, the canonical program `A077862.P5606679810254985731` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077862 has offset 0).

The definition of A077862 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+4x^2-2x^4))` (program `A077862.P5606679810254985731`, by `A077862.P5606679810254985731.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077862.P5606679810254985731

`ogf(1/(1-3x+4x^2-2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077862

/-- `ogf(1/(1-3x+4x^2-2x^4))` -/
def P5606679810254985731.Spec : Prop :=
  ∀ n, P5606679810254985731.a n = A077862 n

theorem P5606679810254985731.correct : P5606679810254985731.Spec := by
  intro n
  simp only [A077862]

end A077862

/-! ## A077862.P11572508186700233683

`∑[ogf(1/(1-2x+2x^2+2x^3))]`
-/

namespace A077862.P11572508186700233683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 2, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077862.P11572508186700233683

namespace A077862

/-- `∑[ogf(1/(1-2x+2x^2+2x^3))]` -/
def P11572508186700233683.Spec : Prop :=
  ∀ n, P11572508186700233683.a n = A077862 n

end A077862

/-! ## A077862.P10726218516625935090

`∑[2*(a(n-1)-(a(n-2)+a(n-3)))]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A077862.P10726218516625935090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  2 * (f1 (n - 1) - (f1 (n - 2) + f1 (n - 3)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077862.P10726218516625935090

namespace A077862

/-- `∑[2*(a(n-1)-(a(n-2)+a(n-3)))]` -/
def P10726218516625935090.Spec : Prop :=
  ∀ n, P10726218516625935090.a n = A077862 n

end A077862

/-! ## A077862.P4414978750689382965

`∑[∑[A078005(n)]]`
-/

namespace A077862.P4414978750689382965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078005 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077862.P4414978750689382965

namespace A077862

/-- `∑[∑[A078005(n)]]` -/
def P4414978750689382965.Spec : Prop :=
  ∀ n, P4414978750689382965.a n = A077862 n

end A077862

/-! ## A077862.P2121389033278743914

`∑[(-1)^n*A077991(n)]`
-/

namespace A077862.P2121389033278743914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077862.P2121389033278743914

namespace A077862

/-- `∑[(-1)^n*A077991(n)]` -/
def P2121389033278743914.Spec : Prop :=
  ∀ n, P2121389033278743914.a n = A077862 n

end A077862

/-! ## A077862.P1914384580271106372

`∑[A077991(n)/A034947(2*n+1)]`
-/

namespace A077862.P1914384580271106372
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077991 n : ℚ) / (A034947 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077862.P1914384580271106372

namespace A077862

/-- `∑[A077991(n)/A034947(2*n+1)]` -/
def P1914384580271106372.Spec : Prop :=
  ∀ n, P1914384580271106372.a n = (A077862 n : ℚ)

end A077862

/-! ## A077862.P8405827410331090828

`∑[A077945(n)]`
-/

namespace A077862.P8405827410331090828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077862.P8405827410331090828

namespace A077862

/-- `∑[A077945(n)]` -/
def P8405827410331090828.Spec : Prop :=
  ∀ n, P8405827410331090828.a n = A077862 n

end A077862

/-! ## A077862.P2160907285608085320

`∑[∑[A078067(n)]*A033999(n)]`
-/

namespace A077862.P2160907285608085320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078067 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077862.P2160907285608085320

namespace A077862

/-- `∑[∑[A078067(n)]*A033999(n)]` -/
def P2160907285608085320.Spec : Prop :=
  ∀ n, P2160907285608085320.a n = A077862 n

end A077862

/-!
# A077863: Expansion of (1-x)^(-1)/(1-x-2*x^2-2*x^3).

The programs for A077863, the canonical program `A077863.P3948642843487440839` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077863 has offset 0).

The definition of A077863 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^2+2x^4))` (program `A077863.P3948642843487440839`, by `A077863.P3948642843487440839.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077863.P3948642843487440839

`ogf(1/(1-2x-x^2+2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077863

/-- `ogf(1/(1-2x-x^2+2x^4))` -/
def P3948642843487440839.Spec : Prop :=
  ∀ n, P3948642843487440839.a n = A077863 n

theorem P3948642843487440839.correct : P3948642843487440839.Spec := by
  intro n
  simp only [A077863]

end A077863

/-! ## A077863.P12963618083092969687

`a(n-1)+2*a(n-2)+2*a(n-3)+1` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A077863.P12963618083092969687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + 2 * a (n - 2) + 2 * a (n - 3) + 1

end

end A077863.P12963618083092969687

namespace A077863

/-- `a(n-1)+2*a(n-2)+2*a(n-3)+1` -/
def P12963618083092969687.Spec : Prop :=
  ∀ n, (P12963618083092969687.a n : ℤ) = A077863 n

end A077863

/-! ## A077863.P17147694783079095567

`∑[a(n-1)+2*(a(n-2)+a(n-3))]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A077863.P17147694783079095567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 (n - 1) + 2 * (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077863.P17147694783079095567

namespace A077863

/-- `∑[a(n-1)+2*(a(n-2)+a(n-3))]` -/
def P17147694783079095567.Spec : Prop :=
  ∀ n, (P17147694783079095567.a n : ℤ) = A077863 n

end A077863

/-! ## A077863.P12599331536848057543

`∑[A077946(n)]`
-/

namespace A077863.P12599331536848057543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077863.P12599331536848057543

namespace A077863

/-- `∑[A077946(n)]` -/
def P12599331536848057543.Spec : Prop :=
  ∀ n, P12599331536848057543.a n = A077863 n

end A077863

/-! ## A077863.P10701407837073474079

`∑[abs(A077970(n))]`
-/

namespace A077863.P10701407837073474079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077970 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077863.P10701407837073474079

namespace A077863

/-- `∑[abs(A077970(n))]` -/
def P10701407837073474079.Spec : Prop :=
  ∀ n, P10701407837073474079.a n = A077863 n

end A077863

/-! ## A077863.P14970753181113918330

`∑[∑[A078006(n)]]`
-/

namespace A077863.P14970753181113918330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077863.P14970753181113918330

namespace A077863

/-- `∑[∑[A078006(n)]]` -/
def P14970753181113918330.Spec : Prop :=
  ∀ n, P14970753181113918330.a n = A077863 n

end A077863

/-! ## A077863.P14767987441891716379

`∑[abs(∑[A078040(n)])]`
-/

namespace A077863.P14767987441891716379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077863.P14767987441891716379

namespace A077863

/-- `∑[abs(∑[A078040(n)])]` -/
def P14767987441891716379.Spec : Prop :=
  ∀ n, P14767987441891716379.a n = A077863 n

end A077863

/-!
# A077864: Expansion of (1-x)^(-1)/(1-x-2*x^2-x^3).

The programs for A077864, the canonical program `A077864.P13407159077948401681` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077864 has offset 0).

The definition of A077864 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^2+x^3+x^4))` (program `A077864.P13407159077948401681`, by `A077864.P13407159077948401681.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077864.P13407159077948401681

`ogf(1/(1-2x-x^2+x^3+x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077864

/-- `ogf(1/(1-2x-x^2+x^3+x^4))` -/
def P13407159077948401681.Spec : Prop :=
  ∀ n, P13407159077948401681.a n = A077864 n

theorem P13407159077948401681.correct : P13407159077948401681.Spec := by
  intro n
  simp only [A077864]

end A077864

/-! ## A077864.P16722332475396594310

`2*a(n-1)+a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=11`
-/

namespace A077864.P16722332475396594310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 11] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 3) - a (n - 4)

end

end A077864.P16722332475396594310

namespace A077864

/-- `2*a(n-1)+a(n-2)-a(n-3)-a(n-4)` -/
def P16722332475396594310.Spec : Prop :=
  ∀ n, P16722332475396594310.a n = A077864 n

end A077864

/-! ## A077864.P10794373548070396161

`∑[2*a(n-2)+a(n-1)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A077864.P10794373548070396161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  2 * f1 (n - 2) + (f1 (n - 1) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077864.P10794373548070396161

namespace A077864

/-- `∑[2*a(n-2)+a(n-1)+a(n-3)]` -/
def P10794373548070396161.Spec : Prop :=
  ∀ n, (P10794373548070396161.a n : ℤ) = A077864 n

end A077864

/-! ## A077864.P2425549471376557987

`2*a(n-2)+a(n-1)+a(n-3)+1` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A077864.P2425549471376557987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * a (n - 2) + (a (n - 1) + a (n - 3)) + 1

end

end A077864.P2425549471376557987

namespace A077864

/-- `2*a(n-2)+a(n-1)+a(n-3)+1` -/
def P2425549471376557987.Spec : Prop :=
  ∀ n, (P2425549471376557987.a n : ℤ) = A077864 n

end A077864

/-! ## A077864.P1598780701217718769

`∑[A002478(n)]`
-/

namespace A077864.P1598780701217718769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077864.P1598780701217718769

namespace A077864

/-- `∑[A002478(n)]` -/
def P1598780701217718769.Spec : Prop :=
  ∀ n, P1598780701217718769.a n = A077864 n

end A077864

/-! ## A077864.P11927972139769036624

`A023435(Δ[n²])`
-/

namespace A077864.P11927972139769036624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077864.P11927972139769036624

namespace A077864

/-- `A023435(Δ[n²])` -/
def P11927972139769036624.Spec : Prop :=
  ∀ n, P11927972139769036624.a n = A077864 n

end A077864

/-! ## A077864.P17695826746320676302

`∑[∑[A078007(n)]]`
-/

namespace A077864.P17695826746320676302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078007 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077864.P17695826746320676302

namespace A077864

/-- `∑[∑[A078007(n)]]` -/
def P17695826746320676302.Spec : Prop :=
  ∀ n, P17695826746320676302.a n = A077864 n

end A077864

/-! ## A077864.P4935514625936894326

`∑[A000930(2*n)]`
-/

namespace A077864.P4935514625936894326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077864.P4935514625936894326

namespace A077864

/-- `∑[A000930(2*n)]` -/
def P4935514625936894326.Spec : Prop :=
  ∀ n, P4935514625936894326.a n = A077864 n

end A077864

/-! ## A077864.P14308950723207220803

`∑[A199804(2*n)]`
-/

namespace A077864.P14308950723207220803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199804 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077864.P14308950723207220803

namespace A077864

/-- `∑[A199804(2*n)]` -/
def P14308950723207220803.Spec : Prop :=
  ∀ n, P14308950723207220803.a n = A077864 n

end A077864

/-! ## A077864.P5121610234200335074

`∑[A109532(3*n)]`
-/

namespace A077864.P5121610234200335074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109532 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077864.P5121610234200335074

namespace A077864

/-- `∑[A109532(3*n)]` -/
def P5121610234200335074.Spec : Prop :=
  ∀ n, P5121610234200335074.a n = A077864 n

end A077864

/-! ## A077864.P969974992448883436

`∑[A108104(4*n)]`
-/

namespace A077864.P969974992448883436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077864.P969974992448883436

namespace A077864

/-- `∑[A108104(4*n)]` -/
def P969974992448883436.Spec : Prop :=
  ∀ n, P969974992448883436.a n = A077864 n

end A077864

/-! ## A077864.P12895914503530451253

`∑[abs(∑[A078039(n)])]`
-/

namespace A077864.P12895914503530451253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078039 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077864.P12895914503530451253

namespace A077864

/-- `∑[abs(∑[A078039(n)])]` -/
def P12895914503530451253.Spec : Prop :=
  ∀ n, P12895914503530451253.a n = A077864 n

end A077864

/-! ## A077864.P2599692779668209681

`A192805(n+3)-1`
-/

namespace A077864.P2599692779668209681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192805 (n + 3) - 1

end

end A077864.P2599692779668209681

namespace A077864

/-- `A192805(n+3)-1` -/
def P2599692779668209681.Spec : Prop :=
  ∀ n, P2599692779668209681.a n = A077864 n

end A077864

/-! ## A077864.P576767433188178598

`A013979(2*n+3)`
-/

namespace A077864.P576767433188178598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (2 * n + 3)

end

end A077864.P576767433188178598

namespace A077864

/-- `A013979(2*n+3)` -/
def P576767433188178598.Spec : Prop :=
  ∀ n, P576767433188178598.a n = A077864 n

end A077864

/-! ## A077864.P5105635412926328954

`A107458(2*n+7)`
-/

namespace A077864.P5105635412926328954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (2 * n + 7)

end

end A077864.P5105635412926328954

namespace A077864

/-- `A107458(2*n+7)` -/
def P5105635412926328954.Spec : Prop :=
  ∀ n, P5105635412926328954.a n = A077864 n

end A077864

/-! ## A077864.P5769360522255262897

`∑[∑[A058278(2*n)]]`
-/

namespace A077864.P5769360522255262897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077864.P5769360522255262897

namespace A077864

/-- `∑[∑[A058278(2*n)]]` -/
def P5769360522255262897.Spec : Prop :=
  ∀ n, P5769360522255262897.a n = A077864 n

end A077864

/-! ## A077864.P18350107982286118280

`∑[A109531(3*n+1)]`
-/

namespace A077864.P18350107982286118280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109531 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077864.P18350107982286118280

namespace A077864

/-- `∑[A109531(3*n+1)]` -/
def P18350107982286118280.Spec : Prop :=
  ∀ n, P18350107982286118280.a n = A077864 n

end A077864

/-! ## A077864.P17593840114480155938

`∑[A078012(2*n+3)]`
-/

namespace A077864.P17593840114480155938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077864.P17593840114480155938

namespace A077864

/-- `∑[A078012(2*n+3)]` -/
def P17593840114480155938.Spec : Prop :=
  ∀ n, P17593840114480155938.a n = A077864 n

end A077864

/-! ## A077864.P17941566544886319952

`A167704(2*(n+1))-1`
-/

namespace A077864.P17941566544886319952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167704 (2 * (n + 1)) - 1

end

end A077864.P17941566544886319952

namespace A077864

/-- `A167704(2*(n+1))-1` -/
def P17941566544886319952.Spec : Prop :=
  ∀ n, P17941566544886319952.a n = A077864 n

end A077864

/-! ## A077864.P14522777954171955282

`A101399(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A077864.P14522777954171955282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A101399 n + a (n - 3)

end

end A077864.P14522777954171955282

namespace A077864

/-- `A101399(n)+a(n-3)` -/
def P14522777954171955282.Spec : Prop :=
  ∀ n, P14522777954171955282.a n = A077864 n

end A077864

/-!
# A077865: Expansion of (1-x)^(-1)/(1-x-2*x^2+x^3).

The programs for A077865, the canonical program `A077865.P17720050545822498486` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077865 has offset 0).

The definition of A077865 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^2+3x^3-x^4))` (program `A077865.P17720050545822498486`, by `A077865.P17720050545822498486.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077865.P17720050545822498486

`ogf(1/(1-2x-x^2+3x^3-x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077865

/-- `ogf(1/(1-2x-x^2+3x^3-x^4))` -/
def P17720050545822498486.Spec : Prop :=
  ∀ n, P17720050545822498486.a n = A077865 n

theorem P17720050545822498486.correct : P17720050545822498486.Spec := by
  intro n
  simp only [A077865]

end A077865

/-! ## A077865.P17612285272720901348

`a(n-1)+2*a(n-2)-a(n-3)+1` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A077865.P17612285272720901348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + 2 * a (n - 2) - a (n - 3) + 1

end

end A077865.P17612285272720901348

namespace A077865

/-- `a(n-1)+2*a(n-2)-a(n-3)+1` -/
def P17612285272720901348.Spec : Prop :=
  ∀ n, P17612285272720901348.a n = A077865 n

end A077865

/-! ## A077865.P11249204014367055167

`∑[ogf(1/(1-x-2x^2+x^3))]`
-/

namespace A077865.P11249204014367055167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077865.P11249204014367055167

namespace A077865

/-- `∑[ogf(1/(1-x-2x^2+x^3))]` -/
def P11249204014367055167.Spec : Prop :=
  ∀ n, P11249204014367055167.a n = A077865 n

end A077865

/-! ## A077865.P15501477916210552015

`∑[∑[A052547(n)]]`
-/

namespace A077865.P15501477916210552015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077865.P15501477916210552015

namespace A077865

/-- `∑[∑[A052547(n)]]` -/
def P15501477916210552015.Spec : Prop :=
  ∀ n, P15501477916210552015.a n = A077865 n

end A077865

/-! ## A077865.P5005245871790297016

`∑[A006053(n+2)]`
-/

namespace A077865.P5005245871790297016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077865.P5005245871790297016

namespace A077865

/-- `∑[A006053(n+2)]` -/
def P5005245871790297016.Spec : Prop :=
  ∀ n, P5005245871790297016.a n = A077865 n

end A077865

/-! ## A077865.P8192563024064249678

`A028495(n+2)-1`
-/

namespace A077865.P8192563024064249678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (n + 2) - 1

end

end A077865.P8192563024064249678

namespace A077865

/-- `A028495(n+2)-1` -/
def P8192563024064249678.Spec : Prop :=
  ∀ n, P8192563024064249678.a n = A077865 n

end A077865

/-! ## A077865.P6291580670812237036

`∑[∑[A096976(n+2)]]`
-/

namespace A077865.P6291580670812237036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077865.P6291580670812237036

namespace A077865

/-- `∑[∑[A096976(n+2)]]` -/
def P6291580670812237036.Spec : Prop :=
  ∀ n, P6291580670812237036.a n = A077865 n

end A077865

/-! ## A077865.P3079921792459696094

`∑[∑[A187066(2*n)]]`
-/

namespace A077865.P3079921792459696094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077865.P3079921792459696094

namespace A077865

/-- `∑[∑[A187066(2*n)]]` -/
def P3079921792459696094.Spec : Prop :=
  ∀ n, P3079921792459696094.a n = A077865 n

end A077865

/-! ## A077865.P17599020771369019012

`∑[A187067(2*(n+1))]`
-/

namespace A077865.P17599020771369019012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077865.P17599020771369019012

namespace A077865

/-- `∑[A187067(2*(n+1))]` -/
def P17599020771369019012.Spec : Prop :=
  ∀ n, P17599020771369019012.a n = A077865 n

end A077865

/-! ## A077865.P18271330901128771023

`∑[A265755(2*(n+2))]`
-/

namespace A077865.P18271330901128771023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077865.P18271330901128771023

namespace A077865

/-- `∑[A265755(2*(n+2))]` -/
def P18271330901128771023.Spec : Prop :=
  ∀ n, P18271330901128771023.a n = A077865 n

end A077865

/-! ## A077865.P4765904903974533862

`∑[A187066(n+3+n)]`
-/

namespace A077865.P4765904903974533862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (n + 3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077865.P4765904903974533862

namespace A077865

/-- `∑[A187066(n+3+n)]` -/
def P4765904903974533862.Spec : Prop :=
  ∀ n, P4765904903974533862.a n = A077865 n

end A077865

/-! ## A077865.P12147596507488877011

`∑[abs(Δ[A028495(n+1)])]`
-/

namespace A077865.P12147596507488877011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077865.P12147596507488877011

namespace A077865

/-- `∑[abs(Δ[A028495(n+1)])]` -/
def P12147596507488877011.Spec : Prop :=
  ∀ n, P12147596507488877011.a n = A077865 n

end A077865

/-! ## A077865.P18250968122417834481

`A187067(2*n+5)-1`
-/

namespace A077865.P18250968122417834481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (2 * n + 5) - 1

end

end A077865.P18250968122417834481

namespace A077865

/-- `A187067(2*n+5)-1` -/
def P18250968122417834481.Spec : Prop :=
  ∀ n, P18250968122417834481.a n = A077865 n

end A077865

/-! ## A077865.P1333804758420267606

`∑[A000035(2*n)+Δ[A028495(n+1)]]`
-/

namespace A077865.P1333804758420267606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077865.P1333804758420267606

namespace A077865

/-- `∑[A000035(2*n)+Δ[A028495(n+1)]]` -/
def P1333804758420267606.Spec : Prop :=
  ∀ n, P1333804758420267606.a n = A077865 n

end A077865

/-! ## A077865.P4555498264721728756

`∑[Δ[A028495(n+1)]*A000034(2*n)]`
-/

namespace A077865.P4555498264721728756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000034 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077865.P4555498264721728756

namespace A077865

/-- `∑[Δ[A028495(n+1)]*A000034(2*n)]` -/
def P4555498264721728756.Spec : Prop :=
  ∀ n, P4555498264721728756.a n = A077865 n

end A077865

/-! ## A077865.P10425985984833769199

`A276055(2*n+1)+A276055(2*n)-1`
-/

namespace A077865.P10425985984833769199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276055 (2 * n + 1) + (A276055 (2 * n) - 1)

end

end A077865.P10425985984833769199

namespace A077865

/-- `A276055(2*n+1)+A276055(2*n)-1` -/
def P10425985984833769199.Spec : Prop :=
  ∀ n, P10425985984833769199.a n = A077865 n

end A077865

/-! ## A077865.P8028631645916594053

`Δ[A287381(n)]-1`
-/

namespace A077865.P8028631645916594053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A077865.P8028631645916594053

namespace A077865

/-- `Δ[A287381(n)]-1` -/
def P8028631645916594053.Spec : Prop :=
  ∀ n, P8028631645916594053.a n = A077865 n

end A077865

/-! ## A077865.P15583465472695138230

`A276055(2*n+5)-1`
-/

namespace A077865.P15583465472695138230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276055 (2 * n + 5) - 1

end

end A077865.P15583465472695138230

namespace A077865

/-- `A276055(2*n+5)-1` -/
def P15583465472695138230.Spec : Prop :=
  ∀ n, P15583465472695138230.a n = A077865 n

end A077865

/-! ## A077865.P10614891830956428494

`∑[abs(∑[A078038(n)])]`
-/

namespace A077865.P10614891830956428494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078038 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077865.P10614891830956428494

namespace A077865

/-- `∑[abs(∑[A078038(n)])]` -/
def P10614891830956428494.Spec : Prop :=
  ∀ n, P10614891830956428494.a n = A077865 n

end A077865

/-! ## A077865.P11797678268582332950

`∑[A208153(∑[n])]`
-/

namespace A077865.P11797678268582332950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208153 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077865.P11797678268582332950

namespace A077865

/-- `∑[A208153(∑[n])]` -/
def P11797678268582332950.Spec : Prop :=
  ∀ n, P11797678268582332950.a n = A077865 n

end A077865

/-!
# A077866: Expansion of (1-x)^(-1)/(1 - x - 2*x^2 + 2*x^3).

The programs for A077866, the canonical program `A077866.P3546548597162859151` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077866 has offset 0).

The definition of A077866 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^2+4x^3-2x^4))` (program `A077866.P3546548597162859151`, by `A077866.P3546548597162859151.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077866.P7930024604892705192

`2^(n/2)*(3+2*sqrt(2)+(3-2*sqrt(2))*(-1)^n)-n-5`
-/

namespace A077866.P7930024604892705192
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * (3 + 2 * Real.sqrt (2 : ℝ) + (3 - 2 * Real.sqrt (2 : ℝ)) * ((-1) ^ n : ℝ)) - (n : ℝ) - 5

end

end A077866.P7930024604892705192

namespace A077866

/-- `2^(n/2)*(3+2*sqrt(2)+(3-2*sqrt(2))*(-1)^n)-n-5` -/
def P7930024604892705192.Spec : Prop :=
  ∀ n, P7930024604892705192.a n = (A077866 n : ℝ)

end A077866

/-! ## A077866.P3546548597162859151

`ogf(1/(1-2x-x^2+4x^3-2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077866

/-- `ogf(1/(1-2x-x^2+4x^3-2x^4))` -/
def P3546548597162859151.Spec : Prop :=
  ∀ n, P3546548597162859151.a n = A077866 n

theorem P3546548597162859151.correct : P3546548597162859151.Spec := by
  intro n
  simp only [A077866]

end A077866

/-! ## A077866.P8927615470208565009

`∑[∏[gcd(2, n)]-1]`
-/

namespace A077866.P8927615470208565009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077866.P8927615470208565009

namespace A077866

/-- `∑[∏[gcd(2, n)]-1]` -/
def P8927615470208565009.Spec : Prop :=
  ∀ n, P8927615470208565009.a n = A077866 n

end A077866

/-! ## A077866.P12766550164465311053

`∑[∑[ogf(1/(1-2x^2))]]`
-/

namespace A077866.P12766550164465311053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -2] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077866.P12766550164465311053

namespace A077866

/-- `∑[∑[ogf(1/(1-2x^2))]]` -/
def P12766550164465311053.Spec : Prop :=
  ∀ n, P12766550164465311053.a n = A077866 n

end A077866

/-! ## A077866.P8678012571279538963

`∑[∏[2-and(1, n)]-1]`
-/

namespace A077866.P8678012571279538963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077866.P8678012571279538963

namespace A077866

/-- `∑[∏[2-and(1, n)]-1]` -/
def P8678012571279538963.Spec : Prop :=
  ∀ n, P8678012571279538963.a n = A077866 n

end A077866

/-! ## A077866.P13325494247600501608

`∑[∑[2*a(n-2)]]` with `a(0)=1, a(1)=0`
-/

namespace A077866.P13325494247600501608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  2 * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077866.P13325494247600501608

namespace A077866

/-- `∑[∑[2*a(n-2)]]` -/
def P13325494247600501608.Spec : Prop :=
  ∀ n, (P13325494247600501608.a n : ℤ) = A077866 n

end A077866

/-! ## A077866.P3512200560249203140

`∑[lcm(2, a(n-2))+1]` with `a(0)=1, a(1)=1`
-/

namespace A077866.P3512200560249203140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Nat.lcm 2 (f1 (n - 2)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077866.P3512200560249203140

namespace A077866

/-- `∑[lcm(2, a(n-2))+1]` -/
def P3512200560249203140.Spec : Prop :=
  ∀ n, (P3512200560249203140.a n : ℤ) = A077866 n

end A077866

/-! ## A077866.P10308807670534619915

`2*a(n-2)+n+1` with `a(0)=1, a(1)=2`
-/

namespace A077866.P10308807670534619915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 2) + (n + 1)

end

end A077866.P10308807670534619915

namespace A077866

/-- `2*a(n-2)+n+1` -/
def P10308807670534619915.Spec : Prop :=
  ∀ n, (P10308807670534619915.a n : ℤ) = A077866 n

end A077866

/-! ## A077866.P18161810770412232038

`∑[2^∑[1-a(n-1)]-1]` with `a(0)=1`
-/

namespace A077866.P18161810770412232038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077866.P18161810770412232038

namespace A077866

/-- `∑[2^∑[1-a(n-1)]-1]` -/
def P18161810770412232038.Spec : Prop :=
  ∀ n, P18161810770412232038.a n = (A077866 n : ℚ)

end A077866

/-! ## A077866.P17639613854953968605

`∑[a(n-2)+a(n-2)+1]` with `a(0)=1, a(1)=1`
-/

namespace A077866.P17639613854953968605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077866.P17639613854953968605

namespace A077866

/-- `∑[a(n-2)+a(n-2)+1]` -/
def P17639613854953968605.Spec : Prop :=
  ∀ n, (P17639613854953968605.a n : ℤ) = A077866 n

end A077866

/-! ## A077866.P12975905261734122843

`a(n-2)+a(n-2)+n+1` with `a(0)=1, a(1)=2`
-/

namespace A077866.P12975905261734122843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + (n + 1))

end

end A077866.P12975905261734122843

namespace A077866

/-- `a(n-2)+a(n-2)+n+1` -/
def P12975905261734122843.Spec : Prop :=
  ∀ n, (P12975905261734122843.a n : ℤ) = A077866 n

end A077866

/-! ## A077866.P2562295055825490159

`∑[A052551(n)]`
-/

namespace A077866.P2562295055825490159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077866.P2562295055825490159

namespace A077866

/-- `∑[A052551(n)]` -/
def P2562295055825490159.Spec : Prop :=
  ∀ n, P2562295055825490159.a n = A077866 n

end A077866

/-! ## A077866.P16340262656685544936

`∑[∑[A077957(n)]]`
-/

namespace A077866.P16340262656685544936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077866.P16340262656685544936

namespace A077866

/-- `∑[∑[A077957(n)]]` -/
def P16340262656685544936.Spec : Prop :=
  ∀ n, P16340262656685544936.a n = A077866 n

end A077866

/-! ## A077866.P32825763101575096

`∑[∑[A131575(n+1)]]`
-/

namespace A077866.P32825763101575096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077866.P32825763101575096

namespace A077866

/-- `∑[∑[A131575(n+1)]]` -/
def P32825763101575096.Spec : Prop :=
  ∀ n, P32825763101575096.a n = A077866 n

end A077866

/-! ## A077866.P2823946884195431382

`∑[∑[A119332(2*n)]]`
-/

namespace A077866.P2823946884195431382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077866.P2823946884195431382

namespace A077866

/-- `∑[∑[A119332(2*n)]]` -/
def P2823946884195431382.Spec : Prop :=
  ∀ n, P2823946884195431382.a n = A077866 n

end A077866

/-! ## A077866.P4266677210225997104

`∑[A056453(n+1)+1]`
-/

namespace A077866.P4266677210225997104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056453 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077866.P4266677210225997104

namespace A077866

/-- `∑[A056453(n+1)+1]` -/
def P4266677210225997104.Spec : Prop :=
  ∀ n, P4266677210225997104.a n = A077866 n

end A077866

/-! ## A077866.P2627088453808351543

`∑[A060546(n+1)-1]`
-/

namespace A077866.P2627088453808351543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077866.P2627088453808351543

namespace A077866

/-- `∑[A060546(n+1)-1]` -/
def P2627088453808351543.Spec : Prop :=
  ∀ n, P2627088453808351543.a n = A077866 n

end A077866

/-! ## A077866.P7173781580642303778

`∑[A356185(n+1)+n]`
-/

namespace A077866.P7173781580642303778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356185 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077866.P7173781580642303778

namespace A077866

/-- `∑[A356185(n+1)+n]` -/
def P7173781580642303778.Spec : Prop :=
  ∀ n, P7173781580642303778.a n = A077866 n

end A077866

/-! ## A077866.P6021961551848161512

`∑[A156665(∑[n])]`
-/

namespace A077866.P6021961551848161512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156665 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077866.P6021961551848161512

namespace A077866

/-- `∑[A156665(∑[n])]` -/
def P6021961551848161512.Spec : Prop :=
  ∀ n, P6021961551848161512.a n = A077866 n

end A077866

/-! ## A077866.P9645711074387892820

`∑[A233324(∑[n+2])]`
-/

namespace A077866.P9645711074387892820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233324 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077866.P9645711074387892820

namespace A077866

/-- `∑[A233324(∑[n+2])]` -/
def P9645711074387892820.Spec : Prop :=
  ∀ n, P9645711074387892820.a n = A077866 n

end A077866

/-!
# A077867: Expansion of (1-x)^(-1)/(1-x-x^2+2*x^3).

The programs for A077867, the canonical program `A077867.P2241059362853443129` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077867 has offset 0).

The definition of A077867 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+3x^3-2x^4))` (program `A077867.P2241059362853443129`, by `A077867.P2241059362853443129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077867.P2241059362853443129

`ogf(1/(1-2x+3x^3-2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077867

/-- `ogf(1/(1-2x+3x^3-2x^4))` -/
def P2241059362853443129.Spec : Prop :=
  ∀ n, P2241059362853443129.a n = A077867 n

theorem P2241059362853443129.correct : P2241059362853443129.Spec := by
  intro n
  simp only [A077867]

end A077867

/-! ## A077867.P18292780816874614079

`∑[a(n-3)-4*a(n-5)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=1`
-/

namespace A077867.P18292780816874614079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1, 1] fun n f1 =>
  f1 (n - 3) - 4 * f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077867.P18292780816874614079

namespace A077867

/-- `∑[a(n-3)-4*a(n-5)]` -/
def P18292780816874614079.Spec : Prop :=
  ∀ n, P18292780816874614079.a n = A077867 n

end A077867

/-! ## A077867.P10587337147600176678

`∑[A077948(n)]`
-/

namespace A077867.P10587337147600176678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077867.P10587337147600176678

namespace A077867

/-- `∑[A077948(n)]` -/
def P10587337147600176678.Spec : Prop :=
  ∀ n, P10587337147600176678.a n = A077867 n

end A077867

/-! ## A077867.P7372014980195071826

`∑[∑[A078011(n)]]`
-/

namespace A077867.P7372014980195071826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078011 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077867.P7372014980195071826

namespace A077867

/-- `∑[∑[A078011(n)]]` -/
def P7372014980195071826.Spec : Prop :=
  ∀ n, P7372014980195071826.a n = A077867 n

end A077867

/-! ## A077867.P1550291376614577556

`∑[(-1)^n*A077971(n)]`
-/

namespace A077867.P1550291376614577556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077867.P1550291376614577556

namespace A077867

/-- `∑[(-1)^n*A077971(n)]` -/
def P1550291376614577556.Spec : Prop :=
  ∀ n, P1550291376614577556.a n = A077867 n

end A077867

/-! ## A077867.P7790394163062186498

`∑[A077971(n)/A034947(2*n+1)]`
-/

namespace A077867.P7790394163062186498
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077971 n : ℚ) / (A034947 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077867.P7790394163062186498

namespace A077867

/-- `∑[A077971(n)/A034947(2*n+1)]` -/
def P7790394163062186498.Spec : Prop :=
  ∀ n, P7790394163062186498.a n = (A077867 n : ℚ)

end A077867

/-!
# A077868: Expansion of 1/((1-x)*(1-x-x^3)).

The programs for A077868, the canonical program `A077868.P7634982257760008943` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077868 has offset 0).

The definition of A077868 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-x^3+x^4))` (program `A077868.P7634982257760008943`, by `A077868.P7634982257760008943.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077868.P7634982257760008943

`ogf(1/(1-2x+x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077868

/-- `ogf(1/(1-2x+x^2-x^3+x^4))` -/
def P7634982257760008943.Spec : Prop :=
  ∀ n, P7634982257760008943.a n = A077868 n

theorem P7634982257760008943.correct : P7634982257760008943.Spec := by
  intro n
  simp only [A077868]

end A077868

/-! ## A077868.P12939594690683875790

`1+a(n-1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A077868.P12939594690683875790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  1 + a (n - 1) + a (n - 3)

end

end A077868.P12939594690683875790

namespace A077868

/-- `1+a(n-1)+a(n-3)` -/
def P12939594690683875790.Spec : Prop :=
  ∀ n, (P12939594690683875790.a n : ℤ) = A077868 n

end A077868

/-! ## A077868.P512820167425279844

`A000930(n+3)-1`
-/

namespace A077868.P512820167425279844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 3) - 1

end

end A077868.P512820167425279844

namespace A077868

/-- `A000930(n+3)-1` -/
def P512820167425279844.Spec : Prop :=
  ∀ n, P512820167425279844.a n = A077868 n

end A077868

/-! ## A077868.P1673234072328696891

`∑[a(n-1)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077868.P1673234072328696891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077868.P1673234072328696891

namespace A077868

/-- `∑[a(n-1)+a(n-3)]` -/
def P1673234072328696891.Spec : Prop :=
  ∀ n, (P1673234072328696891.a n : ℤ) = A077868 n

end A077868

/-! ## A077868.P1063832759813086924

`a(n-1)-xor(-1, a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A077868.P1063832759813086924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) - Int.xor (-1) (a (n - 3))

end

end A077868.P1063832759813086924

namespace A077868

/-- `a(n-1)-xor(-1, a(n-3))` -/
def P1063832759813086924.Spec : Prop :=
  ∀ n, P1063832759813086924.a n = A077868 n

end A077868

/-! ## A077868.P17641533135955176854

`2-floor(1-a(n-1)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A077868.P17641533135955176854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 - (1 - a (n - 1) - a (n - 3))

end

end A077868.P17641533135955176854

namespace A077868

/-- `2-floor(1-a(n-1)-a(n-3))` -/
def P17641533135955176854.Spec : Prop :=
  ∀ n, P17641533135955176854.a n = A077868 n

end A077868

/-! ## A077868.P3707057956245471048

`∑[abs(Δ[1-a(n-1)-a(n-3)])]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A077868.P3707057956245471048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  1 - f2 (n - 1) - f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077868.P3707057956245471048

namespace A077868

/-- `∑[abs(Δ[1-a(n-1)-a(n-3)])]` -/
def P3707057956245471048.Spec : Prop :=
  ∀ n, P3707057956245471048.a n = A077868 n

end A077868

/-! ## A077868.P10217584018245845144

`∑[A000930(n)]`
-/

namespace A077868.P10217584018245845144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077868.P10217584018245845144

namespace A077868

/-- `∑[A000930(n)]` -/
def P10217584018245845144.Spec : Prop :=
  ∀ n, P10217584018245845144.a n = A077868 n

end A077868

/-! ## A077868.P3376663610606833739

`∑[abs(A199804(n))]`
-/

namespace A077868.P3376663610606833739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199804 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077868.P3376663610606833739

namespace A077868

/-- `∑[abs(A199804(n))]` -/
def P3376663610606833739.Spec : Prop :=
  ∀ n, P3376663610606833739.a n = A077868 n

end A077868

/-! ## A077868.P13065630732606585415

`∑[∑[A078012(n)]]`
-/

namespace A077868.P13065630732606585415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077868.P13065630732606585415

namespace A077868

/-- `∑[∑[A078012(n)]]` -/
def P13065630732606585415.Spec : Prop :=
  ∀ n, P13065630732606585415.a n = A077868 n

end A077868

/-! ## A077868.P12633383137204786821

`∑[A108104(2*n)]`
-/

namespace A077868.P12633383137204786821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077868.P12633383137204786821

namespace A077868

/-- `∑[A108104(2*n)]` -/
def P12633383137204786821.Spec : Prop :=
  ∀ n, P12633383137204786821.a n = A077868 n

end A077868

/-! ## A077868.P12681067207404924264

`∑[A135851(n+5)]`
-/

namespace A077868.P12681067207404924264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077868.P12681067207404924264

namespace A077868

/-- `∑[A135851(n+5)]` -/
def P12681067207404924264.Spec : Prop :=
  ∀ n, P12681067207404924264.a n = A077868 n

end A077868

/-! ## A077868.P10600793785662976094

`A068921(n+2)-1`
-/

namespace A077868.P10600793785662976094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 2) - 1

end

end A077868.P10600793785662976094

namespace A077868

/-- `A068921(n+2)-1` -/
def P10600793785662976094.Spec : Prop :=
  ∀ n, P10600793785662976094.a n = A077868 n

end A077868

/-! ## A077868.P15837720574739476126

`A019527(n+2)-3`
-/

namespace A077868.P15837720574739476126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019527 (n + 2) - 3

end

end A077868.P15837720574739476126

namespace A077868

/-- `A019527(n+2)-3` -/
def P15837720574739476126.Spec : Prop :=
  ∀ n, P15837720574739476126.a n = A077868 n

end A077868

/-! ## A077868.P17971451850370861763

`∑[A068921(abs(1-n))]`
-/

namespace A077868.P17971451850370861763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077868.P17971451850370861763

namespace A077868

/-- `∑[A068921(abs(1-n))]` -/
def P17971451850370861763.Spec : Prop :=
  ∀ n, P17971451850370861763.a n = A077868 n

end A077868

/-! ## A077868.P4392157882325926053

`A108104(2*(n+3))-1`
-/

namespace A077868.P4392157882325926053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (2 * (n + 3)) - 1

end

end A077868.P4392157882325926053

namespace A077868

/-- `A108104(2*(n+3))-1` -/
def P4392157882325926053.Spec : Prop :=
  ∀ n, P4392157882325926053.a n = A077868 n

end A077868

/-! ## A077868.P3332457241621345492

`record[abs(1-A135851(n+1))]`
-/

namespace A077868.P3332457241621345492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A135851 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077868.P3332457241621345492

namespace A077868

/-- `record[abs(1-A135851(n+1))]` -/
def P3332457241621345492.Spec : Prop :=
  ∀ n, P3332457241621345492.a n = A077868 n

end A077868

/-! ## A077868.P13350742911749159239

`A097333(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A077868.P13350742911749159239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A097333 n + a (n - 2)

end

end A077868.P13350742911749159239

namespace A077868

/-- `A097333(n)+a(n-2)` -/
def P13350742911749159239.Spec : Prop :=
  ∀ n, P13350742911749159239.a n = A077868 n

end A077868

/-! ## A077868.P2670375698793081256

`A226275(n)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A077868.P2670375698793081256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A226275 n + a (n - 2)

end

end A077868.P2670375698793081256

namespace A077868

/-- `A226275(n)+a(n-2)` -/
def P2670375698793081256.Spec : Prop :=
  ∀ n, P2670375698793081256.a n = A077868 n

end A077868

/-! ## A077868.P17233999856246707512

`A078012(n+3)+a(n-1)` with `a(0)=1`
-/

namespace A077868.P17233999856246707512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078012 (n + 3) + a (n - 1)

end

end A077868.P17233999856246707512

namespace A077868

/-- `A078012(n+3)+a(n-1)` -/
def P17233999856246707512.Spec : Prop :=
  ∀ n, P17233999856246707512.a n = A077868 n

end A077868

/-!
# A077869: Expansion of (1-x)^(-1)/(1-x+x^3).

The programs for A077869, the canonical program `A077869.P14270019608360067646` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077869 has offset 0).

The definition of A077869 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2+x^3-x^4))` (program `A077869.P14270019608360067646`, by `A077869.P14270019608360067646.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077869.P14270019608360067646

`ogf(1/(1-2x+x^2+x^3-x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077869

/-- `ogf(1/(1-2x+x^2+x^3-x^4))` -/
def P14270019608360067646.Spec : Prop :=
  ∀ n, P14270019608360067646.a n = A077869 n

theorem P14270019608360067646.correct : P14270019608360067646.Spec := by
  intro n
  simp only [A077869]

end A077869

/-! ## A077869.P16918685942753367002

`2*a(n-1)-a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=3`
-/

namespace A077869.P16918685942753367002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 3] fun n a =>
  2 * a (n - 1) - a (n - 2) - a (n - 3) + a (n - 4)

end

end A077869.P16918685942753367002

namespace A077869

/-- `2*a(n-1)-a(n-2)-a(n-3)+a(n-4)` -/
def P16918685942753367002.Spec : Prop :=
  ∀ n, P16918685942753367002.a n = A077869 n

end A077869

/-! ## A077869.P13194106750352232274

`∑[ogf(1/(1-x+x^3))]`
-/

namespace A077869.P13194106750352232274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077869.P13194106750352232274

namespace A077869

/-- `∑[ogf(1/(1-x+x^3))]` -/
def P13194106750352232274.Spec : Prop :=
  ∀ n, P13194106750352232274.a n = A077869 n

end A077869

/-! ## A077869.P14764503119098973165

`∑[a(n-1)-a(n-3)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077869.P14764503119098973165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077869.P14764503119098973165

namespace A077869

/-- `∑[a(n-1)-a(n-3)]` -/
def P14764503119098973165.Spec : Prop :=
  ∀ n, P14764503119098973165.a n = A077869 n

end A077869

/-! ## A077869.P4815111342947946015

`1+a(n-1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A077869.P4815111342947946015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  1 + a (n - 1) - a (n - 3)

end

end A077869.P4815111342947946015

namespace A077869

/-- `1+a(n-1)-a(n-3)` -/
def P4815111342947946015.Spec : Prop :=
  ∀ n, P4815111342947946015.a n = A077869 n

end A077869

/-! ## A077869.P13522110014551694154

`1-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A077869.P13522110014551694154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  1 - (a (n - 3) - a (n - 1))

end

end A077869.P13522110014551694154

namespace A077869

/-- `1-(a(n-3)-a(n-1))` -/
def P13522110014551694154.Spec : Prop :=
  ∀ n, P13522110014551694154.a n = A077869 n

end A077869

/-! ## A077869.P8918941999906679959

`A203400(n+3)`
-/

namespace A077869.P8918941999906679959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203400 (n + 3)

end

end A077869.P8918941999906679959

namespace A077869

/-- `A203400(n+3)` -/
def P8918941999906679959.Spec : Prop :=
  ∀ n, P8918941999906679959.a n = A077869 n

end A077869

/-! ## A077869.P1527293104306261362

`∑[∑[A078013(n)]]`
-/

namespace A077869.P1527293104306261362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078013 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077869.P1527293104306261362

namespace A077869

/-- `∑[∑[A078013(n)]]` -/
def P1527293104306261362.Spec : Prop :=
  ∀ n, P1527293104306261362.a n = A077869 n

end A077869

/-! ## A077869.P2066136830980282114

`∑[A050935(n+3)]`
-/

namespace A077869.P2066136830980282114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077869.P2066136830980282114

namespace A077869

/-- `∑[A050935(n+3)]` -/
def P2066136830980282114.Spec : Prop :=
  ∀ n, P2066136830980282114.a n = A077869 n

end A077869

/-! ## A077869.P4897925896640527439

`A078013(n+6)+1`
-/

namespace A077869.P4897925896640527439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078013 (n + 6) + 1

end

end A077869.P4897925896640527439

namespace A077869

/-- `A078013(n+6)+1` -/
def P4897925896640527439.Spec : Prop :=
  ∀ n, P4897925896640527439.a n = A077869 n

end A077869

/-! ## A077869.P48919197976635868

`1-A050935(n+6)`
-/

namespace A077869.P48919197976635868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A050935 (n + 6)

end

end A077869.P48919197976635868

namespace A077869

/-- `1-A050935(n+6)` -/
def P48919197976635868.Spec : Prop :=
  ∀ n, P48919197976635868.a n = A077869 n

end A077869

/-! ## A077869.P1477004548982302522

`∑[A055975(2*n+1)*A247917(n)]`
-/

namespace A077869.P1477004548982302522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (2 * n + 1) * A247917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077869.P1477004548982302522

namespace A077869

/-- `∑[A055975(2*n+1)*A247917(n)]` -/
def P1477004548982302522.Spec : Prop :=
  ∀ n, P1477004548982302522.a n = A077869 n

end A077869

/-! ## A077869.P15456132707096441066

`A165192(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A077869.P15456132707096441066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A165192 n + a (n - 3)

end

end A077869.P15456132707096441066

namespace A077869

/-- `A165192(n)+a(n-3)` -/
def P15456132707096441066.Spec : Prop :=
  ∀ n, P15456132707096441066.a n = A077869 n

end A077869

/-!
# A077870: Expansion of (1-x)^(-1)/(1-x+2*x^3).

The programs for A077870, the canonical program `A077870.P1939444756134453215` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077870 has offset 0).

The definition of A077870 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2+2x^3-2x^4))` (program `A077870.P1939444756134453215`, by `A077870.P1939444756134453215.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077870.P1939444756134453215

`ogf(1/(1-2x+x^2+2x^3-2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077870

/-- `ogf(1/(1-2x+x^2+2x^3-2x^4))` -/
def P1939444756134453215.Spec : Prop :=
  ∀ n, P1939444756134453215.a n = A077870 n

theorem P1939444756134453215.correct : P1939444756134453215.Spec := by
  intro n
  simp only [A077870]

end A077870

/-! ## A077870.P5238114418292396077

`∑[ogf(1/(1-x+2x^3))]`
-/

namespace A077870.P5238114418292396077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077870.P5238114418292396077

namespace A077870

/-- `∑[ogf(1/(1-x+2x^3))]` -/
def P5238114418292396077.Spec : Prop :=
  ∀ n, P5238114418292396077.a n = A077870 n

end A077870

/-! ## A077870.P4558451766704607756

`∑[a(n-1)-2*a(n-3)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077870.P4558451766704607756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) - 2 * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077870.P4558451766704607756

namespace A077870

/-- `∑[a(n-1)-2*a(n-3)]` -/
def P4558451766704607756.Spec : Prop :=
  ∀ n, P4558451766704607756.a n = A077870 n

end A077870

/-! ## A077870.P17503044375892092568

`a(n-1)+1-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A077870.P17503044375892092568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) + (1 - 2 * a (n - 3))

end

end A077870.P17503044375892092568

namespace A077870

/-- `a(n-1)+1-2*a(n-3)` -/
def P17503044375892092568.Spec : Prop :=
  ∀ n, P17503044375892092568.a n = A077870 n

end A077870

/-! ## A077870.P11414405131739224057

`1-(2*a(n-3)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A077870.P11414405131739224057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  1 - (2 * a (n - 3) - a (n - 1))

end

end A077870.P11414405131739224057

namespace A077870

/-- `1-(2*a(n-3)-a(n-1))` -/
def P11414405131739224057.Spec : Prop :=
  ∀ n, P11414405131739224057.a n = A077870 n

end A077870

/-! ## A077870.P18051848241346814069

`∑[a(n-1)-a(n-3)-a(n-3)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077870.P18051848241346814069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) - f1 (n - 3) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077870.P18051848241346814069

namespace A077870

/-- `∑[a(n-1)-a(n-3)-a(n-3)]` -/
def P18051848241346814069.Spec : Prop :=
  ∀ n, P18051848241346814069.a n = A077870 n

end A077870

/-! ## A077870.P14400300570615589538

`a(n-1)+1-(a(n-3)+a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A077870.P14400300570615589538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) + (1 - (a (n - 3) + a (n - 3)))

end

end A077870.P14400300570615589538

namespace A077870

/-- `a(n-1)+1-(a(n-3)+a(n-3))` -/
def P14400300570615589538.Spec : Prop :=
  ∀ n, P14400300570615589538.a n = A077870 n

end A077870

/-! ## A077870.P5304691517608809691

`1-(a(n-3)-(a(n-1)-a(n-3)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A077870.P5304691517608809691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  1 - (a (n - 3) - (a (n - 1) - a (n - 3)))

end

end A077870.P5304691517608809691

namespace A077870

/-- `1-(a(n-3)-(a(n-1)-a(n-3)))` -/
def P5304691517608809691.Spec : Prop :=
  ∀ n, P5304691517608809691.a n = A077870 n

end A077870

/-! ## A077870.P3934303500365501572

`∑[A077950(n)]`
-/

namespace A077870.P3934303500365501572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077870.P3934303500365501572

namespace A077870

/-- `∑[A077950(n)]` -/
def P3934303500365501572.Spec : Prop :=
  ∀ n, P3934303500365501572.a n = A077870 n

end A077870

/-! ## A077870.P9937620970162919423

`∑[∑[A078014(n)]]`
-/

namespace A077870.P9937620970162919423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078014 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077870.P9937620970162919423

namespace A077870

/-- `∑[∑[A078014(n)]]` -/
def P9937620970162919423.Spec : Prop :=
  ∀ n, P9937620970162919423.a n = A077870 n

end A077870

/-! ## A077870.P11023170112902759480

`(1-A077950(n+3))/2`
-/

namespace A077870.P11023170112902759480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A077950 (n + 3) : ℚ) / 2

end

end A077870.P11023170112902759480

namespace A077870

/-- `(1-A077950(n+3))/2` -/
def P11023170112902759480.Spec : Prop :=
  ∀ n, P11023170112902759480.a n = (A077870 n : ℚ)

end A077870

/-! ## A077870.P16120116522357776313

`A077860(n)-a(n-1)` with `a(0)=1`
-/

namespace A077870.P16120116522357776313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077860 n - a (n - 1)

end

end A077870.P16120116522357776313

namespace A077870

/-- `A077860(n)-a(n-1)` -/
def P16120116522357776313.Spec : Prop :=
  ∀ n, P16120116522357776313.a n = A077870 n

end A077870

/-! ## A077870.P4901976837376827760

`A099087(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A077870.P4901976837376827760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A099087 n + a (n - 2)

end

end A077870.P4901976837376827760

namespace A077870

/-- `A099087(n)+a(n-2)` -/
def P4901976837376827760.Spec : Prop :=
  ∀ n, P4901976837376827760.a n = A077870 n

end A077870

/-! ## A077870.P4402195076020524583

`∑[∑[A146559(n)]]-a(n-1)` with `a(0)=1`
-/

namespace A077870.P4402195076020524583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A077870.P4402195076020524583

namespace A077870

/-- `∑[∑[A146559(n)]]-a(n-1)` -/
def P4402195076020524583.Spec : Prop :=
  ∀ n, P4402195076020524583.a n = A077870 n

end A077870

/-!
# A077871: Expansion of (1-x)^(-1)/(1-x+x^2-2*x^3).

The programs for A077871, the canonical program `A077871.P10457538321355389593` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077871 has offset 0).

The definition of A077871 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+2x^2-3x^3+2x^4))` (program `A077871.P10457538321355389593`, by `A077871.P10457538321355389593.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077871.P10457538321355389593

`ogf(1/(1-2x+2x^2-3x^3+2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077871

/-- `ogf(1/(1-2x+2x^2-3x^3+2x^4))` -/
def P10457538321355389593.Spec : Prop :=
  ∀ n, P10457538321355389593.a n = A077871 n

theorem P10457538321355389593.correct : P10457538321355389593.Spec := by
  intro n
  simp only [A077871]

end A077871

/-! ## A077871.P16817971918127299165

`∑[a(n-3)+2*a(n-4)]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A077871.P16817971918127299165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 1] fun n f1 =>
  f1 (n - 3) + 2 * f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077871.P16817971918127299165

namespace A077871

/-- `∑[a(n-3)+2*a(n-4)]` -/
def P16817971918127299165.Spec : Prop :=
  ∀ n, (P16817971918127299165.a n : ℤ) = A077871 n

end A077871

/-! ## A077871.P11596990972813722499

`a(n-3)+2*(a(n-4)+1)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A077871.P11596990972813722499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3] fun n a =>
  a (n - 3) + 2 * (a (n - 4) + 1)

end

end A077871.P11596990972813722499

namespace A077871

/-- `a(n-3)+2*(a(n-4)+1)` -/
def P11596990972813722499.Spec : Prop :=
  ∀ n, (P11596990972813722499.a n : ℤ) = A077871 n

end A077871

/-! ## A077871.P1626829723577093900

`∑[a(n-4)+a(n-3)+a(n-4)]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A077871.P1626829723577093900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 1] fun n f1 =>
  f1 (n - 4) + (f1 (n - 3) + f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077871.P1626829723577093900

namespace A077871

/-- `∑[a(n-4)+a(n-3)+a(n-4)]` -/
def P1626829723577093900.Spec : Prop :=
  ∀ n, (P1626829723577093900.a n : ℤ) = A077871 n

end A077871

/-! ## A077871.P12045206334592275814

`a(n-3)+2+a(n-4)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A077871.P12045206334592275814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3] fun n a =>
  a (n - 3) + 2 + (a (n - 4) + a (n - 4))

end

end A077871.P12045206334592275814

namespace A077871

/-- `a(n-3)+2+a(n-4)+a(n-4)` -/
def P12045206334592275814.Spec : Prop :=
  ∀ n, (P12045206334592275814.a n : ℤ) = A077871 n

end A077871

/-! ## A077871.P14965327987578367875

`1-(a(n-2)-2*a(n-3)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A077871.P14965327987578367875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  1 - (a (n - 2) - 2 * a (n - 3) - a (n - 1))

end

end A077871.P14965327987578367875

namespace A077871

/-- `1-(a(n-2)-2*a(n-3)-a(n-1))` -/
def P14965327987578367875.Spec : Prop :=
  ∀ n, P14965327987578367875.a n = A077871 n

end A077871

/-! ## A077871.P789652997013549399

`∑[A077951(n)]`
-/

namespace A077871.P789652997013549399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077871.P789652997013549399

namespace A077871

/-- `∑[A077951(n)]` -/
def P789652997013549399.Spec : Prop :=
  ∀ n, P789652997013549399.a n = A077871 n

end A077871

/-! ## A077871.P16574553823629744724

`∑[abs(A077976(n))]`
-/

namespace A077871.P16574553823629744724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077976 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077871.P16574553823629744724

namespace A077871

/-- `∑[abs(A077976(n))]` -/
def P16574553823629744724.Spec : Prop :=
  ∀ n, P16574553823629744724.a n = A077871 n

end A077871

/-! ## A077871.P9762114737722262626

`∑[∑[A078015(n)]]`
-/

namespace A077871.P9762114737722262626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078015 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077871.P9762114737722262626

namespace A077871

/-- `∑[∑[A078015(n)]]` -/
def P9762114737722262626.Spec : Prop :=
  ∀ n, P9762114737722262626.a n = A077871 n

end A077871

/-! ## A077871.P5171762960775414207

`A329301(n+3)-1`
-/

namespace A077871.P5171762960775414207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329301 (n + 3) - 1

end

end A077871.P5171762960775414207

namespace A077871

/-- `A329301(n+3)-1` -/
def P5171762960775414207.Spec : Prop :=
  ∀ n, P5171762960775414207.a n = A077871 n

end A077871

/-! ## A077871.P6769689331181965049

`∑[abs(∑[A078047(n)])]`
-/

namespace A077871.P6769689331181965049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078047 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077871.P6769689331181965049

namespace A077871

/-- `∑[abs(∑[A078047(n)])]` -/
def P6769689331181965049.Spec : Prop :=
  ∀ n, P6769689331181965049.a n = A077871 n

end A077871

/-!
# A077872: Expansion of 1 / ((1-x)*(1-x+x^2+x^3)).

The programs for A077872, the canonical program `A077872.P18124613810370962923` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077872 has offset 0).

The definition of A077872 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+2x^2-x^4))` (program `A077872.P18124613810370962923`, by `A077872.P18124613810370962923.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077872.P18124613810370962923

`ogf(1/(1-2x+2x^2-x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077872

/-- `ogf(1/(1-2x+2x^2-x^4))` -/
def P18124613810370962923.Spec : Prop :=
  ∀ n, P18124613810370962923.a n = A077872 n

theorem P18124613810370962923.correct : P18124613810370962923.Spec := by
  intro n
  simp only [A077872]

end A077872

/-! ## A077872.P16299116315642911615

`2*a(n-1)-2*a(n-2)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=0`
-/

namespace A077872.P16299116315642911615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 0] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + a (n - 4)

end

end A077872.P16299116315642911615

namespace A077872

/-- `2*a(n-1)-2*a(n-2)+a(n-4)` -/
def P16299116315642911615.Spec : Prop :=
  ∀ n, P16299116315642911615.a n = A077872 n

end A077872

/-! ## A077872.P9059920671560429458

`∑[ogf(1/(1-x+x^2+x^3))]`
-/

namespace A077872.P9059920671560429458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077872.P9059920671560429458

namespace A077872

/-- `∑[ogf(1/(1-x+x^2+x^3))]` -/
def P9059920671560429458.Spec : Prop :=
  ∀ n, P9059920671560429458.a n = A077872 n

end A077872

/-! ## A077872.P8899349661821796444

`2*(1-a(n-3))-a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=0`
-/

namespace A077872.P8899349661821796444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 0] fun n a =>
  2 * (1 - a (n - 3)) - a (n - 4)

end

end A077872.P8899349661821796444

namespace A077872

/-- `2*(1-a(n-3))-a(n-4)` -/
def P8899349661821796444.Spec : Prop :=
  ∀ n, P8899349661821796444.a n = A077872 n

end A077872

/-! ## A077872.P17039067397086890449

`∑[a(n-1)-(a(n-2)+a(n-3))]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077872.P17039067397086890449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  f1 (n - 1) - (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077872.P17039067397086890449

namespace A077872

/-- `∑[a(n-1)-(a(n-2)+a(n-3))]` -/
def P17039067397086890449.Spec : Prop :=
  ∀ n, P17039067397086890449.a n = A077872 n

end A077872

/-! ## A077872.P11549841858418120927

`∑[a(n-1)-a(n-2)-a(n-3)]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077872.P11549841858418120927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  f1 (n - 1) - f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077872.P11549841858418120927

namespace A077872

/-- `∑[a(n-1)-a(n-2)-a(n-3)]` -/
def P11549841858418120927.Spec : Prop :=
  ∀ n, P11549841858418120927.a n = A077872 n

end A077872

/-! ## A077872.P2596924862698952503

`a(n-1)+1-(a(n-2)+a(n-3))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A077872.P2596924862698952503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) + (1 - (a (n - 2) + a (n - 3)))

end

end A077872.P2596924862698952503

namespace A077872

/-- `a(n-1)+1-(a(n-2)+a(n-3))` -/
def P2596924862698952503.Spec : Prop :=
  ∀ n, P2596924862698952503.a n = A077872 n

end A077872

/-! ## A077872.P5033806372066379751

`1-(a(n-2)-(a(n-1)-a(n-3)))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A077872.P5033806372066379751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  1 - (a (n - 2) - (a (n - 1) - a (n - 3)))

end

end A077872.P5033806372066379751

namespace A077872

/-- `1-(a(n-2)-(a(n-1)-a(n-3)))` -/
def P5033806372066379751.Spec : Prop :=
  ∀ n, P5033806372066379751.a n = A077872 n

end A077872

/-! ## A077872.P17967090637990784144

`∑[∑[A078016(n)]]`
-/

namespace A077872.P17967090637990784144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078016 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077872.P17967090637990784144

namespace A077872

/-- `∑[∑[A078016(n)]]` -/
def P17967090637990784144.Spec : Prop :=
  ∀ n, P17967090637990784144.a n = A077872 n

end A077872

/-! ## A077872.P7832290836816808791

`(1-A180735(n+2))/2`
-/

namespace A077872.P7832290836816808791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A180735 (n + 2) : ℚ) / 2

end

end A077872.P7832290836816808791

namespace A077872

/-- `(1-A180735(n+2))/2` -/
def P7832290836816808791.Spec : Prop :=
  ∀ n, P7832290836816808791.a n = (A077872 n : ℚ)

end A077872

/-!
# A077873: Expansion of (1-x)^(-1)/(1-x+x^2+2*x^3).

The programs for A077873, the canonical program `A077873.P102177596554305612` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077873 has offset 0).

The definition of A077873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+2x^2+x^3-2x^4))` (program `A077873.P102177596554305612`, by `A077873.P102177596554305612.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077873.P102177596554305612

`ogf(1/(1-2x+2x^2+x^3-2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077873

/-- `ogf(1/(1-2x+2x^2+x^3-2x^4))` -/
def P102177596554305612.Spec : Prop :=
  ∀ n, P102177596554305612.a n = A077873 n

theorem P102177596554305612.correct : P102177596554305612.Spec := by
  intro n
  simp only [A077873]

end A077873

/-! ## A077873.P6801711003760991160

`2*a(n-4)-a(n-3)-2*a(n-2)+2*a(n-1)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=-1`
-/

namespace A077873.P6801711003760991160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, -1] fun n a =>
  2 * a (n - 4) - a (n - 3) - 2 * a (n - 2) + 2 * a (n - 1)

end

end A077873.P6801711003760991160

namespace A077873

/-- `2*a(n-4)-a(n-3)-2*a(n-2)+2*a(n-1)` -/
def P6801711003760991160.Spec : Prop :=
  ∀ n, P6801711003760991160.a n = A077873 n

end A077873

/-! ## A077873.P2743820067645922043

`∑[ogf(1/(1-x+x^2+2x^3))]`
-/

namespace A077873.P2743820067645922043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077873.P2743820067645922043

namespace A077873

/-- `∑[ogf(1/(1-x+x^2+2x^3))]` -/
def P2743820067645922043.Spec : Prop :=
  ∀ n, P2743820067645922043.a n = A077873 n

end A077873

/-! ## A077873.P7429494314128163641

`∑[a(n-1)-(a(n-2)+2*a(n-3))]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077873.P7429494314128163641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  f1 (n - 1) - (f1 (n - 2) + 2 * f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077873.P7429494314128163641

namespace A077873

/-- `∑[a(n-1)-(a(n-2)+2*a(n-3))]` -/
def P7429494314128163641.Spec : Prop :=
  ∀ n, P7429494314128163641.a n = A077873 n

end A077873

/-! ## A077873.P12028640467724765585

`1-(2*a(n-3)+a(n-2)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A077873.P12028640467724765585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  1 - (2 * a (n - 3) + (a (n - 2) - a (n - 1)))

end

end A077873.P12028640467724765585

namespace A077873

/-- `1-(2*a(n-3)+a(n-2)-a(n-1))` -/
def P12028640467724765585.Spec : Prop :=
  ∀ n, P12028640467724765585.a n = A077873 n

end A077873

/-! ## A077873.P4711591562716192423

`∑[A077952(n)]`
-/

namespace A077873.P4711591562716192423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077873.P4711591562716192423

namespace A077873

/-- `∑[A077952(n)]` -/
def P4711591562716192423.Spec : Prop :=
  ∀ n, P4711591562716192423.a n = A077873 n

end A077873

/-! ## A077873.P6672224313126543350

`∑[∑[A078017(n)]]`
-/

namespace A077873.P6672224313126543350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078017 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077873.P6672224313126543350

namespace A077873

/-- `∑[∑[A078017(n)]]` -/
def P6672224313126543350.Spec : Prop :=
  ∀ n, P6672224313126543350.a n = A077873 n

end A077873

/-! ## A077873.P3692304154269683314

`A077952(n+1)+a(n-1)-A078017(n+1)` with `a(0)=1`
-/

namespace A077873.P3692304154269683314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077952 (n + 1) + (a (n - 1) - A078017 (n + 1))

end

end A077873.P3692304154269683314

namespace A077873

/-- `A077952(n+1)+a(n-1)-A078017(n+1)` -/
def P3692304154269683314.Spec : Prop :=
  ∀ n, P3692304154269683314.a n = A077873 n

end A077873

/-!
# A077874: Expansion of (1-x)^(-1)/(1-x+2*x^2-2*x^3).

The programs for A077874, the canonical program `A077874.P16948473099011763306` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077874 has offset 0).

The definition of A077874 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+3x^2-4x^3+2x^4))` (program `A077874.P16948473099011763306`, by `A077874.P16948473099011763306.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077874.P16948473099011763306

`ogf(1/(1-2x+3x^2-4x^3+2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077874

/-- `ogf(1/(1-2x+3x^2-4x^3+2x^4))` -/
def P16948473099011763306.Spec : Prop :=
  ∀ n, P16948473099011763306.a n = A077874 n

theorem P16948473099011763306.correct : P16948473099011763306.Spec := by
  intro n
  simp only [A077874]

end A077874

/-! ## A077874.P11869852935360215984

`∑[∑[ogf(1/(1+2x^2))]]`
-/

namespace A077874.P11869852935360215984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 2] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077874.P11869852935360215984

namespace A077874

/-- `∑[∑[ogf(1/(1+2x^2))]]` -/
def P11869852935360215984.Spec : Prop :=
  ∀ n, P11869852935360215984.a n = A077874 n

end A077874

/-! ## A077874.P8228403710006281760

`∑[1-2*a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A077874.P8228403710006281760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - 2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077874.P8228403710006281760

namespace A077874

/-- `∑[1-2*a(n-2)]` -/
def P8228403710006281760.Spec : Prop :=
  ∀ n, P8228403710006281760.a n = A077874 n

end A077874

/-! ## A077874.P3401936469578195764

`1-2*a(n-2)+n` with `a(0)=1, a(1)=2`
-/

namespace A077874.P3401936469578195764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - 2 * a (n - 2) + (n : ℤ)

end

end A077874.P3401936469578195764

namespace A077874

/-- `1-2*a(n-2)+n` -/
def P3401936469578195764.Spec : Prop :=
  ∀ n, P3401936469578195764.a n = A077874 n

end A077874

/-! ## A077874.P2305367242593422743

`1-(2*a(n-2)-n)` with `a(0)=1, a(1)=2`
-/

namespace A077874.P2305367242593422743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (2 * a (n - 2) - (n : ℤ))

end

end A077874.P2305367242593422743

namespace A077874

/-- `1-(2*a(n-2)-n)` -/
def P2305367242593422743.Spec : Prop :=
  ∀ n, P2305367242593422743.a n = A077874 n

end A077874

/-! ## A077874.P3602489061557604674

`∑[∑[((-1)^(n+1)-1)^(n/2)]]`
-/

namespace A077874.P3602489061557604674
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (n + 1) - 1 : ℝ) ^ ((n : ℚ) / 2 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077874.P3602489061557604674

namespace A077874

/-- `∑[∑[((-1)^(n+1)-1)^(n/2)]]` -/
def P3602489061557604674.Spec : Prop :=
  ∀ n, P3602489061557604674.a n = (A077874 n : ℝ)

end A077874

/-! ## A077874.P3710991637649750032

`1-(a(n-2)+a(n-2)-n)` with `a(0)=1, a(1)=2`
-/

namespace A077874.P3710991637649750032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (a (n - 2) + (a (n - 2) - (n : ℤ)))

end

end A077874.P3710991637649750032

namespace A077874

/-- `1-(a(n-2)+a(n-2)-n)` -/
def P3710991637649750032.Spec : Prop :=
  ∀ n, P3710991637649750032.a n = A077874 n

end A077874

/-! ## A077874.P6412093589754584521

`1-(a(n-2)-(n-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A077874.P6412093589754584521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (a (n - 2) - ((n : ℤ) - a (n - 2)))

end

end A077874.P6412093589754584521

namespace A077874

/-- `1-(a(n-2)-(n-a(n-2)))` -/
def P6412093589754584521.Spec : Prop :=
  ∀ n, P6412093589754584521.a n = A077874 n

end A077874

/-!
# A077875: Expansion of (1-x)^(-1)/(1-x+2*x^2-x^3).

The programs for A077875, the canonical program `A077875.P16429040112352491764` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077875 has offset 0).

The definition of A077875 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+3x^2-3x^3+x^4))` (program `A077875.P16429040112352491764`, by `A077875.P16429040112352491764.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077875.P16429040112352491764

`ogf(1/(1-2x+3x^2-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077875

/-- `ogf(1/(1-2x+3x^2-3x^3+x^4))` -/
def P16429040112352491764.Spec : Prop :=
  ∀ n, P16429040112352491764.a n = A077875 n

theorem P16429040112352491764.correct : P16429040112352491764.Spec := by
  intro n
  simp only [A077875]

end A077875

/-! ## A077875.P12103609573343877062

`∑[a(n-4)-(a(n-2)+a(n-3))]` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=-2`
-/

namespace A077875.P12103609573343877062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, -2] fun n f1 =>
  f1 (n - 4) - (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077875.P12103609573343877062

namespace A077875

/-- `∑[a(n-4)-(a(n-2)+a(n-3))]` -/
def P12103609573343877062.Spec : Prop :=
  ∀ n, P12103609573343877062.a n = A077875 n

end A077875

/-! ## A077875.P9921456766416850338

`∑[a(n-4)-a(n-2)-a(n-3)]` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=-2`
-/

namespace A077875.P9921456766416850338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, -2] fun n f1 =>
  f1 (n - 4) - f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077875.P9921456766416850338

namespace A077875

/-- `∑[a(n-4)-a(n-2)-a(n-3)]` -/
def P9921456766416850338.Spec : Prop :=
  ∀ n, P9921456766416850338.a n = A077875 n

end A077875

/-! ## A077875.P18067132502330855305

`1-2*a(n-2)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A077875.P18067132502330855305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  1 - 2 * a (n - 2) + (a (n - 1) + a (n - 3))

end

end A077875.P18067132502330855305

namespace A077875

/-- `1-2*a(n-2)+a(n-1)+a(n-3)` -/
def P18067132502330855305.Spec : Prop :=
  ∀ n, P18067132502330855305.a n = A077875 n

end A077875

/-! ## A077875.P12482574968241672440

`1-(2*a(n-2)-a(n-1)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A077875.P12482574968241672440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  1 - (2 * a (n - 2) - a (n - 1) - a (n - 3))

end

end A077875.P12482574968241672440

namespace A077875

/-- `1-(2*a(n-2)-a(n-1)-a(n-3))` -/
def P12482574968241672440.Spec : Prop :=
  ∀ n, P12482574968241672440.a n = A077875 n

end A077875

/-! ## A077875.P3479040218341677375

`1-(a(n-2)+a(n-2)-(a(n-1)+a(n-3)))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A077875.P3479040218341677375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  1 - (a (n - 2) + (a (n - 2) - (a (n - 1) + a (n - 3))))

end

end A077875.P3479040218341677375

namespace A077875

/-- `1-(a(n-2)+a(n-2)-(a(n-1)+a(n-3)))` -/
def P3479040218341677375.Spec : Prop :=
  ∀ n, P3479040218341677375.a n = A077875 n

end A077875

/-! ## A077875.P6055724631923284548

`∑[A077954(n)]`
-/

namespace A077875.P6055724631923284548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077875.P6055724631923284548

namespace A077875

/-- `∑[A077954(n)]` -/
def P6055724631923284548.Spec : Prop :=
  ∀ n, P6055724631923284548.a n = A077875 n

end A077875

/-! ## A077875.P868452803419694040

`∑[∑[A078019(n)]]`
-/

namespace A077875.P868452803419694040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078019 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077875.P868452803419694040

namespace A077875

/-- `∑[∑[A078019(n)]]` -/
def P868452803419694040.Spec : Prop :=
  ∀ n, P868452803419694040.a n = A077875 n

end A077875

/-! ## A077875.P16565785616392912515

`A141576(n+1)+1`
-/

namespace A077875.P16565785616392912515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141576 (n + 1) + 1

end

end A077875.P16565785616392912515

namespace A077875

/-- `A141576(n+1)+1` -/
def P16565785616392912515.Spec : Prop :=
  ∀ n, P16565785616392912515.a n = A077875 n

end A077875

/-! ## A077875.P13340898173528944215

`A104769(2*n)+1`
-/

namespace A077875.P13340898173528944215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (2 * n) + 1

end

end A077875.P13340898173528944215

namespace A077875

/-- `A104769(2*n)+1` -/
def P13340898173528944215.Spec : Prop :=
  ∀ n, P13340898173528944215.a n = A077875 n

end A077875

/-! ## A077875.P14311643613208925674

`∑[A050935(2*n+3)]`
-/

namespace A077875.P14311643613208925674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077875.P14311643613208925674

namespace A077875

/-- `∑[A050935(2*n+3)]` -/
def P14311643613208925674.Spec : Prop :=
  ∀ n, P14311643613208925674.a n = A077875 n

end A077875

/-! ## A077875.P4844245783286467772

`∑[A176971(2*n+3)]`
-/

namespace A077875.P4844245783286467772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077875.P4844245783286467772

namespace A077875

/-- `∑[A176971(2*n+3)]` -/
def P4844245783286467772.Spec : Prop :=
  ∀ n, P4844245783286467772.a n = A077875 n

end A077875

/-! ## A077875.P12828520439833622044

`A050935(2*(n+1))+1`
-/

namespace A077875.P12828520439833622044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (2 * (n + 1)) + 1

end

end A077875.P12828520439833622044

namespace A077875

/-- `A050935(2*(n+1))+1` -/
def P12828520439833622044.Spec : Prop :=
  ∀ n, P12828520439833622044.a n = A077875 n

end A077875

/-! ## A077875.P11630267952505014965

`1-A176971(2*(n+1))`
-/

namespace A077875.P11630267952505014965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A176971 (2 * (n + 1))

end

end A077875.P11630267952505014965

namespace A077875

/-- `1-A176971(2*(n+1))` -/
def P11630267952505014965.Spec : Prop :=
  ∀ n, P11630267952505014965.a n = A077875 n

end A077875

/-! ## A077875.P16069700163580931711

`∑[∑[1-A203400(2*n+1)]]`
-/

namespace A077875.P16069700163580931711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A203400 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077875.P16069700163580931711

namespace A077875

/-- `∑[∑[1-A203400(2*n+1)]]` -/
def P16069700163580931711.Spec : Prop :=
  ∀ n, P16069700163580931711.a n = A077875 n

end A077875

/-! ## A077875.P8158491150735337763

`A176971(2*n+1)+A077905(2*n)`
-/

namespace A077875.P8158491150735337763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (2 * n + 1) + A077905 (2 * n)

end

end A077875.P8158491150735337763

namespace A077875

/-- `A176971(2*n+1)+A077905(2*n)` -/
def P8158491150735337763.Spec : Prop :=
  ∀ n, P8158491150735337763.a n = A077875 n

end A077875

/-! ## A077875.P1651053723683221172

`A203400(2*(n+1))+1-A203400(2*n+1)`
-/

namespace A077875.P1651053723683221172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203400 (2 * (n + 1)) + (1 - A203400 (2 * n + 1))

end

end A077875.P1651053723683221172

namespace A077875

/-- `A203400(2*(n+1))+1-A203400(2*n+1)` -/
def P1651053723683221172.Spec : Prop :=
  ∀ n, P1651053723683221172.a n = A077875 n

end A077875

/-! ## A077875.P2671478285652462907

`1-Δ[A077905(2*n)]`
-/

namespace A077875.P2671478285652462907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077905 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A077875.P2671478285652462907

namespace A077875

/-- `1-Δ[A077905(2*n)]` -/
def P2671478285652462907.Spec : Prop :=
  ∀ n, P2671478285652462907.a n = A077875 n

end A077875

/-! ## A077875.P6790719435897391982

`A077905(2*n+3)`
-/

namespace A077875.P6790719435897391982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077905 (2 * n + 3)

end

end A077875.P6790719435897391982

namespace A077875

/-- `A077905(2*n+3)` -/
def P6790719435897391982.Spec : Prop :=
  ∀ n, P6790719435897391982.a n = A077875 n

end A077875

/-! ## A077875.P10648415608721319677

`1-A078013(2*(n+1))`
-/

namespace A077875.P10648415608721319677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A078013 (2 * (n + 1))

end

end A077875.P10648415608721319677

namespace A077875

/-- `1-A078013(2*(n+1))` -/
def P10648415608721319677.Spec : Prop :=
  ∀ n, P10648415608721319677.a n = A077875 n

end A077875

/-!
# A077876: Expansion of (1-x)^(-1)/(1-x+2*x^2).

The programs for A077876, the canonical program `A077876.P5623919709410208341` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077876 has offset 0).

The definition of A077876 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+3x^2-2x^3))` (program `A077876.P5623919709410208341`, by `A077876.P5623919709410208341.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077876.P5623919709410208341

`ogf(1/(1-2x+3x^2-2x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077876

/-- `ogf(1/(1-2x+3x^2-2x^3))` -/
def P5623919709410208341.Spec : Prop :=
  ∀ n, P5623919709410208341.a n = A077876 n

theorem P5623919709410208341.correct : P5623919709410208341.Spec := by
  intro n
  simp only [A077876]

end A077876

/-! ## A077876.P3320690452218601328

`∑{#}[floor((n+1)/2), C(n+1-#, #+1)*(-2)^#]`
-/

namespace A077876.P3320690452218601328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n + 1 : ℤ) - (k : ℤ)).toNat (k + 1) : ℤ) * (-2) ^ k

end

end A077876.P3320690452218601328

namespace A077876

/-- `∑{#}[floor((n+1)/2), C(n+1-#, #+1)*(-2)^#]` -/
def P3320690452218601328.Spec : Prop :=
  ∀ n, P3320690452218601328.a n = A077876 n

end A077876

/-! ## A077876.P13081651589692594874

`∑[ogf(1/(1-x+2x^2))]`
-/

namespace A077876.P13081651589692594874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077876.P13081651589692594874

namespace A077876

/-- `∑[ogf(1/(1-x+2x^2))]` -/
def P13081651589692594874.Spec : Prop :=
  ∀ n, P13081651589692594874.a n = A077876 n

end A077876

/-! ## A077876.P2168713504090658582

`∑[a(n-1)-2*a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A077876.P2168713504090658582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - 2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077876.P2168713504090658582

namespace A077876

/-- `∑[a(n-1)-2*a(n-2)]` -/
def P2168713504090658582.Spec : Prop :=
  ∀ n, P2168713504090658582.a n = A077876 n

end A077876

/-! ## A077876.P17322464043708908994

`a(n-1)+1-2*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A077876.P17322464043708908994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (1 - 2 * a (n - 2))

end

end A077876.P17322464043708908994

namespace A077876

/-- `a(n-1)+1-2*a(n-2)` -/
def P17322464043708908994.Spec : Prop :=
  ∀ n, P17322464043708908994.a n = A077876 n

end A077876

/-! ## A077876.P12751403261533823536

`1-(2*a(n-2)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A077876.P12751403261533823536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (2 * a (n - 2) - a (n - 1))

end

end A077876.P12751403261533823536

namespace A077876

/-- `1-(2*a(n-2)-a(n-1))` -/
def P12751403261533823536.Spec : Prop :=
  ∀ n, P12751403261533823536.a n = A077876 n

end A077876

/-! ## A077876.P18432002127090565965

`∑[a(n-1)-a(n-2)-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A077876.P18432002127090565965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - f1 (n - 2) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077876.P18432002127090565965

namespace A077876

/-- `∑[a(n-1)-a(n-2)-a(n-2)]` -/
def P18432002127090565965.Spec : Prop :=
  ∀ n, P18432002127090565965.a n = A077876 n

end A077876

/-! ## A077876.P11324492022411568933

`1-(a(n-2)+a(n-2)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A077876.P11324492022411568933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (a (n - 2) + (a (n - 2) - a (n - 1)))

end

end A077876.P11324492022411568933

namespace A077876

/-- `1-(a(n-2)+a(n-2)-a(n-1))` -/
def P11324492022411568933.Spec : Prop :=
  ∀ n, P11324492022411568933.a n = A077876 n

end A077876

/-! ## A077876.P10275012772865374022

`1-(a(n-2)-a(n-1))-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A077876.P10275012772865374022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (a (n - 2) - a (n - 1)) - a (n - 2)

end

end A077876.P10275012772865374022

namespace A077876

/-- `1-(a(n-2)-a(n-1))-a(n-2)` -/
def P10275012772865374022.Spec : Prop :=
  ∀ n, P10275012772865374022.a n = A077876 n

end A077876

/-! ## A077876.P2887431166635703224

`∑[∑[A078020(n)]]`
-/

namespace A077876.P2887431166635703224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077876.P2887431166635703224

namespace A077876

/-- `∑[∑[A078020(n)]]` -/
def P2887431166635703224.Spec : Prop :=
  ∀ n, P2887431166635703224.a n = A077876 n

end A077876

/-! ## A077876.P10339476005299324344

`∑[A107920(n+1)]`
-/

namespace A077876.P10339476005299324344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077876.P10339476005299324344

namespace A077876

/-- `∑[A107920(n+1)]` -/
def P10339476005299324344.Spec : Prop :=
  ∀ n, P10339476005299324344.a n = A077876 n

end A077876

/-! ## A077876.P4173862619036297553

`1-A105578(n+2)`
-/

namespace A077876.P4173862619036297553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A105578 (n + 2)

end

end A077876.P4173862619036297553

namespace A077876

/-- `1-A105578(n+2)` -/
def P4173862619036297553.Spec : Prop :=
  ∀ n, P4173862619036297553.a n = A077876 n

end A077876

/-! ## A077876.P2817351844259910030

`∑[2*A105578(n)-1]`
-/

namespace A077876.P2817351844259910030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105578 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077876.P2817351844259910030

namespace A077876

/-- `∑[2*A105578(n)-1]` -/
def P2817351844259910030.Spec : Prop :=
  ∀ n, P2817351844259910030.a n = A077876 n

end A077876

/-! ## A077876.P5227523779813628817

`(1-A107920(n+3))/2`
-/

namespace A077876.P5227523779813628817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A107920 (n + 3) : ℚ) / 2

end

end A077876.P5227523779813628817

namespace A077876

/-- `(1-A107920(n+3))/2` -/
def P5227523779813628817.Spec : Prop :=
  ∀ n, P5227523779813628817.a n = (A077876 n : ℚ)

end A077876

/-! ## A077876.P7741516626879645098

`and(1, n)-A078033(n+1)`
-/

namespace A077876.P7741516626879645098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - A078033 (n + 1)

end

end A077876.P7741516626879645098

namespace A077876

/-- `and(1, n)-A078033(n+1)` -/
def P7741516626879645098.Spec : Prop :=
  ∀ n, P7741516626879645098.a n = A077876 n

end A077876

/-! ## A077876.P9577987840357786703

`ceil(Δ[floor(A167433(n+1)/2)/2])`
-/

namespace A077876.P9577987840357786703
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A167433 (n + 1) : ℚ) / 2⌋ : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A077876.P9577987840357786703

namespace A077876

/-- `ceil(Δ[floor(A167433(n+1)/2)/2])` -/
def P9577987840357786703.Spec : Prop :=
  ∀ n, P9577987840357786703.a n = A077876 n

end A077876

/-! ## A077876.P4482680638681055788

`A105578(n)-Δ[A105578(n)]`
-/

namespace A077876.P4482680638681055788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 n - (f1 (n + 1) - f1 n)

end

end A077876.P4482680638681055788

namespace A077876

/-- `A105578(n)-Δ[A105578(n)]` -/
def P4482680638681055788.Spec : Prop :=
  ∀ n, P4482680638681055788.a n = A077876 n

end A077876

/-! ## A077876.P4687930856053426014

`A078020(n)+1-A105225(n)`
-/

namespace A077876.P4687930856053426014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n + (1 - A105225 n)

end

end A077876.P4687930856053426014

namespace A077876

/-- `A078020(n)+1-A105225(n)` -/
def P4687930856053426014.Spec : Prop :=
  ∀ n, P4687930856053426014.a n = A077876 n

end A077876

/-! ## A077876.P9462165629995848692

`A078020(n)+A105579(n)-1`
-/

namespace A077876.P9462165629995848692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n + (A105579 n - 1)

end

end A077876.P9462165629995848692

namespace A077876

/-- `A078020(n)+A105579(n)-1` -/
def P9462165629995848692.Spec : Prop :=
  ∀ n, P9462165629995848692.a n = A077876 n

end A077876

/-! ## A077876.P3726086664215384689

`∑[2*A077963(n)]-A077963(n)`
-/

namespace A077876.P3726086664215384689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A077963 n

end

end A077876.P3726086664215384689

namespace A077876

/-- `∑[2*A077963(n)]-A077963(n)` -/
def P3726086664215384689.Spec : Prop :=
  ∀ n, P3726086664215384689.a n = A077876 n

end A077876

/-!
# A077877: Expansion of (1-x)^(-1)/(1-x+2*x^2+x^3).

The programs for A077877, the canonical program `A077877.P17833194531396912386` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077877 has offset 0).

The definition of A077877 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+3x^2-x^3-x^4))` (program `A077877.P17833194531396912386`, by `A077877.P17833194531396912386.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077877.P17833194531396912386

`ogf(1/(1-2x+3x^2-x^3-x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077877

/-- `ogf(1/(1-2x+3x^2-x^3-x^4))` -/
def P17833194531396912386.Spec : Prop :=
  ∀ n, P17833194531396912386.a n = A077877 n

theorem P17833194531396912386.correct : P17833194531396912386.Spec := by
  intro n
  simp only [A077877]

end A077877

/-! ## A077877.P5482013350029724016

`∑[ogf(1/(1-x+2x^2+x^3))]`
-/

namespace A077877.P5482013350029724016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077877.P5482013350029724016

namespace A077877

/-- `∑[ogf(1/(1-x+2x^2+x^3))]` -/
def P5482013350029724016.Spec : Prop :=
  ∀ n, P5482013350029724016.a n = A077877 n

end A077877

/-! ## A077877.P6983595588378783946

`a(n-1)+1-(a(n-3)+2*a(n-2))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A077877.P6983595588378783946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  a (n - 1) + (1 - (a (n - 3) + 2 * a (n - 2)))

end

end A077877.P6983595588378783946

namespace A077877

/-- `a(n-1)+1-(a(n-3)+2*a(n-2))` -/
def P6983595588378783946.Spec : Prop :=
  ∀ n, P6983595588378783946.a n = A077877 n

end A077877

/-! ## A077877.P1599433546643861766

`1-(2*a(n-2)-(a(n-1)-a(n-3)))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A077877.P1599433546643861766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  1 - (2 * a (n - 2) - (a (n - 1) - a (n - 3)))

end

end A077877.P1599433546643861766

namespace A077877

/-- `1-(2*a(n-2)-(a(n-1)-a(n-3)))` -/
def P1599433546643861766.Spec : Prop :=
  ∀ n, P1599433546643861766.a n = A077877 n

end A077877

/-! ## A077877.P8813665262468411071

`1-(a(n-2)-(a(n-1)-a(n-2)-a(n-3)))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A077877.P8813665262468411071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  1 - (a (n - 2) - (a (n - 1) - a (n - 2) - a (n - 3)))

end

end A077877.P8813665262468411071

namespace A077877

/-- `1-(a(n-2)-(a(n-1)-a(n-2)-a(n-3)))` -/
def P8813665262468411071.Spec : Prop :=
  ∀ n, P8813665262468411071.a n = A077877 n

end A077877

/-! ## A077877.P11023295064504904763

`∑[A077955(n)]`
-/

namespace A077877.P11023295064504904763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077877.P11023295064504904763

namespace A077877

/-- `∑[A077955(n)]` -/
def P11023295064504904763.Spec : Prop :=
  ∀ n, P11023295064504904763.a n = A077877 n

end A077877

/-! ## A077877.P13217184307414699241

`∑[∑[A078021(n)]]`
-/

namespace A077877.P13217184307414699241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078021 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077877.P13217184307414699241

namespace A077877

/-- `∑[∑[A078021(n)]]` -/
def P13217184307414699241.Spec : Prop :=
  ∀ n, P13217184307414699241.a n = A077877 n

end A077877

/-!
# A077878: Expansion of (1-x)^(-1)/(1-x+2*x^2+2*x^3).

The programs for A077878, the canonical program `A077878.P14241971983819677809` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077878 has offset 0).

The definition of A077878 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+3x^2-2x^4))` (program `A077878.P14241971983819677809`, by `A077878.P14241971983819677809.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077878.P14241971983819677809

`ogf(1/(1-2x+3x^2-2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077878

/-- `ogf(1/(1-2x+3x^2-2x^4))` -/
def P14241971983819677809.Spec : Prop :=
  ∀ n, P14241971983819677809.a n = A077878 n

theorem P14241971983819677809.correct : P14241971983819677809.Spec := by
  intro n
  simp only [A077878]

end A077878

/-! ## A077878.P12966430809997304394

`∑[ogf(1/(1-x+2x^2+2x^3))]`
-/

namespace A077878.P12966430809997304394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 2, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077878.P12966430809997304394

namespace A077878

/-- `∑[ogf(1/(1-x+2x^2+2x^3))]` -/
def P12966430809997304394.Spec : Prop :=
  ∀ n, P12966430809997304394.a n = A077878 n

end A077878

/-! ## A077878.P13895121811104352017

`a(n-1)+1-2*(a(n-2)+a(n-3))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A077878.P13895121811104352017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  a (n - 1) + (1 - 2 * (a (n - 2) + a (n - 3)))

end

end A077878.P13895121811104352017

namespace A077878

/-- `a(n-1)+1-2*(a(n-2)+a(n-3))` -/
def P13895121811104352017.Spec : Prop :=
  ∀ n, P13895121811104352017.a n = A077878 n

end A077878

/-! ## A077878.P8022545136417194011

`∑[A077956(n)]`
-/

namespace A077878.P8022545136417194011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077878.P8022545136417194011

namespace A077878

/-- `∑[A077956(n)]` -/
def P8022545136417194011.Spec : Prop :=
  ∀ n, P8022545136417194011.a n = A077878 n

end A077878

/-! ## A077878.P15945070766500363720

`∑[∑[A078022(n)]]`
-/

namespace A077878.P15945070766500363720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078022 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077878.P15945070766500363720

namespace A077878

/-- `∑[∑[A078022(n)]]` -/
def P15945070766500363720.Spec : Prop :=
  ∀ n, P15945070766500363720.a n = A077878 n

end A077878

/-! ## A077878.P9319427101396226360

`∑[(-1)^n*A077977(n)]`
-/

namespace A077878.P9319427101396226360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077878.P9319427101396226360

namespace A077878

/-- `∑[(-1)^n*A077977(n)]` -/
def P9319427101396226360.Spec : Prop :=
  ∀ n, P9319427101396226360.a n = A077878 n

end A077878

/-! ## A077878.P9413265651554821492

`∑[A077977(n)/A033999(n)]`
-/

namespace A077878.P9413265651554821492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077977 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077878.P9413265651554821492

namespace A077878

/-- `∑[A077977(n)/A033999(n)]` -/
def P9413265651554821492.Spec : Prop :=
  ∀ n, P9413265651554821492.a n = (A077878 n : ℚ)

end A077878

/-! ## A077878.P13874199030252259926

`∑[A077977(n)/A034947(2*n+1)]`
-/

namespace A077878.P13874199030252259926
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077977 n : ℚ) / (A034947 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077878.P13874199030252259926

namespace A077878

/-- `∑[A077977(n)/A034947(2*n+1)]` -/
def P13874199030252259926.Spec : Prop :=
  ∀ n, P13874199030252259926.a n = (A077878 n : ℚ)

end A077878

/-!
# A077879: Expansion of (1-x)^(-1)/(1-2*x^2-2*x^3).

The programs for A077879, the canonical program `A077879.P10725672369608966614` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077879 has offset 0).

The definition of A077879 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2+2x^4))` (program `A077879.P10725672369608966614`, by `A077879.P10725672369608966614.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077879.P10725672369608966614

`ogf(1/(1-x-2x^2+2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077879

/-- `ogf(1/(1-x-2x^2+2x^4))` -/
def P10725672369608966614.Spec : Prop :=
  ∀ n, P10725672369608966614.a n = A077879 n

theorem P10725672369608966614.correct : P10725672369608966614.Spec := by
  intro n
  simp only [A077879]

end A077879

/-! ## A077879.P11188170849029543186

`∑[2*(a(n-2)+a(n-3))]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A077879.P11188170849029543186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  2 * (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077879.P11188170849029543186

namespace A077879

/-- `∑[2*(a(n-2)+a(n-3))]` -/
def P11188170849029543186.Spec : Prop :=
  ∀ n, (P11188170849029543186.a n : ℤ) = A077879 n

end A077879

/-! ## A077879.P1775117966423007921

`2*(a(n-2)+a(n-3))+1` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A077879.P1775117966423007921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * (a (n - 2) + a (n - 3)) + 1

end

end A077879.P1775117966423007921

namespace A077879

/-- `2*(a(n-2)+a(n-3))+1` -/
def P1775117966423007921.Spec : Prop :=
  ∀ n, (P1775117966423007921.a n : ℤ) = A077879 n

end A077879

/-! ## A077879.P2742969380671966173

`∑[A052907(n)]`
-/

namespace A077879.P2742969380671966173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077879.P2742969380671966173

namespace A077879

/-- `∑[A052907(n)]` -/
def P2742969380671966173.Spec : Prop :=
  ∀ n, P2742969380671966173.a n = A077879 n

end A077879

/-! ## A077879.P2170469739957640680

`∑[∑[A078023(n)]]`
-/

namespace A077879.P2170469739957640680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078023 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077879.P2170469739957640680

namespace A077879

/-- `∑[∑[A078023(n)]]` -/
def P2170469739957640680.Spec : Prop :=
  ∀ n, P2170469739957640680.a n = A077879 n

end A077879

/-! ## A077879.P13601842181593690409

`∑[abs(∑[A078025(n)])]`
-/

namespace A077879.P13601842181593690409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078025 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077879.P13601842181593690409

namespace A077879

/-- `∑[abs(∑[A078025(n)])]` -/
def P13601842181593690409.Spec : Prop :=
  ∀ n, P13601842181593690409.a n = A077879 n

end A077879

/-! ## A077879.P1729048414106399598

`∑[A247302(3*(n+1))]`
-/

namespace A077879.P1729048414106399598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247302 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077879.P1729048414106399598

namespace A077879

/-- `∑[A247302(3*(n+1))]` -/
def P1729048414106399598.Spec : Prop :=
  ∀ n, P1729048414106399598.a n = A077879 n

end A077879

/-!
# A077880: Expansion of (1-x)^(-1)/(1-2*x^2+x^3).

The programs for A077880, the canonical program `A077880.P1887283264162142595` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077880 has offset 0).

The definition of A077880 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2+3x^3-x^4))` (program `A077880.P1887283264162142595`, by `A077880.P1887283264162142595.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077880.P1887283264162142595

`ogf(1/(1-x-2x^2+3x^3-x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077880

/-- `ogf(1/(1-x-2x^2+3x^3-x^4))` -/
def P1887283264162142595.Spec : Prop :=
  ∀ n, P1887283264162142595.a n = A077880 n

theorem P1887283264162142595.correct : P1887283264162142595.Spec := by
  intro n
  simp only [A077880]

end A077880

/-! ## A077880.P6315285010157374821

`2*a(n-2)-a(n-3)+1` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A077880.P6315285010157374821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * a (n - 2) - a (n - 3) + 1

end

end A077880.P6315285010157374821

namespace A077880

/-- `2*a(n-2)-a(n-3)+1` -/
def P6315285010157374821.Spec : Prop :=
  ∀ n, P6315285010157374821.a n = A077880 n

end A077880

/-! ## A077880.P7182679498365154501

`∑[ogf(1/(1-2x^2+x^3))]`
-/

namespace A077880.P7182679498365154501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077880.P7182679498365154501

namespace A077880

/-- `∑[ogf(1/(1-2x^2+x^3))]` -/
def P7182679498365154501.Spec : Prop :=
  ∀ n, P7182679498365154501.a n = A077880 n

end A077880

/-! ## A077880.P14038910406318714437

`∑[2-floor(ϕ*a(n-1))]` with `a(0)=1, a(1)=0`
-/

namespace A077880.P14038910406318714437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 - ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077880.P14038910406318714437

namespace A077880

/-- `∑[2-floor(ϕ*a(n-1))]` -/
def P14038910406318714437.Spec : Prop :=
  ∀ n, P14038910406318714437.a n = A077880 n

end A077880

/-! ## A077880.P8599858966541397114

`∑[∑[a(n-2)-a(n-1)]]` with `a(0)=1, a(1)=-1`
-/

namespace A077880.P8599858966541397114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f2 =>
  f2 (n - 2) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077880.P8599858966541397114

namespace A077880

/-- `∑[∑[a(n-2)-a(n-1)]]` -/
def P8599858966541397114.Spec : Prop :=
  ∀ n, P8599858966541397114.a n = A077880 n

end A077880

/-! ## A077880.P1819032731258087507

`n-Δ[a(n-2)-a(n-1)]` with `a(0)=2, a(1)=1`
-/

namespace A077880.P1819032731258087507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A077880.P1819032731258087507

namespace A077880

/-- `n-Δ[a(n-2)-a(n-1)]` -/
def P1819032731258087507.Spec : Prop :=
  ∀ n, P1819032731258087507.a n = A077880 n

end A077880

/-! ## A077880.P7491432449627409585

`1-a(n-1)+a(n-2)+n` with `a(0)=1, a(1)=1`
-/

namespace A077880.P7491432449627409585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - a (n - 1) + (a (n - 2) + (n : ℤ))

end

end A077880.P7491432449627409585

namespace A077880

/-- `1-a(n-1)+a(n-2)+n` -/
def P7491432449627409585.Spec : Prop :=
  ∀ n, P7491432449627409585.a n = A077880 n

end A077880

/-! ## A077880.P4535274166101514303

`1-(a(n-1)-a(n-2)-n)` with `a(0)=1, a(1)=1`
-/

namespace A077880.P4535274166101514303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (a (n - 1) - a (n - 2) - (n : ℤ))

end

end A077880.P4535274166101514303

namespace A077880

/-- `1-(a(n-1)-a(n-2)-n)` -/
def P4535274166101514303.Spec : Prop :=
  ∀ n, P4535274166101514303.a n = A077880 n

end A077880

/-! ## A077880.P5253341356662646099

`∑[A355020(n)]`
-/

namespace A077880.P5253341356662646099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077880.P5253341356662646099

namespace A077880

/-- `∑[A355020(n)]` -/
def P5253341356662646099.Spec : Prop :=
  ∀ n, P5253341356662646099.a n = A077880 n

end A077880

/-! ## A077880.P12413075378748382656

`A119282(n)+1+n`
-/

namespace A077880.P12413075378748382656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n + 1 + (n : ℤ)

end

end A077880.P12413075378748382656

namespace A077880

/-- `A119282(n)+1+n` -/
def P12413075378748382656.Spec : Prop :=
  ∀ n, P12413075378748382656.a n = A077880 n

end A077880

/-! ## A077880.P13910387308178756023

`∑[1-Δ[A112469(n)]]`
-/

namespace A077880.P13910387308178756023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112469 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077880.P13910387308178756023

namespace A077880

/-- `∑[1-Δ[A112469(n)]]` -/
def P13910387308178756023.Spec : Prop :=
  ∀ n, P13910387308178756023.a n = A077880 n

end A077880

/-! ## A077880.P959854824611522444

`A051792(Δ[n²])+n`
-/

namespace A077880.P959854824611522444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051792 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A077880.P959854824611522444

namespace A077880

/-- `A051792(Δ[n²])+n` -/
def P959854824611522444.Spec : Prop :=
  ∀ n, P959854824611522444.a n = A077880 n

end A077880

/-! ## A077880.P13950112389113147433

`∑[A112469(n+2)-1]`
-/

namespace A077880.P13950112389113147433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112469 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077880.P13950112389113147433

namespace A077880

/-- `∑[A112469(n+2)-1]` -/
def P13950112389113147433.Spec : Prop :=
  ∀ n, P13950112389113147433.a n = A077880 n

end A077880

/-! ## A077880.P11599966098812577099

`Δ[A113312(n+1)]+n`
-/

namespace A077880.P11599966098812577099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A077880.P11599966098812577099

namespace A077880

/-- `Δ[A113312(n+1)]+n` -/
def P11599966098812577099.Spec : Prop :=
  ∀ n, P11599966098812577099.a n = A077880 n

end A077880

/-! ## A077880.P7225127249952700839

`2-A112469(n+1)+n`
-/

namespace A077880.P7225127249952700839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A112469 (n + 1) + (n : ℤ)

end

end A077880.P7225127249952700839

namespace A077880

/-- `2-A112469(n+1)+n` -/
def P7225127249952700839.Spec : Prop :=
  ∀ n, P7225127249952700839.a n = A077880 n

end A077880

/-! ## A077880.P9995977172465932344

`∑[(-1)^n*A000045(n)+1]`
-/

namespace A077880.P9995977172465932344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000045 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077880.P9995977172465932344

namespace A077880

/-- `∑[(-1)^n*A000045(n)+1]` -/
def P9995977172465932344.Spec : Prop :=
  ∀ n, P9995977172465932344.a n = A077880 n

end A077880

/-! ## A077880.P1399793177848695571

`A081659(n)-A005013(n)`
-/

namespace A077880.P1399793177848695571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n - A005013 n

end

end A077880.P1399793177848695571

namespace A077880

/-- `A081659(n)-A005013(n)` -/
def P1399793177848695571.Spec : Prop :=
  ∀ n, P1399793177848695571.a n = A077880 n

end A077880

/-!
# A077881: Expansion of (1-x)^(-1)/(1-2*x^2+2*x^3).

The programs for A077881, the canonical program `A077881.P17125559211656962751` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077881 has offset 0).

The definition of A077881 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2+4x^3-2x^4))` (program `A077881.P17125559211656962751`, by `A077881.P17125559211656962751.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077881.P17125559211656962751

`ogf(1/(1-x-2x^2+4x^3-2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077881

/-- `ogf(1/(1-x-2x^2+4x^3-2x^4))` -/
def P17125559211656962751.Spec : Prop :=
  ∀ n, P17125559211656962751.a n = A077881 n

theorem P17125559211656962751.correct : P17125559211656962751.Spec := by
  intro n
  simp only [A077881]

end A077881

/-! ## A077881.P6716670766682404679

`∑[ogf(1/(1-2x^2+2x^3))]`
-/

namespace A077881.P6716670766682404679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -2, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077881.P6716670766682404679

namespace A077881

/-- `∑[ogf(1/(1-2x^2+2x^3))]` -/
def P6716670766682404679.Spec : Prop :=
  ∀ n, P6716670766682404679.a n = A077881 n

end A077881

/-! ## A077881.P9412044416128337270

`∑[2*(a(n-2)-a(n-3))]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A077881.P9412044416128337270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  2 * (f1 (n - 2) - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077881.P9412044416128337270

namespace A077881

/-- `∑[2*(a(n-2)-a(n-3))]` -/
def P9412044416128337270.Spec : Prop :=
  ∀ n, P9412044416128337270.a n = A077881 n

end A077881

/-! ## A077881.P7722970404998495001

`2*(a(n-2)-a(n-3))+1` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A077881.P7722970404998495001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * (a (n - 2) - a (n - 3)) + 1

end

end A077881.P7722970404998495001

namespace A077881

/-- `2*(a(n-2)-a(n-3))+1` -/
def P7722970404998495001.Spec : Prop :=
  ∀ n, P7722970404998495001.a n = A077881 n

end A077881

/-! ## A077881.P5204113641542091418

`1-2*(a(n-3)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A077881.P5204113641542091418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  1 - 2 * (a (n - 3) - a (n - 2))

end

end A077881.P5204113641542091418

namespace A077881

/-- `1-2*(a(n-3)-a(n-2))` -/
def P5204113641542091418.Spec : Prop :=
  ∀ n, P5204113641542091418.a n = A077881 n

end A077881

/-! ## A077881.P4915729145684184171

`∑[∑[A078025(n)]]`
-/

namespace A077881.P4915729145684184171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078025 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077881.P4915729145684184171

namespace A077881

/-- `∑[∑[A078025(n)]]` -/
def P4915729145684184171.Spec : Prop :=
  ∀ n, P4915729145684184171.a n = A077881 n

end A077881

/-! ## A077881.P16257951496467589149

`∑[(-1)^n*A052907(n)]`
-/

namespace A077881.P16257951496467589149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A052907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077881.P16257951496467589149

namespace A077881

/-- `∑[(-1)^n*A052907(n)]` -/
def P16257951496467589149.Spec : Prop :=
  ∀ n, P16257951496467589149.a n = A077881 n

end A077881

/-!
# A077882: Expansion of x/((1-x)*(1-x^2-2*x^3)).

The programs for A077882, the canonical program `A077882.P960026659132978998` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077882 has offset 0).

The definition of A077882 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-x-x^2-x^3+2x^4))` (program `A077882.P960026659132978998`, by `A077882.P960026659132978998.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077882.P960026659132978998

`ogf(x/(1-x-x^2-x^3+2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077882

/-- `ogf(x/(1-x-x^2-x^3+2x^4))` -/
def P960026659132978998.Spec : Prop :=
  ∀ n, P960026659132978998.a n = A077882 n

theorem P960026659132978998.correct : P960026659132978998.Spec := by
  intro n
  simp only [A077882]

end A077882

/-! ## A077882.P12394859508625501887

`a(n-1)+a(n-2)+a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A077882.P12394859508625501887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - 2 * a (n - 4)

end

end A077882.P12394859508625501887

namespace A077882

/-- `a(n-1)+a(n-2)+a(n-3)-2*a(n-4)` -/
def P12394859508625501887.Spec : Prop :=
  ∀ n, P12394859508625501887.a n = A077882 n

end A077882

/-! ## A077882.P8776297489906051954

`∑[ogf(x/(1-x^2-2x^3))]`
-/

namespace A077882.P8776297489906051954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 0, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077882.P8776297489906051954

namespace A077882

/-- `∑[ogf(x/(1-x^2-2x^3))]` -/
def P8776297489906051954.Spec : Prop :=
  ∀ n, P8776297489906051954.a n = A077882 n

end A077882

/-! ## A077882.P14572753293592897067

`∑[a(n-2)+2*a(n-3)]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A077882.P14572753293592897067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077882.P14572753293592897067

namespace A077882

/-- `∑[a(n-2)+2*a(n-3)]` -/
def P14572753293592897067.Spec : Prop :=
  ∀ n, (P14572753293592897067.a n : ℤ) = A077882 n

end A077882

/-! ## A077882.P16821369567475584019

`2*a(n-3)+1+a(n-2)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A077882.P16821369567475584019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * a (n - 3) + 1 + a (n - 2)

end

end A077882.P16821369567475584019

namespace A077882

/-- `2*a(n-3)+1+a(n-2)` -/
def P16821369567475584019.Spec : Prop :=
  ∀ n, (P16821369567475584019.a n : ℤ) = A077882 n

end A077882

/-! ## A077882.P4985428779312250471

`∑[a(n-3)+a(n-2)+a(n-3)]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A077882.P4985428779312250471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 3) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077882.P4985428779312250471

namespace A077882

/-- `∑[a(n-3)+a(n-2)+a(n-3)]` -/
def P4985428779312250471.Spec : Prop :=
  ∀ n, (P4985428779312250471.a n : ℤ) = A077882 n

end A077882

/-! ## A077882.P10074324054244064431

`a(n-2)+1+a(n-3)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A077882.P10074324054244064431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 2) + 1 + (a (n - 3) + a (n - 3))

end

end A077882.P10074324054244064431

namespace A077882

/-- `a(n-2)+1+a(n-3)+a(n-3)` -/
def P10074324054244064431.Spec : Prop :=
  ∀ n, (P10074324054244064431.a n : ℤ) = A077882 n

end A077882

/-! ## A077882.P173947935179258502

`∑[A159287(n+1)]`
-/

namespace A077882.P173947935179258502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077882.P173947935179258502

namespace A077882

/-- `∑[A159287(n+1)]` -/
def P173947935179258502.Spec : Prop :=
  ∀ n, P173947935179258502.a n = A077882 n

end A077882

/-! ## A077882.P18405212661794424524

`∑[A052947(abs(1-n))]`
-/

namespace A077882.P18405212661794424524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077882.P18405212661794424524

namespace A077882

/-- `∑[A052947(abs(1-n))]` -/
def P18405212661794424524.Spec : Prop :=
  ∀ n, P18405212661794424524.a n = A077882 n

end A077882

/-! ## A077882.P11697979850571124075

`A159284(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A077882.P11697979850571124075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A159284 n + a (n - 2)

end

end A077882.P11697979850571124075

namespace A077882

/-- `A159284(n)+a(n-2)` -/
def P11697979850571124075.Spec : Prop :=
  ∀ n, P11697979850571124075.a n = A077882 n

end A077882

/-! ## A077882.P4808685821345749718

`A052947(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A077882.P4808685821345749718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A052947 (n - 1) + a (n - 1)

end

end A077882.P4808685821345749718

namespace A077882

/-- `A052947(n-1)+a(n-1)` -/
def P4808685821345749718.Spec : Prop :=
  ∀ n, P4808685821345749718.a n = A077882 n

end A077882

/-! ## A077882.P16668477580288363654

`∑[∑[A078026(n)]-A078026(n)]`
-/

namespace A077882.P16668477580288363654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078026 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A078026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077882.P16668477580288363654

namespace A077882

/-- `∑[∑[A078026(n)]-A078026(n)]` -/
def P16668477580288363654.Spec : Prop :=
  ∀ n, P16668477580288363654.a n = A077882 n

end A077882

/-! ## A077882.P9467637891844515756

`∑[A052947(n)]-A052947(n)`
-/

namespace A077882.P9467637891844515756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052947 n

end

end A077882.P9467637891844515756

namespace A077882

/-- `∑[A052947(n)]-A052947(n)` -/
def P9467637891844515756.Spec : Prop :=
  ∀ n, P9467637891844515756.a n = A077882 n

end A077882

/-! ## A077882.P1964076890379258599

`A103648(4*n)`
-/

namespace A077882.P1964076890379258599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103648 (4 * n)

end

end A077882.P1964076890379258599

namespace A077882

/-- `A103648(4*n)` -/
def P1964076890379258599.Spec : Prop :=
  ∀ n, P1964076890379258599.a n = A077882 n

end A077882

/-! ## A077882.P2049184851395329348

`(A159284(n+3)-1)/2`
-/

namespace A077882.P2049184851395329348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159284 (n + 3) - 1 : ℚ) / 2

end

end A077882.P2049184851395329348

namespace A077882

/-- `(A159284(n+3)-1)/2` -/
def P2049184851395329348.Spec : Prop :=
  ∀ n, P2049184851395329348.a n = (A077882 n : ℚ)

end A077882

/-!
# A077883: Expansion of (1-x)^(-1)/(1-x^2+x^3).

The programs for A077883, the canonical program `A077883.P12827503493249696112` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077883 has offset 0).

The definition of A077883 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+2x^3-x^4))` (program `A077883.P12827503493249696112`, by `A077883.P12827503493249696112.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077883.P12827503493249696112

`ogf(1/(1-x-x^2+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077883

/-- `ogf(1/(1-x-x^2+2x^3-x^4))` -/
def P12827503493249696112.Spec : Prop :=
  ∀ n, P12827503493249696112.a n = A077883 n

theorem P12827503493249696112.correct : P12827503493249696112.Spec := by
  intro n
  simp only [A077883]

end A077883

/-! ## A077883.P4848752760155131832

`a(n-1)+a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A077883.P4848752760155131832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1] fun n a =>
  a (n - 1) + a (n - 2) - 2 * a (n - 3) + a (n - 4)

end

end A077883.P4848752760155131832

namespace A077883

/-- `a(n-1)+a(n-2)-2*a(n-3)+a(n-4)` -/
def P4848752760155131832.Spec : Prop :=
  ∀ n, P4848752760155131832.a n = A077883 n

end A077883

/-! ## A077883.P15264350778233388987

`∑[ogf(1/(1-x^2+x^3))]`
-/

namespace A077883.P15264350778233388987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077883.P15264350778233388987

namespace A077883

/-- `∑[ogf(1/(1-x^2+x^3))]` -/
def P15264350778233388987.Spec : Prop :=
  ∀ n, P15264350778233388987.a n = A077883 n

end A077883

/-! ## A077883.P6020321220999696335

`∑[a(n-2)-a(n-3)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A077883.P6020321220999696335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077883.P6020321220999696335

namespace A077883

/-- `∑[a(n-2)-a(n-3)]` -/
def P6020321220999696335.Spec : Prop :=
  ∀ n, P6020321220999696335.a n = A077883 n

end A077883

/-! ## A077883.P14426800828905804260

`a(n-2)+1-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A077883.P14426800828905804260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) + (1 - a (n - 3))

end

end A077883.P14426800828905804260

namespace A077883

/-- `a(n-2)+1-a(n-3)` -/
def P14426800828905804260.Spec : Prop :=
  ∀ n, P14426800828905804260.a n = A077883 n

end A077883

/-! ## A077883.P7695035444434023254

`1-(a(n-3)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A077883.P7695035444434023254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  1 - (a (n - 3) - a (n - 2))

end

end A077883.P7695035444434023254

namespace A077883

/-- `1-(a(n-3)-a(n-2))` -/
def P7695035444434023254.Spec : Prop :=
  ∀ n, P7695035444434023254.a n = A077883 n

end A077883

/-! ## A077883.P16429701577127754699

`1-Δ[A124745(n)]`
-/

namespace A077883.P16429701577127754699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A077883.P16429701577127754699

namespace A077883

/-- `1-Δ[A124745(n)]` -/
def P16429701577127754699.Spec : Prop :=
  ∀ n, P16429701577127754699.a n = A077883 n

end A077883

/-! ## A077883.P15243135050550560077

`1-A124745(n+3)`
-/

namespace A077883.P15243135050550560077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A124745 (n + 3)

end

end A077883.P15243135050550560077

namespace A077883

/-- `1-A124745(n+3)` -/
def P15243135050550560077.Spec : Prop :=
  ∀ n, P15243135050550560077.a n = A077883 n

end A077883

/-! ## A077883.P11598756206240811707

`∑[-A124745(n+5)]`
-/

namespace A077883.P11598756206240811707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A124745 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077883.P11598756206240811707

namespace A077883

/-- `∑[-A124745(n+5)]` -/
def P11598756206240811707.Spec : Prop :=
  ∀ n, P11598756206240811707.a n = A077883 n

end A077883

/-! ## A077883.P13251707063982562237

`∑[(-1)^n*A182097(n)]`
-/

namespace A077883.P13251707063982562237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A182097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077883.P13251707063982562237

namespace A077883

/-- `∑[(-1)^n*A182097(n)]` -/
def P13251707063982562237.Spec : Prop :=
  ∀ n, P13251707063982562237.a n = A077883 n

end A077883

/-! ## A077883.P13539033849706248836

`∑[∑[A078027(n)]*A033999(n)]`
-/

namespace A077883.P13539033849706248836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077883.P13539033849706248836

namespace A077883

/-- `∑[∑[A078027(n)]*A033999(n)]` -/
def P13539033849706248836.Spec : Prop :=
  ∀ n, P13539033849706248836.a n = A077883 n

end A077883

/-! ## A077883.P3452409670337859615

`∑[Δ[A023434(n)]*A033999(n)]`
-/

namespace A077883.P3452409670337859615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077883.P3452409670337859615

namespace A077883

/-- `∑[Δ[A023434(n)]*A033999(n)]` -/
def P3452409670337859615.Spec : Prop :=
  ∀ n, P3452409670337859615.a n = A077883 n

end A077883

/-! ## A077883.P11887905760359538867

`A124745(n+4)+∑[A124745(n+1)]`
-/

namespace A077883.P11887905760359538867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077883.P11887905760359538867

namespace A077883

/-- `A124745(n+4)+∑[A124745(n+1)]` -/
def P11887905760359538867.Spec : Prop :=
  ∀ n, P11887905760359538867.a n = A077883 n

end A077883

/-! ## A077883.P1398213572789726991

`1-A000931(n+1)*A033999(n+1)`
-/

namespace A077883.P1398213572789726991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000931 (n + 1) * A033999 (n + 1)

end

end A077883.P1398213572789726991

namespace A077883

/-- `1-A000931(n+1)*A033999(n+1)` -/
def P1398213572789726991.Spec : Prop :=
  ∀ n, P1398213572789726991.a n = A077883 n

end A077883

/-! ## A077883.P13835274735951026861

`A000931(n+1)*A056594(2*n)+1`
-/

namespace A077883.P13835274735951026861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1) * A056594 (2 * n) + 1

end

end A077883.P13835274735951026861

namespace A077883

/-- `A000931(n+1)*A056594(2*n)+1` -/
def P13835274735951026861.Spec : Prop :=
  ∀ n, P13835274735951026861.a n = A077883 n

end A077883

/-! ## A077883.P94474126873874164

`A000931(n+1)*A057077(2*n)+1`
-/

namespace A077883.P94474126873874164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1) * A057077 (2 * n) + 1

end

end A077883.P94474126873874164

namespace A077883

/-- `A000931(n+1)*A057077(2*n)+1` -/
def P94474126873874164.Spec : Prop :=
  ∀ n, P94474126873874164.a n = A077883 n

end A077883

/-! ## A077883.P15410695006831840112

`(A033999(n)+A000931(n+1))*A033999(n)`
-/

namespace A077883.P15410695006831840112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + A000931 (n + 1)) * A033999 n

end

end A077883.P15410695006831840112

namespace A077883

/-- `(A033999(n)+A000931(n+1))*A033999(n)` -/
def P15410695006831840112.Spec : Prop :=
  ∀ n, P15410695006831840112.a n = A077883 n

end A077883

/-! ## A077883.P13176123109305141098

`(A000931(n+1)-A033999(n+1))/A033999(n)`
-/

namespace A077883.P13176123109305141098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000931 (n + 1) - A033999 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A077883.P13176123109305141098

namespace A077883

/-- `(A000931(n+1)-A033999(n+1))/A033999(n)` -/
def P13176123109305141098.Spec : Prop :=
  ∀ n, P13176123109305141098.a n = (A077883 n : ℚ)

end A077883

/-!
# A077884: Expansion of (1-x)^(-1)/(1-x^2+2*x^3).

The programs for A077884, the canonical program `A077884.P9207037368059926195` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077884 has offset 0).

The definition of A077884 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+3x^3-2x^4))` (program `A077884.P9207037368059926195`, by `A077884.P9207037368059926195.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077884.P9207037368059926195

`ogf(1/(1-x-x^2+3x^3-2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077884

/-- `ogf(1/(1-x-x^2+3x^3-2x^4))` -/
def P9207037368059926195.Spec : Prop :=
  ∀ n, P9207037368059926195.a n = A077884 n

theorem P9207037368059926195.correct : P9207037368059926195.Spec := by
  intro n
  simp only [A077884]

end A077884

/-! ## A077884.P864750467007753804

`∑[ogf(1/(1-x^2+2x^3))]`
-/

namespace A077884.P864750467007753804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077884.P864750467007753804

namespace A077884

/-- `∑[ogf(1/(1-x^2+2x^3))]` -/
def P864750467007753804.Spec : Prop :=
  ∀ n, P864750467007753804.a n = A077884 n

end A077884

/-! ## A077884.P15392291112669569450

`∑[a(n-2)-2*a(n-3)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A077884.P15392291112669569450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 2) - 2 * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077884.P15392291112669569450

namespace A077884

/-- `∑[a(n-2)-2*a(n-3)]` -/
def P15392291112669569450.Spec : Prop :=
  ∀ n, P15392291112669569450.a n = A077884 n

end A077884

/-! ## A077884.P13392654982080104150

`1+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A077884.P13392654982080104150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  1 + a (n - 2) - 2 * a (n - 3)

end

end A077884.P13392654982080104150

namespace A077884

/-- `1+a(n-2)-2*a(n-3)` -/
def P13392654982080104150.Spec : Prop :=
  ∀ n, P13392654982080104150.a n = A077884 n

end A077884

/-! ## A077884.P12900739650218990273

`1-(2*a(n-3)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A077884.P12900739650218990273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  1 - (2 * a (n - 3) - a (n - 2))

end

end A077884.P12900739650218990273

namespace A077884

/-- `1-(2*a(n-3)-a(n-2))` -/
def P12900739650218990273.Spec : Prop :=
  ∀ n, P12900739650218990273.a n = A077884 n

end A077884

/-! ## A077884.P422485661100728083

`∑[a(n-2)-a(n-3)-a(n-3)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A077884.P422485661100728083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 3) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077884.P422485661100728083

namespace A077884

/-- `∑[a(n-2)-a(n-3)-a(n-3)]` -/
def P422485661100728083.Spec : Prop :=
  ∀ n, P422485661100728083.a n = A077884 n

end A077884

/-! ## A077884.P9307226081760578070

`a(n-2)+1-(a(n-3)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A077884.P9307226081760578070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) + (1 - (a (n - 3) + a (n - 3)))

end

end A077884.P9307226081760578070

namespace A077884

/-- `a(n-2)+1-(a(n-3)+a(n-3))` -/
def P9307226081760578070.Spec : Prop :=
  ∀ n, P9307226081760578070.a n = A077884 n

end A077884

/-! ## A077884.P4306251004487587045

`1-(a(n-3)-(a(n-2)-a(n-3)))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A077884.P4306251004487587045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  1 - (a (n - 3) - (a (n - 2) - a (n - 3)))

end

end A077884.P4306251004487587045

namespace A077884

/-- `1-(a(n-3)-(a(n-2)-a(n-3)))` -/
def P4306251004487587045.Spec : Prop :=
  ∀ n, P4306251004487587045.a n = A077884 n

end A077884

/-! ## A077884.P15736466304235350925

`∑[∑[A078028(n)]]`
-/

namespace A077884.P15736466304235350925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078028 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077884.P15736466304235350925

namespace A077884

/-- `∑[∑[A078028(n)]]` -/
def P15736466304235350925.Spec : Prop :=
  ∀ n, P15736466304235350925.a n = A077884 n

end A077884

/-!
# A077885: Expansion of (1-x)^(-1)/(1-2*x^3).

The programs for A077885, the canonical program `A077885.P1202771295806201968` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077885 has offset 0).

The definition of A077885 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^3+2x^4))` (program `A077885.P1202771295806201968`, by `A077885.P1202771295806201968.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077885.P1202771295806201968

`ogf(1/(1-x-2x^3+2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077885

/-- `ogf(1/(1-x-2x^3+2x^4))` -/
def P1202771295806201968.Spec : Prop :=
  ∀ n, P1202771295806201968.a n = A077885 n

theorem P1202771295806201968.correct : P1202771295806201968.Spec := by
  intro n
  simp only [A077885]

end A077885

/-! ## A077885.P1516905574617179306

`∑{#}[floor(n/3), 2^#]`
-/

namespace A077885.P1516905574617179306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, 2 ^ k

end

end A077885.P1516905574617179306

namespace A077885

/-- `∑{#}[floor(n/3), 2^#]` -/
def P1516905574617179306.Spec : Prop :=
  ∀ n, (P1516905574617179306.a n : ℤ) = A077885 n

end A077885

/-! ## A077885.P15731063302377267414

`∑[ogf(1/(1-2x^3))]`
-/

namespace A077885.P15731063302377267414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077885.P15731063302377267414

namespace A077885

/-- `∑[ogf(1/(1-2x^3))]` -/
def P15731063302377267414.Spec : Prop :=
  ∀ n, P15731063302377267414.a n = A077885 n

end A077885

/-! ## A077885.P8195112792742226402

`∏[2-n²%3]-1`
-/

namespace A077885.P8195112792742226402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A077885.P8195112792742226402

namespace A077885

/-- `∏[2-n²%3]-1` -/
def P8195112792742226402.Spec : Prop :=
  ∀ n, P8195112792742226402.a n = A077885 n

end A077885

/-! ## A077885.P3719014089511502122

`∏[((n+2)%3)!]-1`
-/

namespace A077885.P3719014089511502122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n + 2) % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A077885.P3719014089511502122

namespace A077885

/-- `∏[((n+2)%3)!]-1` -/
def P3719014089511502122.Spec : Prop :=
  ∀ n, P3719014089511502122.a n = A077885 n

end A077885

/-! ## A077885.P5713323262365654045

`2^∑[char[3*n]]-1`
-/

namespace A077885.P5713323262365654045
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A077885.P5713323262365654045

namespace A077885

/-- `2^∑[char[3*n]]-1` -/
def P5713323262365654045.Spec : Prop :=
  ∀ n, P5713323262365654045.a n = A077885 n

end A077885

/-! ## A077885.P8169268051121909441

`∑[2*a(n-3)]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A077885.P8169268051121909441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  2 * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077885.P8169268051121909441

namespace A077885

/-- `∑[2*a(n-3)]` -/
def P8169268051121909441.Spec : Prop :=
  ∀ n, (P8169268051121909441.a n : ℤ) = A077885 n

end A077885

/-! ## A077885.P3011345744073784217

`or(1, 2*a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077885.P3011345744073784217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Nat.lor 1 (2 * a (n - 3))

end

end A077885.P3011345744073784217

namespace A077885

/-- `or(1, 2*a(n-3))` -/
def P3011345744073784217.Spec : Prop :=
  ∀ n, (P3011345744073784217.a n : ℤ) = A077885 n

end A077885

/-! ## A077885.P6530809674874165757

`xor(1, 2*a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077885.P6530809674874165757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Nat.xor 1 (2 * a (n - 3))

end

end A077885.P6530809674874165757

namespace A077885

/-- `xor(1, 2*a(n-3))` -/
def P6530809674874165757.Spec : Prop :=
  ∀ n, (P6530809674874165757.a n : ℤ) = A077885 n

end A077885

/-! ## A077885.P2806501521120951135

`floor(2*a(n-3)+ϕ)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077885.P2806501521120951135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ⌊(2 * a (n - 3) : ℝ) + Real.goldenRatio⌋

end

end A077885.P2806501521120951135

namespace A077885

/-- `floor(2*a(n-3)+ϕ)` -/
def P2806501521120951135.Spec : Prop :=
  ∀ n, P2806501521120951135.a n = A077885 n

end A077885

/-! ## A077885.P12404527085700988999

`2*(a(n-3)+1/2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077885.P12404527085700988999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * (a (n - 3) + (1 : ℚ) / 2)

end

end A077885.P12404527085700988999

namespace A077885

/-- `2*(a(n-3)+1/2)` -/
def P12404527085700988999.Spec : Prop :=
  ∀ n, P12404527085700988999.a n = (A077885 n : ℚ)

end A077885

/-! ## A077885.P5661021541935548649

`∑[a(n-3)+a(n-3)]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A077885.P5661021541935548649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 3) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077885.P5661021541935548649

namespace A077885

/-- `∑[a(n-3)+a(n-3)]` -/
def P5661021541935548649.Spec : Prop :=
  ∀ n, (P5661021541935548649.a n : ℤ) = A077885 n

end A077885

/-! ## A077885.P409581386190239384

`or(a(n-3)+1, a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077885.P409581386190239384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Nat.lor (a (n - 3) + 1) (a (n - 1))

end

end A077885.P409581386190239384

namespace A077885

/-- `or(a(n-3)+1, a(n-1))` -/
def P409581386190239384.Spec : Prop :=
  ∀ n, (P409581386190239384.a n : ℤ) = A077885 n

end A077885

/-! ## A077885.P9329889210481220096

`xor(a(n-3)+1, a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077885.P9329889210481220096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Nat.xor (a (n - 3) + 1) (a (n - 3))

end

end A077885.P9329889210481220096

namespace A077885

/-- `xor(a(n-3)+1, a(n-3))` -/
def P9329889210481220096.Spec : Prop :=
  ∀ n, (P9329889210481220096.a n : ℤ) = A077885 n

end A077885

/-! ## A077885.P17269522112017390300

`floor(a(n-3)+a(n-3)+1)` with `a(0)=1, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A077885.P17269522112017390300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) + (a (n - 3) + 1)

end

end A077885.P17269522112017390300

namespace A077885

/-- `floor(a(n-3)+a(n-3)+1)` -/
def P17269522112017390300.Spec : Prop :=
  ∀ n, (P17269522112017390300.a n : ℤ) = A077885 n

end A077885

/-! ## A077885.P14631381593523914254

`∑[A077958(n)]`
-/

namespace A077885.P14631381593523914254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077885.P14631381593523914254

namespace A077885

/-- `∑[A077958(n)]` -/
def P14631381593523914254.Spec : Prop :=
  ∀ n, P14631381593523914254.a n = A077885 n

end A077885

/-! ## A077885.P13385731477626190198

`∑[abs(A077959(n))]`
-/

namespace A077885.P13385731477626190198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077959 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077885.P13385731477626190198

namespace A077885

/-- `∑[abs(A077959(n))]` -/
def P13385731477626190198.Spec : Prop :=
  ∀ n, P13385731477626190198.a n = A077885 n

end A077885

/-! ## A077885.P17167566978072044784

`∑[∑[A078029(n)]]`
-/

namespace A077885.P17167566978072044784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078029 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077885.P17167566978072044784

namespace A077885

/-- `∑[∑[A078029(n)]]` -/
def P17167566978072044784.Spec : Prop :=
  ∀ n, P17167566978072044784.a n = A077885 n

end A077885

/-! ## A077885.P9481504937269436862

`∑[abs(∑[A078030(n)])]`
-/

namespace A077885.P9481504937269436862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078030 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077885.P9481504937269436862

namespace A077885

/-- `∑[abs(∑[A078030(n)])]` -/
def P9481504937269436862.Spec : Prop :=
  ∀ n, P9481504937269436862.a n = A077885 n

end A077885

/-! ## A077885.P8268237723703167747

`A000225(∑[char[3*(n+1)]]+1)`
-/

namespace A077885.P8268237723703167747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A077885.P8268237723703167747

namespace A077885

/-- `A000225(∑[char[3*(n+1)]]+1)` -/
def P8268237723703167747.Spec : Prop :=
  ∀ n, P8268237723703167747.a n = A077885 n

end A077885

/-!
# A077886: Expansion of (1-x)^(-1)/(1+2*x^3).

The programs for A077886, the canonical program `A077886.P18046016401779848007` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077886 has offset 0).

The definition of A077886 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+2x^3-2x^4))` (program `A077886.P18046016401779848007`, by `A077886.P18046016401779848007.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077886.P18046016401779848007

`ogf(1/(1-x+2x^3-2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077886

/-- `ogf(1/(1-x+2x^3-2x^4))` -/
def P18046016401779848007.Spec : Prop :=
  ∀ n, P18046016401779848007.a n = A077886 n

theorem P18046016401779848007.correct : P18046016401779848007.Spec := by
  intro n
  simp only [A077886]

end A077886

/-! ## A077886.P14660187252365096788

`a(n-1)-2*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-1`
-/

namespace A077886.P14660187252365096788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, -1] fun n a =>
  a (n - 1) - 2 * a (n - 3) + 2 * a (n - 4)

end

end A077886.P14660187252365096788

namespace A077886

/-- `a(n-1)-2*a(n-3)+2*a(n-4)` -/
def P14660187252365096788.Spec : Prop :=
  ∀ n, P14660187252365096788.a n = A077886 n

end A077886

/-! ## A077886.P15033902013231589666

`∑{#}[floor(n/3), (-2)^#]`
-/

namespace A077886.P15033902013231589666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-2) ^ k

end

end A077886.P15033902013231589666

namespace A077886

/-- `∑{#}[floor(n/3), (-2)^#]` -/
def P15033902013231589666.Spec : Prop :=
  ∀ n, P15033902013231589666.a n = A077886 n

end A077886

/-! ## A077886.P3567983384332974106

`∑[(1-gcd(3, n))^(n/3)]`
-/

namespace A077886.P3567983384332974106
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.gcd 3 n : ℤ) : ℝ) ^ ((n : ℚ) / 3 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077886.P3567983384332974106

namespace A077886

/-- `∑[(1-gcd(3, n))^(n/3)]` -/
def P3567983384332974106.Spec : Prop :=
  ∀ n, P3567983384332974106.a n = (A077886 n : ℝ)

end A077886

/-! ## A077886.P12625338217858071143

`1-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077886.P12625338217858071143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  1 - 2 * a (n - 3)

end

end A077886.P12625338217858071143

namespace A077886

/-- `1-2*a(n-3)` -/
def P12625338217858071143.Spec : Prop :=
  ∀ n, P12625338217858071143.a n = A077886 n

end A077886

/-! ## A077886.P16241013314754317697

`1-a(n-3)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077886.P16241013314754317697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  1 - a (n - 3) - a (n - 3)

end

end A077886.P16241013314754317697

namespace A077886

/-- `1-a(n-3)-a(n-3)` -/
def P16241013314754317697.Spec : Prop :=
  ∀ n, P16241013314754317697.a n = A077886 n

end A077886

/-! ## A077886.P6072993695259816126

`∑[A077959(n)]`
-/

namespace A077886.P6072993695259816126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077886.P6072993695259816126

namespace A077886

/-- `∑[A077959(n)]` -/
def P6072993695259816126.Spec : Prop :=
  ∀ n, P6072993695259816126.a n = A077886 n

end A077886

/-! ## A077886.P491441995029522652

`∑[∑[A078030(n)]]`
-/

namespace A077886.P491441995029522652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078030 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077886.P491441995029522652

namespace A077886

/-- `∑[∑[A078030(n)]]` -/
def P491441995029522652.Spec : Prop :=
  ∀ n, P491441995029522652.a n = A077886 n

end A077886

/-! ## A077886.P2945375273350564456

`A077925(floor(n/3))`
-/

namespace A077886.P2945375273350564456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 ⌊(n : ℚ) / 3⌋.toNat

end

end A077886.P2945375273350564456

namespace A077886

/-- `A077925(floor(n/3))` -/
def P2945375273350564456.Spec : Prop :=
  ∀ n, P2945375273350564456.a n = A077886 n

end A077886

/-! ## A077886.P16805584046471673002

`A077953(floor(2*n/3))`
-/

namespace A077886.P16805584046471673002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077953 ⌊2 * ((n : ℚ) / 3)⌋.toNat

end

end A077886.P16805584046471673002

namespace A077886

/-- `A077953(floor(2*n/3))` -/
def P16805584046471673002.Spec : Prop :=
  ∀ n, P16805584046471673002.a n = A077886 n

end A077886

/-! ## A077886.P17550348450087033593

`∑[A077966(A092942(n))]`
-/

namespace A077886.P17550348450087033593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 (A092942 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077886.P17550348450087033593

namespace A077886

/-- `∑[A077966(A092942(n))]` -/
def P17550348450087033593.Spec : Prop :=
  ∀ n, P17550348450087033593.a n = A077886 n

end A077886

/-! ## A077886.P15178292693227041047

`∑[A077966(A005131(n+1))]`
-/

namespace A077886.P15178292693227041047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 (A005131 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077886.P15178292693227041047

namespace A077886

/-- `∑[A077966(A005131(n+1))]` -/
def P15178292693227041047.Spec : Prop :=
  ∀ n, P15178292693227041047.a n = A077886 n

end A077886

/-! ## A077886.P9356650447914052447

`∑[A057077(2*n)*A077958(n)]`
-/

namespace A077886.P9356650447914052447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A077958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077886.P9356650447914052447

namespace A077886

/-- `∑[A057077(2*n)*A077958(n)]` -/
def P9356650447914052447.Spec : Prop :=
  ∀ n, P9356650447914052447.a n = A077886 n

end A077886

/-! ## A077886.P16289311968260204891

`∑[ogf(1/(1+2x^3))]`
-/

namespace A077886.P16289311968260204891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 0, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077886.P16289311968260204891

namespace A077886

/-- `∑[ogf(1/(1+2x^3))]` -/
def P16289311968260204891.Spec : Prop :=
  ∀ n, P16289311968260204891.a n = A077886 n

end A077886

/-! ## A077886.P8024176566935308863

`A268741(A008620(n))-4`
-/

namespace A077886.P8024176566935308863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268741 (A008620 n).toNat - 4

end

end A077886.P8024176566935308863

namespace A077886

/-- `A268741(A008620(n))-4` -/
def P8024176566935308863.Spec : Prop :=
  ∀ n, P8024176566935308863.a n = A077886 n

end A077886

/-! ## A077886.P7483517397691944260

`∑[A077966(A006369(n))]`
-/

namespace A077886.P7483517397691944260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 (A006369 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077886.P7483517397691944260

namespace A077886

/-- `∑[A077966(A006369(n))]` -/
def P7483517397691944260.Spec : Prop :=
  ∀ n, P7483517397691944260.a n = A077886 n

end A077886

/-!
# A077887: Expansion of (1-x)^(-1)/(1+x^2-2*x^3).

The programs for A077887, the canonical program `A077887.P13659556009358588109` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077887 has offset 0).

The definition of A077887 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+x^2-3x^3+2x^4))` (program `A077887.P13659556009358588109`, by `A077887.P13659556009358588109.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077887.P13659556009358588109

`ogf(1/(1-x+x^2-3x^3+2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077887

/-- `ogf(1/(1-x+x^2-3x^3+2x^4))` -/
def P13659556009358588109.Spec : Prop :=
  ∀ n, P13659556009358588109.a n = A077887 n

theorem P13659556009358588109.correct : P13659556009358588109.Spec := by
  intro n
  simp only [A077887]

end A077887

/-! ## A077887.P29352974281031174

`n+1-a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A077887.P29352974281031174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n + 1 : ℤ) - a (n - 1) - 2 * a (n - 2)

end

end A077887.P29352974281031174

namespace A077887

/-- `n+1-a(n-1)-2*a(n-2)` -/
def P29352974281031174.Spec : Prop :=
  ∀ n, P29352974281031174.a n = A077887 n

end A077887

/-! ## A077887.P8427867820866286467

`∑[∑[ogf(1/(1+x+2x^2))]]`
-/

namespace A077887.P8427867820866286467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 1, 2] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077887.P8427867820866286467

namespace A077887

/-- `∑[∑[ogf(1/(1+x+2x^2))]]` -/
def P8427867820866286467.Spec : Prop :=
  ∀ n, P8427867820866286467.a n = A077887 n

end A077887

/-! ## A077887.P8356960190870079871

`∑[2*a(n-3)-a(n-2)]` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A077887.P8356960190870079871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n f1 =>
  2 * f1 (n - 3) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077887.P8356960190870079871

namespace A077887

/-- `∑[2*a(n-3)-a(n-2)]` -/
def P8356960190870079871.Spec : Prop :=
  ∀ n, P8356960190870079871.a n = A077887 n

end A077887

/-! ## A077887.P7906878407684109692

`2*a(n-3)+1-a(n-2)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077887.P7906878407684109692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  2 * a (n - 3) + (1 - a (n - 2))

end

end A077887.P7906878407684109692

namespace A077887

/-- `2*a(n-3)+1-a(n-2)` -/
def P7906878407684109692.Spec : Prop :=
  ∀ n, P7906878407684109692.a n = A077887 n

end A077887

/-! ## A077887.P14679666557623822495

`1-(a(n-2)-2*a(n-3))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077887.P14679666557623822495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  1 - (a (n - 2) - 2 * a (n - 3))

end

end A077887.P14679666557623822495

namespace A077887

/-- `1-(a(n-2)-2*a(n-3))` -/
def P14679666557623822495.Spec : Prop :=
  ∀ n, P14679666557623822495.a n = A077887 n

end A077887

/-! ## A077887.P13084343259935382320

`∑[a(n-3)+a(n-3)-a(n-2)]` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A077887.P13084343259935382320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n f1 =>
  f1 (n - 3) + (f1 (n - 3) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077887.P13084343259935382320

namespace A077887

/-- `∑[a(n-3)+a(n-3)-a(n-2)]` -/
def P13084343259935382320.Spec : Prop :=
  ∀ n, P13084343259935382320.a n = A077887 n

end A077887

/-! ## A077887.P9311916023844190427

`1-a(n-2)+a(n-3)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077887.P9311916023844190427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  1 - a (n - 2) + (a (n - 3) + a (n - 3))

end

end A077887.P9311916023844190427

namespace A077887

/-- `1-a(n-2)+a(n-3)+a(n-3)` -/
def P9311916023844190427.Spec : Prop :=
  ∀ n, P9311916023844190427.a n = A077887 n

end A077887

/-! ## A077887.P9874094355711841654

`1-(a(n-2)-a(n-3)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077887.P9874094355711841654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  1 - (a (n - 2) - a (n - 3) - a (n - 3))

end

end A077887.P9874094355711841654

namespace A077887

/-- `1-(a(n-2)-a(n-3)-a(n-3))` -/
def P9874094355711841654.Spec : Prop :=
  ∀ n, P9874094355711841654.a n = A077887 n

end A077887

/-! ## A077887.P16427416717602223241

`∑[A077912(n)]`
-/

namespace A077887.P16427416717602223241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077887.P16427416717602223241

namespace A077887

/-- `∑[A077912(n)]` -/
def P16427416717602223241.Spec : Prop :=
  ∀ n, P16427416717602223241.a n = A077887 n

end A077887

/-! ## A077887.P950953127098062378

`∑[∑[A110512(n)-A001607(n)]]`
-/

namespace A077887.P950953127098062378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 n - A001607 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077887.P950953127098062378

namespace A077887

/-- `∑[∑[A110512(n)-A001607(n)]]` -/
def P950953127098062378.Spec : Prop :=
  ∀ n, P950953127098062378.a n = A077887 n

end A077887

/-! ## A077887.P11273665838751142427

`∑[∑[A001607(n+1)]]`
-/

namespace A077887.P11273665838751142427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077887.P11273665838751142427

namespace A077887

/-- `∑[∑[A001607(n+1)]]` -/
def P11273665838751142427.Spec : Prop :=
  ∀ n, P11273665838751142427.a n = A077887 n

end A077887

/-! ## A077887.P2161821547684850598

`∑[∑[∑[A078050(n)]]]`
-/

namespace A077887.P2161821547684850598
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078050 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077887.P2161821547684850598

namespace A077887

/-- `∑[∑[∑[A078050(n)]]]` -/
def P2161821547684850598.Spec : Prop :=
  ∀ n, P2161821547684850598.a n = A077887 n

end A077887

/-!
# A077888: Expansion of (1-x)^(-1)/(1+x^2-x^3).

The programs for A077888, the canonical program `A077888.P15023020038911266328` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077888 has offset 0).

The definition of A077888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+x^2-2x^3+x^4))` (program `A077888.P15023020038911266328`, by `A077888.P15023020038911266328.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077888.P15023020038911266328

`ogf(1/(1-x+x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077888

/-- `ogf(1/(1-x+x^2-2x^3+x^4))` -/
def P15023020038911266328.Spec : Prop :=
  ∀ n, P15023020038911266328.a n = A077888 n

theorem P15023020038911266328.correct : P15023020038911266328.Spec := by
  intro n
  simp only [A077888]

end A077888

/-! ## A077888.P3385968227771796603

`∑[ogf(1/(1+x^2-x^3))]`
-/

namespace A077888.P3385968227771796603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077888.P3385968227771796603

namespace A077888

/-- `∑[ogf(1/(1+x^2-x^3))]` -/
def P3385968227771796603.Spec : Prop :=
  ∀ n, P3385968227771796603.a n = A077888 n

end A077888

/-! ## A077888.P13098329363113895244

`∑[a(n-3)-a(n-2)]` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A077888.P13098329363113895244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n f1 =>
  f1 (n - 3) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077888.P13098329363113895244

namespace A077888

/-- `∑[a(n-3)-a(n-2)]` -/
def P13098329363113895244.Spec : Prop :=
  ∀ n, P13098329363113895244.a n = A077888 n

end A077888

/-! ## A077888.P2101910729166530229

`a(n-3)+1-a(n-2)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077888.P2101910729166530229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 3) + (1 - a (n - 2))

end

end A077888.P2101910729166530229

namespace A077888

/-- `a(n-3)+1-a(n-2)` -/
def P2101910729166530229.Spec : Prop :=
  ∀ n, P2101910729166530229.a n = A077888 n

end A077888

/-! ## A077888.P580940252079897196

`1-(a(n-2)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077888.P580940252079897196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  1 - (a (n - 2) - a (n - 3))

end

end A077888.P580940252079897196

namespace A077888

/-- `1-(a(n-2)-a(n-3))` -/
def P580940252079897196.Spec : Prop :=
  ∀ n, P580940252079897196.a n = A077888 n

end A077888

/-! ## A077888.P931806624582872192

`∑[A077961(n)]`
-/

namespace A077888.P931806624582872192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077888.P931806624582872192

namespace A077888

/-- `∑[A077961(n)]` -/
def P931806624582872192.Spec : Prop :=
  ∀ n, P931806624582872192.a n = A077888 n

end A077888

/-! ## A077888.P13650599044386024992

`1-A077961(n+1-3%(n+1))`
-/

namespace A077888.P13650599044386024992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A077961 (n + 1 - 3 % (n + 1))

end

end A077888.P13650599044386024992

namespace A077888

/-- `1-A077961(n+1-3%(n+1))` -/
def P13650599044386024992.Spec : Prop :=
  ∀ n, P13650599044386024992.a n = A077888 n

end A077888

/-! ## A077888.P10084955397153409911

`∑[(-1)^n*A077962(n)]`
-/

namespace A077888.P10084955397153409911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077888.P10084955397153409911

namespace A077888

/-- `∑[(-1)^n*A077962(n)]` -/
def P10084955397153409911.Spec : Prop :=
  ∀ n, P10084955397153409911.a n = A077888 n

end A077888

/-! ## A077888.P10886867843940012945

`a(n-1)-A078031(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A077888.P10886867843940012945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - A078031 (n - 2)

end

end A077888.P10886867843940012945

namespace A077888

/-- `a(n-1)-A078031(n-2)` -/
def P10886867843940012945.Spec : Prop :=
  ∀ n, P10886867843940012945.a n = A077888 n

end A077888

/-! ## A077888.P530391998081233604

`∑[∑[A078031(n)]]`
-/

namespace A077888.P530391998081233604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078031 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077888.P530391998081233604

namespace A077888

/-- `∑[∑[A078031(n)]]` -/
def P530391998081233604.Spec : Prop :=
  ∀ n, P530391998081233604.a n = A077888 n

end A077888

/-! ## A077888.P15371945910432929270

`∑[A321196(∑[n])]`
-/

namespace A077888.P15371945910432929270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321196 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077888.P15371945910432929270

namespace A077888

/-- `∑[A321196(∑[n])]` -/
def P15371945910432929270.Spec : Prop :=
  ∀ n, P15371945910432929270.a n = A077888 n

end A077888

/-!
# A077889: Expansion of 1/( (1-x)*(1 + x^2 + x^3) ).

The programs for A077889, the canonical program `A077889.P9654892315453245476` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077889 has offset 0).

The definition of A077889 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+x^2-x^4))` (program `A077889.P9654892315453245476`, by `A077889.P9654892315453245476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077889.P9654892315453245476

`ogf(1/(1-x+x^2-x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077889

/-- `ogf(1/(1-x+x^2-x^4))` -/
def P9654892315453245476.Spec : Prop :=
  ∀ n, P9654892315453245476.a n = A077889 n

theorem P9654892315453245476.correct : P9654892315453245476.Spec := by
  intro n
  simp only [A077889]

end A077889

/-! ## A077889.P403829919707288972

`a(n-1)-a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=-1`
-/

namespace A077889.P403829919707288972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, -1] fun n a =>
  a (n - 1) - a (n - 2) + a (n - 4)

end

end A077889.P403829919707288972

namespace A077889

/-- `a(n-1)-a(n-2)+a(n-4)` -/
def P403829919707288972.Spec : Prop :=
  ∀ n, P403829919707288972.a n = A077889 n

end A077889

/-! ## A077889.P15335018229070582412

`∑{#}[floor(n/4), A101950(C(n-3*#+1, 2)+#)]`
-/

namespace A077889.P15335018229070582412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A101950 (Nat.choose ((n : ℤ) - (3 * k : ℤ) + 1).toNat 2 + k)

end

end A077889.P15335018229070582412

namespace A077889

/-- `∑{#}[floor(n/4), A101950(C(n-3*#+1, 2)+#)]` -/
def P15335018229070582412.Spec : Prop :=
  ∀ n, P15335018229070582412.a n = A077889 n

end A077889

/-! ## A077889.P16170467932827092878

`∑[ogf(1/(1+x^2+x^3))]`
-/

namespace A077889.P16170467932827092878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077889.P16170467932827092878

namespace A077889

/-- `∑[ogf(1/(1+x^2+x^3))]` -/
def P16170467932827092878.Spec : Prop :=
  ∀ n, P16170467932827092878.a n = A077889 n

end A077889

/-! ## A077889.P1615959216215307765

`1-(a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077889.P1615959216215307765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  1 - (a (n - 2) + a (n - 3))

end

end A077889.P1615959216215307765

namespace A077889

/-- `1-(a(n-2)+a(n-3))` -/
def P1615959216215307765.Spec : Prop :=
  ∀ n, P1615959216215307765.a n = A077889 n

end A077889

/-! ## A077889.P6133895516179571733

`1-a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077889.P6133895516179571733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  1 - a (n - 2) - a (n - 3)

end

end A077889.P6133895516179571733

namespace A077889

/-- `1-a(n-2)-a(n-3)` -/
def P6133895516179571733.Spec : Prop :=
  ∀ n, P6133895516179571733.a n = A077889 n

end A077889

/-! ## A077889.P10968184796453392154

`∑[A077961(n)*A087960(2*n)]`
-/

namespace A077889.P10968184796453392154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 n * A087960 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077889.P10968184796453392154

namespace A077889

/-- `∑[A077961(n)*A087960(2*n)]` -/
def P10968184796453392154.Spec : Prop :=
  ∀ n, P10968184796453392154.a n = A077889 n

end A077889

/-! ## A077889.P7851596316161802874

`∑[A077962(n)]`
-/

namespace A077889.P7851596316161802874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077889.P7851596316161802874

namespace A077889

/-- `∑[A077962(n)]` -/
def P7851596316161802874.Spec : Prop :=
  ∀ n, P7851596316161802874.a n = A077889 n

end A077889

/-! ## A077889.P16618153632775543810

`∑[∑[A078032(n)]]`
-/

namespace A077889.P16618153632775543810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077889.P16618153632775543810

namespace A077889

/-- `∑[∑[A078032(n)]]` -/
def P16618153632775543810.Spec : Prop :=
  ∀ n, P16618153632775543810.a n = A077889 n

end A077889

/-! ## A077889.P5847639303535797014

`∑[A000930(n)/A199804(n)*A077961(n)]`
-/

namespace A077889.P5847639303535797014
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000930 n : ℚ) / (A199804 n : ℚ) * (A077961 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077889.P5847639303535797014

namespace A077889

/-- `∑[A000930(n)/A199804(n)*A077961(n)]` -/
def P5847639303535797014.Spec : Prop :=
  ∀ n, P5847639303535797014.a n = (A077889 n : ℚ)

end A077889

/-!
# A077890: Expansion of (1-x)^(-1)/(1+x^2+2*x^3).

The programs for A077890, the canonical program `A077890.P12749362918371477102` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077890 has offset 0).

The definition of A077890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+x^2+x^3-2x^4))` (program `A077890.P12749362918371477102`, by `A077890.P12749362918371477102.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077890.P12749362918371477102

`ogf(1/(1-x+x^2+x^3-2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077890

/-- `ogf(1/(1-x+x^2+x^3-2x^4))` -/
def P12749362918371477102.Spec : Prop :=
  ∀ n, P12749362918371477102.a n = A077890 n

theorem P12749362918371477102.correct : P12749362918371477102.Spec := by
  intro n
  simp only [A077890]

end A077890

/-! ## A077890.P5945658415480486256

`a(n-1)-a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=-2`
-/

namespace A077890.P5945658415480486256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, -2] fun n a =>
  a (n - 1) - a (n - 2) - a (n - 3) + 2 * a (n - 4)

end

end A077890.P5945658415480486256

namespace A077890

/-- `a(n-1)-a(n-2)-a(n-3)+2*a(n-4)` -/
def P5945658415480486256.Spec : Prop :=
  ∀ n, P5945658415480486256.a n = A077890 n

end A077890

/-! ## A077890.P14232812693035657690

`∑[ogf(1/(1+x^2+2x^3))]`
-/

namespace A077890.P14232812693035657690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077890.P14232812693035657690

namespace A077890

/-- `∑[ogf(1/(1+x^2+2x^3))]` -/
def P14232812693035657690.Spec : Prop :=
  ∀ n, P14232812693035657690.a n = A077890 n

end A077890

/-! ## A077890.P13713306792088407518

`1-(a(n-2)+2*a(n-3))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077890.P13713306792088407518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  1 - (a (n - 2) + 2 * a (n - 3))

end

end A077890.P13713306792088407518

namespace A077890

/-- `1-(a(n-2)+2*a(n-3))` -/
def P13713306792088407518.Spec : Prop :=
  ∀ n, P13713306792088407518.a n = A077890 n

end A077890

/-! ## A077890.P11208534839872833634

`1-2*a(n-3)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077890.P11208534839872833634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  1 - 2 * a (n - 3) - a (n - 2)

end

end A077890.P11208534839872833634

namespace A077890

/-- `1-2*a(n-3)-a(n-2)` -/
def P11208534839872833634.Spec : Prop :=
  ∀ n, P11208534839872833634.a n = A077890 n

end A077890

/-! ## A077890.P4001201460708426518

`or(1, a(n-1)-a(n-2))-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A077890.P4001201460708426518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor 1 (a (n - 1) - a (n - 2)) - a (n - 2)

end

end A077890.P4001201460708426518

namespace A077890

/-- `or(1, a(n-1)-a(n-2))-a(n-2)` -/
def P4001201460708426518.Spec : Prop :=
  ∀ n, P4001201460708426518.a n = A077890 n

end A077890

/-! ## A077890.P8680601321963461395

`1-(a(n-2)+a(n-3)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077890.P8680601321963461395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  1 - (a (n - 2) + (a (n - 3) + a (n - 3)))

end

end A077890.P8680601321963461395

namespace A077890

/-- `1-(a(n-2)+a(n-3)+a(n-3))` -/
def P8680601321963461395.Spec : Prop :=
  ∀ n, P8680601321963461395.a n = A077890 n

end A077890

/-! ## A077890.P16216583794647909425

`1-a(n-2)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077890.P16216583794647909425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  1 - a (n - 2) - a (n - 3) - a (n - 3)

end

end A077890.P16216583794647909425

namespace A077890

/-- `1-a(n-2)-a(n-3)-a(n-3)` -/
def P16216583794647909425.Spec : Prop :=
  ∀ n, P16216583794647909425.a n = A077890 n

end A077890

/-! ## A077890.P15424385913470017648

`∑[A077963(n)]`
-/

namespace A077890.P15424385913470017648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077890.P15424385913470017648

namespace A077890

/-- `∑[A077963(n)]` -/
def P15424385913470017648.Spec : Prop :=
  ∀ n, P15424385913470017648.a n = A077890 n

end A077890

/-! ## A077890.P6294077437598202733

`∑[∑[A078033(n)]]`
-/

namespace A077890.P6294077437598202733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078033 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077890.P6294077437598202733

namespace A077890

/-- `∑[∑[A078033(n)]]` -/
def P6294077437598202733.Spec : Prop :=
  ∀ n, P6294077437598202733.a n = A077890 n

end A077890

/-! ## A077890.P2231786243649905913

`A105578(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077890.P2231786243649905913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A105578 n - a (n - 3)

end

end A077890.P2231786243649905913

namespace A077890

/-- `A105578(n)-a(n-3)` -/
def P2231786243649905913.Spec : Prop :=
  ∀ n, P2231786243649905913.a n = A077890 n

end A077890

/-! ## A077890.P17466055093061051311

`∑[A078020(n)]+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A077890.P17466055093061051311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A077890.P17466055093061051311

namespace A077890

/-- `∑[A078020(n)]+a(n-2)` -/
def P17466055093061051311.Spec : Prop :=
  ∀ n, P17466055093061051311.a n = A077890 n

end A077890

/-! ## A077890.P5832493303869899483

`∑[∑[A105578(n+1)]-A004526(n+1)]`
-/

namespace A077890.P5832493303869899483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077890.P5832493303869899483

namespace A077890

/-- `∑[∑[A105578(n+1)]-A004526(n+1)]` -/
def P5832493303869899483.Spec : Prop :=
  ∀ n, P5832493303869899483.a n = A077890 n

end A077890

/-! ## A077890.P283282106553775720

`A077876(n)-a(n-1)` with `a(0)=1`
-/

namespace A077890.P283282106553775720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077876 n - a (n - 1)

end

end A077890.P283282106553775720

namespace A077890

/-- `A077876(n)-a(n-1)` -/
def P283282106553775720.Spec : Prop :=
  ∀ n, P283282106553775720.a n = A077890 n

end A077890

/-!
# A077891: Expansion of (1-x)^(-1)/(1+2*x^2-2*x^3).

The programs for A077891, the canonical program `A077891.P17248121913172182179` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077891 has offset 0).

The definition of A077891 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+2x^2-4x^3+2x^4))` (program `A077891.P17248121913172182179`, by `A077891.P17248121913172182179.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077891.P17248121913172182179

`ogf(1/(1-x+2x^2-4x^3+2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077891

/-- `ogf(1/(1-x+2x^2-4x^3+2x^4))` -/
def P17248121913172182179.Spec : Prop :=
  ∀ n, P17248121913172182179.a n = A077891 n

theorem P17248121913172182179.correct : P17248121913172182179.Spec := by
  intro n
  simp only [A077891]

end A077891

/-! ## A077891.P16869507591530223566

`∑[ogf(1/(1+2x^2-2x^3))]`
-/

namespace A077891.P16869507591530223566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 2, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077891.P16869507591530223566

namespace A077891

/-- `∑[ogf(1/(1+2x^2-2x^3))]` -/
def P16869507591530223566.Spec : Prop :=
  ∀ n, P16869507591530223566.a n = A077891 n

end A077891

/-! ## A077891.P1063213276581573796

`∑[2*(a(n-3)-a(n-2))]` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A077891.P1063213276581573796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n f1 =>
  2 * (f1 (n - 3) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077891.P1063213276581573796

namespace A077891

/-- `∑[2*(a(n-3)-a(n-2))]` -/
def P1063213276581573796.Spec : Prop :=
  ∀ n, P1063213276581573796.a n = A077891 n

end A077891

/-! ## A077891.P2489644085403611208

`2*(a(n-3)-a(n-2))+1` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A077891.P2489644085403611208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  2 * (a (n - 3) - a (n - 2)) + 1

end

end A077891.P2489644085403611208

namespace A077891

/-- `2*(a(n-3)-a(n-2))+1` -/
def P2489644085403611208.Spec : Prop :=
  ∀ n, P2489644085403611208.a n = A077891 n

end A077891

/-! ## A077891.P10183877108612221426

`1-2*(a(n-2)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A077891.P10183877108612221426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  1 - 2 * (a (n - 2) - a (n - 3))

end

end A077891.P10183877108612221426

namespace A077891

/-- `1-2*(a(n-2)-a(n-3))` -/
def P10183877108612221426.Spec : Prop :=
  ∀ n, P10183877108612221426.a n = A077891 n

end A077891

/-! ## A077891.P864644630045957938

`∑[A077964(n)]`
-/

namespace A077891.P864644630045957938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077891.P864644630045957938

namespace A077891

/-- `∑[A077964(n)]` -/
def P864644630045957938.Spec : Prop :=
  ∀ n, P864644630045957938.a n = A077891 n

end A077891

/-! ## A077891.P2392774560543360573

`∑[(-1)^n*A077968(n)]`
-/

namespace A077891.P2392774560543360573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077891.P2392774560543360573

namespace A077891

/-- `∑[(-1)^n*A077968(n)]` -/
def P2392774560543360573.Spec : Prop :=
  ∀ n, P2392774560543360573.a n = A077891 n

end A077891

/-! ## A077891.P9492963839588641429

`∑[(-1)^n*∑[A078037(n)]]`
-/

namespace A077891.P9492963839588641429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078037 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077891.P9492963839588641429

namespace A077891

/-- `∑[(-1)^n*∑[A078037(n)]]` -/
def P9492963839588641429.Spec : Prop :=
  ∀ n, P9492963839588641429.a n = A077891 n

end A077891

/-! ## A077891.P14492106448219969059

`∑[A077968(n)/A033999(n)]`
-/

namespace A077891.P14492106448219969059
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077968 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077891.P14492106448219969059

namespace A077891

/-- `∑[A077968(n)/A033999(n)]` -/
def P14492106448219969059.Spec : Prop :=
  ∀ n, P14492106448219969059.a n = (A077891 n : ℚ)

end A077891

/-! ## A077891.P14697299059332965070

`∑[A077968(n)/A056594(2*n)]`
-/

namespace A077891.P14697299059332965070
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077968 n : ℚ) / (A056594 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077891.P14697299059332965070

namespace A077891

/-- `∑[A077968(n)/A056594(2*n)]` -/
def P14697299059332965070.Spec : Prop :=
  ∀ n, P14697299059332965070.a n = (A077891 n : ℚ)

end A077891

/-! ## A077891.P13462894365380789405

`∑[∑[A078034(n)]]`
-/

namespace A077891.P13462894365380789405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077891.P13462894365380789405

namespace A077891

/-- `∑[∑[A078034(n)]]` -/
def P13462894365380789405.Spec : Prop :=
  ∀ n, P13462894365380789405.a n = A077891 n

end A077891

/-!
# A077892: Expansion of (1-x)^(-1)/(1+2*x^2-x^3).

The programs for A077892, the canonical program `A077892.P17328614350207515187` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077892 has offset 0).

The definition of A077892 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+2x^2-3x^3+x^4))` (program `A077892.P17328614350207515187`, by `A077892.P17328614350207515187.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077892.P17328614350207515187

`ogf(1/(1-x+2x^2-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077892

/-- `ogf(1/(1-x+2x^2-3x^3+x^4))` -/
def P17328614350207515187.Spec : Prop :=
  ∀ n, P17328614350207515187.a n = A077892 n

theorem P17328614350207515187.correct : P17328614350207515187.Spec := by
  intro n
  simp only [A077892]

end A077892

/-! ## A077892.P6823598764022376862

`a(n-1)-2*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=0`
-/

namespace A077892.P6823598764022376862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, 0] fun n a =>
  a (n - 1) - 2 * a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A077892.P6823598764022376862

namespace A077892

/-- `a(n-1)-2*a(n-2)+3*a(n-3)-a(n-4)` -/
def P6823598764022376862.Spec : Prop :=
  ∀ n, P6823598764022376862.a n = A077892 n

end A077892

/-! ## A077892.P11744955048630005446

`∑[ogf(1/(1+2x^2-x^3))]`
-/

namespace A077892.P11744955048630005446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077892.P11744955048630005446

namespace A077892

/-- `∑[ogf(1/(1+2x^2-x^3))]` -/
def P11744955048630005446.Spec : Prop :=
  ∀ n, P11744955048630005446.a n = A077892 n

end A077892

/-! ## A077892.P15045751736608658402

`∑[a(n-3)-2*a(n-2)]` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A077892.P15045751736608658402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n f1 =>
  f1 (n - 3) - 2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077892.P15045751736608658402

namespace A077892

/-- `∑[a(n-3)-2*a(n-2)]` -/
def P15045751736608658402.Spec : Prop :=
  ∀ n, P15045751736608658402.a n = A077892 n

end A077892

/-! ## A077892.P4711227327790589527

`a(n-3)+1-2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A077892.P4711227327790589527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  a (n - 3) + (1 - 2 * a (n - 2))

end

end A077892.P4711227327790589527

namespace A077892

/-- `a(n-3)+1-2*a(n-2)` -/
def P4711227327790589527.Spec : Prop :=
  ∀ n, P4711227327790589527.a n = A077892 n

end A077892

/-! ## A077892.P240034517658008827

`1-(2*a(n-2)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A077892.P240034517658008827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  1 - (2 * a (n - 2) - a (n - 3))

end

end A077892.P240034517658008827

namespace A077892

/-- `1-(2*a(n-2)-a(n-3))` -/
def P240034517658008827.Spec : Prop :=
  ∀ n, P240034517658008827.a n = A077892 n

end A077892

/-! ## A077892.P2246211250050933620

`∑[a(n-3)-a(n-2)-a(n-2)]` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A077892.P2246211250050933620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n f1 =>
  f1 (n - 3) - f1 (n - 2) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077892.P2246211250050933620

namespace A077892

/-- `∑[a(n-3)-a(n-2)-a(n-2)]` -/
def P2246211250050933620.Spec : Prop :=
  ∀ n, P2246211250050933620.a n = A077892 n

end A077892

/-! ## A077892.P6604691446469078292

`1-(a(n-2)+a(n-2)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A077892.P6604691446469078292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  1 - (a (n - 2) + (a (n - 2) - a (n - 3)))

end

end A077892.P6604691446469078292

namespace A077892

/-- `1-(a(n-2)+a(n-2)-a(n-3))` -/
def P6604691446469078292.Spec : Prop :=
  ∀ n, P6604691446469078292.a n = A077892 n

end A077892

/-! ## A077892.P13627746891715938852

`1-(a(n-2)-a(n-3))-a(n-2)` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A077892.P13627746891715938852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  1 - (a (n - 2) - a (n - 3)) - a (n - 2)

end

end A077892.P13627746891715938852

namespace A077892

/-- `1-(a(n-2)-a(n-3))-a(n-2)` -/
def P13627746891715938852.Spec : Prop :=
  ∀ n, P13627746891715938852.a n = A077892 n

end A077892

/-! ## A077892.P15563332935337209423

`∑[A077965(n)]`
-/

namespace A077892.P15563332935337209423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077892.P15563332935337209423

namespace A077892

/-- `∑[A077965(n)]` -/
def P15563332935337209423.Spec : Prop :=
  ∀ n, P15563332935337209423.a n = A077892 n

end A077892

/-! ## A077892.P10587899875421799955

`∑[(-1)^n*A077967(n)]`
-/

namespace A077892.P10587899875421799955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077892.P10587899875421799955

namespace A077892

/-- `∑[(-1)^n*A077967(n)]` -/
def P10587899875421799955.Spec : Prop :=
  ∀ n, P10587899875421799955.a n = A077892 n

end A077892

/-! ## A077892.P7606569597839250869

`∑[A077967(n)/A033999(n)]`
-/

namespace A077892.P7606569597839250869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077967 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077892.P7606569597839250869

namespace A077892

/-- `∑[A077967(n)/A033999(n)]` -/
def P7606569597839250869.Spec : Prop :=
  ∀ n, P7606569597839250869.a n = (A077892 n : ℚ)

end A077892

/-! ## A077892.P13006783368188208461

`∑[A077967(n)/A010892(3*n)]`
-/

namespace A077892.P13006783368188208461
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077967 n : ℚ) / (A010892 (3 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077892.P13006783368188208461

namespace A077892

/-- `∑[A077967(n)/A010892(3*n)]` -/
def P13006783368188208461.Spec : Prop :=
  ∀ n, P13006783368188208461.a n = (A077892 n : ℚ)

end A077892

/-! ## A077892.P8504418054379176641

`∑[A077967(n)/(1-2*A000035(n))]`
-/

namespace A077892.P8504418054379176641
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077967 n : ℚ) / (1 - 2 * A000035 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077892.P8504418054379176641

namespace A077892

/-- `∑[A077967(n)/(1-2*A000035(n))]` -/
def P8504418054379176641.Spec : Prop :=
  ∀ n, P8504418054379176641.a n = (A077892 n : ℚ)

end A077892

/-! ## A077892.P17084426712535774379

`∑[∑[A078035(n)]]`
-/

namespace A077892.P17084426712535774379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077892.P17084426712535774379

namespace A077892

/-- `∑[∑[A078035(n)]]` -/
def P17084426712535774379.Spec : Prop :=
  ∀ n, P17084426712535774379.a n = A077892 n

end A077892

/-! ## A077892.P6886383264739599406

`a(n-1)+A077965(n)%A000225(n)` with `a(0)=1`
-/

namespace A077892.P6886383264739599406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A077965 n) (A000225 n)

end

end A077892.P6886383264739599406

namespace A077892

/-- `a(n-1)+A077965(n)%A000225(n)` -/
def P6886383264739599406.Spec : Prop :=
  ∀ n, P6886383264739599406.a n = A077892 n

end A077892

/-!
# A077894: Expansion of (1-x)^(-1)/(1+2*x^2+x^3).

The programs for A077894, the canonical program `A077894.P7396490574392204998` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077894 has offset 0).

The definition of A077894 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+2x^2-x^3-x^4))` (program `A077894.P7396490574392204998`, by `A077894.P7396490574392204998.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077894.P7396490574392204998

`ogf(1/(1-x+2x^2-x^3-x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077894

/-- `ogf(1/(1-x+2x^2-x^3-x^4))` -/
def P7396490574392204998.Spec : Prop :=
  ∀ n, P7396490574392204998.a n = A077894 n

theorem P7396490574392204998.correct : P7396490574392204998.Spec := by
  intro n
  simp only [A077894]

end A077894

/-! ## A077894.P10538859569266233552

`a(n-1)-2*a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=-2, a(4)=2`
-/

namespace A077894.P10538859569266233552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, -2, 2] fun n a =>
  a (n - 1) - 2 * a (n - 2) + a (n - 3) + a (n - 4)

end

end A077894.P10538859569266233552

namespace A077894

/-- `a(n-1)-2*a(n-2)+a(n-3)+a(n-4)` -/
def P10538859569266233552.Spec : Prop :=
  ∀ n, P10538859569266233552.a n = A077894 n

end A077894

/-! ## A077894.P220835311787957490

`∑[ogf(1/(1+2x^2+x^3))]`
-/

namespace A077894.P220835311787957490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077894.P220835311787957490

namespace A077894

/-- `∑[ogf(1/(1+2x^2+x^3))]` -/
def P220835311787957490.Spec : Prop :=
  ∀ n, P220835311787957490.a n = A077894 n

end A077894

/-! ## A077894.P5937439816763299968

`1-(2*a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A077894.P5937439816763299968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  1 - (2 * a (n - 2) + a (n - 3))

end

end A077894.P5937439816763299968

namespace A077894

/-- `1-(2*a(n-2)+a(n-3))` -/
def P5937439816763299968.Spec : Prop :=
  ∀ n, P5937439816763299968.a n = A077894 n

end A077894

/-! ## A077894.P7511753619791118535

`1-2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A077894.P7511753619791118535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  1 - 2 * a (n - 2) - a (n - 3)

end

end A077894.P7511753619791118535

namespace A077894

/-- `1-2*a(n-2)-a(n-3)` -/
def P7511753619791118535.Spec : Prop :=
  ∀ n, P7511753619791118535.a n = A077894 n

end A077894

/-! ## A077894.P1207262304474676691

`1-(a(n-2)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A077894.P1207262304474676691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  1 - (a (n - 2) + (a (n - 2) + a (n - 3)))

end

end A077894.P1207262304474676691

namespace A077894

/-- `1-(a(n-2)+a(n-2)+a(n-3))` -/
def P1207262304474676691.Spec : Prop :=
  ∀ n, P1207262304474676691.a n = A077894 n

end A077894

/-! ## A077894.P11852662267323617036

`1-a(n-2)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A077894.P11852662267323617036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  1 - a (n - 2) - a (n - 2) - a (n - 3)

end

end A077894.P11852662267323617036

namespace A077894

/-- `1-a(n-2)-a(n-2)-a(n-3)` -/
def P11852662267323617036.Spec : Prop :=
  ∀ n, P11852662267323617036.a n = A077894 n

end A077894

/-! ## A077894.P15585513881338875659

`∑[A077967(n)]`
-/

namespace A077894.P15585513881338875659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077894.P15585513881338875659

namespace A077894

/-- `∑[A077967(n)]` -/
def P15585513881338875659.Spec : Prop :=
  ∀ n, P15585513881338875659.a n = A077894 n

end A077894

/-! ## A077894.P3634865053183338306

`∑[∑[A078036(n)]]`
-/

namespace A077894.P3634865053183338306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078036 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077894.P3634865053183338306

namespace A077894

/-- `∑[∑[A078036(n)]]` -/
def P3634865053183338306.Spec : Prop :=
  ∀ n, P3634865053183338306.a n = A077894 n

end A077894

/-! ## A077894.P9374168916428559181

`∑[(-1)^n*A077965(n)]`
-/

namespace A077894.P9374168916428559181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077894.P9374168916428559181

namespace A077894

/-- `∑[(-1)^n*A077965(n)]` -/
def P9374168916428559181.Spec : Prop :=
  ∀ n, P9374168916428559181.a n = A077894 n

end A077894

/-! ## A077894.P2231397412963015750

`∑[A077965(n)/A033999(n)]`
-/

namespace A077894.P2231397412963015750
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077965 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077894.P2231397412963015750

namespace A077894

/-- `∑[A077965(n)/A033999(n)]` -/
def P2231397412963015750.Spec : Prop :=
  ∀ n, P2231397412963015750.a n = (A077894 n : ℚ)

end A077894

/-! ## A077894.P15717354741493533152

`A077967(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A077894.P15717354741493533152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077967 n + a (A023443 n).toNat

end

end A077894.P15717354741493533152

namespace A077894

/-- `A077967(n)+a(A023443(n))` -/
def P15717354741493533152.Spec : Prop :=
  ∀ n, P15717354741493533152.a n = A077894 n

end A077894

/-! ## A077894.P5857959515797181865

`∑[A077965(n)*A130595(∑[n])]`
-/

namespace A077894.P5857959515797181865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077965 n * A130595 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077894.P5857959515797181865

namespace A077894

/-- `∑[A077965(n)*A130595(∑[n])]` -/
def P5857959515797181865.Spec : Prop :=
  ∀ n, P5857959515797181865.a n = A077894 n

end A077894

/-!
# A077895: Expansion of (1-x)^(-1)/(1+2*x^2+2*x^3).

The programs for A077895, the canonical program `A077895.P9165462514173218424` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077895 has offset 0).

The definition of A077895 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+2x^2-2x^4))` (program `A077895.P9165462514173218424`, by `A077895.P9165462514173218424.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077895.P9165462514173218424

`ogf(1/(1-x+2x^2-2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077895

/-- `ogf(1/(1-x+2x^2-2x^4))` -/
def P9165462514173218424.Spec : Prop :=
  ∀ n, P9165462514173218424.a n = A077895 n

theorem P9165462514173218424.correct : P9165462514173218424.Spec := by
  intro n
  simp only [A077895]

end A077895

/-! ## A077895.P9479071343643128710

`∑[ogf(1/(1+2x^2+2x^3))]`
-/

namespace A077895.P9479071343643128710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 2, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077895.P9479071343643128710

namespace A077895

/-- `∑[ogf(1/(1+2x^2+2x^3))]` -/
def P9479071343643128710.Spec : Prop :=
  ∀ n, P9479071343643128710.a n = A077895 n

end A077895

/-! ## A077895.P1151723543967984552

`1-2*(a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A077895.P1151723543967984552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  1 - 2 * (a (n - 2) + a (n - 3))

end

end A077895.P1151723543967984552

namespace A077895

/-- `1-2*(a(n-2)+a(n-3))` -/
def P1151723543967984552.Spec : Prop :=
  ∀ n, P1151723543967984552.a n = A077895 n

end A077895

/-! ## A077895.P3851634293231386807

`∑[A077968(n)]`
-/

namespace A077895.P3851634293231386807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077895.P3851634293231386807

namespace A077895

/-- `∑[A077968(n)]` -/
def P3851634293231386807.Spec : Prop :=
  ∀ n, P3851634293231386807.a n = A077895 n

end A077895

/-! ## A077895.P18055402841294660127

`∑[∑[A078037(n)]]`
-/

namespace A077895.P18055402841294660127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078037 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077895.P18055402841294660127

namespace A077895

/-- `∑[∑[A078037(n)]]` -/
def P18055402841294660127.Spec : Prop :=
  ∀ n, P18055402841294660127.a n = A077895 n

end A077895

/-! ## A077895.P8264775396560205410

`∑[A123958(n+3)]`
-/

namespace A077895.P8264775396560205410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123958 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077895.P8264775396560205410

namespace A077895

/-- `∑[A123958(n+3)]` -/
def P8264775396560205410.Spec : Prop :=
  ∀ n, P8264775396560205410.a n = A077895 n

end A077895

/-! ## A077895.P8995686496558057766

`∑[(-1)^n*A077964(n)]`
-/

namespace A077895.P8995686496558057766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077895.P8995686496558057766

namespace A077895

/-- `∑[(-1)^n*A077964(n)]` -/
def P8995686496558057766.Spec : Prop :=
  ∀ n, P8995686496558057766.a n = A077895 n

end A077895

/-! ## A077895.P14012061554759353115

`∑[(-1)^n*∑[A078034(n)]]`
-/

namespace A077895.P14012061554759353115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077895.P14012061554759353115

namespace A077895

/-- `∑[(-1)^n*∑[A078034(n)]]` -/
def P14012061554759353115.Spec : Prop :=
  ∀ n, P14012061554759353115.a n = A077895 n

end A077895

/-! ## A077895.P9897300739705566176

`∑[A077964(n)/A033999(n)]`
-/

namespace A077895.P9897300739705566176
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077964 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077895.P9897300739705566176

namespace A077895

/-- `∑[A077964(n)/A033999(n)]` -/
def P9897300739705566176.Spec : Prop :=
  ∀ n, P9897300739705566176.a n = (A077895 n : ℚ)

end A077895

/-! ## A077895.P8101466675315562486

`∑[∑[A078034(n)]*A033999(n)]`
-/

namespace A077895.P8101466675315562486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077895.P8101466675315562486

namespace A077895

/-- `∑[∑[A078034(n)]*A033999(n)]` -/
def P8101466675315562486.Spec : Prop :=
  ∀ n, P8101466675315562486.a n = A077895 n

end A077895

/-! ## A077895.P5877941352942301479

`∑[A077964(n)/A056594(2*n)]`
-/

namespace A077895.P5877941352942301479
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077964 n : ℚ) / (A056594 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077895.P5877941352942301479

namespace A077895

/-- `∑[A077964(n)/A056594(2*n)]` -/
def P5877941352942301479.Spec : Prop :=
  ∀ n, P5877941352942301479.a n = (A077895 n : ℚ)

end A077895

/-!
# A077896: Expansion of (1-x)^(-1)/(1+x-2*x^2-2*x^3).

The programs for A077896, the canonical program `A077896.P14909277501683933715` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077896 has offset 0).

The definition of A077896 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x^2+2x^4))` (program `A077896.P14909277501683933715`, by `A077896.P14909277501683933715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077896.P14909277501683933715

`ogf(1/(1-3x^2+2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077896

/-- `ogf(1/(1-3x^2+2x^4))` -/
def P14909277501683933715.Spec : Prop :=
  ∀ n, P14909277501683933715.a n = A077896 n

theorem P14909277501683933715.correct : P14909277501683933715.Spec := by
  intro n
  simp only [A077896]

end A077896

/-! ## A077896.P14469284971195490707

`(1+(-1)^n)*(2^floor((n+3)/2)-1)/2`
-/

namespace A077896.P14469284971195490707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (-1) ^ n : ℚ) * ((2 : ℚ) ^ (⌊(n + 3 : ℚ) / 2⌋ : ℤ) - 1) / 2

end

end A077896.P14469284971195490707

namespace A077896

/-- `(1+(-1)^n)*(2^floor((n+3)/2)-1)/2` -/
def P14469284971195490707.Spec : Prop :=
  ∀ n, P14469284971195490707.a n = (A077896 n : ℚ)

end A077896

/-! ## A077896.P4190636022312548695

`gcd(2, n)^((n+2)/2)-1`
-/

namespace A077896.P4190636022312548695
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℝ) ^ ((n + 2 : ℚ) / 2 : ℝ) - 1

end

end A077896.P4190636022312548695

namespace A077896

/-- `gcd(2, n)^((n+2)/2)-1` -/
def P4190636022312548695.Spec : Prop :=
  ∀ n, P4190636022312548695.a n = (A077896 n : ℝ)

end A077896

/-! ## A077896.P13450305379074351079

`2^(∑[n+1]%(n+2))-1`
-/

namespace A077896.P13450305379074351079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2)) : ℤ) - 1

end

end A077896.P13450305379074351079

namespace A077896

/-- `2^(∑[n+1]%(n+2))-1` -/
def P13450305379074351079.Spec : Prop :=
  ∀ n, P13450305379074351079.a n = A077896 n

end A077896

/-! ## A077896.P12292940782481131891

`a(n%2)+2*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A077896.P12292940782481131891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n % 2) + 2 * a (n - 2)

end

end A077896.P12292940782481131891

namespace A077896

/-- `a(n%2)+2*a(n-2)` -/
def P12292940782481131891.Spec : Prop :=
  ∀ n, (P12292940782481131891.a n : ℤ) = A077896 n

end A077896

/-! ## A077896.P11509911644526462550

`or(2*a(n-2), a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A077896.P11509911644526462550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.lor (2 * a (n - 2)) (a (n - 2))

end

end A077896.P11509911644526462550

namespace A077896

/-- `or(2*a(n-2), a(n-2))` -/
def P11509911644526462550.Spec : Prop :=
  ∀ n, (P11509911644526462550.a n : ℤ) = A077896 n

end A077896

/-! ## A077896.P17810593151664667326

`or(lcm(2, a(n-2)), a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A077896.P17810593151664667326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.lor (Nat.lcm 2 (a (n - 2))) (a (n - 2))

end

end A077896.P17810593151664667326

namespace A077896

/-- `or(lcm(2, a(n-2)), a(n-2))` -/
def P17810593151664667326.Spec : Prop :=
  ∀ n, (P17810593151664667326.a n : ℤ) = A077896 n

end A077896

/-! ## A077896.P2769127484030988369

`∑[(-1)^n]+2*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A077896.P2769127484030988369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 2)

end

end A077896.P2769127484030988369

namespace A077896

/-- `∑[(-1)^n]+2*a(n-2)` -/
def P2769127484030988369.Spec : Prop :=
  ∀ n, P2769127484030988369.a n = A077896 n

end A077896

/-! ## A077896.P14016340699175383105

`2*a(n-2)-(1-n)%2` with `a(0)=1, a(1)=0`
-/

namespace A077896.P14016340699175383105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * a (n - 2) - Int.tmod (1 - (n : ℤ)) 2

end

end A077896.P14016340699175383105

namespace A077896

/-- `2*a(n-2)-(1-n)%2` -/
def P14016340699175383105.Spec : Prop :=
  ∀ n, P14016340699175383105.a n = A077896 n

end A077896

/-! ## A077896.P16569001301151126406

`∑[2*a(n-2)]-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A077896.P16569001301151126406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A077896.P16569001301151126406

namespace A077896

/-- `∑[2*a(n-2)]-a(n-1)` -/
def P16569001301151126406.Spec : Prop :=
  ∀ n, P16569001301151126406.a n = A077896 n

end A077896

/-! ## A077896.P1045667424967835739

`a(n-2)+a(n-2)+(n+1)%2` with `a(0)=1, a(1)=0`
-/

namespace A077896.P1045667424967835739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (a (n - 2) + (n + 1) % 2)

end

end A077896.P1045667424967835739

namespace A077896

/-- `a(n-2)+a(n-2)+(n+1)%2` -/
def P1045667424967835739.Spec : Prop :=
  ∀ n, (P1045667424967835739.a n : ℤ) = A077896 n

end A077896

/-! ## A077896.P16950651151844238582

`a(n-2)+a(n-2)+and(1, n+1)` with `a(0)=1, a(1)=0`
-/

namespace A077896.P16950651151844238582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (a (n - 2) + Nat.land 1 (n + 1))

end

end A077896.P16950651151844238582

namespace A077896

/-- `a(n-2)+a(n-2)+and(1, n+1)` -/
def P16950651151844238582.Spec : Prop :=
  ∀ n, (P16950651151844238582.a n : ℤ) = A077896 n

end A077896

/-! ## A077896.P8394342082067976819

`∑[a(n-2)+a(n-2)]-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A077896.P8394342082067976819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A077896.P8394342082067976819

namespace A077896

/-- `∑[a(n-2)+a(n-2)]-a(n-1)` -/
def P8394342082067976819.Spec : Prop :=
  ∀ n, P8394342082067976819.a n = A077896 n

end A077896

/-! ## A077896.P10989305518323368246

`(1/(a(n-1)+a(n-2))+2)*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A077896.P10989305518323368246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (1 / (a (n - 1) + a (n - 2)) + 2) * a (n - 2)

end

end A077896.P10989305518323368246

namespace A077896

/-- `(1/(a(n-1)+a(n-2))+2)*a(n-2)` -/
def P10989305518323368246.Spec : Prop :=
  ∀ n, P10989305518323368246.a n = (A077896 n : ℚ)

end A077896

/-! ## A077896.P7898556856098179807

`(2-1/(a(n-1)-a(n-2)))*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A077896.P7898556856098179807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (2 - 1 / (a (n - 1) - a (n - 2))) * a (n - 2)

end

end A077896.P7898556856098179807

namespace A077896

/-- `(2-1/(a(n-1)-a(n-2)))*a(n-2)` -/
def P7898556856098179807.Spec : Prop :=
  ∀ n, P7898556856098179807.a n = (A077896 n : ℚ)

end A077896

/-! ## A077896.P3881223895689507704

`gcd(a(n-2)+2, a(n-1))+a(n-2)-1` with `a(0)=1, a(1)=0`
-/

namespace A077896.P3881223895689507704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (Int.gcd (a (n - 2) + 2) (a (n - 1)) : ℤ) + (a (n - 2) - 1)

end

end A077896.P3881223895689507704

namespace A077896

/-- `gcd(a(n-2)+2, a(n-1))+a(n-2)-1` -/
def P3881223895689507704.Spec : Prop :=
  ∀ n, P3881223895689507704.a n = A077896 n

end A077896

/-! ## A077896.P2835884113468137850

`1-(a(n-1)%2-a(n-2)-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A077896.P2835884113468137850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  1 - (Int.tmod (a (n - 1)) 2 - a (n - 2) - a (n - 2))

end

end A077896.P2835884113468137850

namespace A077896

/-- `1-(a(n-1)%2-a(n-2)-a(n-2))` -/
def P2835884113468137850.Spec : Prop :=
  ∀ n, P2835884113468137850.a n = A077896 n

end A077896

/-! ## A077896.P7583135215365583166

`a(n-2)+a(n-2)+a(n-2)^a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A077896.P7583135215365583166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2) ^ a (n - 1))

end

end A077896.P7583135215365583166

namespace A077896

/-- `a(n-2)+a(n-2)+a(n-2)^a(n-1)` -/
def P7583135215365583166.Spec : Prop :=
  ∀ n, (P7583135215365583166.a n : ℤ) = A077896 n

end A077896

/-! ## A077896.P12486524145668106446

`a(n-2)+a(n-2)+a(n-2)/(a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A077896.P12486524145668106446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2) / (a (n - 1) + a (n - 2)))

end

end A077896.P12486524145668106446

namespace A077896

/-- `a(n-2)+a(n-2)+a(n-2)/(a(n-1)+a(n-2))` -/
def P12486524145668106446.Spec : Prop :=
  ∀ n, P12486524145668106446.a n = (A077896 n : ℚ)

end A077896

/-! ## A077896.P10860542530738722957

`a(n-2)-(a(n-2)/(a(n-1)-a(n-2))-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A077896.P10860542530738722957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) - (a (n - 2) / (a (n - 1) - a (n - 2)) - a (n - 2))

end

end A077896.P10860542530738722957

namespace A077896

/-- `a(n-2)-(a(n-2)/(a(n-1)-a(n-2))-a(n-2))` -/
def P10860542530738722957.Spec : Prop :=
  ∀ n, P10860542530738722957.a n = (A077896 n : ℚ)

end A077896

/-!
# A077897: Expansion of (1-x)^(-1)/(1+x-2*x^2-x^3).

The programs for A077897, the canonical program `A077897.P5833719105219853067` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077897 has offset 0).

The definition of A077897 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x^2+x^3+x^4))` (program `A077897.P5833719105219853067`, by `A077897.P5833719105219853067.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077897.P5833719105219853067

`ogf(1/(1-3x^2+x^3+x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077897

/-- `ogf(1/(1-3x^2+x^3+x^4))` -/
def P5833719105219853067.Spec : Prop :=
  ∀ n, P5833719105219853067.a n = A077897 n

theorem P5833719105219853067.correct : P5833719105219853067.Spec := by
  intro n
  simp only [A077897]

end A077897

/-! ## A077897.P5742610270946222037

`∑[∑[A052547(n)]*A033999(n)]`
-/

namespace A077897.P5742610270946222037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077897.P5742610270946222037

namespace A077897

/-- `∑[∑[A052547(n)]*A033999(n)]` -/
def P5742610270946222037.Spec : Prop :=
  ∀ n, P5742610270946222037.a n = A077897 n

end A077897

/-! ## A077897.P13657807671770171274

`∑[A006053(n+2)*A033999(n)]`
-/

namespace A077897.P13657807671770171274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (n + 2) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077897.P13657807671770171274

namespace A077897

/-- `∑[A006053(n+2)*A033999(n)]` -/
def P13657807671770171274.Spec : Prop :=
  ∀ n, P13657807671770171274.a n = A077897 n

end A077897

/-! ## A077897.P10492433781927485348

`∑[∑[∑[A028495(n)]*A033999(n)]]`
-/

namespace A077897.P10492433781927485348
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) * A033999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077897.P10492433781927485348

namespace A077897

/-- `∑[∑[∑[A028495(n)]*A033999(n)]]` -/
def P10492433781927485348.Spec : Prop :=
  ∀ n, P10492433781927485348.a n = A077897 n

end A077897

/-! ## A077897.P12482776221855422923

`∑[∑[A078038(n)]]`
-/

namespace A077897.P12482776221855422923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078038 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077897.P12482776221855422923

namespace A077897

/-- `∑[∑[A078038(n)]]` -/
def P12482776221855422923.Spec : Prop :=
  ∀ n, P12482776221855422923.a n = A077897 n

end A077897

/-! ## A077897.P10510518229015699320

`∑[A033999(n)*A188107(A000096(n))]`
-/

namespace A077897.P10510518229015699320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A188107 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077897.P10510518229015699320

namespace A077897

/-- `∑[A033999(n)*A188107(A000096(n))]` -/
def P10510518229015699320.Spec : Prop :=
  ∀ n, P10510518229015699320.a n = A077897 n

end A077897

/-!
# A077898: Expansion of (1 - x)^(-1)/(1 + x - 2*x^2).

The programs for A077898, the canonical program `A077898.P10505132135552188857` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077898 has offset 0).

The definition of A077898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x^2+2x^3))` (program `A077898.P10505132135552188857`, by `A077898.P10505132135552188857.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077898.P10505132135552188857

`ogf(1/(1-3x^2+2x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077898

/-- `ogf(1/(1-3x^2+2x^3))` -/
def P10505132135552188857.Spec : Prop :=
  ∀ n, P10505132135552188857.a n = A077898 n

theorem P10505132135552188857.correct : P10505132135552188857.Spec := by
  intro n
  simp only [A077898]

end A077898

/-! ## A077898.P5125016256454637295

`3*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A077898.P5125016256454637295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  3 * a (n - 2) - 2 * a (n - 3)

end

end A077898.P5125016256454637295

namespace A077898

/-- `3*a(n-2)-2*a(n-3)` -/
def P5125016256454637295.Spec : Prop :=
  ∀ n, P5125016256454637295.a n = A077898 n

end A077898

/-! ## A077898.P16018301324028936147

`(-1)^n*A053088(n)`
-/

namespace A077898.P16018301324028936147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A053088 n

end

end A077898.P16018301324028936147

namespace A077898

/-- `(-1)^n*A053088(n)` -/
def P16018301324028936147.Spec : Prop :=
  ∀ n, P16018301324028936147.a n = A077898 n

end A077898

/-! ## A077898.P5021404369513122537

`∑{#}[n, (n+1-#)*(-2)^#]`
-/

namespace A077898.P5021404369513122537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n + 1 : ℤ) - (k : ℤ)) * (-2) ^ k

end

end A077898.P5021404369513122537

namespace A077898

/-- `∑{#}[n, (n+1-#)*(-2)^#]` -/
def P5021404369513122537.Spec : Prop :=
  ∀ n, P5021404369513122537.a n = A077898 n

end A077898

/-! ## A077898.P12577481566317523615

`(5+(-1)^n*2^(2+n)+3*n)/9`
-/

namespace A077898.P12577481566317523615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 + (-1) ^ n * (2 ^ (2 + n) : ℤ) + (3 * n : ℤ) : ℚ) / 9

end

end A077898.P12577481566317523615

namespace A077898

/-- `(5+(-1)^n*2^(2+n)+3*n)/9` -/
def P12577481566317523615.Spec : Prop :=
  ∀ n, P12577481566317523615.a n = (A077898 n : ℚ)

end A077898

/-! ## A077898.P12503912851316456515

`1-2*a(n-1)+n` with `a(0)=1`
-/

namespace A077898.P12503912851316456515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 2 * a (n - 1) + (n : ℤ)

end

end A077898.P12503912851316456515

namespace A077898

/-- `1-2*a(n-1)+n` -/
def P12503912851316456515.Spec : Prop :=
  ∀ n, P12503912851316456515.a n = A077898 n

end A077898

/-! ## A077898.P6310444184869187964

`1-(2*a(n-1)-n)` with `a(0)=1`
-/

namespace A077898.P6310444184869187964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (2 * a (n - 1) - (n : ℤ))

end

end A077898.P6310444184869187964

namespace A077898

/-- `1-(2*a(n-1)-n)` -/
def P6310444184869187964.Spec : Prop :=
  ∀ n, P6310444184869187964.a n = A077898 n

end A077898

/-! ## A077898.P3082822811752350363

`n+1-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A077898.P3082822811752350363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - (a (n - 1) + a (n - 1))

end

end A077898.P3082822811752350363

namespace A077898

/-- `n+1-(a(n-1)+a(n-1))` -/
def P3082822811752350363.Spec : Prop :=
  ∀ n, P3082822811752350363.a n = A077898 n

end A077898

/-! ## A077898.P11441251405725785220

`1-(a(n-1)-(n-a(n-1)))` with `a(0)=1`
-/

namespace A077898.P11441251405725785220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - ((n : ℤ) - a (n - 1)))

end

end A077898.P11441251405725785220

namespace A077898

/-- `1-(a(n-1)-(n-a(n-1)))` -/
def P11441251405725785220.Spec : Prop :=
  ∀ n, P11441251405725785220.a n = A077898 n

end A077898

/-! ## A077898.P741846567531812264

`A140962(n+2)+2+n`
-/

namespace A077898.P741846567531812264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140962 (n + 2) + 2 + (n : ℤ)

end

end A077898.P741846567531812264

namespace A077898

/-- `A140962(n+2)+2+n` -/
def P741846567531812264.Spec : Prop :=
  ∀ n, P741846567531812264.a n = A077898 n

end A077898

/-! ## A077898.P8786620701280042951

`A053088(n)*A056594(2*n)`
-/

namespace A077898.P8786620701280042951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 n * A056594 (2 * n)

end

end A077898.P8786620701280042951

namespace A077898

/-- `A053088(n)*A056594(2*n)` -/
def P8786620701280042951.Spec : Prop :=
  ∀ n, P8786620701280042951.a n = A077898 n

end A077898

/-! ## A077898.P14267197763685524791

`∑[∑[ogf(1/(1+2x))]]`
-/

namespace A077898.P14267197763685524791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 2] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077898.P14267197763685524791

namespace A077898

/-- `∑[∑[ogf(1/(1+2x))]]` -/
def P14267197763685524791.Spec : Prop :=
  ∀ n, P14267197763685524791.a n = A077898 n

end A077898

/-! ## A077898.P7846395167633840927

`∑[A077925(n)]`
-/

namespace A077898.P7846395167633840927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077898.P7846395167633840927

namespace A077898

/-- `∑[A077925(n)]` -/
def P7846395167633840927.Spec : Prop :=
  ∀ n, P7846395167633840927.a n = A077898 n

end A077898

/-! ## A077898.P5894244224009132760

`∑[∑[A122803(n)]]`
-/

namespace A077898.P5894244224009132760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077898.P5894244224009132760

namespace A077898

/-- `∑[∑[A122803(n)]]` -/
def P5894244224009132760.Spec : Prop :=
  ∀ n, P5894244224009132760.a n = A077898 n

end A077898

/-! ## A077898.P17799063385183485258

`∑[A077953(2*n)]`
-/

namespace A077898.P17799063385183485258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077953 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077898.P17799063385183485258

namespace A077898

/-- `∑[A077953(2*n)]` -/
def P17799063385183485258.Spec : Prop :=
  ∀ n, P17799063385183485258.a n = A077898 n

end A077898

/-! ## A077898.P7372540968175430659

`∑[A077980(2*n)]`
-/

namespace A077898.P7372540968175430659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077980 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077898.P7372540968175430659

namespace A077898

/-- `∑[A077980(2*n)]` -/
def P7372540968175430659.Spec : Prop :=
  ∀ n, P7372540968175430659.a n = A077898 n

end A077898

/-! ## A077898.P14082050835873011231

`∑[A077886(3*n)]`
-/

namespace A077898.P14082050835873011231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077886 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077898.P14082050835873011231

namespace A077898

/-- `∑[A077886(3*n)]` -/
def P14082050835873011231.Spec : Prop :=
  ∀ n, P14082050835873011231.a n = A077898 n

end A077898

/-! ## A077898.P8354227892695859202

`∑[∑[A123344(n+1)]]`
-/

namespace A077898.P8354227892695859202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077898.P8354227892695859202

namespace A077898

/-- `∑[∑[A123344(n+1)]]` -/
def P8354227892695859202.Spec : Prop :=
  ∀ n, P8354227892695859202.a n = A077898 n

end A077898

/-! ## A077898.P9825433301947293595

`∑[∑[A077966(2*n)]]`
-/

namespace A077898.P9825433301947293595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077898.P9825433301947293595

namespace A077898

/-- `∑[∑[A077966(2*n)]]` -/
def P9825433301947293595.Spec : Prop :=
  ∀ n, P9825433301947293595.a n = A077898 n

end A077898

/-! ## A077898.P14939647462263959672

`∑[A084247(n+1)-1]`
-/

namespace A077898.P14939647462263959672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077898.P14939647462263959672

namespace A077898

/-- `∑[A084247(n+1)-1]` -/
def P14939647462263959672.Spec : Prop :=
  ∀ n, P14939647462263959672.a n = A077898 n

end A077898

/-!
# A077899: Expansion of (1-x)^(-1)/(1+x-2*x^2+x^3).

The programs for A077899, the canonical program `A077899.P8115881710681232506` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077899 has offset 0).

The definition of A077899 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x^2+3x^3-x^4))` (program `A077899.P8115881710681232506`, by `A077899.P8115881710681232506.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077899.P8115881710681232506

`ogf(1/(1-3x^2+3x^3-x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077899

/-- `ogf(1/(1-3x^2+3x^3-x^4))` -/
def P8115881710681232506.Spec : Prop :=
  ∀ n, P8115881710681232506.a n = A077899 n

theorem P8115881710681232506.correct : P8115881710681232506.Spec := by
  intro n
  simp only [A077899]

end A077899

/-! ## A077899.P10390339736319628324

`∑[ogf(1/(1+x-2x^2+x^3))]`
-/

namespace A077899.P10390339736319628324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077899.P10390339736319628324

namespace A077899

/-- `∑[ogf(1/(1+x-2x^2+x^3))]` -/
def P10390339736319628324.Spec : Prop :=
  ∀ n, P10390339736319628324.a n = A077899 n

end A077899

/-! ## A077899.P4957359219499871426

`∑[∑[A078039(n)]]`
-/

namespace A077899.P4957359219499871426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078039 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077899.P4957359219499871426

namespace A077899

/-- `∑[∑[A078039(n)]]` -/
def P4957359219499871426.Spec : Prop :=
  ∀ n, P4957359219499871426.a n = A077899 n

end A077899

/-! ## A077899.P17538228931966542134

`∑[(-1)^n*A002478(n)]`
-/

namespace A077899.P17538228931966542134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077899.P17538228931966542134

namespace A077899

/-- `∑[(-1)^n*A002478(n)]` -/
def P17538228931966542134.Spec : Prop :=
  ∀ n, P17538228931966542134.a n = A077899 n

end A077899

/-! ## A077899.P2660074115176062085

`(-1)^n*A141015(n)+1`
-/

namespace A077899.P2660074115176062085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A141015 n + 1

end

end A077899.P2660074115176062085

namespace A077899

/-- `(-1)^n*A141015(n)+1` -/
def P2660074115176062085.Spec : Prop :=
  ∀ n, P2660074115176062085.a n = A077899 n

end A077899

/-! ## A077899.P14063782002093007080

`∑[(-1)^n*A000930(2*n)]`
-/

namespace A077899.P14063782002093007080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000930 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077899.P14063782002093007080

namespace A077899

/-- `∑[(-1)^n*A000930(2*n)]` -/
def P14063782002093007080.Spec : Prop :=
  ∀ n, P14063782002093007080.a n = A077899 n

end A077899

/-! ## A077899.P12515622524801855806

`∑[A002478(n)*A033999(n)]`
-/

namespace A077899.P12515622524801855806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077899.P12515622524801855806

namespace A077899

/-- `∑[A002478(n)*A033999(n)]` -/
def P12515622524801855806.Spec : Prop :=
  ∀ n, P12515622524801855806.a n = A077899 n

end A077899

/-! ## A077899.P2241776075359360647

`∑[A000930(2*n)*A033999(n)]`
-/

namespace A077899.P2241776075359360647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (2 * n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077899.P2241776075359360647

namespace A077899

/-- `∑[A000930(2*n)*A033999(n)]` -/
def P2241776075359360647.Spec : Prop :=
  ∀ n, P2241776075359360647.a n = A077899 n

end A077899

/-! ## A077899.P399516226360555893

`∑[A033999(n)*A199804(2*n)]`
-/

namespace A077899.P399516226360555893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A199804 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077899.P399516226360555893

namespace A077899

/-- `∑[A033999(n)*A199804(2*n)]` -/
def P399516226360555893.Spec : Prop :=
  ∀ n, P399516226360555893.a n = A077899 n

end A077899

/-! ## A077899.P11427660963054952951

`∑[A000930(2*n)*A056594(2*n)]`
-/

namespace A077899.P11427660963054952951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (2 * n) * A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077899.P11427660963054952951

namespace A077899

/-- `∑[A000930(2*n)*A056594(2*n)]` -/
def P11427660963054952951.Spec : Prop :=
  ∀ n, P11427660963054952951.a n = A077899 n

end A077899

/-! ## A077899.P5453461787714900306

`1-A033999(n+1)*A142474(n+2)`
-/

namespace A077899.P5453461787714900306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033999 (n + 1) * A142474 (n + 2)

end

end A077899.P5453461787714900306

namespace A077899

/-- `1-A033999(n+1)*A142474(n+2)` -/
def P5453461787714900306.Spec : Prop :=
  ∀ n, P5453461787714900306.a n = A077899 n

end A077899

/-! ## A077899.P15615864532628546290

`A057427(n)+A033999(n)*A141683(n+1)`
-/

namespace A077899.P15615864532628546290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A033999 n * A141683 (n + 1)

end

end A077899.P15615864532628546290

namespace A077899

/-- `A057427(n)+A033999(n)*A141683(n+1)` -/
def P15615864532628546290.Spec : Prop :=
  ∀ n, P15615864532628546290.a n = A077899 n

end A077899

/-! ## A077899.P5264959651174570390

`∑[A057077(2*n)*A078012(A005408(n+1))]`
-/

namespace A077899.P5264959651174570390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A078012 (A005408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077899.P5264959651174570390

namespace A077899

/-- `∑[A057077(2*n)*A078012(A005408(n+1))]` -/
def P5264959651174570390.Spec : Prop :=
  ∀ n, P5264959651174570390.a n = A077899 n

end A077899

/-! ## A077899.P6118351176230866413

`A002828(n²)+A033999(n)*A141683(n+1)`
-/

namespace A077899.P6118351176230866413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (n ^ 2) + A033999 n * A141683 (n + 1)

end

end A077899.P6118351176230866413

namespace A077899

/-- `A002828(n²)+A033999(n)*A141683(n+1)` -/
def P6118351176230866413.Spec : Prop :=
  ∀ n, P6118351176230866413.a n = A077899 n

end A077899

