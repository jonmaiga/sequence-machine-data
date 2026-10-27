import SequenceMachineLib
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C025

/-!
# A233800: 

The programs for A233800, there is no canonical definition to state claims against.
-/

/-! ## A233800.P13968077156178215606

`A233801(Δ[A264443(n)])`
-/

namespace A233800.P13968077156178215606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233801 (f1 (n + 1) - f1 n).toNat

end

end A233800.P13968077156178215606

/-!
# A233802: Number of (1+2)X(n+2) 0..3 arrays with no increasing sequence of length 3 horizontally, vertically or antidiagonally downwards.

The programs for A233802, there is no canonical definition to state claims against.
-/

/-! ## A233802.P1966274737259342890

`A233801(∑[n]+1)`
-/

namespace A233802.P1966274737259342890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233801 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233802.P1966274737259342890

/-! ## A233802.P293898863627585857

`record[A010054(n)*A233801(n+1)]`
-/

namespace A233802.P293898863627585857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233802.P293898863627585857

/-! ## A233802.P16799176436205329644

`record[root(A233801(n+1), A013609(n))]`
-/

namespace A233802.P16799176436205329644
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233801 (n + 1) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233802.P16799176436205329644

/-! ## A233802.P18132409990915920811

`record[gcd(A002262(n), A233801(n+1))]`
-/

namespace A233802.P18132409990915920811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A233801 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233802.P18132409990915920811

/-! ## A233802.P5674218040634959716

`record[root(A233801(n+1), A076110(n+1))]`
-/

namespace A233802.P5674218040634959716
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233801 (n + 1) : ℝ) ^ (1 / (A076110 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233802.P5674218040634959716

/-!
# A233803: Number of (2+2) X (n+2) 0..3 arrays with no increasing sequence of length 3 horizontally, vertically or antidiagonally downwards.

The programs for A233803, there is no canonical definition to state claims against.
-/

/-! ## A233803.P13084009778703791652

`A233801(∑[n+1]+2)`
-/

namespace A233803.P13084009778703791652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233801 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233803.P13084009778703791652

/-!
# A233804: 

The programs for A233804, there is no canonical definition to state claims against.
-/

/-! ## A233804.P6163178138245977424

`A233801(A034856(n+1)+5)`
-/

namespace A233804.P6163178138245977424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233801 (A034856 (n + 1) + 5).toNat

end

end A233804.P6163178138245977424

/-!
# A233805: 

The programs for A233805, there is no canonical definition to state claims against.
-/

/-! ## A233805.P16825998673114684744

`A233801(A052905(n)+9)`
-/

namespace A233805.P16825998673114684744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233801 (A052905 n + 9).toNat

end

end A233805.P16825998673114684744

/-!
# A233807: Number of tilings of an n X n square using right trominoes and at most one monomino.

The programs for A233807, there is no canonical definition to state claims against.
-/

/-! ## A233807.P8130012518785420625

`A007376(A127109(n))*A345163(3*n+1)`
-/

namespace A233807.P8130012518785420625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A127109 n).toNat * A345163 (3 * n + 1)

end

end A233807.P8130012518785420625

/-! ## A233807.P6784624138462338931

`A190616(ceil(2^(n-1))+4)`
-/

namespace A233807.P6784624138462338931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190616 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + 4).toNat

end

end A233807.P6784624138462338931

/-!
# A233809: a(n) = Sum_{k=1..n} prime(k) * s(k), where s(k) = (-1)^(floor(k/2)).

The programs for A233809, the canonical program `A233809.P14943293429112306030` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233809 has offset 1).

The definition of A233809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233809.P10649161018239359275

`∑[(-1)^∑[n]*A000040(n+1)]`
-/

namespace A233809.P10649161018239359275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233809.P10649161018239359275

namespace A233809

/-- `∑[(-1)^∑[n]*A000040(n+1)]` -/
def P10649161018239359275.Spec : Prop :=
  ∀ n, P10649161018239359275.a n = A233809 (n + 1)

end A233809

/-! ## A233809.P14943293429112306030

`∑[A000040(n+1)*A087960(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A233809

/-- `∑[A000040(n+1)*A087960(n)]` -/
def P14943293429112306030.Spec : Prop :=
  ∀ n, P14943293429112306030.a n = A233809 (n + 1)

theorem P14943293429112306030.correct : P14943293429112306030.Spec := by
  intro n
  simp only [A233809, Nat.add_sub_cancel]

end A233809

/-! ## A233809.P12502700039632896952

`∑[A000040(n+1)*A033999(A110654(n))]`
-/

namespace A233809.P12502700039632896952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A033999 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233809.P12502700039632896952

namespace A233809

/-- `∑[A000040(n+1)*A033999(A110654(n))]` -/
def P12502700039632896952.Spec : Prop :=
  ∀ n, P12502700039632896952.a n = A233809 (n + 1)

end A233809

/-! ## A233809.P1079567536680554273

`∑[A000040(n+1)*A033999(A276150(n))]`
-/

namespace A233809.P1079567536680554273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A033999 (A276150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233809.P1079567536680554273

namespace A233809

/-- `∑[A000040(n+1)*A033999(A276150(n))]` -/
def P1079567536680554273.Spec : Prop :=
  ∀ n, P1079567536680554273.a n = A233809 (n + 1)

end A233809

/-! ## A233809.P9176753958001660746

`∑[A000040(n+1)*A057077(n+1)]`
-/

namespace A233809.P9176753958001660746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A057077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233809.P9176753958001660746

namespace A233809

/-- `∑[A000040(n+1)*A057077(n+1)]` -/
def P9176753958001660746.Spec : Prop :=
  ∀ n, P9176753958001660746.a n = A233809 (n + 1)

end A233809

/-! ## A233809.P1159922377069439690

`∑[A000040(n+1)/A087960(n+4)]`
-/

namespace A233809.P1159922377069439690
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A087960 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233809.P1159922377069439690

namespace A233809

/-- `∑[A000040(n+1)/A087960(n+4)]` -/
def P1159922377069439690.Spec : Prop :=
  ∀ n, P1159922377069439690.a n = (A233809 (n + 1) : ℚ)

end A233809

/-! ## A233809.P7350133885028378372

`∑[p?[A000961(n+1)]*A057077(n+1)]`
-/

namespace A233809.P7350133885028378372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A057077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233809.P7350133885028378372

namespace A233809

/-- `∑[p?[A000961(n+1)]*A057077(n+1)]` -/
def P7350133885028378372.Spec : Prop :=
  ∀ n, P7350133885028378372.a n = A233809 (n + 1)

end A233809

/-! ## A233809.P1214325476819453626

`∑[A000040(n+1)*A165471(A112046(3*n+1))]`
-/

namespace A233809.P1214325476819453626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A165471 (A112046 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233809.P1214325476819453626

namespace A233809

/-- `∑[A000040(n+1)*A165471(A112046(3*n+1))]` -/
def P1214325476819453626.Spec : Prop :=
  ∀ n, P1214325476819453626.a n = A233809 (n + 1)

end A233809

/-! ## A233809.P3654225144326992217

`∑[A000040(n+1)*A091337(2*n+1)]`
-/

namespace A233809.P3654225144326992217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A091337 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233809.P3654225144326992217

namespace A233809

/-- `∑[A000040(n+1)*A091337(2*n+1)]` -/
def P3654225144326992217.Spec : Prop :=
  ∀ n, P3654225144326992217.a n = A233809 (n + 1)

end A233809

/-! ## A233809.P3764931127207235154

`∑[A000040(n+1)*A209615(A294178(n))]`
-/

namespace A233809.P3764931127207235154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A209615 (A294178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233809.P3764931127207235154

namespace A233809

/-- `∑[A000040(n+1)*A209615(A294178(n))]` -/
def P3764931127207235154.Spec : Prop :=
  ∀ n, P3764931127207235154.a n = A233809 (n + 1)

end A233809

/-! ## A233809.P3016904200580890641

`∑[A000040(n+1)*A081729(A055998(n))]`
-/

namespace A233809.P3016904200580890641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A081729 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233809.P3016904200580890641

namespace A233809

/-- `∑[A000040(n+1)*A081729(A055998(n))]` -/
def P3016904200580890641.Spec : Prop :=
  ∀ n, P3016904200580890641.a n = A233809 (n + 1)

end A233809

/-! ## A233809.P11678016871824909187

`∑[A000040(n+1)*A010815(A001318(n))]`
-/

namespace A233809.P11678016871824909187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A010815 (A001318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233809.P11678016871824909187

namespace A233809

/-- `∑[A000040(n+1)*A010815(A001318(n))]` -/
def P11678016871824909187.Spec : Prop :=
  ∀ n, P11678016871824909187.a n = A233809 (n + 1)

end A233809

/-! ## A233809.P4505646273184386596

`∑[A000040(n+1)*A033999(∑[n])]`
-/

namespace A233809.P4505646273184386596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A033999 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233809.P4505646273184386596

namespace A233809

/-- `∑[A000040(n+1)*A033999(∑[n])]` -/
def P4505646273184386596.Spec : Prop :=
  ∀ n, P4505646273184386596.a n = A233809 (n + 1)

end A233809

/-! ## A233809.P15254246328284394331

`∑[A000040(n+1)*A009001(n²+n)]`
-/

namespace A233809.P15254246328284394331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A009001 (n ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233809.P15254246328284394331

namespace A233809

/-- `∑[A000040(n+1)*A009001(n²+n)]` -/
def P15254246328284394331.Spec : Prop :=
  ∀ n, P15254246328284394331.a n = A233809 (n + 1)

end A233809

/-!
# A233810: Number of starting configurations of Nim with n pieces such that 1st player wins. Partitions of n such that their xor-sum is nonzero.

The programs for A233810, there is no canonical definition to state claims against.
-/

/-! ## A233810.P17893628384292584270

`A000041(n)-A050314(∑[n])`
-/

namespace A233810.P17893628384292584270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A050314 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233810.P17893628384292584270

/-! ## A233810.P7218260751380966532

`∑[A002865(n)]-A050314(∑[n])`
-/

namespace A233810.P7218260751380966532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A050314 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A233810.P7218260751380966532

/-! ## A233810.P2082542877714707156

`A000065(n)+1-A050314(∑[n])`
-/

namespace A233810.P2082542877714707156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A050314 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A233810.P2082542877714707156

/-! ## A233810.P187192087419540554

`abs(A000041(n)-A050314(A000217(n)))`
-/

namespace A233810.P187192087419540554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000041 n - A050314 (A000217 n).toNat|

end

end A233810.P187192087419540554

/-! ## A233810.P6031496048273707260

`sqrt(A001255(n))-A050314(A000217(n))`
-/

namespace A233810.P6031496048273707260
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A050314 (A000217 n).toNat : ℝ)

end

end A233810.P6031496048273707260

/-! ## A233810.P8050020466163541541

`A000065(n)+1-A050314(A000217(n))`
-/

namespace A233810.P8050020466163541541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1 - A050314 (A000217 n).toNat

end

end A233810.P8050020466163541541

/-! ## A233810.P14943092612592962398

`A035363(2*n)-A050314(A000217(n))`
-/

namespace A233810.P14943092612592962398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A050314 (A000217 n).toNat

end

end A233810.P14943092612592962398

/-! ## A233810.P9516792110017298470

`(A000041(n)-A050314(A000217(n)))*A000040(n+1)%2`
-/

namespace A233810.P9516792110017298470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000041 n - A050314 (A000217 n).toNat) * Int.tmod (A000040 (n + 1)) 2

end

end A233810.P9516792110017298470

/-! ## A233810.P8149606889406428794

`(A000041(n)-A050314(A000217(n)))*A018252(((-1)^n)²)`
-/

namespace A233810.P8149606889406428794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000041 n - A050314 (A000217 n).toNat) * A018252 (((-1) ^ n) ^ 2).toNat

end

end A233810.P8149606889406428794

/-!
# A233811: Number of (n+1) X (1+1) 0..5 arrays with every 2 X 2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233811, there is no canonical definition to state claims against.
-/

/-! ## A233811.P12745389078707799280

`A233818(∑[n]+1)`
-/

namespace A233811.P12745389078707799280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233811.P12745389078707799280

/-! ## A233811.P17488036122564511187

`lcm(2, A233818(A000124(n)))`
-/

namespace A233811.P17488036122564511187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233818 (A000124 n).toNat)

end

end A233811.P17488036122564511187

/-! ## A233811.P6905235147390461291

`record[A233818(A056534(n+1))]`
-/

namespace A233811.P6905235147390461291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233811.P6905235147390461291

/-! ## A233811.P5821420510763971827

`record[A233818(A166017(n+1))]`
-/

namespace A233811.P5821420510763971827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A166017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233811.P5821420510763971827

/-! ## A233811.P11871103573099494958

`record[A233818(A286244(n+1))]`
-/

namespace A233811.P11871103573099494958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A286244 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233811.P11871103573099494958

/-!
# A233812: Number of (n+1) X (2+1) 0..5 arrays with every 2 X 2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233812, there is no canonical definition to state claims against.
-/

/-! ## A233812.P2471049364342565203

`A233818(∑[n+1]+2)`
-/

namespace A233812.P2471049364342565203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233812.P2471049364342565203

/-! ## A233812.P4020959423341877746

`lcm(2, A233818(A133263(n+1)))`
-/

namespace A233812.P4020959423341877746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233818 (A133263 (n + 1)).toNat)

end

end A233812.P4020959423341877746

/-! ## A233812.P10942310684286939676

`record[A233818(A166017(n+1)+1)]`
-/

namespace A233812.P10942310684286939676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A166017 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233812.P10942310684286939676

/-! ## A233812.P9846423137320985194

`record[A010054(n)*A233818(n+2)]`
-/

namespace A233812.P9846423137320985194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233812.P9846423137320985194

/-! ## A233812.P10322592247295517710

`record[A233818(A133263(∑{e}[n+1, #]+1))]`
-/

namespace A233812.P10322592247295517710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233812.P10322592247295517710

/-!
# A233813: Number of (n+1) X (3+1) 0..5 arrays with every 2 X 2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233813, there is no canonical definition to state claims against.
-/

/-! ## A233813.P15003122603765568755

`A233818(∑[n+2]+4)`
-/

namespace A233813.P15003122603765568755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233813.P15003122603765568755

/-! ## A233813.P9686413909933577336

`lcm(2, A233818(A167614(n+1)))`
-/

namespace A233813.P9686413909933577336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233818 (A167614 (n + 1)).toNat)

end

end A233813.P9686413909933577336

/-! ## A233813.P14059486449977725895

`A233818(A167614(n+1))+A184955(n)`
-/

namespace A233813.P14059486449977725895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A167614 (n + 1)).toNat + A184955 n

end

end A233813.P14059486449977725895

/-! ## A233813.P1693688331998020979

`A233818(A167614(n+1))+A185255(n)`
-/

namespace A233813.P1693688331998020979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A167614 (n + 1)).toNat + A185255 n

end

end A233813.P1693688331998020979

/-! ## A233813.P232193569359589667

`A119335(n)*A233818(A167614(n+1))`
-/

namespace A233813.P232193569359589667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A233818 (A167614 (n + 1)).toNat

end

end A233813.P232193569359589667

/-!
# A233814: Number of (n+1)X(4+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233814, there is no canonical definition to state claims against.
-/

/-! ## A233814.P18418072636613835412

`A233818(∑[n+3]+7)`
-/

namespace A233814.P18418072636613835412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A233814.P18418072636613835412

/-! ## A233814.P14585487241074881235

`lcm(2, A233818(A027379(n+2)))`
-/

namespace A233814.P14585487241074881235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233818 (A027379 (n + 2)).toNat)

