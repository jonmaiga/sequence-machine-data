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
import Seq.B000.C016
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
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
# A214301: Smallest limiting value of n under iteration of "Sum of its digits raised to its digits power" (A045512).

The programs for A214301, there is no canonical definition to state claims against.
-/

/-! ## A214301.P5066332836217607298

`A289711(12*A058663(n+1))`
-/

namespace A214301.P5066332836217607298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289711 (12 * A058663 (n + 1)).toNat

end

end A214301.P5066332836217607298

/-! ## A214301.P14028392501632941296

`A035749(A058663(n+1)^A077985(n))`
-/

namespace A214301.P14028392501632941296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035749 (SequenceMachineLib.roundAway ((A058663 (n + 1) : ℚ) ^ (A077985 n : ℤ))).toNat

end

end A214301.P14028392501632941296

/-! ## A214301.P13937147824571999133

`A035749(A058663(n+1)^A300044(n))`
-/

namespace A214301.P13937147824571999133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035749 (SequenceMachineLib.roundAway ((A058663 (n + 1) : ℚ) ^ (A300044 n : ℤ))).toNat

end

end A214301.P13937147824571999133

/-! ## A214301.P16664231575875929046

`A300052(A058663(n+1)^A077985(n))`
-/

namespace A214301.P16664231575875929046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300052 (SequenceMachineLib.roundAway ((A058663 (n + 1) : ℚ) ^ (A077985 n : ℤ))).toNat

end

end A214301.P16664231575875929046

/-! ## A214301.P3380462771447951829

`A300052(A058663(n+1)^A300044(n))`
-/

namespace A214301.P3380462771447951829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300052 (SequenceMachineLib.roundAway ((A058663 (n + 1) : ℚ) ^ (A300044 n : ℤ))).toNat

end

end A214301.P3380462771447951829

/-!
# A214302: Expansion of f(-x^2, -x^4) * f(x^3, x^5) in powers of x where f(,) is Ramanujan's two-variable theta function.

The programs for A214302, there is no canonical definition to state claims against.
-/

/-! ## A214302.P17397740096413953708

`A143379(2*n)`
-/

namespace A214302.P17397740096413953708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143379 (2 * n)

end

end A214302.P17397740096413953708

/-! ## A214302.P13621877136961275820

`A143379(record[n%10+n])%10`
-/

namespace A214302.P13621877136961275820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) 10

end

end A214302.P13621877136961275820

/-! ## A214302.P12383738898184141787

`A143379(record[A093178(n)-1])%10`
-/

namespace A214302.P12383738898184141787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 10

end

end A214302.P12383738898184141787

/-! ## A214302.P4452506359880439586

`or(A000007(n), A143379(A005843(n)))`
-/

namespace A214302.P4452506359880439586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A143379 (A005843 n).toNat)

end

end A214302.P4452506359880439586

/-! ## A214302.P8576857649130698901

`A143380(A016813(2*n))/2`
-/

namespace A214302.P8576857649130698901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143380 (A016813 (2 * n)).toNat : ℚ) / 2

end

end A214302.P8576857649130698901

/-!
# A214303: Expansion of f(-x^2, -x^4) * f(x^1, x^7) in powers of x where f(,) is Ramanujan's two-variable theta function.

The programs for A214303, there is no canonical definition to state claims against.
-/

/-! ## A214303.P13864629366566675793

`-A143379(2*n+1)`
-/

namespace A214303.P13864629366566675793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A143379 (2 * n + 1)

end

end A214303.P13864629366566675793

/-! ## A214303.P8545862623714533294

`A000007(n+1)-A143379(2*n+1)`
-/

namespace A214303.P8545862623714533294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A143379 (2 * n + 1)

end

end A214303.P8545862623714533294

/-! ## A214303.P495446769553338973

`A000034(2*n)-(A143379(2*n+1)+1)`
-/

namespace A214303.P495446769553338973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) - (A143379 (2 * n + 1) + 1)

end

end A214303.P495446769553338973

/-! ## A214303.P18300884894739775334

`A143379(2*n+1)*A143379(A093178(2*n))`
-/

namespace A214303.P18300884894739775334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143379 (2 * n + 1) * A143379 (A093178 (2 * n)).toNat

end

end A214303.P18300884894739775334

/-! ## A214303.P7261733079868032962

`A063747(Δ[A047513(n+1)])*A143379(2*n+1)`
-/

namespace A214303.P7261733079868032962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063747 (f1 (n + 1) - f1 n).toNat * A143379 (2 * n + 1)

end

end A214303.P7261733079868032962

/-! ## A214303.P14970802667757840648

`A338101(A059268(n))-A143379(2*n+1)`
-/

namespace A214303.P14970802667757840648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338101 (A059268 n).toNat - A143379 (2 * n + 1)

end

end A214303.P14970802667757840648

/-!
# A214304: Expansion of phi(q) + phi(q^2) - phi(q^4) in powers of q where phi() is a Ramanujan theta function.

The programs for A214304, the canonical program `A214304.P9342972882783353441` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214304 has offset 0).

The definition of A214304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214304.P9549771734565123668

`A033717(n)%4`
-/

namespace A214304.P9549771734565123668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033717 n) 4

end

end A214304.P9549771734565123668

namespace A214304

/-- `A033717(n)%4` -/
def P9549771734565123668.Spec : Prop :=
  ∀ n, P9549771734565123668.a n = A214304 n

end A214304

/-! ## A214304.P8165685039780479547

`and(3, A127786(n))`
-/

namespace A214304.P8165685039780479547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A127786 n)

end

end A214304.P8165685039780479547

namespace A214304

/-- `and(3, A127786(n))` -/
def P8165685039780479547.Spec : Prop :=
  ∀ n, P8165685039780479547.a n = A214304 n

end A214304

/-! ## A214304.P8371492270496040151

`and(3, A246816(n))`
-/

namespace A214304.P8371492270496040151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A246816 n)

end

end A214304.P8371492270496040151

namespace A214304

/-- `and(3, A246816(n))` -/
def P8371492270496040151.Spec : Prop :=
  ∀ n, P8371492270496040151.a n = A214304 n

end A214304

/-! ## A214304.P9342972882783353441

`A000122(gcd(n, ∑[n]))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A214304

/-- `A000122(gcd(n, ∑[n]))` -/
def P9342972882783353441.Spec : Prop :=
  ∀ n, P9342972882783353441.a n = A214304 n

theorem P9342972882783353441.correct : P9342972882783353441.Spec := by
  intro n
  simp only [A214304]

end A214304

/-! ## A214304.P15378452732635810343

`A000122(lcm(2, n)/2)`
-/

namespace A214304.P15378452732635810343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

end

end A214304.P15378452732635810343

namespace A214304

/-- `A000122(lcm(2, n)/2)` -/
def P15378452732635810343.Spec : Prop :=
  ∀ n, P15378452732635810343.a n = A214304 n

end A214304

/-! ## A214304.P5197278829916401461

`A000122(A026741(n))`
-/

namespace A214304.P5197278829916401461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A026741 n).toNat

end

end A214304.P5197278829916401461

namespace A214304

/-- `A000122(A026741(n))` -/
def P5197278829916401461.Spec : Prop :=
  ∀ n, P5197278829916401461.a n = A214304 n

end A214304

/-! ## A214304.P11724972092634604424

`A007877(A033717(n))`
-/

namespace A214304.P11724972092634604424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A033717 n).toNat

end

end A214304.P11724972092634604424

namespace A214304

/-- `A007877(A033717(n))` -/
def P11724972092634604424.Spec : Prop :=
  ∀ n, P11724972092634604424.a n = A214304 n

end A214304

/-! ## A214304.P3132282042498511926

`A000122(n/A040001(n))`
-/

namespace A214304.P3132282042498511926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.roundAway ((n : ℚ) / (A040001 n : ℚ))).toNat

end

end A214304.P3132282042498511926

namespace A214304

/-- `A000122(n/A040001(n))` -/
def P3132282042498511926.Spec : Prop :=
  ∀ n, P3132282042498511926.a n = A214304 n

end A214304

/-! ## A214304.P9277279904720463271

`and(A033717(n), A052901(n))`
-/

namespace A214304.P9277279904720463271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033717 n) (A052901 n)

end

end A214304.P9277279904720463271

namespace A214304

/-- `and(A033717(n), A052901(n))` -/
def P9277279904720463271.Spec : Prop :=
  ∀ n, P9277279904720463271.a n = A214304 n

end A214304

/-! ## A214304.P7358599599494294980

`and(A033717(n), A082204(n))`
-/

namespace A214304.P7358599599494294980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033717 n) (A082204 n)

end

end A214304.P7358599599494294980

namespace A214304

/-- `and(A033717(n), A082204(n))` -/
def P7358599599494294980.Spec : Prop :=
  ∀ n, P7358599599494294980.a n = A214304 n

end A214304

/-! ## A214304.P5646386524390693033

`and(A033717(n), A097509(n))`
-/

namespace A214304.P5646386524390693033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033717 n) (A097509 n)

end

end A214304.P5646386524390693033

namespace A214304

/-- `and(A033717(n), A097509(n))` -/
def P5646386524390693033.Spec : Prop :=
  ∀ n, P5646386524390693033.a n = A214304 n

end A214304

/-! ## A214304.P7298004710940015752

`A056594(A033717(n)+2)+1`
-/

namespace A214304.P7298004710940015752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A033717 n + 2).toNat + 1

end

end A214304.P7298004710940015752

namespace A214304

/-- `A056594(A033717(n)+2)+1` -/
def P7298004710940015752.Spec : Prop :=
  ∀ n, P7298004710940015752.a n = A214304 n

end A214304

/-! ## A214304.P12583236893076454032

`1-A128130(2*A033717(n))`
-/

namespace A214304.P12583236893076454032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A128130 (2 * A033717 n).toNat

end

end A214304.P12583236893076454032

namespace A214304

/-- `1-A128130(2*A033717(n))` -/
def P12583236893076454032.Spec : Prop :=
  ∀ n, P12583236893076454032.a n = A214304 n

end A214304

/-! ## A214304.P18039670133663182870

`A000122(n/A134451(n+2))`
-/

namespace A214304.P18039670133663182870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.roundAway ((n : ℚ) / (A134451 (n + 2) : ℚ))).toNat

end

end A214304.P18039670133663182870

namespace A214304

/-- `A000122(n/A134451(n+2))` -/
def P18039670133663182870.Spec : Prop :=
  ∀ n, P18039670133663182870.a n = A214304 n

end A214304

/-! ## A214304.P372052431142864513

`A000122(n/(A176059(n)-1))`
-/

namespace A214304.P372052431142864513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.roundAway ((n : ℚ) / (A176059 n - 1 : ℚ))).toNat

end

end A214304.P372052431142864513

namespace A214304

/-- `A000122(n/(A176059(n)-1))` -/
def P372052431142864513.Spec : Prop :=
  ∀ n, P372052431142864513.a n = A214304 n

end A214304

/-! ## A214304.P18386202954741696199

`A000122(n/(2-A000035(n)))`
-/

namespace A214304.P18386202954741696199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.roundAway ((n : ℚ) / (2 - A000035 n : ℚ))).toNat

end

end A214304.P18386202954741696199

namespace A214304

/-- `A000122(n/(2-A000035(n)))` -/
def P18386202954741696199.Spec : Prop :=
  ∀ n, P18386202954741696199.a n = A214304 n

end A214304

/-! ## A214304.P693911560137511515

`and(A033717(n), A036452(n+1))`
-/

namespace A214304.P693911560137511515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033717 n) (A036452 (n + 1))

end

end A214304.P693911560137511515

namespace A214304

/-- `and(A033717(n), A036452(n+1))` -/
def P693911560137511515.Spec : Prop :=
  ∀ n, P693911560137511515.a n = A214304 n

end A214304

/-! ## A214304.P9127721741325494452

`and(A033717(n), A049237(n+1))`
-/

namespace A214304.P9127721741325494452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033717 n) (A049237 (n + 1))

end

end A214304.P9127721741325494452

namespace A214304

/-- `and(A033717(n), A049237(n+1))` -/
def P9127721741325494452.Spec : Prop :=
  ∀ n, P9127721741325494452.a n = A214304 n

end A214304

/-! ## A214304.P14168502300488469651

`and(A020639(A033720(n)), A033717(n))`
-/

namespace A214304.P14168502300488469651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (A033720 n).toNat) (A033717 n)

end

end A214304.P14168502300488469651

namespace A214304

/-- `and(A020639(A033720(n)), A033717(n))` -/
def P14168502300488469651.Spec : Prop :=
  ∀ n, P14168502300488469651.a n = A214304 n

end A214304

/-!
# A214305: 

The programs for A214305, there is no canonical definition to state claims against.
-/

/-! ## A214305.P16142902902157881823

`∩[A001567(n+1), A179707(n+1)]`
-/

namespace A214305.P16142902902157881823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214305.P16142902902157881823

/-! ## A214305.P6542538359801004231

`∩[A050217(n+1), A179707(n+1)]`
-/

namespace A214305.P6542538359801004231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214305.P6542538359801004231

/-! ## A214305.P12709960680138403950

`∩[A066488(n+1), A179707(n+1)]`
-/

namespace A214305.P12709960680138403950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214305.P12709960680138403950

/-! ## A214305.P13130099366180893140

`∩[A153508(n+1), A179707(n+1)]`
-/

namespace A214305.P13130099366180893140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214305.P13130099366180893140

/-! ## A214305.P1565219262064234610

`∩[A179707(n+1), A291601(n+1)]`
-/

namespace A214305.P1565219262064234610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214305.P1565219262064234610

/-! ## A214305.P10387897005164395852

`∩[A020136(n+1), A179707(n+1)]`
-/

namespace A214305.P10387897005164395852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214305.P10387897005164395852

/-! ## A214305.P5108396010780782015

`∩[A020144(n+1), A179707(n+1)]`
-/

namespace A214305.P5108396010780782015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214305.P5108396010780782015

/-! ## A214305.P13285026566165436573

`∩[A179707(n+1), A306259(n+1)]`
-/

namespace A214305.P13285026566165436573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214305.P13285026566165436573

/-! ## A214305.P6024743025917138164

`∩[A179707(n+1), A276733(n+1)]`
-/

namespace A214305.P6024743025917138164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214305.P6024743025917138164

/-!
# A214306: Triangle with entry a(n,m) giving the total number of bracelets of n beads (D_n symmetry) with n colors available for each bead, but only m distinct colors present, with m from {1, 2, ..., n} and n >= 1.

The programs for A214306, there is no canonical definition to state claims against.
-/

/-! ## A214306.P17560735444817236084

`A135278(n)*A273891(n+1)`
-/

namespace A214306.P17560735444817236084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A273891 (n + 1)

end

end A214306.P17560735444817236084

/-! ## A214306.P9313249719520922837

`A074909(n+1)*A273891(n+1)`
-/

namespace A214306.P9313249719520922837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A273891 (n + 1)

end

end A214306.P9313249719520922837

/-! ## A214306.P10238653863582981530

`A007318(comp[∑[n]])*A273891(n+1)`
-/

namespace A214306.P10238653863582981530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A273891 (n + 1)

end

end A214306.P10238653863582981530

/-! ## A214306.P11038177803515265877

`(A087854(n+1)-A305541(n+1))*A135278(n)`
-/

namespace A214306.P11038177803515265877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087854 (n + 1) - A305541 (n + 1)) * A135278 n

end

end A214306.P11038177803515265877

/-! ## A214306.P14919199919527912654

`(A087854(n+1)-A305541(n+1))*A007318(A014132(n+1))`
-/

namespace A214306.P14919199919527912654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087854 (n + 1) - A305541 (n + 1)) * A007318 (A014132 (n + 1)).toNat

end

end A214306.P14919199919527912654

/-! ## A214306.P9291523532293588818

`A213935(n+1)-A135278(n)*A305541(n+1)`
-/

namespace A214306.P9291523532293588818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213935 (n + 1) - A135278 n * A305541 (n + 1)

end

end A214306.P9291523532293588818

/-!
# A214307: a(n) is the number of representative three-color bracelets (necklaces with turn over allowed) with n beads for n >= 3.

The programs for A214307, there is no canonical definition to state claims against.
-/

/-! ## A214307.P14841373719683405544

`A213940(∑[n+2]+4)`
-/

namespace A214307.P14841373719683405544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A214307.P14841373719683405544

/-! ## A214307.P10989444038290016113

`A213940(A167614(n+1))+C(n+1, 69)`
-/

namespace A214307.P10989444038290016113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (A167614 (n + 1)).toNat + (Nat.choose (n + 1) 69 : ℤ)

end

end A214307.P10989444038290016113

/-! ## A214307.P18411496428771354441

`A213940(A167499(n)+n)+C(n+1, 69)`
-/

namespace A214307.P18411496428771354441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (A167499 n + (n : ℤ)).toNat + (Nat.choose (n + 1) 69 : ℤ)

end

end A214307.P18411496428771354441

/-! ## A214307.P4919277811229666824

`A213940(A167614(n+1))%A199321(n)`
-/

namespace A214307.P4919277811229666824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213940 (A167614 (n + 1)).toNat) (A199321 n)

end

end A214307.P4919277811229666824

/-! ## A214307.P16711477036059930175

`or(A000007(n), A213940(A167614(n+1)))`
-/

namespace A214307.P16711477036059930175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A213940 (A167614 (n + 1)).toNat)

end

end A214307.P16711477036059930175

/-!
# A214308: a(n) is the number of all two colored bracelets (necklaces with turning over allowed) with n beads with the two colors from a repertoire of n distinct colors, for n>=2.

The programs for A214308, the canonical program `A214308.P10181968617676243158` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214308 has offset 2).

The definition of A214308 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056342, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A214308.P10181968617676243158

`C(n+2, 2)*A056342(n+2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A214308

/-- `C(n+2, 2)*A056342(n+2)` -/
def P10181968617676243158.Spec : Prop :=
  ∀ n, P10181968617676243158.a n = A214308 (n + 2)

theorem P10181968617676243158.correct : P10181968617676243158.Spec := by
  intro n
  simp only [A214308, Nat.add_sub_cancel]

end A214308

/-! ## A214308.P5134414767859903679

`∑[n+1]*A056342(n+2)`
-/

namespace A214308.P5134414767859903679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A056342 (n + 2)

end

end A214308.P5134414767859903679

namespace A214308

/-- `∑[n+1]*A056342(n+2)` -/
def P5134414767859903679.Spec : Prop :=
  ∀ n, P5134414767859903679.a n = A214308 (n + 2)

end A214308

/-! ## A214308.P16079094763135723931

`A214306(∑[n+1]+2)`
-/

namespace A214308.P16079094763135723931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214306 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A214308.P16079094763135723931

namespace A214308

/-- `A214306(∑[n+1]+2)` -/
def P16079094763135723931.Spec : Prop :=
  ∀ n, P16079094763135723931.a n = A214308 (n + 2)

end A214308

/-! ## A214308.P10018456619304517412

`gcd(A000038(n), A214306(A133263(n+1)))`
-/

namespace A214308.P10018456619304517412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A214306 (A133263 (n + 1)).toNat)

end

end A214308.P10018456619304517412

namespace A214308

/-- `gcd(A000038(n), A214306(A133263(n+1)))` -/
def P10018456619304517412.Spec : Prop :=
  ∀ n, (P10018456619304517412.a n : ℤ) = A214308 (n + 2)

