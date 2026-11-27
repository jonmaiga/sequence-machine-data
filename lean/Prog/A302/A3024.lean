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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C049
import Seq.B000.C053
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

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

/-!
# A302402: Total domination number of the n-ladder graph.

The programs for A302402, the canonical program `A302402.P7836109694096223322` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302402 has offset 0).

The definition of A302402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302402.P7836109694096223322

`2*floor((n+2)/3)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A302402

/-- `2*floor((n+2)/3)` -/
def P7836109694096223322.Spec : Prop :=
  ∀ n, P7836109694096223322.a n = A302402 n

theorem P7836109694096223322.correct : P7836109694096223322.Spec := by
  intro n
  simp only [A302402]

end A302402

/-! ## A302402.P11329897856513068617

`ogf(2x/(1-x-x^3+x^4))`
-/

namespace A302402.P11329897856513068617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -1, 0, -1, 1] n

end

end A302402.P11329897856513068617

namespace A302402

/-- `ogf(2x/(1-x-x^3+x^4))` -/
def P11329897856513068617.Spec : Prop :=
  ∀ n, P11329897856513068617.a n = A302402 n

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

/-! ## A302402.P12577124636319949909

`fp[xor(1, 3*n)/2]`
-/

namespace A302402.P12577124636319949909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (3 * n) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0

end

end A302402.P12577124636319949909

namespace A302402

/-- `fp[xor(1, 3*n)/2]` -/
def P12577124636319949909.Spec : Prop :=
  ∀ n, (P12577124636319949909.a n : ℤ) = A302402 n

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

/-! ## A302402.P1157641384897019704

`fp[xor(1, n)/2+n]`
-/

namespace A302402.P1157641384897019704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0

end

end A302402.P1157641384897019704

namespace A302402

/-- `fp[xor(1, n)/2+n]` -/
def P1157641384897019704.Spec : Prop :=
  ∀ n, (P1157641384897019704.a n : ℤ) = A302402 n

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

The programs for A302404, the canonical program `A302404.P4086242662706649238` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302404 has offset 0).

The definition of A302404 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302404.P4086242662706649238

`a(n-6)+4` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2, a(4)=3, a(5)=4`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A302404

/-- `a(n-6)+4` -/
def P4086242662706649238.Spec : Prop :=
  ∀ n, (P4086242662706649238.a n : ℤ) = A302404 n

theorem P4086242662706649238.correct : P4086242662706649238.Spec := by
  intro n
  simp only [A302404]

end A302404

/-! ## A302404.P9001673434195064562

`ogf((2x+x^4+x^5)/(1-x-x^6+x^7))`
-/

namespace A302404.P9001673434195064562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 0, 0, 1, 1] [1, -1, 0, 0, 0, 0, -1, 1] n

end

end A302404.P9001673434195064562

namespace A302404

/-- `ogf((2x+x^4+x^5)/(1-x-x^6+x^7))` -/
def P9001673434195064562.Spec : Prop :=
  ∀ n, P9001673434195064562.a n = A302404 n

end A302404

/-! ## A302404.P9136993496388415036

`fp[and(n+2, n+3)/2+n]`
-/

namespace A302404.P9136993496388415036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land (n + 2) (n + 3) : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0

end

end A302404.P9136993496388415036

namespace A302404

/-- `fp[and(n+2, n+3)/2+n]` -/
def P9136993496388415036.Spec : Prop :=
  ∀ n, (P9136993496388415036.a n : ℤ) = A302404 n

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

/-! ## A302404.P4724667563840347729

`∑[∑{e}[xor(4, a(n-3)), 2-#]]` with `a(0)=1, a(1)=6, a(2)=1, a(3)=0`
-/

namespace A302404.P4724667563840347729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 1, 0] fun n f2 =>
  Nat.xor 4 (f2 (n - 3))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (2 - (Nat.factorization (f2 n) p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302404.P4724667563840347729

namespace A302404

/-- `∑[∑{e}[xor(4, a(n-3)), 2-#]]` -/
def P4724667563840347729.Spec : Prop :=
  ∀ n, P4724667563840347729.a n = A302404 n

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

/-! ## A302404.P9162995377245836947

`A004523(A293990(A004523(n+1)))`
-/

namespace A302404.P9162995377245836947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A293990 (A004523 (n + 1)).toNat).toNat

end

end A302404.P9162995377245836947

namespace A302404

/-- `A004523(A293990(A004523(n+1)))` -/
def P9162995377245836947.Spec : Prop :=
  ∀ n, P9162995377245836947.a n = A302404 n

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

/-! ## A302404.P5496333938160962008

`A051275(A267027(n+1))`
-/

namespace A302404.P5496333938160962008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 (A267027 (n + 1)).toNat

end

end A302404.P5496333938160962008

namespace A302404

/-- `A051275(A267027(n+1))` -/
def P5496333938160962008.Spec : Prop :=
  ∀ n, P5496333938160962008.a n = A302404 n

end A302404

/-!
# A302405: Total domination number of the n-prism graph.

The programs for A302405, the canonical program `A302405.P6776312788592575446` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302405 has offset 0).

The definition of A302405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302405.P6776312788592575446

