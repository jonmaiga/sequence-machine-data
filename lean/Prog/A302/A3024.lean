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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
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

/-!
# A302401: Total domination number of the n X n king graph.

The programs for A302401, there is no canonical definition to state claims against.
-/

/-! ## A302401.P13637390492621568943

`A303378(∑[4*(n+1)]+1)`
-/

namespace A302401.P13637390492621568943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303378 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302401.P13637390492621568943

/-! ## A302401.P17255804260001845046

`A015970(n)*A303378(A001844(n+1))`
-/

namespace A302401.P17255804260001845046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 n * A303378 (A001844 (n + 1)).toNat

end

end A302401.P17255804260001845046

/-! ## A302401.P8378994902623113938

`A303378(A001844(n+1))^A015970(n+1)`
-/

namespace A302401.P8378994902623113938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303378 (A001844 (n + 1)).toNat : ℚ) ^ (A015970 (n + 1) : ℤ)

end

end A302401.P8378994902623113938

/-! ## A302401.P14350456618670081608

`or(A003982(n+1), A303378(A001844(n+1)))`
-/

namespace A302401.P14350456618670081608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 (n + 1)) (A303378 (A001844 (n + 1)).toNat)

end

end A302401.P14350456618670081608

/-! ## A302401.P9190233209879422783

`A303378(A001844(n+1))%A303114(3*n+5)`
-/

namespace A302401.P9190233209879422783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303378 (A001844 (n + 1)).toNat) (A303114 (3 * n + 5))

end

end A302401.P9190233209879422783

/-!
# A302402: Total domination number of the n-ladder graph.

The programs for A302402, the canonical program `A302402.P7836109694096223322` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302402 has offset 0).

The definition of A302402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302402.P7836109694096223322

`2*floor((n+2)/3)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A302402

/-- `2*floor((n+2)/3)` -/
def P7836109694096223322.Spec : Prop :=
  ∀ n, P7836109694096223322.a n = A302402 n

theorem P7836109694096223322.correct : P7836109694096223322.Spec := by
  intro n
  simp only [A302402]

end A302402

/-! ## A302402.P5429735397766407792

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A302402.P5429735397766407792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2, 2] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A302402.P5429735397766407792

namespace A302402

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P5429735397766407792.Spec : Prop :=
  ∀ n, P5429735397766407792.a n = A302402 n

end A302402

/-! ## A302402.P6582470461840695000

`∑[ceil(tan(dr(∑[n])))]`
-/

namespace A302402.P6582470461840695000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302402.P6582470461840695000

namespace A302402

/-- `∑[ceil(tan(dr(∑[n])))]` -/
def P6582470461840695000.Spec : Prop :=
  ∀ n, P6582470461840695000.a n = A302402 n

end A302402

/-! ## A302402.P15050908063747006796

`∑[round(tan(dr(∑[n])))]`
-/

namespace A302402.P15050908063747006796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302402.P15050908063747006796

namespace A302402

/-- `∑[round(tan(dr(∑[n])))]` -/
def P15050908063747006796.Spec : Prop :=
  ∀ n, P15050908063747006796.a n = A302402 n

end A302402

/-! ## A302402.P3528999206773854868

`∑[∑[2*n]%3]`
-/

namespace A302402.P3528999206773854868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302402.P3528999206773854868

namespace A302402

/-- `∑[∑[2*n]%3]` -/
def P3528999206773854868.Spec : Prop :=
  ∀ n, (P3528999206773854868.a n : ℤ) = A302402 n

end A302402

/-! ## A302402.P18046079744915432709

`∑[3-gcd(3, ∑[n])]`
-/

namespace A302402.P18046079744915432709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302402.P18046079744915432709

namespace A302402

/-- `∑[3-gcd(3, ∑[n])]` -/
def P18046079744915432709.Spec : Prop :=
  ∀ n, P18046079744915432709.a n = A302402 n

end A302402

/-! ## A302402.P16207046580273096930

`∑[lcm(2, ∑[n]%3)]`
-/

namespace A302402.P16207046580273096930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((∑ j ∈ Finset.range (n + 1), f2 j) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302402.P16207046580273096930

namespace A302402

/-- `∑[lcm(2, ∑[n]%3)]` -/
def P16207046580273096930.Spec : Prop :=
  ∀ n, (P16207046580273096930.a n : ℤ) = A302402 n

end A302402

/-! ## A302402.P11050564963326158090

`∑[val(n%3+3, 2)]`
-/

namespace A302402.P11050564963326158090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n % 3 + 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302402.P11050564963326158090

namespace A302402

/-- `∑[val(n%3+3, 2)]` -/
def P11050564963326158090.Spec : Prop :=
  ∀ n, (P11050564963326158090.a n : ℤ) = A302402 n

end A302402

/-! ## A302402.P11057748692820176257

`∑[and(2, (n+1)%3)]`
-/

namespace A302402.P11057748692820176257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 ((n + 1) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302402.P11057748692820176257

namespace A302402

/-- `∑[and(2, (n+1)%3)]` -/
def P11057748692820176257.Spec : Prop :=
  ∀ n, (P11057748692820176257.a n : ℤ) = A302402 n

end A302402

/-! ## A302402.P1062659994203242857

`∑[val(dr((n+2)²), 3)]`
-/

namespace A302402.P1062659994203242857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.digitalRoot ((n + 2) ^ 2 : ℤ)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302402.P1062659994203242857

namespace A302402

/-- `∑[val(dr((n+2)²), 3)]` -/
def P1062659994203242857.Spec : Prop :=
  ∀ n, (P1062659994203242857.a n : ℤ) = A302402 n

end A302402

/-! ## A302402.P14459706980510427124

`∑[val((∑[n]+2)², 3)]`
-/

namespace A302402.P14459706980510427124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((∑ j ∈ Finset.range (n + 1), f2 j + 2) ^ 2) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302402.P14459706980510427124

namespace A302402

/-- `∑[val((∑[n]+2)², 3)]` -/
def P14459706980510427124.Spec : Prop :=
  ∀ n, (P14459706980510427124.a n : ℤ) = A302402 n

end A302402

/-! ## A302402.P8803540359284801193

`∑[C(2, dr(∑[n]))]-1`
-/

namespace A302402.P8803540359284801193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A302402.P8803540359284801193

namespace A302402

/-- `∑[C(2, dr(∑[n]))]-1` -/
def P8803540359284801193.Spec : Prop :=
  ∀ n, P8803540359284801193.a n = A302402 n

end A302402

/-! ## A302402.P8704507468601145349

`∑[dr((n²+n)%3)]`
-/

namespace A302402.P8704507468601145349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((n ^ 2 + n) % 3 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302402.P8704507468601145349

namespace A302402

/-- `∑[dr((n²+n)%3)]` -/
def P8704507468601145349.Spec : Prop :=
  ∀ n, (P8704507468601145349.a n : ℤ) = A302402 n

end A302402

/-! ## A302402.P6810766788167070944

`a(n-3)+2` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A302402.P6810766788167070944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  a (n - 3) + 2

end

end A302402.P6810766788167070944

namespace A302402

/-- `a(n-3)+2` -/
def P6810766788167070944.Spec : Prop :=
  ∀ n, (P6810766788167070944.a n : ℤ) = A302402 n

end A302402

/-! ## A302402.P513077521239468087

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A302402.P513077521239468087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302402.P513077521239468087

namespace A302402

/-- `∑[abs(a(n-3))]` -/
def P513077521239468087.Spec : Prop :=
  ∀ n, (P513077521239468087.a n : ℤ) = A302402 n

end A302402

/-! ## A302402.P15813084057073613419

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A302402.P15813084057073613419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302402.P15813084057073613419

namespace A302402

/-- `∑[dr(a(n-3))]` -/
def P15813084057073613419.Spec : Prop :=
  ∀ n, (P15813084057073613419.a n : ℤ) = A302402 n

end A302402

/-! ## A302402.P15939299300564860076

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A302402.P15939299300564860076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302402.P15939299300564860076

namespace A302402

/-- `∑[floor(a(n-3))]` -/
def P15939299300564860076.Spec : Prop :=
  ∀ n, (P15939299300564860076.a n : ℤ) = A302402 n

end A302402

/-! ## A302402.P5934209897669645599

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A302402.P5934209897669645599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302402.P5934209897669645599

namespace A302402

/-- `∑[ceil(a(n-3))]` -/
def P5934209897669645599.Spec : Prop :=
  ∀ n, (P5934209897669645599.a n : ℤ) = A302402 n

end A302402

/-! ## A302402.P9308931074813051950

`∑[round(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A302402.P9308931074813051950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302402.P9308931074813051950

namespace A302402

/-- `∑[round(a(n-3))]` -/
def P9308931074813051950.Spec : Prop :=
  ∀ n, (P9308931074813051950.a n : ℤ) = A302402 n

end A302402

/-! ## A302402.P3638412169772666296

`∑[∑[ogf(2x/(1+x+x^2))]]`
-/

namespace A302402.P3638412169772666296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302402.P3638412169772666296

namespace A302402

/-- `∑[∑[ogf(2x/(1+x+x^2))]]` -/
def P3638412169772666296.Spec : Prop :=
  ∀ n, P3638412169772666296.a n = A302402 n

end A302402

/-!
# A302403: Generalized chopsticks sequence (see Comments lines for definition).

The programs for A302403, there is no canonical definition to state claims against.
-/

/-! ## A302403.P4098394642822132576

`A371169(n+1)+A024356(A158118(n+1))`
-/

namespace A302403.P4098394642822132576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371169 (n + 1) + A024356 (A158118 (n + 1)).toNat

end

end A302403.P4098394642822132576

/-! ## A302403.P15752798967812206524

`record[A141213(n)-A338170(n+1)]`
-/

namespace A302403.P15752798967812206524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 n - A338170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302403.P15752798967812206524

/-! ## A302403.P15696360154392775232

`eq[A010121(n), A106400(A063698(n))]`
-/

namespace A302403.P15696360154392775232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A063698 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302403.P15696360154392775232

/-! ## A302403.P3752276552897354088

`eq[A046978(n)², A106400(A063698(n))]`
-/

namespace A302403.P3752276552897354088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A063698 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302403.P3752276552897354088

/-!
# A302404: Total domination number of the n-Moebius ladder.

The programs for A302404, the canonical program `A302404.P4086242662706649238` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302404 has offset 0).

The definition of A302404 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302404.P4086242662706649238

`a(n-6)+4` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2, a(4)=3, a(5)=4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A302404

/-- `a(n-6)+4` -/
def P4086242662706649238.Spec : Prop :=
  ∀ n, (P4086242662706649238.a n : ℤ) = A302404 n

theorem P4086242662706649238.correct : P4086242662706649238.Spec := by
  intro n
  simp only [A302404]

end A302404

/-! ## A302404.P10892149909270548489

`char[6*n+1]+ceil(2*n/3)`
-/

namespace A302404.P10892149909270548489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌈2 * ((n : ℚ) / 3)⌉

end

end A302404.P10892149909270548489

namespace A302404

/-- `char[6*n+1]+ceil(2*n/3)` -/
def P10892149909270548489.Spec : Prop :=
  ∀ n, P10892149909270548489.a n = A302404 n

end A302404

/-! ## A302404.P9013466727371867254

`∑[((n*char[2*n]+1)*2*n)%3]`
-/

namespace A302404.P9013466727371867254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (if ∃ j, f2 j = n then 1 else 0) + 1) * (2 * n) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302404.P9013466727371867254

namespace A302404

/-- `∑[((n*char[2*n]+1)*2*n)%3]` -/
def P9013466727371867254.Spec : Prop :=
  ∀ n, (P9013466727371867254.a n : ℤ) = A302404 n

end A302404

/-! ## A302404.P14568576234890635850

`xor(A079979(n), A323735(n+2))`
-/

namespace A302404.P14568576234890635850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A079979 n) (A323735 (n + 2))

end

end A302404.P14568576234890635850

namespace A302404

/-- `xor(A079979(n), A323735(n+2))` -/
def P14568576234890635850.Spec : Prop :=
  ∀ n, P14568576234890635850.a n = A302404 n

end A302404

/-! ## A302404.P14109445891876920969

`∑[A333755(∑[A119910(n+1)])]`
-/

namespace A302404.P14109445891876920969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119910 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302404.P14109445891876920969

namespace A302404

/-- `∑[A333755(∑[A119910(n+1)])]` -/
def P14109445891876920969.Spec : Prop :=
  ∀ n, P14109445891876920969.a n = A302404 n

end A302404

/-! ## A302404.P3043962731625764057

`A004523(A323735(n+2)+n-A004523(n))`
-/

namespace A302404.P3043962731625764057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A323735 (n + 2) + ((n : ℤ) - A004523 n)).toNat

end

end A302404.P3043962731625764057

namespace A302404

/-- `A004523(A323735(n+2)+n-A004523(n))` -/
def P3043962731625764057.Spec : Prop :=
  ∀ n, P3043962731625764057.a n = A302404 n

end A302404

/-! ## A302404.P2360360894168974085

`A004523(A052928(n+1)+A011655(n))`
-/

namespace A302404.P2360360894168974085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A052928 (n + 1) + A011655 n).toNat

end

end A302404.P2360360894168974085

namespace A302404

/-- `A004523(A052928(n+1)+A011655(n))` -/
def P2360360894168974085.Spec : Prop :=
  ∀ n, P2360360894168974085.a n = A302404 n

end A302404

/-! ## A302404.P1402393855296195462

`A004523(A051275(n+1)+A004523(n+1))`
-/

namespace A302404.P1402393855296195462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A051275 (n + 1) + A004523 (n + 1)).toNat

end

end A302404.P1402393855296195462

namespace A302404

/-- `A004523(A051275(n+1)+A004523(n+1))` -/
def P1402393855296195462.Spec : Prop :=
  ∀ n, P1402393855296195462.a n = A302404 n

end A302404

/-! ## A302404.P10110430631182011527

`A289139(A047310(n+2))`
-/

namespace A302404.P10110430631182011527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289139 (A047310 (n + 2)).toNat

end

end A302404.P10110430631182011527

namespace A302404

/-- `A289139(A047310(n+2))` -/
def P10110430631182011527.Spec : Prop :=
  ∀ n, P10110430631182011527.a n = A302404 n

end A302404

/-! ## A302404.P1360376094007852841

`A236916(A063224(n+1))`
-/

namespace A302404.P1360376094007852841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236916 (A063224 (n + 1)).toNat

end

end A302404.P1360376094007852841

namespace A302404

/-- `A236916(A063224(n+1))` -/
def P1360376094007852841.Spec : Prop :=
  ∀ n, P1360376094007852841.a n = A302404 n

end A302404

/-! ## A302404.P5904149295399174176

`A004524(A047569(n+2))`
-/

namespace A302404.P5904149295399174176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A047569 (n + 2)).toNat

end

end A302404.P5904149295399174176

namespace A302404

/-- `A004524(A047569(n+2))` -/
def P5904149295399174176.Spec : Prop :=
  ∀ n, P5904149295399174176.a n = A302404 n

end A302404

/-! ## A302404.P11900305393693388569

`A004524(A047571(n+2))`
-/

namespace A302404.P11900305393693388569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A047571 (n + 2)).toNat

end

end A302404.P11900305393693388569

namespace A302404

/-- `A004524(A047571(n+2))` -/
def P11900305393693388569.Spec : Prop :=
  ∀ n, P11900305393693388569.a n = A302404 n

end A302404

/-! ## A302404.P6013978348292923299

`A004524(A047572(n+2))`
-/

namespace A302404.P6013978348292923299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A047572 (n + 2)).toNat

end

end A302404.P6013978348292923299

namespace A302404

/-- `A004524(A047572(n+2))` -/
def P6013978348292923299.Spec : Prop :=
  ∀ n, P6013978348292923299.a n = A302404 n

end A302404

/-! ## A302404.P10120600050129612914

`A004524(A099480(n)+1+n)`
-/

namespace A302404.P10120600050129612914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A099480 n + 1 + (n : ℤ)).toNat

end

end A302404.P10120600050129612914

namespace A302404

/-- `A004524(A099480(n)+1+n)` -/
def P10120600050129612914.Spec : Prop :=
  ∀ n, P10120600050129612914.a n = A302404 n

end A302404

/-! ## A302404.P15351173687243859583

`A004526(A131380(A004526(n+1))+n+1)`
-/

namespace A302404.P15351173687243859583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A131380 (A004526 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A302404.P15351173687243859583

namespace A302404

/-- `A004526(A131380(A004526(n+1))+n+1)` -/
def P15351173687243859583.Spec : Prop :=
  ∀ n, P15351173687243859583.a n = A302404 n

end A302404

/-! ## A302404.P1410371076377630258

`A004524(A004524(A287393(n+1))+n+1)`
-/

namespace A302404.P1410371076377630258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A004524 (A287393 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A302404.P1410371076377630258

namespace A302404

/-- `A004524(A004524(A287393(n+1))+n+1)` -/
def P1410371076377630258.Spec : Prop :=
  ∀ n, P1410371076377630258.a n = A302404 n

end A302404

/-! ## A302404.P12737814832900155400

`A194222(A065502(n+1))`
-/

namespace A302404.P12737814832900155400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194222 (A065502 (n + 1)).toNat

end

end A302404.P12737814832900155400

namespace A302404

/-- `A194222(A065502(n+1))` -/
def P12737814832900155400.Spec : Prop :=
  ∀ n, P12737814832900155400.a n = A302404 n

end A302404

/-! ## A302404.P8573500530850312752

`floor(A109360(2*n+1)/5)`
-/

namespace A302404.P8573500530850312752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A109360 (2 * n + 1) : ℚ) / 5⌋

end

end A302404.P8573500530850312752

namespace A302404

/-- `floor(A109360(2*n+1)/5)` -/
def P8573500530850312752.Spec : Prop :=
  ∀ n, P8573500530850312752.a n = A302404 n

end A302404

/-! ## A302404.P6519932989042862189

`A123919(A359380(n+1))`
-/

namespace A302404.P6519932989042862189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (A359380 (n + 1)).toNat

end

end A302404.P6519932989042862189

namespace A302404

/-- `A123919(A359380(n+1))` -/
def P6519932989042862189.Spec : Prop :=
  ∀ n, P6519932989042862189.a n = A302404 n

end A302404

/-! ## A302404.P2505955154734420195

`A123919(A131793(n+1)+n)`
-/

namespace A302404.P2505955154734420195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (A131793 (n + 1) + (n : ℤ)).toNat

end

end A302404.P2505955154734420195

namespace A302404

/-- `A123919(A131793(n+1)+n)` -/
def P2505955154734420195.Spec : Prop :=
  ∀ n, P2505955154734420195.a n = A302404 n

end A302404

/-!
# A302405: Total domination number of the n-prism graph.

The programs for A302405, the canonical program `A302405.P6776312788592575446` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302405 has offset 0).

The definition of A302405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302405.P6776312788592575446

`a(n-6)+4` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=4, a(5)=4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A302405

/-- `a(n-6)+4` -/
def P6776312788592575446.Spec : Prop :=
  ∀ n, (P6776312788592575446.a n : ℤ) = A302405 n

theorem P6776312788592575446.correct : P6776312788592575446.Spec := by
  intro n
  simp only [A302405]

end A302405

/-! ## A302405.P3158250159193162269

`∑[(n²*∑[n%2])%3]`
-/

namespace A302405.P3158250159193162269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302405.P3158250159193162269

namespace A302405

/-- `∑[(n²*∑[n%2])%3]` -/
def P3158250159193162269.Spec : Prop :=
  ∀ n, (P3158250159193162269.a n : ℤ) = A302405 n

end A302405

/-! ## A302405.P3092772725617333660

`∑[ceil(n/2)%(4-gcd(3, n))]`
-/

