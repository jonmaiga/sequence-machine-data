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
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A232700: Number of labeled connected point-determining bipartite graphs on n vertices.

The programs for A232700, there is no canonical definition to state claims against.
-/

/-! ## A232700.P10771772389832459548

`A076600(∑[∑[A258017(2*(n+1))]])`
-/

namespace A232700.P10771772389832459548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258017 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076600 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A232700.P10771772389832459548

/-! ## A232700.P6952502189654666144

`A362221(A362263(n))*A362244(n)`
-/

namespace A232700.P6952502189654666144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362221 (A362263 n).toNat * A362244 n

end

end A232700.P6952502189654666144

/-!
# A232701: a(n) = (2*n-1)!! mod n!, where double factorial is A006882.

The programs for A232701, there is no canonical definition to state claims against.
-/

/-! ## A232701.P12340266637379128520

`∏[Δ[n²]]%∏[n+1]`
-/

namespace A232701.P12340266637379128520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) ((∏ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A232701.P12340266637379128520

/-! ## A232701.P16886598002100328515

`abs(∏[-(2*n+1)]%(n+1)!)`
-/

namespace A232701.P16886598002100328515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (Nat.factorial (n + 1) : ℤ)|

end

end A232701.P16886598002100328515

/-! ## A232701.P10729985664499808744

`abs(A001147(n+1)%A133942(n+1))`
-/

namespace A232701.P10729985664499808744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A001147 (n + 1)) (A133942 (n + 1))|

end

end A232701.P10729985664499808744

/-! ## A232701.P11973037816324965562

`record[A001147(n)%∑{digits}[n, #!]]`
-/

namespace A232701.P11973037816324965562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001147 n) ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232701.P11973037816324965562

/-! ## A232701.P16268860613173362255

`record[A001147(n)%A061602(n)]`
-/

namespace A232701.P16268860613173362255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001147 n) (A061602 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232701.P16268860613173362255

/-!
# A232702: a(n) = sigma(2*m)/m, where m = A227302(n).

The programs for A232702, there is no canonical definition to state claims against.
-/

/-! ## A232702.P6260776113486261744

`∑{d}[A246454(n+2), 2/#]`
-/

namespace A232702.P6260776113486261744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246454 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, 2 / (d : ℚ)

end

end A232702.P6260776113486261744

/-! ## A232702.P6250053572955975431

`A000203(A246454(n+2))/A227302(n+1)`
-/

namespace A232702.P6250053572955975431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A246454 (n + 2)).toNat : ℚ) / (A227302 (n + 1) : ℚ)

end

end A232702.P6250053572955975431

/-! ## A232702.P2260240604907444299

`A001222(A005843(n+2)*A237816(n+1))`
-/

namespace A232702.P2260240604907444299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005843 (n + 2) * A237816 (n + 1)).toNat

end

end A232702.P2260240604907444299

/-!
# A232705: Number of Gaussian integers z satisfying (n-1)/2 < |z| < n/2.

The programs for A232705, there is no canonical definition to state claims against.
-/

/-! ## A232705.P15776519143157615241

`Δ[A053411(n)-A349538(A004526(n))]`
-/

namespace A232705.P15776519143157615241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 n - A349538 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232705.P15776519143157615241

/-! ## A232705.P16840978645816685021

`A053456(n+1)-A053411(n)`
-/

namespace A232705.P16840978645816685021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (n + 1) - A053411 n

end

end A232705.P16840978645816685021

/-! ## A232705.P12409319146202165754

`A053456(A000027(n+1))%A053411(n)`
-/

namespace A232705.P12409319146202165754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053456 (A000027 (n + 1)).toNat) (A053411 n)

end

end A232705.P12409319146202165754

/-! ## A232705.P5977244441844621347

`A053456(A005408(n)-n)%A053411(n)`
-/

namespace A232705.P5977244441844621347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053456 (A005408 n - (n : ℤ)).toNat) (A053411 n)

end

end A232705.P5977244441844621347

/-! ## A232705.P6577953734566072368

`A053456(n+1)%A053411(n%A003215(n))`
-/

namespace A232705.P6577953734566072368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053456 (n + 1)) (A053411 (Int.tmod (n : ℤ) (A003215 n)).toNat)

end

end A232705.P6577953734566072368

/-! ## A232705.P14085889694254834732

`A053456(A110514(2*n))%A053411(n)`
-/

namespace A232705.P14085889694254834732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053456 (A110514 (2 * n)).toNat) (A053411 n)

end

end A232705.P14085889694254834732

/-! ## A232705.P7056696384268883261

`Δ[A053456(n)]-A004531(A001105(n))`
-/

namespace A232705.P7056696384268883261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A004531 (A001105 n).toNat

end

end A232705.P7056696384268883261

/-!
# A232706: Number of (n+1)X(1+1) 0..3 arrays x(i,j) with row sums sum{j^2*x(i,j), j=1..1+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A232706, there is no canonical definition to state claims against.
-/

/-! ## A232706.P17173602904166742400

`A232708(∑[n]+1)`
-/

namespace A232706.P17173602904166742400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232708 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232706.P17173602904166742400

/-! ## A232706.P2856941779168565388

`record[A010054(n)*A232708(n+1)]`
-/

namespace A232706.P2856941779168565388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232706.P2856941779168565388

/-! ## A232706.P7559324900680766631

`record[A033806(n)*A232708(n+1)]`
-/

namespace A232706.P7559324900680766631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033806 n * A232708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232706.P7559324900680766631

/-! ## A232706.P12508561451975463774

`record[A155170(n)*A232708(n+1)]`
-/

namespace A232706.P12508561451975463774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155170 n * A232708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232706.P12508561451975463774

/-!
# A232707: Number of (n+1)X(2+1) 0..3 arrays x(i,j) with row sums sum{j^2*x(i,j), j=1..2+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A232707, there is no canonical definition to state claims against.
-/

/-! ## A232707.P10763504936568782792

`A232708(∑[n+1]+2)`
-/

namespace A232707.P10763504936568782792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232708 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232707.P10763504936568782792

/-! ## A232707.P11116571502844880024

`record[A010054(n)*A232708(n+2)]`
-/

namespace A232707.P11116571502844880024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232708 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232707.P11116571502844880024

/-! ## A232707.P2517903622030578095

`record[A033806(n)*A232708(n+2)]`
-/

namespace A232707.P2517903622030578095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033806 n * A232708 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232707.P2517903622030578095

/-!
# A232709: Nonnegative integers such that the sum of digits mod 10 equals the product of digits mod 10.

The programs for A232709, the canonical program `A232709.P8146322751901021874` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232709 has offset 1).

The definition of A232709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232709.P15912112718112321249

`eq[A053837(n), A371281(n)]`
-/

namespace A232709.P15912112718112321249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232709.P15912112718112321249

namespace A232709

/-- `eq[A053837(n), A371281(n)]` -/
def P15912112718112321249.Spec : Prop :=
  ∀ n, (P15912112718112321249.a n : ℤ) = A232709 (n + 1)

end A232709

/-! ## A232709.P8146322751901021874

`eq[A010879(A007954(n)), A053837(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A232709

/-- `eq[A010879(A007954(n)), A053837(n)]` -/
def P8146322751901021874.Spec : Prop :=
  ∀ n, (P8146322751901021874.a n : ℤ) = A232709 (n + 1)

theorem P8146322751901021874.correct : P8146322751901021874.Spec := by
  intro n
  simp only [A232709, Nat.add_sub_cancel]

end A232709

/-! ## A232709.P17720982073054565559

`A127288(2^∑{digits}[n, #%C(n, #)]*comp[98-11*n])`
-/

namespace A232709.P17720982073054565559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  98 - (11 * n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

end

end A232709.P17720982073054565559

namespace A232709

/-- `A127288(2^∑{digits}[n, #%C(n, #)]*comp[98-11*n])` -/
def P17720982073054565559.Spec : Prop :=
  ∀ n, P17720982073054565559.a n = A232709 (n + 1)

end A232709

/-! ## A232709.P8326645888086077951

`A175427(A095204(n+1))`
-/

namespace A232709.P8326645888086077951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A095204 (n + 1)).toNat

end

end A232709.P8326645888086077951

namespace A232709

/-- `A175427(A095204(n+1))` -/
def P8326645888086077951.Spec : Prop :=
  ∀ n, P8326645888086077951.a n = A232709 (n + 1)

end A232709

/-! ## A232709.P7979955387102307977

`A175427(A095205(n+1))`
-/

namespace A232709.P7979955387102307977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A095205 (n + 1)).toNat

end

end A232709.P7979955387102307977

namespace A232709

/-- `A175427(A095205(n+1))` -/
def P7979955387102307977.Spec : Prop :=
  ∀ n, P7979955387102307977.a n = A232709 (n + 1)

end A232709

/-!
# A232710: Binary numbers (written in decimal) such that the sum of digits mod 2 equals the product of digits mod 2.

The programs for A232710, there is no canonical definition to state claims against.
-/

/-! ## A232710.P11635165294699432882

`lt[0, 1-a(and(n, n-1)/2)]` with `a(0)=1, a(1)=1`
-/

namespace A232710.P11635165294699432882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  1 - f2 (SequenceMachineLib.roundAway ((Int.land (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A232710.P11635165294699432882

/-! ## A232710.P11693378064995411367

`lt[(A267447(n)+1)%3, 2]`
-/

namespace A232710.P11693378064995411367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267447 n + 1) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A232710.P11693378064995411367

/-! ## A232710.P12811377372282833256

`comp[A153151(comp[xor(n, 2*n)]+1)]`
-/

namespace A232710.P12811377372282833256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A232710.P12811377372282833256

/-! ## A232710.P7220981610409833782

`lt[A065620(2^floor(log2(n+1))+n), 2]`
-/

namespace A232710.P7220981610409833782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (2 ^ Nat.log 2 (n + 1) + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A232710.P7220981610409833782

/-! ## A232710.P6540011003523653986

`eq[(a(floor(n/2))+n)%2, A036987(n)]` with `a(0)=1, a(1)=1`
-/

namespace A232710.P6540011003523653986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (f1 ⌊(n : ℚ) / 2⌋.toNat + n) % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232710.P6540011003523653986

/-! ## A232710.P12097391024885564487

`eq[0, A052344(A071051(n))]`
-/

namespace A232710.P12097391024885564487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (A071051 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232710.P12097391024885564487

/-! ## A232710.P13661957352080669066

`eq[0, A010060(A266341(n))]`
-/

namespace A232710.P13661957352080669066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A266341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232710.P13661957352080669066

/-! ## A232710.P15149814924389274424

`lt[0, A010892(A073138(n))]`
-/

namespace A232710.P15149814924389274424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A073138 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A232710.P15149814924389274424

/-! ## A232710.P2306135286739540834

`eq[A010059(n), A267442(n)]`
-/

namespace A232710.P2306135286739540834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232710.P2306135286739540834

/-! ## A232710.P4468596625076219096

`eq[A006530(n+1)%2, A010059(n)]`
-/

namespace A232710.P4468596625076219096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232710.P4468596625076219096

/-!
# A232711: Conjectured list of numbers whose trajectory under the '5x+1' map eventually reaches 1.

The programs for A232711, there is no canonical definition to state claims against.
-/

/-! ## A232711.P7421430792307264311

`eq[2, A104361(3*(n+1)/2^val(n+1, 2))]+1`
-/

namespace A232711.P7421430792307264311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104361 (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A232711.P7421430792307264311

/-! ## A232711.P13031345396764046394

`eq[A057427(n), A227532(A073711(n))]`
-/

namespace A232711.P13031345396764046394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227532 (A073711 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232711.P13031345396764046394

/-! ## A232711.P586234515860536191

`eq[A178334(n), A227532(A073711(n))]`
-/

namespace A232711.P586234515860536191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227532 (A073711 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232711.P586234515860536191

/-! ## A232711.P3905170282207311117

`eq[A130273(A277326(n)), A279060(n)]`
-/

namespace A232711.P3905170282207311117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130273 (A277326 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232711.P3905170282207311117

/-! ## A232711.P8174626536827817244

`lt[A227532(A073711(n)), A141256(n)]`
-/

namespace A232711.P8174626536827817244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227532 (A073711 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A232711.P8174626536827817244

/-!
# A232713: Doubly pentagonal numbers: a(n) = n*(3*n-2)*(3*n-1)*(3*n+1)/8.

The programs for A232713, the canonical program `A232713.P1710541369932287910` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232713 has offset 0).

The definition of A232713 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n-2)*(3*n-1)*(3*n+1)/8` (program `A232713.P1019158150011631127`, by `A232713.P1019158150011631127.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A232713.P1019158150011631127

`n*(3*n-2)*(3*n-1)*(3*n+1)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A232713.P1019158150011631127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((3 * n : ℤ) - 2 : ℚ) * (((3 * n : ℤ) - 1 : ℚ) * ((3 * n + 1 : ℚ) / 8)))

end

end A232713.P1019158150011631127

namespace A232713

/-- `n*(3*n-2)*(3*n-1)*(3*n+1)/8` -/
def P1019158150011631127.Spec : Prop :=
  ∀ n, P1019158150011631127.a n = (A232713 n : ℚ)

theorem P1019158150011631127.correct : P1019158150011631127.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A232713, Nat.add_sub_cancel, A232713.P1019158150011631127.a, A232713.P1710541369932287910.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A232713, Nat.add_sub_cancel, A232713.P1019158150011631127.a, A232713.P1710541369932287910.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A232713

/-! ## A232713.P1710541369932287910

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=35, a(3)=210, a(4)=715`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A232713

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1710541369932287910.Spec : Prop :=
  ∀ n, P1710541369932287910.a n = A232713 n

theorem P1710541369932287910.correct : P1710541369932287910.Spec := by
  intro n
  simp only [A232713]

end A232713

/-! ## A232713.P9726387141999767350

`A000332(3*n+1)`
-/

namespace A232713.P9726387141999767350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (3 * n + 1)

end

end A232713.P9726387141999767350

namespace A232713

/-- `A000332(3*n+1)` -/
def P9726387141999767350.Spec : Prop :=
  ∀ n, P9726387141999767350.a n = A232713 n

end A232713

/-! ## A232713.P17375796872315237341

`A000326(A000326(n))`
-/

namespace A232713.P17375796872315237341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A000326 n).toNat

end

end A232713.P17375796872315237341

namespace A232713

/-- `A000326(A000326(n))` -/
def P17375796872315237341.Spec : Prop :=
  ∀ n, P17375796872315237341.a n = A232713 n

end A232713

/-! ## A232713.P11199098603800855783

`C(3*n+1, 4)`
-/

namespace A232713.P11199098603800855783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n + 1) 4

end

end A232713.P11199098603800855783

namespace A232713

/-- `C(3*n+1, 4)` -/
def P11199098603800855783.Spec : Prop :=
  ∀ n, (P11199098603800855783.a n : ℤ) = A232713 n

end A232713

/-! ## A232713.P11663784068197835606

`C(C(3*n, 2), 2)/3`
-/

namespace A232713.P11663784068197835606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.choose (3 * n) 2) 2 : ℚ) / 3

end

end A232713.P11663784068197835606

namespace A232713

/-- `C(C(3*n, 2), 2)/3` -/
def P11663784068197835606.Spec : Prop :=
  ∀ n, P11663784068197835606.a n = (A232713 n : ℚ)

end A232713

/-! ## A232713.P13947067234667019017

`A145920(A004277(n))`
-/

namespace A232713.P13947067234667019017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145920 (A004277 n).toNat

end

end A232713.P13947067234667019017

namespace A232713

/-- `A145920(A004277(n))` -/
def P13947067234667019017.Spec : Prop :=
  ∀ n, P13947067234667019017.a n = A232713 n

end A232713

/-! ## A232713.P3761845598877811023

`A145920(A004275(n+1))`
-/

namespace A232713.P3761845598877811023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145920 (A004275 (n + 1)).toNat

end

end A232713.P3761845598877811023

namespace A232713

/-- `A145920(A004275(n+1))` -/
def P3761845598877811023.Spec : Prop :=
  ∀ n, P3761845598877811023.a n = A232713 n

end A232713

/-! ## A232713.P14945066417786819143

`record[C(A266285(n), 4)]`
-/

namespace A232713.P14945066417786819143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A266285 n).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232713.P14945066417786819143

namespace A232713

/-- `record[C(A266285(n), 4)]` -/
def P14945066417786819143.Spec : Prop :=
  ∀ n, (P14945066417786819143.a n : ℤ) = A232713 n

end A232713

/-! ## A232713.P3588102997521266493

`record[C(A123684(n+1), 4)]`
-/

namespace A232713.P3588102997521266493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A123684 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232713.P3588102997521266493

namespace A232713

/-- `record[C(A123684(n+1), 4)]` -/
def P3588102997521266493.Spec : Prop :=
  ∀ n, (P3588102997521266493.a n : ℤ) = A232713 n

end A232713

/-! ## A232713.P4012229443999267770

`record[C(A225126(n+1), 4)]`
-/

namespace A232713.P4012229443999267770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A225126 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232713.P4012229443999267770

namespace A232713

/-- `record[C(A225126(n+1), 4)]` -/
def P4012229443999267770.Spec : Prop :=
  ∀ n, (P4012229443999267770.a n : ℤ) = A232713 n

end A232713

/-! ## A232713.P4305255962368315445

`A050534(3*n)/3`
-/

namespace A232713.P4305255962368315445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050534 (3 * n) : ℚ) / 3

end

end A232713.P4305255962368315445

namespace A232713

/-- `A050534(3*n)/3` -/
def P4305255962368315445.Spec : Prop :=
  ∀ n, P4305255962368315445.a n = (A232713 n : ℚ)

end A232713

/-! ## A232713.P14898854464719883750

`A101338(3*n)-A000125(3*n)`
-/

namespace A232713.P14898854464719883750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101338 (3 * n) - A000125 (3 * n)

end

end A232713.P14898854464719883750

namespace A232713

/-- `A101338(3*n)-A000125(3*n)` -/
def P14898854464719883750.Spec : Prop :=
  ∀ n, P14898854464719883750.a n = A232713 n

end A232713

/-! ## A232713.P102717255171470850

`A052762(3*n+1)/24`
-/

namespace A232713.P102717255171470850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052762 (3 * n + 1) : ℚ) / 24

end

end A232713.P102717255171470850

namespace A232713

/-- `A052762(3*n+1)/24` -/
def P102717255171470850.Spec : Prop :=
  ∀ n, P102717255171470850.a n = (A232713 n : ℚ)

end A232713

/-! ## A232713.P1492780676143568618

`A034827(A016777(n))/2`
-/

namespace A232713.P1492780676143568618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034827 (A016777 n).toNat : ℚ) / 2

end

end A232713.P1492780676143568618

namespace A232713

/-- `A034827(A016777(n))/2` -/
def P1492780676143568618.Spec : Prop :=
  ∀ n, P1492780676143568618.a n = (A232713 n : ℚ)

end A232713

/-!
# A232714: Expansion of f(-x, -x^6) in powers of x where f is Ramanujan's two-variable theta function.

The programs for A232714, there is no canonical definition to state claims against.
-/

/-! ## A232714.P1627840564239420185

`A287325(2*n+∑[n+4]+11)`
-/

namespace A232714.P1627840564239420185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287325 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 11))