end A214308

/-! ## A214308.P17895019044510671955

`A007318(C(2, n))*A214306(A133263(n+1))`
-/

namespace A214308.P17895019044510671955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A214306 (A133263 (n + 1)).toNat

end

end A214308.P17895019044510671955

namespace A214308

/-- `A007318(C(2, n))*A214306(A133263(n+1))` -/
def P17895019044510671955.Spec : Prop :=
  ∀ n, P17895019044510671955.a n = A214308 (n + 2)

end A214308

/-!
# A214309: a(n) is the number of representative four-color bracelets (necklaces with turning over allowed) with n beads, for n >= 4.

The programs for A214309, there is no canonical definition to state claims against.
-/

/-! ## A214309.P7421814504776924410

`A213940(A052905(n)+9)`
-/

namespace A214309.P7421814504776924410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (A052905 n + 9).toNat

end

end A214309.P7421814504776924410

/-! ## A214309.P17078437913186001014

`A213940(A167614(n+2)+1)`
-/

namespace A214309.P17078437913186001014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (A167614 (n + 2) + 1).toNat

end

end A214309.P17078437913186001014

/-! ## A214309.P7310236261023252902

`A213940(A167499(n+2)-1)`
-/

namespace A214309.P7310236261023252902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (A167499 (n + 2) - 1).toNat

end

end A214309.P7310236261023252902

/-! ## A214309.P5570139189380295399

`A213940(A133263(n+3)+2)`
-/

namespace A214309.P5570139189380295399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (A133263 (n + 3) + 2).toNat

end

end A214309.P5570139189380295399

/-! ## A214309.P16429942721348602217

`A213940(A166136(n+2)-2)`
-/

namespace A214309.P16429942721348602217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (A166136 (n + 2) - 2).toNat

end

end A214309.P16429942721348602217

/-!
# A214310: a(n) is the number of all three-color bracelets (necklaces with turning over allowed) with n beads and the three colors are from a repertoire of n distinct colors, for n >= 3.

The programs for A214310, the canonical program `A214310.P15213884711492918839` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214310 has offset 3).

The definition of A214310 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056343, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A214310.P15213884711492918839

`C(n+3, 3)*A056343(n+3)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A214310

/-- `C(n+3, 3)*A056343(n+3)` -/
def P15213884711492918839.Spec : Prop :=
  ∀ n, P15213884711492918839.a n = A214310 (n + 3)

theorem P15213884711492918839.correct : P15213884711492918839.Spec := by
  intro n
  simp only [A214310, Nat.add_sub_cancel]

end A214310

/-! ## A214310.P17867932193446782600

`A214306(∑[n+2]+4)`
-/

namespace A214310.P17867932193446782600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214306 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A214310.P17867932193446782600

namespace A214310

/-- `A214306(∑[n+2]+4)` -/
def P17867932193446782600.Spec : Prop :=
  ∀ n, P17867932193446782600.a n = A214310 (n + 3)

end A214310

/-! ## A214310.P2724462794766862526

`A214306(A167614(n+1))%A011543(n)`
-/

namespace A214310.P2724462794766862526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214306 (A167614 (n + 1)).toNat) (A011543 n)

end

end A214310.P2724462794766862526

namespace A214310

/-- `A214306(A167614(n+1))%A011543(n)` -/
def P2724462794766862526.Spec : Prop :=
  ∀ n, P2724462794766862526.a n = A214310 (n + 3)

end A214310

/-! ## A214310.P11821994232615955409

`gcd(A000038(n), A214306(A167614(n+1)))`
-/

namespace A214310.P11821994232615955409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A214306 (A167614 (n + 1)).toNat)

end

end A214310.P11821994232615955409

namespace A214310

/-- `gcd(A000038(n), A214306(A167614(n+1)))` -/
def P11821994232615955409.Spec : Prop :=
  ∀ n, (P11821994232615955409.a n : ℤ) = A214310 (n + 3)

end A214310

/-! ## A214310.P16979145794271522608

`lcm(A000034(n), A214306(A167614(n+1)))`
-/

namespace A214310.P16979145794271522608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A214306 (A167614 (n + 1)).toNat)

end

end A214310.P16979145794271522608

namespace A214310

/-- `lcm(A000034(n), A214306(A167614(n+1)))` -/
def P16979145794271522608.Spec : Prop :=
  ∀ n, (P16979145794271522608.a n : ℤ) = A214310 (n + 3)

end A214310

/-!
# A214311: a(n) is the number of representative five-color bracelets (necklaces with turning over allowed) with n beads, for n >= 5.

The programs for A214311, there is no canonical definition to state claims against.
-/

/-! ## A214311.P500835784956157288

`A213940(A167499(n+3))`
-/

namespace A214311.P500835784956157288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (A167499 (n + 3)).toNat

end

end A214311.P500835784956157288

/-! ## A214311.P5021009801722837460

`A213940(A056000(n)+15)`
-/

namespace A214311.P5021009801722837460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (A056000 n + 15).toNat

end

end A214311.P5021009801722837460

/-! ## A214311.P651142097771348682

`A213940(A167614(n+3)+2)`
-/

namespace A214311.P651142097771348682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (A167614 (n + 3) + 2).toNat

end

end A214311.P651142097771348682

/-! ## A214311.P17545480184437538413

`A213940(A000217(n+4)+5)`
-/

namespace A214311.P17545480184437538413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (A000217 (n + 4) + 5).toNat

end

end A214311.P17545480184437538413

/-! ## A214311.P4557399666739476312

`A213940(A173036(n)+A016825(n))`
-/

namespace A214311.P4557399666739476312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (A173036 n + A016825 n).toNat

end

end A214311.P4557399666739476312

/-!
# A214312: a(n) is the number of all four-color bracelets (necklaces with turning over allowed) with n beads and the four colors are from a repertoire of n distinct colors, for n >= 4.

The programs for A214312, the canonical program `A214312.P14561936420459692274` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214312 has offset 4).

The definition of A214312 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056344, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A214312.P14561936420459692274

`C(n+4, 4)*A056344(n+4)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A214312

/-- `C(n+4, 4)*A056344(n+4)` -/
def P14561936420459692274.Spec : Prop :=
  ∀ n, P14561936420459692274.a n = A214312 (n + 4)

theorem P14561936420459692274.correct : P14561936420459692274.Spec := by
  intro n
  simp only [A214312, Nat.add_sub_cancel]

end A214312

/-! ## A214312.P45865496001323335

`A214306(∑[n+3]+7)`
-/

namespace A214312.P45865496001323335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214306 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A214312.P45865496001323335

namespace A214312

/-- `A214306(∑[n+3]+7)` -/
def P45865496001323335.Spec : Prop :=
  ∀ n, P45865496001323335.a n = A214312 (n + 4)

end A214312

/-!
# A214313: a(n) is the number of all five-color bracelets (necklaces with turning over allowed) with n beads and the four colors are from a repertoire of n distinct colors, for n >= 5.

The programs for A214313, there is no canonical definition to state claims against.
-/

/-! ## A214313.P13939892152792948064

`C(n+5, 5)*A056345(n+5)`
-/

namespace A214313.P13939892152792948064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 : ℤ) * A056345 (n + 5)

end

end A214313.P13939892152792948064

/-! ## A214313.P1956653863295441728

`A214306(A167499(n+3))`
-/

namespace A214313.P1956653863295441728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214306 (A167499 (n + 3)).toNat

end

end A214313.P1956653863295441728

/-! ## A214313.P14692649155189095995

`A214306(A056000(n)+15)`
-/

namespace A214313.P14692649155189095995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214306 (A056000 n + 15).toNat

end

end A214313.P14692649155189095995

/-! ## A214313.P9666522483974600340

`A214306(eq[6, A131818(n+1)])`
-/

namespace A214313.P9666522483974600340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214306 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214313.P9666522483974600340

/-! ## A214313.P14607406748970665871

`A214306(A014132(∑[n+3]+7)+1)`
-/

namespace A214313.P14607406748970665871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214306 (A014132 (∑ j ∈ Finset.range (n + 1), f1 j + 7) + 1).toNat

end

end A214313.P14607406748970665871

/-!
# A214314: Number triangle with entry T(n,m) giving the position of the first partition of n with m parts in the Abramowitz-Stegun (A-St) partition ordering.

The programs for A214314, there is no canonical definition to state claims against.
-/

/-! ## A214314.P11300272429165804193

`A026820(n+1)+1-A008284(n+1)`
-/

namespace A214314.P11300272429165804193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (n + 1) + (1 - A008284 (n + 1))

end

end A214314.P11300272429165804193

/-! ## A214314.P17744906311677921899

`A026932(n+1)+A026931(n+1)+1-A008284(n+1)`
-/

namespace A214314.P17744906311677921899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026932 (n + 1) + A026931 (n + 1) + 1 - A008284 (n + 1)

end

end A214314.P17744906311677921899

/-! ## A214314.P13744057808665295604

`A058401(n+1)%A058401(n+2)+1-A008284(n+1)`
-/

namespace A214314.P13744057808665295604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058401 (n + 1)) (A058401 (n + 2)) + 1 - A008284 (n + 1)

end

end A214314.P13744057808665295604

/-! ## A214314.P6589237852878156302

`A026820(n+1)+1-A058398(A038722(n+1))`
-/

namespace A214314.P6589237852878156302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (n + 1) + (1 - A058398 (A038722 (n + 1)).toNat)

end

end A214314.P6589237852878156302

/-! ## A214314.P15260279994254724678

`A026820(n+1)+1-A058398(A061579(n)+1)`
-/

namespace A214314.P15260279994254724678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (n + 1) + 1 - A058398 (A061579 n + 1).toNat

end

end A214314.P15260279994254724678

/-! ## A214314.P9275252989161012925

`A106254(A245300(n)+1)+1-A008284(n+1)`
-/

namespace A214314.P9275252989161012925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106254 (A245300 n + 1).toNat + 1 - A008284 (n + 1)

end

end A214314.P9275252989161012925

/-!
# A214315: Floor of the real part of the zeros of the complex Fibonacci function on the right half-plane.

The programs for A214315, the canonical program `A214315.P4762821100211267875` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214315 has offset 0).

The definition of A214315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214315.P4762821100211267875

`floor(2*n*π²/(π²+4*log(ϕ)²))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214315

/-- `floor(2*n*π²/(π²+4*log(ϕ)²))` -/
def P4762821100211267875.Spec : Prop :=
  ∀ n, P4762821100211267875.a n = A214315 n

theorem P4762821100211267875.correct : P4762821100211267875.Spec := by
  intro n
  simp only [A214315]

end A214315

/-! ## A214315.P4443137677390326930

`A172471(A005843(n)²)-n`
-/

namespace A214315.P4443137677390326930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A005843 n ^ 2).toNat - (n : ℤ)

end

end A214315.P4443137677390326930

namespace A214315

/-- `A172471(A005843(n)²)-n` -/
def P4443137677390326930.Spec : Prop :=
  ∀ n, P4443137677390326930.a n = A214315 n

end A214315

/-! ## A214315.P1921325371290548688

`A320278((2*n)²)+n`
-/

namespace A214315.P1921325371290548688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 ((2 * n) ^ 2) + (n : ℤ)

end

end A214315.P1921325371290548688

namespace A214315

/-- `A320278((2*n)²)+n` -/
def P1921325371290548688.Spec : Prop :=
  ∀ n, P1921325371290548688.a n = A214315 n

end A214315

/-! ## A214315.P2838343495092026170

`A000196(8*n²)-n`
-/

namespace A214315.P2838343495092026170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (8 * n ^ 2) - (n : ℤ)

end

end A214315.P2838343495092026170

namespace A214315

/-- `A000196(8*n²)-n` -/
def P2838343495092026170.Spec : Prop :=
  ∀ n, P2838343495092026170.a n = A214315 n

end A214315

/-! ## A214315.P4798512162133851298

`A379830(A139098(n))-n`
-/

namespace A214315.P4798512162133851298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379830 (A139098 n).toNat - (n : ℤ)

end

end A214315.P4798512162133851298

namespace A214315

/-- `A379830(A139098(n))-n` -/
def P4798512162133851298.Spec : Prop :=
  ∀ n, P4798512162133851298.a n = A214315 n

end A214315

/-!
# A214316: Expansion of psi(x)^2 - 5 * x * psi(x^5)^2 in powers of x where psi() is a Ramanujan theta function.

The programs for A214316, there is no canonical definition to state claims against.
-/

/-! ## A214316.P3543249440381129611

`A133573(4*n+1)`
-/

namespace A214316.P3543249440381129611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133573 (4 * n + 1)

end

end A214316.P3543249440381129611

/-! ## A214316.P8157878053517184527

`-A133574(3*n+n+1)`
-/

namespace A214316.P8157878053517184527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A133574 (3 * n + (n + 1))

end

end A214316.P8157878053517184527

/-! ## A214316.P7600908751286211961

`A133573(A016813(n))%(n+7)`
-/

namespace A214316.P7600908751286211961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133573 (A016813 n).toNat) (n + 7 : ℤ)

end

end A214316.P7600908751286211961

/-! ## A214316.P8911240204469667877

`or(A000007(n), A133573(A016813(n)))`
-/

namespace A214316.P8911240204469667877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A133573 (A016813 n).toNat)

end

end A214316.P8911240204469667877

/-! ## A214316.P16755876025566116416

`A004197(gcd(n+1, 2*n))-A133574(A016813(n))`
-/

namespace A214316.P16755876025566116416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (Nat.gcd (n + 1) (2 * n)) - A133574 (A016813 n).toNat

end

end A214316.P16755876025566116416

/-! ## A214316.P17327856571838880420

`-A133573(A016825(2*n))`
-/

namespace A214316.P17327856571838880420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A133573 (A016825 (2 * n)).toNat

end

end A214316.P17327856571838880420

/-!
# A214317: a(n) = length-n prefix of the Fibonacci word A003842.

The programs for A214317, the canonical program `A214317.P1350936880509777613` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214317 has offset 1).

The definition of A214317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214317.P5237862178164838797

`A003842(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A214317.P5237862178164838797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003842 n + 10 * a (n - 1)

end

end A214317.P5237862178164838797

namespace A214317

/-- `A003842(n)+10*a(n-1)` -/
def P5237862178164838797.Spec : Prop :=
  ∀ n, P5237862178164838797.a n = A214317 (n + 1)

end A214317

/-! ## A214317.P5923807746556450287

`∑[10*a(n-1)-A014677(n)]` with `a(0)=1`
-/

namespace A214317.P5923807746556450287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1) - A014677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214317.P5923807746556450287

namespace A214317

/-- `∑[10*a(n-1)-A014677(n)]` -/
def P5923807746556450287.Spec : Prop :=
  ∀ n, P5923807746556450287.a n = A214317 (n + 1)

end A214317

/-! ## A214317.P1350936880509777613