end

end A233814.P14585487241074881235

/-! ## A233814.P3412428149769753509

`A233818(A027379(n+2))+A184955(n)`
-/

namespace A233814.P3412428149769753509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A027379 (n + 2)).toNat + A184955 n

end

end A233814.P3412428149769753509

/-! ## A233814.P18225103867746122457

`A233818(A027379(n+2))+A185255(n)`
-/

namespace A233814.P18225103867746122457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A027379 (n + 2)).toNat + A185255 n

end

end A233814.P18225103867746122457

/-! ## A233814.P923086039579537006

`A119335(n)*A233818(A027379(n+2))`
-/

namespace A233814.P923086039579537006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A233818 (A027379 (n + 2)).toNat

end

end A233814.P923086039579537006

/-!
# A233815: Number of (n+1)X(5+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233815, there is no canonical definition to state claims against.
-/

/-! ## A233815.P15795209428878417121

`A233818(A374005(n+1))`
-/

namespace A233815.P15795209428878417121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A374005 (n + 1)).toNat

end

end A233815.P15795209428878417121

/-! ## A233815.P4649172939066477085

`A233818(A167499(n+3))`
-/

namespace A233815.P4649172939066477085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A167499 (n + 3)).toNat

end

end A233815.P4649172939066477085

/-! ## A233815.P975831844429267175

`A233818(A155212(n)+13)`
-/

namespace A233815.P975831844429267175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A155212 n + 13).toNat

end

end A233815.P975831844429267175

/-! ## A233815.P13508022130344603608

`A233818(A056000(n)+15)`
-/

namespace A233815.P13508022130344603608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A056000 n + 15).toNat

end

end A233815.P13508022130344603608

/-! ## A233815.P15662367591990399062

`A233818(eq[7, A066657(n)])`
-/

namespace A233815.P15662367591990399062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233815.P15662367591990399062

/-!
# A233816: Number of (n+1)X(6+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233816, there is no canonical definition to state claims against.
-/

/-! ## A233816.P10452990856882318398

`A233818(A374007(n+1))`
-/

namespace A233816.P10452990856882318398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A374007 (n + 1)).toNat

end

end A233816.P10452990856882318398

/-! ## A233816.P15083892223472840429

`A233818(A166136(n+4))`
-/

namespace A233816.P15083892223472840429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A166136 (n + 4)).toNat

end

end A233816.P15083892223472840429

/-! ## A233816.P11734507088877317591

`A233818(A056115(n)+21)`
-/

namespace A233816.P11734507088877317591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A056115 n + 21).toNat

end

end A233816.P11734507088877317591

/-! ## A233816.P10701748755321428564

`A233818(A167614(n+4)+3)`
-/

namespace A233816.P10701748755321428564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A167614 (n + 4) + 3).toNat

end

end A233816.P10701748755321428564

/-! ## A233816.P9323247138754507150

`A233818(eq[7, A131818(n+1)])`
-/

namespace A233816.P9323247138754507150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233816.P9323247138754507150

/-!
# A233817: Number of (n+1)X(7+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233817, there is no canonical definition to state claims against.
-/

/-! ## A233817.P1093538423278367702

`A233818(A374008(n+1))`
-/

namespace A233817.P1093538423278367702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A374008 (n + 1)).toNat

end

end A233817.P1093538423278367702

/-! ## A233817.P11186740452351152170

`A233818(A056119(n)+28)`
-/

namespace A233817.P11186740452351152170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A056119 n + 28).toNat

end

end A233817.P11186740452351152170

/-! ## A233817.P7909395288224086432

`A233818(eq[11, A066657(n)])`
-/

namespace A233817.P7909395288224086432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233817.P7909395288224086432

/-! ## A233817.P12394474763699505749

`A233818(A166136(n+5)+1)`
-/

namespace A233817.P12394474763699505749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A166136 (n + 5) + 1).toNat

end

end A233817.P12394474763699505749

/-! ## A233817.P3033357074759375108

`A233818(A000124(n+6)+6)`
-/

namespace A233817.P3033357074759375108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233818 (A000124 (n + 6) + 6).toNat

end

end A233817.P3033357074759375108

/-!
# A233819: Least odd integer of each prime signature ordered by prime signatures occurrence.

The programs for A233819, there is no canonical definition to state claims against.
-/

/-! ## A233819.P7869771663196657256

`A003961(A025487(n+1))`
-/

namespace A233819.P7869771663196657256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A025487 (n + 1)).toNat

end

end A233819.P7869771663196657256

/-! ## A233819.P1410958827899729164

`A330681(n+1)/A000079(A051282(n+1))`
-/

namespace A233819.P1410958827899729164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330681 (n + 1) : ℚ) / (A000079 (A051282 (n + 1)).toNat : ℚ)

end

end A233819.P1410958827899729164

/-! ## A233819.P5678013236984897385

`A330681(n+1)/A000079(val(A330681(n+1), 2))`
-/

namespace A233819.P5678013236984897385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330681 (n + 1) : ℚ) / (A000079 (SequenceMachineLib.valuation (A330681 (n + 1)).toNat 2) : ℚ)

end

end A233819.P5678013236984897385

/-! ## A233819.P2433489030269667429

`A003961(A247451(n+1))*A003961(A307107(n+1))`
-/

namespace A233819.P2433489030269667429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A247451 (n + 1)).toNat * A003961 (A307107 (n + 1)).toNat

end

end A233819.P2433489030269667429

/-! ## A233819.P2641865633801593510

`∑{d}[A025487(n+1), A003972(#)]`
-/

namespace A233819.P2641865633801593510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003972 d

end

end A233819.P2641865633801593510

/-! ## A233819.P1373542367797931306

`A147516(A393258(n+1))`
-/

namespace A233819.P1373542367797931306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147516 (A393258 (n + 1)).toNat

end

end A233819.P1373542367797931306

/-! ## A233819.P14541560216682419418

`A003961(record[A046523(n+1)])`
-/

namespace A233819.P14541560216682419418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A233819.P14541560216682419418

/-! ## A233819.P5362959847408839638

`A359600(A025487(2*n+1-n))`
-/

namespace A233819.P5362959847408839638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359600 (A025487 (2 * n + 1 - n)).toNat

end

end A233819.P5362959847408839638

/-!
# A233820: Period 4: repeat [20, 5, 15, 10].

The programs for A233820, the canonical program `A233820.P17542053785019307327` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233820 has offset 1).

The definition of A233820 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A233820.anchor (n : ℕ) (hn : 1 ≤ n) : A233820 n = (([20, 5, 15, 10].getD ((n - 1) % 4) 0 : ℕ) : ℤ)` in `Proof.A233.A233820`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233820.P17542053785019307327

`a(n-4)` with `a(0)=20, a(1)=5, a(2)=15, a(3)=10`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233820

/-- `a(n-4)` -/
def P17542053785019307327.Spec : Prop :=
  ∀ n, (P17542053785019307327.a n : ℤ) = A233820 (n + 1)

theorem P17542053785019307327.correct : P17542053785019307327.Spec := by
  intro n
  simp only [A233820, Nat.add_sub_cancel]

end A233820

/-!
# A233822: a(n) = 2*R(n) - R(n+1), where R(n) is the n-th Ramanujan prime.

The programs for A233822, there is no canonical definition to state claims against.
-/

/-! ## A233822.P10803423671850097061

`A034694(A084139(n))-A182873(n+1)`
-/

namespace A233822.P10803423671850097061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A084139 n).toNat - A182873 (n + 1)

end

end A233822.P10803423671850097061

/-! ## A233822.P1139837809610186679

`A104272(n+1)-Δ[A104272(n+1)%A179666(n+1)]`
-/

namespace A233822.P1139837809610186679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104272 (n + 1)) (A179666 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - (f1 (n + 1) - f1 n)

end

end A233822.P1139837809610186679

/-! ## A233822.P12276068650463848457

`A005843(A104272(n+1))-A104272(n+2)`
-/

namespace A233822.P12276068650463848457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A104272 (n + 1)).toNat - A104272 (n + 2)

end

end A233822.P12276068650463848457

/-! ## A233822.P4647308875153163619

`A104272(n+1)-Δ[A104272(n+1)]%A195744(n)`
-/

namespace A233822.P4647308875153163619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - Int.tmod (f1 (n + 1) - f1 n) (A195744 n)

end

end A233822.P4647308875153163619

/-!
# A233823: Least prime in arithmetic progression of consecutive primes 6^n+k, 6^n+k+g, 6^n+k+2*g with smallest k.

The programs for A233823, there is no canonical definition to state claims against.
-/

/-! ## A233823.P14496177340038149553

`6^(n+2)+A233546(n+2)`
-/

namespace A233823.P14496177340038149553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ (n + 2) : ℤ) + A233546 (n + 2)

end

end A233823.P14496177340038149553

/-! ## A233823.P8481092449501069115

`A233546(n+2)+A000400(n+2)`
-/

namespace A233823.P8481092449501069115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233546 (n + 2) + A000400 (n + 2)

end

end A233823.P8481092449501069115

/-!
# A233824: A recurrent sequence in Panaitopol's formula for pi(x), where pi(x) is the number of primes <= x.

The programs for A233824, there is no canonical definition to state claims against.
-/

/-! ## A233824.P11302829245459344395

`Δ[A387674(n)]`
-/

namespace A233824.P11302829245459344395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233824.P11302829245459344395

/-! ## A233824.P3277826117359000738

`record[A085771(n+1)]`
-/

namespace A233824.P3277826117359000738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233824.P3277826117359000738

/-! ## A233824.P8439292032064851305

`abs(Δ[A104985(n)]+1)`
-/

namespace A233824.P8439292032064851305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 1|

end

end A233824.P8439292032064851305

/-! ## A233824.P8303755704425100688

`∑{d}[n, #*A112354(#)]`
-/

namespace A233824.P8303755704425100688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A112354 d

end

end A233824.P8303755704425100688

/-! ## A233824.P502859567366928653

`xor(C(2, n+2), A003319(n+1))`
-/

namespace A233824.P502859567366928653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose 2 (n + 2) : ℤ) (A003319 (n + 1))

end

end A233824.P502859567366928653

/-! ## A233824.P15963849729737311942

`(floor(acot(n))-1)*A167894(n+1)`
-/

namespace A233824.P15963849729737311942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1) * A167894 (n + 1)

end

end A233824.P15963849729737311942

/-! ## A233824.P6149024563272534891

`A085771(A134869(n+1))`
-/

namespace A233824.P6149024563272534891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 (A134869 (n + 1)).toNat

end

end A233824.P6149024563272534891

/-! ## A233824.P5511771542692581967

`A085771(A133263(n)+n)`
-/

namespace A233824.P5511771542692581967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 (A133263 n + (n : ℤ)).toNat

end

end A233824.P5511771542692581967

/-! ## A233824.P15636615653088800871

`A085771(A238531(n+1)+n)`
-/

namespace A233824.P15636615653088800871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 (A238531 (n + 1) + (n : ℤ)).toNat

end

end A233824.P15636615653088800871

/-! ## A233824.P9667878393932168452

`A003319(n+1)-A000007(n)`
-/

namespace A233824.P9667878393932168452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003319 (n + 1) - A000007 n

end

end A233824.P9667878393932168452

/-!
# A233827: a(n) = 8*binomial(6*n+8,n)/(6*n+8).

The programs for A233827, the canonical program `A233827.P4663174955199762185` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233827 has offset 0).

The definition of A233827 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A233827.anchor (n : ℕ) : (A233827 n : ℚ) = (8 * Nat.choose (6 * n + 8) n : ℚ) / (6 * n + 8 : ℚ)` in `Proof.A233.A233827`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233827.P4663174955199762185

`8*C(6*n+8, n)/(6*n+8)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233827

/-- `8*C(6*n+8, n)/(6*n+8)` -/
def P4663174955199762185.Spec : Prop :=
  ∀ n, P4663174955199762185.a n = (A233827 n : ℚ)

end A233827

/-! ## A233827.P7260777798983960960

`A212072(n+1)-A212071(n+1)`
-/