end

end A232714.P1627840564239420185

/-! ## A232714.P2793160257465466243

`A244525(lt[A244517(n+1), A244500(2*n+1)])`
-/

namespace A232714.P2793160257465466243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244500 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244525 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A232714.P2793160257465466243

/-! ## A232714.P5285525721420463848

`A008683(A274179(n)+A049598(3*n))`
-/

namespace A232714.P5285525721420463848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A274179 n + A049598 (3 * n)).toNat

end

end A232714.P5285525721420463848

/-! ## A232714.P6159847826040523520

`A008683(or(A049598(3*n), A274179(n)))`
-/

namespace A232714.P6159847826040523520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor (A049598 (3 * n)) (A274179 n)).toNat

end

end A232714.P6159847826040523520

/-! ## A232714.P453414522594909625

`A010815(A073202(2*n+3))*A274179(n)`
-/

namespace A232714.P453414522594909625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A073202 (2 * n + 3)).toNat * A274179 n

end

end A232714.P453414522594909625

/-!
# A232719: Sum_{k=1,...,2n} (-1)^k binomial(8*n,4*k).

The programs for A232719, there is no canonical definition to state claims against.
-/

/-! ## A232719.P8394938736761799324

`A099586(Δ[(2*n+1)²])-1`
-/

namespace A232719.P8394938736761799324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099586 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A232719.P8394938736761799324

/-!
# A232720: Numbers such that 2*phi(n-2) = n-1.

The programs for A232720, there is no canonical definition to state claims against.
-/

/-! ## A232720.P15316600491624242411

`A050474(n+1)+2`
-/

namespace A232720.P15316600491624242411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050474 (n + 1) + 2

end

end A232720.P15316600491624242411

/-! ## A232720.P11583623275028626867

`or(1, A203966(n+2)+1)`
-/

namespace A232720.P11583623275028626867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A203966 (n + 2) + 1)

end

end A232720.P11583623275028626867

/-! ## A232720.P3333518974106004796

`record[xor(1, A203966(n+1)+1)]`
-/

namespace A232720.P3333518974106004796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A203966 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232720.P3333518974106004796

/-! ## A232720.P237212302917316384

`A203966(A304816(n))+2`
-/

namespace A232720.P237212302917316384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203966 (A304816 n).toNat + 2

end

end A232720.P237212302917316384

/-!
# A232721: Numbers not representable as the sum of two coprime nonprime numbers.

The programs for A232721, there is no canonical definition to state claims against.
-/

/-! ## A232721.P9993127783049963125

`eq[0, A185279(n+1)]+1`
-/

namespace A232721.P9993127783049963125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185279 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A232721.P9993127783049963125

/-! ## A232721.P18214426226665174541

`record[gcd(n+2, A185279(n+2))]`
-/

namespace A232721.P18214426226665174541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A185279 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232721.P18214426226665174541

/-! ## A232721.P1726892399657734319

`A062319(eq[0, A185279(n+1)])`
-/

namespace A232721.P1726892399657734319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232721.P1726892399657734319

/-! ## A232721.P17807066936145919274

`A062319(lt[A185279(n+1), 1])`
-/

namespace A232721.P17807066936145919274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185279 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062319 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A232721.P17807066936145919274

/-! ## A232721.P5292930293864963461

`∩[A299763(n+1), A096076(n)]`
-/

namespace A232721.P5292930293864963461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096076 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232721.P5292930293864963461

/-!
# A232722: Number of tilings of a 10 X 2n rectangle with 5n tetrominoes of any shape.

The programs for A232722, there is no canonical definition to state claims against.
-/

/-! ## A232722.P3164222876692935206

`A230031(eq[11, A140756(n+1)])`
-/

namespace A232722.P3164222876692935206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232722.P3164222876692935206

/-!
# A232723: Sequence (or tree) generated by these rules: 0 is in S, and if x is in S, then 2*x and 1 - x are in S, and duplicates are deleted as they occur.

The programs for A232723, there is no canonical definition to state claims against.
-/

/-! ## A232723.P4372622815281190367

`A014682(A227351(n))-A227351(n)`
-/

namespace A232723.P4372622815281190367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A227351 n).toNat - A227351 n

end

end A232723.P4372622815281190367

/-! ## A232723.P2309689634047355447

`A065620(A048679(n))`
-/

namespace A232723.P2309689634047355447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A048679 n).toNat

end

end A232723.P2309689634047355447

/-! ## A232723.P2544510677804228200

`A057428(n)*A104895(A048679(n))`
-/

namespace A232723.P2544510677804228200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A104895 (A048679 n).toNat

end

end A232723.P2544510677804228200

/-! ## A232723.P18028783869176364724

`-A104895(A048679(n)%A000124(n))`
-/

namespace A232723.P18028783869176364724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A104895 (Int.tmod (A048679 n) (A000124 n)).toNat

end

end A232723.P18028783869176364724

/-! ## A232723.P621204735925530785

`A104895(A048679(n))/A057428(n+1)`
-/

namespace A232723.P621204735925530785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104895 (A048679 n).toNat : ℚ) / (A057428 (n + 1) : ℚ)

end

end A232723.P621204735925530785

/-! ## A232723.P17577600823335835840

`A001057(A227351(n))`
-/

namespace A232723.P17577600823335835840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A227351 n).toNat

end

end A232723.P17577600823335835840

/-! ## A232723.P7123033548537790545

`A065620(∑{p}[A277006(n), A048675(#)])`
-/

namespace A232723.P7123033548537790545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p).toNat

end

end A232723.P7123033548537790545

/-! ## A232723.P8251814662309914408

`A065620(∑{p}[A277006(n), A087207(#)])`
-/

namespace A232723.P8251814662309914408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p).toNat

end

end A232723.P8251814662309914408

/-!
# A232724: Numbers k satisfying g(k - g(k)) > g(k) = greatest prime divisor of k.

The programs for A232724, there is no canonical definition to state claims against.
-/

/-! ## A232724.P2781029058565993400

`A356441(comp[A250120(3*n+1)-A033996(n)])`
-/

namespace A232724.P2781029058565993400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (3 * n + 1) - A033996 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356441 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A232724.P2781029058565993400

/-! ## A232724.P1851622129184637397

`record[A000010(6*A294574(n+1))]`
-/

