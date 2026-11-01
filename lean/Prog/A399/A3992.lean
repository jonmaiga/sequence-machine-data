import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C045
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B006.C002
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
import SequenceMachineLib.Triangle

/-!
# A399200: Numbers k such that (cos(k))^k sets a new record low.

The programs for A399200, there is no canonical definition to state claims against.
-/

/-! ## A399200.P6904663835628036603

`col((3*a(n-1))!)+1` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A399200.P6904663835628036603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  SequenceMachineLib.triCol (Nat.factorial (3 * a (n - 1))) + 1

end

end A399200.P6904663835628036603

/-!
# A399201: Number of terms of A003714 that are less than n.

The programs for A399201, there is no canonical definition to state claims against.
-/

/-! ## A399201.P1387661220380365225

`∑[char[xor(n, floor(n/3))+1]]`
-/

namespace A399201.P1387661220380365225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 3⌋ + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399201.P1387661220380365225

/-! ## A399201.P6678944409659927094

`∑[char[n+1-and(2*n, n)]]`
-/

namespace A399201.P6678944409659927094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.land (2 * n) n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399201.P6678944409659927094

/-! ## A399201.P10904033159150844604

`∑[char[and(floor(n/2), -n)+1]]`
-/

namespace A399201.P10904033159150844604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(n : ℚ) / 2⌋ (-(n : ℤ)) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399201.P10904033159150844604

/-! ## A399201.P8614499535286790586

`∑[char[1+and(n, -(2*n))+n]]`
-/

namespace A399201.P8614499535286790586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + Int.land (n : ℤ) (-(2 * n : ℤ)) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399201.P8614499535286790586

/-! ## A399201.P10133105910203288177

`∑[C(2, and(n-1, 2*(n-1))²)]`
-/

namespace A399201.P10133105910203288177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Int.land ((n : ℤ) - 1) (2 * ((n : ℤ) - 1)) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399201.P10133105910203288177

/-! ## A399201.P3030393962096700980

`∑[char[eq[and(n, 2*n)+1, 1]+1]]`
-/

namespace A399201.P3030393962096700980
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n) + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399201.P3030393962096700980

/-! ## A399201.P723760496760756420

`∑[char[or(floor((n+1)/2), n+1)-n]]`
-/

namespace A399201.P723760496760756420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n + 1 : ℚ) / 2⌋ (n + 1 : ℤ) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399201.P723760496760756420

/-! ## A399201.P16331680045051338280

`∑[char[lt[and(2*n, n)%(n+1), 1]+1]]`
-/

namespace A399201.P16331680045051338280
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) n % (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f4 j) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399201.P16331680045051338280

/-!
# A399204: Number of permutations that give the minimum number of comparisons for sorting n elements by binary insertion.

The programs for A399204, the canonical program `A399204.P11534051387213006384` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399204 has offset 0).

The definition of A399204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399204.P11534051387213006384

`a(n-1)*A080079(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A399204

/-- `a(n-1)*A080079(n)` -/
def P11534051387213006384.Spec : Prop :=
  ∀ n, P11534051387213006384.a n = A399204 n

theorem P11534051387213006384.correct : P11534051387213006384.Spec := by
  intro n
  simp only [A399204]

end A399204

/-! ## A399204.P3040274054419578790

`∏[2^ceil(log2(n+1))-n]`
-/

namespace A399204.P3040274054419578790
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A399204.P3040274054419578790

namespace A399204

/-- `∏[2^ceil(log2(n+1))-n]` -/
def P3040274054419578790.Spec : Prop :=
  ∀ n, P3040274054419578790.a n = (A399204 n : ℚ)

end A399204

/-! ## A399204.P10042243957859435201

`(2^ceil(log2(n+1))-n)*a(n-1)` with `a(0)=1`
-/

namespace A399204.P10042243957859435201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) - (n : ℚ)) * a (n - 1)

end

end A399204.P10042243957859435201

namespace A399204

/-- `(2^ceil(log2(n+1))-n)*a(n-1)` -/
def P10042243957859435201.Spec : Prop :=
  ∀ n, P10042243957859435201.a n = (A399204 n : ℚ)

end A399204

/-! ## A399204.P16351090018568125786

`a(n-1)*and(-n, A003817(n))` with `a(0)=1`
-/

namespace A399204.P16351090018568125786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * Int.land (-(n : ℤ)) (A003817 n)

end

end A399204.P16351090018568125786

namespace A399204

/-- `a(n-1)*and(-n, A003817(n))` -/
def P16351090018568125786.Spec : Prop :=
  ∀ n, P16351090018568125786.a n = A399204 n

end A399204

/-! ## A399204.P7222536268486504991

`∏[A080079(n+1)]/A080079(n+1)`
-/

namespace A399204.P7222536268486504991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A080079 (n + 1) : ℚ)

end

end A399204.P7222536268486504991

namespace A399204

/-- `∏[A080079(n+1)]/A080079(n+1)` -/
def P7222536268486504991.Spec : Prop :=
  ∀ n, P7222536268486504991.a n = (A399204 n : ℚ)

end A399204

/-!
# A399205: Number of Pillai primes (A063980) less than 2^n.

The programs for A399205, there is no canonical definition to state claims against.
-/

/-! ## A399205.P11890908912420624404

`A233918(A289600(n))`
-/

namespace A399205.P11890908912420624404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233918 (A289600 n).toNat

end

end A399205.P11890908912420624404

/-! ## A399205.P5191566693544508405

`A239497(A093115(n))`
-/

namespace A399205.P5191566693544508405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239497 (A093115 n).toNat

end

end A399205.P5191566693544508405

/-! ## A399205.P2290619148250743644

`A254688(A192680(n+1))`
-/

namespace A399205.P2290619148250743644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254688 (A192680 (n + 1)).toNat

end

end A399205.P2290619148250743644

/-! ## A399205.P15167626735479087178

`A362813(A344492(n+1))`
-/

namespace A399205.P15167626735479087178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362813 (A344492 (n + 1)).toNat

end

end A399205.P15167626735479087178

/-! ## A399205.P8130344655186766354

`A237050(A000127(n+2))`
-/

namespace A399205.P8130344655186766354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237050 (A000127 (n + 2)).toNat

end

end A399205.P8130344655186766354

/-!
# A399206: Number of permutations p of [n] such that the n-1 products p(i)*p(i+1) (i=1,2,...n-1) are all distinct.

The programs for A399206, there is no canonical definition to state claims against.
-/

/-! ## A399206.P4745091912856596795

`A138398(A080135(n))`
-/

namespace A399206.P4745091912856596795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138398 (A080135 n).toNat

end

end A399206.P4745091912856596795

/-! ## A399206.P3714757051565376374

`A138398(A108469(n))`
-/

namespace A399206.P3714757051565376374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138398 (A108469 n).toNat

end

end A399206.P3714757051565376374

/-! ## A399206.P627293140976019218

`A138398(A167750(n))`
-/

namespace A399206.P627293140976019218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138398 (A167750 n).toNat

end

end A399206.P627293140976019218

/-!
# A399207: Number of nonisomorphic asymmetric intersecting families of subsets of an n-element set.

The programs for A399207, there is no canonical definition to state claims against.
-/

/-! ## A399207.P5608353161491808423

`A000415(A182789(n)+A111669(n))`
-/

namespace A399207.P5608353161491808423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (A182789 n + A111669 n).toNat

end

end A399207.P5608353161491808423

/-!
# A399208: Minimum over all symmetric n X n {-1,1} matrices M with zero diagonal of the maximum of |Sum_{1 <= i < j <= n} M[i,j]*x[i]*x[j]| over all vectors x in {-1,1}^n.

The programs for A399208, there is no canonical definition to state claims against.
-/

/-! ## A399208.P13323072514655393298

`∑[and(A002487(3*n+4), A176355(n))]`
-/

namespace A399208.P13323072514655393298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002487 (3 * n + 4)) (A176355 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399208.P13323072514655393298

/-!
# A399209: Number of nonisomorphic connected Eulerian simple graphs on n vertices with trivial automorphism group.

The programs for A399209, there is no canonical definition to state claims against.
-/

/-! ## A399209.P1745181183232088696

`and(A383829(n)², A244104(n+7))`
-/

namespace A399209.P1745181183232088696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A383829 n ^ 2) (A244104 (n + 7))

end

end A399209.P1745181183232088696

/-! ## A399209.P14030707073675503944

`and(A126567(n), A262687(A006820(n)))`
-/

namespace A399209.P14030707073675503944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126567 n) (A262687 (A006820 n).toNat)

end

end A399209.P14030707073675503944

/-! ## A399209.P5064946275217886696

`and(A058275(n), A270929(A270929(n+1)))`
-/

namespace A399209.P5064946275217886696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058275 n) (A270929 (A270929 (n + 1)).toNat)

end

end A399209.P5064946275217886696

/-! ## A399209.P11337976522081371411

`and(A228413(A036631(n)), A382176(n+1))`
-/

namespace A399209.P11337976522081371411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A228413 (A036631 n).toNat) (A382176 (n + 1))

end

end A399209.P11337976522081371411

/-! ## A399209.P5842745934555810368

`A399191(a(n-1))+A341932(n)-A341702(n)` with `a(0)=1, a(1)=0`
-/

namespace A399209.P5842745934555810368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A399191 (a (n - 1)).toNat + (A341932 n - A341702 n)

end

end A399209.P5842745934555810368

/-!
# A399211: Number of solutions to x^2 + 8*y^2 = n in positive integers x and y.

The programs for A399211, the canonical program `A399211.P11167665216086603082` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399211 has offset 0).

The definition of A399211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399211.P6039087473036872384

`floor(A226225(n)/4)`
-/

namespace A399211.P6039087473036872384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A226225 n : ℚ) / 4⌋

end

end A399211.P6039087473036872384

namespace A399211

/-- `floor(A226225(n)/4)` -/
def P6039087473036872384.Spec : Prop :=
  ∀ n, P6039087473036872384.a n = A399211 n

end A399211

/-! ## A399211.P9142759962416428025

`floor(abs(A242609(n))/4)`
-/

namespace A399211.P9142759962416428025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|A242609 n| : ℚ) / 4⌋

end

end A399211.P9142759962416428025

namespace A399211

/-- `floor(abs(A242609(n))/4)` -/
def P9142759962416428025.Spec : Prop :=
  ∀ n, P9142759962416428025.a n = A399211 n

end A399211

/-! ## A399211.P11167665216086603082

`A002265(A226225(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A399211

/-- `A002265(A226225(n))` -/
def P11167665216086603082.Spec : Prop :=
  ∀ n, P11167665216086603082.a n = A399211 n

theorem P11167665216086603082.correct : P11167665216086603082.Spec := by
  intro n
  simp only [A399211]

end A399211

/-! ## A399211.P12458394315619108705

`A216278(n*A133872(n))`
-/

namespace A399211.P12458394315619108705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216278 ((n : ℤ) * A133872 n).toNat

end

end A399211.P12458394315619108705

namespace A399211

/-- `A216278(n*A133872(n))` -/
def P12458394315619108705.Spec : Prop :=
  ∀ n, P12458394315619108705.a n = A399211 n

end A399211

/-! ## A399211.P14719206686063517878

`A216278(lcm(n, A128130(n)))`
-/

namespace A399211.P14719206686063517878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216278 (Int.lcm (n : ℤ) (A128130 n))

end

end A399211.P14719206686063517878

namespace A399211

/-- `A216278(lcm(n, A128130(n)))` -/
def P14719206686063517878.Spec : Prop :=
  ∀ n, P14719206686063517878.a n = A399211 n

end A399211

/-! ## A399211.P18157174589728557380

`A216278(A166136(n+4)%2*n)`
-/

namespace A399211.P18157174589728557380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216278 (Int.tmod (A166136 (n + 4)) 2 * (n : ℤ)).toNat

end

end A399211.P18157174589728557380

namespace A399211

/-- `A216278(A166136(n+4)%2*n)` -/
def P18157174589728557380.Spec : Prop :=
  ∀ n, P18157174589728557380.a n = A399211 n

end A399211

/-! ## A399211.P8329572407451621440

`A216278(A047481(n+1))`
-/

namespace A399211.P8329572407451621440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216278 (A047481 (n + 1)).toNat

end

end A399211.P8329572407451621440

namespace A399211

/-- `A216278(A047481(n+1))` -/
def P8329572407451621440.Spec : Prop :=
  ∀ n, P8329572407451621440.a n = A399211 n

end A399211

/-! ## A399211.P2512704890146210769

`A216278(A341163(3*n+2)%2*n)`
-/

namespace A399211.P2512704890146210769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216278 (Int.tmod (A341163 (3 * n + 2)) 2 * (n : ℤ)).toNat

end

end A399211.P2512704890146210769

namespace A399211

/-- `A216278(A341163(3*n+2)%2*n)` -/
def P2512704890146210769.Spec : Prop :=
  ∀ n, P2512704890146210769.a n = A399211 n

end A399211

/-! ## A399211.P9887920707116687057

`and(A216278(n), A279867(n+1))`
-/

namespace A399211.P9887920707116687057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A216278 n) (A279867 (n + 1))

end

end A399211.P9887920707116687057

namespace A399211

/-- `and(A216278(n), A279867(n+1))` -/
def P9887920707116687057.Spec : Prop :=
  ∀ n, P9887920707116687057.a n = A399211 n

end A399211

/-!
# A399212: Number of solutions to x^2 + 9*y^2 = n in positive integers x and y.

The programs for A399212, there is no canonical definition to state claims against.
-/

/-! ## A399212.P11694612048168726440

`and(A025426(n), A121367(n+1))`
-/

namespace A399212.P11694612048168726440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025426 n) (A121367 (n + 1))