`10*a(n-1)+2-A005614(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A214317

/-- `10*a(n-1)+2-A005614(n)` -/
def P1350936880509777613.Spec : Prop :=
  ∀ n, P1350936880509777613.a n = A214317 (n + 1)

theorem P1350936880509777613.correct : P1350936880509777613.Spec := by
  intro n
  simp only [A214317, Nat.add_sub_cancel]

end A214317

/-! ## A214317.P10827635966569247008

`A213975(∑[A003842(n)+n])`
-/

namespace A214317.P10827635966569247008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213975 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214317.P10827635966569247008

namespace A214317

/-- `A213975(∑[A003842(n)+n])` -/
def P10827635966569247008.Spec : Prop :=
  ∀ n, P10827635966569247008.a n = A214317 (n + 1)

end A214317

/-! ## A214317.P9101904143645744005

`A213975(∑[A003849(n)+1+n])`
-/

namespace A214317.P9101904143645744005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213975 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214317.P9101904143645744005

namespace A214317

/-- `A213975(∑[A003849(n)+1+n])` -/
def P9101904143645744005.Spec : Prop :=
  ∀ n, P9101904143645744005.a n = A214317 (n + 1)

end A214317

/-! ## A214317.P10235562848847508944

`A213975(∑[3-A014675(n)+n])`
-/

namespace A214317.P10235562848847508944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A014675 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213975 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214317.P10235562848847508944

namespace A214317

/-- `A213975(∑[3-A014675(n)+n])` -/
def P10235562848847508944.Spec : Prop :=
  ∀ n, P10235562848847508944.a n = A214317 (n + 1)

end A214317

/-!
# A214318: Replace the word A214317(n) with its position in A007931.

The programs for A214318, the canonical program `A214318.P2534198729933058842` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214318 has offset 1).

The definition of A214318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214318.P8848837207777141530

`A182028(n)+2^(n+1)-1`
-/

namespace A214318.P8848837207777141530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182028 n + (2 ^ (n + 1) : ℤ) - 1

end

end A214318.P8848837207777141530

namespace A214318

/-- `A182028(n)+2^(n+1)-1` -/
def P8848837207777141530.Spec : Prop :=
  ∀ n, P8848837207777141530.a n = A214318 (n + 1)

end A214318

/-! ## A214318.P2534198729933058842

`2*a(n-1)+A003842(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A214318

/-- `2*a(n-1)+A003842(n)` -/
def P2534198729933058842.Spec : Prop :=
  ∀ n, P2534198729933058842.a n = A214318 (n + 1)

theorem P2534198729933058842.correct : P2534198729933058842.Spec := by
  intro n
  simp only [A214318, Nat.add_sub_cancel]

end A214318

/-! ## A214318.P10566390748762530344

`A003849(n)+2*a(n-1)+1` with `a(0)=1`
-/

namespace A214318.P10566390748762530344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003849 n + (2 * a (n - 1) + 1)

end

end A214318.P10566390748762530344

namespace A214318

/-- `A003849(n)+2*a(n-1)+1` -/
def P10566390748762530344.Spec : Prop :=
  ∀ n, P10566390748762530344.a n = A214318 (n + 1)

end A214318

/-! ## A214318.P7042664782790652682

`A182028(n)+A126646(n)`
-/

namespace A214318.P7042664782790652682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182028 n + A126646 n

end

end A214318.P7042664782790652682

namespace A214318

/-- `A182028(n)+A126646(n)` -/
def P7042664782790652682.Spec : Prop :=
  ∀ n, P7042664782790652682.a n = A214318 (n + 1)

end A214318

/-! ## A214318.P11800538337986411159

`A182028(n)+A000225(n+1)`
-/

namespace A214318.P11800538337986411159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182028 n + A000225 (n + 1)

end

end A214318.P11800538337986411159

namespace A214318

/-- `A182028(n)+A000225(n+1)` -/
def P11800538337986411159.Spec : Prop :=
  ∀ n, P11800538337986411159.a n = A214318 (n + 1)

end A214318

/-! ## A214318.P17365571017730386222

`A000918(n+2)-A044432(n)`
-/

namespace A214318.P17365571017730386222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (n + 2) - A044432 n

end

end A214318.P17365571017730386222

namespace A214318

/-- `A000918(n+2)-A044432(n)` -/
def P17365571017730386222.Spec : Prop :=
  ∀ n, P17365571017730386222.a n = A214318 (n + 1)

end A214318

/-! ## A214318.P9969306011541005758

`A044432(n)+2*A182028(n)`
-/

namespace A214318.P9969306011541005758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044432 n + 2 * A182028 n

end

end A214318.P9969306011541005758

namespace A214318

/-- `A044432(n)+2*A182028(n)` -/
def P9969306011541005758.Spec : Prop :=
  ∀ n, P9969306011541005758.a n = A214318 (n + 1)

end A214318

/-! ## A214318.P16951568163308283971

`A316742(2*n)+A182028(n)`
-/

namespace A214318.P16951568163308283971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316742 (2 * n) + A182028 n

end

end A214318.P16951568163308283971

namespace A214318

/-- `A316742(2*n)+A182028(n)` -/
def P16951568163308283971.Spec : Prop :=
  ∀ n, P16951568163308283971.a n = A214318 (n + 1)

end A214318

/-! ## A214318.P15613574213330536856

`2*A126646(n)-A044432(n)`
-/

namespace A214318.P15613574213330536856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126646 n - A044432 n

end

end A214318.P15613574213330536856

namespace A214318

/-- `2*A126646(n)-A044432(n)` -/
def P15613574213330536856.Spec : Prop :=
  ∀ n, P15613574213330536856.a n = A214318 (n + 1)

end A214318

/-! ## A214318.P6268146494868619203

`∑[A000079(n+1)]-A044432(n)`
-/

namespace A214318.P6268146494868619203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A044432 n

end

end A214318.P6268146494868619203

namespace A214318

/-- `∑[A000079(n+1)]-A044432(n)` -/
def P6268146494868619203.Spec : Prop :=
  ∀ n, P6268146494868619203.a n = A214318 (n + 1)

end A214318

/-! ## A214318.P7453253008264337847

`∑[2*A000079(n)]-A044432(n)`
-/

namespace A214318.P7453253008264337847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A044432 n

end

end A214318.P7453253008264337847

namespace A214318

/-- `∑[2*A000079(n)]-A044432(n)` -/
def P7453253008264337847.Spec : Prop :=
  ∀ n, P7453253008264337847.a n = A214318 (n + 1)

end A214318

/-! ## A214318.P14909147517536610692

`A182028(n)+A087100(2*n+1)`
-/

namespace A214318.P14909147517536610692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182028 n + A087100 (2 * n + 1)

end

end A214318.P14909147517536610692

namespace A214318

/-- `A182028(n)+A087100(2*n+1)` -/
def P14909147517536610692.Spec : Prop :=
  ∀ n, P14909147517536610692.a n = A214318 (n + 1)

end A214318

/-! ## A214318.P14797325813090205243

`A027383(2*n+1)-A044432(n)`
-/

namespace A214318.P14797325813090205243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (2 * n + 1) - A044432 n

end

end A214318.P14797325813090205243

namespace A214318

/-- `A027383(2*n+1)-A044432(n)` -/
def P14797325813090205243.Spec : Prop :=
  ∀ n, P14797325813090205243.a n = A214318 (n + 1)

end A214318

/-! ## A214318.P3820542448600792719

`∑[A016116(2*(n+1))]-A044432(n)`
-/

namespace A214318.P3820542448600792719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A044432 n

end

end A214318.P3820542448600792719

namespace A214318

/-- `∑[A016116(2*(n+1))]-A044432(n)` -/
def P3820542448600792719.Spec : Prop :=
  ∀ n, P3820542448600792719.a n = A214318 (n + 1)

end A214318

/-! ## A214318.P2463464593356100913

`A001468(A002251(n+1))+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A214318.P2463464593356100913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001468 (A002251 (n + 1)).toNat + (a (n - 1) + a (n - 1))

end

end A214318.P2463464593356100913

namespace A214318

/-- `A001468(A002251(n+1))+a(n-1)+a(n-1)` -/
def P2463464593356100913.Spec : Prop :=
  ∀ n, P2463464593356100913.a n = A214318 (n + 1)

end A214318

/-! ## A214318.P6807768605916759137

`A000225(n+1)+A000225(n+1)-A044432(n)`
-/

namespace A214318.P6807768605916759137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A000225 (n + 1) - A044432 n)

end

end A214318.P6807768605916759137

namespace A214318

/-- `A000225(n+1)+A000225(n+1)-A044432(n)` -/
def P6807768605916759137.Spec : Prop :=
  ∀ n, P6807768605916759137.a n = A214318 (n + 1)

end A214318

/-! ## A214318.P14834465951072206700

`A000225(n+1)+A214319(n)-A003849(n+1)`
-/

namespace A214318.P14834465951072206700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A214319 n - A003849 (n + 1))

end

end A214318.P14834465951072206700

namespace A214318

/-- `A000225(n+1)+A214319(n)-A003849(n+1)` -/
def P14834465951072206700.Spec : Prop :=
  ∀ n, P14834465951072206700.a n = A214318 (n + 1)

end A214318

/-! ## A214318.P16546902372043552604

`A182028(n+1)+A044432(n)-A003849(n+1)`
-/

namespace A214318.P16546902372043552604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182028 (n + 1) + (A044432 n - A003849 (n + 1))

end

end A214318.P16546902372043552604

namespace A214318

/-- `A182028(n+1)+A044432(n)-A003849(n+1)` -/
def P16546902372043552604.Spec : Prop :=
  ∀ n, P16546902372043552604.a n = A214318 (n + 1)

end A214318

/-! ## A214318.P11341720405550342254

`∑[A214208(∑[n+2])]`
-/

namespace A214318.P11341720405550342254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214208 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214318.P11341720405550342254

namespace A214318

/-- `∑[A214208(∑[n+2])]` -/
def P11341720405550342254.Spec : Prop :=
  ∀ n, P11341720405550342254.a n = A214318 (n + 1)

end A214318

/-! ## A214318.P2441358096233491985

`∑[record[Δ[A214207(n+1)]]]`
-/

namespace A214318.P2441358096233491985
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214318.P2441358096233491985

namespace A214318

/-- `∑[record[Δ[A214207(n+1)]]]` -/
def P2441358096233491985.Spec : Prop :=
  ∀ n, P2441358096233491985.a n = A214318 (n + 1)

end A214318

/-!
# A214319: First differences of A182028.

The programs for A214319, the canonical program `A214319.P793865802162299093` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214319 has offset 0).

The definition of A214319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214319.P793865802162299093

`A182028(n)+A003849(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A214319

/-- `A182028(n)+A003849(n+1)` -/
def P793865802162299093.Spec : Prop :=
  ∀ n, P793865802162299093.a n = A214319 n

theorem P793865802162299093.correct : P793865802162299093.Spec := by
  intro n
  simp only [A214319]

end A214319

/-! ## A214319.P16732457411711302757

`A005713(n)-(A003849(n)-A182028(n))`
-/

namespace A214319.P16732457411711302757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 n - (A003849 n - A182028 n)

end

end A214319.P16732457411711302757

namespace A214319

/-- `A005713(n)-(A003849(n)-A182028(n))` -/
def P16732457411711302757.Spec : Prop :=
  ∀ n, P16732457411711302757.a n = A214319 n

end A214319

/-! ## A214319.P16391513159166755165

`Δ[2*a(n-1)-Δ[ceil((n+1)/ϕ)]]` with `a(0)=1`
-/

namespace A214319.P16391513159166755165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214319.P16391513159166755165

namespace A214319

/-- `Δ[2*a(n-1)-Δ[ceil((n+1)/ϕ)]]` -/
def P16391513159166755165.Spec : Prop :=
  ∀ n, P16391513159166755165.a n = A214319 n

end A214319

/-! ## A214319.P10228292568282860897

`Δ[A182028(n)]`
-/

namespace A214319.P10228292568282860897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214319.P10228292568282860897

namespace A214319

/-- `Δ[A182028(n)]` -/
def P10228292568282860897.Spec : Prop :=
  ∀ n, P10228292568282860897.a n = A214319 n

end A214319

/-! ## A214319.P3024999271781565738

`ceil(A182028(n+1)/2)`
-/

namespace A214319.P3024999271781565738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182028 (n + 1) : ℚ) / 2⌉

end

end A214319.P3024999271781565738

namespace A214319

/-- `ceil(A182028(n+1)/2)` -/
def P3024999271781565738.Spec : Prop :=
  ∀ n, P3024999271781565738.a n = A214319 n

end A214319

/-! ## A214319.P1395352454410581030

`A182028(n+1)-A182028(n)`
-/

namespace A214319.P1395352454410581030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182028 (n + 1) - A182028 n

end

end A214319.P1395352454410581030

namespace A214319

/-- `A182028(n+1)-A182028(n)` -/
def P1395352454410581030.Spec : Prop :=
  ∀ n, P1395352454410581030.a n = A214319 n

end A214319

/-! ## A214319.P13053804788693923319

`A000225(n+1)+A003849(n+1)-A044432(n)`
-/

namespace A214319.P13053804788693923319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A003849 (n + 1) - A044432 n)

end

end A214319.P13053804788693923319

namespace A214319

/-- `A000225(n+1)+A003849(n+1)-A044432(n)` -/
def P13053804788693923319.Spec : Prop :=
  ∀ n, P13053804788693923319.a n = A214319 n

end A214319

/-! ## A214319.P1869281768404584896

`A000079(n+1)-(A044432(n)+A005614(n+1))`
-/

namespace A214319.P1869281768404584896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (A044432 n + A005614 (n + 1))

end

end A214319.P1869281768404584896

namespace A214319

/-- `A000079(n+1)-(A044432(n)+A005614(n+1))` -/
def P1869281768404584896.Spec : Prop :=
  ∀ n, P1869281768404584896.a n = A214319 n

end A214319

/-! ## A214319.P10897133817824966160

`Δ[∑[2^n]-A044432(n)]`
-/

namespace A214319.P10897133817824966160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A044432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214319.P10897133817824966160

namespace A214319

/-- `Δ[∑[2^n]-A044432(n)]` -/
def P10897133817824966160.Spec : Prop :=
  ∀ n, P10897133817824966160.a n = A214319 n

end A214319

/-! ## A214319.P9263996281650853223

`A000079(n+1)+A044432(n)-A044432(n+1)`
-/

namespace A214319.P9263996281650853223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A044432 n - A044432 (n + 1))

end

end A214319.P9263996281650853223

namespace A214319

/-- `A000079(n+1)+A044432(n)-A044432(n+1)` -/
def P9263996281650853223.Spec : Prop :=
  ∀ n, P9263996281650853223.a n = A214319 n

end A214319

/-! ## A214319.P2659744743684213193

`A003849(n+1)+A214318(n+1)-A000225(n+1)`
-/

namespace A214319.P2659744743684213193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (n + 1) + (A214318 (n + 1) - A000225 (n + 1))

end

end A214319.P2659744743684213193

namespace A214319

/-- `A003849(n+1)+A214318(n+1)-A000225(n+1)` -/
def P2659744743684213193.Spec : Prop :=
  ∀ n, P2659744743684213193.a n = A214319 n

end A214319

/-!
# A214320: a(0)=a(1)=a(2)=1; thereafter a(n) = gpf(a(n-1)+a(n-3)), where gpf = "greatest prime factor".

The programs for A214320, the canonical program `A214320.P9969656214956985357` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214320 has offset 0).

The definition of A214320 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A214320.P9969656214956985357

`A006530(a(n-1)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A214320

/-- `A006530(a(n-1)+a(n-3))` -/
def P9969656214956985357.Spec : Prop :=
  ∀ n, P9969656214956985357.a n = A214320 n

theorem P9969656214956985357.correct : P9969656214956985357.Spec := by
  intro n
  simp only [A214320]

end A214320

/-!
# A214321: A214551 sorted and duplicates removed (conjectured).

The programs for A214321, there is no canonical definition to state claims against.
-/

/-! ## A214321.P8084933038404674800

`lt[0, char[A214551(n)]]`
-/

namespace A214321.P8084933038404674800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214551 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214321.P8084933038404674800

/-! ## A214321.P18275679685547668903

`eq[1, char[A214551(n+1)]]`
-/

namespace A214321.P18275679685547668903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214551 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214321.P18275679685547668903

/-! ## A214321.P5974480052887601196

`eq[char[A214551(n)], A054977(n)]`
-/

namespace A214321.P5974480052887601196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214551 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A214321.P5974480052887601196

/-! ## A214321.P9707878354940113481

`eq[char[A214551(n)], A158388(n)]`
-/

namespace A214321.P9707878354940113481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214551 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A214321.P9707878354940113481

/-!
# A214322: a(n) = A214551(n-1) + A214551(n-3), with a(0) = a(1) = a(2) = 1.

The programs for A214322, there is no canonical definition to state claims against.
-/

/-! ## A214322.P8633770175156236383

`A214323(n)*A214551(n)`
-/

namespace A214322.P8633770175156236383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214323 n * A214551 n

end

end A214322.P8633770175156236383

/-! ## A214322.P16667781787287121799

`A214551(n)/root(A214323(n), A260196(n))`
-/

namespace A214322.P16667781787287121799
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A214551 n : ℝ) / (A214323 n : ℝ) ^ (1 / (A260196 n : ℝ))

end

end A214322.P16667781787287121799

/-!
# A214323: a(n) = gcd( A214551(n-1), A214551(n-3) ) with a(0) = a(1) = a(2) = 1.

The programs for A214323, there is no canonical definition to state claims against.
-/

/-! ## A214323.P15123257131854990628

`A214322(n)/A214551(n)`
-/

namespace A214323.P15123257131854990628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214322 n : ℚ) / (A214551 n : ℚ)

end

end A214323.P15123257131854990628

/-! ## A214323.P8847595843258602125

`gcd(A214322(n), A214551(abs(1-n)))`
-/

namespace A214323.P8847595843258602125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214322 n) (A214551 |1 - (n : ℤ)|.toNat)

end

end A214323.P8847595843258602125

/-! ## A214323.P9244945490127933866

`root(A214551(n), A260196(n))*A214322(n)`
-/

namespace A214323.P9244945490127933866
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A214551 n : ℝ) ^ (1 / (A260196 n : ℝ)) * (A214322 n : ℝ)

end

end A214323.P9244945490127933866

/-!
# A214324: Records in A214323.

The programs for A214324, there is no canonical definition to state claims against.
-/

/-! ## A214324.P6147590454455085672

`record[A214323(n)]`
-/

namespace A214324.P6147590454455085672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214324.P6147590454455085672

/-! ## A214324.P12131869862472305173

`A214323(A214325(n+1))`
-/

namespace A214324.P12131869862472305173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214323 (A214325 (n + 1)).toNat

end

end A214324.P12131869862472305173

/-! ## A214324.P7139314729437785491

`record[A214322(n)/A214551(n)]`
-/

namespace A214324.P7139314729437785491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214322 n : ℚ) / (A214551 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214324.P7139314729437785491

/-! ## A214324.P5391283352282150402

`record[gcd(A214322(n+1), A214551(n))]`
-/

namespace A214324.P5391283352282150402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214322 (n + 1)) (A214551 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214324.P5391283352282150402

/-! ## A214324.P16794961076653394176

`record[root(A214551(n), A260196(n))*A214322(n)]`
-/

namespace A214324.P16794961076653394176
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A214551 n : ℝ) ^ (1 / (A260196 n : ℝ)) * (A214322 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214324.P16794961076653394176

/-!
# A214326: Square array read by antidiagonals in which T(n,b) gives the n-th Fibonacci number written in base b with n,b >= 1.

The programs for A214326, there is no canonical definition to state claims against.
-/

/-! ## A214326.P1891946200972648

`A214679(n+1)+A004694(A173453(n+1))`
-/

namespace A214326.P1891946200972648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214679 (n + 1) + A004694 (A173453 (n + 1)).toNat

end

end A214326.P1891946200972648

/-! ## A214326.P13158379274520868037

`A063431(∑[A281082(∑[2*n])])`
-/

namespace A214326.P13158379274520868037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281082 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063431 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214326.P13158379274520868037

/-! ## A214326.P8922994545001541578

`gcd(A001734(n), A063432(A261363(n)))`
-/

namespace A214326.P8922994545001541578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001734 n) (A063432 (A261363 n).toNat)

end

end A214326.P8922994545001541578

/-! ## A214326.P1785712126496799088

`A136400(A107853(n)^A287732(n+1))`
-/

namespace A214326.P1785712126496799088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (SequenceMachineLib.roundAway ((A107853 n : ℚ) ^ (A287732 (n + 1) : ℤ))).toNat

end

end A214326.P1785712126496799088

/-! ## A214326.P12959196839944642190

`A214679(n+1)*A361338(A370550(n+2))`
-/

namespace A214326.P12959196839944642190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214679 (n + 1) * A361338 (A370550 (n + 2)).toNat

end

end A214326.P12959196839944642190

/-!
# A214328: Intersection of A004214 and A018825.

The programs for A214328, there is no canonical definition to state claims against.
-/

/-! ## A214328.P11021866933858175934

`∪[A000302(n), A004215(n+1)]`
-/

namespace A214328.P11021866933858175934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214328.P11021866933858175934

/-! ## A214328.P2452747431725443170

`∪[A004215(n+1), A133600(n+1)]`
-/

namespace A214328.P2452747431725443170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214328.P2452747431725443170

/-! ## A214328.P6284925565934219272

`∩[A004214(n+1), A018825(n+1)]`
-/

namespace A214328.P6284925565934219272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214328.P6284925565934219272

/-! ## A214328.P5806696932518688624

`eq[9, (3-A005875(n))²]`
-/

namespace A214328.P5806696932518688624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A005875 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214328.P5806696932518688624

/-! ## A214328.P528683414495089892

`eq[A000164(n), A033684(n)]`
-/

namespace A214328.P528683414495089892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214328.P528683414495089892

/-! ## A214328.P5269282240074894326

`eq[A245572(n), A246631(n)]`
-/

namespace A214328.P5269282240074894326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245572 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214328.P5269282240074894326

/-! ## A214328.P15973025415901342956

`lt[A130724(sqrt(A138202(n))), 3]`
-/

namespace A214328.P15973025415901342956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (SequenceMachineLib.roundAway (Real.sqrt (A138202 n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A214328.P15973025415901342956

/-! ## A214328.P848438349741284119

`eq[1, A000700(A005875(n)+1)]`
-/

namespace A214328.P848438349741284119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A005875 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214328.P848438349741284119

/-! ## A214328.P5018527702414489213

`eq[2, A320153(A005875(n)+1)]`
-/

namespace A214328.P5018527702414489213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320153 (A005875 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214328.P5018527702414489213

/-! ## A214328.P13770457455993334841

`eq[1, A182034(A246631(n)+2)]`
-/

namespace A214328.P13770457455993334841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182034 (A246631 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214328.P13770457455993334841

/-! ## A214328.P7052442648359196346

`eq[2*A000164(n), A000122(n)]`
-/

namespace A214328.P7052442648359196346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214328.P7052442648359196346

/-! ## A214328.P12274023589658651248

`eq[A000164(n+1), A010052(n+1)]+1`
-/

namespace A214328.P12274023589658651248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A214328.P12274023589658651248

/-! ## A214328.P7692142303840864750

`eq[A063691(n+1), A063725(n+1)]+1`
-/

namespace A214328.P7692142303840864750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A214328.P7692142303840864750

/-! ## A214328.P14335601085249059790

`eq[A004018(n)+A000122(n), A005875(n)]`
-/

namespace A214328.P14335601085249059790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n + A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214328.P14335601085249059790

/-! ## A214328.P14421976768044248172

`eq[(A000164(n)*A002828(n))², A000164(n)]`
-/

namespace A214328.P14421976768044248172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000164 n * A002828 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214328.P14421976768044248172

/-! ## A214328.P15205834202369734570

`eq[A004015(2*n)², A008588(A004015(2*n))]`
-/

namespace A214328.P15205834202369734570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A004015 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214328.P15205834202369734570

/-! ## A214328.P7017610886482618842

`eq[A245572(n), A319078(n)]`
-/

namespace A214328.P7017610886482618842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245572 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319078 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214328.P7017610886482618842

/-! ## A214328.P12317416275384844305

`lt[A000164(n), A000122(n*A000164(n))]`
-/

namespace A214328.P12317416275384844305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 ((n : ℤ) * A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214328.P12317416275384844305

/-!
# A214329: Complement of A214328.

The programs for A214329, there is no canonical definition to state claims against.
-/

/-! ## A214329.P16712210137805006549

`∪[A004171(n), A267312(n+1)]`
-/

namespace A214329.P16712210137805006549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214329.P16712210137805006549

/-! ## A214329.P13039744502263216201

`∪[A267312(n+1), A055236(n)]`
-/

namespace A214329.P13039744502263216201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055236 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214329.P13039744502263216201

/-! ## A214329.P18435174891279793751

`∪[A000404(n+1), A000408(n+1)]`
-/

namespace A214329.P18435174891279793751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214329.P18435174891279793751

/-! ## A214329.P8620579433100719617

`∪[A000408(n+1), A219222(n+1)]`
-/

namespace A214329.P8620579433100719617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214329.P8620579433100719617

/-! ## A214329.P11200126129981449083

`∪[A000404(n+1), A267312(n+1)]`
-/

namespace A214329.P11200126129981449083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214329.P11200126129981449083

/-! ## A214329.P4981689055151008238

`∪[A000415(n+1), A267312(n+1)]`
-/

namespace A214329.P4981689055151008238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214329.P4981689055151008238

/-! ## A214329.P1128162814874207099

`∪[A025284(n+1), A267312(n+1)]`
-/

namespace A214329.P1128162814874207099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214329.P1128162814874207099

/-! ## A214329.P3589850790218455394

`∪[A036554(n+1), A267312(n+1)]`
-/

namespace A214329.P3589850790218455394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214329.P3589850790218455394

/-! ## A214329.P18390952610476526984

`∪[A045138(n+1), A267312(n+1)]`
-/

namespace A214329.P18390952610476526984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214329.P18390952610476526984

/-! ## A214329.P4166433985993923753

`∪[A050804(n+1), A267312(n+1)]`
-/

namespace A214329.P4166433985993923753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214329.P4166433985993923753

/-! ## A214329.P16096189139387246408

`∪[A054755(n+1), A267312(n+1)]`
-/

namespace A214329.P16096189139387246408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214329.P16096189139387246408

/-! ## A214329.P3909286830673651268

`∪[A054774(n+1), A267312(n+1)]`
-/

namespace A214329.P3909286830673651268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214329.P3909286830673651268

/-! ## A214329.P12836965411086609165

`∪[A055044(n+1), A267312(n+1)]`
-/

namespace A214329.P12836965411086609165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214329.P12836965411086609165

/-! ## A214329.P15989112481796545375

`∪[A094147(n+1), A267312(n+1)]`
-/

namespace A214329.P15989112481796545375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214329.P15989112481796545375

/-! ## A214329.P17285075340319740651

`lt[6, A005875(n)]`
-/

namespace A214329.P17285075340319740651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A214329.P17285075340319740651

/-! ## A214329.P373362192562243076

`lt[A000122(n), A000164(n)²]`
-/

namespace A214329.P373362192562243076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214329.P373362192562243076

/-! ## A214329.P17216601019446030665

`eq[A000089(A268444(n)), A072401(n)]`
-/

namespace A214329.P17216601019446030665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A268444 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214329.P17216601019446030665

/-! ## A214329.P2309743482045965481

`eq[1, A057427(A063725(n)+A063691(n))]`
-/

namespace A214329.P2309743482045965481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A063725 n + A063691 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214329.P2309743482045965481

/-! ## A214329.P13727185502933043330

`eq[1, A158388(A025427(n)+A025426(n))]`
-/

namespace A214329.P13727185502933043330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A025427 n + A025426 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214329.P13727185502933043330

/-!
# A214330: a(n) = A214551(n) mod 2.

The programs for A214330, the canonical program `A214330.P6414671182902841973` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214330 has offset 0).

The definition of A214330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214330.P6414671182902841973

`A214551(n)%2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A214330