namespace A232724.P1851622129184637397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (6 * A294574 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232724.P1851622129184637397

/-! ## A232724.P3828438644311939471

`lt[A340792(n+1), A323436(n)²]`
-/

namespace A232724.P3828438644311939471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A232724.P3828438644311939471

/-! ## A232724.P10018436856354311882

`∩[A064164(n+1), A340788(n+1)]`
-/

namespace A232724.P10018436856354311882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232724.P10018436856354311882

/-! ## A232724.P633167979528370303

`lt[A027383(A109375(n)), A011373(n)]`
-/

namespace A232724.P633167979528370303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (A109375 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A232724.P633167979528370303

/-!
# A232725: Numbers k such that the concatenation 123456789k is prime.

The programs for A232725, there is no canonical definition to state claims against.
-/

/-! ## A232725.P11462408429149192980

`(A280432(n+1)+19)%A226779(n+1)`
-/

namespace A232725.P11462408429149192980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280432 (n + 1) + 19) (A226779 (n + 1))

end

end A232725.P11462408429149192980

/-!
# A232726: Primes p such that the concatenation 123456789p is prime.

The programs for A232726, there is no canonical definition to state claims against.
-/

/-! ## A232726.P4997998213274589749

`p?[A232725(n+1)]`
-/

namespace A232726.P4997998213274589749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232726.P4997998213274589749

/-! ## A232726.P2753256252547739742

`∩[A054723(n+1), A232725(n+1)]`
-/

namespace A232726.P2753256252547739742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P2753256252547739742

/-! ## A232726.P13843953758029334303

`∩[A065376(n+1), A232725(n+1)]`
-/

namespace A232726.P13843953758029334303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P13843953758029334303

/-! ## A232726.P9432902983426026663

`∩[A065396(n+1), A232725(n+1)]`
-/

namespace A232726.P9432902983426026663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P9432902983426026663

/-! ## A232726.P12579321479561621108

`∩[A071621(n+1), A232725(n+1)]`
-/

namespace A232726.P12579321479561621108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P12579321479561621108

/-! ## A232726.P7211510180053912765

`∩[A138837(n+1), A232725(n+1)]`
-/

namespace A232726.P7211510180053912765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P7211510180053912765

/-! ## A232726.P4879495435139912248

`∩[A000040(n+1), A232725(n+1)]`
-/

namespace A232726.P4879495435139912248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P4879495435139912248

/-! ## A232726.P17294658096599537668

`∩[A004139(n+1), A232725(n+1)]`
-/

namespace A232726.P17294658096599537668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P17294658096599537668

/-! ## A232726.P9807272263068979715

`∩[A045319(n+1), A232725(n+1)]`
-/

namespace A232726.P9807272263068979715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P9807272263068979715

/-! ## A232726.P16208066485067411907

`∩[A045344(n+1), A232725(n+1)]`
-/

namespace A232726.P16208066485067411907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P16208066485067411907

/-! ## A232726.P12294984443024208113

`∩[A051948(n+1), A232725(n+1)]`
-/

namespace A232726.P12294984443024208113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P12294984443024208113

/-! ## A232726.P3741763365728072097

`∩[A053813(n+1), A232725(n+1)]`
-/

namespace A232726.P3741763365728072097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P3741763365728072097

/-! ## A232726.P10240111695053695836

`∩[A064728(n+1), A232725(n+1)]`
-/

namespace A232726.P10240111695053695836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P10240111695053695836

/-! ## A232726.P5427344198691904076

`∩[A065091(n+1), A232725(n+1)]`
-/

namespace A232726.P5427344198691904076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P5427344198691904076

/-! ## A232726.P14541501262012053297

`∩[A066542(n+1), A232725(n+1)]`
-/

namespace A232726.P14541501262012053297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P14541501262012053297

/-! ## A232726.P18060893668126037142

`∩[A083249(n+1), A232725(n+1)]`
-/

namespace A232726.P18060893668126037142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P18060893668126037142

/-! ## A232726.P4766095451766674742

`∩[A140826(n+1), A232725(n+1)]`
-/

namespace A232726.P4766095451766674742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P4766095451766674742

/-! ## A232726.P10397965253550456385

`∩[A161346(n+1), A232725(n+1)]`
-/

namespace A232726.P10397965253550456385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P10397965253550456385

/-! ## A232726.P5693670659766362907

`∩[A162788(n+1), A232725(n+1)]`
-/

namespace A232726.P5693670659766362907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P5693670659766362907

/-! ## A232726.P4846465875592156051

`∩[A348283(n+1), A232725(n+1)]`
-/

namespace A232726.P4846465875592156051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232726.P4846465875592156051

/-!
# A232728: Primes p such that the concatenation p123456789 is prime.

The programs for A232728, there is no canonical definition to state claims against.
-/

/-! ## A232728.P4408516248208151710

`p?[A232727(n+1)]`
-/

namespace A232728.P4408516248208151710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232728.P4408516248208151710

/-! ## A232728.P3450886219527320925

`record[A020639(A232727(n+3))]`
-/

namespace A232728.P3450886219527320925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A232727 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232728.P3450886219527320925

/-! ## A232728.P4359031634478162591

`filter[A232727(n+1), A010051(#)]`
-/

namespace A232728.P4359031634478162591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A232728.P4359031634478162591

/-! ## A232728.P11689355017842368795

`∩[A000040(n+1), A232727(n+1)]`
-/

namespace A232728.P11689355017842368795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232728.P11689355017842368795

/-! ## A232728.P7830135470587896368

`∩[A004139(n+1), A232727(n+1)]`
-/

namespace A232728.P7830135470587896368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232728.P7830135470587896368

/-! ## A232728.P5503650815062493152

`∩[A006005(n+1), A232727(n+1)]`
-/

namespace A232728.P5503650815062493152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232728.P5503650815062493152

/-! ## A232728.P2718889258130614323

`∩[A008578(n+1), A232727(n+1)]`
-/

namespace A232728.P2718889258130614323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232728.P2718889258130614323

/-! ## A232728.P12166025145532700975

`∩[A033946(n+1), A232727(n+1)]`
-/

namespace A232728.P12166025145532700975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232728.P12166025145532700975

/-! ## A232728.P4036746944900853234

`∩[A042966(n+1), A232727(n+1)]`
-/

namespace A232728.P4036746944900853234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232728.P4036746944900853234

/-! ## A232728.P13422161013137126903

`∩[A042997(n+1), A232727(n+1)]`
-/

namespace A232728.P13422161013137126903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232728.P13422161013137126903

/-! ## A232728.P17197800627370282951

`∩[A045319(n+1), A232727(n+1)]`
-/

namespace A232728.P17197800627370282951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232728.P17197800627370282951

/-! ## A232728.P16089895006984135393

`∩[A045344(n+1), A232727(n+1)]`
-/

namespace A232728.P16089895006984135393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232728.P16089895006984135393

/-! ## A232728.P1701812137837882232

`∩[A046022(n+1), A232727(n+1)]`
-/

namespace A232728.P1701812137837882232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232728.P1701812137837882232

/-! ## A232728.P3742558759816258446

`∩[A049545(n+1), A232727(n+1)]`
-/

namespace A232728.P3742558759816258446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232728.P3742558759816258446

/-! ## A232728.P4483871171742745990

`∩[A049569(n+1), A232727(n+1)]`
-/

namespace A232728.P4483871171742745990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232728.P4483871171742745990

/-! ## A232728.P15470845861227027336

`∩[A051948(n+1), A232727(n+1)]`
-/

namespace A232728.P15470845861227027336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232728.P15470845861227027336

/-! ## A232728.P2828420978624051412

`∩[A062972(n+1), A232727(n+1)]`
-/

namespace A232728.P2828420978624051412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232728.P2828420978624051412

/-! ## A232728.P9158274497866193305

`∩[A064728(n+1), A232727(n+1)]`
-/

namespace A232728.P9158274497866193305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232728.P9158274497866193305

/-! ## A232728.P16425373883134525456

`∩[A065091(n+1), A232727(n+1)]`
-/

namespace A232728.P16425373883134525456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232728.P16425373883134525456

/-! ## A232728.P2208626571732068347

`∩[A065396(n+1), A232727(n+1)]`
-/

namespace A232728.P2208626571732068347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232728.P2208626571732068347

/-!
# A232729: Number of n-digit numbers that yield an n-digit number after Reverse and Add.

The programs for A232729, there is no canonical definition to state claims against.
-/

/-! ## A232729.P13282869162509160786

`∑[A232731(n+1)]-A002283(n)`
-/

namespace A232729.P13282869162509160786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002283 n

end

end A232729.P13282869162509160786

/-! ## A232729.P16982487237947477433

`Δ[A002283(n)]-A232730(n+1)`
-/

namespace A232729.P16982487237947477433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A232730 (n + 1)

end

end A232729.P16982487237947477433

/-! ## A232729.P6454048712716528093

`Δ[A011557(n)]-A232730(n+1)`
-/

namespace A232729.P6454048712716528093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A232730 (n + 1)

end

end A232729.P6454048712716528093

/-! ## A232729.P4333069470491332202

`Δ[A062397(n)]-A232730(n+1)`
-/

namespace A232729.P4333069470491332202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A232730 (n + 1)

end

end A232729.P4333069470491332202

/-! ## A232729.P4751632693009855263

`Δ[Δ[A002275(n)]]-A232730(n+1)`
-/

namespace A232729.P4751632693009855263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A232730 (n + 1)

end

end A232729.P4751632693009855263

/-!
# A232730: Number of n-digit numbers that yield an (n+1)-digit number after Reverse and Add.

The programs for A232730, there is no canonical definition to state claims against.
-/

/-! ## A232730.P9025377314410453049

`Δ[A002283(n)]-A232729(n+1)`
-/

namespace A232730.P9025377314410453049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A232729 (n + 1)

end

end A232730.P9025377314410453049

/-! ## A232730.P14940692795015764301

`Δ[A011557(n)]-A232729(n+1)`
-/

namespace A232730.P14940692795015764301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A232729 (n + 1)

end

end A232730.P14940692795015764301

/-! ## A232730.P11735929687762707828

`Δ[A062397(n)]-A232729(n+1)`
-/

namespace A232730.P11735929687762707828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A232729 (n + 1)

end

end A232730.P11735929687762707828

/-! ## A232730.P16956345788742123478

`∑[Δ[A002283(n)]-A232731(n+1)]`
-/

namespace A232730.P16956345788742123478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A232731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232730.P16956345788742123478

/-! ## A232730.P990420380117830160

`A232731(n+2)-A232729(n+2)`
-/

namespace A232730.P990420380117830160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232731 (n + 2) - A232729 (n + 2)

end

end A232730.P990420380117830160

/-!
# A232739: Iterates of Hofstadter's A030124: start with a(1) = A030124(1) = 2, thereafter a(n) = A030124(a(n-1)).

The programs for A232739, there is no canonical definition to state claims against.
-/

/-! ## A232739.P2732760903803506679

`A030124(a(n-1))` with `a(0)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A232739.P2732760903803506679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A030124 (a (n - 1)).toNat

end

end A232739.P2732760903803506679

/-! ## A232739.P3108533741574370396

`∑[∑[A232750(n)]]+1`
-/

namespace A232739.P3108533741574370396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232750 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A232739.P3108533741574370396

/-! ## A232739.P7632270379900981698

`∑[A254667(∑[A232750(n)])]`
-/

namespace A232739.P7632270379900981698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232750 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232739.P7632270379900981698

/-! ## A232739.P5047402648601217984

`∑[∑[A232750(n)]*A054977(n)]`
-/

namespace A232739.P5047402648601217984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232750 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232739.P5047402648601217984

/-! ## A232739.P3386802254785706838

`∑[∑[A232750(n*A069123(a(n-1)))]]` with `a(0)=2`
-/

namespace A232739.P3386802254785706838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A232750 ((n : ℤ) * A069123 (f2 (n - 1)).toNat).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232739.P3386802254785706838

/-! ## A232739.P11269100100579070791

`∑[∑[A232750(n)*A232750(a(n-1))]]` with `a(0)=2`
-/

namespace A232739.P11269100100579070791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A232750 n * A232750 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232739.P11269100100579070791

/-! ## A232739.P806116077293269039

`A061578(a(n-1))` with `a(0)=2`
-/

namespace A232739.P806116077293269039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A061578 (a (n - 1)).toNat

end

end A232739.P806116077293269039

/-! ## A232739.P2095424307979775139

`A081688(a(n-1))+1` with `a(0)=2`
-/

namespace A232739.P2095424307979775139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A081688 (a (n - 1)).toNat + 1

end

end A232739.P2095424307979775139

/-! ## A232739.P9169454224060291572

`A225687(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A232739.P9169454224060291572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A225687 (a (n - 1)).toNat + a (n - 1)

end

end A232739.P9169454224060291572

/-! ## A232739.P10767876829095715208

`A030124(floor(a(A023443(n))))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A232739.P10767876829095715208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A030124 (a (A023443 n).toNat).toNat

end

end A232739.P10767876829095715208

/-!
# A232740: a(n) = Number of terms of A232739 which occur between each consecutive terms of A005228, in range A005228(n)..A005228(n+1).

The programs for A232740, there is no canonical definition to state claims against.
-/

/-! ## A232740.P16082873925632406268

`A232753(A005228(n+2))-A232753(A005228(n+1))`
-/

namespace A232740.P16082873925632406268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232753 (A005228 (n + 2)).toNat - A232753 (A005228 (n + 1)).toNat

end

end A232740.P16082873925632406268

/-! ## A232740.P1143013166585321561

`2-A232750(record[(n+1)*A232750(n)])`
-/

namespace A232740.P1143013166585321561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A232750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A232750 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A232740.P1143013166585321561

/-! ## A232740.P103604098464936296

`A049872(Δ[record[n-A232750(a(n-1))]])` with `a(0)=1`
-/

namespace A232740.P103604098464936296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - A232750 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (f1 (n + 1) - f1 n).toNat

end

end A232740.P103604098464936296

/-! ## A232740.P8072148682475358420

`A014192(Δ[record[n-A232750(a(n-1))]]+1)` with `a(0)=1`
-/

namespace A232740.P8072148682475358420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - A232750 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (f1 (n + 1) - f1 n + 1).toNat

end

end A232740.P8072148682475358420

/-! ## A232740.P17221032185851587149

`2-A232750(eq[1, A232750(n+1)])`
-/

namespace A232740.P17221032185851587149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A232750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232740.P17221032185851587149

/-! ## A232740.P8639716793239203413

`Δ[A232753(A005228(n+1))]`
-/

namespace A232740.P8639716793239203413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232753 (A005228 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232740.P8639716793239203413

/-!
# A232741: Numbers n for which the largest m such that (m-1)! divides n is a prime.

The programs for A232741, the canonical program `A232741.P5104032373726736522` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232741 has offset 1).

The definition of A232741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8748 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232741.P5553992468262632431

`∪[2*n+1, A232745(n+1)]`
-/

namespace A232741.P5553992468262632431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A232741.P5553992468262632431

namespace A232741

/-- `∪[2*n+1, A232745(n+1)]` -/
def P5553992468262632431.Spec : Prop :=
  ∀ n, (P5553992468262632431.a n : ℤ) = A232741 (n + 1)

end A232741

/-! ## A232741.P325772656437959230

`record[(n+1)/A037034(A073575(n+1))]`
-/

namespace A232741.P325772656437959230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A037034 (A073575 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232741.P325772656437959230

namespace A232741

/-- `record[(n+1)/A037034(A073575(n+1))]` -/
def P325772656437959230.Spec : Prop :=
  ∀ n, P325772656437959230.a n = (A232741 (n + 1) : ℚ)

end A232741

/-! ## A232741.P5104032373726736522

`record[(n+1)/A055881(xor(n+1, A055881(n+1))+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A232741

/-- `record[(n+1)/A055881(xor(n+1, A055881(n+1))+1)]` -/
def P5104032373726736522.Spec : Prop :=
  ∀ n, P5104032373726736522.a n = (A232741 (n + 1) : ℚ)

end A232741

/-! ## A232741.P429278251841621406

`record[A014681(n+1)-A011585(A073575(n+1))]`
-/

namespace A232741.P429278251841621406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (n + 1) - A011585 (A073575 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232741.P429278251841621406

namespace A232741

/-- `record[A014681(n+1)-A011585(A073575(n+1))]` -/
def P429278251841621406.Spec : Prop :=
  ∀ n, P429278251841621406.a n = A232741 (n + 1)

end A232741

/-! ## A232741.P18006973207981613835

`record[A131729(A055881(n+1)+n)+n]`
-/

namespace A232741.P18006973207981613835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131729 (A055881 (n + 1) + (n : ℤ)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232741.P18006973207981613835

namespace A232741

/-- `record[A131729(A055881(n+1)+n)+n]` -/
def P18006973207981613835.Spec : Prop :=
  ∀ n, P18006973207981613835.a n = A232741 (n + 1)

end A232741

/-! ## A232741.P13781233125260777410

`A055881(a(n-1)*A055881(a(n-1)+1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A232741.P13781233125260777410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055881 (a (n - 1) * A055881 (a (n - 1) + 1).toNat + 1).toNat + a (n - 1)

end

end A232741.P13781233125260777410

namespace A232741

/-- `A055881(a(n-1)*A055881(a(n-1)+1)+1)+a(n-1)` -/
def P13781233125260777410.Spec : Prop :=
  ∀ n, P13781233125260777410.a n = A232741 (n + 1)

end A232741

/-! ## A232741.P10110423717860276181

`eq[A089939(A275727(n)), A178334(n)]`
-/

namespace A232741.P10110423717860276181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089939 (A275727 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232741.P10110423717860276181

namespace A232741

/-- `eq[A089939(A275727(n)), A178334(n)]` -/
def P10110423717860276181.Spec : Prop :=
  ∀ n, (P10110423717860276181.a n : ℤ) = A232741 (n + 1)

end A232741

/-! ## A232741.P9416882342958507639

`lt[abs(A246707(n)), A246705(n+1)]`
-/

namespace A232741.P9416882342958507639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246707 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246705 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A232741.P9416882342958507639

namespace A232741

/-- `lt[abs(A246707(n)), A246705(n+1)]` -/
def P9416882342958507639.Spec : Prop :=
  ∀ n, (P9416882342958507639.a n : ℤ) = A232741 (n + 1)

end A232741

/-! ## A232741.P5720377366017216991

`lt[A317961(n), A317925(A317935(2*(n+1)))]`
-/

namespace A232741.P5720377366017216991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317961 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317925 (A317935 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A232741.P5720377366017216991

namespace A232741

/-- `lt[A317961(n), A317925(A317935(2*(n+1)))]` -/
def P5720377366017216991.Spec : Prop :=
  ∀ n, (P5720377366017216991.a n : ℤ) = A232741 (n + 1)

end A232741

/-!
# A232742: Numbers n for which the largest m such that (m-1)! divides n is a composite.

The programs for A232742, there is no canonical definition to state claims against.
-/

/-! ## A232742.P3649504177555052357

`∪[A055926(n+1), A017593(n)]`
-/

namespace A232742.P3649504177555052357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A232742.P3649504177555052357

/-! ## A232742.P9579272847710629003

`∩[2*n, A232744(n+1)]`
-/

namespace A232742.P9579272847710629003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232742.P9579272847710629003

/-! ## A232742.P1661790374852549953

`filter[A232744(n+1), A079979(#)]`
-/

namespace A232742.P1661790374852549953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A232742.P1661790374852549953

/-! ## A232742.P5095661058324497711

`∩[A232744(n+1), A005843(n)]`
-/

namespace A232742.P5095661058324497711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232742.P5095661058324497711

/-! ## A232742.P16720199441382017254

`∩[A232744(n+1), A008588(n)]`
-/

namespace A232742.P16720199441382017254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232742.P16720199441382017254

/-! ## A232742.P4951213942247057044

`∩[A232744(n+1), A020739(n)]`
-/

namespace A232742.P4951213942247057044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232742.P4951213942247057044

/-! ## A232742.P6317020119948569512

`∩[A232744(n+1), A064466(n)]`
-/

namespace A232742.P6317020119948569512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064466 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232742.P6317020119948569512

/-! ## A232742.P17854972364817527022

`∩[A232744(n+1), A243937(n+1)]`
-/

namespace A232742.P17854972364817527022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232742.P17854972364817527022

/-! ## A232742.P11369480468688651937

`record[A153733(A232744(n+4))]`
-/

namespace A232742.P11369480468688651937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A232744 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232742.P11369480468688651937

/-! ## A232742.P218875081235367044

`filter[A232744(n+1), A059841(#)]`
-/

namespace A232742.P218875081235367044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A232742.P218875081235367044

/-! ## A232742.P8205331613957459381

`filter[A232744(n+1), A232991(#)]`
-/

namespace A232742.P8205331613957459381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232991 (f1 j).toNat = 1) n)

end

end A232742.P8205331613957459381

/-! ## A232742.P8509419858284899244

`filter[A232744(n+1), A267043(#)]`
-/

namespace A232742.P8509419858284899244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A232742.P8509419858284899244

/-! ## A232742.P1858850307678638918

`filter[A232744(n+2), A135528(#)]`
-/

namespace A232742.P1858850307678638918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232744 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A232742.P1858850307678638918

/-! ## A232742.P1830516475271894240

`filter[A232744(n+2), A266591(#)]`
-/

namespace A232742.P1830516475271894240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232744 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A232742.P1830516475271894240

/-!
# A232743: Numbers n for which the largest m such that (m-1)! divides n is a composite number > 5.

The programs for A232743, there is no canonical definition to state claims against.
-/

/-! ## A232743.P11242433591038085022

`∩[2*A055926(n+2), A055926(n+2)]`
-/

namespace A232743.P11242433591038085022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055926 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055926 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P11242433591038085022

/-! ## A232743.P6113525229660051170

`∩[A055926(n+1), A008606(n)]`
-/

namespace A232743.P6113525229660051170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P6113525229660051170

/-! ## A232743.P15239414841235104187

`∩[A055926(n+1), A317095(n)]`
-/

namespace A232743.P15239414841235104187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P15239414841235104187

/-! ## A232743.P2753032153431146777

`∩[A055926(n+1), A119651(n+1)]`
-/

namespace A232743.P2753032153431146777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P2753032153431146777

/-! ## A232743.P10112291244239922342

`∩[8*(n+2), A232742(n+1)]`
-/

namespace A232743.P10112291244239922342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P10112291244239922342

/-! ## A232743.P4926653113719913259

`∩[A055926(n+1), A008590(n)]`
-/

namespace A232743.P4926653113719913259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P4926653113719913259

/-! ## A232743.P430683175448429806

`∩[A055926(n+1), A022144(n)]`
-/

namespace A232743.P430683175448429806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P430683175448429806

/-! ## A232743.P12889658304701475033

`∩[A055926(n+1), A234275(n)]`
-/

namespace A232743.P12889658304701475033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P12889658304701475033

/-! ## A232743.P16386978823804993323

`∩[A055926(n+1), A273481(n)]`
-/

namespace A232743.P16386978823804993323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273481 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P16386978823804993323

/-! ## A232743.P3830087240339937025

`∩[A055926(n+1), A365886(n+1)]`
-/

namespace A232743.P3830087240339937025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P3830087240339937025

/-! ## A232743.P14007275996847859719

`∩[A232742(n+1), A008590(n)]`
-/

namespace A232743.P14007275996847859719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P14007275996847859719

/-! ## A232743.P14227223527711278352

`∩[A232742(n+1), A008606(n)]`
-/

namespace A232743.P14227223527711278352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P14227223527711278352

/-! ## A232743.P12932578016158921789

`∩[A232742(n+1), A022144(n)]`
-/

namespace A232743.P12932578016158921789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P12932578016158921789

/-! ## A232743.P1740999745647278357

`∩[A232742(n+1), A234275(n)]`
-/

namespace A232743.P1740999745647278357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P1740999745647278357

/-! ## A232743.P5287126975861726443

`∩[A232742(n+1), A273481(n)]`
-/

namespace A232743.P5287126975861726443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273481 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P5287126975861726443

/-! ## A232743.P6781472126396434563

`∩[A232742(n+1), A317095(n)]`
-/

namespace A232743.P6781472126396434563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P6781472126396434563

/-! ## A232743.P6389263205296346805

`∩[A232742(n+1), A365886(n+1)]`
-/

namespace A232743.P6389263205296346805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P6389263205296346805

/-! ## A232743.P7020901007348507786

`∩[A055926(n+1), A365866(n+1)]`
-/

namespace A232743.P7020901007348507786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P7020901007348507786

/-! ## A232743.P16364686075382184111

`∩[A232742(n+1), A365866(n+1)]`
-/

namespace A232743.P16364686075382184111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P16364686075382184111

/-! ## A232743.P1085983873815775997

`∩[A055926(n+1), A151973(n+1)]`
-/

namespace A232743.P1085983873815775997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232743.P1085983873815775997

/-!
# A232744: Numbers k for which the largest m such that m! divides k is odd.

The programs for A232744, the canonical program `A232744.P13120240317739843502` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232744 has offset 1).

The definition of A232744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6372 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232744.P756319145855380832

`∪[2*n+1, A232742(n+1)]`
-/

namespace A232744.P756319145855380832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A232744.P756319145855380832

namespace A232744

/-- `∪[2*n+1, A232742(n+1)]` -/
def P756319145855380832.Spec : Prop :=
  ∀ n, (P756319145855380832.a n : ℤ) = A232744 (n + 1)

end A232744

/-! ## A232744.P12095763141895754355

`eq[1, A316826(2*A275727(n))]`
-/

namespace A232744.P12095763141895754355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (2 * A275727 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232744.P12095763141895754355

namespace A232744

/-- `eq[1, A316826(2*A275727(n))]` -/
def P12095763141895754355.Spec : Prop :=
  ∀ n, (P12095763141895754355.a n : ℤ) = A232744 (n + 1)

end A232744

/-! ## A232744.P13120240317739843502

`record[and(1, A055881(n+1))*(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A232744

/-- `record[and(1, A055881(n+1))*(n+1)]` -/
def P13120240317739843502.Spec : Prop :=
  ∀ n, P13120240317739843502.a n = A232744 (n + 1)

theorem P13120240317739843502.correct : P13120240317739843502.Spec := by
  intro n
  simp only [A232744, Nat.add_sub_cancel]

end A232744

/-! ## A232744.P6875313603159502833

`record[(n+1)/and(39, A073575(n+1))]`
-/

namespace A232744.P6875313603159502833
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land 39 (A073575 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232744.P6875313603159502833

namespace A232744

/-- `record[(n+1)/and(39, A073575(n+1))]` -/
def P6875313603159502833.Spec : Prop :=
  ∀ n, P6875313603159502833.a n = (A232744 (n + 1) : ℚ)

end A232744

/-! ## A232744.P10493857504194633609

`record[A011585(A073575(n+1))+n]`
-/

namespace A232744.P10493857504194633609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 (A073575 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232744.P10493857504194633609

namespace A232744

/-- `record[A011585(A073575(n+1))+n]` -/
def P10493857504194633609.Spec : Prop :=
  ∀ n, P10493857504194633609.a n = A232744 (n + 1)

end A232744

/-! ## A232744.P8156793955833367676

`eq[1, A316826(2*A277012(n))]`
-/

namespace A232744.P8156793955833367676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (2 * A277012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232744.P8156793955833367676

namespace A232744

/-- `eq[1, A316826(2*A277012(n))]` -/
def P8156793955833367676.Spec : Prop :=
  ∀ n, (P8156793955833367676.a n : ℤ) = A232744 (n + 1)

end A232744

/-! ## A232744.P4789089996082101015

`A256244(A230403(a(n-1)+1)+a(n-1)²+1)` with `a(0)=1`
-/

namespace A232744.P4789089996082101015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A256244 (A230403 (a (n - 1) + 1).toNat + a (n - 1) ^ 2 + 1).toNat

end

end A232744.P4789089996082101015

namespace A232744

/-- `A256244(A230403(a(n-1)+1)+a(n-1)²+1)` -/
def P4789089996082101015.Spec : Prop :=
  ∀ n, P4789089996082101015.a n = A232744 (n + 1)

end A232744

/-!
# A232745: Numbers k for which the largest m such that m! divides k is even.

The programs for A232745, the canonical program `A232745.P11759041676394614836` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232745 has offset 1).

The definition of A232745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232745.P4477910179160924857

`eq[1, A316826(A275727(n))]`
-/

namespace A232745.P4477910179160924857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (A275727 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232745.P4477910179160924857

namespace A232745

/-- `eq[1, A316826(A275727(n))]` -/
def P4477910179160924857.Spec : Prop :=
  ∀ n, (P4477910179160924857.a n : ℤ) = A232745 (n + 1)

end A232745

/-! ## A232745.P12613872697514707135

`eq[3, A005680(A275727(n+1))]`
-/

namespace A232745.P12613872697514707135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005680 (A275727 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232745.P12613872697514707135

namespace A232745

/-- `eq[3, A005680(A275727(n+1))]` -/
def P12613872697514707135.Spec : Prop :=
  ∀ n, (P12613872697514707135.a n : ℤ) = A232745 (n + 1)

end A232745

/-! ## A232745.P11759041676394614836

`record[Δ[(A232744(n+1)/2)²]]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A232745

/-- `record[Δ[(A232744(n+1)/2)²]]` -/
def P11759041676394614836.Spec : Prop :=
  ∀ n, P11759041676394614836.a n = (A232745 (n + 1) : ℚ)

end A232745

/-! ## A232745.P17654623811744739917

`∩[2*n, A232741(n+1)]`
-/

namespace A232745.P17654623811744739917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232745.P17654623811744739917

namespace A232745

/-- `∩[2*n, A232741(n+1)]` -/
def P17654623811744739917.Spec : Prop :=
  ∀ n, (P17654623811744739917.a n : ℤ) = A232745 (n + 1)

end A232745

/-! ## A232745.P17385921344644191810

`∩[A232741(n+1), A005843(n)]`
-/

namespace A232745.P17385921344644191810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232745.P17385921344644191810

namespace A232745

/-- `∩[A232741(n+1), A005843(n)]` -/
def P17385921344644191810.Spec : Prop :=
  ∀ n, (P17385921344644191810.a n : ℤ) = A232745 (n + 1)

end A232745

/-! ## A232745.P5107582743503940832

`filter[A232741(n+2), A135528(#)]`
-/

namespace A232745.P5107582743503940832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232741 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A232745.P5107582743503940832

namespace A232745

/-- `filter[A232741(n+2), A135528(#)]` -/
def P5107582743503940832.Spec : Prop :=
  ∀ n, P5107582743503940832.a n = A232745 (n + 1)

end A232745

/-! ## A232745.P10379135961326424857

`lt[and(39, A073575(n+1))^A094267(n), 1]+1`
-/

namespace A232745.P10379135961326424857
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 39 (A073575 (n + 1)) : ℚ) ^ (A094267 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A232745.P10379135961326424857

namespace A232745

/-- `lt[and(39, A073575(n+1))^A094267(n), 1]+1` -/
def P10379135961326424857.Spec : Prop :=
  ∀ n, (P10379135961326424857.a n : ℤ) = A232745 (n + 1)

end A232745

/-! ## A232745.P10270150926295158466

`filter[A232741(n+1), A059841(#)]`
-/

namespace A232745.P10270150926295158466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A232745.P10270150926295158466

namespace A232745

/-- `filter[A232741(n+1), A059841(#)]` -/
def P10270150926295158466.Spec : Prop :=
  ∀ n, P10270150926295158466.a n = A232745 (n + 1)

end A232745

/-! ## A232745.P5057039241553120799

`filter[A232741(n+2), A266591(#)]`
-/

namespace A232745.P5057039241553120799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232741 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A232745.P5057039241553120799

namespace A232745

/-- `filter[A232741(n+2), A266591(#)]` -/
def P5057039241553120799.Spec : Prop :=
  ∀ n, P5057039241553120799.a n = A232745 (n + 1)

end A232745

/-! ## A232745.P11000640671183442940

`record[Δ[A217123(A232744(n+1))]]`
-/

namespace A232745.P11000640671183442940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217123 (A232744 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232745.P11000640671183442940

namespace A232745

/-- `record[Δ[A217123(A232744(n+1))]]` -/
def P11000640671183442940.Spec : Prop :=
  ∀ n, P11000640671183442940.a n = A232745 (n + 1)

end A232745

/-!
# A232746: n occurs A030124(n) times; a(n) = one less than the least k such that A005228(k) > n.

The programs for A232746, there is no canonical definition to state claims against.
-/

/-! ## A232746.P9702462880834400230

`∑[char[A081689(n)]]`
-/

namespace A232746.P9702462880834400230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232746.P9702462880834400230

/-! ## A232746.P11374417109412811475

`∑[char[A005228(n+1)-1]]`
-/

namespace A232746.P11374417109412811475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232746.P11374417109412811475

/-! ## A232746.P16295796371614237253

`∑[char[∑[A030124(n+1)]]]+1`
-/

namespace A232746.P16295796371614237253
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A232746.P16295796371614237253

/-! ## A232746.P15547126515486716567

`A225687(n+1-a(n-1))` with `a(0)=1`
-/

namespace A232746.P15547126515486716567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A225687 ((n + 1 : ℤ) - a (n - 1)).toNat

end

end A232746.P15547126515486716567

/-! ## A232746.P896082051079998204

`A225687(n+2-A225687(n+1))`
-/

namespace A232746.P896082051079998204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 ((n + 2 : ℤ) - A225687 (n + 1)).toNat

end

end A232746.P896082051079998204

/-! ## A232746.P7164111166094794098

`A261216(∑[A232747(n+1)])`
-/

namespace A232746.P7164111166094794098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261216 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A232746.P7164111166094794098

/-! ## A232746.P14094003413432589333

`1-A232748(n+1)+n`
-/

namespace A232746.P14094003413432589333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A232748 (n + 1) + (n : ℤ)

end

end A232746.P14094003413432589333

/-!
# A232747: Inverse function to Hofstadter's A005228.

The programs for A232747, there is no canonical definition to state claims against.
-/

/-! ## A232747.P11523455065381976364

`Δ[C(round(sqrt(n*(γ+1)+2)), 2)]`
-/

namespace A232747.P11523455065381976364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt ((n : ℝ) * (Real.eulerMascheroniConstant + 1) + 2))).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A232747.P11523455065381976364

/-! ## A232747.P5095103714396709259

`ratio[-round(sqrt(A195176(n+1)))!]-1`
-/

namespace A232747.P5095103714396709259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (A195176 (n + 1) : ℝ))).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) - 1

end

end A232747.P5095103714396709259

/-! ## A232747.P10686969577895414025

`A127648(∑[A022930(n)])`
-/

namespace A232747.P10686969577895414025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A232747.P10686969577895414025

/-! ## A232747.P9588988856406897725

`A127648(ceil(sqrt(A293407(n))))`
-/

namespace A232747.P9588988856406897725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 ⌈Real.sqrt (A293407 n : ℝ)⌉.toNat

end

end A232747.P9588988856406897725

/-! ## A232747.P8401826481065187733

`A127648(ceil(sqrt(A293408(n))))`
-/

namespace A232747.P8401826481065187733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 ⌈Real.sqrt (A293408 n : ℝ)⌉.toNat

end

end A232747.P8401826481065187733

/-! ## A232747.P31600701065102320

`A127648(round(sqrt(A085787(n))))`
-/

namespace A232747.P31600701065102320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (SequenceMachineLib.roundAway (Real.sqrt (A085787 n : ℝ))).toNat

end

end A232747.P31600701065102320

/-! ## A232747.P15681844420116901598

`A142150(A225850(n+1)+1)`
-/

namespace A232747.P15681844420116901598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A225850 (n + 1) + 1).toNat

end

end A232747.P15681844420116901598

/-! ## A232747.P10872703356371485322

`char[A081689(n)]*A225687(n+1)`
-/

namespace A232747.P10872703356371485322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A225687 (n + 1)

end

end A232747.P10872703356371485322

/-! ## A232747.P8107699203527057723

`A127648(A004526(∑[A022921(n)]))`
-/

namespace A232747.P8107699203527057723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A232747.P8107699203527057723

/-! ## A232747.P2310198422935215672

`Δ[A057944(A004396(A195122(n)))]`
-/

namespace A232747.P2310198422935215672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (A004396 (A195122 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232747.P2310198422935215672

/-!
# A232748: Partial sums of the characteristic function of Hofstadter's A030124.

The programs for A232748, there is no canonical definition to state claims against.
-/

/-! ## A232748.P18000680456754578481

`n+1-A232746(n+1)`
-/

namespace A232748.P18000680456754578481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A232746 (n + 1)

end

end A232748.P18000680456754578481

/-! ## A232748.P18057142581122945174

`1-round(root(n²+1, sqrt(14)))+n`
-/

namespace A232748.P18057142581122945174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway ((n ^ 2 + 1 : ℝ) ^ (1 / Real.sqrt (14 : ℝ))) + (n : ℤ)

end

end A232748.P18057142581122945174

/-! ## A232748.P10950320332029894515

`-(round(root(n²+1, sqrt(14)))+xor(n, -1))`
-/

namespace A232748.P10950320332029894515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.roundAway ((n ^ 2 + 1 : ℝ) ^ (1 / Real.sqrt (14 : ℝ))) + Int.xor (n : ℤ) (-1))

end

end A232748.P10950320332029894515

/-! ## A232748.P11975304649089232635

`Δ[n²]%(round(root(n²+1, sqrt(14)))+n)`
-/

namespace A232748.P11975304649089232635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (SequenceMachineLib.roundAway ((n ^ 2 + 1 : ℝ) ^ (1 / Real.sqrt (14 : ℝ))) + (n : ℤ))

end

end A232748.P11975304649089232635

/-! ## A232748.P15132865276045109205

`∑[char[comp[A081689(n)]]]`
-/

namespace A232748.P15132865276045109205
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232748.P15132865276045109205

/-! ## A232748.P10759183602974676654

`∑[char[A081688(n+1)]]`
-/

namespace A232748.P10759183602974676654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081688 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232748.P10759183602974676654

/-! ## A232748.P8107771874419240

`∑[floor(acot(A232747(n+1)))]`
-/

namespace A232748.P8107771874419240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A232747 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232748.P8107771874419240

/-! ## A232748.P5042699075966123464

`∑[log2(gcd(2, A225850(n+1)))]`
-/

namespace A232748.P5042699075966123464
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A225850 (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232748.P5042699075966123464

/-! ## A232748.P3173933373605622329

`∑[char[A030124(n+1)-1]]`
-/

namespace A232748.P3173933373605622329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030124 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232748.P3173933373605622329

/-! ## A232748.P8329241582665013046

`∑[char[A225687(n+1)+n]]`
-/

namespace A232748.P8329241582665013046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232748.P8329241582665013046

/-!
# A232749: Inverse function to Hofstadter's A030124.

The programs for A232749, there is no canonical definition to state claims against.
-/

/-! ## A232749.P15439726158698782779

`A142150(A225850(n+1))`
-/

namespace A232749.P15439726158698782779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A225850 (n + 1)).toNat

end

end A232749.P15439726158698782779

/-! ## A232749.P16288684931104870304

`(1-A232746(n+1)+n)*char[A081688(n)]`
-/

namespace A232749.P16288684931104870304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081688 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A232746 (n + 1) + (n : ℤ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A232749.P16288684931104870304

/-! ## A232749.P9417958903509424938

`∑[(A225850(n+1)+1)%2]*char[A081688(n)]`
-/

namespace A232749.P9417958903509424938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225850 (n + 1) + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081688 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A232749.P9417958903509424938

/-! ## A232749.P17196745288293228228

`C(1-A232746(n+1)+n, A232747(n+1)!)`
-/

namespace A232749.P17196745288293228228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - A232746 (n + 1) + (n : ℤ)).toNat (Nat.factorial (A232747 (n + 1)).toNat)

end

end A232749.P17196745288293228228

/-! ## A232749.P5632500114329817658

`∑[A000007(A232747(n+1))]*A000007(A232747(n+1))`
-/

namespace A232749.P5632500114329817658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A232747 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000007 (A232747 (n + 1)).toNat

end

end A232749.P5632500114329817658

/-! ## A232749.P16297945853323808310

`char[A081688(n)]*A232748(n+1)`
-/

namespace A232749.P16297945853323808310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081688 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A232748 (n + 1)

end

end A232749.P16297945853323808310

/-! ## A232749.P11650773667498682663

`C(A232748(n+1), A232747(n+1)!)`
-/

namespace A232749.P11650773667498682663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A232748 (n + 1)).toNat (Nat.factorial (A232747 (n + 1)).toNat)

end

end A232749.P11650773667498682663

/-! ## A232749.P17025911639465849224

`Δ[A000124(A232748(C(2, n+2)+n))]`
-/

namespace A232749.P17025911639465849224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A232748 (Nat.choose 2 (n + 2) + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232749.P17025911639465849224

/-! ## A232749.P3849076014468625880

`Δ[A000124(A232748(A028310(n)))]`
-/

namespace A232749.P3849076014468625880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A232748 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232749.P3849076014468625880

/-! ## A232749.P7214207281398524123

`Δ[A232748(A028310(n))]*A232748(n+1)`
-/

namespace A232749.P7214207281398524123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232748 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A232748 (n + 1)

end

end A232749.P7214207281398524123

/-!
# A232750: a(0)=1, after which a(n) = Number of terms of A005228 which occur between each consecutive terms of A232739, in range A232739(n)..A232739(n+1).

The programs for A232750, there is no canonical definition to state claims against.
-/

/-! ## A232750.P5080322535150193472

`A000007(n)+char[∑[A232740(n+1)]]`
-/

namespace A232750.P5080322535150193472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232740 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A232750.P5080322535150193472

/-! ## A232750.P8460750965309682108

`A178225(2*n)+char[∑[A232740(n+1)]]`
-/

namespace A232750.P8460750965309682108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232740 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (2 * n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A232750.P8460750965309682108

/-! ## A232750.P13096017919807196138

`char[∑[A232740(n+1)]]+A008452(n)%2`
-/

namespace A232750.P13096017919807196138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232740 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + Int.tmod (A008452 n) 2

end

end A232750.P13096017919807196138

/-! ## A232750.P12823997898068526688

`A014963(4*n+2)-(1-char[∑[A232740(n+1)]])`
-/

namespace A232750.P12823997898068526688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232740 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) - (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A232750.P12823997898068526688

/-! ## A232750.P8390530875858141014

`char[∑[A232740(n+1)]]+A146559(n+1)%2`
-/

namespace A232750.P8390530875858141014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232740 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + Int.tmod (A146559 (n + 1)) 2

end

end A232750.P8390530875858141014

/-! ## A232750.P6013117922382058923

`A010054(char[A070977(n+1)]*A000132(n))`
-/

namespace A232750.P6013117922382058923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070977 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000132 n).toNat

end

end A232750.P6013117922382058923

/-! ## A232750.P14619930090615664791

`A290452(char[A070977(n+1)]*A142463(n+1))`
-/

namespace A232750.P14619930090615664791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070977 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A142463 (n + 1)).toNat

end

end A232750.P14619930090615664791

/-! ## A232750.P2294086545337548297

`A253903(char[A070977(n+1)]*A253895(n+1))`
-/

namespace A232750.P2294086545337548297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070977 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253903 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A253895 (n + 1)).toNat