`a(n-6)+4` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=4, a(5)=4`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A302405

/-- `a(n-6)+4` -/
def P6776312788592575446.Spec : Prop :=
  ∀ n, (P6776312788592575446.a n : ℤ) = A302405 n

theorem P6776312788592575446.correct : P6776312788592575446.Spec := by
  intro n
  simp only [A302405]

end A302405

/-! ## A302405.P7194255829627822006

`ogf((x+x^2+2x^4)/(1-x-x^6+x^7))`
-/

namespace A302405.P7194255829627822006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 0, 2] [1, -1, 0, 0, 0, 0, -1, 1] n

end

end A302405.P7194255829627822006

namespace A302405

/-- `ogf((x+x^2+2x^4)/(1-x-x^6+x^7))` -/
def P7194255829627822006.Spec : Prop :=
  ∀ n, P7194255829627822006.a n = A302405 n

end A302405

/-! ## A302405.P1963453883773655662

`∑[(ceil(n/2)*n²)%3]`
-/

namespace A302405.P1963453883773655662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈(n : ℚ) / 2⌉ * (n ^ 2 : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302405.P1963453883773655662

namespace A302405

/-- `∑[(ceil(n/2)*n²)%3]` -/
def P1963453883773655662.Spec : Prop :=
  ∀ n, P1963453883773655662.a n = A302405 n

end A302405

/-! ## A302405.P11616423593638558043

`fp[and(n, n+1)/2+n+1]`
-/

namespace A302405.P11616423593638558043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land n (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0

end

end A302405.P11616423593638558043

namespace A302405

/-- `fp[and(n, n+1)/2+n+1]` -/
def P11616423593638558043.Spec : Prop :=
  ∀ n, (P11616423593638558043.a n : ℤ) = A302405 n

end A302405

/-! ## A302405.P2241032312162002124

`fp[2*n+1-or(n, n+1)/2]`
-/

namespace A302405.P2241032312162002124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) - (Nat.lor n (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0

end

end A302405.P2241032312162002124

namespace A302405

/-- `fp[2*n+1-or(n, n+1)/2]` -/
def P2241032312162002124.Spec : Prop :=
  ∀ n, (P2241032312162002124.a n : ℤ) = A302405 n

end A302405

/-! ## A302405.P8603178437745531314

`Δ[floor(2*n/3)]+floor(n/2)+floor((n+3)/6)`
-/

namespace A302405.P8603178437745531314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (⌊(n : ℚ) / 2⌋ + ⌊(n + 3 : ℚ) / 6⌋)

end

end A302405.P8603178437745531314

namespace A302405

/-- `Δ[floor(2*n/3)]+floor(n/2)+floor((n+3)/6)` -/
def P8603178437745531314.Spec : Prop :=
  ∀ n, P8603178437745531314.a n = A302405 n

end A302405

/-! ## A302405.P540888010509524143

`fp[A361641(n+1)]`
-/

namespace A302405.P540888010509524143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361641 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A302405.P540888010509524143

namespace A302405

/-- `fp[A361641(n+1)]` -/
def P540888010509524143.Spec : Prop :=
  ∀ n, (P540888010509524143.a n : ℤ) = A302405 n

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

/-! ## A302405.P185152715971353667

`A004523(A235451(n))`
-/

namespace A302405.P185152715971353667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A235451 n).toNat

end

end A302405.P185152715971353667

namespace A302405

/-- `A004523(A235451(n))` -/
def P185152715971353667.Spec : Prop :=
  ∀ n, P185152715971353667.a n = A302405 n

end A302405

/-! ## A302405.P16571316445254781111

`A302255(A032775(n+1))`
-/

namespace A302405.P16571316445254781111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302255 (A032775 (n + 1)).toNat

end

end A302405.P16571316445254781111

namespace A302405

/-- `A302255(A032775(n+1))` -/
def P16571316445254781111.Spec : Prop :=
  ∀ n, P16571316445254781111.a n = A302405 n

end A302405

/-! ## A302405.P12519459967397955495

`A123919(A108118(n+1))`
-/

namespace A302405.P12519459967397955495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (A108118 (n + 1)).toNat

end

end A302405.P12519459967397955495

namespace A302405

/-- `A123919(A108118(n+1))` -/
def P12519459967397955495.Spec : Prop :=
  ∀ n, P12519459967397955495.a n = A302405 n

end A302405

/-! ## A302405.P15957534155653493676

`fp[A001281(A001281(n+1))]`
-/

namespace A302405.P15957534155653493676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A001281 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A302405.P15957534155653493676

namespace A302405

/-- `fp[A001281(A001281(n+1))]` -/
def P15957534155653493676.Spec : Prop :=
  ∀ n, (P15957534155653493676.a n : ℤ) = A302405 n

end A302405

/-! ## A302405.P10038437259303501863

`A002264(A004773(A248375(A004773(n+2))))`
-/

namespace A302405.P10038437259303501863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004773 (A248375 (A004773 (n + 2)).toNat).toNat).toNat

end

end A302405.P10038437259303501863

namespace A302405

/-- `A002264(A004773(A248375(A004773(n+2))))` -/
def P10038437259303501863.Spec : Prop :=
  ∀ n, P10038437259303501863.a n = A302405 n

end A302405

/-!
# A302406: Total domination number of the n X n torus grid graph.

The programs for A302406, the canonical program `A302406.P3731408639943378739` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302406 has offset 0).

The definition of A302406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302406.P3731408639943378739

`ogf((x+x^2+2x^5)/(1-x-x^2+x^3-x^4+x^5+x^6-x^7))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A302406

/-- `ogf((x+x^2+2x^5)/(1-x-x^2+x^3-x^4+x^5+x^6-x^7))` -/
def P3731408639943378739.Spec : Prop :=
  ∀ n, P3731408639943378739.a n = A302406 n

theorem P3731408639943378739.correct : P3731408639943378739.Spec := by
  intro n
  simp only [A302406]

end A302406

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

/-! ## A302406.P10786457506837801270

`A104563(n)-A211521(n)`
-/

namespace A302406.P10786457506837801270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 n - A211521 n

end

end A302406.P10786457506837801270

namespace A302406

/-- `A104563(n)-A211521(n)` -/
def P10786457506837801270.Spec : Prop :=
  ∀ n, P10786457506837801270.a n = A302406 n

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

/-! ## A302409.P13017562886266792298

`record[A302415(A000982(n^(n%2)))]`
-/

namespace A302409.P13017562886266792298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A000982 (n ^ (n % 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302409.P13017562886266792298

/-!
# A302410: Number of nX3 0..1 arrays with every element equal to 0, 1, 2 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302410, the canonical program `A302410.P5848580957723614015` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302410 has offset 1).

The definition of A302410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302410.P5848580957723614015

`ogf((4+9x-12x^2-18x^3-50x^4+34x^5+22x^6-44x^7+92x^8-8x^10+24x^11-32x^12)/(1-2x-2x^2-11x^3-x^4+18x^5+14x^6+24x^7-52x^8+4x^9-8x^10+24x^11-24x^12+32x^13))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A302410

/-- `ogf((4+9x-12x^2-18x^3-50x^4+34x^5+22x^6-44x^7+92x^8-8x^10+24x^11-32x^12)/(1-2x-2x^2-11x^3-x^4+18x^5+14x^6+24x^7-52x^8+4x^9-8x^10+24x^11-24x^12+32x^13))` -/
def P5848580957723614015.Spec : Prop :=
  ∀ n, P5848580957723614015.a n = A302410 (n + 1)

theorem P5848580957723614015.correct : P5848580957723614015.Spec := by
  intro n
  simp only [A302410, Nat.add_sub_cancel]

end A302410

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

namespace A302410

/-- `A302415(∑[n+3]+1)` -/
def P15612129798572089406.Spec : Prop :=
  ∀ n, P15612129798572089406.a n = A302410 (n + 1)

end A302410

/-! ## A302410.P18330640008705023686

`record[A302415(A198464(n+1))]`
-/

namespace A302410.P18330640008705023686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302410.P18330640008705023686

namespace A302410

/-- `record[A302415(A198464(n+1))]` -/
def P18330640008705023686.Spec : Prop :=
  ∀ n, P18330640008705023686.a n = A302410 (n + 1)

end A302410

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

/-! ## A302427.P2408918432774162237

`A303197(n+1)-A037912(A174527(n))`
-/

namespace A302427.P2408918432774162237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (n + 1) - A037912 (A174527 n).toNat

end

end A302427.P2408918432774162237

/-! ## A302427.P11780604400408076439

`A303197(n+1)-A124763(A099594(n))`
-/

namespace A302427.P11780604400408076439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (n + 1) - A124763 (A099594 n).toNat

end

end A302427.P11780604400408076439

/-! ## A302427.P14104579947948101693

`A303197(n+1)-A037800(A296548(n))`
-/

namespace A302427.P14104579947948101693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (n + 1) - A037800 (A296548 n).toNat

end

end A302427.P14104579947948101693

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

/-! ## A302433.P15836460045732322096

`∑{d}[n+1, #]-A071090(n+1)`
-/

namespace A302433.P15836460045732322096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A071090 (n + 1)

end

end A302433.P15836460045732322096

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

/-! ## A302439.P5844813033494195483

`A000120(A277020(2*n+1))-A277314(n)`
-/

namespace A302439.P5844813033494195483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A277020 (2 * n + 1)).toNat - A277314 n

end

end A302439.P5844813033494195483

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
# A302441: a(n) is the length of the n-th run of equal terms in A303579.

The programs for A302441, there is no canonical definition to state claims against.
-/

/-! ## A302441.P15370997705022453695

`runs[A303579(n+1)]`
-/

namespace A302441.P15370997705022453695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A302441.P15370997705022453695

/-! ## A302441.P2243612533145794274

`runs[A303580(n+2)-A303580(n+1)]%A058849(n+1)`
-/

namespace A302441.P2243612533145794274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303580 (n + 2) - A303580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) (A058849 (n + 1))

end

end A302441.P2243612533145794274

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

The programs for A302445, the canonical program `A302445.P980944586648019814` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302445 has offset 2).