/-- `A214551(n)%2` -/
def P6414671182902841973.Spec : Prop :=
  ∀ n, P6414671182902841973.a n = A214330 n

theorem P6414671182902841973.correct : P6414671182902841973.Spec := by
  intro n
  simp only [A214330]

end A214330

/-! ## A214330.P7168307080799275346

`C(2, A227836(n)+2)`
-/

namespace A214330.P7168307080799275346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A227836 n + 2).toNat

end

end A214330.P7168307080799275346

namespace A214330

/-- `C(2, A227836(n)+2)` -/
def P7168307080799275346.Spec : Prop :=
  ∀ n, (P7168307080799275346.a n : ℤ) = A214330 n

end A214330

/-! ## A214330.P18375259042721580002

`A000007(A227836(n))`
-/

namespace A214330.P18375259042721580002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A227836 n).toNat

end

end A214330.P18375259042721580002

namespace A214330

/-- `A000007(A227836(n))` -/
def P18375259042721580002.Spec : Prop :=
  ∀ n, P18375259042721580002.a n = A214330 n

end A214330

/-! ## A214330.P15397435077700834941

`A185012(A227836(n)+2)`
-/

namespace A214330.P15397435077700834941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (A227836 n + 2).toNat

end

end A214330.P15397435077700834941

namespace A214330

/-- `A185012(A227836(n)+2)` -/
def P15397435077700834941.Spec : Prop :=
  ∀ n, P15397435077700834941.a n = A214330 n

end A214330

/-! ## A214330.P16203206965512871927

`A185012(xor(2, A227836(n)))`
-/

namespace A214330.P16203206965512871927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (Int.xor 2 (A227836 n)).toNat

end

end A214330.P16203206965512871927

namespace A214330

/-- `A185012(xor(2, A227836(n)))` -/
def P16203206965512871927.Spec : Prop :=
  ∀ n, P16203206965512871927.a n = A214330 n

end A214330

/-! ## A214330.P11821208173727741987

`∏{d}[A227836(n), A227836(#)]`
-/

namespace A214330.P11821208173727741987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A227836 d

end

end A214330.P11821208173727741987

namespace A214330

/-- `∏{d}[A227836(n), A227836(#)]` -/
def P11821208173727741987.Spec : Prop :=
  ∀ n, P11821208173727741987.a n = A214330 n

end A214330

/-! ## A214330.P10287268040866832960

`C(2, A244630(A227836(n)²))`
-/

namespace A214330.P10287268040866832960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A244630 (A227836 n ^ 2).toNat).toNat

end

end A214330.P10287268040866832960

namespace A214330

/-- `C(2, A244630(A227836(n)²))` -/
def P10287268040866832960.Spec : Prop :=
  ∀ n, (P10287268040866832960.a n : ℤ) = A214330 n

end A214330

/-! ## A214330.P5627714736528591517

`C(C(2, A151798(n)), A227836(n))`
-/

namespace A214330.P5627714736528591517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A151798 n).toNat) (A227836 n).toNat

end

end A214330.P5627714736528591517

namespace A214330

/-- `C(C(2, A151798(n)), A227836(n))` -/
def P5627714736528591517.Spec : Prop :=
  ∀ n, (P5627714736528591517.a n : ℤ) = A214330 n

end A214330

/-! ## A214330.P6510194662427062117

`C(C(2, A244630(n)), A227836(n))`
-/

namespace A214330.P6510194662427062117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A244630 n).toNat) (A227836 n).toNat

end

end A214330.P6510194662427062117

namespace A214330

/-- `C(C(2, A244630(n)), A227836(n))` -/
def P6510194662427062117.Spec : Prop :=
  ∀ n, (P6510194662427062117.a n : ℤ) = A214330 n

end A214330

/-! ## A214330.P15522801077992080218

`A227836(a(n-1))^A227836(n)` with `a(0)=1`
-/

namespace A214330.P15522801077992080218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A227836 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) ^ (A227836 n : ℤ)

end

end A214330.P15522801077992080218

namespace A214330

/-- `A227836(a(n-1))^A227836(n)` -/
def P15522801077992080218.Spec : Prop :=
  ∀ n, P15522801077992080218.a n = (A214330 n : ℚ)

end A214330

/-! ## A214330.P5819030344923622160

`C(A151798(n), A244630(A227836(n)))`
-/

namespace A214330.P5819030344923622160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A151798 n).toNat (A244630 (A227836 n).toNat).toNat

end

end A214330.P5819030344923622160

namespace A214330

/-- `C(A151798(n), A244630(A227836(n)))` -/
def P5819030344923622160.Spec : Prop :=
  ∀ n, (P5819030344923622160.a n : ℤ) = A214330 n

end A214330

/-! ## A214330.P7222483963114177631

`C(A227836(A227836(n)²), A227836(n))`
-/

namespace A214330.P7222483963114177631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A227836 (A227836 n ^ 2).toNat).toNat (A227836 n).toNat

end

end A214330.P7222483963114177631

namespace A214330

/-- `C(A227836(A227836(n)²), A227836(n))` -/
def P7222483963114177631.Spec : Prop :=
  ∀ n, (P7222483963114177631.a n : ℤ) = A214330 n

end A214330

/-! ## A214330.P11234656202648981332

`A217377(∑{p}[A227836(n)+1, A001222(#)]+1)`
-/

namespace A214330.P11234656202648981332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227836 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217377 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p + 1).toNat

end

end A214330.P11234656202648981332

namespace A214330

/-- `A217377(∑{p}[A227836(n)+1, A001222(#)]+1)` -/
def P11234656202648981332.Spec : Prop :=
  ∀ n, P11234656202648981332.a n = A214330 n

end A214330

/-! ## A214330.P3117617719888068659

`and(A158388(n), A214551(n))`
-/

namespace A214330.P3117617719888068659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A214551 n)

end

end A214330.P3117617719888068659

namespace A214330

/-- `and(A158388(n), A214551(n))` -/
def P3117617719888068659.Spec : Prop :=
  ∀ n, P3117617719888068659.a n = A214330 n

end A214330

/-! ## A214330.P9140857734332434154

`and(A214551(n), A267871(n))`
-/

namespace A214330.P9140857734332434154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A214551 n) (A267871 n)

end

end A214330.P9140857734332434154

namespace A214330

/-- `and(A214551(n), A267871(n))` -/
def P9140857734332434154.Spec : Prop :=
  ∀ n, P9140857734332434154.a n = A214330 n

end A214330

/-! ## A214330.P4700117203157066454

`and(A001222(A214520(n+1)), A214551(n))`
-/

namespace A214330.P4700117203157066454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A214520 (n + 1)).toNat) (A214551 n)

end

end A214330.P4700117203157066454

namespace A214330

/-- `and(A001222(A214520(n+1)), A214551(n))` -/
def P4700117203157066454.Spec : Prop :=
  ∀ n, P4700117203157066454.a n = A214330 n

end A214330

/-! ## A214330.P4671032217043255588

`and(A001222(A214588(n+1)), A214551(n))`
-/

namespace A214330.P4671032217043255588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A214588 (n + 1)).toNat) (A214551 n)

end

end A214330.P4671032217043255588

namespace A214330

/-- `and(A001222(A214588(n+1)), A214551(n))` -/
def P4671032217043255588.Spec : Prop :=
  ∀ n, P4671032217043255588.a n = A214330 n

end A214330

/-! ## A214330.P13515476705763151962

`and(A214551(n), A287345(A287347(n+1)))`
-/

namespace A214330.P13515476705763151962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A214551 n) (A287345 (A287347 (n + 1)).toNat)

end

end A214330.P13515476705763151962

namespace A214330

/-- `and(A214551(n), A287345(A287347(n+1)))` -/
def P13515476705763151962.Spec : Prop :=
  ∀ n, P13515476705763151962.a n = A214330 n

end A214330

/-! ## A214330.P1577760951901690676

`and(A214551(n), A287382(A287448(n+1)))`
-/

namespace A214330.P1577760951901690676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A214551 n) (A287382 (A287448 (n + 1)).toNat)

end

end A214330.P1577760951901690676

namespace A214330

/-- `and(A214551(n), A287382(A287448(n+1)))` -/
def P1577760951901690676.Spec : Prop :=
  ∀ n, P1577760951901690676.a n = A214330 n

end A214330

/-! ## A214330.P2493398113460985512

`and(A001221(A214588(n+3)), A214551(n))`
-/

namespace A214330.P2493398113460985512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A214588 (n + 3)).toNat) (A214551 n)

end

end A214330.P2493398113460985512

namespace A214330

/-- `and(A001221(A214588(n+3)), A214551(n))` -/
def P2493398113460985512.Spec : Prop :=
  ∀ n, P2493398113460985512.a n = A214330 n

end A214330

/-!
# A214331: a(n) = (a(n-1) + a(n-3))/gcd(a(n-1), a(n-3)) with a(0) =2, a(1) = 3, a(2) = 5.

The programs for A214331, the canonical program `A214331.P2291698248208345248` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214331 has offset 0).

The definition of A214331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214331.P2291698248208345248

`(a(n-1)+a(n-3))/gcd(a(n-1), a(n-3))` with `a(0)=2, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214331

/-- `(a(n-1)+a(n-3))/gcd(a(n-1), a(n-3))` -/
def P2291698248208345248.Spec : Prop :=
  ∀ n, P2291698248208345248.a n = (A214331 n : ℚ)

end A214331

/-!
# A214332: Trajectory of 0 under the morphism 0 -> 01, 1 -> 202, 2 -> empty string.

The programs for A214332, there is no canonical definition to state claims against.
-/

/-! ## A214332.P2389092293658727380

`log2(gcd(4, A285677(n+4)))`
-/

namespace A214332.P2389092293658727380
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 4 (A285677 (n + 4)) : ℝ)

end

end A214332.P2389092293658727380

/-! ## A214332.P16707437463600029820

`record[xor(2, A003188(n))+1]%3`
-/

namespace A214332.P16707437463600029820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A003188 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 3

end

end A214332.P16707437463600029820

/-! ## A214332.P7237700360621550002

`A241580(p?[A007494(A035517(n))])`
-/

namespace A214332.P7237700360621550002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A035517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241580 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A214332.P7237700360621550002

/-! ## A214332.P7100733192486578760

`A047466(n+1)%A192688(A245579(n+1))`
-/

namespace A214332.P7100733192486578760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047466 (n + 1)) (A192688 (A245579 (n + 1)).toNat)

end

end A214332.P7100733192486578760

/-! ## A214332.P5146264999516394509

`A190487(n+5)*A316344(A265811(n+1))`
-/

namespace A214332.P5146264999516394509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190487 (n + 5) * A316344 (A265811 (n + 1)).toNat

end

end A214332.P5146264999516394509

/-!
# A214333: Trajectory of 1 under evenly many applications of the morphism 1 -> 2, 2 -> 114, 3 -> 4, 4 -> 233.

The programs for A214333, there is no canonical definition to state claims against.
-/

/-! ## A214333.P5932709543729876437

`Δ[A084089(n+1)]-2`
-/

namespace A214333.P5932709543729876437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A214333.P5932709543729876437

/-! ## A214333.P15463812415840014418

`Δ[record[A302792(3*n+2)]]-2`
-/

namespace A214333.P15463812415840014418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A214333.P15463812415840014418

/-! ## A214333.P2662981421615892460

`A027157(Δ[A084089(n+1)])`
-/

namespace A214333.P2662981421615892460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027157 (f1 (n + 1) - f1 n).toNat

end

end A214333.P2662981421615892460

/-! ## A214333.P321848829428046178

`A045898(eq[1, A045898(n+2)])`
-/

namespace A214333.P321848829428046178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045898 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214333.P321848829428046178

/-!
# A214334: Number of rooted maps with n edges on the non-orientable surface of type 2.

The programs for A214334, there is no canonical definition to state claims against.
-/

/-! ## A214334.P7669376785097822251

`A000120(n)*A214806(A057996(n))`
-/

namespace A214334.P7669376785097822251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A214806 (A057996 n).toNat

end

end A214334.P7669376785097822251

/-! ## A214334.P15581537060430503810

`A199121(n)*A214806(A057996(n))`
-/

namespace A214334.P15581537060430503810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199121 n * A214806 (A057996 n).toNat

end

end A214334.P15581537060430503810

/-!
# A214335: Number of rooted maps with n vertices and 2 faces on a non-orientable surface of type 3/2.

The programs for A214335, there is no canonical definition to state claims against.
-/

/-! ## A214335.P4559022742460065337

`A214337(A246868(n)+2)`
-/

namespace A214335.P4559022742460065337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214337 (A246868 n + 2).toNat

end

end A214335.P4559022742460065337

/-!
# A214336: Number of rooted maps with n vertices and 3 faces on a non-orientable surface of type 3/2.

The programs for A214336, there is no canonical definition to state claims against.
-/

/-! ## A214336.P5245864979477889398

`record[A214337(comp[A008281(n)])]`
-/

namespace A214336.P5245864979477889398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214337 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214336.P5245864979477889398

/-!
# A214337: Triangle read by rows: T(n,k) = number of rooted maps with n vertices and k faces on a non-orientable surface of type 3/2 (0 <= k <= n).

The programs for A214337, there is no canonical definition to state claims against.
-/

/-! ## A214337.P4939766700779636720

`A197652(A154984(n²))`
-/

namespace A214337.P4939766700779636720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (A154984 (n ^ 2)).toNat

end

end A214337.P4939766700779636720

/-!
# A214338: Number of rooted maps with n vertices and n faces on a non-orientable surface of type 3/2.

The programs for A214338, there is no canonical definition to state claims against.
-/

/-! ## A214338.P16536636098077689703

`A214337(∑[n]+n)`
-/

namespace A214338.P16536636098077689703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214337 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A214338.P16536636098077689703

/-!
# A214339: Let S_m = concatenation of words 2(1)_2, 2(2)_2, 2(3)_2, ..., 2(m)_2, where (i)_2 denotes the binary expansion of i; then sequence is S_1, S_2, S_3, ...

The programs for A214339, there is no canonical definition to state claims against.
-/

/-! ## A214339.P15283044310828941862

`A327306(A010015(n)+A000045(n+1))`
-/

namespace A214339.P15283044310828941862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 (A010015 n + A000045 (n + 1)).toNat

end

end A214339.P15283044310828941862

/-! ## A214339.P16030746248744677668

`A083952(A255225(n+1))-A327216(n)`
-/

namespace A214339.P16030746248744677668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 (A255225 (n + 1)).toNat - A327216 n

end

end A214339.P16030746248744677668

/-! ## A214339.P3490242147740163109

`A000122(A238341(n+5)^A036043(n+1))`
-/

namespace A214339.P3490242147740163109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.roundAway ((A238341 (n + 5) : ℚ) ^ (A036043 (n + 1) : ℤ))).toNat

end

end A214339.P3490242147740163109

/-! ## A214339.P17890866668037166354

`A240689(A016970(n))`
-/

namespace A214339.P17890866668037166354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240689 (A016970 n).toNat

end

end A214339.P17890866668037166354

/-!
# A214340: Number of contiguous blocks of novel occurrences of length-n factors for the Thue-Morse sequence A010060.

The programs for A214340, there is no canonical definition to state claims against.
-/

/-! ## A214340.P13479871684357703099

`A104325(A284019(n+1)+2*n+1)`
-/

namespace A214340.P13479871684357703099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104325 (A284019 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A214340.P13479871684357703099

/-! ## A214340.P10175268225807834490

`A033676(or(A116590(n), A116594(n)))`
-/

namespace A214340.P10175268225807834490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (Int.lor (A116590 n) (A116594 n)).toNat

end

end A214340.P10175268225807834490

/-! ## A214340.P3291806304987477717

`A076608(A049777(n+1))+A067059(n)`
-/

namespace A214340.P3291806304987477717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076608 (A049777 (n + 1)).toNat + A067059 n

end

end A214340.P3291806304987477717

/-! ## A214340.P1640682732160927403

`A005811(record[A016789(n)-A140434(n+1)])`
-/

namespace A214340.P1640682732160927403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A140434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214340.P1640682732160927403

/-! ## A214340.P11979550524686705815

`A257750(n+1)%A000005(A270890(n+3))`
-/

namespace A214340.P11979550524686705815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257750 (n + 1)) (A000005 (A270890 (n + 3)).toNat)

end

end A214340.P11979550524686705815

/-!
# A214341: Expansion of 1 / k(q) = 1 / (r(q) * r(q^2)^2) in powers of q where r() is the Rogers-Ramanujan continued fraction.

The programs for A214341, there is no canonical definition to state claims against.
-/

/-! ## A214341.P7812009570158727361

`A050935(n+1)+A014142(A164227(n))`
-/

namespace A214341.P7812009570158727361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (n + 1) + A014142 (A164227 n).toNat

end

end A214341.P7812009570158727361

/-!
# A214342: Count of the decimal descendants of the n-th prime.

The programs for A214342, there is no canonical definition to state claims against.
-/

/-! ## A214342.P7811023512871799475

`A346979(p?[comp[n²]])`
-/

namespace A214342.P7811023512871799475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346979 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A214342.P7811023512871799475

/-! ## A214342.P2628368161437496075

`A346979(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A214342.P2628368161437496075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346979 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A214342.P2628368161437496075

/-! ## A214342.P2928079631002262595

`A346979(Δ[A007504(n)])`
-/

namespace A214342.P2928079631002262595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346979 (f1 (n + 1) - f1 n).toNat

end

end A214342.P2928079631002262595

/-! ## A214342.P273225459480033503

`A346979(A000040(n+1))`
-/

namespace A214342.P273225459480033503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346979 (A000040 (n + 1)).toNat

end

end A214342.P273225459480033503

/-! ## A214342.P211758111296421147

`A346979(A030291(n+1))`
-/

namespace A214342.P211758111296421147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346979 (A030291 (n + 1)).toNat

end

end A214342.P211758111296421147

/-!
# A214343: a(n) is the smallest integer j such that the numbers of prime factors (counting multiplicity) in j, j+1, ... , j+n-1 are the full set {1,2,...,n}.

The programs for A214343, there is no canonical definition to state claims against.
-/

/-! ## A214343.P9632743296687178965

`A204892(A347021(n))+n`
-/

namespace A214343.P9632743296687178965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A347021 n).toNat + (n : ℤ)