end

end A232750.P2294086545337548297

/-! ## A232750.P2262757559619081613

`A099894(2*A204201(n+1)*char[A070977(n+1)])`
-/

namespace A232750.P2262757559619081613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070977 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (2 * A204201 (n + 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A232750.P2262757559619081613

/-!
# A232751: Permutation of natural numbers obtained by entangling even and odd numbers with Hofstadter's complementary pair A005228 & A030124; inverse permutation to A232752.

The programs for A232751, there is no canonical definition to state claims against.
-/

/-! ## A232751.P16843337000429211596

`A253564(record[A099384(3*(n+1))])`
-/

namespace A232751.P16843337000429211596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099384 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253564 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A232751.P16843337000429211596

/-! ## A232751.P9370610771483646096

`A253564(comp[A305576(3^n*floor(3^n/2))])`
-/

namespace A232751.P9370610771483646096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305576 ((3 ^ n : ℤ) * ⌊(3 ^ n : ℚ) / 2⌋).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253564 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A232751.P9370610771483646096

/-!
# A232753: a(n) = the number of times needed to iterate Hofstadter's A030124, starting from A030124(1)=2, that the result were >= n; a(n) = the least k such that A232739(k) >= n.

The programs for A232753, there is no canonical definition to state claims against.
-/

/-! ## A232753.P14020763151156149912

`∑[char[A232739(n+1)]]+1`
-/

namespace A232753.P14020763151156149912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232739 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A232753.P14020763151156149912

/-! ## A232753.P12473531752748153570

`∑[char[A030124(a(n-1))]]` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A232753.P12473531752748153570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4] fun n f2 =>
  A030124 (f2 (n - 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232753.P12473531752748153570

/-! ## A232753.P8942666990333982059

`comp[∑[∑[A232750(n)]+1]]-n+1`
-/

namespace A232753.P8942666990333982059
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232750 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A232753.P8942666990333982059

/-! ## A232753.P17014559927709505019

`char[A232739(abs(1-n)+1)]+a(n-1)` with `a(0)=1`
-/

namespace A232753.P17014559927709505019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232739 (|1 - (n : ℤ)| + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A232753.P17014559927709505019

/-! ## A232753.P2141748292811835146

`floor(A053027(n²+1)^(2/9))`
-/

namespace A232753.P2141748292811835146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053027 (n ^ 2 + 1) : ℝ) ^ ((2 : ℚ) / 9 : ℝ)⌋

end

end A232753.P2141748292811835146

/-! ## A232753.P4092884119539238473

`floor(sqrt(log(A108716(n))))`
-/

namespace A232753.P4092884119539238473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.log (A108716 n : ℝ))⌋

end

end A232753.P4092884119539238473

/-! ## A232753.P6556272123617270185

`A000194(A248333(n)+A094591(n))`
-/

namespace A232753.P6556272123617270185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A248333 n + A094591 n).toNat

end

end A232753.P6556272123617270185

/-! ## A232753.P7727102061375060714

`A000196(A008486(n)-A048766(A112318(n)))`
-/

namespace A232753.P7727102061375060714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008486 n - A048766 (A112318 n).toNat).toNat