The definition of A302445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1627 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302445.P980944586648019814

`p?[A002260(A038722(n+1))+A002260(n+1)²]`

The canonical program, it is in `Seq.B001.C012`.
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

/-! ## A302445.P16415382423700954189

`filter[A185910(n+1), A001222(#)]`
-/

namespace A302445.P16415382423700954189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A302445.P16415382423700954189

namespace A302445

/-- `filter[A185910(n+1), A001222(#)]` -/
def P16415382423700954189.Spec : Prop :=
  ∀ n, P16415382423700954189.a n = A302445 (n + 2)

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

/-! ## A302448.P17283935696690991767

`C(A196259(2*(n+1)), A357186((n+4)²+1))`
-/

namespace A302448.P17283935696690991767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A196259 (2 * (n + 1))).toNat (A357186 ((n + 4) ^ 2 + 1)).toNat

end

end A302448.P17283935696690991767

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

The programs for A302451, the canonical program `A302451.P919645638412412286` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302451 has offset 0).

The definition of A302451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302451.P919645638412412286

`n^A000120(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A302451

/-- `n^A000120(n)` -/
def P919645638412412286.Spec : Prop :=
  ∀ n, P919645638412412286.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P9971498102507142463

`A256140(C(n+n+1, 2)+n)`
-/

namespace A302451.P9971498102507142463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256140 (Nat.choose (n + n + 1) 2 + n)

end

end A302451.P9971498102507142463

namespace A302451

/-- `A256140(C(n+n+1, 2)+n)` -/
def P9971498102507142463.Spec : Prop :=
  ∀ n, P9971498102507142463.a n = A302451 n

end A302451

/-! ## A302451.P12134329197538430025

`n^∑[∑{e}[xor(n, -n), 2-#]]`
-/

namespace A302451.P12134329197538430025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A302451.P12134329197538430025

namespace A302451

/-- `n^∑[∑{e}[xor(n, -n), 2-#]]` -/
def P12134329197538430025.Spec : Prop :=
  ∀ n, P12134329197538430025.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P6686031380110501320

`n^(∑[1-∑{e}[or(n, -n), #]]-1)`
-/

namespace A302451.P6686031380110501320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ)

end

end A302451.P6686031380110501320

namespace A302451

/-- `n^(∑[1-∑{e}[or(n, -n), #]]-1)` -/
def P6686031380110501320.Spec : Prop :=
  ∀ n, P6686031380110501320.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P16777465437096684747

`n^∑[a(floor(n/2))-a(n-1)]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A302451.P16777465437096684747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A302451.P16777465437096684747

namespace A302451

/-- `n^∑[a(floor(n/2))-a(n-1)]` -/
def P16777465437096684747.Spec : Prop :=
  ∀ n, P16777465437096684747.a n = (A302451 n : ℚ)

end A302451

/-! ## A302451.P11860721986317786837

`n^log2(A001316(n))`
-/

namespace A302451.P11860721986317786837
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ (Real.logb 2 (A001316 n : ℝ))

end

end A302451.P11860721986317786837

namespace A302451

/-- `n^log2(A001316(n))` -/
def P11860721986317786837.Spec : Prop :=
  ∀ n, P11860721986317786837.a n = (A302451 n : ℝ)

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

/-! ## A302467.P600226025322120051

`record[A302472(A198464(n+1))]`
-/

namespace A302467.P600226025322120051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302467.P600226025322120051

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

/-!
# A302478: Products of prime numbers of squarefree index.

The programs for A302478, the canonical program `A302478.P2762765523688909035` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302478 has offset 1).

The definition of A302478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302478.P1725230498528471277

`lt[A379310(1+n), 1]+1`
-/

namespace A302478.P1725230498528471277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379310 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A302478.P1725230498528471277

namespace A302478

/-- `lt[A379310(1+n), 1]+1` -/
def P1725230498528471277.Spec : Prop :=
  ∀ n, (P1725230498528471277.a n : ℤ) = A302478 (n + 1)

end A302478

/-! ## A302478.P17993975608667063191

`eq[1, A003557(A290103(1+n))]+1`
-/

namespace A302478.P17993975608667063191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A290103 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302478.P17993975608667063191

namespace A302478

/-- `eq[1, A003557(A290103(1+n))]+1` -/
def P17993975608667063191.Spec : Prop :=
  ∀ n, (P17993975608667063191.a n : ℤ) = A302478 (n + 1)

end A302478

/-! ## A302478.P10378423164046991085

`eq[1, A030101(A353394(1+n))]+1`
-/

namespace A302478.P10378423164046991085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A353394 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302478.P10378423164046991085

namespace A302478

/-- `eq[1, A030101(A353394(1+n))]+1` -/
def P10378423164046991085.Spec : Prop :=
  ∀ n, (P10378423164046991085.a n : ℤ) = A302478 (n + 1)

end A302478

/-! ## A302478.P11845651477962028946

`eq[1, A353394(A353394(2*(n+1)))]+1`
-/

namespace A302478.P11845651477962028946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353394 (A353394 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302478.P11845651477962028946

namespace A302478

/-- `eq[1, A353394(A353394(2*(n+1)))]+1` -/
def P11845651477962028946.Spec : Prop :=
  ∀ n, (P11845651477962028946.a n : ℤ) = A302478 (n + 1)

end A302478

/-! ## A302478.P16605574937433754471

`eq[A001222(n+1), A379306(n+1)]+1`
-/

namespace A302478.P16605574937433754471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379306 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A302478.P16605574937433754471

namespace A302478

/-- `eq[A001222(n+1), A379306(n+1)]+1` -/
def P16605574937433754471.Spec : Prop :=
  ∀ n, (P16605574937433754471.a n : ℤ) = A302478 (n + 1)

end A302478

/-! ## A302478.P2762765523688909035

`eq[A302242(n+1), A305054(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A302478

/-- `eq[A302242(n+1), A305054(n+1)]+1` -/
def P2762765523688909035.Spec : Prop :=
  ∀ n, (P2762765523688909035.a n : ℤ) = A302478 (n + 1)

theorem P2762765523688909035.correct : P2762765523688909035.Spec := by
  intro n
  simp only [A302478, Nat.add_sub_cancel]

end A302478

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

namespace A302478

/-- `record[A110514(n)/A003557(A316431(n+2))]` -/
def P12310262152440430710.Spec : Prop :=
  ∀ n, P12310262152440430710.a n = (A302478 (n + 1) : ℚ)

end A302478

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

namespace A302478

/-- `record[A008619(2*n)/A003557(A290103(n+1))]` -/
def P10479014072355800189.Spec : Prop :=
  ∀ n, P10479014072355800189.a n = (A302478 (n + 1) : ℚ)

end A302478

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

namespace A302478

/-- `record[A028242(2*n)/A003557(A290103(n+1))]` -/
def P17129775886857178384.Spec : Prop :=
  ∀ n, P17129775886857178384.a n = (A302478 (n + 1) : ℚ)

end A302478

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

namespace A302478

/-- `eq[1, A307430(A290103(n+1)²)]+1` -/
def P3137607840076846930.Spec : Prop :=
  ∀ n, (P3137607840076846930.a n : ℤ) = A302478 (n + 1)

end A302478

/-!
# A302479: Number of partitions of n into two distinct nonprime parts.

The programs for A302479, the canonical program `A302479.P17877153813001114329` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302479 has offset 1).

The definition of A302479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
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

namespace A302479

/-- `A358638(n+1)-A005171(n+1)` -/
def P2795942795290086851.Spec : Prop :=
  ∀ n, P2795942795290086851.a n = A302479 (n + 1)

end A302479

/-! ## A302479.P17877153813001114329

`floor(A076608(1+n)/2)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A302479

/-- `floor(A076608(1+n)/2)` -/
def P17877153813001114329.Spec : Prop :=
  ∀ n, P17877153813001114329.a n = A302479 (n + 1)

theorem P17877153813001114329.correct : P17877153813001114329.Spec := by
  intro n
  simp only [A302479, Nat.add_sub_cancel]

end A302479

/-! ## A302479.P8623491989807090300

`A004526(A076608(n+1))`
-/

namespace A302479.P8623491989807090300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A076608 (n + 1)).toNat

end

end A302479.P8623491989807090300

namespace A302479

/-- `A004526(A076608(n+1))` -/
def P8623491989807090300.Spec : Prop :=
  ∀ n, P8623491989807090300.a n = A302479 (n + 1)

end A302479

/-! ## A302479.P16548290424232126397

`A140106(A076608(n+1)+2)`
-/

namespace A302479.P16548290424232126397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A076608 (n + 1) + 2).toNat

end

end A302479.P16548290424232126397

namespace A302479

/-- `A140106(A076608(n+1)+2)` -/
def P16548290424232126397.Spec : Prop :=
  ∀ n, P16548290424232126397.a n = A302479 (n + 1)

end A302479

/-! ## A302479.P17233438411115887081

`A028242(or(1, A076608(n+1)))`
-/

namespace A302479.P17233438411115887081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A076608 (n + 1))).toNat

end

end A302479.P17233438411115887081

namespace A302479

/-- `A028242(or(1, A076608(n+1)))` -/
def P17233438411115887081.Spec : Prop :=
  ∀ n, P17233438411115887081.a n = A302479 (n + 1)

end A302479

/-! ## A302479.P16944609021300327997

`A057979(or(1, A076608(n+1)))`
-/

namespace A302479.P16944609021300327997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.lor 1 (A076608 (n + 1))).toNat

end

end A302479.P16944609021300327997

namespace A302479

/-- `A057979(or(1, A076608(n+1)))` -/
def P16944609021300327997.Spec : Prop :=
  ∀ n, P16944609021300327997.a n = A302479 (n + 1)

end A302479

/-! ## A302479.P13685393878919576707

`A025480(and(-2, A076608(n+1)))`
-/

namespace A302479.P13685393878919576707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.land (-2) (A076608 (n + 1))).toNat

end

end A302479.P13685393878919576707

namespace A302479

/-- `A025480(and(-2, A076608(n+1)))` -/
def P13685393878919576707.Spec : Prop :=
  ∀ n, P13685393878919576707.a n = A302479 (n + 1)

end A302479

/-! ## A302479.P13580181343985144264

`A065033(A076608(n+1)+1)-1`
-/

namespace A302479.P13580181343985144264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A076608 (n + 1) + 1).toNat - 1

end

end A302479.P13580181343985144264

namespace A302479

/-- `A065033(A076608(n+1)+1)-1` -/
def P13580181343985144264.Spec : Prop :=
  ∀ n, P13580181343985144264.a n = A302479 (n + 1)

end A302479

/-! ## A302479.P13820185331639440074

`A076608(n+1)-A062610(n+1)`
-/

namespace A302479.P13820185331639440074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076608 (n + 1) - A062610 (n + 1)

end

end A302479.P13820185331639440074

namespace A302479

/-- `A076608(n+1)-A062610(n+1)` -/
def P13820185331639440074.Spec : Prop :=
  ∀ n, P13820185331639440074.a n = A302479 (n + 1)

end A302479

/-! ## A302479.P1023919750618846781

`A295630(n+1)-A062602(n+1)`
-/

namespace A302479.P1023919750618846781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295630 (n + 1) - A062602 (n + 1)

end

end A302479.P1023919750618846781

namespace A302479

/-- `A295630(n+1)-A062602(n+1)` -/
def P1023919750618846781.Spec : Prop :=
  ∀ n, P1023919750618846781.a n = A302479 (n + 1)

end A302479

/-! ## A302479.P11748277120279124306

`A002265(2*A076608(n+1))`
-/

namespace A302479.P11748277120279124306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A076608 (n + 1)).toNat

end

end A302479.P11748277120279124306

namespace A302479

/-- `A002265(2*A076608(n+1))` -/
def P11748277120279124306.Spec : Prop :=
  ∀ n, P11748277120279124306.a n = A302479 (n + 1)

end A302479

/-! ## A302479.P52597297609199545

`∑{#}[floor(n/2)-1, A005171(#+1)*A005171(n-#)]`
-/

namespace A302479.P52597297609199545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A005171 (k + 1) * A005171 (n - k)

end

end A302479.P52597297609199545

namespace A302479

/-- `∑{#}[floor(n/2)-1, A005171(#+1)*A005171(n-#)]` -/
def P52597297609199545.Spec : Prop :=
  ∀ n, P52597297609199545.a n = A302479 (n + 1)

end A302479

/-! ## A302479.P9347038460060357291

`∑{#}[floor(n/2)-1, (1-A010051(#+1))*(1-A010051(n-#))]`
-/

namespace A302479.P9347038460060357291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (1 - A010051 (k + 1)) * (1 - A010051 (n - k))

end

end A302479.P9347038460060357291

namespace A302479

/-- `∑{#}[floor(n/2)-1, (1-A010051(#+1))*(1-A010051(n-#))]` -/
def P9347038460060357291.Spec : Prop :=
  ∀ n, P9347038460060357291.a n = A302479 (n + 1)

end A302479

/-! ## A302479.P1194249617319586677

`and(A056453(n+1), A076608(n+1))/2`
-/

namespace A302479.P1194249617319586677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A056453 (n + 1)) (A076608 (n + 1)) : ℚ) / 2

end

end A302479.P1194249617319586677

namespace A302479

/-- `and(A056453(n+1), A076608(n+1))/2` -/
def P1194249617319586677.Spec : Prop :=
  ∀ n, P1194249617319586677.a n = (A302479 (n + 1) : ℚ)

end A302479

/-! ## A302479.P8973692014550520196

`A004525(and(A056453(n+1), A076608(n+1)))`
-/

namespace A302479.P8973692014550520196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.land (A056453 (n + 1)) (A076608 (n + 1))).toNat