namespace A233827.P7260777798983960960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212072 (n + 1) - A212071 (n + 1)

end

end A233827.P7260777798983960960

namespace A233827

/-- `A212072(n+1)-A212071(n+1)` -/
def P7260777798983960960.Spec : Prop :=
  ∀ n, P7260777798983960960.a n = A233827 n

end A233827

/-! ## A233827.P5611668542616932389

`A212072(n+1)-(A233743(n)+A002295(n+1))`
-/

namespace A233827.P5611668542616932389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212072 (n + 1) - (A233743 n + A002295 (n + 1))

end

end A233827.P5611668542616932389

namespace A233827

/-- `A212072(n+1)-(A233743(n)+A002295(n+1))` -/
def P5611668542616932389.Spec : Prop :=
  ∀ n, P5611668542616932389.a n = A233827 n

end A233827

/-! ## A233827.P17303494749630634230

`A212073(n+1)-(A233829(n)+A212071(n+1))`
-/

namespace A233827.P17303494749630634230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212073 (n + 1) - (A233829 n + A212071 (n + 1))

end

end A233827.P17303494749630634230

namespace A233827

/-- `A212073(n+1)-(A233829(n)+A212071(n+1))` -/
def P17303494749630634230.Spec : Prop :=
  ∀ n, P17303494749630634230.a n = A233827 n

end A233827

/-! ## A233827.P5536019523509169345

`A212072(A242474(n+1))%A212071(n+1)`
-/

namespace A233827.P5536019523509169345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212072 (A242474 (n + 1)).toNat) (A212071 (n + 1))

end

end A233827.P5536019523509169345

namespace A233827

/-- `A212072(A242474(n+1))%A212071(n+1)` -/
def P5536019523509169345.Spec : Prop :=
  ∀ n, P5536019523509169345.a n = A233827 n

end A233827

/-!
# A233828: a(n) = 2*a(n-1) + 2*a(n-2) + a(n-3). a(0) = -1, a(1) = 1, a(2) = 1.

The programs for A233828, the canonical program `A233828.P661258529299210402` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233828 has offset 0).

The definition of A233828 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)+a(n-3)` (program `A233828.P661258529299210402`, by `A233828.P661258529299210402.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233828.P661258529299210402

`2*a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=-1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233828

/-- `2*a(n-1)+2*a(n-2)+a(n-3)` -/
def P661258529299210402.Spec : Prop :=
  ∀ n, P661258529299210402.a n = A233828 n

theorem P661258529299210402.correct : P661258529299210402.Spec := by
  intro n
  simp only [A233828]

end A233828

/-! ## A233828.P18156105098411449731

`ogf((1-3x-x^2)/(-1+2x+2x^2+x^3))`
-/

namespace A233828.P18156105098411449731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 3, 1] [1, -2, -2, -1] n

end

end A233828.P18156105098411449731

namespace A233828

/-- `ogf((1-3x-x^2)/(-1+2x+2x^2+x^3))` -/
def P18156105098411449731.Spec : Prop :=
  ∀ n, P18156105098411449731.a n = A233828 n

end A233828

/-! ## A233828.P2662329275072381117

`a(n-3)+2*(a(n-1)+a(n-2))` with `a(0)=-1, a(1)=1, a(2)=1`
-/

namespace A233828.P2662329275072381117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 1] fun n a =>
  a (n - 3) + 2 * (a (n - 1) + a (n - 2))

end

end A233828.P2662329275072381117

namespace A233828

/-- `a(n-3)+2*(a(n-1)+a(n-2))` -/
def P2662329275072381117.Spec : Prop :=
  ∀ n, P2662329275072381117.a n = A233828 n

end A233828

/-! ## A233828.P10053021021951534137

`A221677(n+1)-A077995(n)`
-/

namespace A233828.P10053021021951534137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221677 (n + 1) - A077995 n

end

end A233828.P10053021021951534137

namespace A233828

/-- `A221677(n+1)-A077995(n)` -/
def P10053021021951534137.Spec : Prop :=
  ∀ n, P10053021021951534137.a n = A233828 n

end A233828

/-! ## A233828.P3928953872342604118

`A101168(n)-2*A077995(n)`
-/

namespace A233828.P3928953872342604118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101168 n - 2 * A077995 n

end

end A233828.P3928953872342604118

namespace A233828

/-- `A101168(n)-2*A077995(n)` -/
def P3928953872342604118.Spec : Prop :=
  ∀ n, P3928953872342604118.a n = A233828 n

end A233828

/-! ## A233828.P13978863005637606304

`2*A221677(n+1)-A101168(n)`
-/

namespace A233828.P13978863005637606304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A221677 (n + 1) - A101168 n

end

end A233828.P13978863005637606304

namespace A233828

/-- `2*A221677(n+1)-A101168(n)` -/
def P13978863005637606304.Spec : Prop :=
  ∀ n, P13978863005637606304.a n = A233828 n

end A233828

/-! ## A233828.P5552484395363819541

`A221677(n+1)-(A221510(n+1)+A033999(n))`
-/

namespace A233828.P5552484395363819541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221677 (n + 1) - (A221510 (n + 1) + A033999 n)

end

end A233828.P5552484395363819541

namespace A233828

/-- `A221677(n+1)-(A221510(n+1)+A033999(n))` -/
def P5552484395363819541.Spec : Prop :=
  ∀ n, P5552484395363819541.a n = A233828 n

end A233828

/-! ## A233828.P7776358537317074875

`Δ[A077995(n)]-A077936(n)`
-/

namespace A233828.P7776358537317074875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077936 n

end

end A233828.P7776358537317074875

namespace A233828

/-- `Δ[A077995(n)]-A077936(n)` -/
def P7776358537317074875.Spec : Prop :=
  ∀ n, P7776358537317074875.a n = A233828 n

end A233828

/-! ## A233828.P1730677568377816530

`Δ[A077995(n)]-abs(A077983(n))`
-/

namespace A233828.P1730677568377816530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - |A077983 n|

end

end A233828.P1730677568377816530

namespace A233828

/-- `Δ[A077995(n)]-abs(A077983(n))` -/
def P1730677568377816530.Spec : Prop :=
  ∀ n, P1730677568377816530.a n = A233828 n

end A233828

/-! ## A233828.P16140798722472412071

`A193642(n+1)-2*A077936(n)`
-/

namespace A233828.P16140798722472412071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193642 (n + 1) - 2 * A077936 n

end

end A233828.P16140798722472412071

namespace A233828

/-- `A193642(n+1)-2*A077936(n)` -/
def P16140798722472412071.Spec : Prop :=
  ∀ n, P16140798722472412071.a n = A233828 n

end A233828

/-!
# A233829: a(n) = 3*binomial(6*n+9,n)/(2*n+3).

The programs for A233829, the canonical program `A233829.P12057278544897396097` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233829 has offset 0).

The definition of A233829 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A233829.anchor (n : ℕ) : (A233829 n : ℚ) = (3 * Nat.choose (6 * n + 9) n : ℚ) / (2 * n + 3 : ℚ)` in `Proof.A233.A233829`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233829.P12057278544897396097

`3*C(6*n+9, n)/(2*n+3)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233829

/-- `3*C(6*n+9, n)/(2*n+3)` -/
def P12057278544897396097.Spec : Prop :=
  ∀ n, P12057278544897396097.a n = (A233829 n : ℚ)

end A233829

/-! ## A233829.P1556322044460070660

`A212073(n+1)-A212072(n+1)`
-/

namespace A233829.P1556322044460070660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212073 (n + 1) - A212072 (n + 1)

end

end A233829.P1556322044460070660

namespace A233829

/-- `A212073(n+1)-A212072(n+1)` -/
def P1556322044460070660.Spec : Prop :=
  ∀ n, P1556322044460070660.a n = A233829 n

end A233829

/-! ## A233829.P1840375587246267271

`A212073(n+1)-(A233827(n)+A212071(n+1))`
-/

namespace A233829.P1840375587246267271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212073 (n + 1) - (A233827 n + A212071 (n + 1))

end

end A233829.P1840375587246267271

namespace A233829

/-- `A212073(n+1)-(A233827(n)+A212071(n+1))` -/
def P1840375587246267271.Spec : Prop :=
  ∀ n, P1840375587246267271.a n = A233829 n

end A233829

/-! ## A233829.P16543741238712511588

`A130564(n+2)-(A233830(n)+A212072(n+1))`
-/

namespace A233829.P16543741238712511588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130564 (n + 2) - (A233830 n + A212072 (n + 1))

end

end A233829.P16543741238712511588

namespace A233829

/-- `A130564(n+2)-(A233830(n)+A212072(n+1))` -/
def P16543741238712511588.Spec : Prop :=
  ∀ n, P16543741238712511588.a n = A233829 n

end A233829

/-!
# A233830: a(n) = 5*binomial(6*n+10,n)/(3*n+5).

The programs for A233830, the canonical program `A233830.P1006526079654980988` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233830 has offset 0).

The definition of A233830 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A233830.anchor (n : ℕ) : (A233830 n : ℚ) = (5 * Nat.choose (6 * n + 10) n : ℚ) / (3 * n + 5 : ℚ)` in `Proof.A233.A233830`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233830.P1006526079654980988

`5*C(6*n+10, n)/(3*n+5)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233830

/-- `5*C(6*n+10, n)/(3*n+5)` -/
def P1006526079654980988.Spec : Prop :=
  ∀ n, P1006526079654980988.a n = (A233830 n : ℚ)

end A233830

/-! ## A233830.P10579304452581735973

`A212073(n+1)/(2*(n+2))*(n+1)`
-/

namespace A233830.P10579304452581735973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212073 (n + 1) : ℚ) / (2 * (n + 2) : ℚ) * (n + 1 : ℚ)

end

end A233830.P10579304452581735973

namespace A233830

/-- `A212073(n+1)/(2*(n+2))*(n+1)` -/
def P10579304452581735973.Spec : Prop :=
  ∀ n, P10579304452581735973.a n = (A233830 n : ℚ)

end A233830

/-! ## A233830.P11999029037178798123

`A130564(n+2)-A212073(n+1)`
-/

namespace A233830.P11999029037178798123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130564 (n + 2) - A212073 (n + 1)

end

end A233830.P11999029037178798123

namespace A233830

/-- `A130564(n+2)-A212073(n+1)` -/
def P11999029037178798123.Spec : Prop :=
  ∀ n, P11999029037178798123.a n = A233830 n

end A233830

/-! ## A233830.P6300402083298615328

`A130564(n+2)-(A233829(n)+A212072(n+1))`
-/

namespace A233830.P6300402083298615328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130564 (n + 2) - (A233829 n + A212072 (n + 1))

end

end A233830.P6300402083298615328

namespace A233830

/-- `A130564(n+2)-(A233829(n)+A212072(n+1))` -/
def P6300402083298615328.Spec : Prop :=
  ∀ n, P6300402083298615328.a n = A233830 n

end A233830

/-!
# A233831: a(n) = -2*a(n-1) -2*a(n-2) + a(n-3). a(0) = -1, a(1) = 1, a(2) = 1.

The programs for A233831, the canonical program `A233831.P5558761198846185450` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233831 has offset 0).

The definition of A233831 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-2*a(n-1)-2*a(n-2)+a(n-3)` (program `A233831.P5558761198846185450`, by `A233831.P5558761198846185450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233831.P5558761198846185450

`-2*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=-1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233831

/-- `-2*a(n-1)-2*a(n-2)+a(n-3)` -/
def P5558761198846185450.Spec : Prop :=
  ∀ n, P5558761198846185450.a n = A233831 n

theorem P5558761198846185450.correct : P5558761198846185450.Spec := by
  intro n
  simp only [A233831]

end A233831

/-! ## A233831.P11454761654655147719

`a(n-3)-2*(a(n-1)+a(n-2))` with `a(0)=-1, a(1)=1, a(2)=1`
-/

namespace A233831.P11454761654655147719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 1] fun n a =>
  a (n - 3) - 2 * (a (n - 1) + a (n - 2))

end

end A233831.P11454761654655147719

namespace A233831

/-- `a(n-3)-2*(a(n-1)+a(n-2))` -/
def P11454761654655147719.Spec : Prop :=
  ∀ n, P11454761654655147719.a n = A233831 n

end A233831

/-! ## A233831.P13904533847585146539

`ogf((-1-x+x^2)/(1+2x+2x^2-x^3))`
-/

namespace A233831.P13904533847585146539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, -1, 1] [1, 2, 2, -1] n

end

end A233831.P13904533847585146539

namespace A233831

/-- `ogf((-1-x+x^2)/(1+2x+2x^2-x^3))` -/
def P13904533847585146539.Spec : Prop :=
  ∀ n, P13904533847585146539.a n = A233831 n

end A233831

/-! ## A233831.P9528914557155717834

`A077992(n+1)+A033999(n)*A078004(n)`
-/

namespace A233831.P9528914557155717834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077992 (n + 1) + A033999 n * A078004 n

end

end A233831.P9528914557155717834

namespace A233831

/-- `A077992(n+1)+A033999(n)*A078004(n)` -/
def P9528914557155717834.Spec : Prop :=
  ∀ n, P9528914557155717834.a n = A233831 n

end A233831

/-! ## A233831.P1807212470221257055

`A077992(n+1)-A078004(n)/A033999(n+1)`
-/

namespace A233831.P1807212470221257055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077992 (n + 1) : ℚ) - (A078004 n : ℚ) / (A033999 (n + 1) : ℚ)

end

end A233831.P1807212470221257055

namespace A233831

/-- `A077992(n+1)-A078004(n)/A033999(n+1)` -/
def P1807212470221257055.Spec : Prop :=
  ∀ n, P1807212470221257055.a n = (A233831 n : ℚ)

end A233831

/-! ## A233831.P12340363111436504718

`∑[A078004(n)/A033999(n+1)*A036453(n+1)]`
-/