end

end A232753.P7727102061375060714

/-! ## A232753.P4524638817287924155

`a(A232748(n))+1` with `a(0)=1, a(1)=1`
-/

namespace A232753.P4524638817287924155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A232748 n).toNat + 1

end

end A232753.P4524638817287924155

/-! ## A232753.P11144024922319435604

`A095861(A246977(n+1))`
-/

namespace A232753.P11144024922319435604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A246977 (n + 1)).toNat

end

end A232753.P11144024922319435604

/-!
# A232754: Number of (n+1)X(1+1) 0..3 arrays x(i,j) with row sums sum{j^3*x(i,j), j=1..1+1} nondecreasing, and column sums sum{i^3*x(i,j), i=1..n+1} nondecreasing.

The programs for A232754, there is no canonical definition to state claims against.
-/

/-! ## A232754.P6624720417939406027

`A232756(∑[n]+1)`
-/

namespace A232754.P6624720417939406027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232756 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232754.P6624720417939406027

/-! ## A232754.P6118963715384978852

`record[A010054(n)*A232756(n+1)]`
-/

namespace A232754.P6118963715384978852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232754.P6118963715384978852

/-! ## A232754.P10362290543902247622

`record[A103451(n)*A232756(n+1)]`
-/

namespace A232754.P10362290543902247622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A232756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232754.P10362290543902247622

/-! ## A232754.P9483152160277233980

`record[A117355(n)*A232756(n+1)]`
-/

namespace A232754.P9483152160277233980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117355 n * A232756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232754.P9483152160277233980

/-! ## A232754.P11821863553209332779

`record[A155170(n)*A232756(n+1)]`
-/

namespace A232754.P11821863553209332779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155170 n * A232756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232754.P11821863553209332779

/-!
# A232755: Number of (n+1)X(2+1) 0..3 arrays x(i,j) with row sums sum{j^3*x(i,j), j=1..2+1} nondecreasing, and column sums sum{i^3*x(i,j), i=1..n+1} nondecreasing.

The programs for A232755, there is no canonical definition to state claims against.
-/

/-! ## A232755.P12552041979923204260