end

end A302479.P8973692014550520196

namespace A302479

/-- `A004525(and(A056453(n+1), A076608(n+1)))` -/
def P8973692014550520196.Spec : Prop :=
  ∀ n, P8973692014550520196.a n = A302479 (n + 1)

end A302479

/-!
# A302480: Number of partitions of n into two parts with the smaller part nonprime and the larger part prime.

The programs for A302480, the canonical program `A302480.P9378941671207614826` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302480 has offset 1).

The definition of A302480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302480.P9378941671207614826

`∑{#}[floor(n/2)-1, (1-A010051(#+1))*A010051(n-#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A302480

/-- `∑{#}[floor(n/2)-1, (1-A010051(#+1))*A010051(n-#)]` -/
def P9378941671207614826.Spec : Prop :=
  ∀ n, P9378941671207614826.a n = A302480 (n + 1)

theorem P9378941671207614826.correct : P9378941671207614826.Spec := by
  intro n
  simp only [A302480, Nat.add_sub_cancel]

end A302480

/-! ## A302480.P4257792740751429607

`A062602(n+1)-A302481(n+1)`
-/

namespace A302480.P4257792740751429607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (n + 1) - A302481 (n + 1)

end

end A302480.P4257792740751429607

namespace A302480

/-- `A062602(n+1)-A302481(n+1)` -/
def P4257792740751429607.Spec : Prop :=
  ∀ n, P4257792740751429607.a n = A302480 (n + 1)

end A302480

/-! ## A302480.P10924856212159867762

`A294602(n+1)-A117929(n+1)`
-/

namespace A302480.P10924856212159867762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (n + 1) - A117929 (n + 1)

end

end A302480.P10924856212159867762

namespace A302480

/-- `A294602(n+1)-A117929(n+1)` -/
def P10924856212159867762.Spec : Prop :=
  ∀ n, P10924856212159867762.a n = A302480 (n + 1)

end A302480

/-! ## A302480.P12927178268448780405

`A294602(n+1)-floor(A073610(n+1)/2)`
-/

namespace A302480.P12927178268448780405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (n + 1) - ⌊(A073610 (n + 1) : ℚ) / 2⌋

end

end A302480.P12927178268448780405

namespace A302480

/-- `A294602(n+1)-floor(A073610(n+1)/2)` -/
def P12927178268448780405.Spec : Prop :=
  ∀ n, P12927178268448780405.a n = A302480 (n + 1)

end A302480

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

namespace A302480

/-- `∑[A062610(A028310(n))-A302479(n+1)]` -/
def P16163223711500954682.Spec : Prop :=
  ∀ n, P16163223711500954682.a n = A302480 (n + 1)

end A302480

/-! ## A302480.P9511208999576228633

`A294602(n+1)-A004526(A073610(n+1))`
-/

namespace A302480.P9511208999576228633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (n + 1) - A004526 (A073610 (n + 1)).toNat

end

end A302480.P9511208999576228633

namespace A302480

/-- `A294602(n+1)-A004526(A073610(n+1))` -/
def P9511208999576228633.Spec : Prop :=
  ∀ n, P9511208999576228633.a n = A302480 (n + 1)

end A302480

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

namespace A302480

/-- `∑[A000035(A076608(n+1))]-A062610(n+1)` -/
def P15723164212845477805.Spec : Prop :=
  ∀ n, P15723164212845477805.a n = A302480 (n + 1)

end A302480

/-! ## A302480.P9921856781190264603

`A230980(n)-(A302481(n+1)+A073610(n+1))`
-/

namespace A302480.P9921856781190264603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - (A302481 (n + 1) + A073610 (n + 1))

end

end A302480.P9921856781190264603

namespace A302480

/-- `A230980(n)-(A302481(n+1)+A073610(n+1))` -/
def P9921856781190264603.Spec : Prop :=
  ∀ n, P9921856781190264603.a n = A302480 (n + 1)

end A302480

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

namespace A302480

/-- `∑[A062610(n+1)-A302479(n+1)]-A062610(n+1)` -/
def P17118500373402690370.Spec : Prop :=
  ∀ n, P17118500373402690370.a n = A302480 (n + 1)

end A302480

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

namespace A302480

/-- `char[A000040(n+1)]+A224712(n+1)-A302481(n+1)` -/
def P14384292520688473457.Spec : Prop :=
  ∀ n, P14384292520688473457.a n = A302480 (n + 1)

end A302480

/-!
# A302481: Number of partitions of n into two parts with the smaller part prime and the larger part nonprime.

The programs for A302481, the canonical program `A302481.P7198751021167233021` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302481 has offset 1).