namespace A302405.P3092772725617333660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n : ℚ) / 2⌉ (4 - (Nat.gcd 3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302405.P3092772725617333660

namespace A302405

/-- `∑[ceil(n/2)%(4-gcd(3, n))]` -/
def P3092772725617333660.Spec : Prop :=
  ∀ n, P3092772725617333660.a n = A302405 n

end A302405

/-! ## A302405.P11433188565159654205

`A140201(ceil(2*n/3))`
-/

namespace A302405.P11433188565159654205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140201 ⌈2 * ((n : ℚ) / 3)⌉.toNat

end

end A302405.P11433188565159654205

namespace A302405

/-- `A140201(ceil(2*n/3))` -/
def P11433188565159654205.Spec : Prop :=
  ∀ n, P11433188565159654205.a n = A302405 n

end A302405

/-! ## A302405.P17087156267775432838

`A090223(A090168(n)+1)`
-/

namespace A302405.P17087156267775432838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (A090168 n + 1).toNat

end

end A302405.P17087156267775432838

namespace A302405

/-- `A090223(A090168(n)+1)` -/
def P17087156267775432838.Spec : Prop :=
  ∀ n, P17087156267775432838.a n = A302405 n

end A302405

/-! ## A302405.P17817980478735611291

`A099479(A335129(n+3))`
-/

namespace A302405.P17817980478735611291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 (A335129 (n + 3)).toNat

end

end A302405.P17817980478735611291

namespace A302405

/-- `A099479(A335129(n+3))` -/
def P17817980478735611291.Spec : Prop :=
  ∀ n, P17817980478735611291.a n = A302405 n

end A302405

/-! ## A302405.P15965285499181319861

`A096386(n)+A011655(n)`
-/

namespace A302405.P15965285499181319861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096386 n + A011655 n

end

end A302405.P15965285499181319861

namespace A302405

/-- `A096386(n)+A011655(n)` -/
def P15965285499181319861.Spec : Prop :=
  ∀ n, P15965285499181319861.a n = A302405 n

end A302405

/-! ## A302405.P1761100048516498622

`A214090(n)+A004396(n)`
-/

namespace A302405.P1761100048516498622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214090 n + A004396 n

end

end A302405.P1761100048516498622

namespace A302405

/-- `A214090(n)+A004396(n)` -/
def P1761100048516498622.Spec : Prop :=
  ∀ n, P1761100048516498622.a n = A302405 n

end A302405

/-! ## A302405.P9648420951489477954

`A090168(n)-A152467(n)`
-/

namespace A302405.P9648420951489477954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090168 n - A152467 n

end

end A302405.P9648420951489477954

namespace A302405

/-- `A090168(n)-A152467(n)` -/
def P9648420951489477954.Spec : Prop :=
  ∀ n, P9648420951489477954.a n = A302405 n

end A302405

/-! ## A302405.P10430034094362454545

`A047517(n+1)-A004523(n)`
-/

namespace A302405.P10430034094362454545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047517 (n + 1) - A004523 n

end

end A302405.P10430034094362454545

namespace A302405

/-- `A047517(n+1)-A004523(n)` -/
def P10430034094362454545.Spec : Prop :=
  ∀ n, P10430034094362454545.a n = A302405 n

end A302405

/-! ## A302405.P3593787405790124423

`A092200(n)-A123920(n+1)`
-/

namespace A302405.P3593787405790124423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 n - A123920 (n + 1)

end

end A302405.P3593787405790124423

namespace A302405

/-- `A092200(n)-A123920(n+1)` -/
def P3593787405790124423.Spec : Prop :=
  ∀ n, P3593787405790124423.a n = A302405 n

end A302405

/-! ## A302405.P14023586384915409671

`A047271(n+1)-A047503(n+1)`
-/

namespace A302405.P14023586384915409671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047271 (n + 1) - A047503 (n + 1)

end

end A302405.P14023586384915409671

namespace A302405

/-- `A047271(n+1)-A047503(n+1)` -/
def P14023586384915409671.Spec : Prop :=
  ∀ n, P14023586384915409671.a n = A302405 n

end A302405

/-! ## A302405.P14275443891534319478

`A032766(n)-A001068(A004523(n))`
-/

namespace A302405.P14275443891534319478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n - A001068 (A004523 n).toNat

end

end A302405.P14275443891534319478

namespace A302405

/-- `A032766(n)-A001068(A004523(n))` -/
def P14275443891534319478.Spec : Prop :=
  ∀ n, P14275443891534319478.a n = A302405 n

end A302405

/-! ## A302405.P6113880679811675682

`∑[A008619(A285872(n))-A008611(n)]`
-/

namespace A302405.P6113880679811675682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A285872 n).toNat - A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302405.P6113880679811675682

namespace A302405

/-- `∑[A008619(A285872(n))-A008611(n)]` -/
def P6113880679811675682.Spec : Prop :=
  ∀ n, P6113880679811675682.a n = A302405 n

end A302405

/-! ## A302405.P4747256086040896538

`A004523(A008619(n))+n-A004523(n)`
-/

namespace A302405.P4747256086040896538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A008619 n).toNat + ((n : ℤ) - A004523 n)

end

end A302405.P4747256086040896538

namespace A302405

/-- `A004523(A008619(n))+n-A004523(n)` -/
def P4747256086040896538.Spec : Prop :=
  ∀ n, P4747256086040896538.a n = A302405 n

end A302405

/-! ## A302405.P12788919448224911010

`n-A004523(A004523(n)-A008615(n))`
-/

namespace A302405.P12788919448224911010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004523 (A004523 n - A008615 n).toNat

end

end A302405.P12788919448224911010

namespace A302405

/-- `n-A004523(A004523(n)-A008615(n))` -/
def P12788919448224911010.Spec : Prop :=
  ∀ n, P12788919448224911010.a n = A302405 n

end A302405

/-! ## A302405.P15875908187601457890

`n-A004523(n)+A004523(A110654(n+1))`
-/

namespace A302405.P15875908187601457890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004523 n + A004523 (A110654 (n + 1)).toNat

end

end A302405.P15875908187601457890

namespace A302405

/-- `n-A004523(n)+A004523(A110654(n+1))` -/
def P15875908187601457890.Spec : Prop :=
  ∀ n, P15875908187601457890.a n = A302405 n

end A302405

/-! ## A302405.P10320578745912270121

`A004396(n)+A008615(n)-A002265(A004396(n))`
-/

namespace A302405.P10320578745912270121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A008615 n - A002265 (A004396 n).toNat)

end

end A302405.P10320578745912270121

namespace A302405

/-- `A004396(n)+A008615(n)-A002265(A004396(n))` -/
def P10320578745912270121.Spec : Prop :=
  ∀ n, P10320578745912270121.a n = A302405 n

end A302405

/-! ## A302405.P16607706771794916361

`A004396(n)+A004526(n)-A187321(A004396(n))`
-/

namespace A302405.P16607706771794916361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A004526 n - A187321 (A004396 n).toNat)

end

end A302405.P16607706771794916361

namespace A302405

/-- `A004396(n)+A004526(n)-A187321(A004396(n))` -/
def P16607706771794916361.Spec : Prop :=
  ∀ n, P16607706771794916361.a n = A302405 n

end A302405

/-! ## A302405.P1084933328479294548

`A090223(A010761(n+2))`
-/

namespace A302405.P1084933328479294548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (A010761 (n + 2)).toNat

end

end A302405.P1084933328479294548

namespace A302405

/-- `A090223(A010761(n+2))` -/
def P1084933328479294548.Spec : Prop :=
  ∀ n, P1084933328479294548.a n = A302405 n

end A302405

/-!
# A302406: Total domination number of the n X n torus grid graph.

The programs for A302406, the canonical program `A302406.P10786457506837801270` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302406 has offset 0).

The definition of A302406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302406.P9398376850341930479

`floor(n*sqrt(ceil((ceil(n/2)/2)²)))`
-/

namespace A302406.P9398376850341930479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (⌈((⌈(n : ℚ) / 2⌉ : ℚ) / 2) ^ 2⌉ : ℝ)⌋

end

end A302406.P9398376850341930479

namespace A302406

/-- `floor(n*sqrt(ceil((ceil(n/2)/2)²)))` -/
def P9398376850341930479.Spec : Prop :=
  ∀ n, P9398376850341930479.a n = A302406 n

end A302406

/-! ## A302406.P4447692231079599526

`a(n-2)-A000041(and(3, n-1))+n+1` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A302406.P4447692231079599526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 2) - A000041 (Int.land 3 ((n : ℤ) - 1)).toNat + (n + 1 : ℤ)

end

end A302406.P4447692231079599526

namespace A302406

/-- `a(n-2)-A000041(and(3, n-1))+n+1` -/
def P4447692231079599526.Spec : Prop :=
  ∀ n, P4447692231079599526.a n = A302406 n

end A302406

/-! ## A302406.P10786457506837801270