end

end A214343.P9632743296687178965

/-! ## A214343.P6460937632732056771

`A204892(A319220(n)+∑[2*n])`
-/

namespace A214343.P6460937632732056771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A319220 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A214343.P6460937632732056771

/-!
# A214345: Interleaved reading of A073577 and A053755.

The programs for A214345, the canonical program `A214345.P117679322915454993` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214345 has offset 0).

The definition of A214345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214345.P117679322915454993

`4*(n+1)+a(n-2)` with `a(0)=5, a(1)=7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214345

/-- `4*(n+1)+a(n-2)` -/
def P117679322915454993.Spec : Prop :=
  ∀ n, (P117679322915454993.a n : ℤ) = A214345 n

theorem P117679322915454993.correct : P117679322915454993.Spec := by
  intro n
  simp only [A214345]

end A214345

/-! ## A214345.P16624021718785890726

`(2*n*(n+4)+3*(-1)^n+7)/2`
-/

namespace A214345.P16624021718785890726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n * (n + 4) : ℤ) + 3 * (-1) ^ n + 7 : ℚ) / 2

end

end A214345.P16624021718785890726

namespace A214345

/-- `(2*n*(n+4)+3*(-1)^n+7)/2` -/
def P16624021718785890726.Spec : Prop :=
  ∀ n, P16624021718785890726.a n = (A214345 n : ℚ)

theorem P16624021718785890726.correct : P16624021718785890726.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A214345, Nat.add_sub_cancel, A214345.P16624021718785890726.a, A214345.P117679322915454993.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A214345, Nat.add_sub_cancel, A214345.P16624021718785890726.a, A214345.P117679322915454993.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A214345

/-! ## A214345.P8265284017358727951

`record[or(6, n)-1]+n²`
-/

namespace A214345.P8265284017358727951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n ^ 2 : ℤ)

end

end A214345.P8265284017358727951

namespace A214345

/-- `record[or(6, n)-1]+n²` -/
def P8265284017358727951.Spec : Prop :=
  ∀ n, P8265284017358727951.a n = A214345 n

end A214345

/-! ## A214345.P843548669517481453

`∑[a(n-2)+4]` with `a(0)=5, a(1)=2, a(2)=10`
-/

namespace A214345.P843548669517481453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 2, 10] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214345.P843548669517481453

namespace A214345

/-- `∑[a(n-2)+4]` -/
def P843548669517481453.Spec : Prop :=
  ∀ n, (P843548669517481453.a n : ℤ) = A214345 n

end A214345

/-! ## A214345.P17818585264990465928

`or(1, xor(1, (n+2)²)-1)`
-/

namespace A214345.P17818585264990465928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((Nat.xor 1 ((n + 2) ^ 2) : ℤ) - 1)

end

end A214345.P17818585264990465928

namespace A214345

/-- `or(1, xor(1, (n+2)²)-1)` -/
def P17818585264990465928.Spec : Prop :=
  ∀ n, P17818585264990465928.a n = A214345 n

end A214345

/-! ## A214345.P7066322418957088953

`xor((n+2)², gcd(2, n))-1`
-/

namespace A214345.P7066322418957088953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor ((n + 2) ^ 2) (Nat.gcd 2 n) : ℤ) - 1

end

end A214345.P7066322418957088953

namespace A214345

/-- `xor((n+2)², gcd(2, n))-1` -/
def P7066322418957088953.Spec : Prop :=
  ∀ n, P7066322418957088953.a n = A214345 n

end A214345

/-! ## A214345.P17120798599334427459

`xor(1, (n+2)²)-and(1, n)`
-/

namespace A214345.P17120798599334427459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 ((n + 2) ^ 2) : ℤ) - (Nat.land 1 n : ℤ)

end

end A214345.P17120798599334427459

namespace A214345

/-- `xor(1, (n+2)²)-and(1, n)` -/
def P17120798599334427459.Spec : Prop :=
  ∀ n, P17120798599334427459.a n = A214345 n

end A214345

/-! ## A214345.P14348148482039521635

`-or(1, -xor(1, (n+2)²))`
-/

namespace A214345.P14348148482039521635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(Nat.xor 1 ((n + 2) ^ 2) : ℤ))

end

end A214345.P14348148482039521635

namespace A214345

/-- `-or(1, -xor(1, (n+2)²))` -/
def P14348148482039521635.Spec : Prop :=
  ∀ n, P14348148482039521635.a n = A214345 n

end A214345

/-! ## A214345.P16565150734601763107

`n-∑[a(n-2)-4]` with `a(0)=-5, a(1)=-1`
-/

namespace A214345.P16565150734601763107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-5, -1] fun n f1 =>
  f1 (n - 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214345.P16565150734601763107

namespace A214345

/-- `n-∑[a(n-2)-4]` -/
def P16565150734601763107.Spec : Prop :=
  ∀ n, P16565150734601763107.a n = A214345 n

end A214345

/-! ## A214345.P15726244588781316535

`ogf((5-3x+3x^2-x^3)/(1-2x+2x^3-x^4))`
-/

namespace A214345.P15726244588781316535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -3, 3, -1] [1, -2, 0, 2, -1] n

end

end A214345.P15726244588781316535

namespace A214345

/-- `ogf((5-3x+3x^2-x^3)/(1-2x+2x^3-x^4))` -/
def P15726244588781316535.Spec : Prop :=
  ∀ n, P15726244588781316535.a n = A214345 n

end A214345

/-! ## A214345.P5006221485676023810

`or(1, or(3, 2*n)+(n+1)²)`
-/

namespace A214345.P5006221485676023810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 3 (2 * n) + (n + 1) ^ 2)

end

end A214345.P5006221485676023810

namespace A214345

/-- `or(1, or(3, 2*n)+(n+1)²)` -/
def P5006221485676023810.Spec : Prop :=
  ∀ n, (P5006221485676023810.a n : ℤ) = A214345 n

end A214345

/-! ## A214345.P1868590566504789022

`∑[2*or(1, n)]+or(3, 2*n)`
-/

namespace A214345.P1868590566504789022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lor 3 (2 * n)

end

end A214345.P1868590566504789022

namespace A214345

/-- `∑[2*or(1, n)]+or(3, 2*n)` -/
def P1868590566504789022.Spec : Prop :=
  ∀ n, (P1868590566504789022.a n : ℤ) = A214345 n

end A214345

/-! ## A214345.P16267224623913610710

`(n+2)²-Δ[n-a(n-1)]` with `a(0)=1`
-/

namespace A214345.P16267224623913610710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A214345.P16267224623913610710

namespace A214345

/-- `(n+2)²-Δ[n-a(n-1)]` -/
def P16267224623913610710.Spec : Prop :=
  ∀ n, P16267224623913610710.a n = A214345 n

end A214345

/-! ## A214345.P13137570338317131258

`lt[and(n+1, n+3), n-1]+n²`
-/

namespace A214345.P13137570338317131258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + n ^ 2

end

end A214345.P13137570338317131258

namespace A214345

/-- `lt[and(n+1, n+3), n-1]+n²` -/
def P13137570338317131258.Spec : Prop :=
  ∀ n, (P13137570338317131258.a n : ℤ) = A214345 n

end A214345

/-! ## A214345.P8502123851831105177

`eq[n+1, or(n-1, n-3)]+n²`
-/

namespace A214345.P8502123851831105177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) ((n : ℤ) - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + n ^ 2

end

end A214345.P8502123851831105177

namespace A214345

/-- `eq[n+1, or(n-1, n-3)]+n²` -/
def P8502123851831105177.Spec : Prop :=
  ∀ n, (P8502123851831105177.a n : ℤ) = A214345 n

end A214345

/-! ## A214345.P15845653729475567893

`(n+2)²+2-gcd(n+1, n-1)²`
-/

namespace A214345.P15845653729475567893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) + (2 - (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) ^ 2 : ℤ))

end

end A214345.P15845653729475567893

namespace A214345

/-- `(n+2)²+2-gcd(n+1, n-1)²` -/
def P15845653729475567893.Spec : Prop :=
  ∀ n, P15845653729475567893.a n = A214345 n

end A214345

/-! ## A214345.P13121879278153563131

`2*n+gcd(2*n, (n+2)²)+(n+1)²`
-/

namespace A214345.P13121879278153563131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (Nat.gcd (2 * n) ((n + 2) ^ 2) + (n + 1) ^ 2)

end

end A214345.P13121879278153563131

namespace A214345

/-- `2*n+gcd(2*n, (n+2)²)+(n+1)²` -/
def P13121879278153563131.Spec : Prop :=
  ∀ n, (P13121879278153563131.a n : ℤ) = A214345 n

end A214345

/-! ## A214345.P8260364058676214620

`A142717(n+1)+2`
-/

namespace A214345.P8260364058676214620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142717 (n + 1) + 2

end

end A214345.P8260364058676214620

namespace A214345

/-- `A142717(n+1)+2` -/
def P8260364058676214620.Spec : Prop :=
  ∀ n, P8260364058676214620.a n = A214345 n

end A214345

/-! ## A214345.P12283095643386911165

`A047436(n+1)+n²`
-/

namespace A214345.P12283095643386911165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047436 (n + 1) + (n ^ 2 : ℤ)

end

end A214345.P12283095643386911165

namespace A214345

/-- `A047436(n+1)+n²` -/
def P12283095643386911165.Spec : Prop :=
  ∀ n, P12283095643386911165.a n = A214345 n

end A214345

/-! ## A214345.P17613311522146768327

`xor(2, A227786(n+1))+2`
-/

namespace A214345.P17613311522146768327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A227786 (n + 1)) + 2

end

end A214345.P17613311522146768327

namespace A214345

/-- `xor(2, A227786(n+1))+2` -/
def P17613311522146768327.Spec : Prop :=
  ∀ n, P17613311522146768327.a n = A214345 n

end A214345

/-!
# A214346: Number of nXnXn triangular 0..2 arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors.

The programs for A214346, there is no canonical definition to state claims against.
-/

/-! ## A214346.P12152424845496542011

`A214352(∑[n+2])`
-/

namespace A214346.P12152424845496542011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214346.P12152424845496542011

/-! ## A214346.P9829872825722815902

`or(1, A214352(A000096(n+1)))`
-/

namespace A214346.P9829872825722815902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A214352 (A000096 (n + 1)).toNat)

end

end A214346.P9829872825722815902

/-! ## A214346.P11986698321509238818

`record[A214352(A000096(abs(round(sqrt(2*(n+1)))²-(2*n+1))+1))]`
-/

namespace A214346.P11986698321509238818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A000096 (|SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214346.P11986698321509238818

/-! ## A214346.P12615371780083590704

`A287287(2*n+1)+A214352(A000096(n+1))`
-/

namespace A214346.P12615371780083590704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287287 (2 * n + 1) + A214352 (A000096 (n + 1)).toNat

end

end A214346.P12615371780083590704

/-! ## A214346.P7249207896130486880

`A052552(2*n+1)*A214352(A000096(n+1))`
-/

namespace A214346.P7249207896130486880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (2 * n + 1) * A214352 (A000096 (n + 1)).toNat

end

end A214346.P7249207896130486880

/-!
# A214347: Number of nXnXn triangular 0..3 arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors.

The programs for A214347, there is no canonical definition to state claims against.
-/

/-! ## A214347.P1459775412557222188

`A214352(∑[n+3]+1)`
-/

namespace A214347.P1459775412557222188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A214347.P1459775412557222188

/-!
# A214348: Number of nXnXn triangular 0..4 arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors.

The programs for A214348, there is no canonical definition to state claims against.
-/

/-! ## A214348.P4670929249991751623

`A214352(A141214(n+1))`
-/

namespace A214348.P4670929249991751623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A141214 (n + 1)).toNat

end

end A214348.P4670929249991751623

/-! ## A214348.P8069777037303791268

`A214352(A027379(n+2))`
-/

namespace A214348.P8069777037303791268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A027379 (n + 2)).toNat

end

end A214348.P8069777037303791268

/-! ## A214348.P2354989210382157103

`A214352(A056000(n)+7)`
-/

namespace A214348.P2354989210382157103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A056000 n + 7).toNat

end

end A214348.P2354989210382157103

/-! ## A214348.P5846515584904818428

`A214352(eq[3, A193592(n)])`
-/

namespace A214348.P5846515584904818428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214348.P5846515584904818428

/-! ## A214348.P2200423587217783344

`A214352(Δ[A006416(n+2)])`
-/

namespace A214348.P2200423587217783344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (f1 (n + 1) - f1 n).toNat

end

end A214348.P2200423587217783344

/-!
# A214349: Number of nXnXn triangular 0..5 arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors.

The programs for A214349, there is no canonical definition to state claims against.
-/

/-! ## A214349.P1837301257593535473

`A214352(eq[4, A193592(n)])`
-/

namespace A214349.P1837301257593535473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214349.P1837301257593535473

/-! ## A214349.P16871880855327547367

`A214352(Δ[A023545(n+1)])`
-/

namespace A214349.P16871880855327547367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (f1 (n + 1) - f1 n).toNat

end

end A214349.P16871880855327547367

/-! ## A214349.P9263131631011476697

`A214352(A055999(n+2)+2)`
-/

namespace A214349.P9263131631011476697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A055999 (n + 2) + 2).toNat

end

end A214349.P9263131631011476697

/-! ## A214349.P82940478704013369

`A214352(A141214(n+2)-1)`
-/

namespace A214349.P82940478704013369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A141214 (n + 2) - 1).toNat

end

end A214349.P82940478704013369

/-! ## A214349.P11925566708980544946

`A214352(A027379(n+3)-1)`
-/

namespace A214349.P11925566708980544946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A027379 (n + 3) - 1).toNat

end

end A214349.P11925566708980544946

/-!
# A214350: Number of nXnXn triangular 0..6 arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors.

The programs for A214350, there is no canonical definition to state claims against.
-/

/-! ## A214350.P10006699489238876795

`A214352(A052905(n+3))`
-/

namespace A214350.P10006699489238876795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A052905 (n + 3)).toNat

end

end A214350.P10006699489238876795

/-! ## A214350.P3573500911986033422

`A214352(A056119(n)+16)`
-/

namespace A214350.P3573500911986033422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A056119 n + 16).toNat

end

end A214350.P3573500911986033422

/-! ## A214350.P1074430269855764715

`A214352(eq[3, A219347(n)])`
-/

namespace A214350.P1074430269855764715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214350.P1074430269855764715

/-! ## A214350.P14005864915855473825

`A214352(eq[5, A193592(n)])`
-/

namespace A214350.P14005864915855473825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214350.P14005864915855473825

/-!
# A214351: Number of n X n X n triangular 0..7 arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors.

The programs for A214351, there is no canonical definition to state claims against.
-/

/-! ## A214351.P8364254155274386970

`A214352(eq[4, A219347(n)])`
-/

namespace A214351.P8364254155274386970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214351.P8364254155274386970

/-! ## A214351.P10347462082134587466

`A214352(eq[6, A193592(n)])`
-/

namespace A214351.P10347462082134587466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214351.P10347462082134587466

/-!
# A214353: Number of 3 X 3 X 3 triangular 0..n arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors.

The programs for A214353, there is no canonical definition to state claims against.
-/

/-! ## A214353.P6489140770460453929

`A214352(∑[n+2]+4)`
-/

namespace A214353.P6489140770460453929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A214353.P6489140770460453929

/-! ## A214353.P95317419446153387

`A214352(A167614(n+1))+A185037(n)`
-/

namespace A214353.P95317419446153387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A167614 (n + 1)).toNat + A185037 n

end

end A214353.P95317419446153387

/-! ## A214353.P8432162864180081784

`A214352(A167614(n+1))%A017368(n)`
-/

namespace A214353.P8432162864180081784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214352 (A167614 (n + 1)).toNat) (A017368 n)

end

end A214353.P8432162864180081784

/-! ## A214353.P11564179635753258689

`lcm(A033999(n), A214352(A167614(n+1)))`
-/

namespace A214353.P11564179635753258689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A214352 (A167614 (n + 1)).toNat)

end

end A214353.P11564179635753258689

/-! ## A214353.P9623028761957398197

`or(A000035(n), A214352(A167614(n+1)))`
-/

namespace A214353.P9623028761957398197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A214352 (A167614 (n + 1)).toNat)

end

end A214353.P9623028761957398197

/-!
# A214354: Number of 4X4X4 triangular 0..n arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors.

The programs for A214354, there is no canonical definition to state claims against.
-/

/-! ## A214354.P11835618027269241166

`A214352(A141214(n)+7)`
-/

namespace A214354.P11835618027269241166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A141214 n + 7).toNat

end

end A214354.P11835618027269241166

/-! ## A214354.P9522035346854708308

`A214352(A052905(n)+9)`
-/

namespace A214354.P9522035346854708308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A052905 n + 9).toNat

end

end A214354.P9522035346854708308

/-! ## A214354.P17131056223556003173

`A214352(A055999(n)+10)`
-/

namespace A214354.P17131056223556003173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A055999 n + 10).toNat

end

end A214354.P17131056223556003173

/-! ## A214354.P14821823262927245628

`A214352(A167614(n+2)+1)`
-/

namespace A214354.P14821823262927245628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A167614 (n + 2) + 1).toNat

end

end A214354.P14821823262927245628

/-! ## A214354.P6068546908312490324

`A214352(eq[5, A131818(n+1)])`
-/

namespace A214354.P6068546908312490324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214354.P6068546908312490324

/-!
# A214355: Number of 5X5X5 triangular 0..n arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors.

The programs for A214355, there is no canonical definition to state claims against.
-/

/-! ## A214355.P8382526496716692841

`A214352(A167499(n+3))`
-/

namespace A214355.P8382526496716692841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A167499 (n + 3)).toNat

end

end A214355.P8382526496716692841

/-! ## A214355.P1543987124468403360

`A214352(A056000(n)+15)`
-/

namespace A214355.P1543987124468403360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A056000 n + 15).toNat

end

end A214355.P1543987124468403360

/-! ## A214355.P18240376317192734839

`A214352(eq[7, A066657(n)])`
-/

namespace A214355.P18240376317192734839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214355.P18240376317192734839

/-! ## A214355.P17583133775380761271

`A214352(A027379(n+2)+8)`
-/

namespace A214355.P17583133775380761271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A027379 (n + 2) + 8).toNat

end

end A214355.P17583133775380761271

/-! ## A214355.P6331962659023881883

`A214352(eq[6, A131818(n+1)])`
-/

namespace A214355.P6331962659023881883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214355.P6331962659023881883

/-!
# A214356: Number of 6X6X6 triangular 0..n arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors.

The programs for A214356, there is no canonical definition to state claims against.
-/

/-! ## A214356.P3563775733516115214

`A214352(A056115(n)+21)`
-/

namespace A214356.P3563775733516115214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A056115 n + 21).toNat

end

end A214356.P3563775733516115214

/-! ## A214356.P9396376153800927301

`A214352(A000096(n+4)+7)`
-/

namespace A214356.P9396376153800927301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A000096 (n + 4) + 7).toNat

end

end A214356.P9396376153800927301

/-! ## A214356.P6690359444571595626

`A214352(A000217(n+5)+6)`
-/

namespace A214356.P6690359444571595626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A000217 (n + 5) + 6).toNat

end

end A214356.P6690359444571595626

/-! ## A214356.P14368863531244489958

`A214352(A141214(n+2)+9)`
-/

namespace A214356.P14368863531244489958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A141214 (n + 2) + 9).toNat

end

end A214356.P14368863531244489958

/-! ## A214356.P9810965386263687799

`A214352(A055999(n+2)+12)`
-/

namespace A214356.P9810965386263687799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A055999 (n + 2) + 12).toNat

end

end A214356.P9810965386263687799

/-!
# A214357: Number of 7X7X7 triangular 0..n arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors.

The programs for A214357, there is no canonical definition to state claims against.
-/

/-! ## A214357.P16956258764080921422

`A214352(A056119(n)+28)`
-/

namespace A214357.P16956258764080921422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214352 (A056119 n + 28).toNat

end

end A214357.P16956258764080921422

/-!
# A214358: Number of (2-14-3, 3-41-2)-avoiding permutations of size n.

The programs for A214358, there is no canonical definition to state claims against.
-/

/-! ## A214358.P12594037279790003999

`A348351(n+1)-A025442(A035088(n))-A076024(n)`
-/

namespace A214358.P12594037279790003999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348351 (n + 1) - A025442 (A035088 n).toNat - A076024 n

end

end A214358.P12594037279790003999

/-! ## A214358.P16463402784346184722

`floor(∏{p}[A108398(n), sqrt(#)])`
-/

namespace A214358.P16463402784346184722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108398 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n).natAbs, Real.sqrt (p : ℝ)⌋

end

end A214358.P16463402784346184722

/-! ## A214358.P1319268360976071644

`A165640(A151065(n))`
-/

namespace A214358.P1319268360976071644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165640 (A151065 n).toNat

end

end A214358.P1319268360976071644

/-!
# A214361: Expansion of c(q^2) * (c(q) + 2 * c(q^4)) / 9 in powers of q where c() is a cubic AGM theta function.

The programs for A214361, the canonical program `A214361.P18114527469717323411` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214361 has offset 1).

The definition of A214361 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124449, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A214361.P18114527469717323411

`(-1)^n*A124449(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A214361

/-- `(-1)^n*A124449(n+1)` -/
def P18114527469717323411.Spec : Prop :=
  ∀ n, P18114527469717323411.a n = A214361 (n + 1)

theorem P18114527469717323411.correct : P18114527469717323411.Spec := by
  intro n
  simp only [A214361, Nat.add_sub_cancel]

end A214361

/-! ## A214361.P837997185475748725

`abs(A124449(n+1))`
-/

namespace A214361.P837997185475748725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124449 (n + 1)|

end

end A214361.P837997185475748725

namespace A214361

/-- `abs(A124449(n+1))` -/
def P837997185475748725.Spec : Prop :=
  ∀ n, P837997185475748725.a n = A214361 (n + 1)

end A214361

/-! ## A214361.P16024268235915533554

`3^(n%2)*A121443(n+1)`
-/

namespace A214361.P16024268235915533554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n % 2) : ℤ) * A121443 (n + 1)

end

end A214361.P16024268235915533554

namespace A214361

/-- `3^(n%2)*A121443(n+1)` -/
def P16024268235915533554.Spec : Prop :=
  ∀ n, P16024268235915533554.a n = A214361 (n + 1)

end A214361

/-! ## A214361.P8846514933238609489

`A078708(A259445(n+1))`
-/

namespace A214361.P8846514933238609489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078708 (A259445 (n + 1)).toNat

end

end A214361.P8846514933238609489

namespace A214361

/-- `A078708(A259445(n+1))` -/
def P8846514933238609489.Spec : Prop :=
  ∀ n, P8846514933238609489.a n = A214361 (n + 1)

end A214361

/-! ## A214361.P3023522420794333983

`A010684(n)*A121443(n+1)`
-/

namespace A214361.P3023522420794333983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A121443 (n + 1)

end

end A214361.P3023522420794333983

namespace A214361

/-- `A010684(n)*A121443(n+1)` -/
def P3023522420794333983.Spec : Prop :=
  ∀ n, P3023522420794333983.a n = A214361 (n + 1)

end A214361

/-! ## A214361.P3765759676278022266

`gcd(A000038(n), A124449(n+1))`
-/

namespace A214361.P3765759676278022266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A124449 (n + 1))

end

end A214361.P3765759676278022266

namespace A214361

/-- `gcd(A000038(n), A124449(n+1))` -/
def P3765759676278022266.Spec : Prop :=
  ∀ n, (P3765759676278022266.a n : ℤ) = A214361 (n + 1)

end A214361

/-! ## A214361.P3453724846858795836

`lcm(A010684(n), A124449(n+1))`
-/

namespace A214361.P3453724846858795836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010684 n) (A124449 (n + 1))

end

end A214361.P3453724846858795836

namespace A214361

/-- `lcm(A010684(n), A124449(n+1))` -/
def P3453724846858795836.Spec : Prop :=
  ∀ n, (P3453724846858795836.a n : ℤ) = A214361 (n + 1)

end A214361

/-! ## A214361.P2408076931526902005

`A185152(n+1)/A327625(n+1)`
-/

namespace A214361.P2408076931526902005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185152 (n + 1) : ℚ) / (A327625 (n + 1) : ℚ)

end

end A214361.P2408076931526902005

namespace A214361

/-- `A185152(n+1)/A327625(n+1)` -/
def P2408076931526902005.Spec : Prop :=
  ∀ n, P2408076931526902005.a n = (A214361 (n + 1) : ℚ)

end A214361

/-! ## A214361.P2674975135993838527

`(2-A033999(n))*A121443(n+1)`
-/

namespace A214361.P2674975135993838527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A121443 (n + 1)

end

end A214361.P2674975135993838527

namespace A214361

/-- `(2-A033999(n))*A121443(n+1)` -/
def P2674975135993838527.Spec : Prop :=
  ∀ n, P2674975135993838527.a n = A214361 (n + 1)

end A214361

/-! ## A214361.P11916656617780975610

`abs(A226132(n+1))*Δ[A042948(n)]`
-/

namespace A214361.P11916656617780975610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A226132 (n + 1)| * (f1 (n + 1) - f1 n)

end

end A214361.P11916656617780975610

namespace A214361

/-- `abs(A226132(n+1))*Δ[A042948(n)]` -/
def P11916656617780975610.Spec : Prop :=
  ∀ n, P11916656617780975610.a n = A214361 (n + 1)

end A214361

/-! ## A214361.P16108007644955887803

`2*A121443(n+1)-A226132(n+1)`
-/

namespace A214361.P16108007644955887803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121443 (n + 1) - A226132 (n + 1)

end

end A214361.P16108007644955887803

namespace A214361

/-- `2*A121443(n+1)-A226132(n+1)` -/
def P16108007644955887803.Spec : Prop :=
  ∀ n, P16108007644955887803.a n = A214361 (n + 1)

end A214361

/-! ## A214361.P6594298540748206783

`∑{d}[n+1, A086932(#)*A113446((n+1)/#)]`
-/

namespace A214361.P6594298540748206783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A086932 d * A113446 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A214361.P6594298540748206783

namespace A214361

/-- `∑{d}[n+1, A086932(#)*A113446((n+1)/#)]` -/
def P6594298540748206783.Spec : Prop :=
  ∀ n, P6594298540748206783.a n = A214361 (n + 1)

end A214361

/-! ## A214361.P15257526402899687788

`∑{d}[n+1, A256232(#)*A345082((n+1)/#)]`
-/

namespace A214361.P15257526402899687788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A256232 d * A345082 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A214361.P15257526402899687788

namespace A214361

/-- `∑{d}[n+1, A256232(#)*A345082((n+1)/#)]` -/
def P15257526402899687788.Spec : Prop :=
  ∀ n, P15257526402899687788.a n = A214361 (n + 1)

end A214361

/-! ## A214361.P3061917280568131121

`∑{d}[n+1, A121443(#)*A130706((n+1)/#-1)]`
-/

namespace A214361.P3061917280568131121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A121443 d * A130706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A214361.P3061917280568131121

namespace A214361

/-- `∑{d}[n+1, A121443(#)*A130706((n+1)/#-1)]` -/
def P3061917280568131121.Spec : Prop :=
  ∀ n, P3061917280568131121.a n = A214361 (n + 1)

end A214361

/-! ## A214361.P15807389076389577401

`2*A226132(A000265(n+1))-A226132(n+1)`
-/

namespace A214361.P15807389076389577401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226132 (A000265 (n + 1)).toNat - A226132 (n + 1)

end

end A214361.P15807389076389577401

namespace A214361

/-- `2*A226132(A000265(n+1))-A226132(n+1)` -/
def P15807389076389577401.Spec : Prop :=
  ∀ n, P15807389076389577401.a n = A214361 (n + 1)

end A214361

/-! ## A214361.P16274115591838061692

`A121443(n+1)*A124449(n+1)/A226132(n+1)`
-/

namespace A214361.P16274115591838061692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121443 (n + 1) * A124449 (n + 1) : ℚ) / (A226132 (n + 1) : ℚ)

end

end A214361.P16274115591838061692

namespace A214361

/-- `A121443(n+1)*A124449(n+1)/A226132(n+1)` -/
def P16274115591838061692.Spec : Prop :=
  ∀ n, P16274115591838061692.a n = (A214361 (n + 1) : ℚ)

end A214361

/-! ## A214361.P16273613010605424793

`A121443(A080512(n+1))`
-/

namespace A214361.P16273613010605424793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121443 (A080512 (n + 1)).toNat

end

end A214361.P16273613010605424793

namespace A214361

/-- `A121443(A080512(n+1))` -/
def P16273613010605424793.Spec : Prop :=
  ∀ n, P16273613010605424793.a n = A214361 (n + 1)

end A214361

/-! ## A214361.P8964914647868288170

`A121443(A257143(n+1))`
-/

namespace A214361.P8964914647868288170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121443 (A257143 (n + 1)).toNat

end

end A214361.P8964914647868288170

namespace A214361

/-- `A121443(A257143(n+1))` -/
def P8964914647868288170.Spec : Prop :=
  ∀ n, P8964914647868288170.a n = A214361 (n + 1)

end A214361

/-! ## A214361.P3209176180833860414

`A121443(A106832(n+1)/2)`
-/

namespace A214361.P3209176180833860414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121443 (SequenceMachineLib.roundAway ((A106832 (n + 1) : ℚ) / 2)).toNat

end

end A214361.P3209176180833860414

namespace A214361

/-- `A121443(A106832(n+1)/2)` -/
def P3209176180833860414.Spec : Prop :=
  ∀ n, P3209176180833860414.a n = A214361 (n + 1)

end A214361

/-! ## A214361.P16212617274725829929

`A121443(A165998(n))`
-/

namespace A214361.P16212617274725829929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121443 (A165998 n).toNat

end

end A214361.P16212617274725829929

namespace A214361

/-- `A121443(A165998(n))` -/
def P16212617274725829929.Spec : Prop :=
  ∀ n, P16212617274725829929.a n = A214361 (n + 1)

end A214361

/-!
# A214362: Arithmetic mean of next a(n) successive positive integers is prime.

The programs for A214362, the canonical program `A214362.P3714722882653468056` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214362 has offset 1).

The definition of A214362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214362.P13646513308245136343

`xor(2, A213815(round(sqrt(n²+1))+1))`
-/

namespace A214362.P13646513308245136343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A213815 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat)