namespace A233831.P12340363111436504718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078004 n : ℚ) / (A033999 (n + 1) : ℚ) * (A036453 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233831.P12340363111436504718

namespace A233831

/-- `∑[A078004(n)/A033999(n+1)*A036453(n+1)]` -/
def P12340363111436504718.Spec : Prop :=
  ∀ n, P12340363111436504718.a n = (A233831 n : ℚ)

end A233831

/-! ## A233831.P17932616459230792647

`∑[A078004(n)/A033999(n+1)*A040001(2*n)]`
-/

namespace A233831.P17932616459230792647
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078004 n : ℚ) / (A033999 (n + 1) : ℚ) * (A040001 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233831.P17932616459230792647

namespace A233831

/-- `∑[A078004(n)/A033999(n+1)*A040001(2*n)]` -/
def P17932616459230792647.Spec : Prop :=
  ∀ n, P17932616459230792647.a n = (A233831 n : ℚ)

end A233831

/-!
# A233832: a(n) = 2*binomial(7*n+2,n)/(7*n+2).

The programs for A233832, the canonical program `A233832.P7945719361131853472` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233832 has offset 0).

The definition of A233832 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A233832.anchor (n : ℕ) : (A233832 n : ℚ) = (2 * Nat.choose (7 * n + 2) n : ℚ) / (7 * n + 2 : ℚ)` in `Proof.A233.A233832`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233832.P7945719361131853472

`2*C(7*n+2, n)/(7*n+2)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233832

/-- `2*C(7*n+2, n)/(7*n+2)` -/
def P7945719361131853472.Spec : Prop :=
  ∀ n, P7945719361131853472.a n = (A233832 n : ℚ)

end A233832

/-! ## A233832.P4178637769929242074

`A386380(A016921(n))`
-/

namespace A233832.P4178637769929242074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386380 (A016921 n).toNat

end

end A233832.P4178637769929242074

namespace A233832

/-- `A386380(A016921(n))` -/
def P4178637769929242074.Spec : Prop :=
  ∀ n, P4178637769929242074.a n = A233832 n

end A233832

/-! ## A233832.P8868999188555351504

`A386380(A271114(n))`
-/

namespace A233832.P8868999188555351504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386380 (A271114 n).toNat

end

end A233832.P8868999188555351504

namespace A233832

/-- `A386380(A271114(n))` -/
def P8868999188555351504.Spec : Prop :=
  ∀ n, P8868999188555351504.a n = A233832 n

end A233832

/-! ## A233832.P9788447825486094166

`C(7*n+1, n)/(3*n+1)`
-/

namespace A233832.P9788447825486094166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (7 * n + 1) n : ℚ) / (3 * n + 1 : ℚ)

end

end A233832.P9788447825486094166

namespace A233832

/-- `C(7*n+1, n)/(3*n+1)` -/
def P9788447825486094166.Spec : Prop :=
  ∀ n, P9788447825486094166.a n = (A233832 n : ℚ)

end A233832

/-! ## A233832.P6043482820570159753

`A386380(A144917(n+2))`
-/

namespace A233832.P6043482820570159753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386380 (A144917 (n + 2)).toNat

end

end A233832.P6043482820570159753

namespace A233832

/-- `A386380(A144917(n+2))` -/
def P6043482820570159753.Spec : Prop :=
  ∀ n, P6043482820570159753.a n = A233832 n

end A233832

/-!
# A233833: a(n) = 3*binomial(7*n+3, n)/(7*n+3).

The programs for A233833, the canonical program `A233833.P6808845897056325022` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233833 has offset 0).

The definition of A233833 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A233833.anchor (n : ℕ) : (A233833 n : ℚ) = (3 * Nat.choose (7 * n + 3) n : ℚ) / (7 * n + 3 : ℚ)` in `Proof.A233.A233833`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233833.P6808845897056325022

`3*C(7*n+3, n)/(7*n+3)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233833

/-- `3*C(7*n+3, n)/(7*n+3)` -/
def P6808845897056325022.Spec : Prop :=
  ∀ n, P6808845897056325022.a n = (A233833 n : ℚ)

end A233833

/-! ## A233833.P4623471773748015667

`A386380(6*n+2)`
-/

namespace A233833.P4623471773748015667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386380 (6 * n + 2)

end

end A233833.P4623471773748015667

namespace A233833

/-- `A386380(6*n+2)` -/
def P4623471773748015667.Spec : Prop :=
  ∀ n, P4623471773748015667.a n = A233833 n

end A233833

/-! ## A233833.P15596007019875492688

`A127893(A062728(n))/A005408(n)`
-/

namespace A233833.P15596007019875492688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127893 (A062728 n).toNat : ℚ) / (A005408 n : ℚ)

end

end A233833.P15596007019875492688

namespace A233833

/-- `A127893(A062728(n))/A005408(n)` -/
def P15596007019875492688.Spec : Prop :=
  ∀ n, P15596007019875492688.a n = (A233833 n : ℚ)

end A233833

/-!
# A233834: a(n) = 5*binomial(7*n+5,n)/(7*n+5).

The programs for A233834, the canonical program `A233834.P17771193921115898883` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233834 has offset 0).

The definition of A233834 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A233834.anchor (n : ℕ) : (A233834 n : ℚ) = (5 * Nat.choose (7 * n + 5) n : ℚ) / (7 * n + 5 : ℚ)` in `Proof.A233.A233834`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233834.P17771193921115898883

`5*C(7*n+5, n)/(7*n+5)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233834

/-- `5*C(7*n+5, n)/(7*n+5)` -/
def P17771193921115898883.Spec : Prop :=
  ∀ n, P17771193921115898883.a n = (A233834 n : ℚ)

end A233834

/-! ## A233834.P11500636298179748596

`A386380(record[6*n-a(n-1)-1])` with `a(0)=1, a(1)=1`
-/

namespace A233834.P11500636298179748596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (6 * n : ℤ) - f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386380 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A233834.P11500636298179748596

namespace A233834

/-- `A386380(record[6*n-a(n-1)-1])` -/
def P11500636298179748596.Spec : Prop :=
  ∀ n, P11500636298179748596.a n = A233834 n

end A233834

/-! ## A233834.P2599298581375412203

`A386380(A016957(n))`
-/

namespace A233834.P2599298581375412203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386380 (A016957 n).toNat

end

end A233834.P2599298581375412203

namespace A233834

/-- `A386380(A016957(n))` -/
def P2599298581375412203.Spec : Prop :=
  ∀ n, P2599298581375412203.a n = A233834 n

end A233834

/-! ## A233834.P11300408422529376518

`A386380(eq[A036452(2*n+3), A070365(n)])`
-/

namespace A233834.P11300408422529376518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386380 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A233834.P11300408422529376518

namespace A233834

/-- `A386380(eq[A036452(2*n+3), A070365(n)])` -/
def P11300408422529376518.Spec : Prop :=
  ∀ n, P11300408422529376518.a n = A233834 n

end A233834

/-! ## A233834.P1398994832347871462

`A386380(2*A281873(3*n+2))`
-/

namespace A233834.P1398994832347871462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386380 (2 * A281873 (3 * n + 2)).toNat

end

end A233834.P1398994832347871462

namespace A233834

/-- `A386380(2*A281873(3*n+2))` -/
def P1398994832347871462.Spec : Prop :=
  ∀ n, P1398994832347871462.a n = A233834 n

end A233834

/-!
# A233835: a(n) = 8*binomial(7*n + 8, n)/(7*n + 8).

The programs for A233835, the canonical program `A233835.P14472221879860351053` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233835 has offset 0).

The definition of A233835 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A233835.anchor (n : ℕ) : (A233835 n : ℚ) = (8 * Nat.choose (7 * n + 8) n : ℚ) / (7 * n + 8 : ℚ)` in `Proof.A233.A233835`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233835.P14472221879860351053

`8*C(7*n+8, n)/(7*n+8)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233835

/-- `8*C(7*n+8, n)/(7*n+8)` -/
def P14472221879860351053.Spec : Prop :=
  ∀ n, P14472221879860351053.a n = (A233835 n : ℚ)

end A233835

/-! ## A233835.P798176737721706825

`A233832(n+1)-A002296(n+1)`
-/

namespace A233835.P798176737721706825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233832 (n + 1) - A002296 (n + 1)

end

end A233835.P798176737721706825

namespace A233835

/-- `A233832(n+1)-A002296(n+1)` -/
def P798176737721706825.Spec : Prop :=
  ∀ n, P798176737721706825.a n = A233835 n

end A233835

/-! ## A233835.P4625363160943994684

`A233832(n+1)-A143547(2*(n+1))`
-/

namespace A233835.P4625363160943994684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233832 (n + 1) - A143547 (2 * (n + 1))

end

end A233835.P4625363160943994684

namespace A233835

/-- `A233832(n+1)-A143547(2*(n+1))` -/
def P4625363160943994684.Spec : Prop :=
  ∀ n, P4625363160943994684.a n = A233835 n

end A233835

/-! ## A233835.P3226711107075464159

`A233833(n+1)-(A233907(n)+A002296(n+1))`
-/

namespace A233835.P3226711107075464159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233833 (n + 1) - (A233907 n + A002296 (n + 1))

end

end A233835.P3226711107075464159

namespace A233835

/-- `A233833(n+1)-(A233907(n)+A002296(n+1))` -/
def P3226711107075464159.Spec : Prop :=
  ∀ n, P3226711107075464159.a n = A233835 n

end A233835

/-! ## A233835.P4280243324880131745

`A370060(A055999(2*(n+2))+1)`
-/

namespace A233835.P4280243324880131745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370060 (A055999 (2 * (n + 2)) + 1).toNat

end

end A233835.P4280243324880131745

namespace A233835

/-- `A370060(A055999(2*(n+2))+1)` -/
def P4280243324880131745.Spec : Prop :=
  ∀ n, P4280243324880131745.a n = A233835 n

end A233835

/-!
# A233837: 

The programs for A233837, there is no canonical definition to state claims against.
-/

/-! ## A233837.P10077725588486289695

`A233845((n+1)²+n²)`
-/

namespace A233837.P10077725588486289695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233845 ((n + 1) ^ 2 + n ^ 2)

end

end A233837.P10077725588486289695

/-!
# A233838: Number of (n+2) X (1+2) 0..3 arrays with no increasing sequence of length 3 horizontally or antidiagonally downwards.

The programs for A233838, there is no canonical definition to state claims against.
-/

/-! ## A233838.P15665415682940296246

`A233845(∑[n+1])`
-/

namespace A233838.P15665415682940296246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233845 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233838.P15665415682940296246

/-! ## A233838.P13951562209963257428

`record[A112295(n)*A233845(n+1)]`
-/

namespace A233838.P13951562209963257428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112295 n * A233845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233838.P13951562209963257428

/-! ## A233838.P3697780901482824820

`record[root(A233845(n+1), A038622(n))]`
-/