The definition of A302481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302481.P7198751021167233021

`∑[A061358(n)-A117929(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A302481

/-- `∑[A061358(n)-A117929(n+1)]` -/
def P7198751021167233021.Spec : Prop :=
  ∀ n, P7198751021167233021.a n = A302481 (n + 1)

theorem P7198751021167233021.correct : P7198751021167233021.Spec := by
  intro n
  simp only [A302481, Nat.add_sub_cancel]

end A302481

/-! ## A302481.P15828185783524855607

`A056172(n+1)-A061358(n+1)`
-/

namespace A302481.P15828185783524855607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (n + 1) - A061358 (n + 1)

end

end A302481.P15828185783524855607

namespace A302481

/-- `A056172(n+1)-A061358(n+1)` -/
def P15828185783524855607.Spec : Prop :=
  ∀ n, P15828185783524855607.a n = A302481 (n + 1)

end A302481

/-! ## A302481.P5626857869510854352

`A062602(1+n)-A302480(n+1)`
-/

namespace A302481.P5626857869510854352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (1 + n) - A302480 (n + 1)

end

end A302481.P5626857869510854352

namespace A302481

/-- `A062602(1+n)-A302480(n+1)` -/
def P5626857869510854352.Spec : Prop :=
  ∀ n, P5626857869510854352.a n = A302481 (n + 1)

end A302481

/-! ## A302481.P14759976184491678623

`A000720(A065033(n))-A061358(n+1)`
-/

namespace A302481.P14759976184491678623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A065033 n).toNat - A061358 (n + 1)

end

end A302481.P14759976184491678623

namespace A302481

/-- `A000720(A065033(n))-A061358(n+1)` -/
def P14759976184491678623.Spec : Prop :=
  ∀ n, P14759976184491678623.a n = A302481 (n + 1)

end A302481

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

namespace A302481

/-- `∑[A061358(n)-A004526(A073610(n+1))]` -/
def P1693106146664342152.Spec : Prop :=
  ∀ n, P1693106146664342152.a n = A302481 (n + 1)

end A302481

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

The programs for A302483, the canonical program `A302483.P944459872102090070` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302483 has offset 0).

The definition of A302483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302483.P944459872102090070

`ogf((1-3x+4x^2-5x^3+7x^4-7x^5+6x^6-3x^7+x^8)/(1-4x+6x^2-5x^3+3x^4-x^5))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A302483

/-- `ogf((1-3x+4x^2-5x^3+7x^4-7x^5+6x^6-3x^7+x^8)/(1-4x+6x^2-5x^3+3x^4-x^5))` -/
def P944459872102090070.Spec : Prop :=
  ∀ n, P944459872102090070.a n = A302483 n

theorem P944459872102090070.correct : P944459872102090070.Spec := by
  intro n
  simp only [A302483]

end A302483

/-! ## A302483.P12552524030924414914

`A055086(or(A049220(n+1), A127570(n+1)))`
-/

namespace A302483.P12552524030924414914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.lor (A049220 (n + 1)) (A127570 (n + 1))).toNat

end

end A302483.P12552524030924414914

namespace A302483

/-- `A055086(or(A049220(n+1), A127570(n+1)))` -/
def P12552524030924414914.Spec : Prop :=
  ∀ n, P12552524030924414914.a n = A302483 n

end A302483

/-! ## A302483.P2185556793293478068

`A055086(A049220(n+1))+A000007(A049222(n+1))`
-/

namespace A302483.P2185556793293478068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A049220 (n + 1)).toNat + A000007 (A049222 (n + 1)).toNat

end

end A302483.P2185556793293478068

namespace A302483

/-- `A055086(A049220(n+1))+A000007(A049222(n+1))` -/
def P2185556793293478068.Spec : Prop :=
  ∀ n, P2185556793293478068.a n = A302483 n

end A302483

/-! ## A302483.P10923311285476369311

`A116939(A391031(n))`
-/

namespace A302483.P10923311285476369311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A391031 n).toNat

end

end A302483.P10923311285476369311

namespace A302483

/-- `A116939(A391031(n))` -/
def P10923311285476369311.Spec : Prop :=
  ∀ n, P10923311285476369311.a n = A302483 n

end A302483

/-! ## A302483.P13354761010766749069

`A359536(A000286(n+1))`
-/

