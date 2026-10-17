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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A348101: Starts of runs of 5 consecutive numbers that have an equal number of unitary and nonunitary prime divisors (A348097).

The programs for A348101, there is no canonical definition to state claims against.
-/

/-! ## A348101.P9975070755889088698

`∩[A348100(n+1)-1, A348100(n+1)]`
-/

namespace A348101.P9975070755889088698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348100 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348101.P9975070755889088698

/-!
# A348102: a(n) is the number of vector subspaces in (F_3)^n, counted up to coordinate permutation.

The programs for A348102, there is no canonical definition to state claims against.
-/

/-! ## A348102.P689943239990647950

`A230418(A150825(n))`
-/

namespace A348102.P689943239990647950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230418 (A150825 n).toNat

end

end A348102.P689943239990647950

/-! ## A348102.P1952684209820713918

`A230418(A323949(n+2)-A323954(n+1))`
-/

namespace A348102.P1952684209820713918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230418 (A323949 (n + 2) - A323954 (n + 1)).toNat

end

end A348102.P1952684209820713918

/-!
# A348103: a(n) is the number of vector subspaces in (F_4)^n, counted up to coordinate permutation.

The programs for A348103, there is no canonical definition to state claims against.
-/

/-! ## A348103.P7198376797414021791

`A110654(A340021(n))+A023443(A339832(n))`
-/

namespace A348103.P7198376797414021791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A340021 n).toNat + A023443 (A339832 n).toNat

end

end A348103.P7198376797414021791

/-! ## A348103.P2222262182985520429

`A173666(A098719(n+1))`
-/

namespace A348103.P2222262182985520429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173666 (A098719 (n + 1)).toNat

end

end A348103.P2222262182985520429

/-!
# A348104: a(n) is the number of vector subspaces in (F_5)^n, counted up to coordinate permutation.

The programs for A348104, there is no canonical definition to state claims against.
-/

/-! ## A348104.P12801384156007710078

`A214816(n)+A036431(A045846(n))`
-/

namespace A348104.P12801384156007710078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214816 n + A036431 (A045846 n).toNat

end

end A348104.P12801384156007710078

/-! ## A348104.P7775197369997145423

`A214816(n)+A116681(A100845(n))`
-/

namespace A348104.P7775197369997145423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214816 n + A116681 (A100845 n).toNat

end

end A348104.P7775197369997145423

/-!
# A348105: a(n) is the number of vector subspaces in (F_7)^n, counted up to coordinate permutation.

The programs for A348105, there is no canonical definition to state claims against.
-/

/-! ## A348105.P10437882140922838108

`round(root(A005787(n+1)², 5))`
-/

namespace A348105.P10437882140922838108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005787 (n + 1) ^ 2 : ℝ) ^ (1 / (5 : ℝ)))

end

end A348105.P10437882140922838108

/-!
# A348106: a(n) is the number of vector subspaces in (F_8)^n, counted up to coordinate permutation.

The programs for A348106, there is no canonical definition to state claims against.
-/

/-! ## A348106.P3746373231305269190

`A323623(∑[n!]-1)`
-/

namespace A348106.P3746373231305269190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323623 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A348106.P3746373231305269190

/-!
# A348107: a(n) is the number of vector subspaces in (F_9)^n, counted up to coordinate permutation.

The programs for A348107, there is no canonical definition to state claims against.
-/

/-! ## A348107.P14480563121594664885

`A003963(A097550(∑[n]))`
-/

namespace A348107.P14480563121594664885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A097550 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A348107.P14480563121594664885

/-!
# A348109: Lexicographically earliest sequence S of distinct positive terms such that the first n digits of a(n)*a(n+1) are the first n digits of S.

The programs for A348109, there is no canonical definition to state claims against.
-/

/-! ## A348109.P11409633446678919595

`A278038(record[Δ[A334291(n)]])`
-/

namespace A348109.P11409633446678919595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334291 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348109.P11409633446678919595

/-! ## A348109.P46596122295729832

`A007088(lt[A103324(2*(n+2)), 8])`
-/

namespace A348109.P46596122295729832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103324 (2 * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A348109.P46596122295729832

/-!
# A348110: Number of positive integers <= n that have middle divisors.

The programs for A348110, the canonical program `A348110.P12801139591298659931` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348110 has offset 1).

The definition of A348110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348110.P7510623602396931554

`∑[A347950(n+1)]`
-/

namespace A348110.P7510623602396931554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348110.P7510623602396931554

namespace A348110

/-- `∑[A347950(n+1)]` -/
def P7510623602396931554.Spec : Prop :=
  ∀ n, P7510623602396931554.a n = A348110 (n + 1)

end A348110

/-! ## A348110.P15714440742260343275

`∑[log2(A348364(n+1))]`
-/

namespace A348110.P15714440742260343275
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A348364 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348110.P15714440742260343275

namespace A348110

/-- `∑[log2(A348364(n+1))]` -/
def P15714440742260343275.Spec : Prop :=
  ∀ n, P15714440742260343275.a n = (A348110 (n + 1) : ℝ)

end A348110

/-! ## A348110.P12801139591298659931

`∑[char[A100345(n)-1]]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A348110

/-- `∑[char[A100345(n)-1]]` -/
def P12801139591298659931.Spec : Prop :=
  ∀ n, (P12801139591298659931.a n : ℤ) = A348110 (n + 1)

theorem P12801139591298659931.correct : P12801139591298659931.Spec := by
  intro n
  simp only [A348110, Nat.add_sub_cancel]

end A348110

/-! ## A348110.P11232267175955396225

`∑[1-A348327(n+1)]`
-/

namespace A348110.P11232267175955396225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A348327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348110.P11232267175955396225

namespace A348110

/-- `∑[1-A348327(n+1)]` -/
def P11232267175955396225.Spec : Prop :=
  ∀ n, P11232267175955396225.a n = A348110 (n + 1)

end A348110

/-! ## A348110.P12380596274115995280

`∑[A237271(n+1)%2]`
-/

namespace A348110.P12380596274115995280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237271 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348110.P12380596274115995280

namespace A348110

/-- `∑[A237271(n+1)%2]` -/
def P12380596274115995280.Spec : Prop :=
  ∀ n, P12380596274115995280.a n = A348110 (n + 1)

end A348110

/-! ## A348110.P3446158466661569195

`1-A348336(n+1)+n`
-/

namespace A348110.P3446158466661569195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A348336 (n + 1) + (n : ℤ)

end

end A348110.P3446158466661569195

namespace A348110

/-- `1-A348336(n+1)+n` -/
def P3446158466661569195.Spec : Prop :=
  ∀ n, P3446158466661569195.a n = A348110 (n + 1)

end A348110

/-!
# A348111: Numbers k whose binary expansion starts with the concatenation of the binary expansions of the run lengths in binary expansion of k.

The programs for A348111, there is no canonical definition to state claims against.
-/

/-! ## A348111.P11615143321655179224

`7*A280638(a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A348111.P11615143321655179224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  7 * A280638 (a (n - 1)).toNat

end

end A348111.P11615143321655179224

/-! ## A348111.P8591401150084176127

`14*A279069(a(n-1))/2` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A348111.P8591401150084176127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 7] fun n a =>
  14 * ((A279069 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / 2)

end

end A348111.P8591401150084176127

/-!
# A348113: Irregular triangle read by rows: T(n, k) is the number of chains of subspaces 0 < V_1 < ... < V_r = (F_2)^n, counted up to coordinate permutation, with dimension increments given by (any fixed permutation of) the parts of the k-th partition of n in Abramowitz-Stegun order.

The programs for A348113, there is no canonical definition to state claims against.
-/

/-! ## A348113.P14637786191067831246

`A354581(A036038(n+1)%A173481(n+1))`
-/

namespace A348113.P14637786191067831246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354581 (Int.tmod (A036038 (n + 1)) (A173481 (n + 1))).toNat

end

end A348113.P14637786191067831246

/-! ## A348113.P2554199626892571113

`A344742(A036038(n+1)*A367764(n+1))`
-/

namespace A348113.P2554199626892571113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344742 (A036038 (n + 1) * A367764 (n + 1)).toNat

end

end A348113.P2554199626892571113

/-! ## A348113.P13954415181962373166

`A344742(A036038(n+1)^A367764(n+1))`
-/

namespace A348113.P13954415181962373166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344742 (SequenceMachineLib.roundAway ((A036038 (n + 1) : ℚ) ^ (A367764 (n + 1) : ℤ))).toNat

end

end A348113.P13954415181962373166

/-! ## A348113.P14174599975447629966

`A122132(A036038(n+1))%A093683(n+1)`
-/

namespace A348113.P14174599975447629966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122132 (A036038 (n + 1)).toNat) (A093683 (n + 1))

end

end A348113.P14174599975447629966

/-! ## A348113.P16296833329700992791

`A004709(A210237(n+1)%A050281(n+1))`
-/

namespace A348113.P16296833329700992791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (Int.tmod (A210237 (n + 1)) (A050281 (n + 1))).toNat

end

end A348113.P16296833329700992791

/-!
# A348115: Irregular triangle read by rows: T(n, k) is the number of chains of subspaces 0 < V_1 < ... < V_r = (F_4)^n, counted up to coordinate permutation, with dimension increments given by (any fixed permutation of) the parts of the k-th partition of n in Abramowitz-Stegun order.

The programs for A348115, there is no canonical definition to state claims against.
-/

/-! ## A348115.P8026282304297577006

`A106649(A213043(n)^A082859(n))`
-/

namespace A348115.P8026282304297577006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106649 (SequenceMachineLib.roundAway ((A213043 n : ℚ) ^ (A082859 n : ℤ))).toNat

end

end A348115.P8026282304297577006

/-! ## A348115.P8513281350328800875

`A282865(A100235(n))%A134334(n+1)`
-/

namespace A348115.P8513281350328800875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282865 (A100235 n).toNat) (A134334 (n + 1))

end

end A348115.P8513281350328800875

/-! ## A348115.P7563311056895228746

`A322200(C(A084489(3*n+2), A002262(n)))`
-/

namespace A348115.P7563311056895228746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322200 (Nat.choose (A084489 (3 * n + 2)).toNat (A002262 n).toNat)

end

end A348115.P7563311056895228746

/-!
# A348116: a(n) is the number of (strict) chains of subspaces with ends 0 and (F_2)^n, counted up to coordinate permutation.

The programs for A348116, there is no canonical definition to state claims against.
-/

/-! ## A348116.P17123960524563995987

`A326536(n!)+∑[(n+1)^n]-1`
-/

namespace A348116.P17123960524563995987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326536 (Nat.factorial n) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A348116.P17123960524563995987

/-!
# A348117: a(n) is the number of (strict) chains of subspaces with ends 0 and (F_3)^n, counted up to coordinate permutation.

The programs for A348117, there is no canonical definition to state claims against.
-/

/-! ## A348117.P4233137472701568336

`A285419(A102895(n))/A140998(n)`
-/

namespace A348117.P4233137472701568336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285419 (A102895 n).toNat : ℚ) / (A140998 n : ℚ)

end

end A348117.P4233137472701568336

/-!
# A348119: Numbers k such that k and k+1 are both numbers whose powerful part is larger than their powerfree part (A328014).

The programs for A348119, the canonical program `A348119.P17000233484595236640` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348119 has offset 1).

The definition of A348119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348119.P17000233484595236640