`A104563(n)-A211521(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A302406

/-- `A104563(n)-A211521(n)` -/
def P10786457506837801270.Spec : Prop :=
  ∀ n, P10786457506837801270.a n = A302406 n

theorem P10786457506837801270.correct : P10786457506837801270.Spec := by
  intro n
  simp only [A302406]

end A302406

/-! ## A302406.P10520707097707187647

`A330133(n)-A396811(n)`
-/

namespace A302406.P10520707097707187647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330133 n - A396811 n

end

end A302406.P10520707097707187647

namespace A302406

/-- `A330133(n)-A396811(n)` -/
def P10520707097707187647.Spec : Prop :=
  ∀ n, P10520707097707187647.a n = A302406 n

end A302406

/-! ## A302406.P1566547431462776246

`∑[A215495(n)-A110659(n)]`
-/

namespace A302406.P1566547431462776246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215495 n - A110659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302406.P1566547431462776246

namespace A302406

/-- `∑[A215495(n)-A110659(n)]` -/
def P1566547431462776246.Spec : Prop :=
  ∀ n, P1566547431462776246.a n = A302406 n

end A302406

/-! ## A302406.P9713260058558929037

`∪[A137928(n+1), A014848(n)]`
-/

namespace A302406.P9713260058558929037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302406.P9713260058558929037

namespace A302406

/-- `∪[A137928(n+1), A014848(n)]` -/
def P9713260058558929037.Spec : Prop :=
  ∀ n, (P9713260058558929037.a n : ℤ) = A302406 n

end A302406

/-! ## A302406.P6747692226829839382

`A001971(n%2+n)+A001971(n)`
-/

namespace A302406.P6747692226829839382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (n % 2 + n) + A001971 n

end

end A302406.P6747692226829839382

namespace A302406

/-- `A001971(n%2+n)+A001971(n)` -/
def P6747692226829839382.Spec : Prop :=
  ∀ n, P6747692226829839382.a n = A302406 n

end A302406

/-! ## A302406.P5089021832311978838

`A008811(n)+A004526(A057979(n))`
-/

namespace A302406.P5089021832311978838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008811 n + A004526 (A057979 n).toNat

end

end A302406.P5089021832311978838

namespace A302406

/-- `A008811(n)+A004526(A057979(n))` -/
def P5089021832311978838.Spec : Prop :=
  ∀ n, P5089021832311978838.a n = A302406 n

end A302406

/-! ## A302406.P5133842414966428748

`A008811(n)+A002265(A093178(n))`
-/

namespace A302406.P5133842414966428748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008811 n + A002265 (A093178 n).toNat

end

end A302406.P5133842414966428748

namespace A302406

/-- `A008811(n)+A002265(A093178(n))` -/
def P5133842414966428748.Spec : Prop :=
  ∀ n, P5133842414966428748.a n = A302406 n

end A302406

/-! ## A302406.P6606093785321733299

`A001971(n)+A000982(A110654(n))`
-/

namespace A302406.P6606093785321733299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n + A000982 (A110654 n).toNat

end

end A302406.P6606093785321733299

namespace A302406

/-- `A001971(n)+A000982(A110654(n))` -/
def P6606093785321733299.Spec : Prop :=
  ∀ n, P6606093785321733299.a n = A302406 n

end A302406

/-! ## A302406.P11613377891559597983

`A001971(A131055(n+1))+A001971(n)`
-/

namespace A302406.P11613377891559597983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A131055 (n + 1)).toNat + A001971 n

end

end A302406.P11613377891559597983

namespace A302406

/-- `A001971(A131055(n+1))+A001971(n)` -/
def P11613377891559597983.Spec : Prop :=
  ∀ n, P11613377891559597983.a n = A302406 n

end A302406

/-! ## A302406.P3530066592766599179

`A001971(2*A110654(n))+A001971(n)`
-/

namespace A302406.P3530066592766599179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (2 * A110654 n).toNat + A001971 n

end

end A302406.P3530066592766599179

namespace A302406

/-- `A001971(2*A110654(n))+A001971(n)` -/
def P3530066592766599179.Spec : Prop :=
  ∀ n, P3530066592766599179.a n = A302406 n

end A302406

/-! ## A302406.P7718066918594016904

`A001971(A000035(n)+n)+A001971(n)`
-/

namespace A302406.P7718066918594016904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A000035 n + (n : ℤ)).toNat + A001971 n

end

end A302406.P7718066918594016904

namespace A302406

/-- `A001971(A000035(n)+n)+A001971(n)` -/
def P7718066918594016904.Spec : Prop :=
  ∀ n, P7718066918594016904.a n = A302406 n

end A302406

/-! ## A302406.P8724672838238771199

`A001971(n)+A000982(n-A004526(n))`
-/

namespace A302406.P8724672838238771199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n + A000982 ((n : ℤ) - A004526 n).toNat

end

end A302406.P8724672838238771199

namespace A302406

/-- `A001971(n)+A000982(n-A004526(n))` -/
def P8724672838238771199.Spec : Prop :=
  ∀ n, P8724672838238771199.a n = A302406 n

end A302406

/-! ## A302406.P16043253393819378618

`A001971(n)+A000982(A004526(n+1))`
-/

namespace A302406.P16043253393819378618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n + A000982 (A004526 (n + 1)).toNat

end

end A302406.P16043253393819378618

namespace A302406

/-- `A001971(n)+A000982(A004526(n+1))` -/
def P16043253393819378618.Spec : Prop :=
  ∀ n, P16043253393819378618.a n = A302406 n

end A302406

/-! ## A302406.P6406676744263506594

`A211521(n+1)-A004526(A004526(n+1))`
-/

namespace A302406.P6406676744263506594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211521 (n + 1) - A004526 (A004526 (n + 1)).toNat

end

end A302406.P6406676744263506594

namespace A302406

/-- `A211521(n+1)-A004526(A004526(n+1))` -/
def P6406676744263506594.Spec : Prop :=
  ∀ n, P6406676744263506594.a n = A302406 n

end A302406

/-! ## A302406.P13613495348075067064

`∑[A110654(A001281(A186421(n)))]`
-/

namespace A302406.P13613495348075067064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001281 (A186421 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302406.P13613495348075067064

namespace A302406

/-- `∑[A110654(A001281(A186421(n)))]` -/
def P13613495348075067064.Spec : Prop :=
  ∀ n, P13613495348075067064.a n = A302406 n

end A302406

/-! ## A302406.P426123656104465430

`A118729(A053438(n))+n`
-/

namespace A302406.P426123656104465430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 (A053438 n).toNat + (n : ℤ)

end

end A302406.P426123656104465430

namespace A302406

/-- `A118729(A053438(n))+n` -/
def P426123656104465430.Spec : Prop :=
  ∀ n, P426123656104465430.a n = A302406 n

end A302406

/-! ## A302406.P3220984208986235326

`A001971(A014707(2*n)+n)+A001971(n)`
-/

namespace A302406.P3220984208986235326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A014707 (2 * n) + (n : ℤ)).toNat + A001971 n

end

end A302406.P3220984208986235326

namespace A302406

/-- `A001971(A014707(2*n)+n)+A001971(n)` -/
def P3220984208986235326.Spec : Prop :=
  ∀ n, P3220984208986235326.a n = A302406 n

end A302406

/-! ## A302406.P8490328112854132776

`A001971(n)+A000982(A002265(2*(n+1)))`
-/

namespace A302406.P8490328112854132776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n + A000982 (A002265 (2 * (n + 1))).toNat

end

end A302406.P8490328112854132776

namespace A302406

/-- `A001971(n)+A000982(A002265(2*(n+1)))` -/
def P8490328112854132776.Spec : Prop :=
  ∀ n, P8490328112854132776.a n = A302406 n

end A302406

/-!
# A302408: Number of n step self-avoiding walks on 3 X infinity grid starting from (0,0).

The programs for A302408, there is no canonical definition to state claims against.
-/

/-! ## A302408.P7938317665211712587

`A336769(A133263(n))-floor(acot(n)²)`
-/

namespace A302408.P7938317665211712587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336769 (A133263 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A302408.P7938317665211712587

/-! ## A302408.P8964845193485606963

`record[gcd(A318758(n+1), A336769(n+2))]`
-/

namespace A302408.P8964845193485606963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A318758 (n + 1)) (A336769 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302408.P8964845193485606963

/-! ## A302408.P6011552164244328884

`A336769(A133263(n))^A178334(n)`
-/

namespace A302408.P6011552164244328884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336769 (A133263 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A302408.P6011552164244328884

/-! ## A302408.P5037886152443045616

`A336769(A133263(n))^A178487(n)`
-/

namespace A302408.P5037886152443045616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336769 (A133263 n).toNat : ℚ) ^ (A178487 n : ℤ)

end

end A302408.P5037886152443045616

/-! ## A302408.P49710505784733805

`A336769(A133263(n))%A003501(n)`
-/

namespace A302408.P49710505784733805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336769 (A133263 n).toNat) (A003501 n)

end

end A302408.P49710505784733805

/-!
# A302409: Number of n X n 0..1 arrays with every element equal to 0, 1, 2 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302409, there is no canonical definition to state claims against.
-/

/-! ## A302409.P6785190444261133684

`A302415(∑[4*n]+1)`
-/

namespace A302409.P6785190444261133684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302409.P6785190444261133684

/-! ## A302409.P10957344825582760055

`record[A003982(n)*A302415(n+1)]`
-/

namespace A302409.P10957344825582760055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302409.P10957344825582760055

/-! ## A302409.P1769556522261730766

`A302415(A001844(n))+A299905(n)`
-/

namespace A302409.P1769556522261730766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A001844 n).toNat + A299905 n

end

end A302409.P1769556522261730766

/-! ## A302409.P11262119794578841040

`lcm(A033999(n), A302415(A001844(n)))`
-/

namespace A302409.P11262119794578841040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A302415 (A001844 n).toNat)

end

end A302409.P11262119794578841040

/-! ## A302409.P2684450039583028866

`or(A016389(n), A302415(A001844(n)))`
-/

namespace A302409.P2684450039583028866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 n) (A302415 (A001844 n).toNat)

end

end A302409.P2684450039583028866

/-!
# A302410: Number of nX3 0..1 arrays with every element equal to 0, 1, 2 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302410, there is no canonical definition to state claims against.
-/

/-! ## A302410.P15612129798572089406

`A302415(∑[n+3]+1)`
-/

namespace A302410.P15612129798572089406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302410.P15612129798572089406

/-! ## A302410.P12884520089604775029

`A302415(A034856(n+2))+A260502(n+1)`
-/

namespace A302410.P12884520089604775029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A034856 (n + 2)).toNat + A260502 (n + 1)

end

end A302410.P12884520089604775029

/-! ## A302410.P7072168525432046424

`A254378(2*(n+1))*A302415(A034856(n+2))`
-/

namespace A302410.P7072168525432046424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254378 (2 * (n + 1)) * A302415 (A034856 (n + 2)).toNat

end

end A302410.P7072168525432046424

/-!
# A302411: Number of n X 4 0..1 arrays with every element equal to 0, 1, 2 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302411, there is no canonical definition to state claims against.
-/

/-! ## A302411.P15273393255999726554

`A302415(A141214(n+1))`
-/

namespace A302411.P15273393255999726554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A141214 (n + 1)).toNat

end

end A302411.P15273393255999726554

/-! ## A302411.P13337294221732790436

`A302415(A027379(n+2))`
-/

namespace A302411.P13337294221732790436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A027379 (n + 2)).toNat

end

end A302411.P13337294221732790436

/-! ## A302411.P6938213760995486819

`A302415(A055998(n+2))`
-/

namespace A302411.P6938213760995486819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A055998 (n + 2)).toNat

end

end A302411.P6938213760995486819

/-! ## A302411.P15598207744421064405

`A302415(A155212(n)+5)`
-/

namespace A302411.P15598207744421064405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A155212 n + 5).toNat

end

end A302411.P15598207744421064405

/-! ## A302411.P8457184620313085342

`A302415(A056000(n)+7)`
-/

namespace A302411.P8457184620313085342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A056000 n + 7).toNat

end

end A302411.P8457184620313085342

/-!
# A302412: Number of nX5 0..1 arrays with every element equal to 0, 1, 2 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302412, there is no canonical definition to state claims against.
-/

/-! ## A302412.P17566458471605073902

`A302415(Δ[A264443(n)])`
-/

namespace A302412.P17566458471605073902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (f1 (n + 1) - f1 n).toNat

end

end A302412.P17566458471605073902

/-! ## A302412.P17225876532297835188

`A302415(A046691(n+3))`
-/

namespace A302412.P17225876532297835188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A046691 (n + 3)).toNat

end

end A302412.P17225876532297835188

/-! ## A302412.P12840544969636293929

`A302415(Δ[A023545(n+1)])`
-/

namespace A302412.P12840544969636293929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (f1 (n + 1) - f1 n).toNat

end

end A302412.P12840544969636293929

/-! ## A302412.P13797753278593151198

`A302415(A000124(n+5)-5)`
-/

namespace A302412.P13797753278593151198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A000124 (n + 5) - 5).toNat

end

end A302412.P13797753278593151198

/-! ## A302412.P15622267749529368033

`A302415(A000096(n+3)+n+2)`
-/

namespace A302412.P15622267749529368033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A000096 (n + 3) + (n + 2 : ℤ)).toNat

end

end A302412.P15622267749529368033

/-!
# A302413: Number of nX6 0..1 arrays with every element equal to 0, 1, 2 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302413, there is no canonical definition to state claims against.
-/

/-! ## A302413.P8783793496379834252

`A302415(A052905(n+3))`
-/

namespace A302413.P8783793496379834252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A052905 (n + 3)).toNat

end

end A302413.P8783793496379834252

/-! ## A302413.P3365684169960718421

`A302415(A055999(n+3)+1)`
-/

namespace A302413.P3365684169960718421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A055999 (n + 3) + 1).toNat

end

end A302413.P3365684169960718421

/-! ## A302413.P5124646412757483486

`A302415(A046691(n+4)-1)`
-/

namespace A302413.P5124646412757483486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A046691 (n + 4) - 1).toNat

end

end A302413.P5124646412757483486

/-! ## A302413.P18275717645173371552

`A302415(A000124(n+6)-6)`
-/

namespace A302413.P18275717645173371552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A000124 (n + 6) - 6).toNat

end

end A302413.P18275717645173371552

/-! ## A302413.P18276092631743108835

`A302415(Δ[A023551(n+1)]+1)`
-/

namespace A302413.P18276092631743108835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (f1 (n + 1) - f1 n + 1).toNat

end

end A302413.P18276092631743108835

/-!
# A302414: Number of nX7 0..1 arrays with every element equal to 0, 1, 2 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302414, there is no canonical definition to state claims against.
-/

/-! ## A302414.P16978439059773431691

`A302415(A055999(n+4))`
-/

namespace A302414.P16978439059773431691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A055999 (n + 4)).toNat

end

end A302414.P16978439059773431691

/-! ## A302414.P1011343660229272199

`A302415(Δ[A023551(n+2)])`
-/

namespace A302414.P1011343660229272199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (f1 (n + 1) - f1 n).toNat

end

end A302414.P1011343660229272199

/-! ## A302414.P11456335014359137742

`A302415(A000096(n+6)-5)`
-/

namespace A302414.P11456335014359137742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A000096 (n + 6) - 5).toNat

end

end A302414.P11456335014359137742

/-! ## A302414.P2814944447822775237

`A302415(A000124(n+7)-7)`
-/

namespace A302414.P2814944447822775237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A000124 (n + 7) - 7).toNat

end

end A302414.P2814944447822775237

/-! ## A302414.P86728696887361657

`A302415(A166136(n+4)+2*n+1)`
-/

namespace A302414.P86728696887361657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A166136 (n + 4) + (2 * n + 1 : ℤ)).toNat

end

end A302414.P86728696887361657

/-!
# A302415: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302415, there is no canonical definition to state claims against.
-/

/-! ## A302415.P9138290272914987764

`A303182(n+1)+A016389(A022166(n))`
-/

namespace A302415.P9138290272914987764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (n + 1) + A016389 (A022166 n).toNat

end

end A302415.P9138290272914987764

/-! ## A302415.P11341543329909184710

`A303182(n+1)+A016389(A027336(n))`
-/

namespace A302415.P11341543329909184710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (n + 1) + A016389 (A027336 n).toNat

end

end A302415.P11341543329909184710

/-! ## A302415.P13031357255888759204

`A303182(n+1)+A016389(A176561(n))`
-/

namespace A302415.P13031357255888759204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (n + 1) + A016389 (A176561 n).toNat

end

end A302415.P13031357255888759204

/-! ## A302415.P17638577837661652853

`A303182(n+1)-A025466(A001296(n))`
-/

namespace A302415.P17638577837661652853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (n + 1) - A025466 (A001296 n).toNat

end

end A302415.P17638577837661652853

/-! ## A302415.P8985554371707389222

`A303182(n+1)-A011737(A022171(n))`
-/

namespace A302415.P8985554371707389222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (n + 1) - A011737 (A022171 n).toNat

end

end A302415.P8985554371707389222

/-!
# A302416: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 2 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302416, there is no canonical definition to state claims against.
-/

/-! ## A302416.P8862390521492146335

`A302415(∑[n+2]+4)`
-/

namespace A302416.P8862390521492146335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302416.P8862390521492146335

/-! ## A302416.P6994887080773025510

`lcm((-1)^n, A302415(A167614(n+1)))`
-/

namespace A302416.P6994887080773025510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A302415 (A167614 (n + 1)).toNat)

end

end A302416.P6994887080773025510

/-! ## A302416.P17584918692993341614

`A302415(A167614(n+1))+A025444(n)`
-/

namespace A302416.P17584918692993341614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A167614 (n + 1)).toNat + A025444 n

end

end A302416.P17584918692993341614

/-! ## A302416.P15363044074552713592

`A302415(A167614(n+1))+A185284(n)`
-/

namespace A302416.P15363044074552713592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A167614 (n + 1)).toNat + A185284 n

end

end A302416.P15363044074552713592

/-! ## A302416.P1148428775273364298

`A302415(A167614(n+1))%A016901(n)`
-/

namespace A302416.P1148428775273364298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302415 (A167614 (n + 1)).toNat) (A016901 n)

end

end A302416.P1148428775273364298

/-!
# A302417: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 2 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302417, there is no canonical definition to state claims against.
-/

/-! ## A302417.P5140422090114580347

`A302415(∑[n+3]+7)`
-/

namespace A302417.P5140422090114580347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A302417.P5140422090114580347

/-! ## A302417.P17599211118316048784

`or(char[11], A302415(A141214(n)+7))`
-/

namespace A302417.P17599211118316048784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A302415 (A141214 n + 7).toNat)

end

end A302417.P17599211118316048784

/-! ## A302417.P4987512783442959881

`A010684(2*n)*A302415(A145018(n+4))`
-/

namespace A302417.P4987512783442959881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (2 * n) * A302415 (A145018 (n + 4)).toNat

end

end A302417.P4987512783442959881

/-! ## A302417.P1430300133196793334

`A302415(A145018(n+4))%A000828(n+4)`
-/

namespace A302417.P1430300133196793334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302415 (A145018 (n + 4)).toNat) (A000828 (n + 4))

end

end A302417.P1430300133196793334

/-! ## A302417.P6242287971647632945

`A302415(A000217(n+3)+4)%A304846(n+1)`
-/

namespace A302417.P6242287971647632945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302415 (A000217 (n + 3) + 4).toNat) (A304846 (n + 1))

end

end A302417.P6242287971647632945

/-!
# A302418: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 2 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302418, there is no canonical definition to state claims against.
-/

/-! ## A302418.P4560955567805015810

`A302415(A056000(n)+15)`
-/

namespace A302418.P4560955567805015810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A056000 n + 15).toNat

end

end A302418.P4560955567805015810

/-! ## A302418.P1599599362318101320

`A302415(A000124(n+4)+4)`
-/

namespace A302418.P1599599362318101320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A000124 (n + 4) + 4).toNat

end

end A302418.P1599599362318101320

/-! ## A302418.P5381590817518039120

`A302415(A000096(n+3)+6)`
-/

namespace A302418.P5381590817518039120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A000096 (n + 3) + 6).toNat

end

end A302418.P5381590817518039120

/-! ## A302418.P15295056196677312075

`A302415(A000217(n+4)+5)`
-/

namespace A302418.P15295056196677312075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A000217 (n + 4) + 5).toNat

end

end A302418.P15295056196677312075

/-! ## A302418.P12920930950403270199

`A302415(A055999(n+3)-2*n)`
-/

namespace A302418.P12920930950403270199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A302418.P12920930950403270199

/-!
# A302419: Number of 6 X n 0..1 arrays with every element equal to 0, 1, 2 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302419, there is no canonical definition to state claims against.
-/

/-! ## A302419.P11963135447318678563

`A302415(A167614(n+4)+3)`
-/

namespace A302419.P11963135447318678563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A167614 (n + 4) + 3).toNat

end

end A302419.P11963135447318678563

/-! ## A302419.P6771967461646113669

`A302415(A000096(n+4)+7)`
-/

namespace A302419.P6771967461646113669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A000096 (n + 4) + 7).toNat

end

end A302419.P6771967461646113669

/-! ## A302419.P10967536655459833857

`A302415(A000217(n+5)+6)`
-/

namespace A302419.P10967536655459833857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A000217 (n + 5) + 6).toNat

end

end A302419.P10967536655459833857

/-! ## A302419.P6069924627266509880

`A302415(A141214(n+2)+9)`
-/

namespace A302419.P6069924627266509880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A141214 (n + 2) + 9).toNat

end

end A302419.P6069924627266509880

/-! ## A302419.P15143084104133984241

`A302415(A034856(n+4)+8)`
-/

namespace A302419.P15143084104133984241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A034856 (n + 4) + 8).toNat

end

end A302419.P15143084104133984241

/-!
# A302420: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 2 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302420, there is no canonical definition to state claims against.
-/

/-! ## A302420.P10711309203063607730

`A302415(A000217(n+6)+7)`
-/

namespace A302420.P10711309203063607730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A000217 (n + 6) + 7).toNat

end

end A302420.P10711309203063607730

/-! ## A302420.P5702989716111813560

`A302415(A046691(n+6)-A004277(n+2))`
-/

namespace A302420.P5702989716111813560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A046691 (n + 6) - A004277 (n + 2)).toNat

end

end A302420.P5702989716111813560

/-! ## A302420.P7680687084036252695

`A302415(A000096(n+7)-A004273(n+4))`
-/

namespace A302420.P7680687084036252695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A000096 (n + 7) - A004273 (n + 4)).toNat

end

end A302420.P7680687084036252695

/-! ## A302420.P11818195430301017409

`A302415(A005408(n+8)+A000124(n+4))`
-/

namespace A302420.P11818195430301017409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A005408 (n + 8) + A000124 (n + 4)).toNat

end

end A302420.P11818195430301017409

/-! ## A302420.P11410002574133275031

`A302415(A004273(n+10)+A000096(n+3))`
-/

namespace A302420.P11410002574133275031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A004273 (n + 10) + A000096 (n + 3)).toNat

end

end A302420.P11410002574133275031

/-!
# A302421: Number of n X n 0..1 arrays with every element equal to 0, 1, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302421, there is no canonical definition to state claims against.
-/

/-! ## A302421.P12779327376141755609

`A302427(∑[4*n]+1)`
-/

namespace A302421.P12779327376141755609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302421.P12779327376141755609

/-! ## A302421.P5399419268762377032

`record[A302427(Δ[A235355(n)])]`
-/

namespace A302421.P5399419268762377032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302421.P5399419268762377032

/-! ## A302421.P7384462796113043121

`record[A302427(A330613(n+1))]`
-/

namespace A302421.P7384462796113043121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302421.P7384462796113043121

/-! ## A302421.P7098476420271855719

`lcm((-1)^n, A302427(A001844(n)))`
-/

namespace A302421.P7098476420271855719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A302427 (A001844 n).toNat)

end

end A302421.P7098476420271855719

/-! ## A302421.P10784216859843640049

`record[A003982(n)*A302427(n+1)]`
-/

namespace A302421.P10784216859843640049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302421.P10784216859843640049

/-!
# A302422: Number of nX3 0..1 arrays with every element equal to 0, 1, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302422, there is no canonical definition to state claims against.
-/

/-! ## A302422.P15212117964112956902

`A302427(∑[n+3]+1)`
-/

namespace A302422.P15212117964112956902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302422.P15212117964112956902

/-! ## A302422.P3769460477263359871

`record[A302427(A198464(n+1))]`
-/

namespace A302422.P3769460477263359871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302422.P3769460477263359871

/-! ## A302422.P1222276775876200333

`or(1, A302427(Δ[A008778(n)]))`
-/

namespace A302422.P1222276775876200333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A302427 (f1 (n + 1) - f1 n).toNat)

end

end A302422.P1222276775876200333

/-! ## A302422.P788563799366328458

`or(1, A302427(A034856(n+2)))`
-/

namespace A302422.P788563799366328458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A302427 (A034856 (n + 2)).toNat)

end

end A302422.P788563799366328458

/-! ## A302422.P16671786390670035106

`A037800(n)!*A302427(A034856(n+2))`
-/

namespace A302422.P16671786390670035106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A037800 n).toNat : ℤ) * A302427 (A034856 (n + 2)).toNat

end

end A302422.P16671786390670035106

/-!
# A302423: Number of nX4 0..1 arrays with every element equal to 0, 1, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302423, there is no canonical definition to state claims against.
-/

/-! ## A302423.P4884715612917803980

`A302427(∑[n+4]+3)`
-/

namespace A302423.P4884715612917803980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A302423.P4884715612917803980

/-! ## A302423.P14402444850313795204

`A302427(A027379(n+2))+char[23]`
-/

namespace A302423.P14402444850313795204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A027379 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302423.P14402444850313795204

/-! ## A302423.P9991191378530837976

`A302427(A027379(n+2))%A131601(n+1)`
-/

namespace A302423.P9991191378530837976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302427 (A027379 (n + 2)).toNat) (A131601 (n + 1))

end

end A302423.P9991191378530837976

/-! ## A302423.P15114322085871418129

`A007318(C(2, n))*A302427(A027379(n+2))`
-/

namespace A302423.P15114322085871418129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A302427 (A027379 (n + 2)).toNat

end

end A302423.P15114322085871418129

/-! ## A302423.P8797361039602350524

`A000041(and(1, -n))*A302427(A027379(n+2))`
-/

namespace A302423.P8797361039602350524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-(n : ℤ))).toNat * A302427 (A027379 (n + 2)).toNat

end

end A302423.P8797361039602350524

/-!
# A302424: Number of nX5 0..1 arrays with every element equal to 0, 1, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302424, there is no canonical definition to state claims against.
-/

/-! ## A302424.P5376525295150032389

`A302427(Δ[A264443(n)])`
-/

namespace A302424.P5376525295150032389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (f1 (n + 1) - f1 n).toNat

end

end A302424.P5376525295150032389

/-! ## A302424.P3254638840060677566

`A302427(A046691(n+3))`
-/

namespace A302424.P3254638840060677566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A046691 (n + 3)).toNat

end

end A302424.P3254638840060677566

/-! ## A302424.P4852793352584969522

`A302427(A056115(n)+11)`
-/

namespace A302424.P4852793352584969522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A056115 n + 11).toNat

end

end A302424.P4852793352584969522

/-! ## A302424.P7454728376337211407

`A302427(eq[4, A193592(n)])`
-/

namespace A302424.P7454728376337211407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302424.P7454728376337211407

/-! ## A302424.P13075964243859504535

`A302427(Δ[A023545(n+1)])`
-/

namespace A302424.P13075964243859504535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (f1 (n + 1) - f1 n).toNat

end

end A302424.P13075964243859504535

/-!
# A302425: Number of nX6 0..1 arrays with every element equal to 0, 1, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302425, there is no canonical definition to state claims against.
-/

/-! ## A302425.P6550705262336307261

`A302427(A052905(n+3))`
-/

namespace A302425.P6550705262336307261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A052905 (n + 3)).toNat

end

end A302425.P6550705262336307261

/-! ## A302425.P18378276144430544701

`A302427(A302537(n)+15)`
-/

namespace A302425.P18378276144430544701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A302537 n + 15).toNat

end

end A302425.P18378276144430544701

/-! ## A302425.P14372999082541682171

`A302427(A056119(n)+16)`
-/

namespace A302425.P14372999082541682171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A056119 n + 16).toNat

end

end A302425.P14372999082541682171

/-! ## A302425.P11802406587186596878

`A302427(eq[3, A219347(n)])`
-/

namespace A302425.P11802406587186596878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302425.P11802406587186596878

/-! ## A302425.P16851258713360829557

`A302427(eq[5, A193592(n)])`
-/

namespace A302425.P16851258713360829557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302425.P16851258713360829557

/-!
# A302426: Number of nX7 0..1 arrays with every element equal to 0, 1, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302426, there is no canonical definition to state claims against.
-/

/-! ## A302426.P458562053074355312

`A302427(∑[n+7]+15)`
-/

namespace A302426.P458562053074355312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (∑ j ∈ Finset.range (n + 1), f1 j + 15)

end

end A302426.P458562053074355312

/-!
# A302427: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302427, there is no canonical definition to state claims against.
-/

/-! ## A302427.P3653312971929297234

`A303197(n+1)-A276167(A331278(n))`
-/

namespace A302427.P3653312971929297234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (n + 1) - A276167 (A331278 n).toNat

end

end A302427.P3653312971929297234

/-! ## A302427.P2423634316904570658

`A303197(n+1)-A186034(A022167(n))`
-/

namespace A302427.P2423634316904570658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (n + 1) - A186034 (A022167 n).toNat

end

end A302427.P2423634316904570658

/-! ## A302427.P11780604400408076439

`A303197(n+1)-A124763(A099594(n))`
-/

namespace A302427.P11780604400408076439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (n + 1) - A124763 (A099594 n).toNat

end

end A302427.P11780604400408076439

/-! ## A302427.P18131747539488071157

`A302635(n+1)+A276167(A331278(n)²)`
-/

namespace A302427.P18131747539488071157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (n + 1) + A276167 (A331278 n ^ 2).toNat

end

end A302427.P18131747539488071157

/-! ## A302427.P18011340878596360692

`A303197(n+1)-A014374(A318045(n+1))`
-/

namespace A302427.P18011340878596360692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (n + 1) - A014374 (A318045 (n + 1)).toNat

end

end A302427.P18011340878596360692

/-!
# A302428: Number of 3 X n 0..1 arrays with every element equal to 0, 1, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302428, there is no canonical definition to state claims against.
-/

/-! ## A302428.P8518058880137176420

`A302427(∑[n+2]+4)`
-/

namespace A302428.P8518058880137176420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302428.P8518058880137176420

/-! ## A302428.P11916859069261490304

`and(-1, A302427(A167614(n+1)))`
-/

namespace A302428.P11916859069261490304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A302427 (A167614 (n + 1)).toNat)

end

end A302428.P11916859069261490304

/-! ## A302428.P4101663622004404652

`A302427(A167614(n+1))+A011738(n)`
-/

namespace A302428.P4101663622004404652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A167614 (n + 1)).toNat + A011738 n

end

end A302428.P4101663622004404652

/-! ## A302428.P7431029991209515339

`A302427(A167614(n+1))+A011745(n)`
-/

namespace A302428.P7431029991209515339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A167614 (n + 1)).toNat + A011745 n

end

end A302428.P7431029991209515339

/-! ## A302428.P7230181855907740810

`A302427(A167614(n+1))+A025439(n)`
-/

namespace A302428.P7230181855907740810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A167614 (n + 1)).toNat + A025439 n

end

end A302428.P7230181855907740810

/-!
# A302429: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302429, there is no canonical definition to state claims against.
-/

/-! ## A302429.P5145676638250097240

`A302427(∑[n+3]+7)`
-/

namespace A302429.P5145676638250097240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A302429.P5145676638250097240

/-! ## A302429.P9507562664346490165

`record[A302427(A198464(n+1)+6)]`
-/

namespace A302429.P9507562664346490165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A198464 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302429.P9507562664346490165

/-! ## A302429.P16430312217409904527

`A302427(A055999(n)+10)+char[23]`
-/

namespace A302429.P16430312217409904527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302429.P16430312217409904527

/-! ## A302429.P3881083980968289381

`A302427(A055999(n)+10)%A000108(n+5)`
-/

namespace A302429.P3881083980968289381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302427 (A055999 n + 10).toNat) (A000108 (n + 5))

end

end A302429.P3881083980968289381

/-! ## A302429.P5481766714845216338

`A302427(A000096(n+2)+5)%A000032(n+55)`
-/

namespace A302429.P5481766714845216338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302427 (A000096 (n + 2) + 5).toNat) (A000032 (n + 55))

end

end A302429.P5481766714845216338

/-!
# A302430: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302430, there is no canonical definition to state claims against.
-/

/-! ## A302430.P2869571108852413802

`A302427(A167499(n+3))`
-/

namespace A302430.P2869571108852413802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A167499 (n + 3)).toNat

end

end A302430.P2869571108852413802

/-! ## A302430.P13861755619895569154

`A302427(A155212(n)+13)`
-/

namespace A302430.P13861755619895569154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A155212 n + 13).toNat

end

end A302430.P13861755619895569154

/-! ## A302430.P7413531035519790179

`A302427(A056000(n)+15)`
-/

namespace A302430.P7413531035519790179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A056000 n + 15).toNat

end

end A302430.P7413531035519790179

/-! ## A302430.P1251161153389420786

`A302427(eq[7, A066657(n)])`
-/

namespace A302430.P1251161153389420786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302430.P1251161153389420786

/-! ## A302430.P4403632256874925933

`A302427(A166136(n+3)-1)`
-/

namespace A302430.P4403632256874925933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A166136 (n + 3) - 1).toNat

end

end A302430.P4403632256874925933

/-!
# A302431: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302431, there is no canonical definition to state claims against.
-/

/-! ## A302431.P8606580715095816544

`A302427(∑[n+5]+16)`
-/

namespace A302431.P8606580715095816544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A302431.P8606580715095816544

/-! ## A302431.P4975770331837713224

`A302427(A166136(n+4))%A240654(n+3)`
-/

namespace A302431.P4975770331837713224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302427 (A166136 (n + 4)).toNat) (A240654 (n + 3))

end

end A302431.P4975770331837713224

/-! ## A302431.P2617862399993146513

`A302427(A000217(n+5)+6)%A302423(3*n+4)`
-/

namespace A302431.P2617862399993146513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302427 (A000217 (n + 5) + 6).toNat) (A302423 (3 * n + 4))

end

end A302431.P2617862399993146513

/-!
# A302432: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302432, there is no canonical definition to state claims against.
-/

/-! ## A302432.P15339673424008391250

`A302427(A167487(n+5))`
-/

namespace A302432.P15339673424008391250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A167487 (n + 5)).toNat

end

end A302432.P15339673424008391250

/-! ## A302432.P14172399616482964669

`A302427(A056119(n)+28)`
-/

namespace A302432.P14172399616482964669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A056119 n + 28).toNat

end

end A302432.P14172399616482964669

/-! ## A302432.P16207940670502198310

`A302427(A166136(n+5)+1)`
-/

namespace A302432.P16207940670502198310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A166136 (n + 5) + 1).toNat

end

end A302432.P16207940670502198310

/-! ## A302432.P671678877468066274

`A302427(A133263(n+6)+5)`
-/

namespace A302432.P671678877468066274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A133263 (n + 6) + 5).toNat

end

end A302432.P671678877468066274

/-! ## A302432.P2817726575843167989

`A302427(A000124(n+6)+6)`
-/

namespace A302432.P2817726575843167989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (A000124 (n + 6) + 6).toNat

end

end A302432.P2817726575843167989

/-!
# A302433: a(n) is the sum of the nonmiddle divisors of n.

The programs for A302433, there is no canonical definition to state claims against.
-/

/-! ## A302433.P735852740156381499

`A000203(n+1)-A071090(n+1)`
-/

namespace A302433.P735852740156381499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A071090 (n + 1)

end

end A302433.P735852740156381499

/-! ## A302433.P15200472204904292705

`∑{d}[n+1, #]-A071090(C(2, C(3, n²))+n)`
-/

namespace A302433.P15200472204904292705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A071090 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n)