namespace A302483.P13354761010766749069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359536 (A000286 (n + 1)).toNat

end

end A302483.P13354761010766749069

namespace A302483

/-- `A359536(A000286(n+1))` -/
def P13354761010766749069.Spec : Prop :=
  ∀ n, P13354761010766749069.a n = A302483 n

end A302483

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
# A302486: Total domination number of the n-triangular grid graph.

The programs for A302486, there is no canonical definition to state claims against.
-/

/-! ## A302486.P7175173502318154165

`row(A208251(A380853(2*n+5)+A006010(n+1)))+1`
-/

namespace A302486.P7175173502318154165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A208251 (A380853 (2 * n + 5) + A006010 (n + 1)).toNat).toNat + 1

end

end A302486.P7175173502318154165

/-!
# A302487: Total domination number of the n-Apollonian network.

The programs for A302487, the canonical program `A302487.P8084945391401743994` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302487 has offset 1).

The definition of A302487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

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

/-! ## A302487.P8084945391401743994

`4*a(n-1)-3*a(n-2)` with `a(0)=2, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A302487

/-- `4*a(n-1)-3*a(n-2)` -/
def P8084945391401743994.Spec : Prop :=
  ∀ n, P8084945391401743994.a n = A302487 (n + 1)

theorem P8084945391401743994.correct : P8084945391401743994.Spec := by
  intro n
  simp only [A302487, Nat.add_sub_cancel]

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

/-! ## A302487.P18347984458362289021

`∑[abs(A141413(abs(1-n)))]+1`
-/

namespace A302487.P18347984458362289021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A141413 |1 - (n : ℤ)|.toNat)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A302487.P18347984458362289021

namespace A302487

/-- `∑[abs(A141413(abs(1-n)))]+1` -/
def P18347984458362289021.Spec : Prop :=
  ∀ n, P18347984458362289021.a n = A302487 (n + 1)

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

The programs for A302488, the canonical program `A302488.P15522168495187512574` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302488 has offset 0).

The definition of A302488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302488.P16844815899827600238

`ogf((x+2x^4-x^5)/(1-2x+x^2-x^4+2x^5-x^6))`
-/

namespace A302488.P16844815899827600238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 0, 2, -1] [1, -2, 1, 0, -1, 2, -1] n

end

end A302488.P16844815899827600238

namespace A302488

/-- `ogf((x+2x^4-x^5)/(1-2x+x^2-x^4+2x^5-x^6))` -/
def P16844815899827600238.Spec : Prop :=
  ∀ n, P16844815899827600238.a n = A302488 n

end A302488

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

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A302488

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P15522168495187512574.Spec : Prop :=
  ∀ n, P15522168495187512574.a n = A302488 n

theorem P15522168495187512574.correct : P15522168495187512574.Spec := by
  intro n
  simp only [A302488]

end A302488

/-! ## A302488.P13896656332442268646

`∑[or(1, floor(n/2))]-1`
-/

namespace A302488.P13896656332442268646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A302488.P13896656332442268646

namespace A302488

/-- `∑[or(1, floor(n/2))]-1` -/
def P13896656332442268646.Spec : Prop :=
  ∀ n, P13896656332442268646.a n = A302488 n

end A302488

/-! ## A302488.P3103151911854526451

`∑[and(n, -4)/2]+n`
-/

namespace A302488.P3103151911854526451
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-4) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A302488.P3103151911854526451

namespace A302488

/-- `∑[and(n, -4)/2]+n` -/
def P3103151911854526451.Spec : Prop :=
  ∀ n, P3103151911854526451.a n = (A302488 n : ℚ)

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

/-! ## A302488.P14502597836266526312

`∑[fp[(n+1)*gcd(2, n+1)]]`
-/

namespace A302488.P14502597836266526312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 2 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302488.P14502597836266526312

namespace A302488

/-- `∑[fp[(n+1)*gcd(2, n+1)]]` -/
def P14502597836266526312.Spec : Prop :=
  ∀ n, (P14502597836266526312.a n : ℤ) = A302488 n

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

/-! ## A302488.P48579687165383443

`n-∑[a(n-4)-2]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A302488.P48579687165383443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n f1 =>
  f1 (n - 4) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302488.P48579687165383443

namespace A302488

/-- `n-∑[a(n-4)-2]` -/
def P48579687165383443.Spec : Prop :=
  ∀ n, P48579687165383443.a n = A302488 n

end A302488

/-! ## A302488.P1713190110234747854