`∩[A328014(n+1)-1, A328014(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A348119

/-- `∩[A328014(n+1)-1, A328014(n+1)]` -/
def P17000233484595236640.Spec : Prop :=
  ∀ n, (P17000233484595236640.a n : ℤ) = A348119 (n + 1)

theorem P17000233484595236640.correct : P17000233484595236640.Spec := by
  intro n
  simp only [A348119, Nat.add_sub_cancel]

end A348119

/-! ## A348119.P3012910656763998466

`∩[A328014(n+1), A023443(A328014(n+1))]`
-/

namespace A348119.P3012910656763998466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A328014 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348119.P3012910656763998466

namespace A348119

/-- `∩[A328014(n+1), A023443(A328014(n+1))]` -/
def P3012910656763998466.Spec : Prop :=
  ∀ n, (P3012910656763998466.a n : ℤ) = A348119 (n + 1)

end A348119

/-! ## A348119.P18120624339479082478

`A355433(lt[A355383(n), A355303(n+1)])`
-/

namespace A348119.P18120624339479082478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355433 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348119.P18120624339479082478

namespace A348119

/-- `A355433(lt[A355383(n), A355303(n+1)])` -/
def P18120624339479082478.Spec : Prop :=
  ∀ n, P18120624339479082478.a n = A348119 (n + 1)

end A348119

/-!
# A348120: Starts of runs of 3 consecutive numbers whose powerful part is larger than their powerfree part (A328014).

The programs for A348120, there is no canonical definition to state claims against.
-/

/-! ## A348120.P1493543633829789637

`∩[A348119(n+1)-1, A348119(n+1)]`
-/

namespace A348120.P1493543633829789637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348119 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348120.P1493543633829789637

/-!
# A348121: Numbers having more nonunitary than unitary prime divisors.

The programs for A348121, the canonical program `A348121.P4983876733815640948` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348121 has offset 1).

The definition of A348121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348121.P4983876733815640948

`lt[A056169(n+1), A056170(n+1)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A348121

/-- `lt[A056169(n+1), A056170(n+1)]+1` -/
def P4983876733815640948.Spec : Prop :=
  ∀ n, (P4983876733815640948.a n : ℤ) = A348121 (n + 1)

theorem P4983876733815640948.correct : P4983876733815640948.Spec := by
  intro n
  simp only [A348121, Nat.add_sub_cancel]

end A348121

/-! ## A348121.P14999081984085818728

`A020725(lt[A056169(n+1), A056170(n+1)])`
-/

namespace A348121.P14999081984085818728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348121.P14999081984085818728

namespace A348121

/-- `A020725(lt[A056169(n+1), A056170(n+1)])` -/
def P14999081984085818728.Spec : Prop :=
  ∀ n, P14999081984085818728.a n = A348121 (n + 1)

end A348121

/-! ## A348121.P7212226354074405474

`A113484(lt[A062977(n+1), A183094(n+1)])`
-/

namespace A348121.P7212226354074405474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348121.P7212226354074405474

namespace A348121

/-- `A113484(lt[A062977(n+1), A183094(n+1)])` -/
def P7212226354074405474.Spec : Prop :=
  ∀ n, P7212226354074405474.a n = A348121 (n + 1)

end A348121

/-! ## A348121.P9199963073243502522

`A233583(lt[A062977(n+1), A183094(n+1)]+1)+1`
-/

namespace A348121.P9199963073243502522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) + 1

end

end A348121.P9199963073243502522

namespace A348121

/-- `A233583(lt[A062977(n+1), A183094(n+1)]+1)+1` -/
def P9199963073243502522.Spec : Prop :=
  ∀ n, P9199963073243502522.a n = A348121 (n + 1)

end A348121

/-! ## A348121.P5471073813214840679

`lt[A062977((n+1)²), A183094(n+1)]+1`
-/

namespace A348121.P5471073813214840679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 ((n + 1) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A348121.P5471073813214840679

namespace A348121

/-- `lt[A062977((n+1)²), A183094(n+1)]+1` -/
def P5471073813214840679.Spec : Prop :=
  ∀ n, (P5471073813214840679.a n : ℤ) = A348121 (n + 1)

end A348121

/-!
# A348122: Numbers k such that k and k+1 both have more nonunitary than unitary prime divisors (A348121).

The programs for A348122, the canonical program `A348122.P4903118865110952081` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348122 has offset 1).

The definition of A348122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348122.P4903118865110952081

`∩[A348121(n+1)-1, A348121(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A348122

/-- `∩[A348121(n+1)-1, A348121(n+1)]` -/
def P4903118865110952081.Spec : Prop :=
  ∀ n, (P4903118865110952081.a n : ℤ) = A348122 (n + 1)

theorem P4903118865110952081.correct : P4903118865110952081.Spec := by
  intro n
  simp only [A348122, Nat.add_sub_cancel]

end A348122

/-! ## A348122.P1383439574131807289

`∩[A348121(n+1), A023443(A348121(n+1))]`
-/

namespace A348122.P1383439574131807289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A348121 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348122.P1383439574131807289

namespace A348122

/-- `∩[A348121(n+1), A023443(A348121(n+1))]` -/
def P1383439574131807289.Spec : Prop :=
  ∀ n, (P1383439574131807289.a n : ℤ) = A348122 (n + 1)

end A348122

/-!
# A348123: Starts of runs of 3 consecutive numbers that have more nonunitary than unitary prime divisors (A348121).

The programs for A348123, there is no canonical definition to state claims against.
-/

/-! ## A348123.P3925946866275068182

`∩[A348122(n+1)-1, A348122(n+1)]`
-/

namespace A348123.P3925946866275068182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348122 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348123.P3925946866275068182

/-!
# A348124: Number of compositions of n where the smallest part is smaller than the number of parts.

The programs for A348124, there is no canonical definition to state claims against.
-/

/-! ## A348124.P17064049427607581652

`2^n-A098131(n+1)`
-/

namespace A348124.P17064049427607581652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A098131 (n + 1)

end

end A348124.P17064049427607581652

/-! ## A348124.P17760114747990296121

`A000079(n)-(A098133(n+1)+A098132(n+1))`
-/

namespace A348124.P17760114747990296121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A098133 (n + 1) + A098132 (n + 1))

end

end A348124.P17760114747990296121

/-! ## A348124.P1825342949206842477

`A011782(n+1)-(A098133(n+1)+A098132(n+1))`
-/

namespace A348124.P1825342949206842477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - (A098133 (n + 1) + A098132 (n + 1))

end

end A348124.P1825342949206842477

/-! ## A348124.P8994142408991108952

`Δ[2^n-∑[A098131(n)]]`
-/

namespace A348124.P8994142408991108952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098131 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348124.P8994142408991108952

/-! ## A348124.P15032518044527557187

`A000225(n+1)-(A098131(n+1)+A000225(n))`
-/

namespace A348124.P15032518044527557187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - (A098131 (n + 1) + A000225 n)

end

end A348124.P15032518044527557187

/-!
# A348125: Number of compositions of n where the largest part is larger than the number of parts.

The programs for A348125, there is no canonical definition to state claims against.
-/

/-! ## A348125.P10648011112977913330

`2^n-A077229(n+1)`
-/

namespace A348125.P10648011112977913330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A077229 (n + 1)

end

end A348125.P10648011112977913330

/-! ## A348125.P16376763692928900694

`Δ[2^n-∑[A077229(n)]]`
-/

namespace A348125.P16376763692928900694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077229 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348125.P16376763692928900694

/-! ## A348125.P8533255810463938877

`Δ[A000079(n)%∑[A077229(n)]]`
-/

namespace A348125.P8533255810463938877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077229 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348125.P8533255810463938877

/-! ## A348125.P690719318671656053

`abs(A077229(n+1)-A000079(n))`
-/

namespace A348125.P690719318671656053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077229 (n + 1) - A000079 n|

end

end A348125.P690719318671656053

/-! ## A348125.P6512565173960016451

`and(-A077229(n+1), A000225(n))`
-/

namespace A348125.P6512565173960016451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A077229 (n + 1)) (A000225 n)

end

end A348125.P6512565173960016451

/-!
# A348126: a(n) is the least k for which x(k) > Sum_{j=1..k} 1/j, where x(k) is the Newton iterate (starting from x(1)=1) for exp(-P(n,x)) and P(n,x) is the n-th Maclaurin polynomial for exp(x).

The programs for A348126, there is no canonical definition to state claims against.
-/

/-! ## A348126.P7025544063541065862

`A088931(A026403(n+2))`
-/

namespace A348126.P7025544063541065862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088931 (A026403 (n + 2)).toNat

end

end A348126.P7025544063541065862

/-! ## A348126.P2687180456388643075

`A347655(A001105(n))+A152271(n)`
-/

namespace A348126.P2687180456388643075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 (A001105 n).toNat + A152271 n

end

end A348126.P2687180456388643075

/-!
# A348128: Product_{n>=1} (1 + a(n)*x^n) = 1 + Sum_{n>=1} x^prime(n).

The programs for A348128, there is no canonical definition to state claims against.
-/

/-! ## A348128.P10983455537502190844

`A328777(n+1)+A144598(A288324(n))`
-/

namespace A348128.P10983455537502190844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328777 (n + 1) + A144598 (A288324 n).toNat

end

end A348128.P10983455537502190844

/-! ## A348128.P11333378726641674352

`xor(A326291(A108917(n)), A328777(n+1))`
-/

namespace A348128.P11333378726641674352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A326291 (A108917 n).toNat) (A328777 (n + 1))

end

end A348128.P11333378726641674352

/-! ## A348128.P4012076890064885638

`A328777(n+1)+A277165(A134848(n+1))`
-/

namespace A348128.P4012076890064885638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328777 (n + 1) + A277165 (A134848 (n + 1)).toNat

end

end A348128.P4012076890064885638

/-! ## A348128.P16720579593434734504

`A277165(n)+A328777(n+1)+A326291(A108917(n))/3`
-/

namespace A348128.P16720579593434734504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277165 n : ℚ) + ((A328777 (n + 1) : ℚ) + (A326291 (A108917 n).toNat : ℚ) / 3)

end

end A348128.P16720579593434734504

/-! ## A348128.P8419596893069454828

`(A328777(n+1)+A326291(A108917(n))/3)%A007441(n)`
-/

namespace A348128.P8419596893069454828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A328777 (n + 1) : ℚ) + (A326291 (A108917 n).toNat : ℚ) / 3)) (A007441 n)

end

end A348128.P8419596893069454828

/-!
# A348130: Number of ways to place n nonattacking queens on a 2n X 2n board.

The programs for A348130, there is no canonical definition to state claims against.
-/

/-! ## A348130.P3504947649351402158

`A348129(∑[4*n])`
-/

namespace A348130.P3504947649351402158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348129 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A348130.P3504947649351402158

/-! ## A348130.P14751907818538170750

`record[A348129(A297331(n))]`
-/

namespace A348130.P14751907818538170750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348129 (A297331 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348130.P14751907818538170750

/-!
# A348131: a(n) is the numerator of the relativistic sum of n velocities of 1/n, in units where the speed of light is 1.

The programs for A348131, there is no canonical definition to state claims against.
-/

/-! ## A348131.P242400822179315514

`A006519(A111535(n+1))*A111539(n)`
-/

namespace A348131.P242400822179315514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A111535 (n + 1)).toNat * A111539 n

end

end A348131.P242400822179315514

/-!
# A348132: a(n) is the denominator of the relativistic sum of n velocities of 1/n, in units where the speed of light is 1.

The programs for A348132, there is no canonical definition to state claims against.
-/

/-! ## A348132.P7340974914353898331

`A000265(A062024(n+1))`
-/

namespace A348132.P7340974914353898331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A062024 (n + 1)).toNat

end

end A348132.P7340974914353898331

/-!
# A348134: Number of ways two L-tiles (with rotation) can be placed on an n X n square.

The programs for A348134, there is no canonical definition to state claims against.
-/

/-! ## A348134.P2899428057608759375

`A066417(A099364(n)+A045680(3*n+1))`
-/

namespace A348134.P2899428057608759375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (A099364 n + A045680 (3 * n + 1)).toNat

end

end A348134.P2899428057608759375

/-!
# A348135: Irregular triangle T(n, k), n > 0, k = 1..A067399(n), read by rows; the n-th row gives, in ascending order, the distinct integers k such that A067138(k, m) = n for some m.

The programs for A348135, there is no canonical definition to state claims against.
-/

/-! ## A348135.P15593108931035853334

`A165416(∑[A321125(A063866(n))])`
-/

namespace A348135.P15593108931035853334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321125 (A063866 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165416 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348135.P15593108931035853334

/-! ## A348135.P1661995843279585399

`A165416(A335235(n+1)%A335231(3*n+5))`
-/

namespace A348135.P1661995843279585399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165416 (Int.tmod (A335235 (n + 1)) (A335231 (3 * n + 5))).toNat

end

end A348135.P1661995843279585399

/-! ## A348135.P1384503575218362982

`A165416(A245794(n)+1+n)`
-/

namespace A348135.P1384503575218362982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165416 (A245794 n + 1 + (n : ℤ)).toNat

end

end A348135.P1384503575218362982

/-! ## A348135.P17822115196884609225

`A165416(A067251(n+1))^∑[A015161(n)]`
-/

namespace A348135.P17822115196884609225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165416 (A067251 (n + 1)).toNat : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A348135.P17822115196884609225

/-!
# A348136: Irregular triangle read by rows T(n,k) in which row n lists the first digit of every term of the trajectory of n in Collatz problem including the trajectory [1, 4, 2, 1] for n = 1.

The programs for A348136, there is no canonical definition to state claims against.
-/

/-! ## A348136.P8167361060463696093

`A000030(A235795(n+1))`
-/

namespace A348136.P8167361060463696093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A235795 (n + 1)).toNat

end

end A348136.P8167361060463696093

/-! ## A348136.P18441751008756354377

`A179635(A235795(n+1)^A178334(n))`
-/

namespace A348136.P18441751008756354377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179635 (SequenceMachineLib.roundAway ((A235795 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A348136.P18441751008756354377

/-! ## A348136.P5482811474366388714

`A179635(A235795(n+1)%A004767(n))`
-/

namespace A348136.P5482811474366388714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179635 (Int.tmod (A235795 (n + 1)) (A004767 n)).toNat

end

end A348136.P5482811474366388714

/-! ## A348136.P7468725130925408036

`A179635(or(A000007(n), A235795(n+1)))`
-/

namespace A348136.P7468725130925408036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179635 (Int.lor (A000007 n) (A235795 (n + 1))).toNat

end

end A348136.P7468725130925408036

/-! ## A348136.P16323072811756322655

`A000030(A245943(n+1)-2)`
-/

namespace A348136.P16323072811756322655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A245943 (n + 1) - 2).toNat

end

end A348136.P16323072811756322655

/-! ## A348136.P15539652441431791488

`A179635(A245943(n+1)-2)`
-/

namespace A348136.P15539652441431791488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179635 (A245943 (n + 1) - 2).toNat

end

end A348136.P15539652441431791488

/-!
# A348137: Number of transitive relations involving all the elements of an n-set.

The programs for A348137, there is no canonical definition to state claims against.
-/

/-! ## A348137.P2773002991858479900

`A047974(n)+A011371(A365340(n))`
-/

namespace A348137.P2773002991858479900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047974 n + A011371 (A365340 n).toNat

end

end A348137.P2773002991858479900

/-!
# A348139: Three-digit numbers abc such that the quadratic equation ax^2 + bx + c = 0 has a rational root.

The programs for A348139, there is no canonical definition to state claims against.
-/

/-! ## A348139.P5892195315440685230

`∩[A033828(n+1), A380818(n+1)]`
-/

namespace A348139.P5892195315440685230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348139.P5892195315440685230

/-!
# A348140: a(n) is the numerator of tan(n * arctan(1/n)).

The programs for A348140, there is no canonical definition to state claims against.
-/

/-! ## A348140.P10269228346711898525

`A022998(n)+A018604(A018594(n+1))`
-/

namespace A348140.P10269228346711898525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n + A018604 (A018594 (n + 1)).toNat

end

end A348140.P10269228346711898525

/-!
# A348141: a(n) is the denominator of tan(n * arctan(1/n)).

The programs for A348141, there is no canonical definition to state claims against.
-/

/-! ## A348141.P526941312961522249

`A132286(A290194(n))`
-/

namespace A348141.P526941312961522249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132286 (A290194 n).toNat

end

end A348141.P526941312961522249

/-!
# A348144: 

The programs for A348144, there is no canonical definition to state claims against.
-/

/-! ## A348144.P4408731675675182363

`∑{d}[n+1, (n+1)^(#*(n+1))]`
-/

namespace A348144.P4408731675675182363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) ^ (d * (n + 1))

end

end A348144.P4408731675675182363

/-!
# A348145: a(n) = Sum_{d|n} (n-d) * d!.

The programs for A348145, there is no canonical definition to state claims against.
-/

/-! ## A348145.P15842999957555941472

`∑{d}[n+1, (n+1-#)*#!]`
-/

namespace A348145.P15842999957555941472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℤ) - (d : ℤ)) * (Nat.factorial d : ℤ)