namespace A233838.P3697780901482824820
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233845 (n + 1) : ℝ) ^ (1 / (A038622 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233838.P3697780901482824820

/-! ## A233838.P16418180285475274057

`record[gcd(A233845(n+1), A278482(n))]`
-/

namespace A233838.P16418180285475274057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A233845 (n + 1)) (A278482 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233838.P16418180285475274057

/-! ## A233838.P10134525185304503244

`record[root(A233845(n+1), A188403(n+1))]`
-/

namespace A233838.P10134525185304503244
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233845 (n + 1) : ℝ) ^ (1 / (A188403 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233838.P10134525185304503244

/-!
# A233839: 

The programs for A233839, there is no canonical definition to state claims against.
-/

/-! ## A233839.P2541414604333588242

`A233845(∑[n+2])`
-/

namespace A233839.P2541414604333588242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233845 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233839.P2541414604333588242

/-!
# A233840: 

The programs for A233840, there is no canonical definition to state claims against.
-/

/-! ## A233840.P16910734228516960293

`A233845(A034856(n+2))`
-/

namespace A233840.P16910734228516960293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233845 (A034856 (n + 2)).toNat

end

end A233840.P16910734228516960293

/-! ## A233840.P5135517772996697006

`A233845(A052905(n)+3)`
-/

namespace A233840.P5135517772996697006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233845 (A052905 n + 3).toNat

end

end A233840.P5135517772996697006

/-! ## A233840.P2830509548863737074

`A233845(A188843(∑[n+2]))`
-/

namespace A233840.P2830509548863737074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233845 (A188843 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A233840.P2830509548863737074

/-! ## A233840.P5391703463434083603

`A233845(eq[2, A004736(n-char[1]+1)])`
-/

namespace A233840.P5391703463434083603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 ((n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233840.P5391703463434083603

/-! ## A233840.P11230915724038868433

`A233845(A034856(Δ[n²]-(n-1)))-1-cos(-π)`
-/

namespace A233840.P11230915724038868433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233845 (A034856 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - 1)).toNat).toNat - 1 : ℝ) - Real.cos (-Real.pi)

end

end A233840.P11230915724038868433

/-!
# A233841: 

The programs for A233841, there is no canonical definition to state claims against.
-/

/-! ## A233841.P16194495645649185768

`A233845(A052905(n+1)+2)`
-/

namespace A233841.P16194495645649185768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233845 (A052905 (n + 1) + 2).toNat

end

end A233841.P16194495645649185768

/-!
# A233846: Number of (1+2)X(n+2) 0..3 arrays with no increasing sequence of length 3 horizontally or antidiagonally downwards.

The programs for A233846, there is no canonical definition to state claims against.
-/

/-! ## A233846.P10950845886603789410

`A233845(∑[n]+1)`
-/

namespace A233846.P10950845886603789410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233845 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233846.P10950845886603789410

/-! ## A233846.P13661346866708489017

`record[A233845(A114091(n+1))]`
-/

namespace A233846.P13661346866708489017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233845 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233846.P13661346866708489017

/-! ## A233846.P14992124113634392452

`record[gcd(A002262(n), A233845(n+1))]`
-/

namespace A233846.P14992124113634392452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A233845 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233846.P14992124113634392452

/-! ## A233846.P5105116043576210105

`record[root(A233845(n+1), A002260(n+1))]`
-/

namespace A233846.P5105116043576210105
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233845 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233846.P5105116043576210105

/-! ## A233846.P4302801074024480367

`record[root(A233845(n+1), A103881(n+1))]`
-/

namespace A233846.P4302801074024480367
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233845 (n + 1) : ℝ) ^ (1 / (A103881 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233846.P4302801074024480367

/-!
# A233847: 

The programs for A233847, there is no canonical definition to state claims against.
-/

/-! ## A233847.P16062472099074847635

`A233845(∑[n+1]+2)`
-/

namespace A233847.P16062472099074847635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233845 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233847.P16062472099074847635

/-!
# A233848: 

The programs for A233848, there is no canonical definition to state claims against.
-/

/-! ## A233848.P5394075686610713416

`A233845(A167499(n)+n)`
-/

namespace A233848.P5394075686610713416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233845 (A167499 n + (n : ℤ)).toNat

end

end A233848.P5394075686610713416

/-! ## A233848.P7161338143696377920

`A233845(eq[4, A131818(n+1)])`
-/

namespace A233848.P7161338143696377920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233848.P7161338143696377920

/-!
# A233849: 

The programs for A233849, there is no canonical definition to state claims against.
-/

/-! ## A233849.P13644030271629835851

`A233845(A052905(n)+9)`
-/

namespace A233849.P13644030271629835851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233845 (A052905 n + 9).toNat

end

end A233849.P13644030271629835851

/-!
# A233850: 

The programs for A233850, there is no canonical definition to state claims against.
-/

/-! ## A233850.P7287026916537460194

`A233845(A167499(n+3))`
-/

namespace A233850.P7287026916537460194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233845 (A167499 (n + 3)).toNat

end

end A233850.P7287026916537460194

/-! ## A233850.P7096726367785159904

`A233845(eq[6, A131818(n+1)])`
-/

namespace A233850.P7096726367785159904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233850.P7096726367785159904

/-!
# A233851: 

The programs for A233851, there is no canonical definition to state claims against.
-/

/-! ## A233851.P12009166699268944790

`A233845(eq[7, A131818(n+1)])`
-/

namespace A233851.P12009166699268944790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233851.P12009166699268944790

/-!
# A233852: 

The programs for A233852, there is no canonical definition to state claims against.
-/

/-! ## A233852.P10271698673172102551

`A233845(eq[8, A131818(n+1)])`
-/

namespace A233852.P10271698673172102551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233852.P10271698673172102551

/-!
# A233853: Number of (n+1)X(1+1) 0..7 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 59.

The programs for A233853, there is no canonical definition to state claims against.
-/

/-! ## A233853.P14125572323423952019

`A233859(∑[n]+1)`
-/

namespace A233853.P14125572323423952019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233859 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233853.P14125572323423952019

/-! ## A233853.P14496138232327350355

`lcm(2, A233859(A000124(n)))`
-/

namespace A233853.P14496138232327350355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233859 (A000124 n).toNat)

end

end A233853.P14496138232327350355

/-! ## A233853.P6521455255294465691

`record[A233859(A276954(n+1))]`
-/

namespace A233853.P6521455255294465691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233859 (A276954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233853.P6521455255294465691

/-! ## A233853.P16879033634954851229

`record[A010054(n)*A233859(n+1)]`
-/

namespace A233853.P16879033634954851229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233853.P16879033634954851229

/-! ## A233853.P4497971489407634028

`record[A233859(n+1)/A007318(n)]`
-/

namespace A233853.P4497971489407634028
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233859 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233853.P4497971489407634028

/-!
# A233854: Number of (n+1)X(2+1) 0..7 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 59.

The programs for A233854, there is no canonical definition to state claims against.
-/

/-! ## A233854.P14806020904470987521

`A233859(∑[n+1]+2)`
-/

namespace A233854.P14806020904470987521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233859 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233854.P14806020904470987521

/-! ## A233854.P17569464258320055700

`lcm(2, A233859(A000096(n)+3))`
-/

namespace A233854.P17569464258320055700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233859 (A000096 n + 3).toNat)

end

end A233854.P17569464258320055700

/-! ## A233854.P12727897590986820767

`record[A010054(n)*A233859(n+2)]`
-/

namespace A233854.P12727897590986820767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233859 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233854.P12727897590986820767

/-! ## A233854.P2675566829945415971

`record[root(A233859(n+2), A013609(n))]`
-/

namespace A233854.P2675566829945415971
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233859 (n + 2) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233854.P2675566829945415971

/-! ## A233854.P8484116127113002664

`record[gcd(A233859(n+2), A261835(n+2))]`
-/

namespace A233854.P8484116127113002664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A233859 (n + 2)) (A261835 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233854.P8484116127113002664

/-!
# A233855: Number of (n+1)X(3+1) 0..7 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 59.

The programs for A233855, there is no canonical definition to state claims against.
-/

/-! ## A233855.P11630270280155061886

`A233859(∑[n+2]+4)`
-/

namespace A233855.P11630270280155061886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233859 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233855.P11630270280155061886

/-! ## A233855.P16163152821915975090

`lcm(2, A233859(A167614(n+1)))`
-/

namespace A233855.P16163152821915975090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233859 (A167614 (n + 1)).toNat)

end

end A233855.P16163152821915975090

/-! ## A233855.P2016840700729224110

`record[gcd(A212957(n+1), A233859(n+4))]`
-/

namespace A233855.P2016840700729224110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A212957 (n + 1)) (A233859 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233855.P2016840700729224110

/-! ## A233855.P16287934720239736690

`A233859(A167614(n+1))+A084904(n)`
-/

namespace A233855.P16287934720239736690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233859 (A167614 (n + 1)).toNat + A084904 n

end

end A233855.P16287934720239736690

/-! ## A233855.P10355485716824095061

`A233859(A167614(n+1))+A151795(n)`
-/

namespace A233855.P10355485716824095061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233859 (A167614 (n + 1)).toNat + A151795 n

end

end A233855.P10355485716824095061

/-!
# A233856: Number of (n+1)X(4+1) 0..7 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 59.

The programs for A233856, there is no canonical definition to state claims against.
-/

/-! ## A233856.P14120480631990284030

`A233859(∑[n+3]+7)`
-/

namespace A233856.P14120480631990284030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233859 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A233856.P14120480631990284030

/-!
# A233857: Number of (n+1)X(5+1) 0..7 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 59.

The programs for A233857, there is no canonical definition to state claims against.
-/

/-! ## A233857.P1358180063650630164

`A233859(∑[n+4]+11)`
-/

namespace A233857.P1358180063650630164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233859 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A233857.P1358180063650630164

/-!
# A233858: Number of (n+1)X(6+1) 0..7 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 59.

The programs for A233858, there is no canonical definition to state claims against.
-/

/-! ## A233858.P5070253306469619180

`A233859(∑[n+5]+16)`
-/

namespace A233858.P5070253306469619180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233859 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A233858.P5070253306469619180

/-! ## A233858.P972033091791876472

`A233859(A167614(n+4)+3)+A344835(n)-A344838(n)`
-/

namespace A233858.P972033091791876472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233859 (A167614 (n + 4) + 3).toNat + (A344835 n - A344838 n)

end

end A233858.P972033091791876472

/-!
# A233860: E.g.f. satisfies: A'(x) = Product_{n>=1} 1/(1 - A(x)^n), where A(0) = 0.

The programs for A233860, there is no canonical definition to state claims against.
-/

/-! ## A233860.P2448714816416412951

`A057359(A261900(n)+1)`
-/

namespace A233860.P2448714816416412951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (A261900 n + 1).toNat

end

end A233860.P2448714816416412951

/-! ## A233860.P2882331974428637801

`or(A057359(A261900(n)), A071035(n))`
-/

namespace A233860.P2882331974428637801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057359 (A261900 n).toNat) (A071035 n)

end

end A233860.P2882331974428637801

/-!
# A233861: E.g.f. satisfies: A'(x) = Product_{n>=1} (1 + A(x)^n), where A(0) = 0.

The programs for A233861, there is no canonical definition to state claims against.
-/

/-! ## A233861.P781129372937594723

`A000027(A206397(n+1))`
-/

namespace A233861.P781129372937594723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A206397 (n + 1)).toNat

end

end A233861.P781129372937594723

/-! ## A233861.P5691782014869413615

`A206397(n+1)+A007949(A038119(n+1))`
-/

namespace A233861.P5691782014869413615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206397 (n + 1) + A007949 (A038119 (n + 1)).toNat

end

end A233861.P5691782014869413615

/-! ## A233861.P10528142570983624076

`A206397(n+1)+A010051(A206450(n+1))`
-/

namespace A233861.P10528142570983624076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206397 (n + 1) + A010051 (A206450 (n + 1)).toNat

end

end A233861.P10528142570983624076

/-! ## A233861.P5364068195034454810

`A294930(A110781(n+1))+A206397(n+1)`
-/

namespace A233861.P5364068195034454810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (A110781 (n + 1)).toNat + A206397 (n + 1)

end

end A233861.P5364068195034454810

/-!
# A233862: Prime(k), where k is such that (1 + Sum_{i=1..k} prime(i)^2) / k is an integer.

The programs for A233862, there is no canonical definition to state claims against.
-/

/-! ## A233862.P2778603625311133459

`A001748(A128166(n+1))/3`
-/

namespace A233862.P2778603625311133459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A128166 (n + 1)).toNat : ℚ) / 3

end

end A233862.P2778603625311133459

/-! ## A233862.P8084312102948842381

`A101364(2*n+7)+A001749(A128166(n+1))/4`
-/

namespace A233862.P8084312102948842381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101364 (2 * n + 7) : ℚ) + (A001749 (A128166 (n + 1)).toNat : ℚ) / 4

end

end A233862.P8084312102948842381

/-! ## A233862.P17544097811367606228

`A000040(A128166(n+1))`
-/

namespace A233862.P17544097811367606228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A128166 (n + 1)).toNat

end

end A233862.P17544097811367606228

/-! ## A233862.P10243153281058494959

`A008578(A128166(n+1)+1)`
-/

namespace A233862.P10243153281058494959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A128166 (n + 1) + 1).toNat

end

end A233862.P10243153281058494959

/-! ## A233862.P17808856293492448293

`A182986(A128166(n+1)+1)`
-/

namespace A233862.P17808856293492448293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A128166 (n + 1) + 1).toNat

end

end A233862.P17808856293492448293

/-!
# A233863: Prime(n), where n is such that (1 + Sum_{i=1..n} prime(i)^3) / n is an integer.

The programs for A233863, there is no canonical definition to state claims against.
-/

/-! ## A233863.P15635079707920449071

`A000040(A128167(n+1))`
-/

namespace A233863.P15635079707920449071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A128167 (n + 1)).toNat

end

end A233863.P15635079707920449071

/-! ## A233863.P5106151914166735689

`A008578(A128167(n+1)+1)`
-/

namespace A233863.P5106151914166735689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A128167 (n + 1) + 1).toNat

end

end A233863.P5106151914166735689

/-! ## A233863.P6683954861550373812

`A182986(A128167(n+1)+1)`
-/

namespace A233863.P6683954861550373812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A128167 (n + 1) + 1).toNat

end

end A233863.P6683954861550373812

/-! ## A233863.P7622697208135478792

`A158611(A128167(n+1)+2)`
-/

namespace A233863.P7622697208135478792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A128167 (n + 1) + 2).toNat

end

end A233863.P7622697208135478792

/-! ## A233863.P3969741527792099306

`∑{d}[A128167(n+1), A007444(#)]`
-/

namespace A233863.P3969741527792099306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A233863.P3969741527792099306

/-!
# A233864: a(n) = |{0 < m < 2*n: m = sigma(k) for some k > 0, and 2*n - 1 - m and 2*n - 1 + m are both prime}|, where sigma(k) is the sum of all (positive) divisors of k.

The programs for A233864, there is no canonical definition to state claims against.
-/

/-! ## A233864.P8698780067623685701

`A001221(A025566(n)%A050168(n+4))`
-/

namespace A233864.P8698780067623685701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A025566 n) (A050168 (n + 4))).toNat

end

end A233864.P8698780067623685701

/-!
# A233865: Numbers n such that sigma(sigma(n))+1 is prime.

The programs for A233865, the canonical program `A233865.P3025316243327147662` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233865 has offset 1).

The definition of A233865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233865.P5634599932906341861

`eq[2, A296092(A000203(n+1))]+1`
-/

namespace A233865.P5634599932906341861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296092 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A233865.P5634599932906341861

namespace A233865

/-- `eq[2, A296092(A000203(n+1))]+1` -/
def P5634599932906341861.Spec : Prop :=
  ∀ n, (P5634599932906341861.a n : ℤ) = A233865 (n + 1)

end A233865

/-! ## A233865.P3025316243327147662