end

end A302433.P15200472204904292705

/-! ## A302433.P17643218853748690795

`Δ[A160664(n)]-A071090(n+1)`
-/

namespace A302433.P17643218853748690795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071090 (n + 1)

end

end A302433.P17643218853748690795

/-! ## A302433.P16138161885797941336

`abs(Δ[A330725(n)])-A071090(n+1)`
-/

namespace A302433.P16138161885797941336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A071090 (n + 1)

end

end A302433.P16138161885797941336

/-! ## A302433.P15880560946261118657

`A245092(Δ[n²])-A071090(n+1)`
-/

namespace A302433.P15880560946261118657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A071090 (n + 1)

end

end A302433.P15880560946261118657

/-! ## A302433.P11389216677973809010

`abs(A143348(n+1))-A071090(n+1)`
-/

namespace A302433.P11389216677973809010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| - A071090 (n + 1)

end

end A302433.P11389216677973809010

/-! ## A302433.P5005085244669284236

`sqrt(A072861(n+1))-A071090(n+1)`
-/

namespace A302433.P5005085244669284236
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A071090 (n + 1) : ℝ)

end

end A302433.P5005085244669284236

/-! ## A302433.P6332065333886089359

`A074400(n+1)/2-A071090(n+1)`
-/

namespace A302433.P6332065333886089359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A071090 (n + 1) : ℚ)

end

end A302433.P6332065333886089359

/-! ## A302433.P6550877036228476650

`A245093(∑[n+1])-A071090(n+1)`
-/

namespace A302433.P6550877036228476650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (∑ j ∈ Finset.range (n + 1), f1 j) - A071090 (n + 1)

end

end A302433.P6550877036228476650

/-!
# A302436: a(n) is the number of ways of writing the binary expansion of n as a concatenation of nonempty substrings with Hamming weight at most 1.

The programs for A302436, there is no canonical definition to state claims against.
-/

/-! ## A302436.P8942145756234826850

`A283167(A090077(n)%p?[A064665(n+1)])`
-/

namespace A302436.P8942145756234826850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283167 (Int.tmod (A090077 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A302436.P8942145756234826850

/-! ## A302436.P18323339473907512207

`A283167(A325402(n)%p?[A064665(n+1)])`
-/

namespace A302436.P18323339473907512207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283167 (Int.tmod (A325402 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A302436.P18323339473907512207

/-! ## A302436.P1748532376821385247

`A283167(A090077(n))%record[A300291(n+2)]`
-/

namespace A302436.P1748532376821385247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300291 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283167 (A090077 n).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A302436.P1748532376821385247

/-! ## A302436.P13100678327428640768

`A283167(A325402(n))%record[A300291(n+2)]`
-/

namespace A302436.P13100678327428640768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300291 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283167 (A325402 n).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A302436.P13100678327428640768

/-! ## A302436.P68441349609471780

`A001221(A087384(n+2))*A283167(A325402(n))`
-/

namespace A302436.P68441349609471780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A087384 (n + 2)).toNat * A283167 (A325402 n).toNat

end

end A302436.P68441349609471780

/-!
# A302437: a(n) is the number of ways of writing the binary expansion of n as a concatenation of nonempty substrings with Hamming weight at most 2.

The programs for A302437, there is no canonical definition to state claims against.
-/

/-! ## A302437.P18221710336024167969

`A004001(A000005(2^A233275(n)))`
-/

namespace A302437.P18221710336024167969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A233275 n : ℤ))).toNat).toNat

end

end A302437.P18221710336024167969

/-!
# A302438: Numbers with digits in nondecreasing order and even digital sum (in base 10) whose digits can be partitioned in two multisets with equal digital sum.

The programs for A302438, there is no canonical definition to state claims against.
-/

/-! ## A302438.P18438692653692236515

`∩[A009994(n+2), A064544(n)]`
-/

namespace A302438.P18438692653692236515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064544 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302438.P18438692653692236515

/-! ## A302438.P6949978068132327507

`record[A004185(A108203(n+1))]`
-/

namespace A302438.P6949978068132327507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A108203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302438.P6949978068132327507

/-! ## A302438.P4225505962781875182

`record[A004185(A308104(n+1))]`
-/

namespace A302438.P4225505962781875182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A308104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302438.P4225505962781875182

/-! ## A302438.P15026481166318323278

`∩[A009994(n+1), A108203(n+1)]`
-/

namespace A302438.P15026481166318323278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302438.P15026481166318323278

/-! ## A302438.P6766187858732044042

`∩[A072544(n+1), A108203(n+1)]`
-/

namespace A302438.P6766187858732044042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302438.P6766187858732044042

/-!
# A302439: a(n) is the number of ways of writing the binary expansion of n as a concatenation of nonempty aperiodic substrings (i.e., substrings that are not the concatenation of 2 or more equal parts).

The programs for A302439, there is no canonical definition to state claims against.
-/

/-! ## A302439.P14971648981499020344

`∑{e}[A277324(n), #]-A277314(n)`
-/

namespace A302439.P14971648981499020344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - A277314 n

end

end A302439.P14971648981499020344

/-! ## A302439.P8661092691205019910

`A000120(A277189(n))-A277314(n)`
-/

namespace A302439.P8661092691205019910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A277189 n).toNat - A277314 n

end

end A302439.P8661092691205019910

/-! ## A302439.P18051185582287213602

`A277314(A277020(2*n+1))-A277314(n)`
-/

namespace A302439.P18051185582287213602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277314 (A277020 (2 * n + 1)).toNat - A277314 n

end

end A302439.P18051185582287213602

/-! ## A302439.P894601448456183339

`A000120(A277189(n))-A001221(A260443(n))`
-/

namespace A302439.P894601448456183339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A277189 n).toNat - A001221 (A260443 n).toNat

end

end A302439.P894601448456183339

/-! ## A302439.P12100154796722412679

`A001222(A277324(n))-A277314(n)`
-/

namespace A302439.P12100154796722412679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A277324 n).toNat - A277314 n

end

end A302439.P12100154796722412679

/-!
# A302440: Numbers with digits in nondecreasing order and even digital sum (in base 10) whose digits cannot be partitioned in two multisets with equal digital sum.

The programs for A302440, there is no canonical definition to state claims against.
-/

/-! ## A302440.P3665422423985035664

`eq[1, (n-(A265542(n)+1))%2]`
-/

namespace A302440.P3665422423985035664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - (A265542 n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302440.P3665422423985035664

/-! ## A302440.P12951793201790317591

`∩[lt[11*floor(n/10)-n, 0], A228709(n+1)]`
-/

namespace A302440.P12951793201790317591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A302440.P12951793201790317591

/-! ## A302440.P15946455431439070642

`eq[1, A091229(A108782(n))]`
-/

namespace A302440.P15946455431439070642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091229 (A108782 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302440.P15946455431439070642

/-! ## A302440.P2876110048096863657

`eq[2, A109265(A108782(n)²)]`
-/

namespace A302440.P2876110048096863657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109265 (A108782 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302440.P2876110048096863657

/-! ## A302440.P10517769413046390604

`eq[2, A196563(A108782(n)²)]`
-/

namespace A302440.P10517769413046390604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A108782 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302440.P10517769413046390604

/-!
# A302444: Expansion of e.g.f. arcsinh(x)/cos(x) (odd powers only).

The programs for A302444, there is no canonical definition to state claims against.
-/

/-! ## A302444.P6062352413892040970

`A000010(A001075(n)*A014466(n))`
-/

namespace A302444.P6062352413892040970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001075 n * A014466 n).toNat

end

end A302444.P6062352413892040970

/-!
# A302445: Triangle read by rows: row n gives primes of form k^2 + n - k for 0 < k < n.

The programs for A302445, the canonical program `A302445.P980944586648019814` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302445 has offset 2).

The definition of A302445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1627 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302445.P980944586648019814

`p?[A002260(A038722(n+1))+A002260(n+1)²]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A302445

/-- `p?[A002260(A038722(n+1))+A002260(n+1)²]` -/
def P980944586648019814.Spec : Prop :=
  ∀ n, P980944586648019814.a n = A302445 (n + 2)

theorem P980944586648019814.correct : P980944586648019814.Spec := by
  intro n
  simp only [A302445, Nat.add_sub_cancel]

end A302445

/-! ## A302445.P638742344708995449

`p?[A185910(n+1)+1]`
-/

namespace A302445.P638742344708995449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185910 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302445.P638742344708995449

namespace A302445

/-- `p?[A185910(n+1)+1]` -/
def P638742344708995449.Spec : Prop :=
  ∀ n, P638742344708995449.a n = A302445 (n + 2)

end A302445

/-! ## A302445.P13288126754204792516

`p?[A004736(n+1)+A002260(n+1)²]`
-/

namespace A302445.P13288126754204792516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A002260 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302445.P13288126754204792516

namespace A302445

/-- `p?[A004736(n+1)+A002260(n+1)²]` -/
def P13288126754204792516.Spec : Prop :=
  ∀ n, P13288126754204792516.a n = A302445 (n + 2)

end A302445

/-! ## A302445.P3524034198134350627

`p?[A004736(n+1)+(A002262(n)+1)²]`
-/

namespace A302445.P3524034198134350627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A002262 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302445.P3524034198134350627

namespace A302445

/-- `p?[A004736(n+1)+(A002262(n)+1)²]` -/
def P3524034198134350627.Spec : Prop :=
  ∀ n, P3524034198134350627.a n = A302445 (n + 2)

end A302445

/-! ## A302445.P8191719229538289420

`p?[A004736(n+1)+A004736(A038722(n+1))²]`
-/

namespace A302445.P8191719229538289420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A004736 (A038722 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302445.P8191719229538289420

namespace A302445

/-- `p?[A004736(n+1)+A004736(A038722(n+1))²]` -/
def P8191719229538289420.Spec : Prop :=
  ∀ n, P8191719229538289420.a n = A302445 (n + 2)

end A302445

/-! ## A302445.P8411332677039985547

`p?[A185910(n+1)]`
-/

namespace A302445.P8411332677039985547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302445.P8411332677039985547

namespace A302445

/-- `p?[A185910(n+1)]` -/
def P8411332677039985547.Spec : Prop :=
  ∀ n, P8411332677039985547.a n = A302445 (n + 2)

end A302445

/-! ## A302445.P10186224030501914165

`filter[A185910(n+1), A010051(#)]`
-/

namespace A302445.P10186224030501914165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A302445.P10186224030501914165

namespace A302445

/-- `filter[A185910(n+1), A010051(#)]` -/
def P10186224030501914165.Spec : Prop :=
  ∀ n, P10186224030501914165.a n = A302445 (n + 2)

end A302445

/-! ## A302445.P4533796581829283931

`p?[A025581(n)+A002260(n+1)²]`
-/

namespace A302445.P4533796581829283931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A002260 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302445.P4533796581829283931

namespace A302445

/-- `p?[A025581(n)+A002260(n+1)²]` -/
def P4533796581829283931.Spec : Prop :=
  ∀ n, P4533796581829283931.a n = A302445 (n + 2)

end A302445

/-! ## A302445.P10737800333479997274

`p?[A025581(n)+A002262(n+1)²]`
-/

namespace A302445.P10737800333479997274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A002262 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302445.P10737800333479997274

namespace A302445

/-- `p?[A025581(n)+A002262(n+1)²]` -/
def P10737800333479997274.Spec : Prop :=
  ∀ n, P10737800333479997274.a n = A302445 (n + 2)

end A302445

/-! ## A302445.P1573748389460598636

`p?[A070216(n+1)-A004201(n+1)]`
-/

namespace A302445.P1573748389460598636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (n + 1) - A004201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302445.P1573748389460598636

namespace A302445

/-- `p?[A070216(n+1)-A004201(n+1)]` -/
def P1573748389460598636.Spec : Prop :=
  ∀ n, P1573748389460598636.a n = A302445 (n + 2)

end A302445

/-! ## A302445.P14021444457520393754

`p?[A002024(n+1)+A002262(n)+A002262(n)²]`
-/

namespace A302445.P14021444457520393754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A002262 n + A002262 n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302445.P14021444457520393754

namespace A302445

/-- `p?[A002024(n+1)+A002262(n)+A002262(n)²]` -/
def P14021444457520393754.Spec : Prop :=
  ∀ n, P14021444457520393754.a n = A302445 (n + 2)

end A302445

/-! ## A302445.P3769145284266555108

`p?[A352911(2*(n+1))+A352911(2*n+1)²]`
-/

namespace A302445.P3769145284266555108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352911 (2 * (n + 1)) + A352911 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302445.P3769145284266555108

namespace A302445

/-- `p?[A352911(2*(n+1))+A352911(2*n+1)²]` -/
def P3769145284266555108.Spec : Prop :=
  ∀ n, P3769145284266555108.a n = A302445 (n + 2)

end A302445

/-! ## A302445.P3897317319552655067

`filter[A185910(n+2), A080339(#)]`
-/

namespace A302445.P3897317319552655067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185910 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A302445.P3897317319552655067

namespace A302445

/-- `filter[A185910(n+2), A080339(#)]` -/
def P3897317319552655067.Spec : Prop :=
  ∀ n, P3897317319552655067.a n = A302445 (n + 2)

end A302445

/-!
# A302447: Expansion of Product_{k>=1} 1/(1 - x^k)^(k*(k+1)^2/2).

The programs for A302447, there is no canonical definition to state claims against.
-/

/-! ## A302447.P12569045837300807654

`A003500(n)-A280041(A001611(n))`
-/

namespace A302447.P12569045837300807654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 n - A280041 (A001611 n).toNat

end

end A302447.P12569045837300807654

/-! ## A302447.P9105616056200444545

`A332086(or(A254882(3*n+2), A260585(n+2)))`
-/

namespace A302447.P9105616056200444545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (Int.lor (A254882 (3 * n + 2)) (A260585 (n + 2))).toNat

end

end A302447.P9105616056200444545

/-!
# A302448: Expansion of Product_{k>=1} 1/(1 - x^k)^(k*(k^2+1)/2).

The programs for A302448, there is no canonical definition to state claims against.
-/

/-! ## A302448.P13871506767790516466

`A342516(A397976(n))`
-/

namespace A302448.P13871506767790516466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342516 (A397976 n).toNat

end

end A302448.P13871506767790516466

/-! ## A302448.P11284208107173320539

`A178867(A008594(n)+A008584(n))`
-/

namespace A302448.P11284208107173320539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178867 (A008594 n + A008584 n).toNat

end

end A302448.P11284208107173320539

/-!
# A302449: Expansion of Product_{k>=1} 1/(1 - x^k)^(k*(4*k^2-1)/3).

The programs for A302449, there is no canonical definition to state claims against.
-/

/-! ## A302449.P16389536470594371307

`A003500(A001096(n))-A008486(A107401(n))`
-/

namespace A302449.P16389536470594371307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 (A001096 n).toNat - A008486 (A107401 n).toNat

end

end A302449.P16389536470594371307

/-!
# A302450: Expansion of Product_{k>=1} 1/(1 - x^k)^(k^2*(2*k^2-1)).

The programs for A302450, there is no canonical definition to state claims against.
-/

/-! ## A302450.P11710097614173907840

`A283999(n)+A283938(A284020(n))`
-/

namespace A302450.P11710097614173907840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283999 n + A283938 (A284020 n).toNat

end

end A302450.P11710097614173907840

/-!
# A302451: a(n) = [x^n] Product_{k>=0} (1 + n*x^(2^k)).

The programs for A302451, the canonical program `A302451.P919645638412412286` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302451 has offset 0).

The definition of A302451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302451.P919645638412412286

`n^A000120(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A302451

/-- `n^A000120(n)` -/
def P919645638412412286.Spec : Prop :=
  ∀ n, P919645638412412286.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P18288955902232302490

`n^∑[A088705(n)]`
-/

namespace A302451.P18288955902232302490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A302451.P18288955902232302490

namespace A302451

/-- `n^∑[A088705(n)]` -/
def P18288955902232302490.Spec : Prop :=
  ∀ n, P18288955902232302490.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P7017825598146730504

`n^(n-A011371(n))`
-/

namespace A302451.P7017825598146730504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((n : ℤ) - A011371 n : ℤ)

end

end A302451.P7017825598146730504

namespace A302451

/-- `n^(n-A011371(n))` -/
def P7017825598146730504.Spec : Prop :=
  ∀ n, P7017825598146730504.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P7151783080377711417

`n^(A092391(n)-n)`
-/

namespace A302451.P7151783080377711417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A092391 n - (n : ℤ) : ℤ)

end

end A302451.P7151783080377711417

namespace A302451

/-- `n^(A092391(n)-n)` -/
def P7151783080377711417.Spec : Prop :=
  ∀ n, P7151783080377711417.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P7160087696853923504

`n^(A063787(n+1)-1)`
-/

namespace A302451.P7160087696853923504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A063787 (n + 1) - 1 : ℤ)

end

end A302451.P7160087696853923504

namespace A302451

/-- `n^(A063787(n+1)-1)` -/
def P7160087696853923504.Spec : Prop :=
  ∀ n, P7160087696853923504.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P8594239017110180810

`n^(A249154(n)/(n+1))`
-/

namespace A302451.P8594239017110180810
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((A249154 n : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A302451.P8594239017110180810

namespace A302451

/-- `n^(A249154(n)/(n+1))` -/
def P8594239017110180810.Spec : Prop :=
  ∀ n, P8594239017110180810.a n = (A302451 n : ℝ)

end A302451

/-! ## A302451.P5938600613059126586

`n^(A230300(n+1)-(n+1))`
-/

namespace A302451.P5938600613059126586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A230300 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A302451.P5938600613059126586

namespace A302451

/-- `n^(A230300(n+1)-(n+1))` -/
def P5938600613059126586.Spec : Prop :=
  ∀ n, P5938600613059126586.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P10131168940142262522

`n^A001222(A071044(n))`
-/

namespace A302451.P10131168940142262522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A001222 (A071044 n).toNat : ℤ)

end

end A302451.P10131168940142262522

namespace A302451

/-- `n^A001222(A071044(n))` -/
def P10131168940142262522.Spec : Prop :=
  ∀ n, P10131168940142262522.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P7327313610224492506

`n^(A324467(n)/3)`
-/

namespace A302451.P7327313610224492506
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((A324467 n : ℚ) / 3 : ℝ)

end

end A302451.P7327313610224492506

namespace A302451

/-- `n^(A324467(n)/3)` -/
def P7327313610224492506.Spec : Prop :=
  ∀ n, P7327313610224492506.a n = (A302451 n : ℝ)

end A302451

/-! ## A302451.P17462127120292762201

`n^A001222(A278222(n))`
-/

namespace A302451.P17462127120292762201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A001222 (A278222 n).toNat : ℤ)

end

end A302451.P17462127120292762201

namespace A302451

/-- `n^A001222(A278222(n))` -/
def P17462127120292762201.Spec : Prop :=
  ∀ n, P17462127120292762201.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P3245491120481269827

`n^A048881(2*n)`
-/

namespace A302451.P3245491120481269827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A048881 (2 * n) : ℤ)

end

end A302451.P3245491120481269827

namespace A302451

/-- `n^A048881(2*n)` -/
def P3245491120481269827.Spec : Prop :=
  ∀ n, P3245491120481269827.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P4536363439824699950

`n^A274009(Δ[n²])`
-/

namespace A302451.P4536363439824699950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A274009 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A302451.P4536363439824699950

namespace A302451

/-- `n^A274009(Δ[n²])` -/
def P4536363439824699950.Spec : Prop :=
  ∀ n, P4536363439824699950.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P2089818730021624592

`n^A151902(3*n)`
-/

namespace A302451.P2089818730021624592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A151902 (3 * n) : ℤ)

end

end A302451.P2089818730021624592

namespace A302451

/-- `n^A151902(3*n)` -/
def P2089818730021624592.Spec : Prop :=
  ∀ n, P2089818730021624592.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P3936535523338458847

`n^A062756(A005836(n+1))`
-/

namespace A302451.P3936535523338458847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A062756 (A005836 (n + 1)).toNat : ℤ)

end

end A302451.P3936535523338458847

namespace A302451

/-- `n^A062756(A005836(n+1))` -/
def P3936535523338458847.Spec : Prop :=
  ∀ n, P3936535523338458847.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P13447628608189289149

`n^A001222(A005940(n+1))`
-/

namespace A302451.P13447628608189289149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A001222 (A005940 (n + 1)).toNat : ℤ)

end

end A302451.P13447628608189289149

namespace A302451

/-- `n^A001222(A005940(n+1))` -/
def P13447628608189289149.Spec : Prop :=
  ∀ n, P13447628608189289149.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P15827315412835310499

`n^A081603(A005823(n+1))`
-/

namespace A302451.P15827315412835310499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A081603 (A005823 (n + 1)).toNat : ℤ)

end

end A302451.P15827315412835310499

namespace A302451

/-- `n^A081603(A005823(n+1))` -/
def P15827315412835310499.Spec : Prop :=
  ∀ n, P15827315412835310499.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P6181928166278363705

`n^A081603(lt[exp(A094114(n+1)), 2])`
-/

namespace A302451.P6181928166278363705
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A094114 (n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A081603 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n) : ℤ)

end

end A302451.P6181928166278363705

namespace A302451

/-- `n^A081603(lt[exp(A094114(n+1)), 2])` -/
def P6181928166278363705.Spec : Prop :=
  ∀ n, P6181928166278363705.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P16812673700980321099

`∏{e}[A019565(n), n*#]`
-/

namespace A302451.P16812673700980321099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, n * Nat.factorization (f1 n).natAbs p

end

end A302451.P16812673700980321099

namespace A302451

/-- `∏{e}[A019565(n), n*#]` -/
def P16812673700980321099.Spec : Prop :=
  ∀ n, (P16812673700980321099.a n : ℤ) = A302451 n

end A302451

/-! ## A302451.P15780247822396078836

`∏{p}[A019565(n), n*A001222(#)]`
-/

namespace A302451.P15780247822396078836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (n : ℤ) * A001222 p

end

end A302451.P15780247822396078836

namespace A302451

/-- `∏{p}[A019565(n), n*A001222(#)]` -/
def P15780247822396078836.Spec : Prop :=
  ∀ n, P15780247822396078836.a n = A302451 n

end A302451

/-! ## A302451.P16134718329494926443

`∏{p}[A019565(n), n*A062513(#)]`
-/

namespace A302451.P16134718329494926443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (n : ℤ) * A062513 p

end

end A302451.P16134718329494926443

namespace A302451

/-- `∏{p}[A019565(n), n*A062513(#)]` -/
def P16134718329494926443.Spec : Prop :=
  ∀ n, P16134718329494926443.a n = A302451 n

end A302451

/-!
# A302452: a(n) = coefficient of x^(2*n-1) in the n-th iteration (n-fold self-composition) of e.g.f. sinh(x).

The programs for A302452, there is no canonical definition to state claims against.
-/

/-! ## A302452.P12986035255774245898

`A366834(A056220(n+1))`
-/

namespace A302452.P12986035255774245898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366834 (A056220 (n + 1)).toNat

end

end A302452.P12986035255774245898

/-! ## A302452.P7827530050424241764

`A366834(eq[2, A007913(n+1)])`
-/

namespace A302452.P7827530050424241764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366834 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302452.P7827530050424241764

/-! ## A302452.P4627616614172645486

`A366834(A000217(2*n+1)+n)`
-/

namespace A302452.P4627616614172645486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366834 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A302452.P4627616614172645486

/-!
# A302453: a(n) = coefficient of x^(2*n-1) in the n-th iteration (n-fold self-composition) of e.g.f. tan(x).

The programs for A302453, there is no canonical definition to state claims against.
-/

/-! ## A302453.P13436456289204232571

`A212267(∑[4*n]+1)`
-/

namespace A302453.P13436456289204232571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212267 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302453.P13436456289204232571

/-!
# A302454: Number of n X n 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302454, there is no canonical definition to state claims against.
-/

/-! ## A302454.P10303063177546987776

`A302460(∑[4*n]+1)`
-/

namespace A302454.P10303063177546987776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302454.P10303063177546987776

/-! ## A302454.P10730351578269964968

`A302460(A001844(n))+char[10]`
-/

namespace A302454.P10730351578269964968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302454.P10730351578269964968

/-! ## A302454.P18310231081295036826

`A302460(A001844(n))*A309864(n)`
-/

namespace A302454.P18310231081295036826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (A001844 n).toNat * A309864 n

end

end A302454.P18310231081295036826

/-! ## A302454.P7289613684211612846

`or(A000007(n), A302460(A001844(n)))`
-/

namespace A302454.P7289613684211612846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A302460 (A001844 n).toNat)

end

end A302454.P7289613684211612846

/-! ## A302454.P17508654298827883945

`A146836(n+1)*A302460(A001844(n))`
-/

namespace A302454.P17508654298827883945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146836 (n + 1) * A302460 (A001844 n).toNat

end

end A302454.P17508654298827883945

/-!
# A302455: Number of nX3 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302455, there is no canonical definition to state claims against.
-/

/-! ## A302455.P5798806439122723510

`A302460(∑[n+3]+1)`
-/

namespace A302455.P5798806439122723510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302455.P5798806439122723510

/-! ## A302455.P7841327895075307347

`record[A302460(A198464(n+1))]`
-/

namespace A302455.P7841327895075307347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302455.P7841327895075307347

/-! ## A302455.P13451494852528629162

`record[A302460(A237519(n+1))]`
-/

namespace A302455.P13451494852528629162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (A237519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302455.P13451494852528629162

/-! ## A302455.P6069157741034323867

`A302460(A034856(n+2))+char[17]`
-/

namespace A302455.P6069157741034323867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302455.P6069157741034323867

/-! ## A302455.P8314727046104998434

`A302460(A000124(n+3)-3)+char[23]`
-/

namespace A302455.P8314727046104998434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (A000124 (n + 3) - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302455.P8314727046104998434

/-!
# A302456: Number of nX4 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302456, there is no canonical definition to state claims against.
-/

/-! ## A302456.P17348708617148413397

`A302460(∑[n+4]+3)`
-/

namespace A302456.P17348708617148413397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A302456.P17348708617148413397

/-! ## A302456.P17902569178700099935

`A302460(A055998(n+2))+char[17]`
-/

namespace A302456.P17902569178700099935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (A055998 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302456.P17902569178700099935

/-! ## A302456.P851161505589675771

`or(char[1], A302460(A141214(n+1)))`
-/

namespace A302456.P851161505589675771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A302460 (A141214 (n + 1)).toNat)

end

end A302456.P851161505589675771

/-! ## A302456.P11508638178994923047

`or(A111332(n), A302460(A055998(n+2)))`
-/

namespace A302456.P11508638178994923047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111332 n) (A302460 (A055998 (n + 2)).toNat)

end

end A302456.P11508638178994923047

/-! ## A302456.P11851492086719847500

`A302460(A141214(n+1))/A007318(C(2, n))`
-/

namespace A302456.P11851492086719847500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302460 (A141214 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A302456.P11851492086719847500

/-!
# A302457: Number of nX5 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302457, there is no canonical definition to state claims against.
-/

/-! ## A302457.P1547045533205218631

`A302460(∑[n+5]+6)`
-/

namespace A302457.P1547045533205218631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A302457.P1547045533205218631

/-!
# A302458: Number of nX6 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302458, there is no canonical definition to state claims against.
-/

/-! ## A302458.P8299760519257416841

`A302460(A052905(n+3))`
-/

namespace A302458.P8299760519257416841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (A052905 (n + 3)).toNat

end

end A302458.P8299760519257416841

/-! ## A302458.P13430681211308742761

`A302460(A056119(n)+16)`
-/

namespace A302458.P13430681211308742761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (A056119 n + 16).toNat

end

end A302458.P13430681211308742761

/-! ## A302458.P1422338233016802753

`A302460(eq[3, A219347(n)])`
-/

namespace A302458.P1422338233016802753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302458.P1422338233016802753

/-! ## A302458.P14953143350240701183

`A302460(eq[5, A152157(n)])`
-/

namespace A302458.P14953143350240701183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302458.P14953143350240701183

/-! ## A302458.P16698260733359497975

`A302460(eq[5, A193592(n)])`
-/

namespace A302458.P16698260733359497975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302458.P16698260733359497975

/-!
# A302459: Number of nX7 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302459, there is no canonical definition to state claims against.
-/

/-! ## A302459.P16109601821419982359

`A302460(A055999(n+4))`
-/

namespace A302459.P16109601821419982359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (A055999 (n + 4)).toNat

end

end A302459.P16109601821419982359

/-! ## A302459.P16477775271836086920

`A302460(eq[4, A219347(n)])`
-/

namespace A302459.P16477775271836086920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302459.P16477775271836086920

/-! ## A302459.P10274647345831854403

`A302460(eq[5, A332954(n)])`
-/

namespace A302459.P10274647345831854403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302459.P10274647345831854403

/-! ## A302459.P16025723646751925894

`A302460(eq[6, A193592(n)])`
-/

namespace A302459.P16025723646751925894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302459.P16025723646751925894

/-! ## A302459.P8173541111331344931

`A302460(eq[7, A152157(n)])`
-/

namespace A302459.P8173541111331344931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302459.P8173541111331344931

/-!
# A302460: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302460, there is no canonical definition to state claims against.
-/

/-! ## A302460.P5949726120819659021

`A303242(∑[∑[A111332(n)]])`
-/

namespace A302460.P5949726120819659021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A302460.P5949726120819659021

/-! ## A302460.P1574190831256358200

`A303242(A111332(n)+1+n)`
-/

namespace A302460.P1574190831256358200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A111332 n + 1 + (n : ℤ)).toNat

end

end A302460.P1574190831256358200

/-! ## A302460.P2821141339416661106

`A303242(n+1)%A034313(n)`
-/

namespace A302460.P2821141339416661106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303242 (n + 1)) (A034313 n)

end

end A302460.P2821141339416661106

/-! ## A302460.P17214315831691949448

`A303242(C(A017853(n), n)+n+1)`
-/

namespace A302460.P17214315831691949448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (Nat.choose (A017853 n).toNat n + n + 1)

end

end A302460.P17214315831691949448

/-! ## A302460.P1895065355102469980

`A303242(n+1)+A000007(A078828(n))`
-/

namespace A302460.P1895065355102469980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (n + 1) + A000007 (A078828 n).toNat

end

end A302460.P1895065355102469980

/-!
# A302461: Number of 3Xn 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302461, there is no canonical definition to state claims against.
-/

/-! ## A302461.P11839985002267254299

`A302460(∑[n+2]+4)`
-/

namespace A302461.P11839985002267254299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302461.P11839985002267254299

/-! ## A302461.P6127354873735054410

`lcm(2, A302460(A167614(n+1)))`
-/

namespace A302461.P6127354873735054410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A302460 (A167614 (n + 1)).toNat)

end

end A302461.P6127354873735054410

/-! ## A302461.P5873003047697710895

`A302460(A167614(n+1))+A137579(n)`
-/

namespace A302461.P5873003047697710895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (A167614 (n + 1)).toNat + A137579 n

end

end A302461.P5873003047697710895

/-! ## A302461.P8470059987780734378

`A302460(A167614(n+1))+A185284(n)`
-/

namespace A302461.P8470059987780734378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (A167614 (n + 1)).toNat + A185284 n

end

end A302461.P8470059987780734378

/-! ## A302461.P14255206090659860631

`A326545(n)+A302460(A167614(n+1))`
-/

namespace A302461.P14255206090659860631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 n + A302460 (A167614 (n + 1)).toNat

end

end A302461.P14255206090659860631

/-!
# A302462: Number of 4Xn 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302462, there is no canonical definition to state claims against.
-/

/-! ## A302462.P12925112424612858519

`A302460(∑[n+3]+7)`
-/

namespace A302462.P12925112424612858519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A302462.P12925112424612858519

/-! ## A302462.P15981653980934883373

`or(n%3, A302460(A167614(n+2)+1))`
-/

namespace A302462.P15981653980934883373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 3 : ℕ) : ℤ) (A302460 (A167614 (n + 2) + 1).toNat)