end

end A348145.P15842999957555941472

/-! ## A348145.P11999397073537661857

`∑{d}[n+1, (n+1-#)*A000142(#)]`
-/

namespace A348145.P11999397073537661857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℤ) - (d : ℤ)) * A000142 d

end

end A348145.P11999397073537661857

/-! ## A348145.P13992562211432998874

`A091136(n)-A091136(A006983(3*n+2))`
-/

namespace A348145.P13992562211432998874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091136 n - A091136 (A006983 (3 * n + 2)).toNat

end

end A348145.P13992562211432998874

/-!
# A348146: a(n) = Sum_{d|n} (d!)^(n-d).

The programs for A348146, there is no canonical definition to state claims against.
-/

/-! ## A348146.P14925370000215899387

`∑{d}[n+1, #!^(n+1-#)]`
-/

namespace A348146.P14925370000215899387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.factorial d : ℚ) ^ ((n + 1 : ℤ) - (d : ℤ) : ℤ)

end

end A348146.P14925370000215899387

/-! ## A348146.P574737691973748840

`A001611(A178218(abs(a(n-1)-1-n)))` with `a(0)=1`
-/

namespace A348146.P574737691973748840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001611 (A178218 |a (n - 1) - 1 - (n : ℤ)|.toNat).toNat

end

end A348146.P574737691973748840

/-!
# A348148: Numbers k for which sigma(k)/k = 32/9.

The programs for A348148, there is no canonical definition to state claims against.
-/

/-! ## A348148.P4197559873208120129

`A218416(n+2)`
-/

namespace A348148.P4197559873208120129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218416 (n + 2)

end

end A348148.P4197559873208120129

/-! ## A348148.P8534974229507102638

`record[A218416(∑[2-and(3, n)])]`
-/

namespace A348148.P8534974229507102638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218416 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348148.P8534974229507102638

/-! ## A348148.P17792796649794415805

`A211679(lt[A211651(n), A131665(n)])`
-/

namespace A348148.P17792796649794415805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211651 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211679 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348148.P17792796649794415805

/-! ## A348148.P4511479953452546058

`A211679(lt[A211653(n), A131665(n)])`
-/

namespace A348148.P4511479953452546058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211679 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348148.P4511479953452546058

/-!
# A348149: Variation of the Barnyard sequence A347581: a(n) is the minimum number of unit-length line segments required to enclose areas of 1 through n on a square grid when the number of segments is minimized as each area of incrementing size, starting at 1, is added.

The programs for A348149, there is no canonical definition to state claims against.
-/

/-! ## A348149.P15211466261859804130

`floor(∑[4*(n+1)/a(n-1)+3])` with `a(0)=4`
-/