`record[(n+1)*A296212(A039653(n+1)+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A233865

/-- `record[(n+1)*A296212(A039653(n+1)+1)]` -/
def P3025316243327147662.Spec : Prop :=
  ∀ n, P3025316243327147662.a n = A233865 (n + 1)

theorem P3025316243327147662.correct : P3025316243327147662.Spec := by
  intro n
  simp only [A233865, Nat.add_sub_cancel]

end A233865

/-! ## A233865.P1705759375662409756

`eq[1, A001222(∑{d}[∑{d}[n, #], #]+1)]`
-/

namespace A233865.P1705759375662409756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f3 n), d + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233865.P1705759375662409756

namespace A233865

/-- `eq[1, A001222(∑{d}[∑{d}[n, #], #]+1)]` -/
def P1705759375662409756.Spec : Prop :=
  ∀ n, (P1705759375662409756.a n : ℤ) = A233865 (n + 1)

end A233865

/-! ## A233865.P15341298539560869331

`lt[A001222(∑{d}[∑{d}[n+1, #], #]+1), 2]+1`
-/

namespace A233865.P15341298539560869331
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f2 n), d + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 1

end

end A233865.P15341298539560869331

namespace A233865

/-- `lt[A001222(∑{d}[∑{d}[n+1, #], #]+1), 2]+1` -/
def P15341298539560869331.Spec : Prop :=
  ∀ n, (P15341298539560869331.a n : ℤ) = A233865 (n + 1)

end A233865

/-! ## A233865.P1744456850838025696

`lt[A000005(∑{d}[∑{d}[n+1, #], #]+1), 3]+1`
-/

namespace A233865.P1744456850838025696
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f2 n), d + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 1

end

end A233865.P1744456850838025696

namespace A233865

/-- `lt[A000005(∑{d}[∑{d}[n+1, #], #]+1), 3]+1` -/
def P1744456850838025696.Spec : Prop :=
  ∀ n, (P1744456850838025696.a n : ℤ) = A233865 (n + 1)

end A233865

/-! ## A233865.P11425683494488217364

`eq[2, A000005(A051027(n+1)+1)]+1`
-/

namespace A233865.P11425683494488217364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A051027 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A233865.P11425683494488217364

namespace A233865

/-- `eq[2, A000005(A051027(n+1)+1)]+1` -/
def P11425683494488217364.Spec : Prop :=
  ∀ n, (P11425683494488217364.a n : ℤ) = A233865 (n + 1)

end A233865

/-! ## A233865.P5727632126104619096

`lt[A000005(A000203(∑{d}[n+1, #])+1), 3]+1`
-/

namespace A233865.P5727632126104619096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (∑ d ∈ Nat.divisors (f2 n), d) + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A233865.P5727632126104619096

namespace A233865

/-- `lt[A000005(A000203(∑{d}[n+1, #])+1), 3]+1` -/
def P5727632126104619096.Spec : Prop :=
  ∀ n, (P5727632126104619096.a n : ℤ) = A233865 (n + 1)

end A233865

/-! ## A233865.P9491220430045640660

`eq[1, A001222(A000203(A000203(n+1))+1)]+1`
-/

namespace A233865.P9491220430045640660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000203 (A000203 (n + 1)).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A233865.P9491220430045640660

namespace A233865

/-- `eq[1, A001222(A000203(A000203(n+1))+1)]+1` -/
def P9491220430045640660.Spec : Prop :=
  ∀ n, (P9491220430045640660.a n : ℤ) = A233865 (n + 1)

end A233865

/-! ## A233865.P6331347667479317339

`eq[2, A000005(A000203(A000203(n+1))+1)]+1`
-/

namespace A233865.P6331347667479317339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (A000203 (n + 1)).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A233865.P6331347667479317339

namespace A233865

/-- `eq[2, A000005(A000203(A000203(n+1))+1)]+1` -/
def P6331347667479317339.Spec : Prop :=
  ∀ n, (P6331347667479317339.a n : ℤ) = A233865 (n + 1)

end A233865

/-! ## A233865.P15227407224937106791

`eq[1, A032741(∑{d}[∑{d}[n, #], #]+1)]`
-/

namespace A233865.P15227407224937106791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (∑ d ∈ Nat.divisors (f3 n), d + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233865.P15227407224937106791

namespace A233865

/-- `eq[1, A032741(∑{d}[∑{d}[n, #], #]+1)]` -/
def P15227407224937106791.Spec : Prop :=
  ∀ n, (P15227407224937106791.a n : ℤ) = A233865 (n + 1)

end A233865

/-! ## A233865.P13429909762281723729

`record[(n+1)%A014963(A000203(A000203(n+1))+1)]`
-/

namespace A233865.P13429909762281723729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014963 (A000203 (A000203 (n + 1)).toNat + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233865.P13429909762281723729

namespace A233865

/-- `record[(n+1)%A014963(A000203(A000203(n+1))+1)]` -/
def P13429909762281723729.Spec : Prop :=
  ∀ n, P13429909762281723729.a n = A233865 (n + 1)

end A233865

/-!
# A233866: Ramanujan primes A104272 that are primes p(k) such that (k+1)*p(k)>k*p(k+1).

The programs for A233866, there is no canonical definition to state claims against.
-/

/-! ## A233866.P9219744064291864033

`A250470(A079419(n+1)^A322283(n))`
-/

namespace A233866.P9219744064291864033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (SequenceMachineLib.roundAway ((A079419 (n + 1) : ℚ) ^ (A322283 n : ℤ))).toNat

end

end A233866.P9219744064291864033

/-! ## A233866.P3904585956455224013

`A249738(A079419(n+1)*A090416(n+1))`
-/

namespace A233866.P3904585956455224013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A079419 (n + 1) * A090416 (n + 1)).toNat

end

end A233866.P3904585956455224013

/-! ## A233866.P381688643247149839

`A064989(A079419(n+1)%A079385(n+1))`
-/

namespace A233866.P381688643247149839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.tmod (A079419 (n + 1)) (A079385 (n + 1))).toNat

end

end A233866.P381688643247149839

/-! ## A233866.P1854531221310875125

`A104272(A117290(n+1)%A099954(n+1))`
-/

namespace A233866.P1854531221310875125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (Int.tmod (A117290 (n + 1)) (A099954 (n + 1))).toNat

end

end A233866.P1854531221310875125

/-! ## A233866.P12415640753279066187

`A008578(A079418(n+1)%A284285(n+1))`
-/

namespace A233866.P12415640753279066187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Int.tmod (A079418 (n + 1)) (A284285 (n + 1))).toNat

end

end A233866.P12415640753279066187

/-!
# A233867: a(n) = |{0 < m < 2*n: m is a square with 2*n - 1 - phi(m) prime}|, where phi(.) is Euler's totient function (A000010).

The programs for A233867, there is no canonical definition to state claims against.
-/

/-! ## A233867.P16301396342106730919

`A000040(A053755(3*n))%A213925(n+1)`
-/

namespace A233867.P16301396342106730919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A053755 (3 * n)).toNat) (A213925 (n + 1))

end

end A233867.P16301396342106730919

/-! ## A233867.P10533279092474847766

`A005087(∑[A273410(2*n)])`
-/

namespace A233867.P10533279092474847766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273410 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A233867.P10533279092474847766

/-! ## A233867.P14754640812957267867

`A001222(A255411(n)+A098583(n))`
-/

namespace A233867.P14754640812957267867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A255411 n + A098583 n).toNat

end

end A233867.P14754640812957267867

/-! ## A233867.P5012649237220819450

`A364357(A137097(n+2))`
-/

namespace A233867.P5012649237220819450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364357 (A137097 (n + 2)).toNat

end

end A233867.P5012649237220819450

/-!
# A233868: Numbers that are not the sum of two evil numbers.

The programs for A233868, the canonical program `A233868.P10443722259188444304` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233868 has offset 1).

The definition of A233868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233868.P10443722259188444304

`5*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=31`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233868

/-- `5*a(n-1)-4*a(n-2)` -/
def P10443722259188444304.Spec : Prop :=
  ∀ n, P10443722259188444304.a n = A233868 (n + 1)

theorem P10443722259188444304.correct : P10443722259188444304.Spec := by
  intro n
  simp only [A233868, Nat.add_sub_cancel]

end A233868

/-! ## A233868.P4095749861936434803

`lcm(4, a(n-1))+3` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A233868.P4095749861936434803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  Nat.lcm 4 (a (n - 1)) + 3

end

end A233868.P4095749861936434803

namespace A233868

/-- `lcm(4, a(n-1))+3` -/
def P4095749861936434803.Spec : Prop :=
  ∀ n, (P4095749861936434803.a n : ℤ) = A233868 (n + 1)

end A233868

/-! ## A233868.P9077417010386643192