end

end A302462.P15981653980934883373

/-!
# A302463: Number of 5Xn 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302463, there is no canonical definition to state claims against.
-/

/-! ## A302463.P5131791260887731362

`A302460(∑[n+4]+11)`
-/

namespace A302463.P5131791260887731362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A302463.P5131791260887731362

/-! ## A302463.P12642125562479700886

`A302460(A000124(n+4)+4)+char[32]`
-/

namespace A302463.P12642125562479700886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (A000124 (n + 4) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302463.P12642125562479700886

/-! ## A302463.P14840031884004788813

`lcm((-1)^n, A302460(A167499(n+3)))`
-/

namespace A302463.P14840031884004788813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A302460 (A167499 (n + 3)).toNat)

end

end A302463.P14840031884004788813

/-! ## A302463.P6339760162111312737

`A007318(C(n, 2))*A302460(A000124(n+4)+4)`
-/

namespace A302463.P6339760162111312737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A302460 (A000124 (n + 4) + 4).toNat

end

end A302463.P6339760162111312737

/-! ## A302463.P15621790070847923416

`A000041(floor(n/8))*A302460(A000124(n+4)+4)`
-/

namespace A302463.P15621790070847923416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊(n : ℚ) / 8⌋.toNat * A302460 (A000124 (n + 4) + 4).toNat

end

end A302463.P15621790070847923416

/-!
# A302464: Number of 6Xn 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302464, there is no canonical definition to state claims against.
-/

/-! ## A302464.P2806261593375427574

`A302460(∑[n+5]+16)`
-/

namespace A302464.P2806261593375427574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A302464.P2806261593375427574

/-!
# A302465: Number of 7Xn 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302465, there is no canonical definition to state claims against.
-/

/-! ## A302465.P4513880867621574476

`A302460(C(n+8, 2)-n)`
-/

namespace A302465.P4513880867621574476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (Nat.choose (n + 8) 2 - n)

end

end A302465.P4513880867621574476

/-! ## A302465.P8649709612109147262

`A302460(A167487(n+5))`
-/

namespace A302465.P8649709612109147262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (A167487 (n + 5)).toNat

end

end A302465.P8649709612109147262

/-! ## A302465.P11101012059502762293

`A302460(A056119(n)+28)`
-/

namespace A302465.P11101012059502762293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (A056119 n + 28).toNat

end

end A302465.P11101012059502762293

/-! ## A302465.P5560767773811405804

`A302460(eq[11, A066657(n)])`
-/

namespace A302465.P5560767773811405804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302465.P5560767773811405804

/-! ## A302465.P7296294288181847904

`A302460(A166136(n+5)+1)`
-/

namespace A302465.P7296294288181847904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (A166136 (n + 5) + 1).toNat

end

end A302465.P7296294288181847904

/-!
# A302466: Number of n X n 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302466, there is no canonical definition to state claims against.
-/

/-! ## A302466.P971746013006373650

`A302472(∑[4*n]+1)`
-/

namespace A302466.P971746013006373650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302466.P971746013006373650

/-! ## A302466.P8027289554262306646

`record[A003982(n)*A302472(n+1)]`
-/

namespace A302466.P8027289554262306646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302466.P8027289554262306646

/-! ## A302466.P4468272162576712555

`A302472(A001844(n))+A122265(n)`
-/

namespace A302466.P4468272162576712555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A001844 n).toNat + A122265 n

end

end A302466.P4468272162576712555

/-! ## A302466.P3584747730513336028

`lcm(A020985(n), A302472(A001844(n)))`
-/

namespace A302466.P3584747730513336028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A302472 (A001844 n).toNat)

end

end A302466.P3584747730513336028

/-! ## A302466.P5928240638835205519

`or(A033683(n), A302472(A001844(n)))`
-/

namespace A302466.P5928240638835205519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033683 n) (A302472 (A001844 n).toNat)

end

end A302466.P5928240638835205519

/-!
# A302467: Number of nX3 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302467, there is no canonical definition to state claims against.
-/

/-! ## A302467.P9766643114058053038

`A302472(∑[n+3]+1)`
-/

namespace A302467.P9766643114058053038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302467.P9766643114058053038

/-! ## A302467.P7877676460253258705

`record[gcd(A055300(n+2), A302472(n+1))]`
-/

namespace A302467.P7877676460253258705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055300 (n + 2)) (A302472 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302467.P7877676460253258705

/-! ## A302467.P10672975697248284180

`gcd(A111332(n), A302472(A034856(n+2)))`
-/

namespace A302467.P10672975697248284180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111332 n) (A302472 (A034856 (n + 2)).toNat)

end

end A302467.P10672975697248284180

/-! ## A302467.P5363058475636501954

`A302472(A034856(n+2))%A298138(3*n+4)`
-/

namespace A302467.P5363058475636501954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302472 (A034856 (n + 2)).toNat) (A298138 (3 * n + 4))

end

end A302467.P5363058475636501954

/-!
# A302468: Number of nX4 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302468, there is no canonical definition to state claims against.
-/

/-! ## A302468.P2185615401183132302

`A302472(A141214(n+1))`
-/

namespace A302468.P2185615401183132302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A141214 (n + 1)).toNat

end

end A302468.P2185615401183132302

/-! ## A302468.P4073200496220835763

`A302472(A155212(n)+5)`
-/

namespace A302468.P4073200496220835763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A155212 n + 5).toNat

end

end A302468.P4073200496220835763

/-! ## A302468.P17672261504027663713

`A302472(A056000(n)+7)`
-/

namespace A302468.P17672261504027663713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A056000 n + 7).toNat

end

end A302468.P17672261504027663713

/-! ## A302468.P11716112175953343503

`A302472(eq[3, A193592(n)])`
-/

namespace A302468.P11716112175953343503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302468.P11716112175953343503

/-! ## A302468.P7869397649357563366

`A302472(A052905(n+1)+2)`
-/

namespace A302468.P7869397649357563366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A052905 (n + 1) + 2).toNat

end

end A302468.P7869397649357563366

/-!
# A302469: Number of nX5 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302469, there is no canonical definition to state claims against.
-/

/-! ## A302469.P15617406552944740107

`A302472(Δ[A264443(n)])`
-/

namespace A302469.P15617406552944740107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (f1 (n + 1) - f1 n).toNat

end

end A302469.P15617406552944740107

/-! ## A302469.P10070868528682124106

`A302472(A056115(n)+11)`
-/

namespace A302469.P10070868528682124106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A056115 n + 11).toNat

end

end A302469.P10070868528682124106

/-! ## A302469.P2318994578984662246

`A302472(eq[4, A193592(n)])`
-/

namespace A302469.P2318994578984662246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302469.P2318994578984662246

/-! ## A302469.P1960396773549357598

`A302472(Δ[A023545(n+1)])`
-/

namespace A302469.P1960396773549357598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (f1 (n + 1) - f1 n).toNat

end

end A302469.P1960396773549357598

/-! ## A302469.P3924255937495056436

`A302472(eq[8, A057728(n+1)])`
-/

namespace A302469.P3924255937495056436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302469.P3924255937495056436

/-!
# A302470: Number of nX6 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302470, there is no canonical definition to state claims against.
-/

/-! ## A302470.P13220439424282141227

`A302472(A052905(n+3))`
-/

namespace A302470.P13220439424282141227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A052905 (n + 3)).toNat

end

end A302470.P13220439424282141227

/-! ## A302470.P5159551766782176985

`A302472(eq[3, A219347(n)])`
-/

namespace A302470.P5159551766782176985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302470.P5159551766782176985

/-! ## A302470.P3428545913306478944

`A302472(eq[5, A193592(n)])`
-/

namespace A302470.P3428545913306478944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302470.P3428545913306478944

/-! ## A302470.P3811294771337614816

`A302472(A055999(n+3)+1)`
-/

namespace A302470.P3811294771337614816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A055999 (n + 3) + 1).toNat

end

end A302470.P3811294771337614816

/-! ## A302470.P614641548009443211

`A302472(eq[7, A049286(n+1)])`
-/

namespace A302470.P614641548009443211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302470.P614641548009443211

/-!
# A302471: Number of nX7 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302471, there is no canonical definition to state claims against.
-/

/-! ## A302471.P6005389164826233909

`A302472(A055999(n+4))`
-/

namespace A302471.P6005389164826233909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A055999 (n + 4)).toNat

end

end A302471.P6005389164826233909

/-! ## A302471.P11690414883188310961

`A302472(eq[4, A219347(n)])`
-/

namespace A302471.P11690414883188310961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302471.P11690414883188310961

/-! ## A302471.P12683420510051181904

`A302472(eq[5, A332954(n)])`
-/

namespace A302471.P12683420510051181904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302471.P12683420510051181904

/-! ## A302471.P6427963254214570052

`A302472(eq[6, A193592(n)])`
-/

namespace A302471.P6427963254214570052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302471.P6427963254214570052

/-! ## A302471.P13515305236648470818

`A302472(A052905(n+4)-1)`
-/

namespace A302471.P13515305236648470818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A052905 (n + 4) - 1).toNat

end

end A302471.P13515305236648470818

/-!
# A302472: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302472, there is no canonical definition to state claims against.
-/