namespace A348149.P15211466261859804130
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f1 =>
  4 * ((n + 1 : ℚ) / f1 (n - 1)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A348149.P15211466261859804130

/-! ## A348149.P4703982563654854575

`∑[floor(a(n-2)+7/a(n-1))]` with `a(0)=4, a(1)=5`
-/

namespace A348149.P4703982563654854575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  ⌊(f1 (n - 2) : ℚ) + 7 / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348149.P4703982563654854575

/-! ## A348149.P11535016010856527760

`∑[A339362(n+2)]`
-/

namespace A348149.P11535016010856527760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339362 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348149.P11535016010856527760

/-! ## A348149.P13185292209122748146

`∑[A140828(n)+3]`
-/

namespace A348149.P13185292209122748146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140828 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348149.P13185292209122748146

/-! ## A348149.P18405346885299100180

`ceil(sqrt(15*A008778(n)))`
-/

namespace A348149.P18405346885299100180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (15 * A008778 n : ℝ)⌉

end

end A348149.P18405346885299100180

/-!
# A348150: a(n) is the smallest Niven (or Harshad) number with exactly n digits and not containing the digit 0.

The programs for A348150, there is no canonical definition to state claims against.
-/

/-! ## A348150.P15743735656473086292

`A348317(n+1)+record[A287468(n)]`
-/

namespace A348150.P15743735656473086292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348317 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348150.P15743735656473086292

/-! ## A348150.P17915875247838739907

`A348317(n+1)+A000042(n+1)`
-/

namespace A348150.P17915875247838739907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348317 (n + 1) + A000042 (n + 1)

end

end A348150.P17915875247838739907

/-! ## A348150.P7823642871816201905

`A348317(n+1)+A002275(n+1)`
-/

namespace A348150.P7823642871816201905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348317 (n + 1) + A002275 (n + 1)

end

end A348150.P7823642871816201905

/-! ## A348150.P10167927477234962795

`A348317(n+1)+A287468(2*n)`
-/

namespace A348150.P10167927477234962795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348317 (n + 1) + A287468 (2 * n)

end

end A348150.P10167927477234962795

/-! ## A348150.P9218810168257860703

`A348317(n+1)+∑[A017934(2*n)]`
-/

namespace A348150.P9218810168257860703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348317 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348150.P9218810168257860703

/-!
# A348151: First differences of A006905.

The programs for A348151, there is no canonical definition to state claims against.
-/

/-! ## A348151.P10657681955541026154

`Δ[A006905(n)]`
-/

namespace A348151.P10657681955541026154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348151.P10657681955541026154

/-! ## A348151.P9356874073051034636

`A006905(n+1)-A006905(n)`
-/

namespace A348151.P9356874073051034636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 (n + 1) - A006905 n

end

end A348151.P9356874073051034636

/-! ## A348151.P5037508884160063981

`Δ[A345317(n)+record[A095149(n)]]`
-/

namespace A348151.P5037508884160063981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345317 n + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348151.P5037508884160063981

/-! ## A348151.P16653498999994088756

`Δ[A345317(n)+record[A186020(n)]]`
-/

namespace A348151.P16653498999994088756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345317 n + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348151.P16653498999994088756

/-! ## A348151.P5755543911959518740

`Δ[A345317(n)+A000110(n+1)]`
-/

namespace A348151.P5755543911959518740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345317 n + A000110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348151.P5755543911959518740

/-!
# A348152: Hyperpalindions (palindromes in A093036).

The programs for A348152, there is no canonical definition to state claims against.
-/

/-! ## A348152.P8849035009391110342

`xor(10, (n-3)^n)*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A348152.P8849035009391110342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 6] fun n a =>
  Int.xor 10 (((n : ℤ) - 3) ^ n) * a (n - 1)

end

end A348152.P8849035009391110342

/-!
# A348154: Number of inequivalent strip arrangements.

The programs for A348154, there is no canonical definition to state claims against.
-/

/-! ## A348154.P3544519509193840468

`floor(A228766(3*n+7)/A009965(n))`
-/

namespace A348154.P3544519509193840468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A228766 (3 * n + 7) : ℚ) / (A009965 n : ℚ)⌋

end

end A348154.P3544519509193840468

/-!
# A348155: a(n) = tau(n)^2 + omega(n)*(sigma(n) - tau(n)).

The programs for A348155, the canonical program `A348155.P18262627327262397184` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348155 has offset 1).

The definition of A348155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348155.P18262627327262397184

`A064840(n+1)-A033273(n+1)*A065608(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A348155

/-- `A064840(n+1)-A033273(n+1)*A065608(n+1)` -/
def P18262627327262397184.Spec : Prop :=
  ∀ n, P18262627327262397184.a n = A348155 (n + 1)

theorem P18262627327262397184.correct : P18262627327262397184.Spec := by
  intro n
  simp only [A348155, Nat.add_sub_cancel]

end A348155

/-!
# A348156: S_3-primes: let S_3 = {1,4,7,...,3i+1,...}; then an S_3-prime is in S_3 but is not divisible by any elements of S_3 except for itself and 1.

The programs for A348156, there is no canonical definition to state claims against.
-/

/-! ## A348156.P9849718704212656516

`eq[2, A319444(n+4)]+4`
-/

namespace A348156.P9849718704212656516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319444 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4

end

end A348156.P9849718704212656516

/-! ## A348156.P6703482485112056961

`eq[n+2, A078181(n+1)]+1`
-/

namespace A348156.P6703482485112056961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348156.P6703482485112056961

/-! ## A348156.P18164823481373765740

`eq[n+2, A326399(n+1)]+1`
-/

namespace A348156.P18164823481373765740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348156.P18164823481373765740

/-! ## A348156.P12840800666964879882

`eq[A320011(n+1)+1, gcd(3, n)]+1`
-/

namespace A348156.P12840800666964879882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320011 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A348156.P12840800666964879882

/-! ## A348156.P4365657685968210952

`eq[A122434(n), A261029(n)]`
-/

namespace A348156.P4365657685968210952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122434 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348156.P4365657685968210952

/-! ## A348156.P3587810493969112256

`eq[n+1, A078181(A168103(n))]`
-/

namespace A348156.P3587810493969112256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (A168103 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348156.P3587810493969112256

/-! ## A348156.P9567088333328893005

`eq[n+1, A293897(A008486(n))]`
-/

namespace A348156.P9567088333328893005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293897 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348156.P9567088333328893005

/-! ## A348156.P6634947670529745761

`eq[dr(A033627(n+1)), A261029(n)]`
-/

namespace A348156.P6634947670529745761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033627 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348156.P6634947670529745761

/-! ## A348156.P13278932158909889042

`eq[A079978(n), A293895(n+1)]+1`
-/

namespace A348156.P13278932158909889042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348156.P13278932158909889042

/-! ## A348156.P16359367330737387347

`A020725(eq[n+2, A078181(n+1)])`
-/

namespace A348156.P16359367330737387347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A348156.P16359367330737387347

/-!
# A348157: Table read by antidiagonals: T(n,k) = number of factorizations of (n,k) into one or two pairs (i,j) with i > 0, j > 0 (and if i=1 then j=1).

The programs for A348157, there is no canonical definition to state claims against.
-/

/-! ## A348157.P16469919025492406630

`A108455(n+1)-A277165(A277198(n))`
-/

namespace A348157.P16469919025492406630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108455 (n + 1) - A277165 (A277198 n).toNat

end

end A348157.P16469919025492406630

/-!
# A348158: a(n) is the sum of the distinct values obtained when the Euler totient function is applied to the divisors of n.

The programs for A348158, there is no canonical definition to state claims against.
-/

/-! ## A348158.P9064132128039746891

`A348215(n+1)+(n+1)*A324917(A348215(n+1)+1)`
-/

namespace A348158.P9064132128039746891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348215 (n + 1) + (n + 1 : ℤ) * A324917 (A348215 (n + 1) + 1).toNat

end

end A348158.P9064132128039746891

/-! ## A348158.P10771309195642033889

`A118759(A348215(n+1)+A193356(n+1))`
-/

namespace A348158.P10771309195642033889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A348215 (n + 1) + A193356 (n + 1)).toNat

end

end A348158.P10771309195642033889

/-! ## A348158.P2221543680462719531

`A003986(A093005(n+1)%A374761(2*(n+2)))`
-/

namespace A348158.P2221543680462719531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (Int.tmod (A093005 (n + 1)) (A374761 (2 * (n + 2)))).toNat

end

end A348158.P2221543680462719531

/-! ## A348158.P11139333846939391062

`or(A328479(A320112(n+1)), A375126(n))`
-/

namespace A348158.P11139333846939391062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A328479 (A320112 (n + 1)).toNat) (A375126 n)

end

end A348158.P11139333846939391062

/-! ## A348158.P15690055154656432694

`or(A135539(A155167(2*n+1)), A375126(n))`
-/

namespace A348158.P15690055154656432694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135539 (A155167 (2 * n + 1)).toNat) (A375126 n)

end

end A348158.P15690055154656432694

/-!
# A348160: Odd numbers not appearing in A348158.

The programs for A348160, there is no canonical definition to state claims against.
-/

/-! ## A348160.P5232196492573615024

`A359563(A032741(A348199(A348004(n+2))))`
-/

namespace A348160.P5232196492573615024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359563 (A032741 (A348199 (A348004 (n + 2)).toNat).toNat).toNat

end

end A348160.P5232196492573615024

/-!
# A348161: Number of factorizations of (n,n) into one or two pairs (i,j) with i > 0, j > 0 (and if i=1 then j=1).

The programs for A348161, the canonical program `A348161.P8282954228235957637` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348161 has offset 1).

The definition of A348161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348161.P1593418890792682185

`A008619(∑{d}[n+1, floor(atan(#))]²)`
-/

namespace A348161.P1593418890792682185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋) ^ 2).toNat

end

end A348161.P1593418890792682185

namespace A348161

/-- `A008619(∑{d}[n+1, floor(atan(#))]²)` -/
def P1593418890792682185.Spec : Prop :=
  ∀ n, P1593418890792682185.a n = A348161 (n + 1)

end A348161

/-! ## A348161.P10561243779034510834

`A008619(∑{d}[n+1, floor(atan(#))]^2)`
-/

namespace A348161.P10561243779034510834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋) ^ 2).toNat

end

end A348161.P10561243779034510834

namespace A348161

/-- `A008619(∑{d}[n+1, floor(atan(#))]^2)` -/
def P10561243779034510834.Spec : Prop :=
  ∀ n, P10561243779034510834.a n = A348161 (n + 1)

end A348161

/-! ## A348161.P10422886918899167802

`ceil(((1-Δ[A006218(n)])²+1)/2)`
-/

namespace A348161.P10422886918899167802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 - (f1 (n + 1) - f1 n)) ^ 2 + 1 : ℚ) / 2⌉

end

end A348161.P10422886918899167802

namespace A348161

/-- `ceil(((1-Δ[A006218(n)])²+1)/2)` -/
def P10422886918899167802.Spec : Prop :=
  ∀ n, P10422886918899167802.a n = A348161 (n + 1)

end A348161

/-! ## A348161.P18352661818271797080

`floor((A000005(n+1)-1)²/2)+1`
-/

namespace A348161.P18352661818271797080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000005 (n + 1) - 1) ^ 2 : ℚ) / 2⌋ + 1

end

end A348161.P18352661818271797080

namespace A348161

/-- `floor((A000005(n+1)-1)²/2)+1` -/
def P18352661818271797080.Spec : Prop :=
  ∀ n, P18352661818271797080.a n = A348161 (n + 1)

end A348161

/-! ## A348161.P8282954228235957637

`A002265(2*(∏{e}[n+1, #+1]-1)²)+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A348161

/-- `A002265(2*(∏{e}[n+1, #+1]-1)²)+1` -/
def P8282954228235957637.Spec : Prop :=
  ∀ n, P8282954228235957637.a n = A348161 (n + 1)

theorem P8282954228235957637.correct : P8282954228235957637.Spec := by
  intro n
  simp only [A348161, Nat.add_sub_cancel]

end A348161

/-! ## A348161.P7681639425805335659

`A099392(A000005(n+1))`
-/

namespace A348161.P7681639425805335659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (A000005 (n + 1)).toNat

end

end A348161.P7681639425805335659

namespace A348161

/-- `A099392(A000005(n+1))` -/
def P7681639425805335659.Spec : Prop :=
  ∀ n, P7681639425805335659.a n = A348161 (n + 1)

end A348161

/-! ## A348161.P1718251488256320579

`A008619(A032741(n+1)²)`
-/

namespace A348161.P1718251488256320579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A032741 (n + 1) ^ 2).toNat

end

end A348161.P1718251488256320579

namespace A348161

/-- `A008619(A032741(n+1)²)` -/
def P1718251488256320579.Spec : Prop :=
  ∀ n, P1718251488256320579.a n = A348161 (n + 1)

end A348161

/-! ## A348161.P7414523191064498838

`A004526(A325765(n)²)+1`
-/

namespace A348161.P7414523191064498838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A325765 n ^ 2).toNat + 1

end

end A348161.P7414523191064498838

namespace A348161

/-- `A004526(A325765(n)²)+1` -/
def P7414523191064498838.Spec : Prop :=
  ∀ n, P7414523191064498838.a n = A348161 (n + 1)

end A348161

/-! ## A348161.P3222547995738717491

`A065033(A325765(n)²+1)`
-/

namespace A348161.P3222547995738717491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A325765 n ^ 2 + 1).toNat

end

end A348161.P3222547995738717491

namespace A348161

/-- `A065033(A325765(n)²+1)` -/
def P3222547995738717491.Spec : Prop :=
  ∀ n, P3222547995738717491.a n = A348161 (n + 1)

end A348161

/-! ## A348161.P3937044149453146545

`A099392(A032741(n+1)+1)`
-/

namespace A348161.P3937044149453146545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (A032741 (n + 1) + 1).toNat

end

end A348161.P3937044149453146545

namespace A348161

/-- `A099392(A032741(n+1)+1)` -/
def P3937044149453146545.Spec : Prop :=
  ∀ n, P3937044149453146545.a n = A348161 (n + 1)

end A348161

/-! ## A348161.P8362267302589322803

`A004525(A032741(n+1)²+1)`
-/

namespace A348161.P8362267302589322803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A032741 (n + 1) ^ 2 + 1).toNat

end

end A348161.P8362267302589322803

namespace A348161

/-- `A004525(A032741(n+1)²+1)` -/
def P8362267302589322803.Spec : Prop :=
  ∀ n, P8362267302589322803.a n = A348161 (n + 1)

end A348161

/-! ## A348161.P10994716883778674490

`A004524(A032741(n+1)²)+1`
-/

namespace A348161.P10994716883778674490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A032741 (n + 1) ^ 2).toNat + 1

end

end A348161.P10994716883778674490

namespace A348161

/-- `A004524(A032741(n+1)²)+1` -/
def P10994716883778674490.Spec : Prop :=
  ∀ n, P10994716883778674490.a n = A348161 (n + 1)

end A348161

/-! ## A348161.P6586526402735214402

`A004526(A032741(n+1)²)+1`
-/

namespace A348161.P6586526402735214402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A032741 (n + 1) ^ 2).toNat + 1

end

end A348161.P6586526402735214402

namespace A348161

/-- `A004526(A032741(n+1)²)+1` -/
def P6586526402735214402.Spec : Prop :=
  ∀ n, P6586526402735214402.a n = A348161 (n + 1)

end A348161

/-! ## A348161.P5594203356026725227

`A008619((A070824(n+1)+1)²)`
-/

namespace A348161.P5594203356026725227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((A070824 (n + 1) + 1) ^ 2).toNat

end

end A348161.P5594203356026725227

namespace A348161

/-- `A008619((A070824(n+1)+1)²)` -/
def P5594203356026725227.Spec : Prop :=
  ∀ n, P5594203356026725227.a n = A348161 (n + 1)

end A348161

/-! ## A348161.P8398819825990739555

`A008619((1-A000005(n+1))²)`
-/

namespace A348161.P8398819825990739555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((1 - A000005 (n + 1)) ^ 2).toNat

end

end A348161.P8398819825990739555

namespace A348161