`4*a(n-1)+3` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`
-/

namespace A233868.P9077417010386643192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 7] fun n a =>
  4 * a (n - 1) + 3

end

end A233868.P9077417010386643192

namespace A233868

/-- `4*a(n-1)+3` -/
def P9077417010386643192.Spec : Prop :=
  ∀ n, (P9077417010386643192.a n : ℤ) = A233868 (n + 1)

end A233868

/-! ## A233868.P8318882871947207645

`or(3, 4*a(n-1))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`
-/

namespace A233868.P8318882871947207645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 7] fun n a =>
  Nat.lor 3 (4 * a (n - 1))

end

end A233868.P8318882871947207645

namespace A233868

/-- `or(3, 4*a(n-1))` -/
def P8318882871947207645.Spec : Prop :=
  ∀ n, (P8318882871947207645.a n : ℤ) = A233868 (n + 1)

end A233868

/-! ## A233868.P6941957455547456760

`xor(3, 4*a(n-1))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`
-/

namespace A233868.P6941957455547456760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 7] fun n a =>
  Nat.xor 3 (4 * a (n - 1))

end

end A233868.P6941957455547456760

namespace A233868

/-- `xor(3, 4*a(n-1))` -/
def P6941957455547456760.Spec : Prop :=
  ∀ n, (P6941957455547456760.a n : ℤ) = A233868 (n + 1)

end A233868

/-! ## A233868.P8238467346428775878

`or(a(n-1), A037702(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A233868.P8238467346428775878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  Int.lor (a (n - 1)) (A037702 (n - 1))

end

end A233868.P8238467346428775878

namespace A233868

/-- `or(a(n-1), A037702(n-1))` -/
def P8238467346428775878.Spec : Prop :=
  ∀ n, P8238467346428775878.a n = A233868 (n + 1)

end A233868

/-! ## A233868.P10783898020464441783

`record[7-xor(a(n-2), A016116(n))]` with `a(0)=1, a(1)=2`
-/

namespace A233868.P10783898020464441783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  7 - Int.xor (f1 (n - 2)) (A016116 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233868.P10783898020464441783

namespace A233868

/-- `record[7-xor(a(n-2), A016116(n))]` -/
def P10783898020464441783.Spec : Prop :=
  ∀ n, P10783898020464441783.a n = A233868 (n + 1)

end A233868

/-! ## A233868.P17709409382871629262

`record[A106624(A267261(n))]`
-/

namespace A233868.P17709409382871629262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (A267261 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233868.P17709409382871629262

namespace A233868

/-- `record[A106624(A267261(n))]` -/
def P17709409382871629262.Spec : Prop :=
  ∀ n, P17709409382871629262.a n = A233868 (n + 1)

end A233868

/-! ## A233868.P6550445084608262226

`A106624(A267261(2*n))`
-/

namespace A233868.P6550445084608262226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (A267261 (2 * n)).toNat

end

end A233868.P6550445084608262226

namespace A233868

/-- `A106624(A267261(2*n))` -/
def P6550445084608262226.Spec : Prop :=
  ∀ n, P6550445084608262226.a n = A233868 (n + 1)

end A233868

/-! ## A233868.P15874450234432605651

`record[gcd(A106624(n), A110514(n))]`
-/

namespace A233868.P15874450234432605651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106624 n) (A110514 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233868.P15874450234432605651

namespace A233868

/-- `record[gcd(A106624(n), A110514(n))]` -/
def P15874450234432605651.Spec : Prop :=
  ∀ n, (P15874450234432605651.a n : ℤ) = A233868 (n + 1)

end A233868

/-!
# A233869: Number of (n+1)X(1+1) 0..7 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 21.

The programs for A233869, there is no canonical definition to state claims against.
-/

/-! ## A233869.P4571567317354404013

`A233875(∑[n]+1)`
-/

namespace A233869.P4571567317354404013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233869.P4571567317354404013

/-! ## A233869.P11799339329176245367

`lcm(2, A233875(A000124(n)))`
-/

namespace A233869.P11799339329176245367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233875 (A000124 n).toNat)

end

end A233869.P11799339329176245367

/-! ## A233869.P9553748895888028230

`record[A233875(A056534(n+1))]`
-/

namespace A233869.P9553748895888028230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233869.P9553748895888028230

/-! ## A233869.P8357664455195571476

`record[A233875(A056536(n+1))]`
-/

namespace A233869.P8357664455195571476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233869.P8357664455195571476

/-! ## A233869.P16878848671340850594

`record[A233875(A246276(n+1))]`
-/

namespace A233869.P16878848671340850594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233869.P16878848671340850594

/-!
# A233870: Number of (n+1)X(2+1) 0..7 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 21.

The programs for A233870, there is no canonical definition to state claims against.
-/

/-! ## A233870.P4632408006244209023

`A233875(∑[n+1]+2)`
-/

namespace A233870.P4632408006244209023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233870.P4632408006244209023

/-! ## A233870.P5571935094328584096

`record[A233875(n+3)/A051380(n)]`
-/

namespace A233870.P5571935094328584096
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233875 (n + 3) : ℚ) / (A051380 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233870.P5571935094328584096

/-! ## A233870.P5522820882883285300

`record[A233875(n+3)/A051142(n+1)]`
-/

namespace A233870.P5522820882883285300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233875 (n + 3) : ℚ) / (A051142 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233870.P5522820882883285300

/-! ## A233870.P2751816556751176252

`A008327(n)*A233875(A133263(n+1))`
-/

namespace A233870.P2751816556751176252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008327 n * A233875 (A133263 (n + 1)).toNat

end

end A233870.P2751816556751176252

/-! ## A233870.P10607801803431770879

`A133687(n)*A233875(A133263(n+1))`
-/

namespace A233870.P10607801803431770879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133687 n * A233875 (A133263 (n + 1)).toNat

end

end A233870.P10607801803431770879

/-!
# A233871: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 21.

The programs for A233871, there is no canonical definition to state claims against.
-/

/-! ## A233871.P359286778797466686

`A233875(∑[n+2]+4)`
-/

namespace A233871.P359286778797466686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233871.P359286778797466686

/-! ## A233871.P9857166827773643044

`lcm(2, A233875(A167614(n+1)))`
-/

namespace A233871.P9857166827773643044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233875 (A167614 (n + 1)).toNat)

end

end A233871.P9857166827773643044

/-! ## A233871.P2553940949235825402

`record[root(A233875(n+4), A035529(n+1))]`
-/

namespace A233871.P2553940949235825402
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233875 (n + 4) : ℝ) ^ (1 / (A035529 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233871.P2553940949235825402

/-! ## A233871.P7990262220804594001

`A233875(A167614(n+1))+A025442(n)`
-/

namespace A233871.P7990262220804594001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (A167614 (n + 1)).toNat + A025442 n

end

end A233871.P7990262220804594001

/-! ## A233871.P2053911651213749195

`A233875(A167614(n+1))+A184946(n)`
-/

namespace A233871.P2053911651213749195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (A167614 (n + 1)).toNat + A184946 n

end

end A233871.P2053911651213749195

/-!
# A233872: Number of (n+1)X(4+1) 0..7 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 21.

The programs for A233872, there is no canonical definition to state claims against.
-/

/-! ## A233872.P10661442740714890781

`A233875(A374004(n+1))`
-/

namespace A233872.P10661442740714890781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (A374004 (n + 1)).toNat

end

end A233872.P10661442740714890781

/-! ## A233872.P14947757670592326857

`A233875(A141214(n)+7)`
-/

namespace A233872.P14947757670592326857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (A141214 n + 7).toNat

end

end A233872.P14947757670592326857

/-! ## A233872.P10717282021085440547

`A233875(A052905(n)+9)`
-/

namespace A233872.P10717282021085440547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (A052905 n + 9).toNat

end

end A233872.P10717282021085440547

/-! ## A233872.P500719255379404511

`A233875(A055999(n)+10)`
-/

namespace A233872.P500719255379404511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (A055999 n + 10).toNat

end

end A233872.P500719255379404511

/-! ## A233872.P5198965032506802160

`A233875(eq[5, A066657(n)])`
-/

namespace A233872.P5198965032506802160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233872.P5198965032506802160

/-!
# A233873: Number of (n+1)X(5+1) 0..7 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 21.

The programs for A233873, there is no canonical definition to state claims against.
-/

/-! ## A233873.P18255745517526272957

`A233875(A374005(n+1))`
-/

namespace A233873.P18255745517526272957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (A374005 (n + 1)).toNat

end

end A233873.P18255745517526272957

/-! ## A233873.P6885836507591886887

`A233875(A167499(n+3))`
-/

namespace A233873.P6885836507591886887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (A167499 (n + 3)).toNat

end

end A233873.P6885836507591886887

/-! ## A233873.P7249071909849444411

`A233875(A155212(n)+13)`
-/

namespace A233873.P7249071909849444411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (A155212 n + 13).toNat

end

end A233873.P7249071909849444411

/-! ## A233873.P8762884520790851634

`A233875(A056000(n)+15)`
-/

namespace A233873.P8762884520790851634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (A056000 n + 15).toNat

end

end A233873.P8762884520790851634

/-! ## A233873.P12880284095307172518

`A233875(eq[7, A066657(n)])`
-/

namespace A233873.P12880284095307172518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233873.P12880284095307172518

/-!
# A233874: Number of (n+1)X(6+1) 0..7 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 21.

The programs for A233874, there is no canonical definition to state claims against.
-/

/-! ## A233874.P17038018172966889229

`A233875(A374007(n+1))`
-/

namespace A233874.P17038018172966889229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (A374007 (n + 1)).toNat

end

end A233874.P17038018172966889229

/-! ## A233874.P17501923774432282134

`A233875(A056115(n)+21)`
-/

namespace A233874.P17501923774432282134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (A056115 n + 21).toNat

end

end A233874.P17501923774432282134

/-! ## A233874.P5920222388943981981

`A233875(A167499(n+4)+1)`
-/

namespace A233874.P5920222388943981981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (A167499 (n + 4) + 1).toNat

end

end A233874.P5920222388943981981

/-! ## A233874.P1632349414877981237

`A233875(A167614(n+4)+3)`
-/

namespace A233874.P1632349414877981237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233875 (A167614 (n + 4) + 3).toNat

end

end A233874.P1632349414877981237

/-!
# A233876: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233876, there is no canonical definition to state claims against.
-/

/-! ## A233876.P16411597214202601099

`A233883(∑[4*n]+1)`
-/

namespace A233876.P16411597214202601099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233876.P16411597214202601099

/-! ## A233876.P18338313878168308570

`lcm(2, A233883(A001844(n)))`
-/

namespace A233876.P18338313878168308570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233883 (A001844 n).toNat)

end

end A233876.P18338313878168308570

/-! ## A233876.P8125280304968652838

`record[A003982(n)*A233883(n+1)]`
-/

namespace A233876.P8125280304968652838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A233883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233876.P8125280304968652838

/-! ## A233876.P2949822399580837482

`record[gcd(A114327(n), A233883(n+1))]`
-/

namespace A233876.P2949822399580837482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A233883 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233876.P2949822399580837482

/-! ## A233876.P8962825340784149073

`A007318(A007318(n))*A233883(A001844(n))`
-/

namespace A233876.P8962825340784149073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 n).toNat * A233883 (A001844 n).toNat

end

end A233876.P8962825340784149073

/-!
# A233877: Number of (n+1) X (2+1) 0..2 arrays with every 2 X 2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233877, there is no canonical definition to state claims against.
-/

/-! ## A233877.P4236183081131894661

`A183847(n+1)-A183838(n+1)`
-/

namespace A233877.P4236183081131894661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183847 (n + 1) - A183838 (n + 1)

end

end A233877.P4236183081131894661

/-! ## A233877.P6833598535193103266

`A183847(n+1)-A183845(∑[n+1]+2)`
-/

namespace A233877.P6833598535193103266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183847 (n + 1) - A183845 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233877.P6833598535193103266

/-! ## A233877.P14615688843125767112

`A233883(∑[n+1]+2)`
-/

namespace A233877.P14615688843125767112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233877.P14615688843125767112

/-! ## A233877.P7798823378421353688

`A183854(∑[n+1]+2)-A183838(n+1)`
-/

namespace A233877.P7798823378421353688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A183838 (n + 1)

end

end A233877.P7798823378421353688

/-! ## A233877.P17141970606683841707

`A233883(A000096(n)+3)%A233869(n+1)`
-/

namespace A233877.P17141970606683841707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233883 (A000096 n + 3).toNat) (A233869 (n + 1))

end

end A233877.P17141970606683841707

/-!
# A233878: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233878, there is no canonical definition to state claims against.
-/

/-! ## A233878.P355342751060378710

`A183848(n+1)-A183839(n+1)`
-/

namespace A233878.P355342751060378710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183848 (n + 1) - A183839 (n + 1)

end

end A233878.P355342751060378710

/-! ## A233878.P7841852012884364392

`A183848(n+1)-A183845(A167614(n+1))`
-/

namespace A233878.P7841852012884364392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183848 (n + 1) - A183845 (A167614 (n + 1)).toNat

end

end A233878.P7841852012884364392

/-! ## A233878.P14393073866916083218

`A233883(∑[n+2]+4)`
-/

namespace A233878.P14393073866916083218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233878.P14393073866916083218

/-! ## A233878.P12785731381066349918

`lcm(2, A233883(A167614(n+1)))`
-/

namespace A233878.P12785731381066349918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233883 (A167614 (n + 1)).toNat)

end

end A233878.P12785731381066349918

/-! ## A233878.P2174132709326551400

`A233883(A167614(n+1))+A185037(n)`
-/

namespace A233878.P2174132709326551400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (A167614 (n + 1)).toNat + A185037 n

end

end A233878.P2174132709326551400

/-!
# A233879: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233879, there is no canonical definition to state claims against.
-/

/-! ## A233879.P6868880699658878047

`A183849(n+1)-A183840(n+1)`
-/

namespace A233879.P6868880699658878047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183849 (n + 1) - A183840 (n + 1)

end

end A233879.P6868880699658878047

/-! ## A233879.P17930479802683799507

`A183849(n+1)-A183845(A145018(n+4))`
-/

namespace A233879.P17930479802683799507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183849 (n + 1) - A183845 (A145018 (n + 4)).toNat

end

end A233879.P17930479802683799507

/-! ## A233879.P4785493698128968143

`A233883(A374004(n+1))`
-/

namespace A233879.P4785493698128968143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (A374004 (n + 1)).toNat

end

end A233879.P4785493698128968143

/-! ## A233879.P8702836779955291836

`A233883(A145018(n+4))`
-/

namespace A233879.P8702836779955291836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (A145018 (n + 4)).toNat

end

end A233879.P8702836779955291836

/-! ## A233879.P4167378939151170436

`A233883(A141214(n)+7)`
-/

namespace A233879.P4167378939151170436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (A141214 n + 7).toNat

end

end A233879.P4167378939151170436

/-!
# A233880: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233880, there is no canonical definition to state claims against.
-/

/-! ## A233880.P9141134956450325027

`A183850(n+1)-A183841(n+1)`
-/

namespace A233880.P9141134956450325027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183850 (n + 1) - A183841 (n + 1)

end

end A233880.P9141134956450325027

/-! ## A233880.P15541963021578463938

`A233883(A374005(n+1))`
-/

namespace A233880.P15541963021578463938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (A374005 (n + 1)).toNat

end

end A233880.P15541963021578463938

/-! ## A233880.P2382805474043265247

`A233883(A167499(n+3))`
-/

namespace A233880.P2382805474043265247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (A167499 (n + 3)).toNat

end

end A233880.P2382805474043265247

/-! ## A233880.P9196703869309152368

`A233883(A046691(n+3))`
-/

namespace A233880.P9196703869309152368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (A046691 (n + 3)).toNat

end

end A233880.P9196703869309152368

/-! ## A233880.P18049457066760053356

`A233883(eq[4, A193592(n)])`
-/

namespace A233880.P18049457066760053356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233880.P18049457066760053356

/-!
# A233881: Number of (n+1)X(6+1) 0..2 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233881, there is no canonical definition to state claims against.
-/

/-! ## A233881.P4950668900599805200

`A183851(n+1)-A183842(n+1)`
-/

namespace A233881.P4950668900599805200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183851 (n + 1) - A183842 (n + 1)

end

end A233881.P4950668900599805200

/-! ## A233881.P6932437908801561271

`A233883(A374007(n+1))`
-/

namespace A233881.P6932437908801561271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (A374007 (n + 1)).toNat

end

end A233881.P6932437908801561271

/-! ## A233881.P11301320624242076614

`A233883(A046691(n+3)+10)`
-/

namespace A233881.P11301320624242076614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (A046691 (n + 3) + 10).toNat

end

end A233881.P11301320624242076614

/-! ## A233881.P12700717675054508787

`A233883(eq[3, A219347(n)])`
-/

namespace A233881.P12700717675054508787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233881.P12700717675054508787

/-! ## A233881.P6142207272858917109

`A233883(eq[5, A193592(n)])`
-/

namespace A233881.P6142207272858917109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233881.P6142207272858917109

/-!
# A233882: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233882, there is no canonical definition to state claims against.
-/

/-! ## A233882.P10667707848580813003

`A183852(n+1)-A183843(n+1)`
-/

namespace A233882.P10667707848580813003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183852 (n + 1) - A183843 (n + 1)

end

end A233882.P10667707848580813003

/-! ## A233882.P3434842642491731218

`A233883(A374008(n+1))`
-/

namespace A233882.P3434842642491731218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (A374008 (n + 1)).toNat

end

end A233882.P3434842642491731218

/-! ## A233882.P17682945986460346587

`A233883(A167499(n+5)+2)`
-/

namespace A233882.P17682945986460346587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (A167499 (n + 5) + 2).toNat

end

end A233882.P17682945986460346587

/-! ## A233882.P13502902813181214125

`A233883(eq[8, A131818(n+1)])`
-/

namespace A233882.P13502902813181214125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233882.P13502902813181214125

/-! ## A233882.P7736958213812061163

`A233883(A055999(n+4))`
-/

namespace A233882.P7736958213812061163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (A055999 (n + 4)).toNat

end

end A233882.P7736958213812061163

/-!
# A233883: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11 (11 maximizes T(1,1)).

The programs for A233883, there is no canonical definition to state claims against.
-/

/-! ## A233883.P17050445144965940633

`A183854(n+1)-A183845(n+1)`
-/

namespace A233883.P17050445144965940633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (n + 1) - A183845 (n + 1)

end

end A233883.P17050445144965940633

/-!
# A233884: Number of (n+1)X(n+1) 0..6 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 30, and no two adjacent values equal.

The programs for A233884, there is no canonical definition to state claims against.
-/

/-! ## A233884.P2624981934430029805

`A233892(∑[4*n]+1)`
-/

namespace A233884.P2624981934430029805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233884.P2624981934430029805

/-! ## A233884.P8028072042329153390

`lcm(2, A233892(A001844(n)))`
-/

namespace A233884.P8028072042329153390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233892 (A001844 n).toNat)

end

end A233884.P8028072042329153390

/-! ## A233884.P1838576747511116719

`A233892(A001844(n))+A178798(n)`
-/

namespace A233884.P1838576747511116719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (A001844 n).toNat + A178798 n

end

end A233884.P1838576747511116719

/-! ## A233884.P1295827509445278882

`A326464(n)+A233892(A001844(n))`
-/

namespace A233884.P1295827509445278882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326464 n + A233892 (A001844 n).toNat

end

end A233884.P1295827509445278882

/-! ## A233884.P1435408598907774622

`A282230(n+1)+A233892(A001844(n))`
-/

namespace A233884.P1435408598907774622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282230 (n + 1) + A233892 (A001844 n).toNat