`floor(n*n/2)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A302488.P1713190110234747854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(n * n : ℚ) / 2⌋ - a (n - 2)

end

end A302488.P1713190110234747854

namespace A302488

/-- `floor(n*n/2)-a(n-2)` -/
def P1713190110234747854.Spec : Prop :=
  ∀ n, P1713190110234747854.a n = A302488 n

end A302488

/-! ## A302488.P6217288882663720978

`∑[fp[A022998(n+1)]]`
-/

namespace A302488.P6217288882663720978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302488.P6217288882663720978

namespace A302488

/-- `∑[fp[A022998(n+1)]]` -/
def P6217288882663720978.Spec : Prop :=
  ∀ n, (P6217288882663720978.a n : ℤ) = A302488 n

end A302488

/-! ## A302488.P13766237514878419463

`∑[fp[A026185(n+1)]]`
-/

namespace A302488.P13766237514878419463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026185 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302488.P13766237514878419463

namespace A302488

/-- `∑[fp[A026185(n+1)]]` -/
def P13766237514878419463.Spec : Prop :=
  ∀ n, (P13766237514878419463.a n : ℤ) = A302488 n

end A302488

/-! ## A302488.P7149754190549818897

`∑[fp[A065171(n+1)]]`
-/

namespace A302488.P7149754190549818897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065171 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302488.P7149754190549818897

namespace A302488

/-- `∑[fp[A065171(n+1)]]` -/
def P7149754190549818897.Spec : Prop :=
  ∀ n, (P7149754190549818897.a n : ℤ) = A302488 n

end A302488

/-! ## A302488.P9832300911413976698

`∑[fp[A257088(n+1)]]`
-/

namespace A302488.P9832300911413976698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302488.P9832300911413976698

namespace A302488

/-- `∑[fp[A257088(n+1)]]` -/
def P9832300911413976698.Spec : Prop :=
  ∀ n, (P9832300911413976698.a n : ℤ) = A302488 n

end A302488

/-! ## A302488.P4205620416921476007

`∑[fp[A019425(n+2)]]`
-/

namespace A302488.P4205620416921476007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302488.P4205620416921476007

namespace A302488

/-- `∑[fp[A019425(n+2)]]` -/
def P4205620416921476007.Spec : Prop :=
  ∀ n, (P4205620416921476007.a n : ℤ) = A302488 n

end A302488

/-! ## A302488.P2718602551879399860

`∑[fp[A265722(n+2)]]`
-/

namespace A302488.P2718602551879399860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265722 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302488.P2718602551879399860

namespace A302488

/-- `∑[fp[A265722(n+2)]]` -/
def P2718602551879399860.Spec : Prop :=
  ∀ n, (P2718602551879399860.a n : ℤ) = A302488 n

end A302488

/-!
# A302490: Fewest number of distinct prime factors in any product of a_1*a_2*...*a_t where n = a_1 < a_2 < ... < a_t = A006255(n) and the product is square.

The programs for A302490, there is no canonical definition to state claims against.
-/

/-! ## A302490.P11693764617294423554

`A001221(A066401(1+n))-char[16]`
-/

namespace A302490.P11693764617294423554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A066401 (1 + n)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302490.P11693764617294423554

/-!
# A302491: Prime numbers of squarefree index.

The programs for A302491, the canonical program `A302491.P7760389659930367120` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302491 has offset 1).

The definition of A302491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302491.P7760389659930367120

`A000040(A005117(n+1))`

The canonical program, it is in `Seq.B002.C006`.
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

/-! ## A302491.P2266622892526351372

`∩[A053813(n+1), A302591(n+1)]`
-/

namespace A302491.P2266622892526351372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302491.P2266622892526351372

namespace A302491

/-- `∩[A053813(n+1), A302591(n+1)]` -/
def P2266622892526351372.Spec : Prop :=
  ∀ n, (P2266622892526351372.a n : ℤ) = A302491 (n + 1)

end A302491

/-! ## A302491.P15800405619652998381

`filter[A302591(n+1), A010051(#)]`
-/

namespace A302491.P15800405619652998381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A302491.P15800405619652998381

namespace A302491

/-- `filter[A302591(n+1), A010051(#)]` -/
def P15800405619652998381.Spec : Prop :=
  ∀ n, P15800405619652998381.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P10540680473679460024

`filter[A302591(n+1), A354874(#)]`
-/

namespace A302491.P10540680473679460024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A302491.P10540680473679460024

namespace A302491

/-- `filter[A302591(n+1), A354874(#)]` -/
def P10540680473679460024.Spec : Prop :=
  ∀ n, P10540680473679460024.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P6873155857549202709

`filter[A302591(n+1), A358220(#)]`
-/

namespace A302491.P6873155857549202709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A302491.P6873155857549202709

namespace A302491

/-- `filter[A302591(n+1), A358220(#)]` -/
def P6873155857549202709.Spec : Prop :=
  ∀ n, P6873155857549202709.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P14043205390971401839

`filter[A302591(n+1), A358771(#)]`
-/

namespace A302491.P14043205390971401839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A302491.P14043205390971401839

namespace A302491

/-- `filter[A302591(n+1), A358771(#)]` -/
def P14043205390971401839.Spec : Prop :=
  ∀ n, P14043205390971401839.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P7458297075205629192

`filter[A302591(n+1), A359372(#)]`
-/

namespace A302491.P7458297075205629192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A302491.P7458297075205629192

namespace A302491

/-- `filter[A302591(n+1), A359372(#)]` -/
def P7458297075205629192.Spec : Prop :=
  ∀ n, P7458297075205629192.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P2194726289884867083

`filter[A302591(n+1), A252233(#)]`
-/

namespace A302491.P2194726289884867083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A302491.P2194726289884867083

namespace A302491

/-- `filter[A302591(n+1), A252233(#)]` -/
def P2194726289884867083.Spec : Prop :=
  ∀ n, P2194726289884867083.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P4218473902783743286

`filter[A302591(n+1), A257000(#)]`
-/

namespace A302491.P4218473902783743286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A302491.P4218473902783743286

namespace A302491

/-- `filter[A302591(n+1), A257000(#)]` -/
def P4218473902783743286.Spec : Prop :=
  ∀ n, P4218473902783743286.a n = A302491 (n + 1)

end A302491

/-! ## A302491.P14124762286447223466

`filter[A302591(n+1), A283991(#)]`
-/

namespace A302491.P14124762286447223466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A302491.P14124762286447223466

namespace A302491

/-- `filter[A302591(n+1), A283991(#)]` -/
def P14124762286447223466.Spec : Prop :=
  ∀ n, P14124762286447223466.a n = A302491 (n + 1)

end A302491

/-!
# A302492: Products of any power of 2 with prime numbers of prime-power index, i.e., prime numbers p of the form p = prime(q^k), for q prime, k >= 1.

The programs for A302492, there is no canonical definition to state claims against.
-/

/-! ## A302492.P1982882670513043171

`eq[1, A355741(A000265(1+n))]+1`
-/

namespace A302492.P1982882670513043171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (A000265 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302492.P1982882670513043171

/-! ## A302492.P15094351657772511411

`comp[A356064(n+1)-1]+1`
-/

namespace A302492.P15094351657772511411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356064 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A302492.P15094351657772511411

/-! ## A302492.P11847865003622901370

`record[n+2-A355741(A000265((n+1)²))]`
-/

namespace A302492.P11847865003622901370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A355741 (A000265 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302492.P11847865003622901370

/-! ## A302492.P5049237733533838257

`lt[A138674(2*(n+1)), A166319(A063538(n+1))]`
-/

namespace A302492.P5049237733533838257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138674 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166319 (A063538 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302492.P5049237733533838257

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

/-!
# A302493: Prime numbers of prime-power index.

The programs for A302493, the canonical program `A302493.P13750760026098076296` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302493 has offset 1).

The definition of A302493 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A302493.P13750760026098076296

`A000040(A000961(n+1))`

The canonical program, it is in `Seq.B010.C000`.
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

/-! ## A302493.P18169884738848532831

`p?[A382215(n+1)]`
-/

namespace A302493.P18169884738848532831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302493.P18169884738848532831

namespace A302493

/-- `p?[A382215(n+1)]` -/
def P18169884738848532831.Spec : Prop :=
  ∀ n, P18169884738848532831.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P11043662381831736723

`filter[A382215(n+1), A010051(#)]`
-/

namespace A302493.P11043662381831736723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A302493.P11043662381831736723

namespace A302493

/-- `filter[A382215(n+1), A010051(#)]` -/
def P11043662381831736723.Spec : Prop :=
  ∀ n, P11043662381831736723.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P13948056302677803227

`∩[A000040(n+1), A382215(n+1)]`
-/

namespace A302493.P13948056302677803227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302493.P13948056302677803227

namespace A302493

/-- `∩[A000040(n+1), A382215(n+1)]` -/
def P13948056302677803227.Spec : Prop :=
  ∀ n, (P13948056302677803227.a n : ℤ) = A302493 (n + 1)

end A302493

/-! ## A302493.P1002870649530144608

`∩[A053813(n+1), A382215(n+1)]`
-/

namespace A302493.P1002870649530144608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302493.P1002870649530144608

namespace A302493

/-- `∩[A053813(n+1), A382215(n+1)]` -/
def P1002870649530144608.Spec : Prop :=
  ∀ n, (P1002870649530144608.a n : ℤ) = A302493 (n + 1)

end A302493

/-! ## A302493.P12124360442399085359

`∩[A070159(n+1), A382215(n+1)]`
-/

namespace A302493.P12124360442399085359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302493.P12124360442399085359

namespace A302493

/-- `∩[A070159(n+1), A382215(n+1)]` -/
def P12124360442399085359.Spec : Prop :=
  ∀ n, (P12124360442399085359.a n : ℤ) = A302493 (n + 1)

end A302493

/-! ## A302493.P16261919513778871306

`p?[A302498(n+1)]`
-/

namespace A302493.P16261919513778871306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302493.P16261919513778871306

namespace A302493

/-- `p?[A302498(n+1)]` -/
def P16261919513778871306.Spec : Prop :=
  ∀ n, P16261919513778871306.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P15199126903844884630

`filter[A302498(n+1), A010051(#)]`
-/

namespace A302493.P15199126903844884630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A302493.P15199126903844884630

namespace A302493

/-- `filter[A302498(n+1), A010051(#)]` -/
def P15199126903844884630.Spec : Prop :=
  ∀ n, P15199126903844884630.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P14232086091662065157

`filter[A302498(n+1), A374130(#)]`
-/

namespace A302493.P14232086091662065157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A302493.P14232086091662065157

namespace A302493

/-- `filter[A302498(n+1), A374130(#)]` -/
def P14232086091662065157.Spec : Prop :=
  ∀ n, P14232086091662065157.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P15114134961746119099

`filter[A302498(n+2), A008966(#)]`
-/

namespace A302493.P15114134961746119099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A302493.P15114134961746119099

namespace A302493

/-- `filter[A302498(n+2), A008966(#)]` -/
def P15114134961746119099.Spec : Prop :=
  ∀ n, P15114134961746119099.a n = A302493 (n + 1)

end A302493

/-! ## A302493.P1446752741340194343

`∩[A000040(n+1), A302498(n+1)]`
-/

namespace A302493.P1446752741340194343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302493.P1446752741340194343

namespace A302493

/-- `∩[A000040(n+1), A302498(n+1)]` -/
def P1446752741340194343.Spec : Prop :=
  ∀ n, (P1446752741340194343.a n : ℤ) = A302493 (n + 1)

end A302493

/-! ## A302493.P11394201892119939995

`∩[A053813(n+1), A302498(n+1)]`
-/

namespace A302493.P11394201892119939995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302493.P11394201892119939995

namespace A302493

/-- `∩[A053813(n+1), A302498(n+1)]` -/
def P11394201892119939995.Spec : Prop :=
  ∀ n, (P11394201892119939995.a n : ℤ) = A302493 (n + 1)

end A302493

/-! ## A302493.P1330860869462735322

`∩[A070159(n+1), A302498(n+1)]`
-/

namespace A302493.P1330860869462735322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302493.P1330860869462735322

namespace A302493

/-- `∩[A070159(n+1), A302498(n+1)]` -/
def P1330860869462735322.Spec : Prop :=
  ∀ n, (P1330860869462735322.a n : ℤ) = A302493 (n + 1)

end A302493

/-! ## A302493.P7618298557176369391

`∩[A116974(n+1), A302498(n+1)]`
-/

namespace A302493.P7618298557176369391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302493.P7618298557176369391

namespace A302493

/-- `∩[A116974(n+1), A302498(n+1)]` -/
def P7618298557176369391.Spec : Prop :=
  ∀ n, (P7618298557176369391.a n : ℤ) = A302493 (n + 1)

end A302493

/-!
# A302494: Products of distinct primes of squarefree index.

The programs for A302494, there is no canonical definition to state claims against.
-/

/-! ## A302494.P11540451255045746077

`record[A007913(A302478(1+n))]`
-/

namespace A302494.P11540451255045746077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A302478 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302494.P11540451255045746077

/-! ## A302494.P13086333379657485813

`filter[A302478(1+n), A008966(#)]`
-/

namespace A302494.P13086333379657485813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A302494.P13086333379657485813

/-! ## A302494.P14260159944312770570

`filter[A302478(n+1), A046951(#)]`
-/

namespace A302494.P14260159944312770570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A046951 (f1 j).toNat = 1) n)

end

end A302494.P14260159944312770570

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

/-! ## A302495.P12062786130088248395

`A094290(A039808(n+1))`
-/

namespace A302495.P12062786130088248395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094290 (A039808 (n + 1)).toNat

end

end A302495.P12062786130088248395

/-! ## A302495.P8547621881422924520

`A074592(A107066(n+1))`
-/

namespace A302495.P8547621881422924520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074592 (A107066 (n + 1)).toNat

end

end A302495.P8547621881422924520

/-!
# A302496: Products of distinct primes of prime-power index.

The programs for A302496, there is no canonical definition to state claims against.
-/

/-! ## A302496.P15962802020538016739

`record[A007913(A302492(1+n))]`
-/

namespace A302496.P15962802020538016739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A302492 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302496.P15962802020538016739

/-! ## A302496.P10454198379158589305

`filter[A302492(n+1), A008479(#)]`
-/

namespace A302496.P10454198379158589305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008479 (f1 j).toNat = 1) n)