end

end A399212.P11694612048168726440

/-! ## A399212.P8333988059693123554

`A048881(A048881(n)%A286520(2*(n+2)))`
-/

namespace A399212.P8333988059693123554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (Int.tmod (A048881 n) (A286520 (2 * (n + 2)))).toNat

end

end A399212.P8333988059693123554

/-! ## A399212.P17302748215847053469

`and(A025426(n), A231874(n+1))`
-/

namespace A399212.P17302748215847053469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025426 n) (A231874 (n + 1))

end

end A399212.P17302748215847053469

/-! ## A399212.P9249889700101125796

`and(A359043(2*n)+1, A025426(n))`
-/

namespace A399212.P9249889700101125796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A359043 (2 * n) + 1) (A025426 n)

end

end A399212.P9249889700101125796

/-! ## A399212.P7337857694194376056

`A000035(A078414(n+1))*A025426(n)`
-/

namespace A399212.P7337857694194376056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A078414 (n + 1)).toNat * A025426 n

end

end A399212.P7337857694194376056

/-!
# A399213: a(n) is the smallest nonnegative integer k where exactly n pairs of positive integers (x, y) exist such that x^2 + 8*y^2 = k.

The programs for A399213, there is no canonical definition to state claims against.
-/

/-! ## A399213.P3611051450507342747

`A191356(A315354(n))`
-/

namespace A399213.P3611051450507342747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191356 (A315354 n).toNat

end

end A399213.P3611051450507342747

/-!
# A399227: a(n) = (2*n-1)*2^(w(2*n-1)-1) where w(m) = v_2(usigma(m)) = A007814(A034448(m)) for odd m.

The programs for A399227, the canonical program `A399227.P5856305221868028917` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399227 has offset 2).

The definition of A399227 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399227.P5856305221868028917

`(2*(n+2)-1)*2^(val(A034448(2*(n+2)-1), 2)-1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A399227

/-- `(2*(n+2)-1)*2^(val(A034448(2*(n+2)-1), 2)-1)` -/
def P5856305221868028917.Spec : Prop :=
  ∀ n, P5856305221868028917.a n = (A399227 (n + 2) : ℚ)

end A399227

/-! ## A399227.P6902131151969380801

`gcd(A000384(n+2), A017113(A078213(n+1)))`
-/

namespace A399227.P6902131151969380801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000384 (n + 2)) (A017113 (A078213 (n + 1)).toNat)

end

end A399227.P6902131151969380801

namespace A399227

/-- `gcd(A000384(n+2), A017113(A078213(n+1)))` -/
def P6902131151969380801.Spec : Prop :=
  ∀ n, (P6902131151969380801.a n : ℤ) = A399227 (n + 2)

end A399227

/-!
# A399228: a(n) = Sum_{k=0..n} (-1)^k*(n - k)!*(n + k)!.

The programs for A399228, the canonical program `A399228.P7510221602356486404` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399228 has offset 0).

The definition of A399228 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*(n-#)!*(n+#)!]` (program `A399228.P7510221602356486404`, by `A399228.P7510221602356486404.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399228.P7510221602356486404

`∑{#}[n, (-1)^#*(n-#)!*(n+#)!]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399228

/-- `∑{#}[n, (-1)^#*(n-#)!*(n+#)!]` -/
def P7510221602356486404.Spec : Prop :=
  ∀ n, P7510221602356486404.a n = A399228 n

theorem P7510221602356486404.correct : P7510221602356486404.Spec := by
  intro n
  simp only [A399228]

end A399228

/-! ## A399228.P10518270298455312962

`(n!²+(-1)^n*(2*n+1)!/(n+1))/2`
-/

namespace A399228.P10518270298455312962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n ^ 2 : ℚ) + ((-1) ^ n * (Nat.factorial (2 * n + 1) : ℤ) : ℚ) / (n + 1 : ℚ)) / 2

end

end A399228.P10518270298455312962

namespace A399228

/-- `(n!²+(-1)^n*(2*n+1)!/(n+1))/2` -/
def P10518270298455312962.Spec : Prop :=
  ∀ n, P10518270298455312962.a n = (A399228 n : ℚ)

end A399228

/-! ## A399228.P10516581918171885972

`(A001044(n)+(-1)^n*A110468(n))/2`
-/

namespace A399228.P10516581918171885972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001044 n + (-1) ^ n * A110468 n : ℚ) / 2

end

end A399228.P10516581918171885972

namespace A399228

/-- `(A001044(n)+(-1)^n*A110468(n))/2` -/
def P10516581918171885972.Spec : Prop :=
  ∀ n, P10516581918171885972.a n = (A399228 n : ℚ)