end

end A233884.P1435408598907774622

/-!
# A233885: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock having the sum of the squares of the edge differences equal to 30, and no two adjacent values equal.

The programs for A233885, there is no canonical definition to state claims against.
-/

/-! ## A233885.P17550578317355502970

`A233892(∑[n]+1)`
-/

namespace A233885.P17550578317355502970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233885.P17550578317355502970

/-! ## A233885.P13346349464928324874

`lcm(2, A233892(A000124(n)))`
-/

namespace A233885.P13346349464928324874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233892 (A000124 n).toNat)

end

end A233885.P13346349464928324874

/-! ## A233885.P1508800875501735381

`record[A010054(n)*A233892(n+1)]`
-/

namespace A233885.P1508800875501735381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233885.P1508800875501735381

/-! ## A233885.P15691202750358992821

`record[A103451(n)*A233892(n+1)]`
-/

namespace A233885.P15691202750358992821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A233892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233885.P15691202750358992821

/-! ## A233885.P11941138448908335478

`record[A233892(n+1)/A022166(n)]`
-/

namespace A233885.P11941138448908335478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233892 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233885.P11941138448908335478

/-!
# A233886: Number of (n+1)X(2+1) 0..6 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 30, and no two adjacent values equal.

The programs for A233886, there is no canonical definition to state claims against.
-/

/-! ## A233886.P9550852767158234475

`A233892(∑[n+1]+2)`
-/

namespace A233886.P9550852767158234475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233886.P9550852767158234475

/-! ## A233886.P15067862725248102736

`record[A010054(n)*A233892(n+2)]`
-/

namespace A233886.P15067862725248102736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233892 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233886.P15067862725248102736

/-! ## A233886.P3467247455071287720

`record[root(A233892(n+2), A059268(n))]`
-/

namespace A233886.P3467247455071287720
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233892 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233886.P3467247455071287720

/-! ## A233886.P5761255321425824679

`record[root(A233892(n+2), A124927(n))]`
-/

namespace A233886.P5761255321425824679
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233892 (n + 2) : ℝ) ^ (1 / (A124927 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233886.P5761255321425824679

/-! ## A233886.P865969342508690895

`record[A233892(abs(A201163(n)))]`
-/

namespace A233886.P865969342508690895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233886.P865969342508690895

/-!
# A233887: Number of (n+1)X(3+1) 0..6 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 30, and no two adjacent values equal.

The programs for A233887, there is no canonical definition to state claims against.
-/

/-! ## A233887.P17879055830677972803

`A233892(∑[n+2]+4)`
-/

namespace A233887.P17879055830677972803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233887.P17879055830677972803

/-! ## A233887.P14702737121428263790

`lcm(2, A233892(A167614(n+1)))`
-/

namespace A233887.P14702737121428263790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233892 (A167614 (n + 1)).toNat)

end

end A233887.P14702737121428263790

/-! ## A233887.P1388345240097033489

`A233892(A167614(n+1))+A185284(n)`
-/

namespace A233887.P1388345240097033489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (A167614 (n + 1)).toNat + A185284 n

end

end A233887.P1388345240097033489

/-! ## A233887.P10529435332398235586

`A233892(A167614(n+1))+A034538(n+1)`
-/

namespace A233887.P10529435332398235586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (A167614 (n + 1)).toNat + A034538 (n + 1)

end

end A233887.P10529435332398235586

/-! ## A233887.P1225745587235734832

`A326291(n+1)+A233892(A167614(n+1))`
-/

namespace A233887.P1225745587235734832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A233892 (A167614 (n + 1)).toNat

end

end A233887.P1225745587235734832

/-!
# A233888: Number of (n+1)X(4+1) 0..6 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 30, and no two adjacent values equal.

The programs for A233888, there is no canonical definition to state claims against.
-/

/-! ## A233888.P267821217715941432

`A233892(A374004(n+1))`
-/

namespace A233888.P267821217715941432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (A374004 (n + 1)).toNat

end

end A233888.P267821217715941432

/-! ## A233888.P10423711205619290927

`A233892(A141214(n)+7)`
-/

namespace A233888.P10423711205619290927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (A141214 n + 7).toNat

end

end A233888.P10423711205619290927

/-! ## A233888.P15021084314877884031

`A233892(A052905(n)+9)`
-/

namespace A233888.P15021084314877884031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (A052905 n + 9).toNat

end

end A233888.P15021084314877884031

/-! ## A233888.P7637079648778288274

`A233892(A055999(n)+10)`
-/

namespace A233888.P7637079648778288274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (A055999 n + 10).toNat

end

end A233888.P7637079648778288274

/-! ## A233888.P5423308530189821591

`A233892(A167614(n+2)+1)`
-/

namespace A233888.P5423308530189821591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (A167614 (n + 2) + 1).toNat

end

end A233888.P5423308530189821591

/-!
# A233889: Number of (n+1)X(5+1) 0..6 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 30, and no two adjacent values equal.

The programs for A233889, there is no canonical definition to state claims against.
-/

/-! ## A233889.P15732203699770769723

`A233892(A374005(n+1))`
-/

namespace A233889.P15732203699770769723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (A374005 (n + 1)).toNat

end

end A233889.P15732203699770769723

/-! ## A233889.P7302448324268574648

`A233892(A167499(n+3))`
-/

namespace A233889.P7302448324268574648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (A167499 (n + 3)).toNat

end

end A233889.P7302448324268574648

/-! ## A233889.P3715090853631321510

`A233892(A056000(n)+15)`
-/

namespace A233889.P3715090853631321510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (A056000 n + 15).toNat

end

end A233889.P3715090853631321510

/-! ## A233889.P4641032682870350370

`A233892(eq[6, A131818(n+1)])`
-/

namespace A233889.P4641032682870350370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233889.P4641032682870350370

/-! ## A233889.P7931232345271549669

`A233892(A000217(n+3)+n+9)`
-/

namespace A233889.P7931232345271549669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (A000217 (n + 3) + (n + 9 : ℤ)).toNat

end

end A233889.P7931232345271549669

/-!
# A233890: Number of (n+1)X(6+1) 0..6 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 30, and no two adjacent values equal.

The programs for A233890, there is no canonical definition to state claims against.
-/

/-! ## A233890.P2202452854035570853

`A233892(A374007(n+1))`
-/

namespace A233890.P2202452854035570853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (A374007 (n + 1)).toNat

end

end A233890.P2202452854035570853

/-! ## A233890.P7061642981703981872

`A233892(A166136(n+4))`
-/

namespace A233890.P7061642981703981872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (A166136 (n + 4)).toNat

end

end A233890.P7061642981703981872

/-! ## A233890.P1109224280270147822

`A233892(eq[7, A131818(n+1)])`
-/

namespace A233890.P1109224280270147822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233890.P1109224280270147822

/-! ## A233890.P6293182996062882103

`A233892(A052905(n+3))`
-/

namespace A233890.P6293182996062882103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (A052905 (n + 3)).toNat

end

end A233890.P6293182996062882103

/-! ## A233890.P9431992939175447950

`A233892(eq[5, A193592(n)])`
-/

namespace A233890.P9431992939175447950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233890.P9431992939175447950

/-!
# A233891: Number of (n+1)X(7+1) 0..6 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 30, and no two adjacent values equal.

The programs for A233891, there is no canonical definition to state claims against.
-/

/-! ## A233891.P15778121209908314479

`A233892(A374008(n+1))`
-/

namespace A233891.P15778121209908314479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (A374008 (n + 1)).toNat

end

end A233891.P15778121209908314479

/-! ## A233891.P6973717433166033484

`A233892(eq[8, A131818(n+1)])`
-/

namespace A233891.P6973717433166033484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233891.P6973717433166033484

/-! ## A233891.P13268991447619995637

`A233892(A055999(n+4))`
-/

namespace A233891.P13268991447619995637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (A055999 (n + 4)).toNat

end

end A233891.P13268991447619995637

/-! ## A233891.P3871849522324029394

`A233892(eq[6, A193592(n)])`
-/

namespace A233891.P3871849522324029394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233891.P3871849522324029394

/-! ## A233891.P1736407127423643913

`A233892(eq[7, A200370(n+1)])`
-/

namespace A233891.P1736407127423643913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233891.P1736407127423643913

/-!
# A233893: Prime(n), where n is such that (1+sum_{i=1..n} prime(i)^4) / n is an integer.

The programs for A233893, there is no canonical definition to state claims against.
-/

/-! ## A233893.P16551645849730857561

`A000040(A128168(n+1))`
-/

namespace A233893.P16551645849730857561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A128168 (n + 1)).toNat

end

end A233893.P16551645849730857561

/-! ## A233893.P4356239618725240732

`A008578(A128168(n+1)+1)`
-/

namespace A233893.P4356239618725240732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A128168 (n + 1) + 1).toNat

end

end A233893.P4356239618725240732

/-! ## A233893.P10820769095089487436

`A158611(A128168(n+1)+2)`
-/

namespace A233893.P10820769095089487436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A128168 (n + 1) + 2).toNat

end

end A233893.P10820769095089487436

/-! ## A233893.P13821716676571682665

`A006093(A128168(gcd(n, n+1)+n))+1`
-/

namespace A233893.P13821716676571682665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A128168 (Nat.gcd n (n + 1) + n)).toNat + 1

end

end A233893.P13821716676571682665

/-! ## A233893.P4205023590873742853

`A257993(2*n+1)+A006093(A128168(n+1))`
-/

namespace A233893.P4205023590873742853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (2 * n + 1) + A006093 (A128168 (n + 1)).toNat

end

end A233893.P4205023590873742853

/-!
# A233895: G.f. satisfies: A(x) = 1 + x*A(x)*A(-x) + x^2*(A(x)^2 + A(-x)^2).

The programs for A233895, there is no canonical definition to state claims against.
-/

/-! ## A233895.P9255089503973024214

`A002635(A271358(n)+A127697(n))`
-/

namespace A233895.P9255089503973024214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A271358 n + A127697 n).toNat

end

end A233895.P9255089503973024214

/-! ## A233895.P14566501386600969361

`A215244(A343795(n))-A281080(n+1)`
-/

namespace A233895.P14566501386600969361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215244 (A343795 n).toNat - A281080 (n + 1)

end

end A233895.P14566501386600969361

/-!
# A233897: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock having the sum of the squares of all six edge and diagonal differences equal to 35.

The programs for A233897, there is no canonical definition to state claims against.
-/

/-! ## A233897.P9959843833529755409

`A233903(∑[n]+1)`
-/

namespace A233897.P9959843833529755409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233903 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233897.P9959843833529755409

/-! ## A233897.P12647485254092313479

`lcm(2, A233903(A000124(n)))`
-/

namespace A233897.P12647485254092313479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233903 (A000124 n).toNat)

end

end A233897.P12647485254092313479

/-! ## A233897.P17577727733545779784

`record[A233903(A000124(∑{digits}[n, #]))]`
-/

namespace A233897.P17577727733545779784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233903 (A000124 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233897.P17577727733545779784

/-! ## A233897.P6164874035168303161

`record[A010054(n)*A233903(n+1)]`
-/

namespace A233897.P6164874035168303161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233897.P6164874035168303161

/-! ## A233897.P8895804030829776381

`record[A233903(n+1)/A007318(n)]`
-/

namespace A233897.P8895804030829776381
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233903 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233897.P8895804030829776381

/-!
# A233898: Number of (n+1)X(2+1) 0..6 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 35.

The programs for A233898, there is no canonical definition to state claims against.
-/

/-! ## A233898.P14134797894852926559

`A233903(∑[n+1]+2)`
-/

namespace A233898.P14134797894852926559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233903 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233898.P14134797894852926559

/-! ## A233898.P10311045672099765468

`lcm(2, A233903(A133263(n+1)))`
-/

namespace A233898.P10311045672099765468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233903 (A133263 (n + 1)).toNat)

end

end A233898.P10311045672099765468

/-! ## A233898.P10877762937342607458

`record[root(A233903(n+2), A145111(n))]`
-/

namespace A233898.P10877762937342607458
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233903 (n + 2) : ℝ) ^ (1 / (A145111 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233898.P10877762937342607458

/-! ## A233898.P8842260525538023060

`record[gcd(A059045(n), A233903(n+3))]`
-/

namespace A233898.P8842260525538023060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059045 n) (A233903 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233898.P8842260525538023060

/-! ## A233898.P5953011971550568419

`A007318(C(2, n))*A233903(A133263(n+1))`
-/

namespace A233898.P5953011971550568419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A233903 (A133263 (n + 1)).toNat

end

end A233898.P5953011971550568419

/-!
# A233899: Number of (n+1)X(3+1) 0..6 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 35.

The programs for A233899, there is no canonical definition to state claims against.
-/

/-! ## A233899.P17383343879610024638

`A233903(∑[n+2]+4)`
-/

namespace A233899.P17383343879610024638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233903 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233899.P17383343879610024638

/-! ## A233899.P12549396469204799759

`lcm(2, A233903(A167614(n+1)))`
-/

namespace A233899.P12549396469204799759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233903 (A167614 (n + 1)).toNat)

end

end A233899.P12549396469204799759

/-! ## A233899.P7410195795265674594

`A233903(A167614(n+1))+A011731(n)`
-/

namespace A233899.P7410195795265674594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233903 (A167614 (n + 1)).toNat + A011731 n

end

end A233899.P7410195795265674594

/-! ## A233899.P935710485126873333

`A233903(A167614(n+1))+A025443(n)`
-/

namespace A233899.P935710485126873333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233903 (A167614 (n + 1)).toNat + A025443 n

end

end A233899.P935710485126873333

/-! ## A233899.P8665222244756320586

`A233903(A167614(n+1))+A061858(n)`
-/

namespace A233899.P8665222244756320586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233903 (A167614 (n + 1)).toNat + A061858 n

end

end A233899.P8665222244756320586