`A232756(∑[n+1]+2)`
-/

namespace A232755.P12552041979923204260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232756 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232755.P12552041979923204260

/-! ## A232755.P9459077008388118701

`record[A010054(n)*A232756(n+2)]`
-/

namespace A232755.P9459077008388118701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232756 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232755.P9459077008388118701

/-! ## A232755.P8978244493234832294

`A213211(n)*A232756(A132336(n+2))`
-/

namespace A232755.P8978244493234832294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213211 n * A232756 (A132336 (n + 2)).toNat

end

end A232755.P8978244493234832294

/-!
# A232757: Number of tilings of a 3 X 4n rectangle with 3n tetrominoes of any shape.

The programs for A232757, there is no canonical definition to state claims against.
-/

/-! ## A232757.P12463805577242969398

`record[A230031(∑[n+2]+4)]`
-/

namespace A232757.P12463805577242969398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230031 (∑ j ∈ Finset.range (n + 1), f2 j + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232757.P12463805577242969398

/-!
# A232760: Number of (n+1)X(1+1) 0..3 arrays x(i,j) with row sums sum{j^4*x(i,j), j=1..1+1} nondecreasing, and column sums sum{i^4*x(i,j), i=1..n+1} nondecreasing.

The programs for A232760, there is no canonical definition to state claims against.
-/

/-! ## A232760.P5083051254145381318

`A232763(∑[n]+1)`
-/

namespace A232760.P5083051254145381318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232763 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232760.P5083051254145381318

/-! ## A232760.P17288459012110627675

`record[A232763(A286235(n+1))]`
-/

namespace A232760.P17288459012110627675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232763 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232760.P17288459012110627675

/-! ## A232760.P3226666307561018828

`lcm((-1)^n, A232763(A000124(n)))`
-/

namespace A232760.P3226666307561018828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A232763 (A000124 n).toNat)

end

end A232760.P3226666307561018828

/-! ## A232760.P6935150019225631707

`record[A010054(n)*A232763(n+1)]`
-/

namespace A232760.P6935150019225631707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232760.P6935150019225631707

/-! ## A232760.P1732190579356756887

`record[A103451(n)*A232763(n+1)]`
-/

namespace A232760.P1732190579356756887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A232763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232760.P1732190579356756887

/-!
# A232761: Number of (n+1)X(2+1) 0..3 arrays x(i,j) with row sums sum{j^4*x(i,j), j=1..2+1} nondecreasing, and column sums sum{i^4*x(i,j), i=1..n+1} nondecreasing.

The programs for A232761, there is no canonical definition to state claims against.
-/

/-! ## A232761.P14913494889438011435

`A232763(∑[n+1]+2)`
-/

namespace A232761.P14913494889438011435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232763 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232761.P14913494889438011435

/-! ## A232761.P7122295652296703746

`record[A232763(A286235(n+1)+1)]`
-/

namespace A232761.P7122295652296703746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232763 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232761.P7122295652296703746

/-! ## A232761.P7432943162937469384

`record[A010054(n)*A232763(n+2)]`
-/

namespace A232761.P7432943162937469384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232763 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232761.P7432943162937469384

/-! ## A232761.P8685417178876192548

`record[root(A232763(n+2), A059268(n))]`
-/

namespace A232761.P8685417178876192548
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232763 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232761.P8685417178876192548

/-!
# A232762: Number of (n+1)X(3+1) 0..3 arrays x(i,j) with row sums sum{j^4*x(i,j), j=1..3+1} nondecreasing, and column sums sum{i^4*x(i,j), i=1..n+1} nondecreasing.

The programs for A232762, there is no canonical definition to state claims against.
-/

/-! ## A232762.P6517223645330896627

`A232763(∑[n+2]+4)`
-/

namespace A232762.P6517223645330896627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232763 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232762.P6517223645330896627

/-! ## A232762.P2929122427233492032

`record[A152904(n+1)*A232763(n+4)]`
-/

namespace A232762.P2929122427233492032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152904 (n + 1) * A232763 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232762.P2929122427233492032

/-! ## A232762.P15989366460228454240

`A255379(n)+A232763(A167614(n+1))`
-/

namespace A232762.P15989366460228454240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255379 n + A232763 (A167614 (n + 1)).toNat

end

end A232762.P15989366460228454240

/-!
# A232764: Numbers n such that the concatenation A000461(d_1)//A000461(d_2)//...//A000461(d_k) is prime, where d_i is the i-th digit of n and n is k digits long.

The programs for A232764, there is no canonical definition to state claims against.
-/

/-! ## A232764.P77826279669246632

`A327473(A267485(n)+A115591(n+1))`
-/

namespace A232764.P77826279669246632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (A267485 n + A115591 (n + 1)).toNat

end

end A232764.P77826279669246632

/-!
# A232765: Values of y solving x^2 = floor(y^2/3 + y).

The programs for A232765, there is no canonical definition to state claims against.
-/

/-! ## A232765.P3479823244672272546

`eq[0, A088226(A007980(n))]`
-/

namespace A232765.P3479823244672272546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A007980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232765.P3479823244672272546

/-! ## A232765.P1780792724821193871

`∑[record[A245552(A077043(n))]]`
-/

namespace A232765.P1780792724821193871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245552 (A077043 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232765.P1780792724821193871

/-! ## A232765.P1560488890765130399

`eq[1, A010052(A000212(n)+n)]`
-/

namespace A232765.P1560488890765130399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000212 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232765.P1560488890765130399

/-!
# A232767: Primes p such that the concatenation p987654321 is prime.

The programs for A232767, there is no canonical definition to state claims against.
-/

/-! ## A232767.P3112871275963713811

`p?[A232766(n+1)]`
-/

namespace A232767.P3112871275963713811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232767.P3112871275963713811

/-! ## A232767.P2382018772105150991

`p?[record[A232766(A052938(n))]]`
-/

namespace A232767.P2382018772105150991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232766 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232767.P2382018772105150991

/-! ## A232767.P16169819521343136117

`p?[record[A232766(A065648(n))]]`
-/

namespace A232767.P16169819521343136117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232766 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232767.P16169819521343136117

/-! ## A232767.P12081237616335911491

`p?[record[A232766(A117910(n))]]`
-/

namespace A232767.P12081237616335911491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232766 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232767.P12081237616335911491

/-! ## A232767.P7729071203413916111

`record[A014963(A232766(n+7))]`
-/

namespace A232767.P7729071203413916111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A232766 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232767.P7729071203413916111

/-!
# A232768: Numbers n with the property that n^2+(n+1)^2 and n^2+(n+1)^2+(n+2)^2 are both prime.

The programs for A232768, the canonical program `A232768.P9963915557827265502` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232768 has offset 1).

The definition of A232768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 533 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232768.P9963915557827265502

`∩[A027861(n+1), A027863(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A232768

/-- `∩[A027861(n+1), A027863(n+1)]` -/
def P9963915557827265502.Spec : Prop :=
  ∀ n, (P9963915557827265502.a n : ℤ) = A232768 (n + 1)

theorem P9963915557827265502.correct : P9963915557827265502.Spec := by
  intro n
  simp only [A232768, Nat.add_sub_cancel]

end A232768

/-! ## A232768.P8661251373210237751

`∩[floor(A002731(n+1)/2), A027863(n+1)]`
-/

namespace A232768.P8661251373210237751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002731 (n + 1) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232768.P8661251373210237751

namespace A232768

/-- `∩[floor(A002731(n+1)/2), A027863(n+1)]` -/
def P8661251373210237751.Spec : Prop :=
  ∀ n, (P8661251373210237751.a n : ℤ) = A232768 (n + 1)

end A232768

/-! ## A232768.P8899202485934177068

`∩[eq[2, A160651(n)], A027863(n+1)]`
-/

namespace A232768.P8899202485934177068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A232768.P8899202485934177068

namespace A232768

/-- `∩[eq[2, A160651(n)], A027863(n+1)]` -/
def P8899202485934177068.Spec : Prop :=
  ∀ n, (P8899202485934177068.a n : ℤ) = A232768 (n + 1)

end A232768

/-! ## A232768.P12532674442199876462

`∩[eq[2, A278244(n)], A027863(n+1)]`
-/

namespace A232768.P12532674442199876462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278244 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A232768.P12532674442199876462

namespace A232768

/-- `∩[eq[2, A278244(n)], A027863(n+1)]` -/
def P12532674442199876462.Spec : Prop :=
  ∀ n, (P12532674442199876462.a n : ℤ) = A232768 (n + 1)

end A232768

/-! ## A232768.P10263095715222135496

`∩[eq[1, A069002(n+2)]+1, A027863(n+1)]`
-/

namespace A232768.P10263095715222135496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069002 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A232768.P10263095715222135496

namespace A232768

/-- `∩[eq[1, A069002(n+2)]+1, A027863(n+1)]` -/
def P10263095715222135496.Spec : Prop :=
  ∀ n, (P10263095715222135496.a n : ℤ) = A232768 (n + 1)

end A232768

/-! ## A232768.P13995124348464109439

`∩[eq[1, A147809(2*n+1)], A027863(n+1)]`
-/

namespace A232768.P13995124348464109439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A232768.P13995124348464109439

namespace A232768

/-- `∩[eq[1, A147809(2*n+1)], A027863(n+1)]` -/
def P13995124348464109439.Spec : Prop :=
  ∀ n, (P13995124348464109439.a n : ℤ) = A232768 (n + 1)

end A232768

/-! ## A232768.P9076136084382926372

`∩[eq[1, A261609(2*n+1)], A027863(n+1)]`
-/

namespace A232768.P9076136084382926372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261609 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A232768.P9076136084382926372

namespace A232768

/-- `∩[eq[1, A261609(2*n+1)], A027863(n+1)]` -/
def P9076136084382926372.Spec : Prop :=
  ∀ n, (P9076136084382926372.a n : ℤ) = A232768 (n + 1)

end A232768

/-! ## A232768.P2919010438387248913

`∩[A004524(A002731(n+1)), A027863(n+1)]`
-/

namespace A232768.P2919010438387248913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A002731 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232768.P2919010438387248913

namespace A232768

/-- `∩[A004524(A002731(n+1)), A027863(n+1)]` -/
def P2919010438387248913.Spec : Prop :=
  ∀ n, (P2919010438387248913.a n : ℤ) = A232768 (n + 1)

end A232768

/-!
# A232769: Numbers k not divisible by 9 such that k divides 10^k - 1 (A014950).

The programs for A232769, there is no canonical definition to state claims against.
-/

/-! ## A232769.P15353468441603277301

`record[37*a(∑{e}[n+1, #])]` with `a(0)=1, a(1)=3`
-/

namespace A232769.P15353468441603277301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  37 * f1 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232769.P15353468441603277301

/-!
# A232771: Values of x satisfying x^2 = floor(y^2/3 + y).

The programs for A232771, the canonical program `A232771.P13410807256980959240` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232771 has offset 1).

The definition of A232771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232771.P1639393553989536216

`ceil(A232765(n+1)/sqrt(3))`
-/

namespace A232771.P1639393553989536216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232765 (n + 1) : ℝ) / Real.sqrt (3 : ℝ)⌉

end

end A232771.P1639393553989536216

namespace A232771

/-- `ceil(A232765(n+1)/sqrt(3))` -/
def P1639393553989536216.Spec : Prop :=
  ∀ n, P1639393553989536216.a n = A232771 (n + 1)

end A232771

/-! ## A232771.P13410807256980959240

`∑[A005246(A004772(n+1))]-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A232771

/-- `∑[A005246(A004772(n+1))]-1` -/
def P13410807256980959240.Spec : Prop :=
  ∀ n, P13410807256980959240.a n = A232771 (n + 1)

theorem P13410807256980959240.correct : P13410807256980959240.Spec := by
  intro n
  simp only [A232771, Nat.add_sub_cancel]

end A232771

/-! ## A232771.P17629038252379446963

`floor(A232765(n+1)/sqrt(3)-A057428(n))`
-/

namespace A232771.P17629038252379446963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A232765 (n + 1) : ℝ) / Real.sqrt (3 : ℝ) - (A057428 n : ℝ)⌋

end

end A232771.P17629038252379446963

namespace A232771

/-- `floor(A232765(n+1)/sqrt(3)-A057428(n))` -/
def P17629038252379446963.Spec : Prop :=
  ∀ n, P17629038252379446963.a n = A232771 (n + 1)

end A232771

/-! ## A232771.P9064373496342391614

`floor(A019428(2*n)+A232765(n+1)/sqrt(3))`
-/

namespace A232771.P9064373496342391614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019428 (2 * n) : ℝ) + (A232765 (n + 1) : ℝ) / Real.sqrt (3 : ℝ)⌋

end

end A232771.P9064373496342391614

namespace A232771

/-- `floor(A019428(2*n)+A232765(n+1)/sqrt(3))` -/
def P9064373496342391614.Spec : Prop :=
  ∀ n, P9064373496342391614.a n = A232771 (n + 1)

end A232771

/-! ## A232771.P17571282381398223493

`∑[A005246(A004772(n+1))%A000032(2*n+1)]`
-/

namespace A232771.P17571282381398223493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005246 (A004772 (n + 1)).toNat) (A000032 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232771.P17571282381398223493

namespace A232771

/-- `∑[A005246(A004772(n+1))%A000032(2*n+1)]` -/
def P17571282381398223493.Spec : Prop :=
  ∀ n, P17571282381398223493.a n = A232771 (n + 1)

end A232771

/-!
# A232772: Expansion of (psi(x)^2 / (phi(-x) * phi(x^2)))^2 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A232772, there is no canonical definition to state claims against.
-/

/-! ## A232772.P9706015538565670185

`A215348(2*n+1)`
-/

namespace A232772.P9706015538565670185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215348 (2 * n + 1)

end

end A232772.P9706015538565670185

/-! ## A232772.P3095508955346929010

`A215349(2*n+1)`
-/

namespace A232772.P3095508955346929010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215349 (2 * n + 1)

end

end A232772.P3095508955346929010

/-! ## A232772.P14893779098656123670

`A208933(2*n+1)-A208274(2*n+1)/2`
-/

namespace A232772.P14893779098656123670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208933 (2 * n + 1) : ℚ) - (A208274 (2 * n + 1) : ℚ) / 2

end

end A232772.P14893779098656123670

/-! ## A232772.P3094601612291416682

`A212318(Δ[n²])/2`
-/

namespace A232772.P3094601612291416682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212318 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A232772.P3094601612291416682

/-! ## A232772.P8362658719227648813

`(A007096(2*n+1)-A127391(2*n+1))/2`
-/

namespace A232772.P8362658719227648813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 (2 * n + 1) - A127391 (2 * n + 1) : ℚ) / 2

end

end A232772.P8362658719227648813

/-! ## A232772.P10388929615340064990

`record[A215349(n+1)]`
-/

namespace A232772.P10388929615340064990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232772.P10388929615340064990

/-! ## A232772.P11848875157755929813

`A208604(2*n+1)/2-A112128(2*n+1)`
-/

namespace A232772.P11848875157755929813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208604 (2 * n + 1) : ℚ) / 2 - (A112128 (2 * n + 1) : ℚ)

end

end A232772.P11848875157755929813

/-! ## A232772.P5492363008199639165

`abs(A232358(2*n+1)/2)`
-/

namespace A232772.P5492363008199639165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A232358 (2 * n + 1) : ℚ) / 2|

end

end A232772.P5492363008199639165

/-! ## A232772.P1416047971260092579

`gcd(A232358(2*n+1)/2, A000038(n))`
-/

namespace A232772.P1416047971260092579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A232358 (2 * n + 1) : ℚ) / 2)) (A000038 n)

end

end A232772.P1416047971260092579

/-! ## A232772.P3196526053542183784

`A232358(2*n+1)/(A000038(n+1)-2)`
-/

namespace A232772.P3196526053542183784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232358 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A232772.P3196526053542183784

/-! ## A232772.P10712573263217385456

`A232358(2*n+1)/(A127391(2*n)-2)`
-/

namespace A232772.P10712573263217385456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232358 (2 * n + 1) : ℚ) / (A127391 (2 * n) - 2 : ℚ)

end

end A232772.P10712573263217385456

/-! ## A232772.P4955456425559871648

`lcm(A000034(n+1), A232358(2*n+1))/2`
-/

namespace A232772.P4955456425559871648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A232358 (2 * n + 1)) : ℚ) / 2

end

end A232772.P4955456425559871648

/-! ## A232772.P6652891293954156407

`A232358(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A232772.P6652891293954156407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232358 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A232772.P6652891293954156407

/-! ## A232772.P7859789295522132483

`A232358(2*n+1)/A000034(2*n+1)-A232358(2*n+1)`
-/

namespace A232772.P7859789295522132483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232358 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A232358 (2 * n + 1) : ℚ)

end

end A232772.P7859789295522132483

/-!
# A232773: Permanent of the n X n matrix with numbers 1,2,...,n^2 in order across rows.

The programs for A232773, there is no canonical definition to state claims against.
-/

/-! ## A232773.P2983829018218792084

`A006882(n)*A232788(n)`
-/

namespace A232773.P2983829018218792084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n * A232788 n

end

end A232773.P2983829018218792084

/-! ## A232773.P16048648875713838125

`A230698(∑[n])*A232788(n)`
-/

namespace A232773.P16048648875713838125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 (∑ j ∈ Finset.range (n + 1), f1 j) * A232788 n

end

end A232773.P16048648875713838125

/-! ## A232773.P3333942545646587644

`(A128882(n)+1)*A232788(n)`
-/

namespace A232773.P3333942545646587644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128882 n + 1) * A232788 n