end A399228

/-!
# A399232: a(n) = Sum_{k=1..4*n+2} (k^(4*n+1) mod (2*n+1)).

The programs for A399232, the canonical program `A399232.P4777266106439279644` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399232 has offset 1).

The definition of A399232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399232.P4777266106439279644

`2*A340806(2*n+3)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399232

/-- `2*A340806(2*n+3)` -/
def P4777266106439279644.Spec : Prop :=
  ∀ n, P4777266106439279644.a n = A399232 (n + 1)

theorem P4777266106439279644.correct : P4777266106439279644.Spec := by
  intro n
  simp only [A399232, Nat.add_sub_cancel]

end A399232

/-! ## A399232.P15051808133130974105

`A010848(A153152(2*(n+1)))*A153152(2*(n+1))`
-/

namespace A399232.P15051808133130974105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (A153152 (2 * (n + 1))).toNat * A153152 (2 * (n + 1))

end

end A399232.P15051808133130974105

namespace A399232

/-- `A010848(A153152(2*(n+1)))*A153152(2*(n+1))` -/
def P15051808133130974105.Spec : Prop :=
  ∀ n, P15051808133130974105.a n = A399232 (n + 1)

end A399232

/-! ## A399232.P13825006343308884713

`A000720(A000040(2*n+3))*A010848(2*n+3)`
-/

namespace A399232.P13825006343308884713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (2 * n + 3)).toNat * A010848 (2 * n + 3)

end

end A399232.P13825006343308884713

namespace A399232

/-- `A000720(A000040(2*n+3))*A010848(2*n+3)` -/
def P13825006343308884713.Spec : Prop :=
  ∀ n, P13825006343308884713.a n = A399232 (n + 1)

end A399232

/-! ## A399232.P10922017851120985499

`A000290(2*n+3)-A336651(A000290(2*n+3))`
-/

namespace A399232.P10922017851120985499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * n + 3) - A336651 (A000290 (2 * n + 3)).toNat

end

end A399232.P10922017851120985499

namespace A399232

/-- `A000290(2*n+3)-A336651(A000290(2*n+3))` -/
def P10922017851120985499.Spec : Prop :=
  ∀ n, P10922017851120985499.a n = A399232 (n + 1)

end A399232

/-! ## A399232.P16037291436283962915

`A064549(A102631(2*n+3))-A102631(2*n+3)`
-/

namespace A399232.P16037291436283962915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A102631 (2 * n + 3)).toNat - A102631 (2 * n + 3)

end

end A399232.P16037291436283962915

namespace A399232

/-- `A064549(A102631(2*n+3))-A102631(2*n+3)` -/
def P16037291436283962915.Spec : Prop :=
  ∀ n, P16037291436283962915.a n = A399232 (n + 1)

end A399232

/-! ## A399232.P5887024223275225047

`A000290(2*n+3)-A322352(A000290(2*n+3))`
-/

namespace A399232.P5887024223275225047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * n + 3) - A322352 (A000290 (2 * n + 3)).toNat

end

end A399232.P5887024223275225047

namespace A399232

/-- `A000290(2*n+3)-A322352(A000290(2*n+3))` -/
def P5887024223275225047.Spec : Prop :=
  ∀ n, P5887024223275225047.a n = A399232 (n + 1)

end A399232

/-!
# A399233: Number of minimal connected dominating sets in the n-antiprism graph.

The programs for A399233, the canonical program `A399233.P5330481548219971955` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399233 has offset 3).

The definition of A399233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399233.P5330481548219971955

`ogf((12-24x+16x^2-4x^3+2x^4)/(1-4x+6x^2-6x^3+5x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399233

/-- `ogf((12-24x+16x^2-4x^3+2x^4)/(1-4x+6x^2-6x^3+5x^4-2x^5+x^6))` -/
def P5330481548219971955.Spec : Prop :=
  ∀ n, P5330481548219971955.a n = A399233 (n + 3)

theorem P5330481548219971955.correct : P5330481548219971955.Spec := by
  intro n
  simp only [A399233, Nat.add_sub_cancel]

end A399233

/-! ## A399233.P15254959426045847455

`2*(n+3)*A137495(n)`
-/

namespace A399233.P15254959426045847455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) * A137495 n

end

end A399233.P15254959426045847455

namespace A399233

/-- `2*(n+3)*A137495(n)` -/
def P15254959426045847455.Spec : Prop :=
  ∀ n, P15254959426045847455.a n = A399233 (n + 3)

end A399233

/-!
# A399235: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - 2*x)^2) / (1 - x)^2.

The programs for A399235, there is no canonical definition to state claims against.
-/

/-! ## A399235.P6926613304114809256

`A364349(A019298(n))+A003415(n)`
-/

namespace A399235.P6926613304114809256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364349 (A019298 n).toNat + A003415 n

end

end A399235.P6926613304114809256

/-! ## A399235.P10059010675643771692

`A138999(A126390(n)+Δ[A148314(n)])`
-/

namespace A399235.P10059010675643771692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A126390 n + (f1 (n + 1) - f1 n)).toNat

end

end A399235.P10059010675643771692

/-!
# A399236: Squares visited by knight moves on a diagonally numbered Q1 board and always taking the available unvisited square with the shortest distance to the origin, while in the case of a tie the square with smaller row index is preferred. Starting square is labeled 1.

The programs for A399236, there is no canonical definition to state claims against.
-/

/-! ## A399236.P12959316950542378037

`A400771(A043318(n+1))`
-/

namespace A399236.P12959316950542378037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400771 (A043318 (n + 1)).toNat

end

end A399236.P12959316950542378037

/-! ## A399236.P7296004335515976816

`A400771(A044915(n+1))`
-/

namespace A399236.P7296004335515976816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400771 (A044915 (n + 1)).toNat

end

end A399236.P7296004335515976816

/-! ## A399236.P1572072973817813506

`A090106(A400771(n+1))`
-/

namespace A399236.P1572072973817813506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (A400771 (n + 1)).toNat

end

end A399236.P1572072973817813506

/-! ## A399236.P4590770795510452803

`A400771(A161951(n+1))`
-/

namespace A399236.P4590770795510452803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400771 (A161951 (n + 1)).toNat

end

end A399236.P4590770795510452803

/-! ## A399236.P5207323044827735002

`A400771(A004918(n+1)+1)`
-/

namespace A399236.P5207323044827735002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400771 (A004918 (n + 1) + 1).toNat

end

end A399236.P5207323044827735002

/-!
# A399238: a(n) = Sum_{k=0..n} binomial(n, k) * T(k), where T(n) = A000081(n) for n >= 1, T(0) = 1.

The programs for A399238, there is no canonical definition to state claims against.
-/

/-! ## A399238.P15286727550268527994

`A399339(∑[n])`
-/

namespace A399238.P15286727550268527994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399339 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A399238.P15286727550268527994

/-! ## A399238.P7295410153069537173

`record[A399339(n)]`
-/

namespace A399238.P7295410153069537173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A399238.P7295410153069537173

/-! ## A399238.P16696767675874124505

`∑[A261588(n)%(A067648(3*n+1)+1)]`
-/

namespace A399238.P16696767675874124505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261588 n) (A067648 (3 * n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399238.P16696767675874124505

/-! ## A399238.P14827211494822307266

`A014137(n)-A339089(A045625(n))`
-/

namespace A399238.P14827211494822307266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n - A339089 (A045625 n).toNat

end

end A399238.P14827211494822307266

/-!
# A399239: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(n, k) * T(k), where T(n) = A000081(n) for n >= 1, T(0) = 1.

The programs for A399239, there is no canonical definition to state claims against.
-/

/-! ## A399239.P6873726475099429827

`A399339(∑[n]+n)`
-/

namespace A399239.P6873726475099429827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399339 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A399239.P6873726475099429827

/-!
# A399240: Triangle read by rows. T(n, k) is the number of rooted trees on n nodes where every node has at most k children.

The programs for A399240, there is no canonical definition to state claims against.
-/

/-! ## A399240.P5896022389925077185

`C(A055642(A326020(n)), A027293(n+1))`
-/

namespace A399240.P5896022389925077185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055642 (A326020 n).toNat).toNat (A027293 (n + 1)).toNat

end

end A399240.P5896022389925077185

/-! ## A399240.P9688491222232209065

`A136431(n)^A129251(2^n)`
-/

namespace A399240.P9688491222232209065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136431 n : ℚ) ^ (A129251 (2 ^ n) : ℤ)

end

end A399240.P9688491222232209065

/-! ## A399240.P10726316679439214572

`A136431(n)+A000007(A008466(n))`
-/

namespace A399240.P10726316679439214572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 n + A000007 (A008466 n).toNat

end

end A399240.P10726316679439214572

/-! ## A399240.P1273582915758804027

`A136431(n)+A036987(A000129(n))`
-/

namespace A399240.P1273582915758804027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 n + A036987 (A000129 n).toNat

end

end A399240.P1273582915758804027

/-! ## A399240.P2456937949776964411

`A136431(n)+A063524(A041809(n))`
-/