end

end A214362.P13646513308245136343

namespace A214362

/-- `xor(2, A213815(round(sqrt(n²+1))+1))` -/
def P13646513308245136343.Spec : Prop :=
  ∀ n, P13646513308245136343.a n = A214362 (n + 1)

end A214362

/-! ## A214362.P3714722882653468056

`xor(3, A213815(A028310(n)+1))+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A214362

/-- `xor(3, A213815(A028310(n)+1))+1` -/
def P3714722882653468056.Spec : Prop :=
  ∀ n, P3714722882653468056.a n = A214362 (n + 1)

theorem P3714722882653468056.correct : P3714722882653468056.Spec := by
  intro n
  simp only [A214362, Nat.add_sub_cancel]

end A214362

/-! ## A214362.P10690507358089747025

`A213815(n+1)-2*A033999(n)`
-/

namespace A214362.P10690507358089747025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213815 (n + 1) - 2 * A033999 n

end

end A214362.P10690507358089747025

namespace A214362

/-- `A213815(n+1)-2*A033999(n)` -/
def P10690507358089747025.Spec : Prop :=
  ∀ n, P10690507358089747025.a n = A214362 (n + 1)

end A214362

/-! ## A214362.P15388369289860593099

`xor(2, A213815(n+1))%A017294(n)`
-/

namespace A214362.P15388369289860593099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 2 (A213815 (n + 1))) (A017294 n)

end

end A214362.P15388369289860593099

namespace A214362

/-- `xor(2, A213815(n+1))%A017294(n)` -/
def P15388369289860593099.Spec : Prop :=
  ∀ n, P15388369289860593099.a n = A214362 (n + 1)

end A214362

/-! ## A214362.P14713469388863949329

`A004443(A213815(n+1)%∑[n+2])`
-/

namespace A214362.P14713469388863949329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (Int.tmod (A213815 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A214362.P14713469388863949329

namespace A214362

/-- `A004443(A213815(n+1)%∑[n+2])` -/
def P14713469388863949329.Spec : Prop :=
  ∀ n, P14713469388863949329.a n = A214362 (n + 1)

end A214362

/-! ## A214362.P1368934723675429603

`A004442(A213815(n+1))+Δ[A004442(n)]`
-/

namespace A214362.P1368934723675429603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A213815 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A214362.P1368934723675429603

namespace A214362

/-- `A004442(A213815(n+1))+Δ[A004442(n)]` -/
def P1368934723675429603.Spec : Prop :=
  ∀ n, P1368934723675429603.a n = A214362 (n + 1)

end A214362

/-! ## A214362.P16692396821255325379

`A004442(A213815(n+1)+n)-A004442(n)`
-/

namespace A214362.P16692396821255325379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A213815 (n + 1) + (n : ℤ)).toNat - A004442 n

end

end A214362.P16692396821255325379

namespace A214362

/-- `A004442(A213815(n+1)+n)-A004442(n)` -/
def P16692396821255325379.Spec : Prop :=
  ∀ n, P16692396821255325379.a n = A214362 (n + 1)

end A214362

/-!
# A214363: E.g.f. satisfies: A(x) = x + A(x)^2 * cosh(A(x))^2 / 2.

The programs for A214363, there is no canonical definition to state claims against.
-/

/-! ## A214363.P13608108252336905865

`A383430((n+1)^n)-n`
-/

namespace A214363.P13608108252336905865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383430 ((n + 1) ^ n) - (n : ℤ)

end

end A214363.P13608108252336905865

/-!
# A214364: Irregular triangle read by rows n lists the values k of all decompositions of 2n into unordered sums of two k-almost primes.

The programs for A214364, there is no canonical definition to state claims against.
-/

/-! ## A214364.P13041224599434094423

`A001221(or(A115080(n)², A115085(n+2)))`
-/

namespace A214364.P13041224599434094423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A115080 n ^ 2) (A115085 (n + 2))).toNat

end

end A214364.P13041224599434094423

/-! ## A214364.P4509137597401686166

`A001221(A353391(n)+A343447(n+1))`
-/

namespace A214364.P4509137597401686166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A353391 n + A343447 (n + 1)).toNat

end

end A214364.P4509137597401686166

/-! ## A214364.P4155116502504378903

`A118164(A008611(∑[A248835(n+1)]))`
-/

namespace A214364.P4155116502504378903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118164 (A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A214364.P4155116502504378903

/-! ## A214364.P15544033066555861598

`A059829(A342330(n)+A090614(3*n+1))`
-/

namespace A214364.P15544033066555861598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059829 (A342330 n + A090614 (3 * n + 1)).toNat

end

end A214364.P15544033066555861598

/-! ## A214364.P8818974183066218128

`∑{e}[(2*n)^(gcd(3, A129527(n))+1)+1, #]`
-/

namespace A214364.P8818974183066218128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ (Int.gcd 3 (A129527 n) + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A214364.P8818974183066218128

/-!
# A214366: Number of different patterns using tiles from 1*1 to 1*n with each tile flush to at least one other.

The programs for A214366, there is no canonical definition to state claims against.
-/

/-! ## A214366.P10135171039567234360

`A182758(A064681(n)*A079500(n))`
-/

namespace A214366.P10135171039567234360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182758 (A064681 n * A079500 n).toNat

end

end A214366.P10135171039567234360

/-!
# A214367: Denominators of continued fraction convergents to ( sqrt(4*sqrt(3)-3) - 1 )/4.

The programs for A214367, there is no canonical definition to state claims against.
-/

/-! ## A214367.P17944748333876195506

`A345352(A345352(a(n-2)))+a(n-1)` with `a(0)=1, a(1)=4, a(2)=53`
-/

namespace A214367.P17944748333876195506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 53] fun n a =>
  A345352 (A345352 (a (n - 2)).toNat).toNat + a (n - 1)

end

end A214367.P17944748333876195506

/-!
# A214370: If a(n) has not yet been defined then set a(n) = least positive integer that has not yet occurred; also if a(n+1+a(n)) has not yet been defined then set a(n+1+a(n)) = a(n).

The programs for A214370, there is no canonical definition to state claims against.
-/

/-! ## A214370.P2899065791024770998

`A214371(n+2)-1`
-/

namespace A214370.P2899065791024770998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214371 (n + 2) - 1

end

end A214370.P2899065791024770998

/-! ## A214370.P9263117794901173345

`A002837(A214371(n+2))`
-/

namespace A214370.P9263117794901173345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A214371 (n + 2)).toNat