end

end A232773.P3333942545646587644

/-! ## A232773.P8865557486932614403

`A232788(n)*A248809(C(n, 2))`
-/

namespace A232773.P8865557486932614403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232788 n * A248809 (Nat.choose n 2)

end

end A232773.P8865557486932614403

/-! ## A232773.P16959608439172203500

`A172089(∑[n]+1)*A232788(n)`
-/

namespace A232773.P16959608439172203500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172089 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A232788 n

end

end A232773.P16959608439172203500

/-!
# A232775: Number of (n+1)X(1+1) 0..2 arrays x(i,j) with row sums sum{j*x(i,j), j=1..1+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A232775, there is no canonical definition to state claims against.
-/

/-! ## A232775.P646100358383192000

`A232778(∑[n]+1)`
-/

namespace A232775.P646100358383192000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232778 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232775.P646100358383192000

/-! ## A232775.P6875295338017977604

`or(2, A232778(A000124(n)))`
-/

namespace A232775.P6875295338017977604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A232778 (A000124 n).toNat)

end

end A232775.P6875295338017977604

/-! ## A232775.P16207943416766824589

`record[A232778(A166017(n+1))]`
-/

namespace A232775.P16207943416766824589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232778 (A166017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232775.P16207943416766824589

/-! ## A232775.P8815760618640467572

`record[A232778(A286235(n+1))]`
-/

namespace A232775.P8815760618640467572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232778 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232775.P8815760618640467572

/-! ## A232775.P5912214777967987392

`record[A010054(n)*A232778(n+1)]`
-/

namespace A232775.P5912214777967987392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232775.P5912214777967987392

/-!
# A232776: Number of (n+1)X(2+1) 0..2 arrays x(i,j) with row sums sum{j*x(i,j), j=1..2+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A232776, there is no canonical definition to state claims against.
-/

/-! ## A232776.P10759550817029240934

`A232778(∑[n+1]+2)`
-/

namespace A232776.P10759550817029240934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232778 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232776.P10759550817029240934

/-! ## A232776.P12977742481208779816

`record[A232778(A166017(n+1)+1)]`
-/

namespace A232776.P12977742481208779816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232778 (A166017 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232776.P12977742481208779816

/-! ## A232776.P657674905866906898

`record[A232778(A286235(n+1)+1)]`
-/

namespace A232776.P657674905866906898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232778 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232776.P657674905866906898

/-!
# A232777: Number of (n+1)X(3+1) 0..2 arrays x(i,j) with row sums sum{j*x(i,j), j=1..3+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A232777, there is no canonical definition to state claims against.
-/

/-! ## A232777.P123234235174530994

`A232778(∑[n+2]+4)`
-/

namespace A232777.P123234235174530994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232778 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232777.P123234235174530994

/-! ## A232777.P6221401992047850451

`or(floor(2*ϕ*n)%2, A232778(A167614(n+1)))`
-/

namespace A232777.P6221401992047850451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod ⌊2 * (Real.goldenRatio * (n : ℝ))⌋ 2) (A232778 (A167614 (n + 1)).toNat)

end

end A232777.P6221401992047850451

/-! ## A232777.P363817595867261854

`A232778(A167614(n+1))+A035585(n)`
-/

namespace A232777.P363817595867261854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232778 (A167614 (n + 1)).toNat + A035585 n

end

end A232777.P363817595867261854

/-!
# A232779: Sum of iterated logs; a(n) = 0 if n = 0; otherwise n + a(floor(log_2(n))).

The programs for A232779, the canonical program `A232779.P16284996408245554557` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232779 has offset 0).

The definition of A232779 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+a(floor(log2(n)))` (program `A232779.P16284996408245554557`, by `A232779.P16284996408245554557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A232779.P16284996408245554557

`n+a(floor(log2(n)))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A232779

/-- `n+a(floor(log2(n)))` -/
def P16284996408245554557.Spec : Prop :=
  ∀ n, (P16284996408245554557.a n : ℤ) = A232779 n

theorem P16284996408245554557.correct : P16284996408245554557.Spec := by
  intro n
  simp only [A232779]

end A232779

/-! ## A232779.P12748363828228650698

`n-round(-a(floor(log2(n))))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A232779.P12748363828228650698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (-a (Nat.log 2 n))

end

end A232779.P12748363828228650698

namespace A232779

/-- `n-round(-a(floor(log2(n))))` -/
def P12748363828228650698.Spec : Prop :=
  ∀ n, P12748363828228650698.a n = A232779 n

end A232779

/-! ## A232779.P6865444354350467389

`a(-ceil(log2(acot(n))))+n` with `a(0)=0`
-/

namespace A232779.P6865444354350467389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (-⌈Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌉).toNat + n

end

end A232779.P6865444354350467389

namespace A232779

/-- `a(-ceil(log2(acot(n))))+n` -/
def P6865444354350467389.Spec : Prop :=
  ∀ n, (P6865444354350467389.a n : ℤ) = A232779 n

end A232779

/-! ## A232779.P6265369884160968693

`a(ceil(log2(n+1))-1)+n` with `a(0)=0`
-/

namespace A232779.P6265369884160968693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (⌈Real.logb 2 (n + 1 : ℝ)⌉ - 1).toNat + n

end

end A232779.P6265369884160968693

namespace A232779

/-- `a(ceil(log2(n+1))-1)+n` -/
def P6265369884160968693.Spec : Prop :=
  ∀ n, (P6265369884160968693.a n : ℤ) = A232779 n

end A232779

/-! ## A232779.P6636107883300826323

`n-floor(-a(∑[char[2^n]]-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A232779.P6636107883300826323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (-a (∑ j ∈ Finset.range (n + 1), f1 j - 1))

end

end A232779.P6636107883300826323

namespace A232779

/-- `n-floor(-a(∑[char[2^n]]-1))` -/
def P6636107883300826323.Spec : Prop :=
  ∀ n, P6636107883300826323.a n = A232779 n

end A232779

/-! ## A232779.P6629589135128790773

`ϕ²-(ϕ-n)-(1-a(floor(log2(n))))` with `a(0)=0`
-/

namespace A232779.P6629589135128790773
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)) - (1 - a (Nat.log 2 n))

end

end A232779.P6629589135128790773

namespace A232779

/-- `ϕ²-(ϕ-n)-(1-a(floor(log2(n))))` -/
def P6629589135128790773.Spec : Prop :=
  ∀ n, P6629589135128790773.a n = (A232779 n : ℝ)

end A232779

/-! ## A232779.P5448211444198911305

`comp[A255310(n+1)]`
-/

namespace A232779.P5448211444198911305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A232779.P5448211444198911305

namespace A232779

/-- `comp[A255310(n+1)]` -/
def P5448211444198911305.Spec : Prop :=
  ∀ n, (P5448211444198911305.a n : ℤ) = A232779 n

end A232779

/-! ## A232779.P17011454603432718721

`∑[A255309(n)]+n`
-/

namespace A232779.P17011454603432718721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A232779.P17011454603432718721

namespace A232779

/-- `∑[A255309(n)]+n` -/
def P17011454603432718721.Spec : Prop :=
  ∀ n, P17011454603432718721.a n = A232779 n

end A232779

/-! ## A232779.P14842448756863764838

`abs(a(A000523(n))+n)` with `a(0)=0`
-/

namespace A232779.P14842448756863764838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A000523 n).toNat + n

end

end A232779.P14842448756863764838

namespace A232779

/-- `abs(a(A000523(n))+n)` -/
def P14842448756863764838.Spec : Prop :=
  ∀ n, (P14842448756863764838.a n : ℤ) = A232779 n

end A232779

/-! ## A232779.P13350380364644823147

`(a(A000523(n))+n)%A000040(n+1)` with `a(0)=0`
-/

namespace A232779.P13350380364644823147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (A000523 n).toNat + (n : ℤ)) (A000040 (n + 1))

end

end A232779.P13350380364644823147

namespace A232779

/-- `(a(A000523(n))+n)%A000040(n+1)` -/
def P13350380364644823147.Spec : Prop :=
  ∀ n, P13350380364644823147.a n = A232779 n

end A232779

/-!
# A232780: Number of (n+1)X(1+1) 0..2 arrays x(i,j) with row sums sum{j^2*x(i,j), j=1..1+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A232780, there is no canonical definition to state claims against.
-/

/-! ## A232780.P13717935696332378504

`A232783(∑[n]+1)`
-/

namespace A232780.P13717935696332378504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232783 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232780.P13717935696332378504

/-! ## A232780.P1489307492947562173

`A232783(A000124(n))+char[9]`
-/

namespace A232780.P1489307492947562173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232783 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A232780.P1489307492947562173

/-! ## A232780.P10279734718104342863

`record[A010054(n)*A232783(n+1)]`
-/

namespace A232780.P10279734718104342863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232780.P10279734718104342863

/-! ## A232780.P9790088825220862330

`record[A103451(n)*A232783(n+1)]`
-/

namespace A232780.P9790088825220862330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A232783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232780.P9790088825220862330

/-! ## A232780.P15590949417937378559

`record[A232783(n+1)/A015129(n)]`
-/

namespace A232780.P15590949417937378559
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232783 (n + 1) : ℚ) / (A015129 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232780.P15590949417937378559

/-!
# A232781: Number of (n+1)X(2+1) 0..2 arrays x(i,j) with row sums sum{j^2*x(i,j), j=1..2+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A232781, there is no canonical definition to state claims against.
-/

/-! ## A232781.P2591109761424594374

`A232783(∑[n+1]+2)`
-/

namespace A232781.P2591109761424594374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232783 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232781.P2591109761424594374

/-! ## A232781.P5244973660651595479

`record[A010054(n)*A232783(n+2)]`
-/

namespace A232781.P5244973660651595479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232783 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232781.P5244973660651595479

/-! ## A232781.P13042146676724077837

`record[gcd(A002262(n), A232783(n+2))]`
-/

namespace A232781.P13042146676724077837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A232783 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232781.P13042146676724077837

/-! ## A232781.P9896478455782238695

`record[A232783(n+2)^(A113216(n)%2)]`
-/

namespace A232781.P9896478455782238695
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232783 (n + 2) : ℚ) ^ (Int.tmod (A113216 n) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232781.P9896478455782238695

/-!
# A232782: Number of (n+1)X(3+1) 0..2 arrays x(i,j) with row sums sum{j^2*x(i,j), j=1..3+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A232782, there is no canonical definition to state claims against.
-/

/-! ## A232782.P1713181028045343626

`A232783(∑[n+2]+4)`
-/

namespace A232782.P1713181028045343626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232783 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232782.P1713181028045343626

/-! ## A232782.P3798764790291883480

`A232783(A167614(n+1))+A036631(n)`
-/

namespace A232782.P3798764790291883480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232783 (A167614 (n + 1)).toNat + A036631 n

end

end A232782.P3798764790291883480

/-! ## A232782.P6676096581490992276

`A232783(A167614(n+1))+A036632(n)`
-/

namespace A232782.P6676096581490992276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232783 (A167614 (n + 1)).toNat + A036632 n

end

end A232782.P6676096581490992276

/-!
# A232784: Number of (n+1)X(1+1) 0..2 arrays x(i,j) with row sums sum{j^3*x(i,j), j=1..1+1} nondecreasing, and column sums sum{i^3*x(i,j), i=1..n+1} nondecreasing.

The programs for A232784, there is no canonical definition to state claims against.
-/

/-! ## A232784.P14253633538511337279

`A232787(∑[n]+1)`
-/

namespace A232784.P14253633538511337279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232787 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232784.P14253633538511337279

/-! ## A232784.P11848025627360672965

`A232787(A000124(n))+char[13]`
-/

namespace A232784.P11848025627360672965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232787 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A232784.P11848025627360672965

/-! ## A232784.P15019342450648560517

`record[A010054(n)*A232787(n+1)]`
-/

namespace A232784.P15019342450648560517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232784.P15019342450648560517

/-! ## A232784.P7113722442018182453

`record[A103451(n)*A232787(n+1)]`
-/

namespace A232784.P7113722442018182453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A232787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232784.P7113722442018182453

/-! ## A232784.P1041431524068910775

`record[A232787(n+1)/A157640(n)]`
-/

namespace A232784.P1041431524068910775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232787 (n + 1) : ℚ) / (A157640 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232784.P1041431524068910775

/-!
# A232785: Number of (n+1)X(2+1) 0..2 arrays x(i,j) with row sums sum{j^3*x(i,j), j=1..2+1} nondecreasing, and column sums sum{i^3*x(i,j), i=1..n+1} nondecreasing.

The programs for A232785, there is no canonical definition to state claims against.
-/

/-! ## A232785.P11285803967551662086

`A232787(∑[n+1]+2)`
-/

namespace A232785.P11285803967551662086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232787 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232785.P11285803967551662086

/-! ## A232785.P9426132712253044812

`record[A010054(n)*A232787(n+2)]`
-/

namespace A232785.P9426132712253044812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232787 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232785.P9426132712253044812

/-! ## A232785.P6844232656106747266

`or(char[1], A232787(A000096(n+1)))`
-/

namespace A232785.P6844232656106747266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A232787 (A000096 (n + 1)).toNat)

end

end A232785.P6844232656106747266

/-! ## A232785.P12900927670158131864

`record[A232787(A181591(3*n+2)+2)]`
-/

namespace A232785.P12900927670158131864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232787 (A181591 (3 * n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232785.P12900927670158131864

/-!
# A232786: Number of (n+1)X(3+1) 0..2 arrays x(i,j) with row sums sum{j^3*x(i,j), j=1..3+1} nondecreasing, and column sums sum{i^3*x(i,j), i=1..n+1} nondecreasing.

The programs for A232786, there is no canonical definition to state claims against.
-/

/-! ## A232786.P6029953979274137020

`A232787(∑[n+2]+4)`
-/

namespace A232786.P6029953979274137020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232787 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232786.P6029953979274137020

/-! ## A232786.P17756401445736294520

`lcm((-1)^n, A232787(A167614(n+1)))`
-/

namespace A232786.P17756401445736294520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A232787 (A167614 (n + 1)).toNat)

end

end A232786.P17756401445736294520

/-! ## A232786.P5583009931828379133

`A232787(A167614(n+1))+A059995(n)`
-/

namespace A232786.P5583009931828379133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232787 (A167614 (n + 1)).toNat + A059995 n

end

end A232786.P5583009931828379133

/-! ## A232786.P11279422702110643772

`A055642(n)*A232787(A167614(n+1))`
-/

namespace A232786.P11279422702110643772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A232787 (A167614 (n + 1)).toNat

end

end A232786.P11279422702110643772

/-!
# A232788: A232773(n) / A006882(n): Permanent of the n X n matrix with elements [1,2,...,n^2], divided by n!!.

The programs for A232788, there is no canonical definition to state claims against.
-/

/-! ## A232788.P18066357966637398377

`A232773(n)/A006882(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A232788.P18066357966637398377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232773 n : ℚ) / (A006882 n : ℚ)