/-- `A008619((1-A000005(n+1))²)` -/
def P8398819825990739555.Spec : Prop :=
  ∀ n, P8398819825990739555.a n = A348161 (n + 1)

end A348161

/-! ## A348161.P7134451761123982572

`A129756((1-A000005(n+1))²)`
-/

namespace A348161.P7134451761123982572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 ((1 - A000005 (n + 1)) ^ 2).toNat

end

end A348161.P7134451761123982572

namespace A348161

/-- `A129756((1-A000005(n+1))²)` -/
def P7134451761123982572.Spec : Prop :=
  ∀ n, P7134451761123982572.a n = A348161 (n + 1)

end A348161

/-! ## A348161.P5829166336411264401

`A008619((A049820(n+1)-n)²)`
-/

namespace A348161.P5829166336411264401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((A049820 (n + 1) - (n : ℤ)) ^ 2).toNat

end

end A348161.P5829166336411264401

namespace A348161

/-- `A008619((A049820(n+1)-n)²)` -/
def P5829166336411264401.Spec : Prop :=
  ∀ n, P5829166336411264401.a n = A348161 (n + 1)

end A348161

/-! ## A348161.P4517043533030909105

`A007590(A000005(n+1)-1)+1`
-/

namespace A348161.P4517043533030909105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A000005 (n + 1) - 1).toNat + 1

end

end A348161.P4517043533030909105

namespace A348161

/-- `A007590(A000005(n+1)-1)+1` -/
def P4517043533030909105.Spec : Prop :=
  ∀ n, P4517043533030909105.a n = A348161 (n + 1)

end A348161

/-! ## A348161.P8849554504388680892

`A008619((A000005(n+1)-1)^2)`
-/

namespace A348161.P8849554504388680892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((A000005 (n + 1) - 1) ^ 2).toNat

end

end A348161.P8849554504388680892

namespace A348161

/-- `A008619((A000005(n+1)-1)^2)` -/
def P8849554504388680892.Spec : Prop :=
  ∀ n, P8849554504388680892.a n = A348161 (n + 1)

end A348161

/-! ## A348161.P3264984842254820636

`or(1, A000982(A000005(n+1)-1))`
-/

namespace A348161.P3264984842254820636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000982 (A000005 (n + 1) - 1).toNat)

end

end A348161.P3264984842254820636

namespace A348161

/-- `or(1, A000982(A000005(n+1)-1))` -/
def P3264984842254820636.Spec : Prop :=
  ∀ n, P3264984842254820636.a n = A348161 (n + 1)

end A348161

/-!
# A348162: a(n) is the previous term in binary with 0's and 1's put alternatingly before each digit, starting with 0.

The programs for A348162, there is no canonical definition to state claims against.
-/

/-! ## A348162.P40509264509593125

`A047240(∏{p}[A249932(n), #])`
-/

namespace A348162.P40509264509593125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047240 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A348162.P40509264509593125

/-!
# A348166: a(n) = abs(A020338(n)-A338754(n)).

The programs for A348166, there is no canonical definition to state claims against.
-/

/-! ## A348166.P17046687278110511288

`A338827(A087019(n+1))-A338827(n+1)`
-/

namespace A348166.P17046687278110511288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 (A087019 (n + 1)).toNat - A338827 (n + 1)

end

end A348166.P17046687278110511288

/-! ## A348166.P13088331735112149664

`5*9*A064834(A020338(n+1))`
-/

namespace A348166.P13088331735112149664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (9 * A064834 (A020338 (n + 1)).toNat)

end

end A348166.P13088331735112149664

/-! ## A348166.P6677251787792765822

`A151949(A056143(n+1))-A151949(n+1)`
-/

namespace A348166.P6677251787792765822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A056143 (n + 1)).toNat - A151949 (n + 1)

end

end A348166.P6677251787792765822

/-! ## A348166.P9458166724594009265

`A151949(n+1)*A373696(n+1)`
-/

namespace A348166.P9458166724594009265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (n + 1) * A373696 (n + 1)

end

end A348166.P9458166724594009265

/-! ## A348166.P12550789784494092522

`10*A151949(A156251(3*n+1))`
-/

namespace A348166.P12550789784494092522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A151949 (A156251 (3 * n + 1)).toNat

end

end A348166.P12550789784494092522

/-!
# A348167: Numbers whose binary representation contains a maximal set of nonconsecutive 1's.

The programs for A348167, there is no canonical definition to state claims against.
-/

/-! ## A348167.P6451005270428525961

`A339597(A086638(n))`
-/

namespace A348167.P6451005270428525961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339597 (A086638 n).toNat

end

end A348167.P6451005270428525961

/-! ## A348167.P6474032881631733331

`A042963(A086638(n)+1)`
-/

namespace A348167.P6474032881631733331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (A086638 n + 1).toNat

end

end A348167.P6474032881631733331

/-! ## A348167.P11650376440196214794

`A047482(A086638(n)+1)`
-/

namespace A348167.P11650376440196214794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047482 (A086638 n + 1).toNat

end

end A348167.P11650376440196214794

/-! ## A348167.P8025040440202881927

`filter[A086638(n), A098725(#)]`
-/

namespace A348167.P8025040440202881927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A348167.P8025040440202881927

/-! ## A348167.P9608373073594097895

`filter[A086638(n), A166486(#)]`
-/

namespace A348167.P9608373073594097895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A348167.P9608373073594097895

/-! ## A348167.P9964767035842725257

`filter[A086638(n+1), A090678(#)]`
-/

namespace A348167.P9964767035842725257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A090678 (f1 j).toNat = 1) n)

end

end A348167.P9964767035842725257

/-! ## A348167.P7016301915726868187

`filter[A086638(n+1), A285960(#)]`
-/

namespace A348167.P7016301915726868187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285960 (f1 j).toNat = 1) n)

end

end A348167.P7016301915726868187

/-! ## A348167.P12935936960615800069

`filter[A086638(n+1), A359832(#)]`
-/

namespace A348167.P12935936960615800069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A348167.P12935936960615800069

/-! ## A348167.P5759015407342400364

`∩[A042968(n+1), A086638(n)]`
-/

namespace A348167.P5759015407342400364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086638 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348167.P5759015407342400364

/-! ## A348167.P7459100363556712532

`∩[A047449(n+1), A086638(n)]`
-/

namespace A348167.P7459100363556712532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086638 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348167.P7459100363556712532

/-!
# A348168: Segment the list of prime numbers into sublists L_1, L_2, ... with L_1 = {2} and L_n = {p_1, p_2, ..., p_a(n)}, where a(n) is the largest m such that for 0 < i < m, p_1 - prevprime(p_1) > p_2 - p_1 >= p_{i+1} - p_i.

The programs for A348168, there is no canonical definition to state claims against.
-/

/-! ## A348168.P1343889777107657481

`Δ[A000720(A362017(n+1))]`
-/

namespace A348168.P1343889777107657481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A362017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348168.P1343889777107657481

/-! ## A348168.P4530490472142649272

`gcd(A122763(n+1), A348178(n+1))`
-/

namespace A348168.P4530490472142649272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122763 (n + 1)) (A348178 (n + 1))

end

end A348168.P4530490472142649272

/-! ## A348168.P11040156186523747043

`gcd(A002326(A000213(n)), A348178(n+1))`
-/

namespace A348168.P11040156186523747043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002326 (A000213 n).toNat) (A348178 (n + 1))

end

end A348168.P11040156186523747043

/-! ## A348168.P5218242805134541803

`gcd(A055265(A348178(n+1)), A184955(n))`
-/

namespace A348168.P5218242805134541803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055265 (A348178 (n + 1)).toNat) (A184955 n)

end

end A348168.P5218242805134541803

/-! ## A348168.P2437755841391936397

`A348178(A187829(n+1)%A001097(n+1))`
-/

namespace A348168.P2437755841391936397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348178 (Int.tmod (A187829 (n + 1)) (A001097 (n + 1))).toNat

end

end A348168.P2437755841391936397

/-!
# A348171: Square array read by upward antidiagonals in which T(w,p) is the smallest number k whose symmetric representation of sigma(k) consists of p parts with maximum width w occurring in at least one of its p parts.

The programs for A348171, there is no canonical definition to state claims against.
-/

/-! ## A348171.P17327560533516811624

`A348142(A270752(n+1)+n)`
-/

namespace A348171.P17327560533516811624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348142 (A270752 (n + 1) + (n : ℤ)).toNat

end

end A348171.P17327560533516811624

/-! ## A348171.P6213632055740307592

`A348142(C(n+1, A063260(n)))`
-/

namespace A348171.P6213632055740307592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348142 (Nat.choose (n + 1) (A063260 n).toNat)

end

end A348171.P6213632055740307592

/-! ## A348171.P5891040328648514205

`A348142(n+1)^A218631(n)!`
-/

namespace A348171.P5891040328648514205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348142 (n + 1) ^ Nat.factorial (A218631 n).toNat

end

end A348171.P5891040328648514205

/-! ## A348171.P14607332640287141143

`A348142((n+1)^A103514(n+2))`
-/

namespace A348171.P14607332640287141143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348142 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A103514 (n + 2) : ℤ))).toNat

end

end A348171.P14607332640287141143

/-!
# A348172: a(n) is the number of positive k (can be greater than n) such that A000005(n)/n = A000005(k)/k.

The programs for A348172, there is no canonical definition to state claims against.
-/

/-! ## A348172.P16033886080582656458

`A261794(A032021(A003557(3*(n+1)))²²)`
-/

namespace A348172.P16033886080582656458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 ((A032021 (A003557 (3 * (n + 1))).toNat ^ 2) ^ 2).toNat

end

end A348172.P16033886080582656458

/-! ## A348172.P10736670566945888328

`A260452(((n+1)/∏{p}[n+1, #])^(floor(n/(xor(n, n+1)+1))+1))`
-/

namespace A348172.P10736670566945888328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1 : ℤ))).toNat

end

end A348172.P10736670566945888328

/-! ## A348172.P12590970150259307105

`A059130(A002262(n)^A336644(n+1))`
-/

namespace A348172.P12590970150259307105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059130 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A336644 (n + 1) : ℤ))).toNat

end

end A348172.P12590970150259307105

/-! ## A348172.P16366396456207764233

`A059130(A129714(n)^A336644(n+1))`
-/

namespace A348172.P16366396456207764233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059130 (SequenceMachineLib.roundAway ((A129714 n : ℚ) ^ (A336644 (n + 1) : ℤ))).toNat

end

end A348172.P16366396456207764233

/-! ## A348172.P16595199763793415766

`A292603(A002262(n)^A336642(n+1))`
-/

namespace A348172.P16595199763793415766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292603 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A336642 (n + 1) : ℤ))).toNat

end

end A348172.P16595199763793415766

/-!
# A348173: a(n) is the sum of the distinct values obtained when the unitary totient function is applied to the unitary divisors of n.

The programs for A348173, there is no canonical definition to state claims against.
-/

/-! ## A348173.P12505364997234327351

`gcd(n+1, A001800(n)²)`
-/

namespace A348173.P12505364997234327351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001800 n ^ 2)

end

end A348173.P12505364997234327351

/-! ## A348173.P15298262101444197547

`A298251(A061502(n+1))%2*A283971(n+1)`
-/

namespace A348173.P15298262101444197547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298251 (A061502 (n + 1)).toNat) 2 * A283971 (n + 1)

end

end A348173.P15298262101444197547

/-! ## A348173.P7084481279325757901

`gcd(A029579(2*n), A033428(A045943(n)))`
-/

namespace A348173.P7084481279325757901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029579 (2 * n)) (A033428 (A045943 n).toNat)

end

end A348173.P7084481279325757901

/-! ## A348173.P15978334369427408270

`A283978(A284012(n+1))+A283971(n+1)`
-/

namespace A348173.P15978334369427408270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283978 (A284012 (n + 1)).toNat + A283971 (n + 1)

end

end A348173.P15978334369427408270