namespace A399240.P2456937949776964411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 n + A063524 (A041809 n).toNat

end

end A399240.P2456937949776964411

/-!
# A399241: Number of isomorphism classes of asymmetric maximal intersecting families of subsets of an n-element set.

The programs for A399241, there is no canonical definition to state claims against.
-/

/-! ## A399241.P13940825668824410892

`101*102^a(n-1)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0, a(4)=0, a(5)=0`
-/

namespace A399241.P13940825668824410892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 0, 0, 0] fun n a =>
  101 * 102 ^ a (n - 1)

end

end A399241.P13940825668824410892

/-! ## A399241.P18426376027373578408

`A090287(a(n-1))` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0, a(4)=0, a(5)=0`
-/

namespace A399241.P18426376027373578408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0, 0, 0] fun n a =>
  A090287 (a (n - 1)).toNat

end

end A399241.P18426376027373578408

/-! ## A399241.P7102994376633904387

`A131687(a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0, a(4)=0, a(5)=0`
-/

namespace A399241.P7102994376633904387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0, 0, 0] fun n a =>
  A131687 (a (n - 1) + 1).toNat

end

end A399241.P7102994376633904387

/-!
# A399245: Rectangular array read by descending antidiagonals: c(n, k) = 1 if floor(k*x^n) = floor(m*x) for some positive integer m, where x = (1 + sqrt(5))/2, and c(n, k) = 0 otherwise.

The programs for A399245, there is no canonical definition to state claims against.
-/

/-! ## A399245.P14016520349008175003

`A096270(A128440(1+n))`
-/

namespace A399245.P14016520349008175003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A128440 (1 + n)).toNat

end

end A399245.P14016520349008175003

/-! ## A399245.P5584055460653837799

`A145224(and(A002262(n), A366858(2*n+1)))`
-/

namespace A399245.P5584055460653837799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145224 (Int.land (A002262 n) (A366858 (2 * n + 1))).toNat

end

end A399245.P5584055460653837799

/-! ## A399245.P2253132980881170142

`A325336(and(A002262(n), A366858(2*n+1)))`
-/

namespace A399245.P2253132980881170142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325336 (Int.land (A002262 n) (A366858 (2 * n + 1))).toNat

end

end A399245.P2253132980881170142

/-! ## A399245.P18044601520025837970

`A254651(A333509(n+1))`
-/

namespace A399245.P18044601520025837970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (A333509 (n + 1)).toNat

end

end A399245.P18044601520025837970

/-! ## A399245.P5007039251866276103

`1-A369653(A266886(n+1))`
-/

namespace A399245.P5007039251866276103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A369653 (A266886 (n + 1)).toNat

end

end A399245.P5007039251866276103

/-!
# A399247: Rectangular array read by descending antidiagonals: c(n, k) = 1 if floor(k*x^n) = floor(m*x) for some positive integer m, where x = 1+sqrt(2), and c(n, k) = 0 otherwise.

The programs for A399247, there is no canonical definition to state claims against.
-/

/-! ## A399247.P16518007543259397149

`A324323(A324323(n)%A067538(n+1))`
-/

namespace A399247.P16518007543259397149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324323 (Int.tmod (A324323 n) (A067538 (n + 1))).toNat

end

end A399247.P16518007543259397149

/-! ## A399247.P6804338859598608221

`A324323(and(A000040(3*n+1), A324323(n)))`
-/

namespace A399247.P6804338859598608221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324323 (Int.land (A000040 (3 * n + 1)) (A324323 n)).toNat

end

end A399247.P6804338859598608221

/-! ## A399247.P4808078593923323713

`A219487(A187081(n))^n²`
-/

namespace A399247.P4808078593923323713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219487 (A187081 n).toNat ^ n ^ 2

end

end A399247.P4808078593923323713

/-! ## A399247.P13493280677884315774

`A324323(A040499(n)*A324323(n))`
-/

namespace A399247.P13493280677884315774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324323 (A040499 n * A324323 n).toNat

end

end A399247.P13493280677884315774

/-! ## A399247.P14118876263219841991

`A385815(A385072(n+1)*A385815(n))`
-/

namespace A399247.P14118876263219841991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385815 (A385072 (n + 1) * A385815 n).toNat

end

end A399247.P14118876263219841991

/-!
# A399248: Rectangular array read by descending antidiagonals: r(n, k) = floor(k*x^n), where x = 1+sqrt(3).

The programs for A399248, there is no canonical definition to state claims against.
-/

/-! ## A399248.P5141322106562045808

`A399256(A032555(n+1))`
-/

namespace A399248.P5141322106562045808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399256 (A032555 (n + 1)).toNat

end

end A399248.P5141322106562045808

/-! ## A399248.P5858644949852003051

`A399256(A032559(n+1))`
-/

namespace A399248.P5858644949852003051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399256 (A032559 (n + 1)).toNat

end

end A399248.P5858644949852003051

/-! ## A399248.P2321981334886146374

`A399256(A077739(n+1))`
-/

namespace A399248.P2321981334886146374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399256 (A077739 (n + 1)).toNat

end

end A399248.P2321981334886146374

/-! ## A399248.P1358578337340248760

`A399256(A078213(n+1))`
-/

namespace A399248.P1358578337340248760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399256 (A078213 (n + 1)).toNat

end

end A399248.P1358578337340248760

/-! ## A399248.P9648649343604676239

`A399256(A082217(n+1))`
-/

namespace A399248.P9648649343604676239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399256 (A082217 (n + 1)).toNat

end

end A399248.P9648649343604676239

/-!
# A399249: Rectangular array read by descending antidiagonals: c(n, k) = 1 if floor(k*x^n) = floor(m*x) for some positive integer m, where x = 1+sqrt(3), and c(n, k) = 0 otherwise.

The programs for A399249, there is no canonical definition to state claims against.
-/

/-! ## A399249.P1393863141653909752

`A359349(A176253(n+1))`
-/

namespace A399249.P1393863141653909752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359349 (A176253 (n + 1)).toNat

end

end A399249.P1393863141653909752

/-! ## A399249.P11116384201974499791

`A284317(A103299(n))+A080764(n)`
-/

namespace A399249.P11116384201974499791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284317 (A103299 n).toNat + A080764 n

end

end A399249.P11116384201974499791

/-! ## A399249.P14057082483839262819

`A285258(A209435(n)*A277351(n+1))`
-/

namespace A399249.P14057082483839262819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285258 (A209435 n * A277351 (n + 1)).toNat

end

end A399249.P14057082483839262819

/-! ## A399249.P18315930916356202784

`A284627(lt[A240858(n+2), A127473(n+1)])`
-/

namespace A399249.P18315930916356202784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240858 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284627 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A399249.P18315930916356202784

/-! ## A399249.P12530257481631235332

`A109017(A145901(n)+A083913(n+1))`
-/

namespace A399249.P12530257481631235332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109017 (A145901 n + A083913 (n + 1)).toNat

end

end A399249.P12530257481631235332

/-!
# A399250: Product of the x- and y-coordinates of a point moving in a square spiral.

The programs for A399250, the canonical program `A399250.P11468596376330613414` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399250 has offset 1).

The definition of A399250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399250.P11468596376330613414

`A174344(n+1)*A274923(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399250

/-- `A174344(n+1)*A274923(n+1)` -/
def P11468596376330613414.Spec : Prop :=
  ∀ n, P11468596376330613414.a n = A399250 (n + 1)

theorem P11468596376330613414.correct : P11468596376330613414.Spec := by
  intro n
  simp only [A399250, Nat.add_sub_cancel]

end A399250

/-! ## A399250.P12039667172308559258

`A274923(1+n)*A296030(Δ[n²])`
-/

namespace A399250.P12039667172308559258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (1 + n) * A296030 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A399250.P12039667172308559258

namespace A399250

/-- `A274923(1+n)*A296030(Δ[n²])` -/
def P12039667172308559258.Spec : Prop :=
  ∀ n, P12039667172308559258.a n = A399250 (n + 1)

end A399250

/-! ## A399250.P4179389139458465729

`-(A174344(n+1)*A268038(n+1))`
-/

namespace A399250.P4179389139458465729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A174344 (n + 1) * A268038 (n + 1))

end

end A399250.P4179389139458465729

namespace A399250

/-- `-(A174344(n+1)*A268038(n+1))` -/
def P4179389139458465729.Spec : Prop :=
  ∀ n, P4179389139458465729.a n = A399250 (n + 1)

end A399250

/-! ## A399250.P13696398866295850475

`A174344(n+1)*A296030(2*(n+1))`
-/

namespace A399250.P13696398866295850475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) * A296030 (2 * (n + 1))

end

end A399250.P13696398866295850475

namespace A399250

/-- `A174344(n+1)*A296030(2*(n+1))` -/
def P13696398866295850475.Spec : Prop :=
  ∀ n, P13696398866295850475.a n = A399250 (n + 1)

end A399250

/-! ## A399250.P10000475846048673878

`A296030(2*(1+n))*A296030(Δ[n²])`
-/

namespace A399250.P10000475846048673878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * (1 + n)) * A296030 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A399250.P10000475846048673878

namespace A399250