/-! ## A302472.P5159944447554638160

`A303254(C(A348553(n), n))`
-/

namespace A302472.P5159944447554638160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (Nat.choose (A348553 n).toNat n)

end

end A302472.P5159944447554638160

/-! ## A302472.P13867719769476732985

`A303254(n+1)%A002920(n)`
-/

namespace A302472.P13867719769476732985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303254 (n + 1)) (A002920 n)

end

end A302472.P13867719769476732985

/-! ## A302472.P15687611300920242273

`A303254(C(A296867(n+1), n))`
-/

namespace A302472.P15687611300920242273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (Nat.choose (A296867 (n + 1)).toNat n)

end

end A302472.P15687611300920242273

/-! ## A302472.P2462209524248265183

`or(A185255(n+7), A303254(n+1))`
-/

namespace A302472.P2462209524248265183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185255 (n + 7)) (A303254 (n + 1))

end

end A302472.P2462209524248265183

/-! ## A302472.P4496782882639590266

`and(A303254(n+1), A336700(3*n+4))`
-/

namespace A302472.P4496782882639590266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A303254 (n + 1)) (A336700 (3 * n + 4))

end

end A302472.P4496782882639590266

/-!
# A302473: Number of 3Xn 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302473, there is no canonical definition to state claims against.
-/

/-! ## A302473.P10457884464529909670

`A302472(∑[n+2]+4)`
-/

namespace A302473.P10457884464529909670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302473.P10457884464529909670

/-! ## A302473.P11892427478558232908

`A303254(∑[n+2]+4)`
-/

namespace A302473.P11892427478558232908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302473.P11892427478558232908

/-! ## A302473.P9950609679012887015

`lcm((-1)^n, A302472(A167614(n+1)))`
-/

namespace A302473.P9950609679012887015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A302472 (A167614 (n + 1)).toNat)

end

end A302473.P9950609679012887015

/-! ## A302473.P18040382453657946398

`A303254(A167614(n+1))+A000038(n+1)`
-/

namespace A302473.P18040382453657946398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A302473.P18040382453657946398

/-! ## A302473.P9778711914206675836

`A302472(A167614(n+1))%A297368(n+1)`
-/

namespace A302473.P9778711914206675836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302472 (A167614 (n + 1)).toNat) (A297368 (n + 1))

end

end A302473.P9778711914206675836

/-!
# A302474: Number of 4 X n 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302474, there is no canonical definition to state claims against.
-/

/-! ## A302474.P7048801046802574316

`A302472(A052905(n)+9)`
-/

namespace A302474.P7048801046802574316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A052905 n + 9).toNat

end

end A302474.P7048801046802574316

/-! ## A302474.P4869371421282041350

`A303254(A052905(n)+9)`
-/

namespace A302474.P4869371421282041350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A052905 n + 9).toNat

end

end A302474.P4869371421282041350

/-! ## A302474.P115572624944038256

`A303254(A055999(n)+10)`
-/

namespace A302474.P115572624944038256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A055999 n + 10).toNat

end

end A302474.P115572624944038256

/-! ## A302474.P6810090977735433562

`A302472(A167614(n+2)+1)`
-/

namespace A302474.P6810090977735433562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A167614 (n + 2) + 1).toNat

end

end A302474.P6810090977735433562

/-! ## A302474.P65854500030672239

`A303254(A167614(n+2)+1)`
-/

namespace A302474.P65854500030672239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A167614 (n + 2) + 1).toNat

end

end A302474.P65854500030672239

/-!
# A302475: Number of 5Xn 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302475, there is no canonical definition to state claims against.
-/

/-! ## A302475.P12853928633688843671

`A302472(A167499(n+3))`
-/

namespace A302475.P12853928633688843671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A167499 (n + 3)).toNat

end

end A302475.P12853928633688843671

/-! ## A302475.P5910665746992947978

`A302472(A155212(n)+13)`
-/

namespace A302475.P5910665746992947978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A155212 n + 13).toNat

end

end A302475.P5910665746992947978

/-! ## A302475.P13480074219895382069

`A302472(A056000(n)+15)`
-/

namespace A302475.P13480074219895382069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A056000 n + 15).toNat

end

end A302475.P13480074219895382069

/-! ## A302475.P8561204982438066122

`A302472(eq[7, A066657(n)])`
-/

namespace A302475.P8561204982438066122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302475.P8561204982438066122

/-! ## A302475.P2815732857587346212

`A302472(A000217(n+4)+5)`
-/

namespace A302475.P2815732857587346212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A000217 (n + 4) + 5).toNat

end

end A302475.P2815732857587346212

/-!
# A302476: Number of 6Xn 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302476, there is no canonical definition to state claims against.
-/

/-! ## A302476.P10812891990299283617

`A302472(A056115(n)+21)`
-/

namespace A302476.P10812891990299283617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A056115 n + 21).toNat

end

end A302476.P10812891990299283617

/-! ## A302476.P1678249527088003982

`A302472(A167499(n+4)+1)`
-/

namespace A302476.P1678249527088003982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A167499 (n + 4) + 1).toNat

end

end A302476.P1678249527088003982

/-! ## A302476.P3910799766784758021

`A302472(eq[6, A130270(n+1)])`
-/

namespace A302476.P3910799766784758021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302476.P3910799766784758021

/-! ## A302476.P4016707900439064186

`A302472(eq[7, A131818(n+1)])`
-/

namespace A302476.P4016707900439064186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302476.P4016707900439064186

/-! ## A302476.P17681861101833082925

`A302472(A000124(n+6)-(n+1))`
-/

namespace A302476.P17681861101833082925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A302476.P17681861101833082925

/-!
# A302477: Number of 7Xn 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302477, there is no canonical definition to state claims against.
-/

/-! ## A302477.P1955040847417949497

`A302472(A167487(n+5))`
-/

namespace A302477.P1955040847417949497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A167487 (n + 5)).toNat

end

end A302477.P1955040847417949497

/-! ## A302477.P15599151765231162750

`A302472(A056119(n)+28)`
-/

namespace A302477.P15599151765231162750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A056119 n + 28).toNat

end

end A302477.P15599151765231162750

/-! ## A302477.P7466229281420831839

`A302472(eq[11, A066657(n)])`
-/

namespace A302477.P7466229281420831839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302477.P7466229281420831839

/-! ## A302477.P5735101440357289059

`A302472(eq[8, A131818(n+1)])`
-/

namespace A302477.P5735101440357289059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302477.P5735101440357289059

/-! ## A302477.P17660759613203494328

`A302472(A000124(n+7)-(n+1))`
-/

namespace A302477.P17660759613203494328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A302477.P17660759613203494328

/-!
# A302478: Products of prime numbers of squarefree index.

The programs for A302478, there is no canonical definition to state claims against.
-/

/-! ## A302478.P2324676491885009902

`eq[1, A003557(A290103(n+1))]+1`
-/

namespace A302478.P2324676491885009902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A290103 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302478.P2324676491885009902

/-! ## A302478.P4286357921445477915

`eq[1, A353394(A353394(n+1))]+1`
-/

namespace A302478.P4286357921445477915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353394 (A353394 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302478.P4286357921445477915

/-! ## A302478.P12310262152440430710

`record[A110514(n)/A003557(A316431(n+2))]`
-/

namespace A302478.P12310262152440430710
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110514 n : ℚ) / (A003557 (A316431 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302478.P12310262152440430710

/-! ## A302478.P10479014072355800189

`record[A008619(2*n)/A003557(A290103(n+1))]`
-/

namespace A302478.P10479014072355800189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A003557 (A290103 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302478.P10479014072355800189

/-! ## A302478.P17129775886857178384

`record[A028242(2*n)/A003557(A290103(n+1))]`
-/

namespace A302478.P17129775886857178384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A003557 (A290103 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302478.P17129775886857178384

/-! ## A302478.P3137607840076846930

`eq[1, A307430(A290103(n+1)²)]+1`
-/

namespace A302478.P3137607840076846930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307430 (A290103 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302478.P3137607840076846930

/-! ## A302478.P15588423963182371266

`∪[A302494(n+1), A356939(n+1)]`
-/

namespace A302478.P15588423963182371266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302478.P15588423963182371266

/-! ## A302478.P17855789833003718130

`∪[A356939(n+1), A382201(n+1)]`
-/

namespace A302478.P17855789833003718130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302478.P17855789833003718130

/-! ## A302478.P16284877036382313011

`eq[A303975(A006530(n+1)), A340691(n+1)]+1`
-/

namespace A302478.P16284877036382313011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A006530 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340691 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A302478.P16284877036382313011

/-! ## A302478.P2762765523688909035

`eq[A302242(n+1), A305054(n+1)]+1`
-/

namespace A302478.P2762765523688909035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A302478.P2762765523688909035

/-!
# A302479: Number of partitions of n into two distinct nonprime parts.

The programs for A302479, there is no canonical definition to state claims against.
-/

/-! ## A302479.P2795942795290086851

`A358638(n+1)-A005171(n+1)`
-/

namespace A302479.P2795942795290086851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358638 (n + 1) - A005171 (n + 1)

end

end A302479.P2795942795290086851

/-! ## A302479.P14274027432024504587

`floor(A076608(n+1)/2)`
-/

namespace A302479.P14274027432024504587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076608 (n + 1) : ℚ) / 2⌋

end

end A302479.P14274027432024504587

/-! ## A302479.P8623491989807090300

`A004526(A076608(n+1))`
-/

namespace A302479.P8623491989807090300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A076608 (n + 1)).toNat

end

end A302479.P8623491989807090300

/-! ## A302479.P16548290424232126397

`A140106(A076608(n+1)+2)`
-/

namespace A302479.P16548290424232126397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A076608 (n + 1) + 2).toNat

end

end A302479.P16548290424232126397

/-! ## A302479.P17233438411115887081

`A028242(or(1, A076608(n+1)))`
-/

namespace A302479.P17233438411115887081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A076608 (n + 1))).toNat

end

end A302479.P17233438411115887081

/-! ## A302479.P16944609021300327997

`A057979(or(1, A076608(n+1)))`
-/

namespace A302479.P16944609021300327997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.lor 1 (A076608 (n + 1))).toNat

end

end A302479.P16944609021300327997

/-! ## A302479.P13685393878919576707

`A025480(and(-2, A076608(n+1)))`
-/

namespace A302479.P13685393878919576707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.land (-2) (A076608 (n + 1))).toNat

end

end A302479.P13685393878919576707

/-! ## A302479.P13580181343985144264

`A065033(A076608(n+1)+1)-1`
-/

namespace A302479.P13580181343985144264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A076608 (n + 1) + 1).toNat - 1

end

end A302479.P13580181343985144264

/-! ## A302479.P13820185331639440074

`A076608(n+1)-A062610(n+1)`
-/

namespace A302479.P13820185331639440074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076608 (n + 1) - A062610 (n + 1)

end

end A302479.P13820185331639440074

/-! ## A302479.P1023919750618846781

`A295630(n+1)-A062602(n+1)`
-/

namespace A302479.P1023919750618846781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295630 (n + 1) - A062602 (n + 1)

end

end A302479.P1023919750618846781

/-! ## A302479.P11748277120279124306

`A002265(2*A076608(n+1))`
-/

namespace A302479.P11748277120279124306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A076608 (n + 1)).toNat

end

end A302479.P11748277120279124306

/-! ## A302479.P1194249617319586677

`and(A056453(n+1), A076608(n+1))/2`
-/

namespace A302479.P1194249617319586677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A056453 (n + 1)) (A076608 (n + 1)) : ℚ) / 2

end

end A302479.P1194249617319586677

/-! ## A302479.P8973692014550520196

`A004525(and(A056453(n+1), A076608(n+1)))`
-/

namespace A302479.P8973692014550520196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.land (A056453 (n + 1)) (A076608 (n + 1))).toNat

end

end A302479.P8973692014550520196

/-!
# A302480: Number of partitions of n into two parts with the smaller part nonprime and the larger part prime.

The programs for A302480, there is no canonical definition to state claims against.
-/

/-! ## A302480.P4257792740751429607

`A062602(n+1)-A302481(n+1)`
-/

namespace A302480.P4257792740751429607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (n + 1) - A302481 (n + 1)

end

end A302480.P4257792740751429607

/-! ## A302480.P10924856212159867762

`A294602(n+1)-A117929(n+1)`
-/

namespace A302480.P10924856212159867762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (n + 1) - A117929 (n + 1)

end

end A302480.P10924856212159867762

/-! ## A302480.P12927178268448780405

`A294602(n+1)-floor(A073610(n+1)/2)`
-/

namespace A302480.P12927178268448780405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (n + 1) - ⌊(A073610 (n + 1) : ℚ) / 2⌋

end

end A302480.P12927178268448780405

/-! ## A302480.P16163223711500954682

`∑[A062610(A028310(n))-A302479(n+1)]`
-/

namespace A302480.P16163223711500954682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (A028310 n).toNat - A302479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302480.P16163223711500954682

/-! ## A302480.P9511208999576228633

`A294602(n+1)-A004526(A073610(n+1))`
-/

namespace A302480.P9511208999576228633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (n + 1) - A004526 (A073610 (n + 1)).toNat

end

end A302480.P9511208999576228633

/-! ## A302480.P15723164212845477805

`∑[A000035(A076608(n+1))]-A062610(n+1)`
-/

namespace A302480.P15723164212845477805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A076608 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A062610 (n + 1)

end

end A302480.P15723164212845477805

/-! ## A302480.P9921856781190264603

`A230980(n)-(A302481(n+1)+A073610(n+1))`
-/

namespace A302480.P9921856781190264603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - (A302481 (n + 1) + A073610 (n + 1))

end

end A302480.P9921856781190264603

/-! ## A302480.P17118500373402690370

`∑[A062610(n+1)-A302479(n+1)]-A062610(n+1)`
-/

namespace A302480.P17118500373402690370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (n + 1) - A302479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A062610 (n + 1)

end

end A302480.P17118500373402690370

/-! ## A302480.P14384292520688473457

`char[A000040(n+1)]+A224712(n+1)-A302481(n+1)`
-/

namespace A302480.P14384292520688473457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A224712 (n + 1) - A302481 (n + 1))

end

end A302480.P14384292520688473457

/-!
# A302481: Number of partitions of n into two parts with the smaller part prime and the larger part nonprime.

The programs for A302481, there is no canonical definition to state claims against.
-/

/-! ## A302481.P7198751021167233021

`∑[A061358(n)-A117929(n+1)]`
-/

namespace A302481.P7198751021167233021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n - A117929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302481.P7198751021167233021

/-! ## A302481.P15828185783524855607

`A056172(n+1)-A061358(n+1)`
-/

namespace A302481.P15828185783524855607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (n + 1) - A061358 (n + 1)

end

end A302481.P15828185783524855607

/-! ## A302481.P13398381380532171396

`A062602(n+1)-A302480(n+1)`
-/

namespace A302481.P13398381380532171396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (n + 1) - A302480 (n + 1)

end

end A302481.P13398381380532171396

/-! ## A302481.P14759976184491678623

`A000720(A065033(n))-A061358(n+1)`
-/

namespace A302481.P14759976184491678623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A065033 n).toNat - A061358 (n + 1)

end

end A302481.P14759976184491678623

/-! ## A302481.P1693106146664342152

`∑[A061358(n)-A004526(A073610(n+1))]`
-/

namespace A302481.P1693106146664342152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n - A004526 (A073610 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302481.P1693106146664342152

/-!
# A302482: Elementary automaton rules that include every possible substring of length 3 in an output.

The programs for A302482, there is no canonical definition to state claims against.
-/

/-! ## A302482.P4605664035879707093

`lt[A329958(A127141(2*(n+2))), A116528(n)]`
-/

namespace A302482.P4605664035879707093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329958 (A127141 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116528 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302482.P4605664035879707093

/-!
# A302483: Number of FF-equivalence classes of Łukasiewicz paths. Łukasiewicz paths are P-equivalent iff the positions of pattern P are identical in these paths.

The programs for A302483, there is no canonical definition to state claims against.
-/

/-! ## A302483.P12552524030924414914

`A055086(or(A049220(n+1), A127570(n+1)))`
-/

namespace A302483.P12552524030924414914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.lor (A049220 (n + 1)) (A127570 (n + 1))).toNat

end

end A302483.P12552524030924414914

/-! ## A302483.P18241505149648376573

`A055086(or(A049220(n+1), A327844(n+1)))`
-/

namespace A302483.P18241505149648376573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.lor (A049220 (n + 1)) (A327844 (n + 1))).toNat

end

end A302483.P18241505149648376573

/-! ## A302483.P2185556793293478068

`A055086(A049220(n+1))+A000007(A049222(n+1))`
-/

namespace A302483.P2185556793293478068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A049220 (n + 1)).toNat + A000007 (A049222 (n + 1)).toNat

end

end A302483.P2185556793293478068

/-! ## A302483.P10923311285476369311

`A116939(A391031(n))`
-/

namespace A302483.P10923311285476369311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A391031 n).toNat

end

end A302483.P10923311285476369311

/-! ## A302483.P13354761010766749069

`A359536(A000286(n+1))`
-/

namespace A302483.P13354761010766749069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359536 (A000286 (n + 1)).toNat

end

end A302483.P13354761010766749069

/-!
# A302485: Primes p not of the form k^2+s where k > 1 and 1 <= s < (k+1)^2, such that q = k^4+s is prime.

The programs for A302485, there is no canonical definition to state claims against.
-/

/-! ## A302485.P12246164279721948110

`A080359(∑[A058147(n+1)!])`
-/

namespace A302485.P12246164279721948110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A058147 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080359 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302485.P12246164279721948110

/-! ## A302485.P5918719473483785139

`p?[A294847(n)-A294879(n+3)]`
-/

namespace A302485.P5918719473483785139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294847 n - A294879 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302485.P5918719473483785139

/-!
# A302487: Total domination number of the n-Apollonian network.

The programs for A302487, the canonical program `A302487.P8084945391401743994` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302487 has offset 1).

The definition of A302487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302487.P8084945391401743994

`4*a(n-1)-3*a(n-2)` with `a(0)=2, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A302487

/-- `4*a(n-1)-3*a(n-2)` -/
def P8084945391401743994.Spec : Prop :=
  ∀ n, P8084945391401743994.a n = A302487 (n + 1)

theorem P8084945391401743994.correct : P8084945391401743994.Spec := by
  intro n
  simp only [A302487, Nat.add_sub_cancel]

end A302487

/-! ## A302487.P10943664139219930494

`ogf((2-6x+x^2-2x^3)/(1-4x+3x^2))`
-/

namespace A302487.P10943664139219930494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6, 1, -2] [1, -4, 3] n

end

end A302487.P10943664139219930494

namespace A302487

/-- `ogf((2-6x+x^2-2x^3)/(1-4x+3x^2))` -/
def P10943664139219930494.Spec : Prop :=
  ∀ n, P10943664139219930494.a n = A302487 (n + 1)

end A302487

/-! ## A302487.P16442920938886924431

`3*a(n-1)-5` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A302487.P16442920938886924431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n a =>
  3 * a (n - 1) - 5

end

end A302487.P16442920938886924431

namespace A302487

/-- `3*a(n-1)-5` -/
def P16442920938886924431.Spec : Prop :=
  ∀ n, P16442920938886924431.a n = A302487 (n + 1)

end A302487

/-! ## A302487.P12319958759243399361

`a(n-1)+3^(n-3)` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A302487.P12319958759243399361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2, 3] fun n a =>
  a (n - 1) + (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A302487.P12319958759243399361

namespace A302487

/-- `a(n-1)+3^(n-3)` -/
def P12319958759243399361.Spec : Prop :=
  ∀ n, P12319958759243399361.a n = (A302487 (n + 1) : ℚ)

end A302487

/-! ## A302487.P14067297622655491767

`A141044(n)*A291773(n+1)`
-/

namespace A302487.P14067297622655491767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n * A291773 (n + 1)

end

end A302487.P14067297622655491767

namespace A302487

/-- `A141044(n)*A291773(n+1)` -/
def P14067297622655491767.Spec : Prop :=
  ∀ n, P14067297622655491767.a n = A302487 (n + 1)

end A302487

/-! ## A302487.P11586428765062910664

`A291773(n+1)+A019590(n+1)`
-/

namespace A302487.P11586428765062910664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291773 (n + 1) + A019590 (n + 1)

end

end A302487.P11586428765062910664

namespace A302487

/-- `A291773(n+1)+A019590(n+1)` -/
def P11586428765062910664.Spec : Prop :=
  ∀ n, P11586428765062910664.a n = A302487 (n + 1)

end A302487

/-! ## A302487.P12710602381418092875

`floor((3^(n-2)+5)/2)`
-/

namespace A302487.P12710602381418092875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + 5) / 2⌋

end

end A302487.P12710602381418092875

namespace A302487

/-- `floor((3^(n-2)+5)/2)` -/
def P12710602381418092875.Spec : Prop :=
  ∀ n, P12710602381418092875.a n = A302487 (n + 1)

end A302487

/-! ## A302487.P4028623029399548881

`A193770(∑[abs(1-n)])`
-/

namespace A302487.P4028623029399548881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193770 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A302487.P4028623029399548881

namespace A302487

/-- `A193770(∑[abs(1-n)])` -/
def P4028623029399548881.Spec : Prop :=
  ∀ n, P4028623029399548881.a n = A302487 (n + 1)

end A302487

/-! ## A302487.P10145177117469245964

`∑[a(n-1)²/a(n-2)]` with `a(0)=2, a(1)=0, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A302487.P10145177117469245964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 0, 1, 1, 3] fun n f1 =>
  f1 (n - 1) ^ 2 / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302487.P10145177117469245964