/-! ## A348173.P4198154200611944704

`A210186(A005117(2*n+5))%2*A283971(n+1)`
-/

namespace A348173.P4198154200611944704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210186 (A005117 (2 * n + 5)).toNat) 2 * A283971 (n + 1)

end

end A348173.P4198154200611944704

/-! ## A348173.P1437251103947791927

`gcd(A001057(n+1)*A046981(n+1), A001057(2*n+1))`
-/

namespace A348173.P1437251103947791927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001057 (n + 1) * A046981 (n + 1)) (A001057 (2 * n + 1))

end

end A348173.P1437251103947791927

/-! ## A348173.P4353388554941615802

`A277227(A195605(n))`
-/

namespace A348173.P4353388554941615802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A195605 n).toNat

end

end A348173.P4353388554941615802

/-! ## A348173.P3559576760239933717

`A022998(A204904(n+1)/2)`
-/

namespace A348173.P3559576760239933717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (SequenceMachineLib.roundAway ((A204904 (n + 1) : ℚ) / 2)).toNat

end

end A348173.P3559576760239933717

/-! ## A348173.P7676467459997155764

`gcd(n+1, A120485(n))`
-/

namespace A348173.P7676467459997155764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A120485 n)

end

end A348173.P7676467459997155764

/-! ## A348173.P11587296817869798356

`(n+1)/and(2, (n+2)^n)!`
-/

namespace A348173.P11587296817869798356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (Nat.land 2 ((n + 2) ^ n)) : ℚ)

end

end A348173.P11587296817869798356

/-!
# A348175: Irregular table T(n, k) read by rows: T(n, k) = T(n-1, k/2) when k is even and 3*T(n-1, (k-1)/2) + 2^(n-1) when k is odd. T(0, 0) = 0 and 0 <= k <= 2^n-1.

The programs for A348175, there is no canonical definition to state claims against.
-/

/-! ## A348175.P17121364903107508642

`A119733(A030109(n+1))`
-/

namespace A348175.P17121364903107508642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (A030109 (n + 1)).toNat

end

end A348175.P17121364903107508642

/-! ## A348175.P18432215939178854296

`A119733(A049773(n+1)-1)`
-/

namespace A348175.P18432215939178854296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (A049773 (n + 1) - 1).toNat

end

end A348175.P18432215939178854296

/-! ## A348175.P13057369743443629278

`A119733(A059893(n+1)%A053644(n+1))`
-/

namespace A348175.P13057369743443629278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (Int.tmod (A059893 (n + 1)) (A053644 (n + 1))).toNat

end

end A348175.P13057369743443629278

/-! ## A348175.P681221794088503863

`A119733(A059893(2*(n+1))%A062383(n))`
-/

namespace A348175.P681221794088503863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (Int.tmod (A059893 (2 * (n + 1))) (A062383 n)).toNat

end

end A348175.P681221794088503863

/-! ## A348175.P1115998063567896681

`A119733(xor(A053644(n+1), A059893(n+1)))`
-/

namespace A348175.P1115998063567896681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (Int.xor (A053644 (n + 1)) (A059893 (n + 1))).toNat

end

end A348175.P1115998063567896681

/-! ## A348175.P2413306398939987099

`A119733(A059893(2*(n+1))-A062383(n+1))`
-/

namespace A348175.P2413306398939987099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (A059893 (2 * (n + 1)) - A062383 (n + 1)).toNat

end

end A348175.P2413306398939987099

/-! ## A348175.P3225170122453201851

`A119733(A059893(n+1)-A000079(A000523(n+1)))`
-/

namespace A348175.P3225170122453201851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (A059893 (n + 1) - A000079 (A000523 (n + 1)).toNat).toNat

end

end A348175.P3225170122453201851

/-!
# A348177: a(n) is the number of pair of positive integers (x, y) with 1 <= x <= y such that sum s = x + y and product p = x * y satisfy s + p = 2^n, with n > 0.

The programs for A348177, there is no canonical definition to state claims against.
-/

/-! ## A348177.P13271214778803293015

`ceil(∑[Δ[A046798(n)]/2])`
-/

namespace A348177.P13271214778803293015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A348177.P13271214778803293015

/-! ## A348177.P8682374860620147234

`floor((A046798(n+1)-1)/2)`
-/

namespace A348177.P8682374860620147234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046798 (n + 1) - 1 : ℚ) / 2⌋

end

end A348177.P8682374860620147234

/-! ## A348177.P3782898712617043634

`A102563(A046798(n+1))`
-/

namespace A348177.P3782898712617043634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102563 (A046798 (n + 1)).toNat

end

end A348177.P3782898712617043634

/-! ## A348177.P11717933091991055866

`A140106(A046798(n+1)+1)`
-/

namespace A348177.P11717933091991055866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A046798 (n + 1) + 1).toNat

end

end A348177.P11717933091991055866

/-! ## A348177.P12542728113441250183

`A004526(A046798(n+1)-1)`
-/

namespace A348177.P12542728113441250183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A046798 (n + 1) - 1).toNat

end

end A348177.P12542728113441250183

/-! ## A348177.P14037271792204396259

`A057979(A046798(n+1)-1)`
-/

namespace A348177.P14037271792204396259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A046798 (n + 1) - 1).toNat

end

end A348177.P14037271792204396259

/-! ## A348177.P18257829894659825377

`A004525(A046798(n+1)-2)`
-/

namespace A348177.P18257829894659825377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A046798 (n + 1) - 2).toNat

end

end A348177.P18257829894659825377

/-! ## A348177.P17994191018384580326

`A026741(A046798(n+1)-2)`
-/

namespace A348177.P17994191018384580326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A046798 (n + 1) - 2).toNat

end

end A348177.P17994191018384580326

/-! ## A348177.P14961181383944900355

`A038572(A046798(n+1)-2)`
-/

namespace A348177.P14961181383944900355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A046798 (n + 1) - 2).toNat

end

end A348177.P14961181383944900355

/-! ## A348177.P1037276318183701870

`A110654(A046798(n+1)-2)`
-/

namespace A348177.P1037276318183701870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A046798 (n + 1) - 2).toNat

end

end A348177.P1037276318183701870

/-!
# A348178: The list of all prime numbers is split into sublists with the 1st sublist L_1 = {2} and n-th sublist L_n = {p_1, p_2, ..., p_m}. a(n) is the largest m such that the maximum prime gap in L_n is < p_1 - prevprime(p_1).

The programs for A348178, there is no canonical definition to state claims against.
-/

/-! ## A348178.P5538280530737977217

`Δ[A085500(A028310(n))%(2^n)]`
-/

namespace A348178.P5538280530737977217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085500 (A028310 n).toNat) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348178.P5538280530737977217

/-! ## A348178.P14713765863901546483

`A000007(n)+Δ[A085500(A028310(n))]`
-/

namespace A348178.P14713765863901546483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085500 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A348178.P14713765863901546483

/-! ## A348178.P14756522699706814317

`Δ[A085500(A028310(n))+A057427(n)]`
-/

namespace A348178.P14756522699706814317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085500 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348178.P14756522699706814317

/-! ## A348178.P6941336963529325922

`Δ[A178334(n)+A085500(A028310(n))]`
-/

namespace A348178.P6941336963529325922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A085500 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348178.P6941336963529325922

/-!
# A348179: Replace each decimal digit d of n with the digit that is d steps to the right of d. Interpret the digits of n as a cycle: one step to the right from the last digit is considered to be the first.

The programs for A348179, there is no canonical definition to state claims against.
-/

/-! ## A348179.P13926605941928531707

`A349422(n)+A273294(n²)`
-/

namespace A348179.P13926605941928531707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349422 n + A273294 (n ^ 2)

end

end A348179.P13926605941928531707

/-! ## A348179.P6954165592541358979

`A010052(n²)*A349422(n)`
-/

namespace A348179.P6954165592541358979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2) * A349422 n

end

end A348179.P6954165592541358979

/-! ## A348179.P10081257792546328538

`A349422(n)%A250120(n²)`
-/

namespace A348179.P10081257792546328538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349422 n) (A250120 (n ^ 2))

end

end A348179.P10081257792546328538

/-! ## A348179.P2458770974706779691

`A349422(n)+A000007(A002061(n))`
-/

namespace A348179.P2458770974706779691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349422 n + A000007 (A002061 n).toNat

end

end A348179.P2458770974706779691

/-! ## A348179.P18269477274150077479

`A349422(n)+A014707(A000290(n))`
-/

namespace A348179.P18269477274150077479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349422 n + A014707 (A000290 n).toNat

end

end A348179.P18269477274150077479

/-! ## A348179.P5130146128370929369

`A132199(A006512(2*n+5))*A349422(n)`
-/

namespace A348179.P5130146128370929369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132199 (A006512 (2 * n + 5)).toNat * A349422 n

end

end A348179.P5130146128370929369

/-! ## A348179.P5226686321296694361

`A349422(or(n, n*(1-val(∏{p}[n^3, #], 11))))`
-/

namespace A348179.P5226686321296694361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349422 (Int.lor (n : ℤ) ((n : ℤ) * (1 - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 11 : ℤ)))).toNat

end

end A348179.P5226686321296694361

/-! ## A348179.P6446311405321815233

`A349422(n)+A292252(A178091(n+1))`
-/

namespace A348179.P6446311405321815233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349422 n + A292252 (A178091 (n + 1)).toNat

end

end A348179.P6446311405321815233

/-! ## A348179.P2468751209328265491

`A349410(A132199(n+1))*A349422(n)`
-/

namespace A348179.P2468751209328265491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349410 (A132199 (n + 1)).toNat * A349422 n

end

end A348179.P2468751209328265491

/-! ## A348179.P11490663950247192438

`A349422(n)+A079261(A071395(n+1))`
-/

namespace A348179.P11490663950247192438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349422 n + A079261 (A071395 (n + 1)).toNat

end

end A348179.P11490663950247192438

/-!
# A348182: a(1) = 1; for n >= 2, a(n) = 1 + a(A057022(n)).

The programs for A348182, the canonical program `A348182.P16938362738167117090` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348182 has offset 1).

The definition of A348182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348182.P16938362738167117090

`a(floor(∑{d}[n+1, #]/∏{e}[n+1, #+1])-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A348182

/-- `a(floor(∑{d}[n+1, #]/∏{e}[n+1, #+1])-1)+1` -/
def P16938362738167117090.Spec : Prop :=
  ∀ n, (P16938362738167117090.a n : ℤ) = A348182 (n + 1)

theorem P16938362738167117090.correct : P16938362738167117090.Spec := by
  intro n
  simp only [A348182, Nat.add_sub_cancel]

end A348182

/-! ## A348182.P9511922970939465796

`a(floor(∑{d}[n+1, #]/(∑{d}[n+1, n²%#]+1))-1)+1` with `a(0)=1`
-/

namespace A348182.P9511922970939465796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), n ^ 2 % d + 1 : ℕ) : ℚ)⌋ - 1).toNat + 1

end

end A348182.P9511922970939465796

namespace A348182

/-- `a(floor(∑{d}[n+1, #]/(∑{d}[n+1, n²%#]+1))-1)+1` -/
def P9511922970939465796.Spec : Prop :=
  ∀ n, (P9511922970939465796.a n : ℤ) = A348182 (n + 1)

end A348182

/-! ## A348182.P11615385744516284482

`a(A057022(n+1)-1)+1` with `a(0)=1`
-/

namespace A348182.P11615385744516284482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A057022 (n + 1) - 1).toNat + 1

end

end A348182.P11615385744516284482

namespace A348182

/-- `a(A057022(n+1)-1)+1` -/
def P11615385744516284482.Spec : Prop :=
  ∀ n, (P11615385744516284482.a n : ℤ) = A348182 (n + 1)

end A348182

/-! ## A348182.P17382711139085361334

`a(A023443(A057022(n+1)))+1` with `a(0)=1`
-/