end

end A214370.P9263117794901173345

/-! ## A214370.P16339550812727648046

`A329606(A026272(n+1)%A113244(2*n+3))`
-/

namespace A214370.P16339550812727648046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329606 (Int.tmod (A026272 (n + 1)) (A113244 (2 * n + 3))).toNat

end

end A214370.P16339550812727648046

/-! ## A214370.P12288526261430080815

`A329606(A026272(n+1)%A277317(n+1))`
-/

namespace A214370.P12288526261430080815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329606 (Int.tmod (A026272 (n + 1)) (A277317 (n + 1))).toNat

end

end A214370.P12288526261430080815

/-! ## A214370.P17169234307617114427

`A329606(A026272(n+1))%A294282(3*n+5)`
-/

namespace A214370.P17169234307617114427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329606 (A026272 (n + 1)).toNat) (A294282 (3 * n + 5))

end

end A214370.P17169234307617114427

/-!
# A214371: If a(n) has not yet been defined then set a(n) = least positive integer that has not yet occurred; also if n>1 and a(n+a(n)) has not yet been defined then set a(n+a(n)) = a(n).

The programs for A214371, there is no canonical definition to state claims against.
-/

/-! ## A214371.P8710208797327959705

`A214370(n)+a(floor(acot(n)))` with `a(0)=1`
-/

namespace A214371.P8710208797327959705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214370 n + a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A214371.P8710208797327959705

/-! ## A214371.P17041712821239019943

`A214370(C(2, n+2)+n)+ceil(sin(n)²)`
-/

namespace A214371.P17041712821239019943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214370 (Nat.choose 2 (n + 2) + n) + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A214371.P17041712821239019943

/-! ## A214371.P566704280425055474

`A214370(C(2, a(n-1)+2)+n)+1` with `a(0)=1`
-/

namespace A214371.P566704280425055474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214370 (Nat.choose 2 (a (n - 1) + 2).toNat + n) + 1

end

end A214371.P566704280425055474

/-! ## A214371.P14815484690396938183

`A214370(C(a(floor(n/2)), n+2)+n)+1` with `a(0)=1`
-/

namespace A214371.P14815484690396938183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214370 (Nat.choose (a ⌊(n : ℚ) / 2⌋.toNat).toNat (n + 2) + n) + 1

end

end A214371.P14815484690396938183

/-! ## A214371.P5669421866354516993

`A214370(n)+a(A000038(n))` with `a(0)=1`
-/

namespace A214371.P5669421866354516993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214370 n + a (A000038 n).toNat

end

end A214371.P5669421866354516993

/-! ## A214371.P9600435412734127748

`A214370(A028310(n))+ceil(sin(n)²)`
-/

namespace A214371.P9600435412734127748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214370 (A028310 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A214371.P9600435412734127748

/-! ## A214371.P9891588864624953266

`A214370(n)+a(A310646(n)%2)` with `a(0)=1`
-/

namespace A214371.P9891588864624953266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214370 n + a (Int.tmod (A310646 n) 2).toNat

end

end A214371.P9891588864624953266

/-! ## A214371.P17531506134487312708

`A214370(n)+a(A007318(C(2, n))-1)` with `a(0)=1`
-/

namespace A214371.P17531506134487312708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214370 n + a (A007318 (Nat.choose 2 n) - 1).toNat

end

end A214371.P17531506134487312708

/-! ## A214371.P10656488624386812635

`A214370(A028310(n))+A000040(n+1)%2`
-/

namespace A214371.P10656488624386812635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214370 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A214371.P10656488624386812635

/-! ## A214371.P16463192672120911898

`A214370(A028310(n))+A000045(n²%(n+1))`
-/

namespace A214371.P16463192672120911898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214370 (A028310 n).toNat + A000045 (n ^ 2 % (n + 1))

end

end A214371.P16463192672120911898

/-!
# A214372: G.f. satisfies A(x) = x + A(x)^2*(1 + A(x))^2.

The programs for A214372, there is no canonical definition to state claims against.
-/

/-! ## A214372.P15262267862168470059

`A215128(n)/(n+1)`
-/

namespace A214372.P15262267862168470059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215128 n : ℚ) / (n + 1 : ℚ)

end

end A214372.P15262267862168470059

/-! ## A214372.P1971516671331518643

`floor(A215128(n)/A348553(n))`
-/

namespace A214372.P1971516671331518643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A215128 n : ℚ) / (A348553 n : ℚ)⌋

end

end A214372.P1971516671331518643

/-! ## A214372.P4306045671024308557

`floor(A215128(n)/A008619(2*n))`
-/

namespace A214372.P4306045671024308557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A215128 n : ℚ) / (A008619 (2 * n) : ℚ)⌋

end

end A214372.P4306045671024308557

/-! ## A214372.P16391958483513998243

`A001002(n)/A038112(n)*A215128(n)`
-/

namespace A214372.P16391958483513998243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001002 n : ℚ) / (A038112 n : ℚ) * (A215128 n : ℚ)

end

end A214372.P16391958483513998243

/-!
# A214374: G.f. satisfies: A(x) = 1 + x*A(x)^3*A(-x)*A(I*x)*A(-I*x).

The programs for A214374, there is no canonical definition to state claims against.
-/

/-! ## A214374.P9307365289805414317

`abs(A323834(A128165(n+1)))`
-/

namespace A214374.P9307365289805414317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323834 (A128165 (n + 1)).toNat|

end

end A214374.P9307365289805414317

/-! ## A214374.P8471616600655730470

`A008615(A169790(n+1)+A169779(n))`
-/

namespace A214374.P8471616600655730470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A169790 (n + 1) + A169779 n).toNat

end

end A214374.P8471616600655730470

/-! ## A214374.P273180128791765946

`A320950(n)-A353846(A000621(n+5))`
-/

namespace A214374.P273180128791765946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320950 n - A353846 (A000621 (n + 5)).toNat

end

end A214374.P273180128791765946

/-!
# A214375: Irregular array T(n,k) of the numbers of non-extendable (complete) non-self-adjacent simple paths ending at each of a minimal subset of nodes within a square lattice bounded by rectangles with nodal dimensions n and 8, n >= 2.

The programs for A214375, there is no canonical definition to state claims against.
-/

/-! ## A214375.P5102436261103755280

`A256756(xor(A172190(n+1), A349716(n)))`
-/

namespace A214375.P5102436261103755280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (Int.xor (A172190 (n + 1)) (A349716 n)).toNat

end

end A214375.P5102436261103755280

/-!
# A214377: G.f. A(x) satisfies A(x) = 1 + 4*x*A(x)^(3/2).

The programs for A214377, there is no canonical definition to state claims against.
-/

/-! ## A214377.P15848600177214598363

`abs(A299854(n+2)/36)`
-/

namespace A214377.P15848600177214598363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A299854 (n + 2) : ℚ) / 36|

end

end A214377.P15848600177214598363

/-! ## A214377.P6610803569125701644

`2/(n+2)*A244038(n)`
-/

namespace A214377.P6610803569125701644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A244038 n : ℚ)

end

end A214377.P6610803569125701644

/-! ## A214377.P11897246650386128315

`A299854(n+2)/36*A033999(n)`
-/

namespace A214377.P11897246650386128315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299854 (n + 2) : ℚ) / 36 * (A033999 n : ℚ)

end

end A214377.P11897246650386128315

/-! ## A214377.P17221091903833507693

`A358367(n)/Δ[A001787(n)]`
-/

namespace A214377.P17221091903833507693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358367 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A214377.P17221091903833507693

/-! ## A214377.P8055355802955274303

`gcd(A299854(n+2)/36, A135943(n+1)!)`
-/

namespace A214377.P8055355802955274303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A299854 (n + 2) : ℚ) / 36)) (Nat.factorial (A135943 (n + 1)).toNat : ℤ)

end

end A214377.P8055355802955274303

/-!
# A214378: Number of nXnXn triangular 0..2 arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and no element equal to its horizontal neighbors.

The programs for A214378, there is no canonical definition to state claims against.
-/

/-! ## A214378.P184490201185857227

`A214384(∑[n+2])`
-/

namespace A214378.P184490201185857227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214378.P184490201185857227

/-! ## A214378.P1290948591697849946

`record[A214384(A333530(n+1))]`
-/

namespace A214378.P1290948591697849946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214378.P1290948591697849946

/-! ## A214378.P7910288283827195344

`record[A214384(eq[1, A065658(n)])]`
-/

namespace A214378.P7910288283827195344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065658 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214378.P7910288283827195344

/-! ## A214378.P18061683140663018575

`A214384(A000096(n+1))%A214379(n+1)`
-/

namespace A214378.P18061683140663018575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214384 (A000096 (n + 1)).toNat) (A214379 (n + 1))

end

end A214378.P18061683140663018575

/-! ## A214378.P6712718257390722604

`A014963(6*(n+1))*A214384(A000096(n+1))`
-/

namespace A214378.P6712718257390722604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A214384 (A000096 (n + 1)).toNat

end

end A214378.P6712718257390722604

/-!
# A214379: Number of nXnXn triangular 0..3 arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and no element equal to its horizontal neighbors.

The programs for A214379, there is no canonical definition to state claims against.
-/

/-! ## A214379.P9002559654206505570

`A214384(∑[n+3]+1)`
-/

namespace A214379.P9002559654206505570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A214379.P9002559654206505570

/-! ## A214379.P13356910417734040099

`record[A214384(Δ[A054974(n+4)])]`
-/

namespace A214379.P13356910417734040099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054974 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214379.P13356910417734040099

/-! ## A214379.P10648516564169028482

`A214384(A034856(n+2))+A000038(n+4)`
-/

namespace A214379.P10648516564169028482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A034856 (n + 2)).toNat + A000038 (n + 4)

end

end A214379.P10648516564169028482

/-! ## A214379.P4357900956264854898

`A214384(A034856(n+2))+A151933(3*n+1)`
-/

namespace A214379.P4357900956264854898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A034856 (n + 2)).toNat + A151933 (3 * n + 1)

end

end A214379.P4357900956264854898

/-! ## A214379.P16219031617973313970

`A214384(A034856(n+2))%A001077(3*n+4)`
-/

namespace A214379.P16219031617973313970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214384 (A034856 (n + 2)).toNat) (A001077 (3 * n + 4))

end

end A214379.P16219031617973313970

/-!
# A214380: Number of nXnXn triangular 0..4 arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and no element equal to its horizontal neighbors.

The programs for A214380, there is no canonical definition to state claims against.
-/

/-! ## A214380.P10388567843058910048

`A214384(A141214(n+1))`
-/

namespace A214380.P10388567843058910048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A141214 (n + 1)).toNat

end

end A214380.P10388567843058910048

/-! ## A214380.P16793126044338563652

`A214384(A055998(n+2))`
-/

namespace A214380.P16793126044338563652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A055998 (n + 2)).toNat

end

end A214380.P16793126044338563652

/-! ## A214380.P11910912880425081320

`A214384(A155212(n)+5)`
-/

namespace A214380.P11910912880425081320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A155212 n + 5).toNat

end

end A214380.P11910912880425081320

/-! ## A214380.P13987794537561307518

`A214384(eq[2, A152157(n)])`
-/

namespace A214380.P13987794537561307518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214380.P13987794537561307518

/-! ## A214380.P8587488903733861689

`A214384(eq[5, A001404(n)])`
-/

namespace A214380.P8587488903733861689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214380.P8587488903733861689

/-!
# A214381: Number of nXnXn triangular 0..5 arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and no element equal to its horizontal neighbors.

The programs for A214381, there is no canonical definition to state claims against.
-/

/-! ## A214381.P8970629123153653936

`A214384(eq[3, A152157(n)])`
-/

namespace A214381.P8970629123153653936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214381.P8970629123153653936

/-! ## A214381.P2670546178961847239

`A214384(eq[4, A193592(n)])`
-/

namespace A214381.P2670546178961847239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214381.P2670546178961847239

/-! ## A214381.P2450631286754800216

`A214384(Δ[A023545(n+1)])`
-/

namespace A214381.P2450631286754800216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (f1 (n + 1) - f1 n).toNat

end

end A214381.P2450631286754800216

/-! ## A214381.P16429762985256422098

`A214384(A052905(n+2)+1)`
-/

namespace A214381.P16429762985256422098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A052905 (n + 2) + 1).toNat

end

end A214381.P16429762985256422098

/-! ## A214381.P7527118012333826090

`A214384(A141214(n+2)-1)`
-/

namespace A214381.P7527118012333826090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A141214 (n + 2) - 1).toNat

end

end A214381.P7527118012333826090

/-!
# A214382: Number of nXnXn triangular 0..6 arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and no element equal to its horizontal neighbors.

The programs for A214382, there is no canonical definition to state claims against.
-/

/-! ## A214382.P9624368978398331419

`A214384(A052905(n+3))`
-/

namespace A214382.P9624368978398331419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A052905 (n + 3)).toNat

end

end A214382.P9624368978398331419

/-! ## A214382.P1903798138649931378

`A214384(A302537(n)+15)`
-/

namespace A214382.P1903798138649931378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A302537 n + 15).toNat

end

end A214382.P1903798138649931378

/-! ## A214382.P1844691895149510413

`A214384(A056119(n)+16)`
-/

namespace A214382.P1844691895149510413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A056119 n + 16).toNat

end

end A214382.P1844691895149510413

/-! ## A214382.P6132734130015456733

`A214384(eq[3, A219347(n)])`
-/

namespace A214382.P6132734130015456733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214382.P6132734130015456733

/-!
# A214383: Number of nXnXn triangular 0..7 arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and no element equal to its horizontal neighbors.

The programs for A214383, there is no canonical definition to state claims against.
-/

/-! ## A214383.P18020028896152880176

`A214384(eq[4, A219347(n)])`
-/

namespace A214383.P18020028896152880176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214383.P18020028896152880176

/-! ## A214383.P2491694099191297501

`A214384(A052905(n+4)-1)`
-/

namespace A214383.P2491694099191297501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A052905 (n + 4) - 1).toNat

end

end A214383.P2491694099191297501

/-!
# A214385: Number of 3 X 3 X 3 triangular 0..n arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and no element equal to its horizontal neighbors.

The programs for A214385, there is no canonical definition to state claims against.
-/

/-! ## A214385.P791532773686414768

`A214384(∑[n+2]+4)`
-/

namespace A214385.P791532773686414768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A214385.P791532773686414768

/-! ## A214385.P6014789799468886486

`lcm(2, A214384(A167614(n+1)))`
-/

namespace A214385.P6014789799468886486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A214384 (A167614 (n + 1)).toNat)

end

end A214385.P6014789799468886486

/-! ## A214385.P3645071939369933845

`A326544(n)+A214384(A167614(n+1))`
-/

namespace A214385.P3645071939369933845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326544 n + A214384 (A167614 (n + 1)).toNat

end

end A214385.P3645071939369933845

/-! ## A214385.P2121374146022750701

`A214384(A167614(n+1))%A042864(n)`
-/

namespace A214385.P2121374146022750701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214384 (A167614 (n + 1)).toNat) (A042864 n)

end

end A214385.P2121374146022750701

/-! ## A214385.P18216899333123932472

`A230915(n+1)+A214384(A167614(n+1))`
-/

namespace A214385.P18216899333123932472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (n + 1) + A214384 (A167614 (n + 1)).toNat

end

end A214385.P18216899333123932472

/-!
# A214386: Number of 4X4X4 triangular 0..n arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and no element equal to its horizontal neighbors.

The programs for A214386, there is no canonical definition to state claims against.
-/

/-! ## A214386.P18390532086081182915

`A214384(A141214(n)+7)`
-/

namespace A214386.P18390532086081182915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A141214 n + 7).toNat

end

end A214386.P18390532086081182915

/-! ## A214386.P14870553300469855951

`A214384(A055999(n)+10)`
-/

namespace A214386.P14870553300469855951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A055999 n + 10).toNat

end

end A214386.P14870553300469855951

/-! ## A214386.P3149964400367775863

`A214384(A167614(n+2)+1)`
-/

namespace A214386.P3149964400367775863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A167614 (n + 2) + 1).toNat

end

end A214386.P3149964400367775863

/-! ## A214386.P15364375035953727400

`A214384(eq[5, A131818(n+1)])`
-/

namespace A214386.P15364375035953727400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214386.P15364375035953727400

/-! ## A214386.P11484687194304819388

`A214384(A052905(n+2)-2*n)`
-/

namespace A214386.P11484687194304819388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A052905 (n + 2) - (2 * n : ℤ)).toNat

end

end A214386.P11484687194304819388

/-!
# A214387: Number of 5 X 5 X 5 triangular 0..n arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and no element equal to its horizontal neighbors.

The programs for A214387, there is no canonical definition to state claims against.
-/

/-! ## A214387.P1375032812060113862

`A214384(A167499(n+3))`
-/

namespace A214387.P1375032812060113862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A167499 (n + 3)).toNat

end

end A214387.P1375032812060113862

/-! ## A214387.P9861971711708469752

`A214384(A155212(n)+13)`
-/

namespace A214387.P9861971711708469752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A155212 n + 13).toNat

end

end A214387.P9861971711708469752

/-! ## A214387.P4819257201105231557

`A214384(eq[7, A066657(n)])`
-/

namespace A214387.P4819257201105231557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214387.P4819257201105231557

/-! ## A214387.P8914397054119416252

`A214384(eq[6, A131818(n+1)])`
-/

namespace A214387.P8914397054119416252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214387.P8914397054119416252

/-! ## A214387.P6204811218150994998

`record[A214384(A167614(n+1)+2)]`
-/