/-- `A296030(2*(1+n))*A296030(Δ[n²])` -/
def P10000475846048673878.Spec : Prop :=
  ∀ n, P10000475846048673878.a n = A399250 (n + 1)

end A399250

/-! ## A399250.P16968490134180700272

`A174344(n+1)*A305576(A308081(n+1))`
-/

namespace A399250.P16968490134180700272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) * A305576 (A308081 (n + 1)).toNat

end

end A399250.P16968490134180700272

namespace A399250

/-- `A174344(n+1)*A305576(A308081(n+1))` -/
def P16968490134180700272.Spec : Prop :=
  ∀ n, P16968490134180700272.a n = A399250 (n + 1)

end A399250

/-! ## A399250.P8561645797130124691

`A274923(n+1)*A305575(A308081(n+1))`
-/

namespace A399250.P8561645797130124691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (n + 1) * A305575 (A308081 (n + 1)).toNat

end

end A399250.P8561645797130124691

namespace A399250

/-- `A274923(n+1)*A305575(A308081(n+1))` -/
def P8561645797130124691.Spec : Prop :=
  ∀ n, P8561645797130124691.a n = A399250 (n + 1)

end A399250

/-! ## A399250.P3230105241063783988

`(A329116(n)+A274923(n+1))*A274923(n+1)`
-/

namespace A399250.P3230105241063783988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A329116 n + A274923 (n + 1)) * A274923 (n + 1)

end

end A399250.P3230105241063783988

namespace A399250

/-- `(A329116(n)+A274923(n+1))*A274923(n+1)` -/
def P3230105241063783988.Spec : Prop :=
  ∀ n, P3230105241063783988.a n = A399250 (n + 1)

end A399250

/-! ## A399250.P11543505748195631224

`(A180714(n)-A174344(n+1))*A174344(n+1)`
-/

namespace A399250.P11543505748195631224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180714 n - A174344 (n + 1)) * A174344 (n + 1)

end

end A399250.P11543505748195631224

namespace A399250

/-- `(A180714(n)-A174344(n+1))*A174344(n+1)` -/
def P11543505748195631224.Spec : Prop :=
  ∀ n, P11543505748195631224.a n = A399250 (n + 1)

end A399250

/-! ## A399250.P1615815399029631088

`(A180714(n)-A274923(n+1))*A274923(n+1)`
-/

namespace A399250.P1615815399029631088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180714 n - A274923 (n + 1)) * A274923 (n + 1)

end

end A399250.P1615815399029631088

namespace A399250

/-- `(A180714(n)-A274923(n+1))*A274923(n+1)` -/
def P1615815399029631088.Spec : Prop :=
  ∀ n, P1615815399029631088.a n = A399250 (n + 1)

end A399250

/-! ## A399250.P17820113621225853488

`(A268038(n+1)-A329116(n))*A268038(n+1)`
-/

namespace A399250.P17820113621225853488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A268038 (n + 1) - A329116 n) * A268038 (n + 1)

end

end A399250.P17820113621225853488

namespace A399250

/-- `(A268038(n+1)-A329116(n))*A268038(n+1)` -/
def P17820113621225853488.Spec : Prop :=
  ∀ n, P17820113621225853488.a n = A399250 (n + 1)

end A399250

/-! ## A399250.P9164332205484666396

`A274923(n+1)*A274923(comp[n²])`
-/

namespace A399250.P9164332205484666396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (n + 1) * A274923 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A399250.P9164332205484666396

namespace A399250

/-- `A274923(n+1)*A274923(comp[n²])` -/
def P9164332205484666396.Spec : Prop :=
  ∀ n, P9164332205484666396.a n = A399250 (n + 1)

end A399250

/-!
# A399251: a(n) = x^2 - y^2, where (x, y) are the coordinates of the n-th point of the square counterclockwise spiral with n=1 at the origin.

The programs for A399251, the canonical program `A399251.P6576249541322394034` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399251 has offset 1).

The definition of A399251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399251.P6576249541322394034

`A174344(n+1)²-A274923(n+1)²`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399251

/-- `A174344(n+1)²-A274923(n+1)²` -/
def P6576249541322394034.Spec : Prop :=
  ∀ n, P6576249541322394034.a n = A399251 (n + 1)

theorem P6576249541322394034.correct : P6576249541322394034.Spec := by
  intro n
  simp only [A399251, Nat.add_sub_cancel]

end A399251

/-! ## A399251.P9612601722916312767

`A180714(n)*A329116(n)`
-/

namespace A399251.P9612601722916312767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 n * A329116 n

end

end A399251.P9612601722916312767

namespace A399251

/-- `A180714(n)*A329116(n)` -/
def P9612601722916312767.Spec : Prop :=
  ∀ n, P9612601722916312767.a n = A399251 (n + 1)

end A399251

/-! ## A399251.P1238455504370327501

`(A174344(n+1)-A274923(n+1))*A180714(n)`
-/

namespace A399251.P1238455504370327501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174344 (n + 1) - A274923 (n + 1)) * A180714 n

end

end A399251.P1238455504370327501

namespace A399251

/-- `(A174344(n+1)-A274923(n+1))*A180714(n)` -/
def P1238455504370327501.Spec : Prop :=
  ∀ n, P1238455504370327501.a n = A399251 (n + 1)

end A399251

/-! ## A399251.P14067474894166629336

`A180714(n)*A359216(2*n)`
-/

namespace A399251.P14067474894166629336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 n * A359216 (2 * n)

end

end A399251.P14067474894166629336

namespace A399251

/-- `A180714(n)*A359216(2*n)` -/
def P14067474894166629336.Spec : Prop :=
  ∀ n, P14067474894166629336.a n = A399251 (n + 1)

end A399251

/-! ## A399251.P17061015604208767484

`A329116(n)*A359217(2*n)`
-/

namespace A399251.P17061015604208767484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n * A359217 (2 * n)

end

end A399251.P17061015604208767484

namespace A399251

/-- `A329116(n)*A359217(2*n)` -/
def P17061015604208767484.Spec : Prop :=
  ∀ n, P17061015604208767484.a n = A399251 (n + 1)

end A399251

/-! ## A399251.P8188264648803484245

`A359216(2*n)*A359217(2*n)`
-/

namespace A399251.P8188264648803484245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359216 (2 * n) * A359217 (2 * n)

end

end A399251.P8188264648803484245

namespace A399251

/-- `A359216(2*n)*A359217(2*n)` -/
def P8188264648803484245.Spec : Prop :=
  ∀ n, P8188264648803484245.a n = A399251 (n + 1)

end A399251

/-! ## A399251.P17851918653204567373

`A399250(A316884(n+1))`
-/

namespace A399251.P17851918653204567373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399250 (A316884 (n + 1)).toNat

end

end A399251.P17851918653204567373

namespace A399251

/-- `A399250(A316884(n+1))` -/
def P17851918653204567373.Spec : Prop :=
  ∀ n, P17851918653204567373.a n = A399251 (n + 1)

end A399251

/-!
# A399252: Rectangular array read by descending antidiagonals: r(n, k) = floor(k*x^n), where x = -1+sqrt(5).

The programs for A399252, there is no canonical definition to state claims against.
-/

/-! ## A399252.P8262329976212058179

`A110591(A304544(n+1)*A091965(n))`
-/

namespace A399252.P8262329976212058179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A304544 (n + 1) * A091965 n).toNat

end

end A399252.P8262329976212058179

/-! ## A399252.P14341731254726720185

`A110592(A038280(n))`
-/

namespace A399252.P14341731254726720185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A038280 n).toNat

end

end A399252.P14341731254726720185

/-! ## A399252.P18138199492946111711

`A390764(A038304(n))`
-/

namespace A399252.P18138199492946111711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390764 (A038304 n).toNat

end

end A399252.P18138199492946111711

/-! ## A399252.P3267672338182634996

`A084558(A219659(n)+A035342(n+1))`
-/

namespace A399252.P3267672338182634996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A219659 n + A035342 (n + 1)).toNat

end

end A399252.P3267672338182634996

/-!
# A399253: Rectangular array read by descending antidiagonals: c(n, k) = 1 if floor(k*x^n) = floor(m*x) for some positive integer m, where x = -1+sqrt(5), and c(n, k) = 0 otherwise.

The programs for A399253, there is no canonical definition to state claims against.
-/

/-! ## A399253.P17938165322237646914

`A100047(A162644(2*n+3)²)²`
-/

namespace A399253.P17938165322237646914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 (A162644 (2 * n + 3) ^ 2).toNat ^ 2

end

end A399253.P17938165322237646914

/-! ## A399253.P13242942843440092593

`A183135(A144625(n))^A398793(n+1)`
-/

namespace A399253.P13242942843440092593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183135 (A144625 n).toNat : ℚ) ^ (A398793 (n + 1) : ℤ)

end

end A399253.P13242942843440092593

/-! ## A399253.P9610057333060436811

`A010054(A144625(n)%A376763(n+1))`
-/

namespace A399253.P9610057333060436811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.tmod (A144625 n) (A376763 (n + 1))).toNat

end

end A399253.P9610057333060436811

/-! ## A399253.P8915835830187176776

`A368992(A229565(2*(n+1))%(A368955(n+1)+1))`
-/