namespace A348182.P17382711139085361334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A023443 (A057022 (n + 1)).toNat).toNat + 1

end

end A348182.P17382711139085361334

namespace A348182

/-- `a(A023443(A057022(n+1)))+1` -/
def P17382711139085361334.Spec : Prop :=
  ∀ n, (P17382711139085361334.a n : ℤ) = A348182 (n + 1)

end A348182

/-! ## A348182.P17890034860354387820

`A081330(a(A057022(n+1)-1))` with `a(0)=1`
-/

namespace A348182.P17890034860354387820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081330 (a (A057022 (n + 1) - 1).toNat).toNat

end

end A348182.P17890034860354387820

namespace A348182

/-- `A081330(a(A057022(n+1)-1))` -/
def P17890034860354387820.Spec : Prop :=
  ∀ n, P17890034860354387820.a n = A348182 (n + 1)

end A348182

/-! ## A348182.P373898952928780000

`A192587(a(A057022(n+1)-1))` with `a(0)=1`
-/

namespace A348182.P373898952928780000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A192587 (a (A057022 (n + 1) - 1).toNat).toNat

end

end A348182.P373898952928780000

namespace A348182

/-- `A192587(a(A057022(n+1)-1))` -/
def P373898952928780000.Spec : Prop :=
  ∀ n, P373898952928780000.a n = A348182 (n + 1)

end A348182

/-! ## A348182.P629654475221128705

`A348553(a(A057022(n+1)-1))` with `a(0)=1`
-/

namespace A348182.P629654475221128705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A348553 (a (A057022 (n + 1) - 1).toNat).toNat

end

end A348182.P629654475221128705

namespace A348182

/-- `A348553(a(A057022(n+1)-1))` -/
def P629654475221128705.Spec : Prop :=
  ∀ n, P629654475221128705.a n = A348182 (n + 1)

end A348182

/-! ## A348182.P3328614257042394934

`a(floor(A000203(n+1)/A000005(n+1))-1)+1` with `a(0)=1`
-/

namespace A348182.P3328614257042394934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (⌊(A000203 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)⌋ - 1).toNat + 1

end

end A348182.P3328614257042394934

namespace A348182

/-- `a(floor(A000203(n+1)/A000005(n+1))-1)+1` -/
def P3328614257042394934.Spec : Prop :=
  ∀ n, (P3328614257042394934.a n : ℤ) = A348182 (n + 1)

end A348182

/-! ## A348182.P6708271917638980907

`a(floor(A000203(n+1)/(n+1-A049820(n+1)))-1)+1` with `a(0)=1`
-/

namespace A348182.P6708271917638980907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (⌊(A000203 (n + 1) : ℚ) / ((n + 1 : ℤ) - A049820 (n + 1) : ℚ)⌋ - 1).toNat + 1

end

end A348182.P6708271917638980907

namespace A348182

/-- `a(floor(A000203(n+1)/(n+1-A049820(n+1)))-1)+1` -/
def P6708271917638980907.Spec : Prop :=
  ∀ n, (P6708271917638980907.a n : ℤ) = A348182 (n + 1)

end A348182

/-! ## A348182.P12993336621234222225

`a((A000203(n+1)-A054025(n+1))/A000005(n+1)-1)+1` with `a(0)=1`
-/

namespace A348182.P12993336621234222225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway ((A000203 (n + 1) - A054025 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) - 1)).toNat + 1

end

end A348182.P12993336621234222225

namespace A348182

/-- `a((A000203(n+1)-A054025(n+1))/A000005(n+1)-1)+1` -/
def P12993336621234222225.Spec : Prop :=
  ∀ n, (P12993336621234222225.a n : ℤ) = A348182 (n + 1)

end A348182

/-!
# A348183: a(n) is the determinant of the n X n matrix M = (m_{i,j}), i,j from 0 to n-1: m{i,j} = (i+j)^2 mod n.

The programs for A348183, there is no canonical definition to state claims against.
-/

/-! ## A348183.P3170806580891050921

`A103740(ceil(2^(n-1)))-∑[n]`
-/

namespace A348183.P3170806580891050921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103740 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A348183.P3170806580891050921

/-! ## A348183.P5070210444270617898

`A039875(A001349(n))-n`
-/

namespace A348183.P5070210444270617898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039875 (A001349 n).toNat - (n : ℤ)

end

end A348183.P5070210444270617898

/-!
# A348185: Smallest number k in a set of three consecutive triangular numbers that are sphenic.

The programs for A348185, there is no canonical definition to state claims against.
-/

/-! ## A348185.P10988218209184451584

`A349696(n+2)`
-/

namespace A348185.P10988218209184451584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349696 (n + 2)

end

end A348185.P10988218209184451584

/-! ## A348185.P17718423021537250976

`C(A255200(n+2)+1, 2)`
-/

namespace A348185.P17718423021537250976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A255200 (n + 2) + 1).toNat 2

end

end A348185.P17718423021537250976

/-! ## A348185.P13519316258095057292

`record[A349696(∑[gcd(2, n)²-2])]`
-/

namespace A348185.P13519316258095057292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349696 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348185.P13519316258095057292

/-! ## A348185.P18376456572751790151

`record[A349696(∑[1-a(n-1)])]` with `a(0)=2`
-/

namespace A348185.P18376456572751790151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349696 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348185.P18376456572751790151

/-! ## A348185.P11473946380937875251

`record[A349696(∑[gcd(4, n^4)-2])]`
-/

namespace A348185.P11473946380937875251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (n ^ 4) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349696 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348185.P11473946380937875251

/-!
# A348186: Decimal expansion of Product_{k>=1} (1 + 1/Pi^k).

The programs for A348186, there is no canonical definition to state claims against.
-/

/-! ## A348186.P2490764393045166526

`A319555(A022166(n)*A062326(3*n+5))`
-/

namespace A348186.P2490764393045166526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319555 (A022166 n * A062326 (3 * n + 5)).toNat

end

end A348186.P2490764393045166526

/-!
# A348187: Integers m with k digits (for some k) that lie in an interval of k integers and the digits of m are the total number of distinct prime factors of all the integers in that interval.

The programs for A348187, there is no canonical definition to state claims against.
-/

/-! ## A348187.P1335466661352151323

`A090033(3*n+1)+A083207(A013634(n))`
-/

namespace A348187.P1335466661352151323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090033 (3 * n + 1) + A083207 (A013634 n).toNat

end

end A348187.P1335466661352151323

/-!
# A348188: G.f. A(x) satisfies: A(x) = 1 / (1 + x - 2 * x * A(3*x)).

The programs for A348188, there is no canonical definition to state claims against.
-/

/-! ## A348188.P10016849219091861836

`A160722(A108798(n))-A007590(n)`
-/

namespace A348188.P10016849219091861836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160722 (A108798 n).toNat - A007590 n

end

end A348188.P10016849219091861836

/-!
# A348190: Positive integers where each is chosen to be the second smallest number subject to the condition that no three terms a(j), a(j+k), a(j+2*k) (for any j and k) form an arithmetic progression.

The programs for A348190, there is no canonical definition to state claims against.
-/

/-! ## A348190.P4813831907892808365

`A355382(A028982(n+1))+A123926(n+1)`
-/

namespace A348190.P4813831907892808365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355382 (A028982 (n + 1)).toNat + A123926 (n + 1)

end

end A348190.P4813831907892808365

/-! ## A348190.P5144160624538186717

`A083399(A060676(n+1)-A286357(n+1))`
-/

namespace A348190.P5144160624538186717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (A060676 (n + 1) - A286357 (n + 1)).toNat

end

end A348190.P5144160624538186717

/-! ## A348190.P9174255610815555632

`A323023(A054403(2*n+1))+A323023(n+1)`
-/

namespace A348190.P9174255610815555632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323023 (A054403 (2 * n + 1)).toNat + A323023 (n + 1)

end

end A348190.P9174255610815555632

/-! ## A348190.P2688722394905023641

`A368414(A088580(3*n+1))+A323023(n+1)`
-/

namespace A348190.P2688722394905023641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368414 (A088580 (3 * n + 1)).toNat + A323023 (n + 1)

end

end A348190.P2688722394905023641

/-!
# A348191: Triangular array read by rows: T(n,k) is the number of cubic n-permutations possessing exactly k cycles; n >= 0, 0 <= k <= n.

The programs for A348191, there is no canonical definition to state claims against.
-/

/-! ## A348191.P10341663377769799220

`A132393(n)%A004739(A048584(n))`
-/

namespace A348191.P10341663377769799220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132393 n) (A004739 (A048584 n).toNat)

end

end A348191.P10341663377769799220

/-! ## A348191.P10200263563215200018

`A264433(n)%A004739(A048584(n))`
-/

namespace A348191.P10200263563215200018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264433 n) (A004739 (A048584 n).toNat)

end

end A348191.P10200263563215200018

/-! ## A348191.P11445390953501913292

`and(A005408(A332706(n)), A132393(n))`
-/

namespace A348191.P11445390953501913292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 (A332706 n).toNat) (A132393 n)

end

end A348191.P11445390953501913292

/-! ## A348191.P14171259401074859792

`and(A080956(A290994(n)), A132393(n))`
-/

namespace A348191.P14171259401074859792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080956 (A290994 n).toNat) (A132393 n)

end

end A348191.P14171259401074859792

/-! ## A348191.P10320350507554894428

`and(A005408(A332706(n)), A264433(n))`
-/

namespace A348191.P10320350507554894428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 (A332706 n).toNat) (A264433 n)

end

end A348191.P10320350507554894428

/-!
# A348192: a(0) = 0; for n >= 1, a(n) = 1 + a(n - GCD(n, digital sum(n))).

The programs for A348192, the canonical program `A348192.P7098657248156570778` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348192 has offset 0).

The definition of A348192 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066750, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348192.P7098657248156570778

`1+a(n-A066750(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A348192

/-- `1+a(n-A066750(n))` -/
def P7098657248156570778.Spec : Prop :=
  ∀ n, (P7098657248156570778.a n : ℤ) = A348192 n

theorem P7098657248156570778.correct : P7098657248156570778.Spec := by
  intro n
  simp only [A348192]

end A348192

/-! ## A348192.P10236241873316323247

`a(n-gcd(n, ∑{digits}[n, #]))+1` with `a(0)=0`
-/

namespace A348192.P10236241873316323247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - Nat.gcd n ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum) + 1

end

end A348192.P10236241873316323247

namespace A348192

/-- `a(n-gcd(n, ∑{digits}[n, #]))+1` -/
def P10236241873316323247.Spec : Prop :=
  ∀ n, (P10236241873316323247.a n : ℤ) = A348192 n

end A348192

/-! ## A348192.P5189357153682656504

`a(n-A066750(n))+1` with `a(0)=0`
-/

namespace A348192.P5189357153682656504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A066750 n).toNat + 1

end

end A348192.P5189357153682656504

namespace A348192

/-- `a(n-A066750(n))+1` -/
def P5189357153682656504.Spec : Prop :=
  ∀ n, (P5189357153682656504.a n : ℤ) = A348192 n

end A348192

/-! ## A348192.P10810394098983923147

`a(n-gcd(n, A007953(n)))+1` with `a(0)=0`
-/

namespace A348192.P10810394098983923147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - Int.gcd (n : ℤ) (A007953 n)) + 1

end

end A348192.P10810394098983923147

namespace A348192

/-- `a(n-gcd(n, A007953(n)))+1` -/
def P10810394098983923147.Spec : Prop :=
  ∀ n, (P10810394098983923147.a n : ℤ) = A348192 n

end A348192

/-!
# A348193: (Number of primes == 3 mod 4 less than n^2) - (number of primes == 1 mod 4 less than n^2).

The programs for A348193, there is no canonical definition to state claims against.
-/

/-! ## A348193.P14696204599237552078

`A348195(n+1)-A348196(n+1)`
-/

namespace A348193.P14696204599237552078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348195 (n + 1) - A348196 (n + 1)