namespace A214387.P6204811218150994998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A167614 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214387.P6204811218150994998

/-!
# A214388: Number of 6X6X6 triangular 0..n arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and no element equal to its horizontal neighbors.

The programs for A214388, there is no canonical definition to state claims against.
-/

/-! ## A214388.P5577181657403165203

`A214384(A056115(n)+21)`
-/

namespace A214388.P5577181657403165203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A056115 n + 21).toNat

end

end A214388.P5577181657403165203

/-! ## A214388.P8051378229345158644

`A214384(A000096(n+4)+7)`
-/

namespace A214388.P8051378229345158644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A000096 (n + 4) + 7).toNat

end

end A214388.P8051378229345158644

/-! ## A214388.P9462538806483167952

`A214384(A246172(n+1)+20)`
-/

namespace A214388.P9462538806483167952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (A246172 (n + 1) + 20).toNat

end

end A214388.P9462538806483167952

/-! ## A214388.P2877884184122710237

`A214384(eq[7, A131818(n+1)])`
-/

namespace A214388.P2877884184122710237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214388.P2877884184122710237

/-! ## A214388.P5242989219951755851

`A214384(Δ[A023545(n+1)]+10)`
-/

namespace A214388.P5242989219951755851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (f1 (n + 1) - f1 n + 10).toNat

end

end A214388.P5242989219951755851

/-!
# A214389: Number of 7X7X7 triangular 0..n arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and no element equal to its horizontal neighbors.

The programs for A214389, there is no canonical definition to state claims against.
-/

/-! ## A214389.P14325053842651509187

`A214384(eq[8, A131818(n+1)])`
-/

namespace A214389.P14325053842651509187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214389.P14325053842651509187

/-!
# A214392: If n mod 4 = 0 then a(n) = n/4, otherwise a(n) = n.

The programs for A214392, the canonical program `A214392.P366480237711270990` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214392 has offset 0).

The definition of A214392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214392.P366480237711270990

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=1, a(5)=5, a(6)=6, a(7)=7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214392

/-- `2*a(n-4)-a(n-8)` -/
def P366480237711270990.Spec : Prop :=
  ∀ n, P366480237711270990.a n = A214392 n

theorem P366480237711270990.correct : P366480237711270990.Spec := by
  intro n
  simp only [A214392]

end A214392

/-! ## A214392.P15308428755807598400

`gcd(n, C(∑[n+1], 3))`
-/

namespace A214392.P15308428755807598400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 3)

end

end A214392.P15308428755807598400

namespace A214392

/-- `gcd(n, C(∑[n+1], 3))` -/
def P15308428755807598400.Spec : Prop :=
  ∀ n, (P15308428755807598400.a n : ℤ) = A214392 n

end A214392

/-! ## A214392.P10141316629717066635

`n/(gcd(8, n²)%3)²`
-/

namespace A214392.P10141316629717066635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (((Nat.gcd 8 (n ^ 2) % 3) ^ 2 : ℕ) : ℚ)

end

end A214392.P10141316629717066635

namespace A214392

/-- `n/(gcd(8, n²)%3)²` -/
def P10141316629717066635.Spec : Prop :=
  ∀ n, P10141316629717066635.a n = (A214392 n : ℚ)

end A214392

/-! ## A214392.P8504412678155423187

`n/(char[4*n]+1)²`
-/

namespace A214392.P8504412678155423187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((((if ∃ j, f1 j = n then 1 else 0) + 1) ^ 2 : ℕ) : ℚ)

end

end A214392.P8504412678155423187

namespace A214392

/-- `n/(char[4*n]+1)²` -/
def P8504412678155423187.Spec : Prop :=
  ∀ n, P8504412678155423187.a n = (A214392 n : ℚ)

end A214392

/-! ## A214392.P6929178568251666773

`gcd(n, A038376(n))`
-/

namespace A214392.P6929178568251666773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A038376 n)

end

end A214392.P6929178568251666773

namespace A214392

/-- `gcd(n, A038376(n))` -/
def P6929178568251666773.Spec : Prop :=
  ∀ n, (P6929178568251666773.a n : ℤ) = A214392 n

end A214392

/-! ## A214392.P15509090679137065509

`gcd(n², A188134(n))`
-/

namespace A214392.P15509090679137065509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A188134 n)

end

end A214392.P15509090679137065509

namespace A214392

/-- `gcd(n², A188134(n))` -/
def P15509090679137065509.Spec : Prop :=
  ∀ n, (P15509090679137065509.a n : ℤ) = A214392 n

end A214392

/-! ## A214392.P12029491086634004594

`n*1/A010121(n)`
-/

namespace A214392.P12029491086634004594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (1 / (A010121 n : ℚ))

end

end A214392.P12029491086634004594

namespace A214392

/-- `n*1/A010121(n)` -/
def P12029491086634004594.Spec : Prop :=
  ∀ n, P12029491086634004594.a n = (A214392 n : ℚ)

end A214392

/-! ## A214392.P4171015397125299431

`gcd(2*n, A255347(n))`
-/

namespace A214392.P4171015397125299431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A255347 n)

end

end A214392.P4171015397125299431

namespace A214392

/-- `gcd(2*n, A255347(n))` -/
def P4171015397125299431.Spec : Prop :=
  ∀ n, (P4171015397125299431.a n : ℤ) = A214392 n

end A214392

/-! ## A214392.P17384186605053353316

`sqrt(n²/A010153(n))`
-/

namespace A214392.P17384186605053353316
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n ^ 2 : ℚ) / (A010153 n : ℚ) : ℝ)

end

end A214392.P17384186605053353316

namespace A214392

/-- `sqrt(n²/A010153(n))` -/
def P17384186605053353316.Spec : Prop :=
  ∀ n, P17384186605053353316.a n = (A214392 n : ℝ)

end A214392

/-! ## A214392.P11419061350369455156

`n*(1/A164117(n))²`
-/

namespace A214392.P11419061350369455156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (1 / (A164117 n : ℚ)) ^ 2

end

end A214392.P11419061350369455156

namespace A214392

/-- `n*(1/A164117(n))²` -/
def P11419061350369455156.Spec : Prop :=
  ∀ n, P11419061350369455156.a n = (A214392 n : ℚ)

end A214392

/-! ## A214392.P14617214832015614991

`A077814(n)+A030065(n)`
-/

namespace A214392.P14617214832015614991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 n + A030065 n

end

end A214392.P14617214832015614991

namespace A214392

/-- `A077814(n)+A030065(n)` -/
def P14617214832015614991.Spec : Prop :=
  ∀ n, P14617214832015614991.a n = A214392 n

end A214392

/-! ## A214392.P14287207943384311395

`A188134(n)%A008486(n)`
-/

namespace A214392.P14287207943384311395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188134 n) (A008486 n)

end

end A214392.P14287207943384311395

namespace A214392

/-- `A188134(n)%A008486(n)` -/
def P14287207943384311395.Spec : Prop :=
  ∀ n, P14287207943384311395.a n = A214392 n

end A214392

/-! ## A214392.P9752008601643233089

`A317323(n)%A310704(n)`
-/

namespace A214392.P9752008601643233089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317323 n) (A310704 n)

end

end A214392.P9752008601643233089

namespace A214392

/-- `A317323(n)%A310704(n)` -/
def P9752008601643233089.Spec : Prop :=
  ∀ n, P9752008601643233089.a n = A214392 n

end A214392

/-! ## A214392.P7089258673426746199

`gcd(A001095(n), A093566(n))`
-/

namespace A214392.P7089258673426746199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001095 n) (A093566 n)

end

end A214392.P7089258673426746199

namespace A214392

/-- `gcd(A001095(n), A093566(n))` -/
def P7089258673426746199.Spec : Prop :=
  ∀ n, (P7089258673426746199.a n : ℤ) = A214392 n

end A214392

/-! ## A214392.P7032175041162729549

`gcd(A014106(n), A191567(n))`
-/

namespace A214392.P7032175041162729549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014106 n) (A191567 n)

end

end A214392.P7032175041162729549

namespace A214392

/-- `gcd(A014106(n), A191567(n))` -/
def P7032175041162729549.Spec : Prop :=
  ∀ n, (P7032175041162729549.a n : ℤ) = A214392 n

end A214392

/-! ## A214392.P15888017852593434555

`gcd(A000567(n), A255563(n))`
-/

namespace A214392.P15888017852593434555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000567 n) (A255563 n)

end

end A214392.P15888017852593434555

namespace A214392

/-- `gcd(A000567(n), A255563(n))` -/
def P15888017852593434555.Spec : Prop :=
  ∀ n, (P15888017852593434555.a n : ℤ) = A214392 n

end A214392

/-! ## A214392.P11012862709750778280

`gcd(A065599(n), A316631(n))`
-/

namespace A214392.P11012862709750778280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065599 n) (A316631 n)

end

end A214392.P11012862709750778280

namespace A214392

/-- `gcd(A065599(n), A316631(n))` -/
def P11012862709750778280.Spec : Prop :=
  ∀ n, (P11012862709750778280.a n : ℤ) = A214392 n

end A214392

/-! ## A214392.P10980464192195917155

`A047379(n+1)-A028390(n)`
-/

namespace A214392.P10980464192195917155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047379 (n + 1) - A028390 n

end

end A214392.P10980464192195917155

namespace A214392

/-- `A047379(n+1)-A028390(n)` -/
def P10980464192195917155.Spec : Prop :=
  ∀ n, P10980464192195917155.a n = A214392 n

end A214392

/-! ## A214392.P3566603271223552767

`A249354(n)%A047411(n+1)`
-/

namespace A214392.P3566603271223552767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249354 n) (A047411 (n + 1))

end

end A214392.P3566603271223552767

namespace A214392

/-- `A249354(n)%A047411(n+1)` -/
def P3566603271223552767.Spec : Prop :=
  ∀ n, P3566603271223552767.a n = A214392 n

end A214392

/-! ## A214392.P3353785665721750480

`A026741(2*n/A177002(n+2))`
-/

namespace A214392.P3353785665721750480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((2 * n : ℚ) / (A177002 (n + 2) : ℚ))).toNat

end

end A214392.P3353785665721750480

namespace A214392

/-- `A026741(2*n/A177002(n+2))` -/
def P3353785665721750480.Spec : Prop :=
  ∀ n, P3353785665721750480.a n = A214392 n

end A214392

/-!
# A214393: Numbers of the form (4k+3)^2+4 or (4k+5)^2-8.

The programs for A214393, the canonical program `A214393.P6929107440291149389` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214393 has offset 0).

The definition of A214393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214393.P6929107440291149389

`4*n*(n+3)+6*(-1)^n+7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214393

/-- `4*n*(n+3)+6*(-1)^n+7` -/
def P6929107440291149389.Spec : Prop :=
  ∀ n, P6929107440291149389.a n = A214393 n

theorem P6929107440291149389.correct : P6929107440291149389.Spec := by
  intro n
  simp only [A214393]

end A214393

/-! ## A214393.P10301666689465652137

`xor(7, 2*A296911(n+1))`
-/

namespace A214393.P10301666689465652137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (2 * A296911 (n + 1))

end

end A214393.P10301666689465652137

namespace A214393

/-- `xor(7, 2*A296911(n+1))` -/
def P10301666689465652137.Spec : Prop :=
  ∀ n, P10301666689465652137.a n = A214393 n

end A214393

/-! ## A214393.P12046437821985683502

`or(1, 4*(A142717(n+1)-n))`
-/

namespace A214393.P12046437821985683502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (4 * (A142717 (n + 1) - (n : ℤ)))

end

end A214393.P12046437821985683502

namespace A214393

/-- `or(1, 4*(A142717(n+1)-n))` -/
def P12046437821985683502.Spec : Prop :=
  ∀ n, P12046437821985683502.a n = A214393 n

end A214393

/-! ## A214393.P2210741799382043434

`record[xor(4, A241747(n))]`
-/

namespace A214393.P2210741799382043434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A241747 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214393.P2210741799382043434

namespace A214393

/-- `record[xor(4, A241747(n))]` -/
def P2210741799382043434.Spec : Prop :=
  ∀ n, P2210741799382043434.a n = A214393 n

end A214393

/-! ## A214393.P7484759205862900606

`record[xor(5, 2*A151890(A185869(n+1)))]`
-/

namespace A214393.P7484759205862900606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (2 * A151890 (A185869 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214393.P7484759205862900606

namespace A214393

/-- `record[xor(5, 2*A151890(A185869(n+1)))]` -/
def P7484759205862900606.Spec : Prop :=
  ∀ n, P7484759205862900606.a n = A214393 n

end A214393

/-! ## A214393.P3368304965582957789

`A004766(A142717(n+1)-n)`
-/

namespace A214393.P3368304965582957789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (A142717 (n + 1) - (n : ℤ)).toNat

end

end A214393.P3368304965582957789

namespace A214393

/-- `A004766(A142717(n+1)-n)` -/
def P3368304965582957789.Spec : Prop :=
  ∀ n, P3368304965582957789.a n = A214393 n

end A214393

/-! ## A214393.P13023060512934486333

`A016813(A142717(n+1)-n)`
-/

namespace A214393.P13023060512934486333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A142717 (n + 1) - (n : ℤ)).toNat

end

end A214393.P13023060512934486333

namespace A214393

/-- `A016813(A142717(n+1)-n)` -/
def P13023060512934486333.Spec : Prop :=
  ∀ n, P13023060512934486333.a n = A214393 n

end A214393

/-! ## A214393.P3331393004079074522

`A016813(A214345(n)-(n+2))`
-/

namespace A214393.P3331393004079074522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A214345 n - (n + 2 : ℤ)).toNat

end

end A214393.P3331393004079074522

namespace A214393

/-- `A016813(A214345(n)-(n+2))` -/
def P3331393004079074522.Spec : Prop :=
  ∀ n, P3331393004079074522.a n = A214393 n

end A214393

/-! ## A214393.P2211065330517014095

`A016813(A214345(n)-2-n)`
-/

namespace A214393.P2211065330517014095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A214345 n - 2 - (n : ℤ)).toNat

end

end A214393.P2211065330517014095

namespace A214393

/-- `A016813(A214345(n)-2-n)` -/
def P2211065330517014095.Spec : Prop :=
  ∀ n, P2211065330517014095.a n = A214393 n

end A214393

/-!
# A214394: If n mod 6 = 0 then n/6 else n.

The programs for A214394, the canonical program `A214394.P367401923476624189` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214394 has offset 0).

The definition of A214394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214394.P367401923476624189

`n/gcd(n, or(1, n+2))!`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214394

/-- `n/gcd(n, or(1, n+2))!` -/
def P367401923476624189.Spec : Prop :=
  ∀ n, P367401923476624189.a n = (A214394 n : ℚ)

end A214394

/-! ## A214394.P12766728086161602792

`n/gcd(n+3, xor(1, n+1))!`
-/

namespace A214394.P12766728086161602792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial (Nat.gcd (n + 3) (Nat.xor 1 (n + 1))) : ℚ)

end

end A214394.P12766728086161602792

namespace A214394

/-- `n/gcd(n+3, xor(1, n+1))!` -/
def P12766728086161602792.Spec : Prop :=
  ∀ n, P12766728086161602792.a n = (A214394 n : ℚ)

end A214394

/-! ## A214394.P6920003168004970929

`n/A164549(C(n, lcm(6, n)))`
-/

namespace A214394.P6920003168004970929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A164549 (Nat.choose n (Nat.lcm 6 n)) : ℚ)

end

end A214394.P6920003168004970929

namespace A214394

/-- `n/A164549(C(n, lcm(6, n)))` -/
def P6920003168004970929.Spec : Prop :=
  ∀ n, P6920003168004970929.a n = (A214394 n : ℚ)

end A214394

/-! ## A214394.P4629491545274163082

`n/gcd(3, A020639(n+3))!`
-/

namespace A214394.P4629491545274163082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial (Int.gcd 3 (A020639 (n + 3))) : ℚ)

end

end A214394.P4629491545274163082

namespace A214394

/-- `n/gcd(3, A020639(n+3))!` -/
def P4629491545274163082.Spec : Prop :=
  ∀ n, P4629491545274163082.a n = (A214394 n : ℚ)

end A214394

/-! ## A214394.P12503842649109193150

`n/A055976(A020639(n+3)+1)!`
-/

namespace A214394.P12503842649109193150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial (A055976 (A020639 (n + 3) + 1).toNat).toNat : ℚ)

end

end A214394.P12503842649109193150

namespace A214394

/-- `n/A055976(A020639(n+3)+1)!` -/
def P12503842649109193150.Spec : Prop :=
  ∀ n, P12503842649109193150.a n = (A214394 n : ℚ)

end A214394

/-! ## A214394.P9341678998028343040

`n/A010122(A293292(A391164(n+1)))`
-/

namespace A214394.P9341678998028343040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A010122 (A293292 (A391164 (n + 1)).toNat).toNat : ℚ)

end

end A214394.P9341678998028343040

namespace A214394

/-- `n/A010122(A293292(A391164(n+1)))` -/
def P9341678998028343040.Spec : Prop :=
  ∀ n, P9341678998028343040.a n = (A214394 n : ℚ)

end A214394

/-!
# A214395: Decimal expansion of 16/27.

The programs for A214395, the canonical program `A214395.P9654829491974510543` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214395 has offset 0).

The definition of A214395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214395.P9654829491974510543

`a(n-3)` with `a(0)=5, a(1)=9, a(2)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214395

/-- `a(n-3)` -/
def P9654829491974510543.Spec : Prop :=
  ∀ n, (P9654829491974510543.a n : ℤ) = A214395 n

theorem P9654829491974510543.correct : P9654829491974510543.Spec := by
  intro n
  simp only [A214395]

end A214395

/-!
# A214398: Triangle where the g.f. of column k is 1/(1-x)^(k^2) for k>=1, as read by rows n>=1.

The programs for A214398, the canonical program `A214398.P18344074257619641285` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214398 has offset 1).

The definition of A214398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214398.P18344074257619641285

`C(A185910(n+1)-1, A025581(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A214398

/-- `C(A185910(n+1)-1, A025581(n))` -/
def P18344074257619641285.Spec : Prop :=
  ∀ n, (P18344074257619641285.a n : ℤ) = A214398 (n + 1)

theorem P18344074257619641285.correct : P18344074257619641285.Spec := by
  intro n
  simp only [A214398, Nat.add_sub_cancel]

end A214398

/-! ## A214398.P1813876252542678468

`C(A185910(A122797(n+1)), A025581(n))`
-/

namespace A214398.P1813876252542678468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A185910 (A122797 (n + 1)).toNat).toNat (A025581 n).toNat

end

end A214398.P1813876252542678468

namespace A214398

/-- `C(A185910(A122797(n+1)), A025581(n))` -/
def P1813876252542678468.Spec : Prop :=
  ∀ n, (P1813876252542678468.a n : ℤ) = A214398 (n + 1)

end A214398

/-! ## A214398.P5612504499298978370

`A090981(n)-A326453(A097712(n))`
-/

namespace A214398.P5612504499298978370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090981 n - A326453 (A097712 n).toNat

end

end A214398.P5612504499298978370

namespace A214398

/-- `A090981(n)-A326453(A097712(n))` -/
def P5612504499298978370.Spec : Prop :=
  ∀ n, P5612504499298978370.a n = A214398 (n + 1)

end A214398