namespace A399253.P8915835830187176776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368992 (Int.tmod (A229565 (2 * (n + 1))) (A368955 (n + 1) + 1)).toNat

end

end A399253.P8915835830187176776

/-! ## A399253.P15669102603518415532

`A243566(A228939(n+2))`
-/

namespace A399253.P15669102603518415532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243566 (A228939 (n + 2)).toNat

end

end A399253.P15669102603518415532

/-!
# A399255: Rectangular array read by descending antidiagonals: c(n, k) = 1 if floor(k*x^n) = floor(m*x) for some positive integer m, where x = 2+sqrt(2), and c(n, k) = 0 otherwise.

The programs for A399255, there is no canonical definition to state claims against.
-/

/-! ## A399255.P17888403885778773110

`A171588(A399254(n+1))`
-/

namespace A399255.P17888403885778773110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (A399254 (n + 1)).toNat

end

end A399255.P17888403885778773110

/-! ## A399255.P1661863540276274252

`A165191(A144299(n))`
-/

namespace A399255.P1661863540276274252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165191 (A144299 n).toNat

end

end A399255.P1661863540276274252

/-! ## A399255.P9559375090743760113

`C(A377283(2*n+3)%2+1, col(n))%2`
-/

namespace A399255.P9559375090743760113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod (A377283 (2 * n + 3)) 2 + 1).toNat (SequenceMachineLib.triCol n) % 2

end

end A399255.P9559375090743760113

/-! ## A399255.P14196651038268742470

`A341591(A055236(n))`
-/

namespace A399255.P14196651038268742470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341591 (A055236 n).toNat

end

end A399255.P14196651038268742470

/-! ## A399255.P6467392934105674746

`A010815(A174381(2*(n+2)))^A174381(n)`
-/

namespace A399255.P6467392934105674746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 (A174381 (2 * (n + 2))).toNat : ℚ) ^ (A174381 n : ℤ)

end

end A399255.P6467392934105674746

/-!
# A399256: Rectangular array read by descending antidiagonals: r(n, k) = floor(k*x^n), where x = e.

The programs for A399256, the canonical program `A399256.P860508281549201040` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399256 has offset 1).

The definition of A399256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399256.P860508281549201040

`ceil((A025581(n)+1)*exp(A002262(n)+1))-1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399256

/-- `ceil((A025581(n)+1)*exp(A002262(n)+1))-1` -/
def P860508281549201040.Spec : Prop :=
  ∀ n, P860508281549201040.a n = A399256 (n + 1)

theorem P860508281549201040.correct : P860508281549201040.Spec := by
  intro n
  simp only [A399256, Nat.add_sub_cancel]

end A399256

/-!
# A399257: Rectangular array read by descending antidiagonals: c(n, k) = 1 if floor(k*x^n) = floor(m*x) for some positive integer m, where x = e (the Euler constant), and c(n, k) = 0 otherwise.

The programs for A399257, there is no canonical definition to state claims against.
-/

/-! ## A399257.P9713482642975360886

`A174416(A019538(n+1))%2`
-/

namespace A399257.P9713482642975360886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174416 (A019538 (n + 1)).toNat) 2

end

end A399257.P9713482642975360886

/-! ## A399257.P13451272896625346949

`A286487(A348561(n+2))`
-/

namespace A399257.P13451272896625346949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286487 (A348561 (n + 2)).toNat

end

end A399257.P13451272896625346949

/-! ## A399257.P10136857906152847916

`A051731(A194068(3*(n+1))+A051731(n+1))`
-/

namespace A399257.P10136857906152847916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A194068 (3 * (n + 1)) + A051731 (n + 1)).toNat

end

end A399257.P10136857906152847916

/-! ## A399257.P9765677852780734775

`A176405(A161380(n))`
-/

namespace A399257.P9765677852780734775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176405 (A161380 n).toNat

end

end A399257.P9765677852780734775

/-!
# A399258: Rectangular array (r(n, k)), read by descending antidiagonals: r(n, k) = floor(k*Pi^n).

The programs for A399258, the canonical program `A399258.P9139943054962240312` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399258 has offset 1).

The definition of A399258 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((row(n)-col(n)+1)*π^(col(n)+1))` (program `A399258.P9139943054962240312`, by `A399258.P9139943054962240312.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399258.P9139943054962240312

`floor((row(n)-col(n)+1)*π^(col(n)+1))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399258

/-- `floor((row(n)-col(n)+1)*π^(col(n)+1))` -/
def P9139943054962240312.Spec : Prop :=
  ∀ n, P9139943054962240312.a n = A399258 (n + 1)

theorem P9139943054962240312.correct : P9139943054962240312.Spec := by
  intro n
  simp only [A399258, Nat.add_sub_cancel]

end A399258

/-!
# A399259: Rectangular array (c(n, k)), read by descending antidiagonals: c(n, k) = 1 if floor(k*Pi^n) = floor(m*Pi) for some positive integer m, and c(n, k) = 0 otherwise.

The programs for A399259, there is no canonical definition to state claims against.
-/

/-! ## A399259.P15544576398097009600

`A065828(A363419(n))`
-/

namespace A399259.P15544576398097009600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065828 (A363419 n).toNat

end

end A399259.P15544576398097009600

/-! ## A399259.P15112543073270153326

`A266892(A092369(n))`
-/

namespace A399259.P15112543073270153326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266892 (A092369 n).toNat

end

end A399259.P15112543073270153326

/-! ## A399259.P8458379472366289882

`A190191(col(n)*A263358(n)+1)`
-/

namespace A399259.P8458379472366289882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 ((SequenceMachineLib.triCol n : ℤ) * A263358 n + 1).toNat

end

end A399259.P8458379472366289882

/-! ## A399259.P15793701769458084097

`A128174(A128177(A004736(A002623(A276609(n+1)))))`
-/

namespace A399259.P15793701769458084097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A128177 (A004736 (A002623 (A276609 (n + 1)).toNat).toNat).toNat).toNat

end

end A399259.P15793701769458084097

/-! ## A399259.P2008504182474872718

`A104107(A313510(n))`
-/

namespace A399259.P2008504182474872718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104107 (A313510 n).toNat

end

end A399259.P2008504182474872718

/-!
# A399260: Order of the general semilinear group GammaL_2(K), where K is the finite field with q = A246655(n) elements.

The programs for A399260, there is no canonical definition to state claims against.
-/

/-! ## A399260.P13815765318959402185

`A246655(n+1)*A352807(n+1)-A352807(n+1)`
-/

namespace A399260.P13815765318959402185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) * A352807 (n + 1) - A352807 (n + 1)

end

end A399260.P13815765318959402185

/-! ## A399260.P367810554081687119

`A000961(n+2)*A352807(n+1)-A352807(n+1)`
-/

namespace A399260.P367810554081687119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2) * A352807 (n + 1) - A352807 (n + 1)

end

end A399260.P367810554081687119

/-! ## A399260.P10895886556389973377

`A059238(n+1)*A352807(n+1)/A329119(n+1)`
-/

namespace A399260.P10895886556389973377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059238 (n + 1) * A352807 (n + 1) : ℚ) / (A329119 (n + 1) : ℚ)

end

end A399260.P10895886556389973377

/-! ## A399260.P12287678458074907631

`A059238(n+1)*A399261(n+1)/A352806(n+1)`
-/

namespace A399260.P12287678458074907631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059238 (n + 1) * A399261 (n + 1) : ℚ) / (A352806 (n + 1) : ℚ)

end

end A399260.P12287678458074907631

/-!
# A399261: Order of the projective special semilinear group PSigmaL_2(K), where K is the finite field with q = A246655(n) elements.

The programs for A399261, there is no canonical definition to state claims against.
-/

/-! ## A399261.P2515843321662470675

`A352806(n+1)*A352807(n+1)/A329119(n+1)`
-/

namespace A399261.P2515843321662470675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352806 (n + 1) * A352807 (n + 1) : ℚ) / (A329119 (n + 1) : ℚ)

end

end A399261.P2515843321662470675

/-! ## A399261.P3517064510069441423

`A352807(n+1)/A001285(A071381(n+1))`
-/

namespace A399261.P3517064510069441423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352807 (n + 1) : ℚ) / (A001285 (A071381 (n + 1)).toNat : ℚ)

end

end A399261.P3517064510069441423

/-!
# A399262: Triangle read by rows: row n gives the n consecutive integers centered at n^2, excluding n^2 if n is even.

The programs for A399262, the canonical program `A399262.P9814319546926637261` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399262 has offset 1).

The definition of A399262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399262.P13080140589092471045

`comp[C(or(1, n), 2)]+n-col(n)`
-/

namespace A399262.P13080140589092471045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℤ) - (SequenceMachineLib.triCol n : ℤ)

end

end A399262.P13080140589092471045

namespace A399262

/-- `comp[C(or(1, n), 2)]+n-col(n)` -/
def P13080140589092471045.Spec : Prop :=
  ∀ n, P13080140589092471045.a n = A399262 (n + 1)

end A399262

/-! ## A399262.P12728910956581565716

`comp[2*n²+n]+n-col(n)`
-/