end

end A348193.P14696204599237552078

/-! ## A348193.P44269689935610490

`A348194(n)+a(n-1)` with `a(0)=0`
-/

namespace A348193.P44269689935610490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A348194 n + a (n - 1)

end

end A348193.P44269689935610490

/-! ## A348193.P10810981265061351320

`∑[A348194(n+1)]-A348194(n+1)`
-/

namespace A348193.P10810981265061351320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A348194 (n + 1)

end

end A348193.P10810981265061351320

/-! ## A348193.P1135333954943765601

`∑[A348194(A049084(3*(n+1))+n)]`
-/

namespace A348193.P1135333954943765601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348194 (A049084 (3 * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348193.P1135333954943765601

/-! ## A348193.P372755083529830784

`∑[A014085(n)]-A228232(n+1)`
-/

namespace A348193.P372755083529830784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A228232 (n + 1)

end

end A348193.P372755083529830784

/-! ## A348193.P11430712296427485334

`∑[A348194(A028242(A233583(2*(n+1))))]`
-/

namespace A348193.P11430712296427485334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348194 (A028242 (A233583 (2 * (n + 1))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348193.P11430712296427485334

/-! ## A348193.P11988607795433329986

`A066520((n+1)²)`
-/

namespace A348193.P11988607795433329986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 ((n + 1) ^ 2)

end

end A348193.P11988607795433329986

/-! ## A348193.P12969146714963277994

`abs(A066520((n+1)^2))`
-/

namespace A348193.P12969146714963277994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066520 ((n + 1) ^ 2)|

end

end A348193.P12969146714963277994

/-! ## A348193.P731607363584254767

`A066520(∑[2*n+1])%A017365(n)`
-/

namespace A348193.P731607363584254767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066520 (∑ j ∈ Finset.range (n + 1), f1 j)) (A017365 n)

end

end A348193.P731607363584254767

/-! ## A348193.P11823668424682675098

`A292378(A136548((n+1)²))`
-/

namespace A348193.P11823668424682675098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292378 (A136548 ((n + 1) ^ 2)).toNat

end

end A348193.P11823668424682675098

/-!
# A348194: a(n) = A077767(n) - A077766(n).

The programs for A348194, there is no canonical definition to state claims against.
-/

/-! ## A348194.P2542258842268044495

`A077767(n+1)-A077766(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348194.P2542258842268044495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 (n + 1) - A077766 (n + 1)

end

end A348194.P2542258842268044495

/-! ## A348194.P2652346047663343808

`A348193(n+2)-A348193(n+1)`
-/

namespace A348194.P2652346047663343808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348193 (n + 2) - A348193 (n + 1)

end

end A348194.P2652346047663343808

/-! ## A348194.P6395440776121859982

`Δ[A348193(n+1)]`
-/

namespace A348194.P6395440776121859982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348194.P6395440776121859982

/-! ## A348194.P12849171611301776447

`A077767(n+1)-Δ[A348196(n+1)]`
-/

namespace A348194.P12849171611301776447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 (n + 1) - (f1 (n + 1) - f1 n)

end

end A348194.P12849171611301776447

/-! ## A348194.P17768613904514898130

`Δ[A348195(n+1)]-A077766(n+1)`
-/

namespace A348194.P17768613904514898130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077766 (n + 1)

end

end A348194.P17768613904514898130

/-! ## A348194.P15337315315154019366

`Δ[A348195(n+1)-A348196(n+1)]`
-/

namespace A348194.P15337315315154019366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348195 (n + 1) - A348196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348194.P15337315315154019366

/-! ## A348194.P2036534682363535019

`A077767(n+1)+A348196(n+1)-A348196(n+2)`
-/

namespace A348194.P2036534682363535019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 (n + 1) + (A348196 (n + 1) - A348196 (n + 2))

end

end A348194.P2036534682363535019

/-! ## A348194.P8520485016183448849

`A348195(n+2)-(A348195(n+1)+A077766(n+1))`
-/

namespace A348194.P8520485016183448849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348195 (n + 2) - (A348195 (n + 1) + A077766 (n + 1))

end

end A348194.P8520485016183448849

/-! ## A348194.P3174908435697062012

`Δ[A066520((n+1)²)]`
-/

namespace A348194.P3174908435697062012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348194.P3174908435697062012

/-!
# A348195: Number of primes of the form 4k+3 < n^2.

The programs for A348195, there is no canonical definition to state claims against.
-/

/-! ## A348195.P9578749909428696098

`A077767(n)+a(n-1)` with `a(0)=0`
-/

namespace A348195.P9578749909428696098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A077767 n + a (n - 1)

end

end A348195.P9578749909428696098

/-! ## A348195.P8110930150337484530

`A348196(n+1)+A348193(n+1)`
-/

namespace A348195.P8110930150337484530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348196 (n + 1) + A348193 (n + 1)

end

end A348195.P8110930150337484530

/-! ## A348195.P17523442058823622282

`∑[A077767(n+1)]-A077767(n+1)`
-/

namespace A348195.P17523442058823622282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A077767 (n + 1)

end

end A348195.P17523442058823622282

/-! ## A348195.P5283158147043232602

`A077767(n)-floor(-a((n-1)%A080031(n)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A348195.P5283158147043232602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A077767 n - (-a (Int.tmod ((n : ℤ) - 1) (A080031 n)).toNat)

end

end A348195.P5283158147043232602

/-! ## A348195.P6717111066302766833

`∑[A014085(n)]-A228234(n+1)`
-/

namespace A348195.P6717111066302766833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A228234 (n + 1)

end

end A348195.P6717111066302766833

/-! ## A348195.P1082315262821681529

`A000720((n+1)²)-A228234(n+1)`
-/

namespace A348195.P1082315262821681529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) ^ 2) - A228234 (n + 1)

end

end A348195.P1082315262821681529

/-! ## A348195.P4911646077335670199

`A348196(n+1)+A066520((n+1)²)`
-/

namespace A348195.P4911646077335670199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348196 (n + 1) + A066520 ((n + 1) ^ 2)

end

end A348195.P4911646077335670199

/-! ## A348195.P17928408038197394109

`A066490((n+1)²)`
-/

namespace A348195.P17928408038197394109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 ((n + 1) ^ 2)

end

end A348195.P17928408038197394109

/-! ## A348195.P3391159429492739085

`A292376(A136548((n+1)²))`
-/

namespace A348195.P3391159429492739085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292376 (A136548 ((n + 1) ^ 2)).toNat

end

end A348195.P3391159429492739085

/-!
# A348196: Number of primes of the form 4k+1 < n^2.

The programs for A348196, there is no canonical definition to state claims against.
-/

/-! ## A348196.P12569498884074703228

`A077766(n)+a(n-1)` with `a(0)=0`
-/

namespace A348196.P12569498884074703228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A077766 n + a (n - 1)

end

end A348196.P12569498884074703228

/-! ## A348196.P6116057929583749265

`A348195(n+1)-A348193(n+1)`
-/

namespace A348196.P6116057929583749265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348195 (n + 1) - A348193 (n + 1)

end

end A348196.P6116057929583749265

/-! ## A348196.P13461036152121437199

`∑[A077766(n+1)]-A077766(n+1)`
-/

namespace A348196.P13461036152121437199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A077766 (n + 1)

end

end A348196.P13461036152121437199

/-! ## A348196.P9985892207196255997

`floor(A228232(n+1)/2)`
-/

namespace A348196.P9985892207196255997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A228232 (n + 1) : ℚ) / 2⌋

end

end A348196.P9985892207196255997

/-! ## A348196.P582149998522118219

`A228234(n+1)+A057428(n)`
-/

namespace A348196.P582149998522118219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228234 (n + 1) + A057428 n

end

end A348196.P582149998522118219

/-! ## A348196.P5643505291351598105

`A228234(n+1)-A057427(n)`
-/

namespace A348196.P5643505291351598105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228234 (n + 1) - A057427 n

end

end A348196.P5643505291351598105

/-! ## A348196.P13150105937635922829

`A062711(n+1)-A228235(n+1)`
-/

namespace A348196.P13150105937635922829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062711 (n + 1) - A228235 (n + 1)

end

end A348196.P13150105937635922829

/-! ## A348196.P10815342995901284894

`A228232(n+1)-A228234(n+1)`
-/

namespace A348196.P10815342995901284894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228232 (n + 1) - A228234 (n + 1)

end

end A348196.P10815342995901284894

/-! ## A348196.P10021976714744696757

`A228234(n+1)-gcd(A228233(n+1), A228235(n+1))`
-/

namespace A348196.P10021976714744696757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228234 (n + 1) - (Int.gcd (A228233 (n + 1)) (A228235 (n + 1)) : ℤ)

end

end A348196.P10021976714744696757

/-! ## A348196.P4577898510925907815

`A004524(A228232(n+1))`
-/

namespace A348196.P4577898510925907815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A228232 (n + 1)).toNat

end

end A348196.P4577898510925907815

/-! ## A348196.P134445401388015997

`A296021(A198442(n+1))`
-/

namespace A348196.P134445401388015997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296021 (A198442 (n + 1)).toNat

end

end A348196.P134445401388015997

/-! ## A348196.P10190356890292704948

`A066339((n+1)²)`
-/

namespace A348196.P10190356890292704948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 ((n + 1) ^ 2)

end

end A348196.P10190356890292704948

/-!
# A348197: Composition of the g.f. of A086246 with itself.

The programs for A348197, there is no canonical definition to state claims against.
-/

/-! ## A348197.P5470014554023323907

`A054404(A052855(n)+n)`
-/

namespace A348197.P5470014554023323907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A052855 n + (n : ℤ)).toNat

end

end A348197.P5470014554023323907

/-! ## A348197.P13204205085441975197

`record[A072491(n)*A155050(n)]`
-/

namespace A348197.P13204205085441975197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n * A155050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348197.P13204205085441975197

/-! ## A348197.P18109900845429152282

`A052718(A303166(n+1))/n!`
-/

namespace A348197.P18109900845429152282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052718 (A303166 (n + 1)).toNat : ℚ) / (Nat.factorial n : ℚ)

end

end A348197.P18109900845429152282

/-! ## A348197.P514949801848537439

`A089408(2*n)-A010057(n!)`
-/

namespace A348197.P514949801848537439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n) - A010057 (Nat.factorial n)

end

end A348197.P514949801848537439

/-!
# A348198: Terms of A326835 having more divisors than any smaller term.

The programs for A348198, there is no canonical definition to state claims against.
-/

/-! ## A348198.P17934989026780056441

`A348199(A060306(n+2))`
-/

namespace A348198.P17934989026780056441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348199 (A060306 (n + 2)).toNat

end

end A348198.P17934989026780056441

/-! ## A348198.P6365803923462583271

`A348199(lt[2*A187941(n), A231478(n+1)])`
-/

namespace A348198.P6365803923462583271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187941 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348199 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348198.P6365803923462583271

/-! ## A348198.P9774110652786063849

`A348199(lt[2, A231478(n+1)/A187941(n)])`
-/

namespace A348198.P9774110652786063849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231478 (n + 1) : ℚ) / (A187941 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348199 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A348198.P9774110652786063849

/-! ## A348198.P5755103619853430884

`A348199(record[A346264(n+1)])`
-/

namespace A348198.P5755103619853430884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348199 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348198.P5755103619853430884

/-! ## A348198.P15755397722720076693

`A348199(record[A355302(n+1)])`
-/

namespace A348198.P15755397722720076693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348199 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348198.P15755397722720076693

/-!
# A348199: a(n) is the least term of A326835 whose number of divisors is n.

The programs for A348199, there is no canonical definition to state claims against.
-/

/-! ## A348199.P8861287209019514411

`A241710(A259697(n))+A038547(n+1)`
-/

namespace A348199.P8861287209019514411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241710 (A259697 n).toNat + A038547 (n + 1)

end

end A348199.P8861287209019514411