namespace A302487

/-- `∑[a(n-1)²/a(n-2)]` -/
def P10145177117469245964.Spec : Prop :=
  ∀ n, P10145177117469245964.a n = (A302487 (n + 1) : ℚ)

end A302487

/-!
# A302488: Total domination number of the n X n grid graph.

The programs for A302488, the canonical program `A302488.P15522168495187512574` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302488 has offset 0).

The definition of A302488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302488.P2221994708136316823

`((-1)^n+2*n*(n+2)+4*sin(n*π/2)-1)/8`
-/

namespace A302488.P2221994708136316823
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((-1) ^ n + (2 * n * (n + 2) : ℤ) : ℝ) + 4 * Real.sin ((n : ℝ) * Real.pi / 2) - 1) / 8

end

end A302488.P2221994708136316823

namespace A302488

/-- `((-1)^n+2*n*(n+2)+4*sin(n*π/2)-1)/8` -/
def P2221994708136316823.Spec : Prop :=
  ∀ n, P2221994708136316823.a n = (A302488 n : ℝ)

end A302488

/-! ## A302488.P15522168495187512574

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=9`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A302488

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P15522168495187512574.Spec : Prop :=
  ∀ n, P15522168495187512574.a n = A302488 n

theorem P15522168495187512574.correct : P15522168495187512574.Spec := by
  intro n
  simp only [A302488]

end A302488

/-! ## A302488.P5161276799753918325

`∑[2*floor(n/4)]+n`
-/

namespace A302488.P5161276799753918325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A302488.P5161276799753918325

namespace A302488

/-- `∑[2*floor(n/4)]+n` -/
def P5161276799753918325.Spec : Prop :=
  ∀ n, P5161276799753918325.a n = A302488 n

end A302488

/-! ## A302488.P12421308891515254425

`(∑[or(3, n)]-(n+3))/2`
-/

namespace A302488.P12421308891515254425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 3 : ℤ) : ℚ) / 2

end

end A302488.P12421308891515254425

namespace A302488

/-- `(∑[or(3, n)]-(n+3))/2` -/
def P12421308891515254425.Spec : Prop :=
  ∀ n, P12421308891515254425.a n = (A302488 n : ℚ)

end A302488

/-! ## A302488.P12247530750161842819

`∑[a(n-4)+2]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A302488.P12247530750161842819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 3] fun n f1 =>
  f1 (n - 4) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302488.P12247530750161842819

namespace A302488

/-- `∑[a(n-4)+2]` -/
def P12247530750161842819.Spec : Prop :=
  ∀ n, (P12247530750161842819.a n : ℤ) = A302488 n

end A302488

/-! ## A302488.P5184131645308242900

`ceil(or(4, (n+3)*(n-1))/4)`
-/

namespace A302488.P5184131645308242900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 4 ((n + 3 : ℤ) * ((n : ℤ) - 1)) : ℚ) / 4⌉

end

end A302488.P5184131645308242900

namespace A302488

/-- `ceil(or(4, (n+3)*(n-1))/4)` -/
def P5184131645308242900.Spec : Prop :=
  ∀ n, P5184131645308242900.a n = A302488 n

end A302488

/-! ## A302488.P17626325452187799418

`floor(n²/2-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A302488.P17626325452187799418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(n ^ 2 : ℚ) / 2 - (a (n - 2) : ℚ)⌋

end

end A302488.P17626325452187799418

namespace A302488

/-- `floor(n²/2-a(n-2))` -/
def P17626325452187799418.Spec : Prop :=
  ∀ n, P17626325452187799418.a n = A302488 n

end A302488

/-! ## A302488.P10492369251836029041

`∑[∑[floor(a(n-4))]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0, a(4)=2, a(5)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A302488.P10492369251836029041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 0, 2, 0] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302488.P10492369251836029041

namespace A302488

/-- `∑[∑[floor(a(n-4))]]` -/
def P10492369251836029041.Spec : Prop :=
  ∀ n, (P10492369251836029041.a n : ℤ) = A302488 n

end A302488

/-! ## A302488.P2635944167095834955

`floor(n*n/2-floor(a(n-2)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A302488.P2635944167095834955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(n : ℚ) * ((n : ℚ) / 2) - (a (n - 2) : ℚ)⌋

end

end A302488.P2635944167095834955

namespace A302488

/-- `floor(n*n/2-floor(a(n-2)))` -/
def P2635944167095834955.Spec : Prop :=
  ∀ n, P2635944167095834955.a n = A302488 n

end A302488

/-! ## A302488.P8454637936804632951

`∑[n+1-A187180(n+1)]`
-/

namespace A302488.P8454637936804632951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A187180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302488.P8454637936804632951

namespace A302488

/-- `∑[n+1-A187180(n+1)]` -/
def P8454637936804632951.Spec : Prop :=
  ∀ n, P8454637936804632951.a n = A302488 n

end A302488

/-! ## A302488.P5824070610812681432

`A083219(n)*A129756(n)`
-/

namespace A302488.P5824070610812681432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 n * A129756 n

end

end A302488.P5824070610812681432

namespace A302488

/-- `A083219(n)*A129756(n)` -/
def P5824070610812681432.Spec : Prop :=
  ∀ n, P5824070610812681432.a n = A302488 n

end A302488

/-! ## A302488.P620650022825107479

`∪[A016754(n), A226023(n)]`
-/

namespace A302488.P620650022825107479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302488.P620650022825107479

namespace A302488

/-- `∪[A016754(n), A226023(n)]` -/
def P620650022825107479.Spec : Prop :=
  ∀ n, (P620650022825107479.a n : ℤ) = A302488 n

end A302488

/-! ## A302488.P15018089909002299908

`∪[A085046(n+1), A002378(n)]`
-/

namespace A302488.P15018089909002299908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302488.P15018089909002299908

namespace A302488

/-- `∪[A085046(n+1), A002378(n)]` -/
def P15018089909002299908.Spec : Prop :=
  ∀ n, (P15018089909002299908.a n : ℤ) = A302488 n

end A302488

/-! ## A302488.P1834561579783168688

`∪[A085046(n+1), A226023(n)]`
-/

namespace A302488.P1834561579783168688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302488.P1834561579783168688

namespace A302488

/-- `∪[A085046(n+1), A226023(n)]` -/
def P1834561579783168688.Spec : Prop :=
  ∀ n, (P1834561579783168688.a n : ℤ) = A302488 n

end A302488

/-! ## A302488.P1853000597903295372

`∪[A183207(n+1), A226023(n)]`
-/

namespace A302488.P1853000597903295372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302488.P1853000597903295372

namespace A302488

/-- `∪[A183207(n+1), A226023(n)]` -/
def P1853000597903295372.Spec : Prop :=
  ∀ n, (P1853000597903295372.a n : ℤ) = A302488 n

end A302488

/-! ## A302488.P435258947692874658

`A106249(n+1)*A129756(n)`
-/

namespace A302488.P435258947692874658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (n + 1) * A129756 n

end

end A302488.P435258947692874658

namespace A302488

/-- `A106249(n+1)*A129756(n)` -/
def P435258947692874658.Spec : Prop :=
  ∀ n, P435258947692874658.a n = A302488 n

end A302488

/-! ## A302488.P138744476611696110

`A129756(n+1)*A285869(n)`
-/

namespace A302488.P138744476611696110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (n + 1) * A285869 n

end

end A302488.P138744476611696110

namespace A302488

/-- `A129756(n+1)*A285869(n)` -/
def P138744476611696110.Spec : Prop :=
  ∀ n, P138744476611696110.a n = A302488 n

end A302488

/-! ## A302488.P6127886731172535856

`A004525(n+2)*A004525(n)`
-/

namespace A302488.P6127886731172535856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (n + 2) * A004525 n

end

end A302488.P6127886731172535856

namespace A302488

/-- `A004525(n+2)*A004525(n)` -/
def P6127886731172535856.Spec : Prop :=
  ∀ n, P6127886731172535856.a n = A302488 n

end A302488

/-! ## A302488.P14548804042800614201

`A129756(n+1)*A212831(A186421(n))`
-/

namespace A302488.P14548804042800614201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (n + 1) * A212831 (A186421 n).toNat

end

end A302488.P14548804042800614201

namespace A302488

/-- `A129756(n+1)*A212831(A186421(n))` -/
def P14548804042800614201.Spec : Prop :=
  ∀ n, P14548804042800614201.a n = A302488 n

end A302488

/-! ## A302488.P10475404526141297740

`(A008811(n+1)-A008811(n))*A083219(n)`
-/

namespace A302488.P10475404526141297740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008811 (n + 1) - A008811 n) * A083219 n

end

end A302488.P10475404526141297740

namespace A302488

/-- `(A008811(n+1)-A008811(n))*A083219(n)` -/
def P10475404526141297740.Spec : Prop :=
  ∀ n, P10475404526141297740.a n = A302488 n

end A302488

/-!
# A302490: Fewest number of distinct prime factors in any product of a_1*a_2*...*a_t where n = a_1 < a_2 < ... < a_t = A006255(n) and the product is square.

The programs for A302490, there is no canonical definition to state claims against.
-/

/-! ## A302490.P3495495943452477558

`A001221(A066401(n+1))-char[16]`
-/

namespace A302490.P3495495943452477558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A066401 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302490.P3495495943452477558

/-! ## A302490.P4632002117950313038

`A001221(C(A066401(n+1), A213003(n)))`
-/

namespace A302490.P4632002117950313038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A066401 (n + 1)).toNat (A213003 n).toNat)

end

end A302490.P4632002117950313038

/-! ## A302490.P685768012610127754

`A001221(A066401(n+1)^A239660(n+1))`
-/

namespace A302490.P685768012610127754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A066401 (n + 1) : ℚ) ^ (A239660 (n + 1) : ℤ))).toNat

end

end A302490.P685768012610127754

/-! ## A302490.P4418974752408423235

`A001221(A066401(n+1)%A076196(n+1))`
-/

namespace A302490.P4418974752408423235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A066401 (n + 1)) (A076196 (n + 1))).toNat

end

end A302490.P4418974752408423235

/-!
# A302491: Prime numbers of squarefree index.

The programs for A302491, the canonical program `A302491.P7760389659930367120` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302491 has offset 1).

The definition of A302491 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A302491.P7760389659930367120

`A000040(A005117(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A302491

/-- `A000040(A005117(n+1))` -/
def P7760389659930367120.Spec : Prop :=
  ∀ n, P7760389659930367120.a n = A302491 (n + 1)

theorem P7760389659930367120.correct : P7760389659930367120.Spec := by
  intro n
  simp only [A302491, Nat.add_sub_cancel]

end A302491

/-! ## A302491.P4989014034846604000

`record[A001748(n+1)/3*A008966(n+1)]`
-/

namespace A302491.P4989014034846604000
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3 * (A008966 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302491.P4989014034846604000

namespace A302491

/-- `record[A001748(n+1)/3*A008966(n+1)]` -/
def P4989014034846604000.Spec : Prop :=
  ∀ n, P4989014034846604000.a n = (A302491 (n + 1) : ℚ)

end A302491

/-! ## A302491.P461483926140307240

`A001748(eq[n+1, A007947(n+1)]+1)/3`
-/

namespace A302491.P461483926140307240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 3

end

end A302491.P461483926140307240

namespace A302491

/-- `A001748(eq[n+1, A007947(n+1)]+1)/3` -/
def P461483926140307240.Spec : Prop :=
  ∀ n, P461483926140307240.a n = (A302491 (n + 1) : ℚ)

end A302491

/-! ## A302491.P4820527479677162641

`p?[A302591(n+1)]`
-/

namespace A302491.P4820527479677162641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302491.P4820527479677162641

namespace A302491

/-- `p?[A302591(n+1)]` -/
def P4820527479677162641.Spec : Prop :=
  ∀ n, P4820527479677162641.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P6014711225303970037

`record[A001748(n+1)/3-A162296(n+1)]`
-/

namespace A302491.P6014711225303970037
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3 - (A162296 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302491.P6014711225303970037

namespace A302491

/-- `record[A001748(n+1)/3-A162296(n+1)]` -/
def P6014711225303970037.Spec : Prop :=
  ∀ n, P6014711225303970037.a n = (A302491 (n + 1) : ℚ)

end A302491

/-! ## A302491.P3869802567153596461

`record[A001749(n+1)/4-A162296(n+1)]`
-/

namespace A302491.P3869802567153596461
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 4 - (A162296 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302491.P3869802567153596461

namespace A302491

/-- `record[A001749(n+1)/4-A162296(n+1)]` -/
def P3869802567153596461.Spec : Prop :=
  ∀ n, P3869802567153596461.a n = (A302491 (n + 1) : ℚ)

end A302491

/-! ## A302491.P15005826316064053436

`record[A137458(n+1)]`
-/

namespace A302491.P15005826316064053436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302491.P15005826316064053436

namespace A302491

/-- `record[A137458(n+1)]` -/
def P15005826316064053436.Spec : Prop :=
  ∀ n, P15005826316064053436.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P4179704272800413186

`A000040(record[∏{p}[n, #]])`
-/

namespace A302491.P4179704272800413186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A302491.P4179704272800413186

namespace A302491

/-- `A000040(record[∏{p}[n, #]])` -/
def P4179704272800413186.Spec : Prop :=
  ∀ n, P4179704272800413186.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P15168654199328442394

`record[abs(A062007(n+1))]`
-/

namespace A302491.P15168654199328442394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062007 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302491.P15168654199328442394

namespace A302491

/-- `record[abs(A062007(n+1))]` -/
def P15168654199328442394.Spec : Prop :=
  ∀ n, P15168654199328442394.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P4401592063484394701

`A000040(lt[A105570(n), n])`
-/

namespace A302491.P4401592063484394701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A302491.P4401592063484394701

namespace A302491

/-- `A000040(lt[A105570(n), n])` -/
def P4401592063484394701.Spec : Prop :=
  ∀ n, P4401592063484394701.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P7137232965131943924

`A000040(sqrt(A062503(n+1)))`
-/

namespace A302491.P7137232965131943924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A062503 (n + 1) : ℝ))).toNat

end

end A302491.P7137232965131943924

namespace A302491

/-- `A000040(sqrt(A062503(n+1)))` -/
def P7137232965131943924.Spec : Prop :=
  ∀ n, P7137232965131943924.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P15034007800327881166

`A000040(record[A003967(n+1)])`
-/

namespace A302491.P15034007800327881166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302491.P15034007800327881166

namespace A302491

/-- `A000040(record[A003967(n+1)])` -/
def P15034007800327881166.Spec : Prop :=
  ∀ n, P15034007800327881166.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P14398109713603165984

`A000040(record[A007913(n+1)])`
-/

namespace A302491.P14398109713603165984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302491.P14398109713603165984

namespace A302491

/-- `A000040(record[A007913(n+1)])` -/
def P14398109713603165984.Spec : Prop :=
  ∀ n, P14398109713603165984.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P5992625023741875755

`A000040(record[A007947(n+1)])`
-/

namespace A302491.P5992625023741875755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302491.P5992625023741875755

namespace A302491

/-- `A000040(record[A007947(n+1)])` -/
def P5992625023741875755.Spec : Prop :=
  ∀ n, P5992625023741875755.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P10642942300599195095

`A000040(record[A055231(n+1)])`
-/

namespace A302491.P10642942300599195095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302491.P10642942300599195095

namespace A302491

/-- `A000040(record[A055231(n+1)])` -/
def P10642942300599195095.Spec : Prop :=
  ∀ n, P10642942300599195095.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P1852692714056070536

`A000040(record[A055653(n+1)])`
-/

namespace A302491.P1852692714056070536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302491.P1852692714056070536

namespace A302491

/-- `A000040(record[A055653(n+1)])` -/
def P1852692714056070536.Spec : Prop :=
  ∀ n, P1852692714056070536.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P16248593080596267230

`A008578(A005117(n+1)+1)`
-/

namespace A302491.P16248593080596267230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A005117 (n + 1) + 1).toNat

end

end A302491.P16248593080596267230

namespace A302491

/-- `A008578(A005117(n+1)+1)` -/
def P16248593080596267230.Spec : Prop :=
  ∀ n, P16248593080596267230.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P17218569370699942310

`A000040(A133466(n+1)/4)`
-/

namespace A302491.P17218569370699942310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A133466 (n + 1) : ℚ) / 4)).toNat

end

end A302491.P17218569370699942310

namespace A302491

/-- `A000040(A133466(n+1)/4)` -/
def P17218569370699942310.Spec : Prop :=
  ∀ n, P17218569370699942310.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P3783798341510439008

`A000040(eq[1, A285718(n+1)])`
-/

namespace A302491.P3783798341510439008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302491.P3783798341510439008

namespace A302491

/-- `A000040(eq[1, A285718(n+1)])` -/
def P3783798341510439008.Spec : Prop :=
  ∀ n, P3783798341510439008.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P2425854351942374274

`∩[A000040(n+1), A302591(n+1)]`
-/

namespace A302491.P2425854351942374274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302491.P2425854351942374274

namespace A302491

/-- `∩[A000040(n+1), A302591(n+1)]` -/
def P2425854351942374274.Spec : Prop :=
  ∀ n, (P2425854351942374274.a n : ℤ) = A302491 (n + 1)

end A302491

/-!
# A302492: Products of any power of 2 with prime numbers of prime-power index, i.e., prime numbers p of the form p = prime(q^k), for q prime, k >= 1.

The programs for A302492, there is no canonical definition to state claims against.
-/

/-! ## A302492.P1286067278178082112

`eq[1, A355741(A000265((n+1)²))]+1`
-/