namespace A399262.P12728910956581565716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℤ) - (SequenceMachineLib.triCol n : ℤ)

end

end A399262.P12728910956581565716

namespace A399262

/-- `comp[2*n²+n]+n-col(n)` -/
def P12728910956581565716.Spec : Prop :=
  ∀ n, P12728910956581565716.a n = A399262 (n + 1)

end A399262

/-! ## A399262.P1062371533163192867

`Δ[n²]-col(n)+floor(sqrt(n/2))`
-/

namespace A399262.P1062371533163192867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + ⌊Real.sqrt ((n : ℚ) / 2 : ℝ)⌋

end

end A399262.P1062371533163192867

namespace A399262

/-- `Δ[n²]-col(n)+floor(sqrt(n/2))` -/
def P1062371533163192867.Spec : Prop :=
  ∀ n, P1062371533163192867.a n = A399262 (n + 1)

end A399262

/-! ## A399262.P13422982080641488030

`floor(sqrt(n/2))+C(row(n)+1, 2)+n+1`
-/

namespace A399262.P13422982080641488030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n : ℚ) / 2 : ℝ)⌋ + (Nat.choose (SequenceMachineLib.triRow n + 1) 2 : ℤ) + (n + 1 : ℤ)

end

end A399262.P13422982080641488030

namespace A399262

/-- `floor(sqrt(n/2))+C(row(n)+1, 2)+n+1` -/
def P13422982080641488030.Spec : Prop :=
  ∀ n, P13422982080641488030.a n = A399262 (n + 1)

end A399262

/-! ## A399262.P2147014556791439667

`A183301(n+1)+C(row(n)+1, 2)`
-/

namespace A399262.P2147014556791439667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183301 (n + 1) + (Nat.choose (SequenceMachineLib.triRow n + 1) 2 : ℤ)

end

end A399262.P2147014556791439667

namespace A399262

/-- `A183301(n+1)+C(row(n)+1, 2)` -/
def P2147014556791439667.Spec : Prop :=
  ∀ n, P2147014556791439667.a n = A399262 (n + 1)

end A399262

/-! ## A399262.P8526809077335543395

`comp[n+2*n²]+n-A002262(n)`
-/

namespace A399262.P8526809077335543395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ((n : ℤ) - A002262 n)

end

end A399262.P8526809077335543395

namespace A399262

/-- `comp[n+2*n²]+n-A002262(n)` -/
def P8526809077335543395.Spec : Prop :=
  ∀ n, P8526809077335543395.a n = A399262 (n + 1)

end A399262

/-! ## A399262.P9814319546926637261

`A183301(n+1)+A057944(n)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A399262

/-- `A183301(n+1)+A057944(n)` -/
def P9814319546926637261.Spec : Prop :=
  ∀ n, P9814319546926637261.a n = A399262 (n + 1)

theorem P9814319546926637261.correct : P9814319546926637261.Spec := by
  intro n
  simp only [A399262, Nat.add_sub_cancel]

end A399262

/-! ## A399262.P3018505155224712097

`A339183(n)+A004201(n+1)`
-/

namespace A399262.P3018505155224712097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 n + A004201 (n + 1)

end

end A399262.P3018505155224712097

namespace A399262

/-- `A339183(n)+A004201(n+1)` -/
def P3018505155224712097.Spec : Prop :=
  ∀ n, P3018505155224712097.a n = A399262 (n + 1)

end A399262

/-! ## A399262.P2806984712888632317

`A057944(n)+∑[runs[A097807(n)]]`
-/

namespace A399262.P2806984712888632317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A399262.P2806984712888632317

namespace A399262

/-- `A057944(n)+∑[runs[A097807(n)]]` -/
def P2806984712888632317.Spec : Prop :=
  ∀ n, P2806984712888632317.a n = A399262 (n + 1)

end A399262

/-!
# A399263: Numbers k such that A400000(k + 1) = A400000(k) + 1.

The programs for A399263, there is no canonical definition to state claims against.
-/

/-! ## A399263.P7487082859514905164

`eq[0, Δ[A400110(n+1)]]+1`
-/

namespace A399263.P7487082859514905164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399263.P7487082859514905164

/-! ## A399263.P1866667095808528888

`eq[1, Δ[A400000(n+1)]]+1`
-/

namespace A399263.P1866667095808528888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399263.P1866667095808528888

/-! ## A399263.P9525483134770817856

`eq[A400110(n+1), A400110(n+2)]+1`
-/

namespace A399263.P9525483134770817856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400110 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A399263.P9525483134770817856

/-! ## A399263.P18271748905537918009

`lt[Δ[A005653(A400110(n+1)+1)]², 1]+1`
-/

namespace A399263.P18271748905537918009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005653 (A400110 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A399263.P18271748905537918009

/-! ## A399263.P17231339540740957897

`comp[A400115(n+2)+n]+1`
-/

namespace A399263.P17231339540740957897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400115 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A399263.P17231339540740957897

/-!
# A399265: Numbers having two factor pairs whose absolute pairwise differences form the legs of a primitive Pythagorean triple.

The programs for A399265, there is no canonical definition to state claims against.
-/

/-! ## A399265.P984261827933386177

`A319078(A234134(n+1))`
-/

namespace A399265.P984261827933386177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319078 (A234134 (n + 1)).toNat

end

end A399265.P984261827933386177

/-! ## A399265.P11706822893942097427

`∑[A005878(∑[A084961(n+1)])]`
-/

namespace A399265.P11706822893942097427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005878 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399265.P11706822893942097427

/-!
# A399266: Number of nonnegative integer solutions to the equation x^2 + 8*y^2 = n.

The programs for A399266, the canonical program `A399266.P17038560030980740784` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399266 has offset 0).

The definition of A399266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399266.P17038560030980740784

`ceil(A226225(n)/4)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A399266

/-- `ceil(A226225(n)/4)` -/
def P17038560030980740784.Spec : Prop :=
  ∀ n, P17038560030980740784.a n = A399266 n

theorem P17038560030980740784.correct : P17038560030980740784.Spec := by
  intro n
  simp only [A399266]

end A399266

/-! ## A399266.P10668590363641220485

`row(row(A226225(n)%A111390(n+3)))`
-/

namespace A399266.P10668590363641220485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (SequenceMachineLib.triRow (Int.tmod (A226225 n) (A111390 (n + 3))).toNat)

end

end A399266.P10668590363641220485

namespace A399266

/-- `row(row(A226225(n)%A111390(n+3)))` -/
def P10668590363641220485.Spec : Prop :=
  ∀ n, (P10668590363641220485.a n : ℤ) = A399266 n

end A399266

/-! ## A399266.P16941863836103657529

`A185037(A181386(n+1))+A108731(A226225(n))`
-/

namespace A399266.P16941863836103657529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 (A181386 (n + 1)).toNat + A108731 (A226225 n).toNat

end

end A399266.P16941863836103657529

namespace A399266

/-- `A185037(A181386(n+1))+A108731(A226225(n))` -/
def P16941863836103657529.Spec : Prop :=
  ∀ n, P16941863836103657529.a n = A399266 n

end A399266

/-! ## A399266.P15532488654882467879

`A185037(A329265(2*n))+A108731(A226225(n))`
-/

namespace A399266.P15532488654882467879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 (A329265 (2 * n)).toNat + A108731 (A226225 n).toNat

end

end A399266.P15532488654882467879

namespace A399266

/-- `A185037(A329265(2*n))+A108731(A226225(n))` -/
def P15532488654882467879.Spec : Prop :=
  ∀ n, P15532488654882467879.a n = A399266 n

end A399266

/-! ## A399266.P3707722877951197058

`A108731(A226225(n)%A125637(n+1))`
-/

namespace A399266.P3707722877951197058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108731 (Int.tmod (A226225 n) (A125637 (n + 1))).toNat

end

end A399266.P3707722877951197058

namespace A399266

/-- `A108731(A226225(n)%A125637(n+1))` -/
def P3707722877951197058.Spec : Prop :=
  ∀ n, P3707722877951197058.a n = A399266 n

end A399266

/-!
# A399267: a(n) is the smallest nonnegative integer k where there are exactly n nonnegative integer solutions to x^2 + 8*y^2 = k.

The programs for A399267, there is no canonical definition to state claims against.
-/

/-! ## A399267.P3180428235827040983

`A263272(A373524(n)*A374288(n))`
-/

namespace A399267.P3180428235827040983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A373524 n * A374288 n).toNat

end

end A399267.P3180428235827040983

/-!
# A399268: Number of equivalence classes under rotations and reflections of n-step self-avoiding walks on the 6-dimensional hypercubic lattice that use all six coordinate axes and have no pair of nonconsecutive vertices that are adjacent in the lattice.

The programs for A399268, there is no canonical definition to state claims against.
-/

/-! ## A399268.P3858764746284874870

`A379303(A392405(n))`
-/

namespace A399268.P3858764746284874870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379303 (A392405 n).toNat

end

end A399268.P3858764746284874870

/-! ## A399268.P9157514472866919944

`A379303(abs(n-A011923(n)))`
-/

namespace A399268.P9157514472866919944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379303 |(n : ℤ) - A011923 n|.toNat

end