end

end A302496.P10454198379158589305

/-! ## A302496.P3015061091343818414

`filter[A302492(n+1), A008833(#)]`
-/

namespace A302496.P3015061091343818414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008833 (f1 j).toNat = 1) n)

end

end A302496.P3015061091343818414

/-! ## A302496.P16501487337983683684

`filter[A302492(1+n), A008966(#)]`
-/

namespace A302496.P16501487337983683684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A302496.P16501487337983683684

/-! ## A302496.P6208460429776766256

`record[A007947(A302492(1+n)²)]`
-/

namespace A302496.P6208460429776766256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A302492 (1 + n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302496.P6208460429776766256

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

/-! ## A302497.P212708198537403080

`record[A034699(A302478(1+n))]`
-/

namespace A302497.P212708198537403080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A302478 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302497.P212708198537403080

/-! ## A302497.P3607968495191498965

`filter[A302478(1+n), A010055(#)]`
-/

namespace A302497.P3607968495191498965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A302497.P3607968495191498965

/-! ## A302497.P1795700285483309980

`filter[A302478(n+1), A050320(#)]`
-/

namespace A302497.P1795700285483309980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A050320 (f1 j).toNat = 1) n)

end

end A302497.P1795700285483309980

/-! ## A302497.P9250613541119923433

`filter[A302478(n+1), A381078(#)]`
-/

namespace A302497.P9250613541119923433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381078 (f1 j).toNat = 1) n)

end

end A302497.P9250613541119923433

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

/-!
# A302498: Numbers that are a power of a prime number whose prime index is itself a power of a prime number.

The programs for A302498, the canonical program `A302498.P11061753881118226107` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302498 has offset 1).

The definition of A302498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302498.P885231798207026056

`filter[A302593(1+n), A378442(#)]`
-/

namespace A302498.P885231798207026056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A302498.P885231798207026056

namespace A302498

/-- `filter[A302593(1+n), A378442(#)]` -/
def P885231798207026056.Spec : Prop :=
  ∀ n, P885231798207026056.a n = A302498 (n + 1)

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

The canonical program, it is in `Seq.B010.C000`.
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

/-! ## A302498.P17493029129441411440

`∩[A382215(n+1), A397962(n+1)]`
-/

namespace A302498.P17493029129441411440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302498.P17493029129441411440

namespace A302498

/-- `∩[A382215(n+1), A397962(n+1)]` -/
def P17493029129441411440.Spec : Prop :=
  ∀ n, (P17493029129441411440.a n : ℤ) = A302498 (n + 1)

end A302498

/-! ## A302498.P4824072221075152012

`record[A028233(A302593(n+1))]`
-/

namespace A302498.P4824072221075152012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A302593 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302498.P4824072221075152012

namespace A302498

/-- `record[A028233(A302593(n+1))]` -/
def P4824072221075152012.Spec : Prop :=
  ∀ n, P4824072221075152012.a n = A302498 (n + 1)

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

/-! ## A302498.P177847161157457987

`filter[A382215(n+1), A008480(#)]`
-/

namespace A302498.P177847161157457987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008480 (f1 j).toNat = 1) n)

end

end A302498.P177847161157457987

namespace A302498

/-- `filter[A382215(n+1), A008480(#)]` -/
def P177847161157457987.Spec : Prop :=
  ∀ n, P177847161157457987.a n = A302498 (n + 1)

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

/-!
# A302499: Lexicographically first sequence of distinct terms such that any set of four successive digits can be reordered as {d, d+1, d+2, d+3}, d being the smallest of the four digits.

The programs for A302499, there is no canonical definition to state claims against.
-/

/-! ## A302499.P10791825642577439900

`A046469(n)%A343985(A115772(n+4))`
-/

namespace A302499.P10791825642577439900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046469 n) (A343985 (A115772 (n + 4)).toNat)

end

end A302499.P10791825642577439900

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