namespace A302492.P1286067278178082112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (A000265 ((n + 1) ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302492.P1286067278178082112

/-! ## A302492.P2968944011627477564

`lt[A339366(n), A158416(A000700(3*n+4))]`
-/

namespace A302492.P2968944011627477564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339366 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A000700 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302492.P2968944011627477564

/-! ## A302492.P4847009761602291773

`lt[A346690(3*n+1), A250001(A048793(2*n+3))]`
-/

namespace A302492.P4847009761602291773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346690 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250001 (A048793 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302492.P4847009761602291773

/-! ## A302492.P12980109128737860512

`lt[A351570(A278243(n))², n]`
-/

namespace A302492.P12980109128737860512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351570 (A278243 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A302492.P12980109128737860512

/-! ## A302492.P14778144522240347233

`A322847((n+1)*A330098(n+2))`
-/

namespace A302492.P14778144522240347233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322847 ((n + 1 : ℤ) * A330098 (n + 2)).toNat

end

end A302492.P14778144522240347233

/-!
# A302493: Prime numbers of prime-power index.

The programs for A302493, the canonical program `A302493.P13750760026098076296` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302493 has offset 1).

The definition of A302493 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A302493.P13750760026098076296

`A000040(A000961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A302493

/-- `A000040(A000961(n+1))` -/
def P13750760026098076296.Spec : Prop :=
  ∀ n, P13750760026098076296.a n = A302493 (n + 1)

theorem P13750760026098076296.correct : P13750760026098076296.Spec := by
  intro n
  simp only [A302493, Nat.add_sub_cancel]

end A302493

/-! ## A302493.P7197639881897363947

`p?[A302593(n+1)]`
-/

namespace A302493.P7197639881897363947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302493.P7197639881897363947

namespace A302493

/-- `p?[A302593(n+1)]` -/
def P7197639881897363947.Spec : Prop :=
  ∀ n, P7197639881897363947.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P11618311050464232680

`A000040(eq[1, A231813(n)])`
-/

namespace A302493.P11618311050464232680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302493.P11618311050464232680

namespace A302493

/-- `A000040(eq[1, A231813(n)])` -/
def P11618311050464232680.Spec : Prop :=
  ∀ n, P11618311050464232680.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P15736673514824806776

`A000040(sqrt(A056798(n+1)))`
-/

namespace A302493.P15736673514824806776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

end

end A302493.P15736673514824806776

namespace A302493

/-- `A000040(sqrt(A056798(n+1)))` -/
def P15736673514824806776.Spec : Prop :=
  ∀ n, P15736673514824806776.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P10656871583332558695

`A000040(record[A028233(n+1)])`
-/

namespace A302493.P10656871583332558695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302493.P10656871583332558695

namespace A302493

/-- `A000040(record[A028233(n+1)])` -/
def P10656871583332558695.Spec : Prop :=
  ∀ n, P10656871583332558695.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P9714457222634183398

`A000040(record[A034684(n+1)])`
-/

namespace A302493.P9714457222634183398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302493.P9714457222634183398

namespace A302493

/-- `A000040(record[A034684(n+1)])` -/
def P9714457222634183398.Spec : Prop :=
  ∀ n, P9714457222634183398.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P1303594462193752921

`A000040(record[A034699(n+1)])`
-/

namespace A302493.P1303594462193752921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302493.P1303594462193752921

namespace A302493

/-- `A000040(record[A034699(n+1)])` -/
def P1303594462193752921.Spec : Prop :=
  ∀ n, P1303594462193752921.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P7042544723446673788

`A000040(record[A053585(n+1)])`
-/

namespace A302493.P7042544723446673788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302493.P7042544723446673788

namespace A302493

/-- `A000040(record[A053585(n+1)])` -/
def P7042544723446673788.Spec : Prop :=
  ∀ n, P7042544723446673788.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P1940252536351839621

`A000040(record[A063973(n+1)])`
-/

namespace A302493.P1940252536351839621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302493.P1940252536351839621

namespace A302493

/-- `A000040(record[A063973(n+1)])` -/
def P1940252536351839621.Spec : Prop :=
  ∀ n, P1940252536351839621.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P3339548091395563554

`A000040(record[A222416(n+1)])`
-/

namespace A302493.P3339548091395563554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302493.P3339548091395563554

namespace A302493

/-- `A000040(record[A222416(n+1)])` -/
def P3339548091395563554.Spec : Prop :=
  ∀ n, P3339548091395563554.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P10767963005476422939

`A000040(record[A354933(n+1)])`
-/

namespace A302493.P10767963005476422939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302493.P10767963005476422939

namespace A302493

/-- `A000040(record[A354933(n+1)])` -/
def P10767963005476422939.Spec : Prop :=
  ∀ n, P10767963005476422939.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P1541441428028271228

`A008578(A000961(n+1)+1)`
-/

namespace A302493.P1541441428028271228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000961 (n + 1) + 1).toNat

end

end A302493.P1541441428028271228

namespace A302493

/-- `A008578(A000961(n+1)+1)` -/
def P1541441428028271228.Spec : Prop :=
  ∀ n, P1541441428028271228.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P10249840008690416390

`A000040(A181062(n+1)+1)`
-/

namespace A302493.P10249840008690416390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A181062 (n + 1) + 1).toNat

end

end A302493.P10249840008690416390

namespace A302493

/-- `A000040(A181062(n+1)+1)` -/
def P10249840008690416390.Spec : Prop :=
  ∀ n, P10249840008690416390.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P9294764680657457775

`A158611(A000961(n+1)+2)`
-/

namespace A302493.P9294764680657457775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A000961 (n + 1) + 2).toNat

end

end A302493.P9294764680657457775

namespace A302493

/-- `A158611(A000961(n+1)+2)` -/
def P9294764680657457775.Spec : Prop :=
  ∀ n, P9294764680657457775.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P3814501345270160233

`A000040(A138929(n+1)/2)`
-/

namespace A302493.P3814501345270160233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A138929 (n + 1) : ℚ) / 2)).toNat

end

end A302493.P3814501345270160233

namespace A302493

/-- `A000040(A138929(n+1)/2)` -/
def P3814501345270160233.Spec : Prop :=
  ∀ n, P3814501345270160233.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P3255188850524385248

`A006093(record[A034699(n+1)])+1`
-/

namespace A302493.P3255188850524385248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A302493.P3255188850524385248

namespace A302493

/-- `A006093(record[A034699(n+1)])+1` -/
def P3255188850524385248.Spec : Prop :=
  ∀ n, P3255188850524385248.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P16604478732982653500

`A000040(record[n/a(A001221(n))])` with `a(0)=1`
-/

namespace A302493.P16604478732982653500
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (A001221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A302493.P16604478732982653500

namespace A302493

/-- `A000040(record[n/a(A001221(n))])` -/
def P16604478732982653500.Spec : Prop :=
  ∀ n, P16604478732982653500.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P11951595738313076584

`A000040(lt[A001221(n+1), 2]+1)`
-/

namespace A302493.P11951595738313076584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A302493.P11951595738313076584

namespace A302493

/-- `A000040(lt[A001221(n+1), 2]+1)` -/
def P11951595738313076584.Spec : Prop :=
  ∀ n, P11951595738313076584.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P355252919997625696

`∩[A000040(n+1), A302593(n+1)]`
-/

namespace A302493.P355252919997625696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302493.P355252919997625696

namespace A302493

/-- `∩[A000040(n+1), A302593(n+1)]` -/
def P355252919997625696.Spec : Prop :=
  ∀ n, (P355252919997625696.a n : ℤ) = A302493 (n + 1)

end A302493

/-! ## A302493.P8697792604470272325

`filter[A302593(n+1), A010051(#)]`
-/

namespace A302493.P8697792604470272325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A302493.P8697792604470272325

namespace A302493

/-- `filter[A302593(n+1), A010051(#)]` -/
def P8697792604470272325.Spec : Prop :=
  ∀ n, P8697792604470272325.a n = A302493 (n + 1)

end A302493

/-!
# A302494: Products of distinct primes of squarefree index.

The programs for A302494, there is no canonical definition to state claims against.
-/

/-! ## A302494.P9908924394474809378

`record[A007913(A302478(n+1))]`
-/

namespace A302494.P9908924394474809378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A302478 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302494.P9908924394474809378

/-! ## A302494.P1479358258121625195

`filter[A302478(n+1), A008966(#)]`
-/

namespace A302494.P1479358258121625195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A302494.P1479358258121625195

/-! ## A302494.P3882142824269405045

`record[A007947(A302478(n+1)²)]`
-/

namespace A302494.P3882142824269405045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A302478 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302494.P3882142824269405045

/-! ## A302494.P8692498782752718815

`record[A336643(A302478(n+1)²)]`
-/

namespace A302494.P8692498782752718815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A302478 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302494.P8692498782752718815

/-! ## A302494.P423623967211379144

`∩[A005117(n+1), A302478(n+1)]`
-/

namespace A302494.P423623967211379144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302494.P423623967211379144

/-! ## A302494.P16499683673951211990

`∪[2*A329629(n+1), A329629(n+1)]`
-/

namespace A302494.P16499683673951211990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302494.P16499683673951211990

/-! ## A302494.P16674516210910763231

`∪[A329629(n+1), A004277(A329629(n+1))]`
-/

namespace A302494.P16674516210910763231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A329629 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302494.P16674516210910763231

/-! ## A302494.P16045768666345595787

`record[A007947(n+1)/A003557(A290103(n+1))]`
-/

namespace A302494.P16045768666345595787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A003557 (A290103 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302494.P16045768666345595787

/-!
# A302495: a(n) is the least k such that k * A005277(n) is a term of A002202.

The programs for A302495, there is no canonical definition to state claims against.
-/

/-! ## A302495.P1681756342657375982

`A067005(A005277(n+1))%∑[A331549(n)]`
-/

namespace A302495.P1681756342657375982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067005 (A005277 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302495.P1681756342657375982

/-! ## A302495.P9949377081939753758

`A067005(A005277(n+1))+A238004(n)%2`
-/

namespace A302495.P9949377081939753758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067005 (A005277 (n + 1)).toNat + Int.tmod (A238004 n) 2

end

end A302495.P9949377081939753758

/-! ## A302495.P562376546555960826

`A067005(A005277(n+1))+A000035(A238004(n))`
-/

namespace A302495.P562376546555960826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067005 (A005277 (n + 1)).toNat + A000035 (A238004 n).toNat

end

end A302495.P562376546555960826

/-! ## A302495.P6663576106434517141

`A067005(A005277(n+1))*A067005(A238004(n)²)`
-/

namespace A302495.P6663576106434517141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067005 (A005277 (n + 1)).toNat * A067005 (A238004 n ^ 2).toNat

end

end A302495.P6663576106434517141

/-! ## A302495.P11358746247842413573

`A067005(A005277(n+1))+A000038(A331252(n+1))`
-/

namespace A302495.P11358746247842413573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067005 (A005277 (n + 1)).toNat + A000038 (A331252 (n + 1)).toNat

end

end A302495.P11358746247842413573

/-! ## A302495.P12492729692805821696

`A067005(A005277(n+1))+A000035(A213274(n+2))`
-/

namespace A302495.P12492729692805821696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067005 (A005277 (n + 1)).toNat + A000035 (A213274 (n + 2)).toNat

end

end A302495.P12492729692805821696

/-!
# A302496: Products of distinct primes of prime-power index.

The programs for A302496, there is no canonical definition to state claims against.
-/

/-! ## A302496.P1171071343164265046

`record[A007913(A302492(n+1))]`
-/

namespace A302496.P1171071343164265046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A302492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302496.P1171071343164265046

/-! ## A302496.P17292468617627245151

`filter[A302492(n+1), A008966(#)]`
-/

namespace A302496.P17292468617627245151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A302496.P17292468617627245151

/-! ## A302496.P9095324785110310368

`record[A007947(A302492(n+1)²)]`
-/

namespace A302496.P9095324785110310368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A302492 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302496.P9095324785110310368

/-! ## A302496.P495592723546627129

`record[A336643(A302492(n+1)²)]`
-/

namespace A302496.P495592723546627129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A302492 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302496.P495592723546627129

/-! ## A302496.P2655042738044711145

`∩[A005117(n+1), A302492(n+1)]`
-/

namespace A302496.P2655042738044711145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302496.P2655042738044711145

/-! ## A302496.P2153974388315153312

`∪[A002038(n+1), A382426(n+1)]`
-/

namespace A302496.P2153974388315153312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302496.P2153974388315153312

/-! ## A302496.P2713862695764660911

`∪[A076375(n+1), A382426(n+1)]`
-/

namespace A302496.P2713862695764660911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302496.P2713862695764660911

/-! ## A302496.P3226757870122545886

`∪[A076533(n+1), A382426(n+1)]`
-/

namespace A302496.P3226757870122545886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302496.P3226757870122545886

/-! ## A302496.P5530095914766209084

`∪[A081377(n+1), A382426(n+1)]`
-/

namespace A302496.P5530095914766209084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302496.P5530095914766209084

/-! ## A302496.P16964429250277303290

`∪[A087005(n+1), A382426(n+1)]`
-/

namespace A302496.P16964429250277303290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302496.P16964429250277303290

/-!
# A302497: Powers of primes of squarefree index.

The programs for A302497, there is no canonical definition to state claims against.
-/

/-! ## A302497.P6688741242045261670

`record[A028233(A302478(n+1))]`
-/

namespace A302497.P6688741242045261670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A302478 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302497.P6688741242045261670

/-! ## A302497.P8433541698493037047

`filter[A302478(n+1), A010055(#)]`
-/

namespace A302497.P8433541698493037047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A302497.P8433541698493037047

/-! ## A302497.P5644950253039313003

`record[A034699(A302478(floor(n/2)+1))]`
-/

namespace A302497.P5644950253039313003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A302478 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302497.P5644950253039313003

/-! ## A302497.P9859972850360872096

`∩[A000961(n+1), A302478(n+1)]`
-/

namespace A302497.P9859972850360872096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302497.P9859972850360872096

/-! ## A302497.P3420721358350624651

`∪[A302602(n+1), A320631(n+1)]`
-/

namespace A302497.P3420721358350624651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302497.P3420721358350624651

/-! ## A302497.P14114189640122813271

`record[A034684(A302478(A005378(n)))]`
-/

namespace A302497.P14114189640122813271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A302478 (A005378 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302497.P14114189640122813271

/-! ## A302497.P17653203284951525532

`A382304(A273058(n+1))`
-/

namespace A302497.P17653203284951525532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382304 (A273058 (n + 1)).toNat

end

end A302497.P17653203284951525532

/-! ## A302497.P5312391547195457884

`filter[A382304(n+1), A010055(#)]`
-/

namespace A302497.P5312391547195457884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A302497.P5312391547195457884

/-! ## A302497.P16622440438753262161

`filter[A382304(n+1), A091862(#)]`
-/

namespace A302497.P16622440438753262161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A302497.P16622440438753262161

/-! ## A302497.P5731913572898056736

`filter[A382304(n+1), A324290(#)]`
-/

namespace A302497.P5731913572898056736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A302497.P5731913572898056736

/-!
# A302498: Numbers that are a power of a prime number whose prime index is itself a power of a prime number.

The programs for A302498, the canonical program `A302498.P11061753881118226107` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302498 has offset 1).

The definition of A302498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302498.P18020065391341399411

`filter[A302593(n+1), A378442(#)]`
-/

namespace A302498.P18020065391341399411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A302498.P18020065391341399411

namespace A302498

/-- `filter[A302593(n+1), A378442(#)]` -/
def P18020065391341399411.Spec : Prop :=
  ∀ n, P18020065391341399411.a n = A302498 (n + 1)

end A302498

/-! ## A302498.P11548320797389673789

`filter[A382215(n+1), A354923(#)]`
-/

namespace A302498.P11548320797389673789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A302498.P11548320797389673789

namespace A302498

/-- `filter[A382215(n+1), A354923(#)]` -/
def P11548320797389673789.Spec : Prop :=
  ∀ n, P11548320797389673789.a n = A302498 (n + 1)

end A302498

/-! ## A302498.P3070041355760764061

`filter[A382215(n+1), A354924(#)]`
-/

namespace A302498.P3070041355760764061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A302498.P3070041355760764061

namespace A302498

/-- `filter[A382215(n+1), A354924(#)]` -/
def P3070041355760764061.Spec : Prop :=
  ∀ n, P3070041355760764061.a n = A302498 (n + 1)

end A302498

/-! ## A302498.P11061753881118226107

`∩[A000961(n+1), A302593(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A302498

/-- `∩[A000961(n+1), A302593(n+1)]` -/
def P11061753881118226107.Spec : Prop :=
  ∀ n, (P11061753881118226107.a n : ℤ) = A302498 (n + 1)

theorem P11061753881118226107.correct : P11061753881118226107.Spec := by
  intro n
  simp only [A302498, Nat.add_sub_cancel]

end A302498

/-! ## A302498.P2432821223268510113

`∩[A247199(n+1), A382215(n+1)]`
-/

namespace A302498.P2432821223268510113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302498.P2432821223268510113

namespace A302498

/-- `∩[A247199(n+1), A382215(n+1)]` -/
def P2432821223268510113.Spec : Prop :=
  ∀ n, (P2432821223268510113.a n : ℤ) = A302498 (n + 1)

end A302498

/-! ## A302498.P5363911337665812919

`record[A034699(A302593(n+1))]`
-/

namespace A302498.P5363911337665812919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A302593 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302498.P5363911337665812919

namespace A302498

/-- `record[A034699(A302593(n+1))]` -/
def P5363911337665812919.Spec : Prop :=
  ∀ n, P5363911337665812919.a n = A302498 (n + 1)

end A302498

/-! ## A302498.P17032441584750030800

`filter[A382215(n+1), A340363(#)]`
-/

namespace A302498.P17032441584750030800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A302498.P17032441584750030800

namespace A302498

/-- `filter[A382215(n+1), A340363(#)]` -/
def P17032441584750030800.Spec : Prop :=
  ∀ n, P17032441584750030800.a n = A302498 (n + 1)

end A302498

/-! ## A302498.P5154851333377478093

`filter[A382215(n+1), A345064(#)]`
-/

namespace A302498.P5154851333377478093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A302498.P5154851333377478093

namespace A302498

/-- `filter[A382215(n+1), A345064(#)]` -/
def P5154851333377478093.Spec : Prop :=
  ∀ n, P5154851333377478093.a n = A302498 (n + 1)

end A302498

/-! ## A302498.P9537013556930263540

`record[A330691(A302593(A000027(n+1)))]`
-/

namespace A302498.P9537013556930263540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (A302593 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302498.P9537013556930263540

namespace A302498

/-- `record[A330691(A302593(A000027(n+1)))]` -/
def P9537013556930263540.Spec : Prop :=
  ∀ n, P9537013556930263540.a n = A302498 (n + 1)

end A302498

/-! ## A302498.P10285760634831843134

`∩[A318991(n+1), A382215(n+1)]`
-/

namespace A302498.P10285760634831843134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302498.P10285760634831843134

namespace A302498

/-- `∩[A318991(n+1), A382215(n+1)]` -/
def P10285760634831843134.Spec : Prop :=
  ∀ n, (P10285760634831843134.a n : ℤ) = A302498 (n + 1)

end A302498

/-! ## A302498.P12325611361336817788

`filter[A302593(n+1), A010055(#)]`
-/

namespace A302498.P12325611361336817788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A302498.P12325611361336817788

namespace A302498

/-- `filter[A302593(n+1), A010055(#)]` -/
def P12325611361336817788.Spec : Prop :=
  ∀ n, P12325611361336817788.a n = A302498 (n + 1)

end A302498

/-! ## A302498.P10415288189849018037

`filter[A382215(n+1), A010055(#)]`
-/

namespace A302498.P10415288189849018037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A302498.P10415288189849018037

namespace A302498

/-- `filter[A382215(n+1), A010055(#)]` -/
def P10415288189849018037.Spec : Prop :=
  ∀ n, P10415288189849018037.a n = A302498 (n + 1)

end A302498

/-! ## A302498.P7147177890500703015

`record[A028233(A302593(A126759(n)))]`
-/

namespace A302498.P7147177890500703015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A302593 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302498.P7147177890500703015

namespace A302498

/-- `record[A028233(A302593(A126759(n)))]` -/
def P7147177890500703015.Spec : Prop :=
  ∀ n, P7147177890500703015.a n = A302498 (n + 1)

end A302498

/-! ## A302498.P473035638434707202

`A028233(record[A028233(A302593(n+1))])`
-/

namespace A302498.P473035638434707202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A302593 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302498.P473035638434707202

namespace A302498

/-- `A028233(record[A028233(A302593(n+1))])` -/
def P473035638434707202.Spec : Prop :=
  ∀ n, P473035638434707202.a n = A302498 (n + 1)

end A302498

/-! ## A302498.P6240576192211440071

`eq[A327670(A003963(n+1)), A327670(n+1)]+1`
-/

namespace A302498.P6240576192211440071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327670 (A003963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327670 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A302498.P6240576192211440071

namespace A302498

/-- `eq[A327670(A003963(n+1)), A327670(n+1)]+1` -/
def P6240576192211440071.Spec : Prop :=
  ∀ n, (P6240576192211440071.a n : ℤ) = A302498 (n + 1)

end A302498

/-! ## A302498.P13660112442171704803

`eq[A074761(n+1), A285572(A290103(n+1))]+1`
-/

namespace A302498.P13660112442171704803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285572 (A290103 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A302498.P13660112442171704803

namespace A302498

/-- `eq[A074761(n+1), A285572(A290103(n+1))]+1` -/
def P13660112442171704803.Spec : Prop :=
  ∀ n, (P13660112442171704803.a n : ℤ) = A302498 (n + 1)

end A302498

/-! ## A302498.P17347263006718199623

`record[A034699(A302492(n+1))]`
-/

namespace A302498.P17347263006718199623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A302492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302498.P17347263006718199623

namespace A302498

/-- `record[A034699(A302492(n+1))]` -/
def P17347263006718199623.Spec : Prop :=
  ∀ n, P17347263006718199623.a n = A302498 (n + 1)

end A302498

/-! ## A302498.P4652776540923457428

`filter[A302492(n+1), A010055(#)]`
-/

namespace A302498.P4652776540923457428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A302498.P4652776540923457428

namespace A302498

/-- `filter[A302492(n+1), A010055(#)]` -/
def P4652776540923457428.Spec : Prop :=
  ∀ n, P4652776540923457428.a n = A302498 (n + 1)

end A302498

/-! ## A302498.P1146194888820629602

`∩[A000961(n+1), A302492(n+1)]`
-/

namespace A302498.P1146194888820629602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302498.P1146194888820629602

namespace A302498

/-- `∩[A000961(n+1), A302492(n+1)]` -/
def P1146194888820629602.Spec : Prop :=
  ∀ n, (P1146194888820629602.a n : ℤ) = A302498 (n + 1)

end A302498

/-! ## A302498.P4242878394564109089

`A053585(record[A053585(A302492(n+1))])`
-/

namespace A302498.P4242878394564109089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A302492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302498.P4242878394564109089

namespace A302498

/-- `A053585(record[A053585(A302492(n+1))])` -/
def P4242878394564109089.Spec : Prop :=
  ∀ n, P4242878394564109089.a n = A302498 (n + 1)

end A302498

/-!
# A302499: Lexicographically first sequence of distinct terms such that any set of four successive digits can be reordered as {d, d+1, d+2, d+3}, d being the smallest of the four digits.

The programs for A302499, there is no canonical definition to state claims against.
-/

/-! ## A302499.P14300690064696716947

`lt[A055642(n), A036453(A005563(n+3))]`
-/

namespace A302499.P14300690064696716947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A005563 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302499.P14300690064696716947

/-! ## A302499.P2530422952072298609

`eq[A065648(A268197(2*n+3)), A065648(n)]`
-/

namespace A302499.P2530422952072298609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 (A268197 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302499.P2530422952072298609

/-! ## A302499.P13499608320897968706

`A249517(n+1)%(n+1)²`
-/

namespace A302499.P13499608320897968706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249517 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A302499.P13499608320897968706

/-! ## A302499.P18296569667428431575

`A113221(A062388(n))`
-/

namespace A302499.P18296569667428431575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A062388 n).toNat

end

end A302499.P18296569667428431575

/-! ## A302499.P4462262664978104974

`A113221(A070244(n))`
-/

namespace A302499.P4462262664978104974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A070244 n).toNat

end

end A302499.P4462262664978104974