end A399268.P9157514472866919944

/-! ## A399268.P10400018067403842743

`A025444(A000142(n)+A000079(n))`
-/

namespace A399268.P10400018067403842743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (A000142 n + A000079 n).toNat

end

end A399268.P10400018067403842743

/-! ## A399268.P954939804320911206

`A143684(n)-A303429(A124551(n))`
-/

namespace A399268.P954939804320911206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143684 n - A303429 (A124551 n).toNat

end

end A399268.P954939804320911206

/-!
# A399270: Number of nonnegative integer solutions to the equation x^2 + 9*y^2 = n.

The programs for A399270, there is no canonical definition to state claims against.
-/

/-! ## A399270.P4328784206881315069

`A010872(A000925(n)*A056105(n))`
-/

namespace A399270.P4328784206881315069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A000925 n * A056105 n).toNat

end

end A399270.P4328784206881315069

/-! ## A399270.P2896380857935327717

`A231719(lcm(A072493(n+1), A258034(n)))`
-/

namespace A399270.P2896380857935327717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231719 (Int.lcm (A072493 (n + 1)) (A258034 n))

end

end A399270.P2896380857935327717

/-! ## A399270.P7441708290142051337

`A045852(n)%(3%A141214(n+3))`
-/

namespace A399270.P7441708290142051337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045852 n) (Int.tmod 3 (A141214 (n + 3)))

end

end A399270.P7441708290142051337

/-! ## A399270.P6033475563510450828

`A124766(A052382(n+1)*A258034(n))`
-/

namespace A399270.P6033475563510450828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A052382 (n + 1) * A258034 n).toNat

end

end A399270.P6033475563510450828

/-! ## A399270.P17087244105848930183

`A045852(n)%A161916(A049207(n))`
-/

namespace A399270.P17087244105848930183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045852 n) (A161916 (A049207 n).toNat)

end

end A399270.P17087244105848930183

/-!
# A399275: Number of perfect matchings of the 6 X 2n grid graph embedded on the Klein bottle.

The programs for A399275, there is no canonical definition to state claims against.
-/

/-! ## A399275.P13067217417945851531

`A103999(∑[n+4]+2)`
-/

namespace A399275.P13067217417945851531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103999 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A399275.P13067217417945851531

/-!
# A399276: Number of ways writing the n-th semiprime as a sum of two primes.

The programs for A399276, the canonical program `A399276.P15390692254121348607` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399276 has offset 1).

The definition of A399276 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399276.P15390692254121348607

`A061358(A001358(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A399276

/-- `A061358(A001358(n+1))` -/
def P15390692254121348607.Spec : Prop :=
  ∀ n, P15390692254121348607.a n = A399276 (n + 1)

theorem P15390692254121348607.correct : P15390692254121348607.Spec := by
  intro n
  simp only [A399276, Nat.add_sub_cancel]

end A399276

/-! ## A399276.P16085238771468287058

`A061358(A176540(n+2))`
-/

namespace A399276.P16085238771468287058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A176540 (n + 2)).toNat

end

end A399276.P16085238771468287058

namespace A399276

/-- `A061358(A176540(n+2))` -/
def P16085238771468287058.Spec : Prop :=
  ∀ n, P16085238771468287058.a n = A399276 (n + 1)

end A399276

/-! ## A399276.P17226797567643910815

`A061358(lt[1, A105700(n)])`
-/

namespace A399276.P17226797567643910815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A399276.P17226797567643910815

namespace A399276

/-- `A061358(lt[1, A105700(n)])` -/
def P17226797567643910815.Spec : Prop :=
  ∀ n, P17226797567643910815.a n = A399276 (n + 1)

end A399276

/-! ## A399276.P2314651435705444555

`A061358(eq[2, A105700(n)])`
-/

namespace A399276.P2314651435705444555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A399276.P2314651435705444555

namespace A399276

/-- `A061358(eq[2, A105700(n)])` -/
def P2314651435705444555.Spec : Prop :=
  ∀ n, P2314651435705444555.a n = A399276 (n + 1)

end A399276

/-! ## A399276.P2947433413477259011

`A061358(eq[2, A226378(n)])`
-/

namespace A399276.P2947433413477259011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A399276.P2947433413477259011

namespace A399276

/-- `A061358(eq[2, A226378(n)])` -/
def P2947433413477259011.Spec : Prop :=
  ∀ n, P2947433413477259011.a n = A399276 (n + 1)

end A399276

/-!
# A399287: Primes p such that if p < q < r are consecutive primes, p + 2*q*r, q + 2*p*r, and r + 2*p*q are all primes.

The programs for A399287, there is no canonical definition to state claims against.
-/

/-! ## A399287.P13119838938734575626

`A123988(A183156(n))`
-/

namespace A399287.P13119838938734575626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123988 (A183156 n).toNat

end

end A399287.P13119838938734575626

/-!
# A399288: a(n) = tau_{n}(n!) = number of ordered n-factorizations of n!.

The programs for A399288, there is no canonical definition to state claims against.
-/

/-! ## A399288.P10852204939813137580

`∏{e}[(n+1)!, C(#+n, n)]`
-/

namespace A399288.P10852204939813137580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + n) n

end

end A399288.P10852204939813137580

/-!
# A399289: Number of permutations of [n] avoiding simultaneously consecutive patterns 1234 and 321.

The programs for A399289, there is no canonical definition to state claims against.
-/

/-! ## A399289.P1228890642797477069

`A054899(A000522(n))+A000085(n)`
-/

namespace A399289.P1228890642797477069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A000522 n).toNat + A000085 n

end

end A399289.P1228890642797477069

/-! ## A399289.P16320655788824775527

`A024417(or(A005651(n), A293266(n)))`
-/

namespace A399289.P16320655788824775527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (Int.lor (A005651 n) (A293266 n)).toNat

end

end A399289.P16320655788824775527

/-! ## A399289.P6819491125663511547

`A024417(or(A005651(n), A326984(n)))`
-/

namespace A399289.P6819491125663511547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (Int.lor (A005651 n) (A326984 n)).toNat

end

end A399289.P6819491125663511547

/-!
# A399290: Smallest prime that is the sum of n distinct elements from the union of primes and squares.

The programs for A399290, there is no canonical definition to state claims against.
-/

/-! ## A399290.P9165307193371523077

`eq[A001511(A196255(n+1)), A003415(n)]`
-/

namespace A399290.P9165307193371523077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A196255 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399290.P9165307193371523077

/-! ## A399290.P4773222616310970430

`eq[A001511(A196255(n+1)), A332003(n)]`
-/

namespace A399290.P4773222616310970430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A196255 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332003 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399290.P4773222616310970430

/-! ## A399290.P14339635234396522833

`∪[A059801(n+1)%A062608(n+2), A153767(n+4)]`
-/

namespace A399290.P14339635234396522833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059801 (n + 1)) (A062608 (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153767 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399290.P14339635234396522833

/-! ## A399290.P1621948049396369491

`∪[A059801(n+1), A153767(n+4)]%A174326(3*(n+1))`
-/

namespace A399290.P1621948049396369491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153767 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A174326 (3 * (n + 1)))

end

end A399290.P1621948049396369491

/-! ## A399290.P16613262508726128523

`A153767(A032555(n+1))-A000038(A323053(n))`
-/

namespace A399290.P16613262508726128523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153767 (A032555 (n + 1)).toNat - A000038 (A323053 n).toNat

end

end A399290.P16613262508726128523

/-!
# A399291: Number T(n,k) of n X n upper triangular binary matrices with row sums and column sums in {0, 2} and exactly k zero rows; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A399291, there is no canonical definition to state claims against.
-/

/-! ## A399291.P7854581399866728746

`A331677((A135814(n)+1)!+1)`
-/

namespace A399291.P7854581399866728746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331677 (Nat.factorial (A135814 n + 1).toNat + 1)

end

end A399291.P7854581399866728746

/-! ## A399291.P16504979876972918023

`A126710(n+1)%2*A384222(2*n+3)`
-/

namespace A399291.P16504979876972918023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126710 (n + 1)) 2 * A384222 (2 * n + 3)

end

end A399291.P16504979876972918023

/-! ## A399291.P13659269883692939087

`A089839(A147746(n)*A325873(n))`
-/

namespace A399291.P13659269883692939087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089839 (A147746 n * A325873 n).toNat

end

end A399291.P13659269883692939087

/-! ## A399291.P13638053544674719328

`A059841(A080992(n+1))*A270061(n)`
-/

namespace A399291.P13638053544674719328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A080992 (n + 1)).toNat * A270061 n

end

end A399291.P13638053544674719328

/-! ## A399291.P16370751403269794185

`A353305(A084938(n)*A182703(n+1))`
-/

namespace A399291.P16370751403269794185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353305 (A084938 n * A182703 (n + 1)).toNat

end

end A399291.P16370751403269794185

/-!
# A399299: Numbers that cannot be obtained by removing the first and last digits of a square.

The programs for A399299, there is no canonical definition to state claims against.
-/

/-! ## A399299.P4479987589150651553

`comp[A398629(1+n)]`
-/

namespace A399299.P4479987589150651553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398629 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A399299.P4479987589150651553