end

end A232788.P18066357966637398377

/-! ## A232788.P15534347580920336749

`A232773(n)/A230698(∑[n])`
-/

namespace A232788.P15534347580920336749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232773 n : ℚ) / (A230698 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A232788.P15534347580920336749

/-! ## A232788.P14376206797033413700

`A232773(n)/(A128882(n)+1)`
-/

namespace A232788.P14376206797033413700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232773 n : ℚ) / (A128882 n + 1 : ℚ)

end

end A232788.P14376206797033413700

/-! ## A232788.P4919663263895794536

`A232773(n)/A248809(C(n, 2))`
-/

namespace A232788.P4919663263895794536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232773 n : ℚ) / (A248809 (Nat.choose n 2) : ℚ)

end

end A232788.P4919663263895794536

/-! ## A232788.P12874819332320400603

`A232773(n)/A172089(∑[n]+1)`
-/

namespace A232788.P12874819332320400603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232773 n : ℚ) / (A172089 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ)

end

end A232788.P12874819332320400603

/-!
# A232789: Number of (n+1)X(n+1) 0..1 arrays x(i,j) with row sums sum{j^4*x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^4*x(i,j), i=1..n+1} nondecreasing.

The programs for A232789, there is no canonical definition to state claims against.
-/

/-! ## A232789.P13867175444003977805

`A232797(∑[4*n]+1)`
-/

namespace A232789.P13867175444003977805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232789.P13867175444003977805

/-! ## A232789.P9560756394151771565

`or(char[1], A232797(A001844(n)))`
-/

namespace A232789.P9560756394151771565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A232797 (A001844 n).toNat)

end

end A232789.P9560756394151771565

/-! ## A232789.P15867354445315141117

`record[gcd(A003987(n), A232797(n+1))]`
-/

namespace A232789.P15867354445315141117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A232797 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232789.P15867354445315141117

/-! ## A232789.P553349731459972705

`record[A000005(2*n+1)%2*A232797(n+1)]`
-/

namespace A232789.P553349731459972705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (2 * n + 1)) 2 * A232797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232789.P553349731459972705

/-!
# A232790: Number of (n+1)X(1+1) 0..1 arrays x(i,j) with row sums sum{j^4*x(i,j), j=1..1+1} nondecreasing, and column sums sum{i^4*x(i,j), i=1..n+1} nondecreasing.

The programs for A232790, there is no canonical definition to state claims against.
-/

/-! ## A232790.P13434195860958240865

`A232797(∑[n]+1)`
-/

namespace A232790.P13434195860958240865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232790.P13434195860958240865

/-! ## A232790.P11311625625232334873

`and(-1, A232797(A000124(n)))`
-/

namespace A232790.P11311625625232334873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A232797 (A000124 n).toNat)

end

end A232790.P11311625625232334873

/-! ## A232790.P8285841796326929020

`record[A232797(A257504(n+1))]`
-/

namespace A232790.P8285841796326929020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (A257504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232790.P8285841796326929020

/-! ## A232790.P5241940456296138442

`record[A010054(n)*A232797(n+1)]`
-/

namespace A232790.P5241940456296138442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232790.P5241940456296138442

/-! ## A232790.P9603151470996318080

`record[A103451(n)*A232797(n+1)]`
-/

namespace A232790.P9603151470996318080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A232797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232790.P9603151470996318080

/-!
# A232791: Number of (n+1)X(2+1) 0..1 arrays x(i,j) with row sums sum{j^4*x(i,j), j=1..2+1} nondecreasing, and column sums sum{i^4*x(i,j), i=1..n+1} nondecreasing.

The programs for A232791, there is no canonical definition to state claims against.
-/

/-! ## A232791.P6402182660914640958

`A232797(∑[n+1]+2)`
-/

namespace A232791.P6402182660914640958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232791.P6402182660914640958

/-! ## A232791.P17847976961966159726

`record[A232797(A257504(n+1)+1)]`
-/

namespace A232791.P17847976961966159726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (A257504 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232791.P17847976961966159726

/-! ## A232791.P15673985570560024335

`record[A010054(n)*A232797(n+2)]`
-/

namespace A232791.P15673985570560024335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232797 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232791.P15673985570560024335

/-! ## A232791.P3635001899679911345

`record[A120113(n)*A232797(n+3)]`
-/

namespace A232791.P3635001899679911345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120113 n * A232797 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232791.P3635001899679911345

/-! ## A232791.P9402885312669598167

`record[A132013(n)*A232797(n+3)]`
-/

namespace A232791.P9402885312669598167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132013 n * A232797 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232791.P9402885312669598167

/-!
# A232792: Number of (n+1)X(3+1) 0..1 arrays x(i,j) with row sums sum{j^4*x(i,j), j=1..3+1} nondecreasing, and column sums sum{i^4*x(i,j), i=1..n+1} nondecreasing.

The programs for A232792, there is no canonical definition to state claims against.
-/

/-! ## A232792.P2663946773553347344

`A232797(∑[n+2]+4)`
-/

namespace A232792.P2663946773553347344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232792.P2663946773553347344

/-! ## A232792.P2812404707848233441

`and(-1, A232797(A167614(n+1)))`
-/

namespace A232792.P2812404707848233441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A232797 (A167614 (n + 1)).toNat)

end

end A232792.P2812404707848233441

/-! ## A232792.P4321931382556974423

`A232797(A167614(n+1))+A025443(n)`
-/

namespace A232792.P4321931382556974423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (A167614 (n + 1)).toNat + A025443 n

end

end A232792.P4321931382556974423

/-! ## A232792.P14458038927020139455

`A232797(A167614(n+1))+A025469(n)`
-/

namespace A232792.P14458038927020139455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (A167614 (n + 1)).toNat + A025469 n

end

end A232792.P14458038927020139455

/-! ## A232792.P2931090303567014200

`A232797(A167614(n+1))+A086015(n)`
-/

namespace A232792.P2931090303567014200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (A167614 (n + 1)).toNat + A086015 n

end

end A232792.P2931090303567014200

/-!
# A232793: Number of (n+1)X(4+1) 0..1 arrays x(i,j) with row sums sum{j^4*x(i,j), j=1..4+1} nondecreasing, and column sums sum{i^4*x(i,j), i=1..n+1} nondecreasing.

The programs for A232793, there is no canonical definition to state claims against.
-/

/-! ## A232793.P8142997327948202425

`A232797(∑[n+3]+7)`
-/

namespace A232793.P8142997327948202425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A232793.P8142997327948202425

/-! ## A232793.P6541325294779426127

`A264668(n)+A232797(A055999(n)+10)`
-/

namespace A232793.P6541325294779426127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A232797 (A055999 n + 10).toNat

end

end A232793.P6541325294779426127

/-! ## A232793.P7028318506612489530

`lcm(A190867(n+1), A232797(A055999(n)+10))`
-/

namespace A232793.P7028318506612489530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A190867 (n + 1)) (A232797 (A055999 n + 10).toNat)

end

end A232793.P7028318506612489530

/-!
# A232794: Number of (n+1)X(5+1) 0..1 arrays x(i,j) with row sums sum{j^4*x(i,j), j=1..5+1} nondecreasing, and column sums sum{i^4*x(i,j), i=1..n+1} nondecreasing.

The programs for A232794, there is no canonical definition to state claims against.
-/

/-! ## A232794.P2741311271104236993

`A232797(A167499(n+3))`
-/

namespace A232794.P2741311271104236993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (A167499 (n + 3)).toNat

end

end A232794.P2741311271104236993

/-! ## A232794.P139388322652857204

`A232797(A155212(n)+13)`
-/

namespace A232794.P139388322652857204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (A155212 n + 13).toNat

end

end A232794.P139388322652857204

/-! ## A232794.P5827790467424139569

`A232797(A056000(n)+15)`
-/

namespace A232794.P5827790467424139569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (A056000 n + 15).toNat

end

end A232794.P5827790467424139569

/-! ## A232794.P1772185727578157726

`A232797(eq[7, A066657(n)])`
-/

namespace A232794.P1772185727578157726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232794.P1772185727578157726

/-! ## A232794.P13115886775833673491

`A232797(A167614(n+3)+2)`
-/

namespace A232794.P13115886775833673491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (A167614 (n + 3) + 2).toNat

end

end A232794.P13115886775833673491

/-!
# A232795: Number of (n+1) X (6+1) 0..1 arrays x(i,j) with row sums Sum_{j=1..6+1} j^4*x(i,j) nondecreasing, and column sums Sum_{i=1..n+1} i^4*x(i,j) nondecreasing.

The programs for A232795, there is no canonical definition to state claims against.
-/

/-! ## A232795.P4798153662727500160

`A232797(A056115(n)+21)`
-/

namespace A232795.P4798153662727500160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (A056115 n + 21).toNat

end

end A232795.P4798153662727500160

/-! ## A232795.P748118559145759427

`A232797(A000096(n+4)+7)`
-/

namespace A232795.P748118559145759427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (A000096 (n + 4) + 7).toNat

end

end A232795.P748118559145759427

/-! ## A232795.P2451917889820485114

`A232797(A000217(n+5)+6)`
-/

namespace A232795.P2451917889820485114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (A000217 (n + 5) + 6).toNat

end

end A232795.P2451917889820485114

/-! ## A232795.P7736610788528019871

`A232797(A246172(n+1)+20)`
-/

namespace A232795.P7736610788528019871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (A246172 (n + 1) + 20).toNat

end

end A232795.P7736610788528019871

/-! ## A232795.P3702402249304070275

`A232797(eq[7, A131818(n+1)])`
-/

namespace A232795.P3702402249304070275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232795.P3702402249304070275

/-!
# A232796: Number of (n+1) X (7+1) 0..1 arrays x(i,j) with row sums Sum_{j=1..7+1} j^4*x(i,j) nondecreasing, and column sums Sum_{i=1..n+1} i^4*x(i,j) nondecreasing.

The programs for A232796, there is no canonical definition to state claims against.
-/

/-! ## A232796.P12085790974697211776

`A232797(A374008(n+1))`
-/

namespace A232796.P12085790974697211776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (A374008 (n + 1)).toNat

end

end A232796.P12085790974697211776

/-! ## A232796.P11375506543842406221

`A232797(A055999(n+4))`
-/

namespace A232796.P11375506543842406221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (A055999 (n + 4)).toNat

end

end A232796.P11375506543842406221

/-! ## A232796.P5857222858921797970

`A232797(A056119(n)+28)`
-/

namespace A232796.P5857222858921797970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (A056119 n + 28).toNat

end

end A232796.P5857222858921797970

/-! ## A232796.P14267991556093644373

`A232797(eq[4, A219347(n)])`
-/

namespace A232796.P14267991556093644373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232796.P14267991556093644373

/-! ## A232796.P13380139780696684341

`A232797(eq[6, A193592(n)])`
-/

namespace A232796.P13380139780696684341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232796.P13380139780696684341

/-!
# A232797: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays x(i,j) with row sums sum{j^4*x(i,j), j=1..k+1} nondecreasing, and column sums sum{i^4*x(i,j), i=1..n+1} nondecreasing.

The programs for A232797, there is no canonical definition to state claims against.
-/

/-! ## A232797.P7420657945043640960

`A171699(lt[A084938(n), A254883(n)])`
-/

namespace A232797.P7420657945043640960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171699 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A232797.P7420657945043640960

/-! ## A232797.P11346052185171984279

`A171699(lt[A328396(n), A053534(n)])`
-/

namespace A232797.P11346052185171984279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328396 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171699 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A232797.P11346052185171984279

/-! ## A232797.P5438393691152757484

`A171699(lt[A285524(n+4), A053534(n)])`
-/

namespace A232797.P5438393691152757484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285524 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171699 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A232797.P5438393691152757484

/-! ## A232797.P3229337188861840857

`A171699(lt[1, A350681(n)])`
-/

namespace A232797.P3229337188861840857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A232797.P3229337188861840857

/-! ## A232797.P11404475726654569862

`A350139(A098361(n))+A232860(n+1)`
-/

namespace A232797.P11404475726654569862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350139 (A098361 n).toNat + A232860 (n + 1)

end

end A232797.P11404475726654569862

