import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
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
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A359200: Triangle read by rows: T(n, k) = A358125(n,k)*binomial(n-1, k), 0 <= k <= n-1.

The programs for A359200, the canonical program `A359200.P4547510697141550794` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359200 has offset 1).

The definition of A359200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359200.P4547510697141550794

`A358125(C(row(n)+1, 2)+col(n)+1)*C(row(n), col(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A359200

/-- `A358125(C(row(n)+1, 2)+col(n)+1)*C(row(n), col(n))` -/
def P4547510697141550794.Spec : Prop :=
  ∀ n, P4547510697141550794.a n = A359200 (n + 1)

theorem P4547510697141550794.correct : P4547510697141550794.Spec := by
  intro n
  simp only [A359200, Nat.add_sub_cancel]

end A359200

/-! ## A359200.P14112415194310256610

`A007318(n)*A358125(n+1)`
-/

namespace A359200.P14112415194310256610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A358125 (n + 1)

end

end A359200.P14112415194310256610

namespace A359200

/-- `A007318(n)*A358125(n+1)` -/
def P14112415194310256610.Spec : Prop :=
  ∀ n, P14112415194310256610.a n = A359200 (n + 1)

end A359200

/-! ## A359200.P1759327414129532593

`2*A038208(n)-A154690(n)`
-/

namespace A359200.P1759327414129532593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038208 n - A154690 n

end

end A359200.P1759327414129532593

namespace A359200

/-- `2*A038208(n)-A154690(n)` -/
def P1759327414129532593.Spec : Prop :=
  ∀ n, P1759327414129532593.a n = A359200 (n + 1)

end A359200

/-! ## A359200.P10213661261105803715

`abs(A118433(n)*A358125(n+1))`
-/

namespace A359200.P10213661261105803715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118433 n * A358125 (n + 1)|

end

end A359200.P10213661261105803715

namespace A359200

/-- `abs(A118433(n)*A358125(n+1))` -/
def P10213661261105803715.Spec : Prop :=
  ∀ n, P10213661261105803715.a n = A359200 (n + 1)

end A359200

/-! ## A359200.P15947181525106508266

`floor(A143088(n)/2)*A007318(n)`
-/

namespace A359200.P15947181525106508266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143088 n : ℚ) / 2⌋ * A007318 n

end

end A359200.P15947181525106508266

namespace A359200

/-- `floor(A143088(n)/2)*A007318(n)` -/
def P15947181525106508266.Spec : Prop :=
  ∀ n, P15947181525106508266.a n = A359200 (n + 1)

end A359200

/-! ## A359200.P8818958684708516673

`A358125(n+1)/2*A028326(n)`
-/

namespace A359200.P8818958684708516673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358125 (n + 1) : ℚ) / 2 * (A028326 n : ℚ)

end

end A359200.P8818958684708516673

namespace A359200

/-- `A358125(n+1)/2*A028326(n)` -/
def P8818958684708516673.Spec : Prop :=
  ∀ n, P8818958684708516673.a n = (A359200 (n + 1) : ℚ)

end A359200

/-! ## A359200.P2089987720669395749

`A007318(n)*A264596(A089633(n))`
-/

namespace A359200.P2089987720669395749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A264596 (A089633 n).toNat

end

end A359200.P2089987720669395749

namespace A359200

/-- `A007318(n)*A264596(A089633(n))` -/
def P2089987720669395749.Spec : Prop :=
  ∀ n, P2089987720669395749.a n = A359200 (n + 1)

end A359200

/-! ## A359200.P7848659302037992341

`A004526(A028326(n))*A358125(n+1)`
-/

namespace A359200.P7848659302037992341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028326 n).toNat * A358125 (n + 1)

end

end A359200.P7848659302037992341

namespace A359200

/-- `A004526(A028326(n))*A358125(n+1)` -/
def P7848659302037992341.Spec : Prop :=
  ∀ n, P7848659302037992341.a n = A359200 (n + 1)

end A359200

/-! ## A359200.P14571126160398118986

`(A130328(n)-A130321(n))*A007318(n)`
-/

namespace A359200.P14571126160398118986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130328 n - A130321 n) * A007318 n

end

end A359200.P14571126160398118986

namespace A359200

/-- `(A130328(n)-A130321(n))*A007318(n)` -/
def P14571126160398118986.Spec : Prop :=
  ∀ n, P14571126160398118986.a n = A359200 (n + 1)

end A359200

/-! ## A359200.P6387003999880981262

`(A089633(n)+1-A059268(n))*A007318(n)`
-/

namespace A359200.P6387003999880981262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089633 n + (1 - A059268 n)) * A007318 n

end

end A359200.P6387003999880981262

namespace A359200

/-- `(A089633(n)+1-A059268(n))*A007318(n)` -/
def P6387003999880981262.Spec : Prop :=
  ∀ n, P6387003999880981262.a n = A359200 (n + 1)

end A359200

/-!
# A359201: Number of edges of regular m-polytopes for m >= 3.

The programs for A359201, there is no canonical definition to state claims against.
-/

/-! ## A359201.P3052669013876603363

`lt[A134852(A057032(2*(n+1))), A138530(n+1)]`
-/

namespace A359201.P3052669013876603363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134852 (A057032 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359201.P3052669013876603363

/-! ## A359201.P6065171011337683722

`lt[A379681(A229717(n+1)), A211110(n)]`
-/

namespace A359201.P6065171011337683722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379681 (A229717 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359201.P6065171011337683722

/-! ## A359201.P842737260257954274

`lt[A380414(A297622(n)), A032741(n)]`
-/

namespace A359201.P842737260257954274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380414 (A297622 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359201.P842737260257954274

/-! ## A359201.P3092810124322154152

`lt[A365923(A238125(n)), A365923(n)]`
-/

namespace A359201.P3092810124322154152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365923 (A238125 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365923 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359201.P3092810124322154152

/-! ## A359201.P15027289025869513078

`lt[A000216(A337389(n)), A000010(n+1)]`
-/

namespace A359201.P15027289025869513078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000216 (A337389 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359201.P15027289025869513078

/-!
# A359203: a(n) = Sum_{d|n} (n/d) * 3^(n-d).

The programs for A359203, the canonical program `A359203.P4115672258068606889` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359203 has offset 1).

The definition of A359203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359203.P4115672258068606889

`∑{d}[n+1, 3^(n+1-#)*(n+1)/#]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A359203

/-- `∑{d}[n+1, 3^(n+1-#)*(n+1)/#]` -/
def P4115672258068606889.Spec : Prop :=
  ∀ n, P4115672258068606889.a n = (A359203 (n + 1) : ℚ)

end A359203

/-! ## A359203.P14268991843057863835

`∑{d}[n+1, (n+1)/#*3^(n+1-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359203.P14268991843057863835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (3 : ℚ) ^ ((n + 1 : ℤ) - (d : ℤ) : ℤ)

end

end A359203.P14268991843057863835

namespace A359203

/-- `∑{d}[n+1, (n+1)/#*3^(n+1-#)]` -/
def P14268991843057863835.Spec : Prop :=
  ∀ n, P14268991843057863835.a n = (A359203 (n + 1) : ℚ)

end A359203

/-!
# A359204: a(n) = Sum_{d|n} (n/d) * 4^(n-d).

The programs for A359204, the canonical program `A359204.P2501900151701333064` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359204 has offset 1).

The definition of A359204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359204.P2501900151701333064

`∑{d}[n+1, 4^(n+1-#)*(n+1)/#]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A359204

/-- `∑{d}[n+1, 4^(n+1-#)*(n+1)/#]` -/
def P2501900151701333064.Spec : Prop :=
  ∀ n, P2501900151701333064.a n = (A359204 (n + 1) : ℚ)

end A359204

/-! ## A359204.P2318966683626962784

`∑{d}[n+1, (n+1)/#*4^(n+1-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359204.P2318966683626962784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (4 : ℚ) ^ ((n + 1 : ℤ) - (d : ℤ) : ℤ)

end

end A359204.P2318966683626962784

namespace A359204

/-- `∑{d}[n+1, (n+1)/#*4^(n+1-#)]` -/
def P2318966683626962784.Spec : Prop :=
  ∀ n, P2318966683626962784.a n = (A359204 (n + 1) : ℚ)

end A359204

/-!
# A359205: Numbers that have at least two non-overlapping pairs of consecutive ones in their binary representation.

The programs for A359205, there is no canonical definition to state claims against.
-/

/-! ## A359205.P14948833213841818506

`lt[2, A278161(n)]`
-/

namespace A359205.P14948833213841818506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359205.P14948833213841818506

/-! ## A359205.P10385883597765565053

`lt[3, A227349(n)]`
-/

namespace A359205.P10385883597765565053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359205.P10385883597765565053

/-! ## A359205.P13260097938836721657

`lt[3, A246028(n)]`
-/

namespace A359205.P13260097938836721657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359205.P13260097938836721657

/-! ## A359205.P8151115367629808247

`lt[3, A284580(n)]`
-/

namespace A359205.P8151115367629808247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284580 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359205.P8151115367629808247

/-! ## A359205.P8572296878336090016

`lt[5, A246685(n)]`
-/

namespace A359205.P8572296878336090016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246685 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359205.P8572296878336090016

/-!
# A359206: a(n) = Sum_{d|n} 4^(n-d).

The programs for A359206, the canonical program `A359206.P11980087203427043767` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359206 has offset 1).

The definition of A359206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359206.P11980087203427043767

`∑{d}[n+1, 4^(n+1-#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A359206

/-- `∑{d}[n+1, 4^(n+1-#)]` -/
def P11980087203427043767.Spec : Prop :=
  ∀ n, P11980087203427043767.a n = (A359206 (n + 1) : ℚ)

end A359206

/-! ## A359206.P10639618322597630279

`and(∑[A000302(n)], A074854(2*(n+1)))`
-/

namespace A359206.P10639618322597630279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A074854 (2 * (n + 1)))

end

end A359206.P10639618322597630279

namespace A359206

/-- `and(∑[A000302(n)], A074854(2*(n+1)))` -/
def P10639618322597630279.Spec : Prop :=
  ∀ n, P10639618322597630279.a n = A359206 (n + 1)

end A359206

/-! ## A359206.P15868920434594294682

`and(A001045(2*(n+1)), A074854(2*(n+1)))`
-/

namespace A359206.P15868920434594294682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001045 (2 * (n + 1))) (A074854 (2 * (n + 1)))

end

end A359206.P15868920434594294682

namespace A359206

/-- `and(A001045(2*(n+1)), A074854(2*(n+1)))` -/
def P15868920434594294682.Spec : Prop :=
  ∀ n, P15868920434594294682.a n = A359206 (n + 1)

end A359206

/-! ## A359206.P14936195862303844310

`A000695(A074854(n+1))`
-/

namespace A359206.P14936195862303844310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A074854 (n + 1)).toNat

end

end A359206.P14936195862303844310

namespace A359206

/-- `A000695(A074854(n+1))` -/
def P14936195862303844310.Spec : Prop :=
  ∀ n, P14936195862303844310.a n = A359206 (n + 1)

end A359206

/-! ## A359206.P1287486654269338967

`A000695(Δ[A178965(n)]-A178965(n))`
-/

namespace A359206.P1287486654269338967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (f1 (n + 1) - f1 n - A178965 n).toNat

end

end A359206.P1287486654269338967

namespace A359206

/-- `A000695(Δ[A178965(n)]-A178965(n))` -/
def P1287486654269338967.Spec : Prop :=
  ∀ n, P1287486654269338967.a n = A359206 (n + 1)

end A359206

/-!
# A359208: Maximum value reached when starting from n during iteration of the map x->A359194(x) (binary complement of 3n), or -1 if infinite.

The programs for A359208, there is no canonical definition to state claims against.
-/

/-! ## A359208.P4634995574558313318

`A171460(lcm(n, comp[or(n, n+3)]))`
-/

namespace A359208.P4634995574558313318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171460 (Nat.lcm n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A359208.P4634995574558313318

/-!
# A359209: Numbers that under iteration of the map x->A359194(x) (binary complement of 3n) until 0 is reached never exceed the initial term.

The programs for A359209, there is no canonical definition to state claims against.
-/

/-! ## A359209.P3556755598753071239

`eq[0, A359255(n)]`
-/

namespace A359209.P3556755598753071239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359209.P3556755598753071239

/-! ## A359209.P794743097332450257

`lt[A359255(A028310(n)), 1]`
-/

namespace A359209.P794743097332450257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359255 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359209.P794743097332450257

/-! ## A359209.P10208450541912397523

`lt[A359255(n), acot(A003817(n))]`
-/

namespace A359209.P10208450541912397523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359255 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A003817 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A359209.P10208450541912397523

/-! ## A359209.P8389707011614135126

`lt[A359255(n), acot(A006257(n))]`
-/

namespace A359209.P8389707011614135126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359255 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A006257 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A359209.P8389707011614135126

/-! ## A359209.P3947054634401786326

`lt[A359255(n), acot(A070939(n))]`
-/

namespace A359209.P3947054634401786326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359255 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A070939 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A359209.P3947054634401786326

/-! ## A359209.P13419063951157731137

`lt[A359255(n), acot(A163617(n))]`
-/

namespace A359209.P13419063951157731137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359255 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A163617 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A359209.P13419063951157731137

/-! ## A359209.P13063839157109861312

`lt[A359255(n), acot(A358668(n))]`
-/

namespace A359209.P13063839157109861312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359255 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A358668 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A359209.P13063839157109861312

/-! ## A359209.P13300591275891034519

`lt[A359255(n), acot(A359194(n))]`
-/

namespace A359209.P13300591275891034519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359255 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A359194 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A359209.P13300591275891034519

/-! ## A359209.P18067846274646227299

`lt[A359255(n), acot(A359207(n))]`
-/

namespace A359209.P18067846274646227299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359255 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A359207 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A359209.P18067846274646227299

/-! ## A359209.P10104438267090480688

`lt[A359255(n), acot(A359250(n))]`
-/

namespace A359209.P10104438267090480688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359255 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A359250 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A359209.P10104438267090480688

/-!
# A359210: Number of m^k == 1 (mod p) for 0 < m,k < p where p is the n-th prime.

The programs for A359210, there is no canonical definition to state claims against.
-/

/-! ## A359210.P11833081244196705051

`A018804(p?[xor(1, n)+1]-1)`
-/

namespace A359210.P11833081244196705051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A359210.P11833081244196705051

/-! ## A359210.P6951242770879589447

`A018804(p?[n%3+n]-1)`
-/

namespace A359210.P6951242770879589447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A359210.P6951242770879589447

/-! ## A359210.P10577342323440721171

`A018804(record[∏{p}[n+1, #-1]])`
-/

namespace A359210.P10577342323440721171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A359210.P10577342323440721171

/-! ## A359210.P7768128065542925464

`A018804(p?[round(sqrt(n)+n)]-1)`
-/

namespace A359210.P7768128065542925464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A359210.P7768128065542925464

/-! ## A359210.P7270108349622059906

`A018804(eq[2, ∏{e}[n+1, #+1]])`
-/

namespace A359210.P7270108349622059906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A359210.P7270108349622059906

/-! ## A359210.P12158192106007571988

`A018804(eq[n, ∏{p}[n+1, #-1]])`
-/

namespace A359210.P12158192106007571988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359210.P12158192106007571988

/-! ## A359210.P17165115829384065109

`A018804(eq[1, ∑{p}[n+1, ceil(n/#)]])`
-/

namespace A359210.P17165115829384065109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), ⌈(n : ℚ) / (p : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359210.P17165115829384065109

/-! ## A359210.P2886683628602930150

`A018804(eq[n, 2*(n+1)-∑{d}[n+1, #]])`
-/

namespace A359210.P2886683628602930150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359210.P2886683628602930150

/-! ## A359210.P12034427947530638645

`A018804(eq[1, ∏{p}[n+1, (n+1)/#]%(n+1)])`
-/

namespace A359210.P12034427947530638645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f3 n), (n + 1 : ℚ) / (p : ℚ))) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359210.P12034427947530638645

/-! ## A359210.P13440615014343914633

`A018804(A006093(n+1))`
-/

namespace A359210.P13440615014343914633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (A006093 (n + 1)).toNat

end

end A359210.P13440615014343914633

/-!
# A359211: a(n) = tau(3*n-1)/2, where tau(n) = number of divisors of n, cf. A000005.

The programs for A359211, the canonical program `A359211.P16936489386664645065` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359211 has offset 1).

The definition of A359211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359211.P16936489386664645065

`A000005(3*(n+1)-1)/2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A359211

/-- `A000005(3*(n+1)-1)/2` -/
def P16936489386664645065.Spec : Prop :=
  ∀ n, P16936489386664645065.a n = (A359211 (n + 1) : ℚ)

end A359211

/-! ## A359211.P14249467638168453190

`∏{e}[3*n+2, #+1]/2`
-/

namespace A359211.P14249467638168453190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2

end

end A359211.P14249467638168453190

namespace A359211

/-- `∏{e}[3*n+2, #+1]/2` -/
def P14249467638168453190.Spec : Prop :=
  ∀ n, P14249467638168453190.a n = (A359211 (n + 1) : ℚ)

end A359211

/-! ## A359211.P10766734002140970424

`∑{d}[3*n+2, (#-1)%3]`
-/

namespace A359211.P10766734002140970424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod ((d : ℤ) - 1) 3

end

end A359211.P10766734002140970424

namespace A359211

/-- `∑{d}[3*n+2, (#-1)%3]` -/
def P10766734002140970424.Spec : Prop :=
  ∀ n, P10766734002140970424.a n = A359211 (n + 1)

end A359211

/-! ## A359211.P4207334944507408636

`A372714(n+1)/2`
-/

namespace A359211.P4207334944507408636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372714 (n + 1) : ℚ) / 2

end

end A359211.P4207334944507408636

namespace A359211

/-- `A372714(n+1)/2` -/
def P4207334944507408636.Spec : Prop :=
  ∀ n, P4207334944507408636.a n = (A359211 (n + 1) : ℚ)

end A359211

/-! ## A359211.P18208855120781264386

`floor(A000005(2*(n+1)+n)/2)`
-/

namespace A359211.P18208855120781264386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (2 * (n + 1) + n) : ℚ) / 2⌋

end

end A359211.P18208855120781264386

namespace A359211

/-- `floor(A000005(2*(n+1)+n)/2)` -/
def P18208855120781264386.Spec : Prop :=
  ∀ n, P18208855120781264386.a n = A359211 (n + 1)

end A359211

/-! ## A359211.P10266524940848474708

`ceil(A000005(4*n-(n-2))/2)`
-/

namespace A359211.P10266524940848474708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 ((4 * n : ℤ) - ((n : ℤ) - 2)).toNat : ℚ) / 2⌉

end

end A359211.P10266524940848474708

namespace A359211

/-- `ceil(A000005(4*n-(n-2))/2)` -/
def P10266524940848474708.Spec : Prop :=
  ∀ n, P10266524940848474708.a n = A359211 (n + 1)

end A359211

/-! ## A359211.P1289530881143715892

`∑{d}[3*n+2, log2(gcd(2, A001222(#)))]`
-/

namespace A359211.P1289530881143715892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (Int.gcd 2 (A001222 d) : ℝ)

end

end A359211.P1289530881143715892

namespace A359211

/-- `∑{d}[3*n+2, log2(gcd(2, A001222(#)))]` -/
def P1289530881143715892.Spec : Prop :=
  ∀ n, P1289530881143715892.a n = (A359211 (n + 1) : ℝ)

end A359211

/-! ## A359211.P10344253051640900420

`∑{d}[3*n+2, A158388(n)²^#]/2`
-/

namespace A359211.P10344253051640900420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (A158388 n ^ 2) ^ d : ℤ) : ℚ) / 2

end

end A359211.P10344253051640900420

namespace A359211

/-- `∑{d}[3*n+2, A158388(n)²^#]/2` -/
def P10344253051640900420.Spec : Prop :=
  ∀ n, P10344253051640900420.a n = (A359211 (n + 1) : ℚ)

end A359211

/-! ## A359211.P16325691546092118851

`A014682(A000005(3*n+2))`
-/

namespace A359211.P16325691546092118851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000005 (3 * n + 2)).toNat

end

end A359211.P16325691546092118851

namespace A359211

/-- `A014682(A000005(3*n+2))` -/
def P16325691546092118851.Spec : Prop :=
  ∀ n, P16325691546092118851.a n = A359211 (n + 1)

end A359211

/-! ## A359211.P14415793425467719859

`A004526(A000005(2*n+n+2))`
-/

namespace A359211.P14415793425467719859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (2 * n + (n + 2))).toNat

end

end A359211.P14415793425467719859

namespace A359211

/-- `A004526(A000005(2*n+n+2))` -/
def P14415793425467719859.Spec : Prop :=
  ∀ n, P14415793425467719859.a n = A359211 (n + 1)

end A359211

/-! ## A359211.P172718453565147796

`A004524(A000005(Δ[n²]+n+1)+1)`
-/

namespace A359211.P172718453565147796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ) + 1).toNat + 1).toNat

end

end A359211.P172718453565147796

namespace A359211

/-- `A004524(A000005(Δ[n²]+n+1)+1)` -/
def P172718453565147796.Spec : Prop :=
  ∀ n, P172718453565147796.a n = A359211 (n + 1)

end A359211

/-! ## A359211.P5023680430424199941

`A292286(3*n+2)`
-/

namespace A359211.P5023680430424199941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292286 (3 * n + 2)

end

end A359211.P5023680430424199941

namespace A359211

/-- `A292286(3*n+2)` -/
def P5023680430424199941.Spec : Prop :=
  ∀ n, P5023680430424199941.a n = A359211 (n + 1)

end A359211

/-! ## A359211.P9620638317912381074

`A293895(3*n+2)`
-/

namespace A359211.P9620638317912381074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (3 * n + 2)

end

end A359211.P9620638317912381074

namespace A359211

/-- `A293895(3*n+2)` -/
def P9620638317912381074.Spec : Prop :=
  ∀ n, P9620638317912381074.a n = A359211 (n + 1)

end A359211

/-! ## A359211.P1724686051393074595

`A359239(2*(n+1))-A359324(n+1)`
-/

namespace A359211.P1724686051393074595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359239 (2 * (n + 1)) - A359324 (n + 1)

end

end A359211.P1724686051393074595

namespace A359211

/-- `A359239(2*(n+1))-A359324(n+1)` -/
def P1724686051393074595.Spec : Prop :=
  ∀ n, P1724686051393074595.a n = A359211 (n + 1)

end A359211

/-! ## A359211.P6855071440686126979

`A320111(6*n+4)/2`
-/

namespace A359211.P6855071440686126979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320111 (6 * n + 4) : ℚ) / 2

end

end A359211.P6855071440686126979

namespace A359211

/-- `A320111(6*n+4)/2` -/
def P6855071440686126979.Spec : Prop :=
  ∀ n, P6855071440686126979.a n = (A359211 (n + 1) : ℚ)

end A359211

/-! ## A359211.P7744390073437132797

`A001817(3*n+2)`
-/

namespace A359211.P7744390073437132797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (3 * n + 2)

end

end A359211.P7744390073437132797

namespace A359211

/-- `A001817(3*n+2)` -/
def P7744390073437132797.Spec : Prop :=
  ∀ n, P7744390073437132797.a n = A359211 (n + 1)

end A359211

/-! ## A359211.P10042593438790509320

`A001822(3*n+2)`
-/

namespace A359211.P10042593438790509320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (3 * n + 2)

end

end A359211.P10042593438790509320

namespace A359211

/-- `A001822(3*n+2)` -/
def P10042593438790509320.Spec : Prop :=
  ∀ n, P10042593438790509320.a n = A359211 (n + 1)

end A359211

/-! ## A359211.P4272485103203709716

`A038548(3*n+2)`
-/

namespace A359211.P4272485103203709716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (3 * n + 2)

end

end A359211.P4272485103203709716

namespace A359211

/-- `A038548(3*n+2)` -/
def P4272485103203709716.Spec : Prop :=
  ∀ n, P4272485103203709716.a n = A359211 (n + 1)

end A359211

/-! ## A359211.P15776182382120055866

`A056924(3*n+2)`
-/

namespace A359211.P15776182382120055866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (3 * n + 2)

end

end A359211.P15776182382120055866

namespace A359211

/-- `A056924(3*n+2)` -/
def P15776182382120055866.Spec : Prop :=
  ∀ n, P15776182382120055866.a n = A359211 (n + 1)

end A359211

/-! ## A359211.P11539704748682622778

`A188902(3*n+2)`
-/

namespace A359211.P11539704748682622778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188902 (3 * n + 2)

end

end A359211.P11539704748682622778

namespace A359211

/-- `A188902(3*n+2)` -/
def P11539704748682622778.Spec : Prop :=
  ∀ n, P11539704748682622778.a n = A359211 (n + 1)

end A359211

/-!
# A359212: Number of divisors of 3*n-2 of form 3*k+1.

The programs for A359212, the canonical program `A359212.P16228497027408349592` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359212 has offset 1).

The definition of A359212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359212.P3529352933894996128

`A359239(n+1)+A033687(n)`
-/

namespace A359212.P3529352933894996128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359239 (n + 1) + A033687 n

end

end A359212.P3529352933894996128

namespace A359212

/-- `A359239(n+1)+A033687(n)` -/
def P3529352933894996128.Spec : Prop :=
  ∀ n, P3529352933894996128.a n = A359212 (n + 1)

end A359212

/-! ## A359212.P7351146226728067376

`A372715(n+1)-A359239(n+1)`
-/

namespace A359212.P7351146226728067376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372715 (n + 1) - A359239 (n + 1)

end

end A359212.P7351146226728067376

namespace A359212

/-- `A372715(n+1)-A359239(n+1)` -/
def P7351146226728067376.Spec : Prop :=
  ∀ n, P7351146226728067376.a n = A359212 (n + 1)

end A359212

/-! ## A359212.P16228497027408349592

`A293895(3*n+1)+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359212

/-- `A293895(3*n+1)+1` -/
def P16228497027408349592.Spec : Prop :=
  ∀ n, P16228497027408349592.a n = A359212 (n + 1)

theorem P16228497027408349592.correct : P16228497027408349592.Spec := by
  intro n
  simp only [A359212, Nat.add_sub_cancel]

end A359212

/-! ## A359212.P12062612294243941945

`A359211(2*n+1)-A359326(n+1)`
-/

namespace A359212.P12062612294243941945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359211 (2 * n + 1) - A359326 (n + 1)

end

end A359212.P12062612294243941945

namespace A359212

/-- `A359211(2*n+1)-A359326(n+1)` -/
def P12062612294243941945.Spec : Prop :=
  ∀ n, P12062612294243941945.a n = A359212 (n + 1)

end A359212

/-! ## A359212.P5078228681402374645

`A359211(2*n+1)-A359324(2*n+1)`
-/

namespace A359212.P5078228681402374645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359211 (2 * n + 1) - A359324 (2 * n + 1)

end

end A359212.P5078228681402374645

namespace A359212

/-- `A359211(2*n+1)-A359324(2*n+1)` -/
def P5078228681402374645.Spec : Prop :=
  ∀ n, P5078228681402374645.a n = A359212 (n + 1)

end A359212

/-! ## A359212.P3832164792355970278

`A001817(1+3*n)`
-/

namespace A359212.P3832164792355970278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (1 + 3 * n)

end

end A359212.P3832164792355970278

namespace A359212

/-- `A001817(1+3*n)` -/
def P3832164792355970278.Spec : Prop :=
  ∀ n, P3832164792355970278.a n = A359212 (n + 1)

end A359212

/-! ## A359212.P14229372547973327991

`A326394(3*n+1)`
-/

namespace A359212.P14229372547973327991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326394 (3 * n + 1)

end

end A359212.P14229372547973327991

namespace A359212

/-- `A326394(3*n+1)` -/
def P14229372547973327991.Spec : Prop :=
  ∀ n, P14229372547973327991.a n = A359212 (n + 1)

end A359212

/-! ## A359212.P3097812591814366153

`val(A293221(3*n+1), 2)+1`
-/

namespace A359212.P3097812591814366153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A293221 (3 * n + 1)).toNat 2 + 1

end

end A359212.P3097812591814366153

namespace A359212

/-- `val(A293221(3*n+1), 2)+1` -/
def P3097812591814366153.Spec : Prop :=
  ∀ n, (P3097812591814366153.a n : ℤ) = A359212 (n + 1)

end A359212

/-! ## A359212.P17629960680714626854

`A364014(A017569(n))`
-/

namespace A359212.P17629960680714626854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364014 (A017569 n).toNat

end

end A359212.P17629960680714626854

namespace A359212

/-- `A364014(A017569(n))` -/
def P17629960680714626854.Spec : Prop :=
  ∀ n, P17629960680714626854.a n = A359212 (n + 1)

end A359212

/-!
# A359213: Numbers k such that rad(k) - 1 is prime.

The programs for A359213, the canonical program `A359213.P2539175117493241234` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359213 has offset 1).

The definition of A359213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359213.P1285160146426027490

`lt[A007947(n+1), A242931(A007947(n+1))]+1`
-/

namespace A359213.P1285160146426027490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242931 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A359213.P1285160146426027490

namespace A359213

/-- `lt[A007947(n+1), A242931(A007947(n+1))]+1` -/
def P1285160146426027490.Spec : Prop :=
  ∀ n, (P1285160146426027490.a n : ℤ) = A359213 (n + 1)

end A359213

/-! ## A359213.P2539175117493241234

`eq[1, ∑{e}[∏{p}[n, #]-1, #]]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A359213

/-- `eq[1, ∑{e}[∏{p}[n, #]-1, #]]` -/
def P2539175117493241234.Spec : Prop :=
  ∀ n, (P2539175117493241234.a n : ℤ) = A359213 (n + 1)

theorem P2539175117493241234.correct : P2539175117493241234.Spec := by
  intro n
  simp only [A359213, Nat.add_sub_cancel]

end A359213

/-! ## A359213.P15134930598000805997

`eq[2, ∏{e}[∏{p}[n, #]-1, (2^#)%4]]`
-/

namespace A359213.P15134930598000805997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f4 n), p : ℕ) : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, 2 ^ Nat.factorization (f3 n).natAbs p % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359213.P15134930598000805997

namespace A359213

/-- `eq[2, ∏{e}[∏{p}[n, #]-1, (2^#)%4]]` -/
def P15134930598000805997.Spec : Prop :=
  ∀ n, (P15134930598000805997.a n : ℤ) = A359213 (n + 1)

end A359213

/-! ## A359213.P11131249490020621223

`eq[1, A241424(∏{p}[n+1, #])]+1`
-/

namespace A359213.P11131249490020621223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241424 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359213.P11131249490020621223

namespace A359213

/-- `eq[1, A241424(∏{p}[n+1, #])]+1` -/
def P11131249490020621223.Spec : Prop :=
  ∀ n, (P11131249490020621223.a n : ℤ) = A359213 (n + 1)

end A359213

/-! ## A359213.P4457929405219231661

`eq[2, A298422(∏{p}[n, #])]`
-/

namespace A359213.P4457929405219231661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298422 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359213.P4457929405219231661

namespace A359213

/-- `eq[2, A298422(∏{p}[n, #])]` -/
def P4457929405219231661.Spec : Prop :=
  ∀ n, (P4457929405219231661.a n : ℤ) = A359213 (n + 1)

end A359213

/-!
# A359214: a(n) is the least k >= 0 such that A359194^k(A358668(n)) = n (where A359194^k denotes the k-th iterate of A359194).

The programs for A359214, there is no canonical definition to state claims against.
-/

/-! ## A359214.P15454246699863055817

`A269248(A336343(n)+A334820(n))`
-/

namespace A359214.P15454246699863055817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269248 (A336343 n + A334820 n).toNat

end

end A359214.P15454246699863055817

/-! ## A359214.P16208378448209876729

`A281084(A268448(n+5)+A053470(3*n+2))`
-/

namespace A359214.P16208378448209876729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281084 (A268448 (n + 5) + A053470 (3 * n + 2)).toNat

end

end A359214.P16208378448209876729

/-! ## A359214.P16718167516534058344

`A276675(A056415(n+2))`
-/

namespace A359214.P16718167516534058344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276675 (A056415 (n + 2)).toNat

end

end A359214.P16718167516534058344

/-! ## A359214.P15025949287619298313

`val(A375128(A020883(n+1)), 2)`
-/

namespace A359214.P15025949287619298313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A375128 (A020883 (n + 1)).toNat).toNat 2

end

end A359214.P15025949287619298313

/-! ## A359214.P1396981004829178772

`and(Δ[A240868(n)], A356235(3*n))`
-/

namespace A359214.P1396981004829178772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A356235 (3 * n))

end

end A359214.P1396981004829178772

/-!
# A359215: Number of terms in S(n) that did not appear in previous trajectories, where S(n) is the trajectory of the mappings of x->A359194(x) starting with n and stopping when 0 is reached, -1 if 0 is never reached.

The programs for A359215, there is no canonical definition to state claims against.
-/

/-! ## A359215.P12016060874770575040

`A359207(n)-A359207(A359218(n))`
-/

namespace A359215.P12016060874770575040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359207 n - A359207 (A359218 n).toNat

end

end A359215.P12016060874770575040

/-!
# A359216: X-coordinates of a point moving in a counterclockwise undulating spiral in a square grid.

The programs for A359216, the canonical program `A359216.P4210649419407419379` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359216 has offset 0).

The definition of A359216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359216.P4210649419407419379

`A329116(ceil(n/2))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A359216

/-- `A329116(ceil(n/2))` -/
def P4210649419407419379.Spec : Prop :=
  ∀ n, P4210649419407419379.a n = A359216 n

theorem P4210649419407419379.correct : P4210649419407419379.Spec := by
  intro n
  simp only [A359216]

end A359216

/-! ## A359216.P13343534393838634520

`A255175(abs(∑[char[2*n]]-n))`
-/

namespace A359216.P13343534393838634520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255175 |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)|.toNat

end

end A359216.P13343534393838634520

namespace A359216

/-- `A255175(abs(∑[char[2*n]]-n))` -/
def P13343534393838634520.Spec : Prop :=
  ∀ n, P13343534393838634520.a n = A359216 n

end A359216

/-! ## A359216.P13591230473111413569

`A329116(A110654(n))%90`
-/

namespace A359216.P13591230473111413569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329116 (A110654 n).toNat) 90

end

end A359216.P13591230473111413569

namespace A359216

/-- `A329116(A110654(n))%90` -/
def P13591230473111413569.Spec : Prop :=
  ∀ n, P13591230473111413569.a n = A359216 n

end A359216

/-! ## A359216.P12852364042796038569

`A329116(A065033(n))%A000203(n+1)`
-/

namespace A359216.P12852364042796038569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329116 (A065033 n).toNat) (A000203 (n + 1))

end

end A359216.P12852364042796038569

namespace A359216

/-- `A329116(A065033(n))%A000203(n+1)` -/
def P12852364042796038569.Spec : Prop :=
  ∀ n, P12852364042796038569.a n = A359216 n

end A359216

/-! ## A359216.P7492711648393927718

`A152822(A168392(n+1))*A329116(round(n/2))`
-/

namespace A359216.P7492711648393927718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (A168392 (n + 1)).toNat * A329116 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat

end

end A359216.P7492711648393927718

namespace A359216

/-- `A152822(A168392(n+1))*A329116(round(n/2))` -/
def P7492711648393927718.Spec : Prop :=
  ∀ n, P7492711648393927718.a n = A359216 n

end A359216

/-! ## A359216.P14146444138189896954

`A010751(A337822(n+1)-1)`
-/

namespace A359216.P14146444138189896954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (A337822 (n + 1) - 1).toNat

end

end A359216.P14146444138189896954

namespace A359216

/-- `A010751(A337822(n+1)-1)` -/
def P14146444138189896954.Spec : Prop :=
  ∀ n, P14146444138189896954.a n = A359216 n

end A359216

/-! ## A359216.P13604023877748646554

`A174344(A334619(n+1))`
-/

namespace A359216.P13604023877748646554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A334619 (n + 1)).toNat

end

end A359216.P13604023877748646554

namespace A359216

/-- `A174344(A334619(n+1))` -/
def P13604023877748646554.Spec : Prop :=
  ∀ n, P13604023877748646554.a n = A359216 n

end A359216

/-! ## A359216.P9231893275410125788

`A010751(A214526(A337822(n+1)²))`
-/

namespace A359216.P9231893275410125788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (A214526 (A337822 (n + 1) ^ 2).toNat).toNat

end

end A359216.P9231893275410125788

namespace A359216

/-- `A010751(A214526(A337822(n+1)²))` -/
def P9231893275410125788.Spec : Prop :=
  ∀ n, P9231893275410125788.a n = A359216 n

end A359216

/-!
# A359217: Y-coordinates of a point moving along a counterclockwise undulating spiral on a square grid.

The programs for A359217, the canonical program `A359217.P5863385716239077035` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359217 has offset 0).

The definition of A359217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359217.P5863385716239077035

`A180714(floor(n/2))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359217

/-- `A180714(floor(n/2))` -/
def P5863385716239077035.Spec : Prop :=
  ∀ n, P5863385716239077035.a n = A359217 n

theorem P5863385716239077035.correct : P5863385716239077035.Spec := by
  intro n
  simp only [A359217]

end A359217

/-! ## A359217.P3551407775608660591

`A296030(2*A334619(n+1))`
-/

namespace A359217.P3551407775608660591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * A334619 (n + 1)).toNat

end

end A359217.P3551407775608660591

namespace A359217

/-- `A296030(2*A334619(n+1))` -/
def P3551407775608660591.Spec : Prop :=
  ∀ n, P3551407775608660591.a n = A359217 n

end A359217

/-! ## A359217.P17930368766144946863

`A180714(A004526(n))%(n+1)`
-/

namespace A359217.P17930368766144946863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180714 (A004526 n).toNat) (n + 1 : ℤ)

end

end A359217.P17930368766144946863

namespace A359217

/-- `A180714(A004526(n))%(n+1)` -/
def P17930368766144946863.Spec : Prop :=
  ∀ n, P17930368766144946863.a n = A359217 n

end A359217

/-! ## A359217.P5551304260997541304

`A274923(A334619(n+1))`
-/

namespace A359217.P5551304260997541304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A334619 (n + 1)).toNat

end

end A359217.P5551304260997541304

namespace A359217

/-- `A274923(A334619(n+1))` -/
def P5551304260997541304.Spec : Prop :=
  ∀ n, P5551304260997541304.a n = A359217 n

end A359217

/-! ## A359217.P8128734395137797872

`A183093(A195943(2*n+3))²*A180714(A004526(n))`
-/

namespace A359217.P8128734395137797872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183093 (A195943 (2 * n + 3)).toNat ^ 2 * A180714 (A004526 n).toNat

end

end A359217.P8128734395137797872

namespace A359217

/-- `A183093(A195943(2*n+3))²*A180714(A004526(n))` -/
def P8128734395137797872.Spec : Prop :=
  ∀ n, P8128734395137797872.a n = A359217 n

end A359217

/-! ## A359217.P2197467951763991330

`A183093(A167797(n+1))²*A180714(A004526(n))`
-/

namespace A359217.P2197467951763991330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183093 (A167797 (n + 1)).toNat ^ 2 * A180714 (A004526 n).toNat

end

end A359217.P2197467951763991330

namespace A359217

/-- `A183093(A167797(n+1))²*A180714(A004526(n))` -/
def P2197467951763991330.Spec : Prop :=
  ∀ n, P2197467951763991330.a n = A359217 n

end A359217

/-! ## A359217.P9307888837287127027

`A305258(A337822(n+1)-1)`
-/

namespace A359217.P9307888837287127027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305258 (A337822 (n + 1) - 1).toNat

end

end A359217.P9307888837287127027

namespace A359217

/-- `A305258(A337822(n+1)-1)` -/
def P9307888837287127027.Spec : Prop :=
  ∀ n, P9307888837287127027.a n = A359217 n

end A359217

/-! ## A359217.P3303887224053604529

`A305258(A214526(A337822(n+1)²))`
-/

namespace A359217.P3303887224053604529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305258 (A214526 (A337822 (n + 1) ^ 2).toNat).toNat

end

end A359217.P3303887224053604529

namespace A359217

/-- `A305258(A214526(A337822(n+1)²))` -/
def P3303887224053604529.Spec : Prop :=
  ∀ n, P3303887224053604529.a n = A359217 n

end A359217

/-!
# A359220: Number of steps to reach 0 from A359219(n) where A359219 are the starting numbers that require more iterations in the map x->A359194(x) than any smaller number.

The programs for A359220, there is no canonical definition to state claims against.
-/

/-! ## A359220.P9898802754795048651

`record[A359207(n)]`
-/

namespace A359220.P9898802754795048651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359220.P9898802754795048651

/-! ## A359220.P3522335703921697913

`A359207(A359219(n+1))`
-/

namespace A359220.P3522335703921697913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359207 (A359219 (n + 1)).toNat

end

end A359220.P3522335703921697913

/-!
# A359221: Starting numbers which reach a new record high value when iterating the map x->A359194(x) (binary complement of 3n).

The programs for A359221, there is no canonical definition to state claims against.
-/

/-! ## A359221.P1824366785825187580

`∩[A037016(n+1), A359219(n+1)]`
-/

namespace A359221.P1824366785825187580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359221.P1824366785825187580

/-! ## A359221.P14476664341124740417

`A008951(A030270(n))%A004027(n)`
-/

namespace A359221.P14476664341124740417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008951 (A030270 n).toNat) (A004027 n)

end

end A359221.P14476664341124740417

/-! ## A359221.P12697750076547570107

`A352192(A006882(n))%A122367(n)`
-/

namespace A359221.P12697750076547570107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352192 (A006882 n).toNat) (A122367 n)

end

end A359221.P12697750076547570107

/-!
# A359222: Number of steps to reach 0 from A359221(n) (Starting numbers that reach a new record high value during iteration by the map x->A359194(x)).

The programs for A359222, there is no canonical definition to state claims against.
-/

/-! ## A359222.P14165381662609487390

`A359207(A359221(n+1))`
-/

namespace A359222.P14165381662609487390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359207 (A359221 (n + 1)).toNat

end

end A359222.P14165381662609487390

/-!
# A359224: Numbers whose decimal representation is the reverse of their base-7 representation.

The programs for A359224, there is no canonical definition to state claims against.
-/

/-! ## A359224.P14300126236786805495

`A007093(eq[A007093(n), A030106(n)])`
-/

namespace A359224.P14300126236786805495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A359224.P14300126236786805495

/-! ## A359224.P5225595925712897592

`eq[n, A004086(A007093(n))]`
-/

namespace A359224.P5225595925712897592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359224.P5225595925712897592

/-! ## A359224.P14707862486077493163

`eq[n, A007093(A030106(n))]`
-/

namespace A359224.P14707862486077493163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A030106 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359224.P14707862486077493163

/-! ## A359224.P11662164212088099241

`eq[A007093(n), A321474(n)]`
-/

namespace A359224.P11662164212088099241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359224.P11662164212088099241

/-! ## A359224.P10072893918416311864

`eq[A007093(n), A352152(n)]`
-/

namespace A359224.P10072893918416311864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352152 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359224.P10072893918416311864

/-!
# A359225: Numbers that can be expressed as (a^3 + b^3)/(a*b) with b > a >= 1.

The programs for A359225, the canonical program `A359225.P11752466969216439942` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359225 has offset 1).

The definition of A359225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359225.P7804923521690131674

`eq[1, A373973(n+1)]+1`
-/

namespace A359225.P7804923521690131674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359225.P7804923521690131674

namespace A359225

/-- `eq[1, A373973(n+1)]+1` -/
def P7804923521690131674.Spec : Prop :=
  ∀ n, (P7804923521690131674.a n : ℤ) = A359225 (n + 1)

end A359225

/-! ## A359225.P11752466969216439942

`lt[0, A373974(n+1)]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359225

/-- `lt[0, A373974(n+1)]+1` -/
def P11752466969216439942.Spec : Prop :=
  ∀ n, (P11752466969216439942.a n : ℤ) = A359225 (n + 1)

theorem P11752466969216439942.correct : P11752466969216439942.Spec := by
  intro n
  simp only [A359225, Nat.add_sub_cancel]

end A359225

/-! ## A359225.P11142066979020052877

`filter[A344180(n), A373973(#)]`
-/

namespace A359225.P11142066979020052877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A359225.P11142066979020052877

namespace A359225

/-- `filter[A344180(n), A373973(#)]` -/
def P11142066979020052877.Spec : Prop :=
  ∀ n, P11142066979020052877.a n = A359225 (n + 1)

end A359225

/-! ## A359225.P3554836694416376320

`filter[A319702(n+1), A373973(#)]`
-/

namespace A359225.P3554836694416376320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A359225.P3554836694416376320

namespace A359225

/-- `filter[A319702(n+1), A373973(#)]` -/
def P3554836694416376320.Spec : Prop :=
  ∀ n, P3554836694416376320.a n = A359225 (n + 1)

end A359225

/-! ## A359225.P6642811022268428105

`filter[A305980(n+1), A373973(#)]`
-/

namespace A359225.P6642811022268428105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A359225.P6642811022268428105

namespace A359225

/-- `filter[A305980(n+1), A373973(#)]` -/
def P6642811022268428105.Spec : Prop :=
  ∀ n, P6642811022268428105.a n = A359225 (n + 1)

end A359225

/-! ## A359225.P16953286630617007731

`filter[A264828(n+3), A373973(#)]`
-/

namespace A359225.P16953286630617007731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A359225.P16953286630617007731

namespace A359225

/-- `filter[A264828(n+3), A373973(#)]` -/
def P16953286630617007731.Spec : Prop :=
  ∀ n, P16953286630617007731.a n = A359225 (n + 1)

end A359225

/-! ## A359225.P11073363928087873569

`filter[A002808(n+1), A373973(#)]`
-/

namespace A359225.P11073363928087873569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A359225.P11073363928087873569

namespace A359225

/-- `filter[A002808(n+1), A373973(#)]` -/
def P11073363928087873569.Spec : Prop :=
  ∀ n, P11073363928087873569.a n = A359225 (n + 1)

end A359225

/-! ## A359225.P17739772814360815600

`filter[A018252(n+1), A373973(#)]`
-/

namespace A359225.P17739772814360815600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A359225.P17739772814360815600

namespace A359225

/-- `filter[A018252(n+1), A373973(#)]` -/
def P17739772814360815600.Spec : Prop :=
  ∀ n, P17739772814360815600.a n = A359225 (n + 1)

end A359225

/-! ## A359225.P9304724949909014567

`filter[A066498(n+1), A373973(#)]`
-/

namespace A359225.P9304724949909014567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A359225.P9304724949909014567

namespace A359225

/-- `filter[A066498(n+1), A373973(#)]` -/
def P9304724949909014567.Spec : Prop :=
  ∀ n, P9304724949909014567.a n = A359225 (n + 1)

end A359225

/-! ## A359225.P2339528333203645093

`filter[A009188(n+1), A373973(#)]`
-/

namespace A359225.P2339528333203645093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A359225.P2339528333203645093

namespace A359225

/-- `filter[A009188(n+1), A373973(#)]` -/
def P2339528333203645093.Spec : Prop :=
  ∀ n, P2339528333203645093.a n = A359225 (n + 1)

end A359225

/-! ## A359225.P11423249501228943655

`filter[A176423(n+1), A373973(#)]`
-/

namespace A359225.P11423249501228943655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A359225.P11423249501228943655

namespace A359225

/-- `filter[A176423(n+1), A373973(#)]` -/
def P11423249501228943655.Spec : Prop :=
  ∀ n, P11423249501228943655.a n = A359225 (n + 1)

end A359225

/-! ## A359225.P4308374694207570114

`filter[A056653(n+1), A373973(#)]`
-/

namespace A359225.P4308374694207570114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A359225.P4308374694207570114

namespace A359225

/-- `filter[A056653(n+1), A373973(#)]` -/
def P4308374694207570114.Spec : Prop :=
  ∀ n, P4308374694207570114.a n = A359225 (n + 1)

end A359225

/-! ## A359225.P12627561118581317069

`filter[A065090(n+1), A373973(#)]`
-/

namespace A359225.P12627561118581317069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A359225.P12627561118581317069

namespace A359225

/-- `filter[A065090(n+1), A373973(#)]` -/
def P12627561118581317069.Spec : Prop :=
  ∀ n, P12627561118581317069.a n = A359225 (n + 1)

end A359225

/-! ## A359225.P3146017014425939895

`filter[A171581(n+1), A373973(#)]`
-/

namespace A359225.P3146017014425939895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A359225.P3146017014425939895

namespace A359225

/-- `filter[A171581(n+1), A373973(#)]` -/
def P3146017014425939895.Spec : Prop :=
  ∀ n, P3146017014425939895.a n = A359225 (n + 1)

end A359225

/-! ## A359225.P3458011025639223238

`filter[A073900(n+1), A373973(#)]`
-/

namespace A359225.P3458011025639223238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A359225.P3458011025639223238

namespace A359225

/-- `filter[A073900(n+1), A373973(#)]` -/
def P3458011025639223238.Spec : Prop :=
  ∀ n, P3458011025639223238.a n = A359225 (n + 1)

end A359225

/-! ## A359225.P16081930071982038304

`filter[A275608(n+1), A373973(#)]`
-/

namespace A359225.P16081930071982038304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A359225.P16081930071982038304

namespace A359225

/-- `filter[A275608(n+1), A373973(#)]` -/
def P16081930071982038304.Spec : Prop :=
  ∀ n, P16081930071982038304.a n = A359225 (n + 1)

end A359225

/-! ## A359225.P16275482295263765603

`filter[A121543(n+1), A373973(#)]`
-/

namespace A359225.P16275482295263765603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A359225.P16275482295263765603

namespace A359225

/-- `filter[A121543(n+1), A373973(#)]` -/
def P16275482295263765603.Spec : Prop :=
  ∀ n, P16275482295263765603.a n = A359225 (n + 1)

end A359225

/-! ## A359225.P13456704150214555292

`filter[A089088(n), A373973(#)]`
-/

namespace A359225.P13456704150214555292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A359225.P13456704150214555292

namespace A359225

/-- `filter[A089088(n), A373973(#)]` -/
def P13456704150214555292.Spec : Prop :=
  ∀ n, P13456704150214555292.a n = A359225 (n + 1)

end A359225

/-! ## A359225.P1441172083945315557

`filter[A065940(n), A373973(#)]`
-/

namespace A359225.P1441172083945315557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A359225.P1441172083945315557

namespace A359225

/-- `filter[A065940(n), A373973(#)]` -/
def P1441172083945315557.Spec : Prop :=
  ∀ n, P1441172083945315557.a n = A359225 (n + 1)

end A359225

/-! ## A359225.P5943320315743796894

`filter[A004169(n+1), A373973(#)]`
-/

namespace A359225.P5943320315743796894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A359225.P5943320315743796894

namespace A359225

/-- `filter[A004169(n+1), A373973(#)]` -/
def P5943320315743796894.Spec : Prop :=
  ∀ n, P5943320315743796894.a n = A359225 (n + 1)

end A359225

/-!
# A359226: a(n) is the least k >= 0 such that A006370^k(A070167(n)) = n (where A006370^k denotes the k-th iterate of A006370).

The programs for A359226, there is no canonical definition to state claims against.
-/

/-! ## A359226.P11424327918140748415

`A006577(A070167(n+1))-A006577(n+1)`
-/

namespace A359226.P11424327918140748415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A070167 (n + 1)).toNat - A006577 (n + 1)

end

end A359226.P11424327918140748415

/-! ## A359226.P2492160436398188764

`A008908(A070167(n+1))-A008908(n+1)`
-/

namespace A359226.P2492160436398188764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A070167 (n + 1)).toNat - A008908 (n + 1)

end

end A359226.P2492160436398188764

/-! ## A359226.P17082764421281964421

`A112695(A070167(n+1))-A112695(n+1)`
-/

namespace A359226.P17082764421281964421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112695 (A070167 (n + 1)).toNat - A112695 (n + 1)

end

end A359226.P17082764421281964421

/-! ## A359226.P13107569367041418878

`A139399(A070167(n+1))-A139399(n+1)`
-/

namespace A359226.P13107569367041418878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (A070167 (n + 1)).toNat - A139399 (n + 1)

end

end A359226.P13107569367041418878

/-!
# A359227: Number of divisors of 4*n-3 of form 4*k+1.

The programs for A359227, the canonical program `A359227.P14181940212976785679` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359227 has offset 1).

The definition of A359227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359227.P14181940212976785679

`A001826(4*n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A359227

/-- `A001826(4*n+1)` -/
def P14181940212976785679.Spec : Prop :=
  ∀ n, P14181940212976785679.a n = A359227 (n + 1)

theorem P14181940212976785679.correct : P14181940212976785679.Spec := by
  intro n
  simp only [A359227, Nat.add_sub_cancel]

end A359227

/-! ## A359227.P1183167972724481934

`A359240(n+1)+A008441(n)`
-/

namespace A359227.P1183167972724481934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359240 (n + 1) + A008441 n

end

end A359227.P1183167972724481934

namespace A359227

/-- `A359240(n+1)+A008441(n)` -/
def P1183167972724481934.Spec : Prop :=
  ∀ n, P1183167972724481934.a n = A359227 (n + 1)

end A359227

/-! ## A359227.P4083072695577837444

`A000005(A016813(n))-A359240(n+1)`
-/

namespace A359227.P4083072695577837444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016813 n).toNat - A359240 (n + 1)

end

end A359227.P4083072695577837444

namespace A359227

/-- `A000005(A016813(n))-A359240(n+1)` -/
def P4083072695577837444.Spec : Prop :=
  ∀ n, P4083072695577837444.a n = A359227 (n + 1)

end A359227

/-! ## A359227.P2030799462121176023

`A359240(n+1)+gcd(A000038(n), A134343(n))`
-/

namespace A359227.P2030799462121176023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359240 (n + 1) + (Int.gcd (A000038 n) (A134343 n) : ℤ)

end

end A359227.P2030799462121176023

namespace A359227

/-- `A359240(n+1)+gcd(A000038(n), A134343(n))` -/
def P2030799462121176023.Spec : Prop :=
  ∀ n, P2030799462121176023.a n = A359227 (n + 1)

end A359227

/-! ## A359227.P14571286793475059365

`A359289(Δ[n²])`
-/

namespace A359227.P14571286793475059365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359289 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A359227.P14571286793475059365

namespace A359227

/-- `A359289(Δ[n²])` -/
def P14571286793475059365.Spec : Prop :=
  ∀ n, P14571286793475059365.a n = A359227 (n + 1)

end A359227

/-! ## A359227.P7784289813203597584

`A005843(A359289(2*n+1))/2`
-/

namespace A359227.P7784289813203597584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A359289 (2 * n + 1)).toNat : ℚ) / 2

end

end A359227.P7784289813203597584

namespace A359227

/-- `A005843(A359289(2*n+1))/2` -/
def P7784289813203597584.Spec : Prop :=
  ∀ n, P7784289813203597584.a n = (A359227 (n + 1) : ℚ)

end A359227

/-! ## A359227.P7293737253412787685

`A359290(2*n+1)+A008441(n)`
-/

namespace A359227.P7293737253412787685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359290 (2 * n + 1) + A008441 n

end

end A359227.P7293737253412787685

namespace A359227

/-- `A359290(2*n+1)+A008441(n)` -/
def P7293737253412787685.Spec : Prop :=
  ∀ n, P7293737253412787685.a n = A359227 (n + 1)

end A359227

/-! ## A359227.P17789395129094398951

`A099774(2*n+1)-A359240(n+1)`
-/

namespace A359227.P17789395129094398951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (2 * n + 1) - A359240 (n + 1)

end

end A359227.P17789395129094398951

namespace A359227

/-- `A099774(2*n+1)-A359240(n+1)` -/
def P17789395129094398951.Spec : Prop :=
  ∀ n, P17789395129094398951.a n = A359227 (n + 1)

end A359227

/-! ## A359227.P4848766660928713392

`A359289(2*n+1)+A121262(2*n+1)`
-/

namespace A359227.P4848766660928713392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359289 (2 * n + 1) + A121262 (2 * n + 1)

end

end A359227.P4848766660928713392

namespace A359227

/-- `A359289(2*n+1)+A121262(2*n+1)` -/
def P4848766660928713392.Spec : Prop :=
  ∀ n, P4848766660928713392.a n = A359227 (n + 1)

end A359227

/-! ## A359227.P9390781100761831581

`A099774(2*n+1)-A359290(2*n+1)`
-/

namespace A359227.P9390781100761831581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (2 * n + 1) - A359290 (2 * n + 1)

end

end A359227.P9390781100761831581

namespace A359227

/-- `A099774(2*n+1)-A359290(2*n+1)` -/
def P9390781100761831581.Spec : Prop :=
  ∀ n, P9390781100761831581.a n = A359227 (n + 1)

end A359227

/-! ## A359227.P2820491810783807804

`A078703(A078714(A359289(2*n+1)))`
-/

namespace A359227.P2820491810783807804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (A078714 (A359289 (2 * n + 1)).toNat).toNat

end

end A359227.P2820491810783807804

namespace A359227

/-- `A078703(A078714(A359289(2*n+1)))` -/
def P2820491810783807804.Spec : Prop :=
  ∀ n, P2820491810783807804.a n = A359227 (n + 1)

end A359227

/-! ## A359227.P2866542925300676439

`A293451(A016813(n))+1`
-/

namespace A359227.P2866542925300676439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293451 (A016813 n).toNat + 1

end

end A359227.P2866542925300676439

namespace A359227

/-- `A293451(A016813(n))+1` -/
def P2866542925300676439.Spec : Prop :=
  ∀ n, P2866542925300676439.a n = A359227 (n + 1)

end A359227

/-! ## A359227.P6831592380996484605

`∑{d}[A016813(n), A166445(A166445(#))]`
-/

namespace A359227.P6831592380996484605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A166445 (A166445 d).toNat

end

end A359227.P6831592380996484605

namespace A359227

/-- `∑{d}[A016813(n), A166445(A166445(#))]` -/
def P6831592380996484605.Spec : Prop :=
  ∀ n, P6831592380996484605.a n = A359227 (n + 1)

end A359227

/-! ## A359227.P3638402898832775760

`A293451(2*A016813(n))`
-/

namespace A359227.P3638402898832775760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293451 (2 * A016813 n).toNat

end

end A359227.P3638402898832775760

namespace A359227

/-- `A293451(2*A016813(n))` -/
def P3638402898832775760.Spec : Prop :=
  ∀ n, P3638402898832775760.a n = A359227 (n + 1)

end A359227

/-! ## A359227.P9050777071141602742

`A293451(A063110(n+1))`
-/

namespace A359227.P9050777071141602742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293451 (A063110 (n + 1)).toNat

end

end A359227.P9050777071141602742

namespace A359227

/-- `A293451(A063110(n+1))` -/
def P9050777071141602742.Spec : Prop :=
  ∀ n, P9050777071141602742.a n = A359227 (n + 1)

end A359227

/-! ## A359227.P1954448469438699829

`A293451(A063164(n+1))`
-/

namespace A359227.P1954448469438699829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293451 (A063164 (n + 1)).toNat

end

end A359227.P1954448469438699829

namespace A359227

/-- `A293451(A063164(n+1))` -/
def P1954448469438699829.Spec : Prop :=
  ∀ n, P1954448469438699829.a n = A359227 (n + 1)

end A359227

/-!
# A359229: a(n) is the smallest square pyramidal number with exactly n distinct prime factors.

The programs for A359229, there is no canonical definition to state claims against.
-/

/-! ## A359229.P8454334440409084317

`A000330(A359230(n))`
-/

namespace A359229.P8454334440409084317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A359230 n).toNat

end

end A359229.P8454334440409084317

/-!
# A359232: a(n) is the smallest centered square number divisible by exactly n centered square numbers.

The programs for A359232, there is no canonical definition to state claims against.
-/

/-! ## A359232.P11353268699137591103

`A359235(col(n)!²*n)`
-/

namespace A359232.P11353268699137591103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359235 (Nat.factorial (SequenceMachineLib.triCol n) ^ 2 * n)

end

end A359232.P11353268699137591103

/-!
# A359233: Number of divisors of 5*n-1 of form 5*k+1.

The programs for A359233, the canonical program `A359233.P5724937657241569467` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359233 has offset 1).

The definition of A359233 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359233.P5724937657241569467

`A001876(5*(n+1)-1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359233

/-- `A001876(5*(n+1)-1)` -/
def P5724937657241569467.Spec : Prop :=
  ∀ n, P5724937657241569467.a n = A359233 (n + 1)

theorem P5724937657241569467.correct : P5724937657241569467.Spec := by
  intro n
  simp only [A359233, Nat.add_sub_cancel]

end A359233

/-! ## A359233.P1549071087386155721

`A001899(5*(n+1)-1)`
-/

namespace A359233.P1549071087386155721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (5 * (n + 1) - 1)

end

end A359233.P1549071087386155721

namespace A359233

/-- `A001899(5*(n+1)-1)` -/
def P1549071087386155721.Spec : Prop :=
  ∀ n, P1549071087386155721.a n = A359233 (n + 1)

end A359233

/-! ## A359233.P9492225823150764849

`A083912(8*(n+1)+2*n)`
-/

namespace A359233.P9492225823150764849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (8 * (n + 1) + 2 * n)

end

end A359233.P9492225823150764849

namespace A359233

/-- `A083912(8*(n+1)+2*n)` -/
def P9492225823150764849.Spec : Prop :=
  ∀ n, P9492225823150764849.a n = A359233 (n + 1)

end A359233

/-! ## A359233.P17207606268508106742

`A330348(10*n+8)`
-/

namespace A359233.P17207606268508106742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330348 (10 * n + 8)

end

end A359233.P17207606268508106742

namespace A359233

/-- `A330348(10*n+8)` -/
def P17207606268508106742.Spec : Prop :=
  ∀ n, P17207606268508106742.a n = A359233 (n + 1)

end A359233

/-! ## A359233.P15661742707057430188

`A083918(A017329(n)+3)`
-/

namespace A359233.P15661742707057430188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A017329 n + 3).toNat

end

end A359233.P15661742707057430188

namespace A359233

/-- `A083918(A017329(n)+3)` -/
def P15661742707057430188.Spec : Prop :=
  ∀ n, P15661742707057430188.a n = A359233 (n + 1)

end A359233

/-! ## A359233.P17336846217831459010

`A346392(A017341(n)+2)+1`
-/

namespace A359233.P17336846217831459010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (A017341 n + 2).toNat + 1

end

end A359233.P17336846217831459010

namespace A359233

/-- `A346392(A017341(n)+2)+1` -/
def P17336846217831459010.Spec : Prop :=
  ∀ n, P17336846217831459010.a n = A359233 (n + 1)

end A359233

/-!
# A359234: a(n) is the smallest centered square number with exactly n distinct prime factors.

The programs for A359234, there is no canonical definition to state claims against.
-/

/-! ## A359234.P15191119696706106575

`A000982(A180278(n+1))`
-/

namespace A359234.P15191119696706106575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A180278 (n + 1)).toNat

end

end A359234.P15191119696706106575

/-!
# A359235: a(n) is the smallest centered square number with exactly n prime factors (counted with multiplicity).

The programs for A359235, there is no canonical definition to state claims against.
-/

/-! ## A359235.P4554768189191362698

`A359232(A028980(n+1))`
-/

namespace A359235.P4554768189191362698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359232 (A028980 (n + 1)).toNat

end

end A359235.P4554768189191362698

/-! ## A359235.P13302818943165962129

`A000265(record[A359232(n+1)])`
-/

namespace A359235.P13302818943165962129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A359235.P13302818943165962129

/-!
# A359236: Number of divisors of 5*n-2 of form 5*k+1.

The programs for A359236, the canonical program `A359236.P3437243268273933549` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359236 has offset 1).

The definition of A359236 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359236.P3437243268273933549

`A001876(5*(n+1)-2)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359236

/-- `A001876(5*(n+1)-2)` -/
def P3437243268273933549.Spec : Prop :=
  ∀ n, P3437243268273933549.a n = A359236 (n + 1)

theorem P3437243268273933549.correct : P3437243268273933549.Spec := by
  intro n
  simp only [A359236, Nat.add_sub_cancel]

end A359236

/-! ## A359236.P3593438344513747424

`A001878(5*(n+1)-2)`
-/

namespace A359236.P3593438344513747424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (5 * (n + 1) - 2)

end

end A359236.P3593438344513747424

namespace A359236

/-- `A001878(5*(n+1)-2)` -/
def P3593438344513747424.Spec : Prop :=
  ∀ n, P3593438344513747424.a n = A359236 (n + 1)

end A359236

/-! ## A359236.P9782154589937241745

`A359269(n+1)+A340454(n)`
-/

namespace A359236.P9782154589937241745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359269 (n + 1) + A340454 n

end

end A359236.P9782154589937241745

namespace A359236

/-- `A359269(n+1)+A340454(n)` -/
def P9782154589937241745.Spec : Prop :=
  ∀ n, P9782154589937241745.a n = A359236 (n + 1)

theorem P9782154589937241745.correct : P9782154589937241745.Spec := by
  intro n
  simp only [A359236, Nat.add_sub_cancel, A359236.P9782154589937241745.a, A359236.P3437243268273933549.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A340454, A340454.P12418673259723293615.a, A359269, A359269.P15675269131847707264.a, A001877, A001877.P11806035189121010381.f1, A001877.P11806035189121010381.a, A079998, A079998.P5984370107414098605.a, A047412, A047412.P4762915060399373107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A359236

/-! ## A359236.P806532948451903826

`A083912(A017341(n))`
-/

namespace A359236.P806532948451903826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (A017341 n).toNat

end

end A359236.P806532948451903826

namespace A359236

/-- `A083912(A017341(n))` -/
def P806532948451903826.Spec : Prop :=
  ∀ n, P806532948451903826.a n = A359236 (n + 1)

end A359236

/-! ## A359236.P18151480465506552784

`A083912(A017317(n)+2)`
-/

namespace A359236.P18151480465506552784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (A017317 n + 2).toNat

end

end A359236.P18151480465506552784

namespace A359236

/-- `A083912(A017317(n)+2)` -/
def P18151480465506552784.Spec : Prop :=
  ∀ n, P18151480465506552784.a n = A359236 (n + 1)

end A359236

/-! ## A359236.P6647982824541164722

`A083912(A017365(n)-2)`
-/

namespace A359236.P6647982824541164722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (A017365 n - 2).toNat

end

end A359236.P6647982824541164722

namespace A359236

/-- `A083912(A017365(n)-2)` -/
def P6647982824541164722.Spec : Prop :=
  ∀ n, P6647982824541164722.a n = A359236 (n + 1)

end A359236

/-! ## A359236.P11590525196023142268

`A083912(2*A016885(n))`
-/

namespace A359236.P11590525196023142268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (2 * A016885 n).toNat

end

end A359236.P11590525196023142268

namespace A359236

/-- `A083912(2*A016885(n))` -/
def P11590525196023142268.Spec : Prop :=
  ∀ n, P11590525196023142268.a n = A359236 (n + 1)

end A359236

/-! ## A359236.P7624647827174781140

`A083912(A017293(2*n+1)/2)`
-/

namespace A359236.P7624647827174781140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (SequenceMachineLib.roundAway ((A017293 (2 * n + 1) : ℚ) / 2)).toNat

end

end A359236.P7624647827174781140

namespace A359236

/-- `A083912(A017293(2*n+1)/2)` -/
def P7624647827174781140.Spec : Prop :=
  ∀ n, P7624647827174781140.a n = A359236 (n + 1)

end A359236

/-! ## A359236.P15180395617856722032

`A346392(10*n+6)+1`
-/

namespace A359236.P15180395617856722032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (10 * n + 6) + 1

end

end A359236.P15180395617856722032

namespace A359236

/-- `A346392(10*n+6)+1` -/
def P15180395617856722032.Spec : Prop :=
  ∀ n, P15180395617856722032.a n = A359236 (n + 1)

end A359236

/-! ## A359236.P15036223755414560589

`A083916(A017329(n)+1)`
-/

namespace A359236.P15036223755414560589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A017329 n + 1).toNat

end

end A359236.P15036223755414560589

namespace A359236

/-- `A083916(A017329(n)+1)` -/
def P15036223755414560589.Spec : Prop :=
  ∀ n, P15036223755414560589.a n = A359236 (n + 1)

end A359236

/-! ## A359236.P1583281507258127493

`A083916(A017317(n)+2)`
-/

namespace A359236.P1583281507258127493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A017317 n + 2).toNat

end

end A359236.P1583281507258127493

namespace A359236

/-- `A083916(A017317(n)+2)` -/
def P1583281507258127493.Spec : Prop :=
  ∀ n, P1583281507258127493.a n = A359236 (n + 1)

end A359236

/-! ## A359236.P2733898962044719298

`A330348(A017317(n)+2)`
-/

namespace A359236.P2733898962044719298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330348 (A017317 n + 2).toNat

end

end A359236.P2733898962044719298

namespace A359236

/-- `A330348(A017317(n)+2)` -/
def P2733898962044719298.Spec : Prop :=
  ∀ n, P2733898962044719298.a n = A359236 (n + 1)

end A359236

/-! ## A359236.P14364300553800506012

`A083916(A017365(n)-2)`
-/

namespace A359236.P14364300553800506012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A017365 n - 2).toNat

end

end A359236.P14364300553800506012

namespace A359236

/-- `A083916(A017365(n)-2)` -/
def P14364300553800506012.Spec : Prop :=
  ∀ n, P14364300553800506012.a n = A359236 (n + 1)

end A359236

/-! ## A359236.P13704702631971776020

`A083916(A016873(2*n+1)-1)`
-/

namespace A359236.P13704702631971776020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A016873 (2 * n + 1) - 1).toNat

end

end A359236.P13704702631971776020

namespace A359236

/-- `A083916(A016873(2*n+1)-1)` -/
def P13704702631971776020.Spec : Prop :=
  ∀ n, P13704702631971776020.a n = A359236 (n + 1)

end A359236

/-! ## A359236.P12321383810813174906

`A330348(A016873(2*n+1)-1)`
-/

namespace A359236.P12321383810813174906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330348 (A016873 (2 * n + 1) - 1).toNat

end

end A359236.P12321383810813174906

namespace A359236

/-- `A330348(A016873(2*n+1)-1)` -/
def P12321383810813174906.Spec : Prop :=
  ∀ n, P12321383810813174906.a n = A359236 (n + 1)

end A359236

/-!
# A359237: Number of divisors of 5*n-3 of form 5*k+1.

The programs for A359237, the canonical program `A359237.P15086799658931664347` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359237 has offset 1).

The definition of A359237 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359237.P15086799658931664347

`A001876(5*(n+1)-3)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359237

/-- `A001876(5*(n+1)-3)` -/
def P15086799658931664347.Spec : Prop :=
  ∀ n, P15086799658931664347.a n = A359237 (n + 1)

theorem P15086799658931664347.correct : P15086799658931664347.Spec := by
  intro n
  simp only [A359237, Nat.add_sub_cancel]

end A359237

/-! ## A359237.P5195450155295182893

`A001877(5*(n+1)-3)`
-/

namespace A359237.P5195450155295182893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (5 * (n + 1) - 3)

end

end A359237.P5195450155295182893

namespace A359237

/-- `A001877(5*(n+1)-3)` -/
def P5195450155295182893.Spec : Prop :=
  ∀ n, P5195450155295182893.a n = A359237 (n + 1)

end A359237

/-! ## A359237.P13303037170850025409

`A359270(n+1)+A340453(n)`
-/

namespace A359237.P13303037170850025409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359270 (n + 1) + A340453 n

end

end A359237.P13303037170850025409

namespace A359237

/-- `A359270(n+1)+A340453(n)` -/
def P13303037170850025409.Spec : Prop :=
  ∀ n, P13303037170850025409.a n = A359237 (n + 1)

theorem P13303037170850025409.correct : P13303037170850025409.Spec := by
  intro n
  simp only [A359237, Nat.add_sub_cancel, A359237.P13303037170850025409.a, A359237.P15086799658931664347.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A340453, A340453.P332786434363878656.a, A359270, A359270.P1071821864642019531.a, A001878, A001878.P13516976986806296717.f1, A001878.P13516976986806296717.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A359237

/-! ## A359237.P16442343101245776050

`A083912(10*n+4)`
-/

namespace A359237.P16442343101245776050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (10 * n + 4)

end

end A359237.P16442343101245776050

namespace A359237

/-- `A083912(10*n+4)` -/
def P16442343101245776050.Spec : Prop :=
  ∀ n, P16442343101245776050.a n = A359237 (n + 1)

end A359237

/-! ## A359237.P15004904034537302936

`A083914(10*n+4)`
-/

namespace A359237.P15004904034537302936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (10 * n + 4)

end

end A359237.P15004904034537302936

namespace A359237

/-- `A083914(10*n+4)` -/
def P15004904034537302936.Spec : Prop :=
  ∀ n, P15004904034537302936.a n = A359237 (n + 1)

end A359237

/-! ## A359237.P7789316737073589092

`A330348(A017305(n)+1)`
-/

namespace A359237.P7789316737073589092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330348 (A017305 n + 1).toNat

end

end A359237.P7789316737073589092

namespace A359237

/-- `A330348(A017305(n)+1)` -/
def P7789316737073589092.Spec : Prop :=
  ∀ n, P7789316737073589092.a n = A359237 (n + 1)

end A359237

/-! ## A359237.P11683685613753595772

`A330348(2*A016873(n))`
-/

namespace A359237.P11683685613753595772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330348 (2 * A016873 n).toNat

end

end A359237.P11683685613753595772

namespace A359237

/-- `A330348(2*A016873(n))` -/
def P11683685613753595772.Spec : Prop :=
  ∀ n, P11683685613753595772.a n = A359237 (n + 1)

end A359237

/-! ## A359237.P9390931663307180676

`A346392(A017341(n)-2)+1`
-/

namespace A359237.P9390931663307180676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (A017341 n - 2).toNat + 1

end

end A359237.P9390931663307180676

namespace A359237

/-- `A346392(A017341(n)-2)+1` -/
def P9390931663307180676.Spec : Prop :=
  ∀ n, P9390931663307180676.a n = A359237 (n + 1)

end A359237

/-!
# A359238: Number of divisors of 5*n-4 of form 5*k+1.

The programs for A359238, the canonical program `A359238.P351552953664112486` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359238 has offset 1).

The definition of A359238 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359238.P351552953664112486

`A001876(5*(n+1)-4)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359238

/-- `A001876(5*(n+1)-4)` -/
def P351552953664112486.Spec : Prop :=
  ∀ n, P351552953664112486.a n = A359238 (n + 1)

theorem P351552953664112486.correct : P351552953664112486.Spec := by
  intro n
  simp only [A359238, Nat.add_sub_cancel]

end A359238

/-! ## A359238.P14256403100205994241

`A359241(n+1)+A340456(n)`
-/

namespace A359238.P14256403100205994241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359241 (n + 1) + A340456 n

end

end A359238.P14256403100205994241

namespace A359238

/-- `A359241(n+1)+A340456(n)` -/
def P14256403100205994241.Spec : Prop :=
  ∀ n, P14256403100205994241.a n = A359238 (n + 1)

theorem P14256403100205994241.correct : P14256403100205994241.Spec := by
  intro n
  simp only [A359238, Nat.add_sub_cancel, A359238.P14256403100205994241.a, A359238.P351552953664112486.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A340456, A340456.P11012612934613790888.a, A359241, A359241.P900198645163222013.a, A001899, A001899.P11284131779432279770.f1, A001899.P11284131779432279770.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A359238

/-! ## A359238.P16673350838103141104

`A083912(10*n+2)`
-/

namespace A359238.P16673350838103141104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (10 * n + 2)

end

end A359238.P16673350838103141104

namespace A359238

/-- `A083912(10*n+2)` -/
def P16673350838103141104.Spec : Prop :=
  ∀ n, P16673350838103141104.a n = A359238 (n + 1)

end A359238

/-! ## A359238.P2266325369993090234

`A330348(9*n+2+n)`
-/

namespace A359238.P2266325369993090234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330348 (9 * n + 2 + n)

end

end A359238.P2266325369993090234

namespace A359238

/-- `A330348(9*n+2+n)` -/
def P2266325369993090234.Spec : Prop :=
  ∀ n, P2266325369993090234.a n = A359238 (n + 1)

end A359238

/-! ## A359238.P2398298611408562249

`A346392(2*A016861(n))+1`
-/

namespace A359238.P2398298611408562249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (2 * A016861 n).toNat + 1

end

end A359238.P2398298611408562249

namespace A359238

/-- `A346392(2*A016861(n))+1` -/
def P2398298611408562249.Spec : Prop :=
  ∀ n, P2398298611408562249.a n = A359238 (n + 1)

end A359238

/-! ## A359238.P10842794634532145701

`A346392(A016873(2*n))+1`
-/

namespace A359238.P10842794634532145701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (A016873 (2 * n)).toNat + 1

end

end A359238.P10842794634532145701

namespace A359238

/-- `A346392(A016873(2*n))+1` -/
def P10842794634532145701.Spec : Prop :=
  ∀ n, P10842794634532145701.a n = A359238 (n + 1)

end A359238

/-! ## A359238.P3558346967300010072

`A364044(A139245(n+1))`
-/

namespace A359238.P3558346967300010072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364044 (A139245 (n + 1)).toNat

end

end A359238.P3558346967300010072

namespace A359238

/-- `A364044(A139245(n+1))` -/
def P3558346967300010072.Spec : Prop :=
  ∀ n, P3558346967300010072.a n = A359238 (n + 1)

end A359238

/-!
# A359239: Number of divisors of 3*n-2 of form 3*k+2.

The programs for A359239, the canonical program `A359239.P16669171904061520890` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359239 has offset 1).

The definition of A359239 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001822, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359239.P16669171904061520890

`A001822(3*n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A359239

/-- `A001822(3*n+1)` -/
def P16669171904061520890.Spec : Prop :=
  ∀ n, P16669171904061520890.a n = A359239 (n + 1)

theorem P16669171904061520890.correct : P16669171904061520890.Spec := by
  intro n
  simp only [A359239, Nat.add_sub_cancel]

end A359239

/-! ## A359239.P11914351111980425339

`∑{d}[9*n+3, C(#, 2)%3]`
-/

namespace A359239.P11914351111980425339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose d 2 % 3

end

end A359239.P11914351111980425339

namespace A359239

/-- `∑{d}[9*n+3, C(#, 2)%3]` -/
def P11914351111980425339.Spec : Prop :=
  ∀ n, (P11914351111980425339.a n : ℤ) = A359239 (n + 1)

end A359239

/-! ## A359239.P613728238833468459

`A359212(n+1)-A033687(n)`
-/

namespace A359239.P613728238833468459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359212 (n + 1) - A033687 n

end

end A359239.P613728238833468459

namespace A359239

/-- `A359212(n+1)-A033687(n)` -/
def P613728238833468459.Spec : Prop :=
  ∀ n, P613728238833468459.a n = A359239 (n + 1)

end A359239

/-! ## A359239.P4156988162944873289

`A372715(n+1)-A359212(n+1)`
-/

namespace A359239.P4156988162944873289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372715 (n + 1) - A359212 (n + 1)

end

end A359239.P4156988162944873289

namespace A359239

/-- `A372715(n+1)-A359212(n+1)` -/
def P4156988162944873289.Spec : Prop :=
  ∀ n, P4156988162944873289.a n = A359239 (n + 1)

end A359239

/-! ## A359239.P12252806580021372029

`A000005(3*n+1)-A359212(n+1)`
-/

namespace A359239.P12252806580021372029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 1) - A359212 (n + 1)

end

end A359239.P12252806580021372029

namespace A359239

/-- `A000005(3*n+1)-A359212(n+1)` -/
def P12252806580021372029.Spec : Prop :=
  ∀ n, P12252806580021372029.a n = A359239 (n + 1)

end A359239

/-! ## A359239.P1260319796225527029

`A293896(1+3*n)`
-/

namespace A359239.P1260319796225527029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293896 (1 + 3 * n)

end

end A359239.P1260319796225527029

namespace A359239

/-- `A293896(1+3*n)` -/
def P1260319796225527029.Spec : Prop :=
  ∀ n, P1260319796225527029.a n = A359239 (n + 1)

end A359239

/-! ## A359239.P17803273997090342210

`A359211(2*n+1)-A359308(n+1)`
-/

namespace A359239.P17803273997090342210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359211 (2 * n + 1) - A359308 (n + 1)

end

end A359239.P17803273997090342210

namespace A359239

/-- `A359211(2*n+1)-A359308(n+1)` -/
def P17803273997090342210.Spec : Prop :=
  ∀ n, P17803273997090342210.a n = A359239 (n + 1)

end A359239

/-! ## A359239.P16466798848580148768

`A359211(2*n+1)-A359306(2*n+1)`
-/

namespace A359239.P16466798848580148768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359211 (2 * n + 1) - A359306 (2 * n + 1)

end

end A359239.P16466798848580148768

namespace A359239

/-- `A359211(2*n+1)-A359306(2*n+1)` -/
def P16466798848580148768.Spec : Prop :=
  ∀ n, P16466798848580148768.a n = A359239 (n + 1)

end A359239

/-! ## A359239.P8932118782060582552

`A326395(3*n+1)`
-/

namespace A359239.P8932118782060582552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326395 (3 * n + 1)

end

end A359239.P8932118782060582552

namespace A359239

/-- `A326395(3*n+1)` -/
def P8932118782060582552.Spec : Prop :=
  ∀ n, P8932118782060582552.a n = A359239 (n + 1)

end A359239

/-! ## A359239.P15174044665864868240

`A001817(3*n+1)-A033687(n)`
-/

namespace A359239.P15174044665864868240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (3 * n + 1) - A033687 n

end

end A359239.P15174044665864868240

namespace A359239

/-- `A001817(3*n+1)-A033687(n)` -/
def P15174044665864868240.Spec : Prop :=
  ∀ n, P15174044665864868240.a n = A359239 (n + 1)

theorem P15174044665864868240.correct : P15174044665864868240.Spec := by
  intro n
  simp only [A359239, Nat.add_sub_cancel, A359239.P15174044665864868240.a, A359239.P16669171904061520890.a, A001817, A001817.P2839206695684961582.f1, A001817.P2839206695684961582.a, A001822, A001822.P18157722536970199446.f1, A001822.P18157722536970199446.a, A033687, A033687.P2538927358754509175.a, A002324, A002324.P17421748272452344756.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A359239

/-! ## A359239.P3130838619393747817

`∑{d}[3*n+1, A022003(#)]`
-/

namespace A359239.P3130838619393747817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A022003 d

end

end A359239.P3130838619393747817

namespace A359239

/-- `∑{d}[3*n+1, A022003(#)]` -/
def P3130838619393747817.Spec : Prop :=
  ∀ n, P3130838619393747817.a n = A359239 (n + 1)

end A359239

/-!
# A359240: Number of divisors of 4*n-3 of form 4*k+3.

The programs for A359240, the canonical program `A359240.P7476184715951580823` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359240 has offset 1).

The definition of A359240 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359240.P7476184715951580823

`A001842(4*(n+1)-3)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359240

/-- `A001842(4*(n+1)-3)` -/
def P7476184715951580823.Spec : Prop :=
  ∀ n, P7476184715951580823.a n = A359240 (n + 1)

theorem P7476184715951580823.correct : P7476184715951580823.Spec := by
  intro n
  simp only [A359240, Nat.add_sub_cancel]

end A359240

/-! ## A359240.P11445328514732095267

`∑{d}[A016813(n), floor(#%4/2)]`
-/

namespace A359240.P11445328514732095267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌊((d % 4 : ℕ) : ℚ) / 2⌋

end

end A359240.P11445328514732095267

namespace A359240

/-- `∑{d}[A016813(n), floor(#%4/2)]` -/
def P11445328514732095267.Spec : Prop :=
  ∀ n, P11445328514732095267.a n = A359240 (n + 1)

end A359240

/-! ## A359240.P2642300034305361616

`A359227(n+1)-A008441(n)`
-/

namespace A359240.P2642300034305361616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359227 (n + 1) - A008441 n

end

end A359240.P2642300034305361616

namespace A359240

/-- `A359227(n+1)-A008441(n)` -/
def P2642300034305361616.Spec : Prop :=
  ∀ n, P2642300034305361616.a n = A359240 (n + 1)

end A359240

/-! ## A359240.P13761758252150792473

`A359227(n+1)-A125079(2*n)`
-/

namespace A359240.P13761758252150792473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359227 (n + 1) - A125079 (2 * n)

end

end A359240.P13761758252150792473

namespace A359240

/-- `A359227(n+1)-A125079(2*n)` -/
def P13761758252150792473.Spec : Prop :=
  ∀ n, P13761758252150792473.a n = A359240 (n + 1)

end A359240

/-! ## A359240.P14784172201689986997

`A359290(Δ[n²])`
-/

namespace A359240.P14784172201689986997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359290 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A359240.P14784172201689986997

namespace A359240

/-- `A359290(Δ[n²])` -/
def P14784172201689986997.Spec : Prop :=
  ∀ n, P14784172201689986997.a n = A359240 (n + 1)

end A359240

/-! ## A359240.P2458803170276454790

`A359289(2*n+1)-A008441(n)`
-/

namespace A359240.P2458803170276454790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359289 (2 * n + 1) - A008441 n

end

end A359240.P2458803170276454790

namespace A359240

/-- `A359289(2*n+1)-A008441(n)` -/
def P2458803170276454790.Spec : Prop :=
  ∀ n, P2458803170276454790.a n = A359240 (n + 1)

end A359240

/-! ## A359240.P11422476594162649379

`A359227(n+1)-A129447(2*n)`
-/

namespace A359240.P11422476594162649379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359227 (n + 1) - A129447 (2 * n)

end

end A359240.P11422476594162649379

namespace A359240

/-- `A359227(n+1)-A129447(2*n)` -/
def P11422476594162649379.Spec : Prop :=
  ∀ n, P11422476594162649379.a n = A359240 (n + 1)

end A359240

/-! ## A359240.P7860203636151953637

`A099774(2*n+1)-A359289(2*n+1)`
-/

namespace A359240.P7860203636151953637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (2 * n + 1) - A359289 (2 * n + 1)

end

end A359240.P7860203636151953637

namespace A359240

/-- `A099774(2*n+1)-A359289(2*n+1)` -/
def P7860203636151953637.Spec : Prop :=
  ∀ n, P7860203636151953637.a n = A359240 (n + 1)

end A359240

/-! ## A359240.P3347910573551706281

`A359290(2*n+1)/A007318(A359279(n+1))`
-/

namespace A359240.P3347910573551706281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359290 (2 * n + 1) : ℚ) / (A007318 (A359279 (n + 1)).toNat : ℚ)

end

end A359240.P3347910573551706281

namespace A359240

/-- `A359290(2*n+1)/A007318(A359279(n+1))` -/
def P3347910573551706281.Spec : Prop :=
  ∀ n, P3347910573551706281.a n = (A359240 (n + 1) : ℚ)

end A359240

/-! ## A359240.P827387901782489462

`A359290(2*n+1)/A359233(A359238(n+1))`
-/

namespace A359240.P827387901782489462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359290 (2 * n + 1) : ℚ) / (A359233 (A359238 (n + 1)).toNat : ℚ)

end

end A359240.P827387901782489462

namespace A359240

/-- `A359290(2*n+1)/A359233(A359238(n+1))` -/
def P827387901782489462.Spec : Prop :=
  ∀ n, P827387901782489462.a n = (A359240 (n + 1) : ℚ)

end A359240

/-! ## A359240.P6059276215067035825

`A293513(3*n+n+1)`
-/

namespace A359240.P6059276215067035825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (3 * n + (n + 1))

end

end A359240.P6059276215067035825

namespace A359240

/-- `A293513(3*n+n+1)` -/
def P6059276215067035825.Spec : Prop :=
  ∀ n, P6059276215067035825.a n = A359240 (n + 1)

end A359240

/-! ## A359240.P2076457750108882019

`A001842(xor(1, 4*n))`
-/

namespace A359240.P2076457750108882019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (Nat.xor 1 (4 * n))

end

end A359240.P2076457750108882019

namespace A359240

/-- `A001842(xor(1, 4*n))` -/
def P2076457750108882019.Spec : Prop :=
  ∀ n, P2076457750108882019.a n = A359240 (n + 1)

end A359240

/-! ## A359240.P6757349717454688116

`∑{d}[A016813(n), A166445(#)]`
-/

namespace A359240.P6757349717454688116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A166445 d

end

end A359240.P6757349717454688116

namespace A359240

/-- `∑{d}[A016813(n), A166445(#)]` -/
def P6757349717454688116.Spec : Prop :=
  ∀ n, P6757349717454688116.a n = A359240 (n + 1)

end A359240

/-!
# A359241: Number of divisors of 5*n-4 of form 5*k+4.

The programs for A359241, the canonical program `A359241.P900198645163222013` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359241 has offset 1).

The definition of A359241 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001899, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359241.P900198645163222013

`A001899(5*(n+1)-4)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A359241

/-- `A001899(5*(n+1)-4)` -/
def P900198645163222013.Spec : Prop :=
  ∀ n, P900198645163222013.a n = A359241 (n + 1)

theorem P900198645163222013.correct : P900198645163222013.Spec := by
  intro n
  simp only [A359241, Nat.add_sub_cancel]

end A359241

/-! ## A359241.P10342614627662324347

`A359238(n+1)-A340456(n)`
-/

namespace A359241.P10342614627662324347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359238 (n + 1) - A340456 n

end

end A359241.P10342614627662324347

namespace A359241

/-- `A359238(n+1)-A340456(n)` -/
def P10342614627662324347.Spec : Prop :=
  ∀ n, P10342614627662324347.a n = A359241 (n + 1)

theorem P10342614627662324347.correct : P10342614627662324347.Spec := by
  intro n
  simp only [A359241, Nat.add_sub_cancel, A359241.P10342614627662324347.a, A359241.P900198645163222013.a, A001899, A001899.P11284131779432279770.f1, A001899.P11284131779432279770.a, A340456, A340456.P11012612934613790888.a, A359238, A359238.P351552953664112486.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A359241

/-! ## A359241.P18390296025670105090

`A359238(n+1)-A229802(5*n+1)`
-/

namespace A359241.P18390296025670105090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359238 (n + 1) - A229802 (5 * n + 1)

end

end A359241.P18390296025670105090

namespace A359241

/-- `A359238(n+1)-A229802(5*n+1)` -/
def P18390296025670105090.Spec : Prop :=
  ∀ n, P18390296025670105090.a n = A359241 (n + 1)

end A359241

/-! ## A359241.P16709786985738926530

`A359238(n+1)-∑{d}[5*n+1, A163812(#)]`
-/

namespace A359241.P16709786985738926530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359238 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A163812 d

end

end A359241.P16709786985738926530

namespace A359241

/-- `A359238(n+1)-∑{d}[5*n+1, A163812(#)]` -/
def P16709786985738926530.Spec : Prop :=
  ∀ n, P16709786985738926530.a n = A359241 (n + 1)

end A359241

/-! ## A359241.P9540519665175088903

`A359238(n+1)-∑{d}[5*n+1, A244895(#)]`
-/

namespace A359241.P9540519665175088903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359238 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A244895 d

end

end A359241.P9540519665175088903

namespace A359241

/-- `A359238(n+1)-∑{d}[5*n+1, A244895(#)]` -/
def P9540519665175088903.Spec : Prop :=
  ∀ n, P9540519665175088903.a n = A359241 (n + 1)

end A359241

/-! ## A359241.P11051095037650613458

`abs(∑{d}[5*n+1, A330025(#)]-A359238(n+1))`
-/

namespace A359241.P11051095037650613458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), A330025 d - A359238 (n + 1)|

end

end A359241.P11051095037650613458

namespace A359241

/-- `abs(∑{d}[5*n+1, A330025(#)]-A359238(n+1))` -/
def P11051095037650613458.Spec : Prop :=
  ∀ n, P11051095037650613458.a n = A359241 (n + 1)

end A359241

/-! ## A359241.P11889325538859345880

`A083918(10*n+2)`
-/

namespace A359241.P11889325538859345880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (10 * n + 2)

end

end A359241.P11889325538859345880

namespace A359241

/-- `A083918(10*n+2)` -/
def P11889325538859345880.Spec : Prop :=
  ∀ n, P11889325538859345880.a n = A359241 (n + 1)

end A359241

/-!
# A359242: Consider the race between primes, squarefree semiprimes, ..., products of k distinct primes; sequence indicates when one overtakes another to give a new race leader.

The programs for A359242, there is no canonical definition to state claims against.
-/

/-! ## A359242.P10470876620063183115

`A335293(n+2)-(2-A000122(n²))`
-/

namespace A359242.P10470876620063183115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335293 (n + 2) - (2 - A000122 (n ^ 2))

end

end A359242.P10470876620063183115

/-! ## A359242.P12753615293498402310

`A335293(n+2)-A005928(A001105(n))`
-/

namespace A359242.P12753615293498402310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335293 (n + 2) - A005928 (A001105 n).toNat

end

end A359242.P12753615293498402310

/-! ## A359242.P17657757474002066848

`A335293(n+2)-A166486(A000118(n))`
-/

namespace A359242.P17657757474002066848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335293 (n + 2) - A166486 (A000118 n).toNat

end

end A359242.P17657757474002066848

/-! ## A359242.P12749572076847205637

`A335293(n+2)+A121373(A100877(n+1))`
-/

namespace A359242.P12749572076847205637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335293 (n + 2) + A121373 (A100877 (n + 1)).toNat

end

end A359242.P12749572076847205637

/-! ## A359242.P4739138809757897586

`A335293(n+2)+A008683(A223255(n+1))`
-/

namespace A359242.P4739138809757897586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335293 (n + 2) + A008683 (A223255 (n + 1)).toNat

end

end A359242.P4739138809757897586

/-!
# A359244: Number of divisors of 5*n-4 of form 5*k+2.

The programs for A359244, the canonical program `A359244.P5355870828912035672` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359244 has offset 1).

The definition of A359244 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001877, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359244.P5355870828912035672

`A001877(5*(n+1)-4)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359244

/-- `A001877(5*(n+1)-4)` -/
def P5355870828912035672.Spec : Prop :=
  ∀ n, P5355870828912035672.a n = A359244 (n + 1)

theorem P5355870828912035672.correct : P5355870828912035672.Spec := by
  intro n
  simp only [A359244, Nat.add_sub_cancel]

end A359244

/-! ## A359244.P16975195314891972172

`A001878(5*(n+1)-4)`
-/

namespace A359244.P16975195314891972172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (5 * (n + 1) - 4)

end

end A359244.P16975195314891972172

namespace A359244

/-- `A001878(5*(n+1)-4)` -/
def P16975195314891972172.Spec : Prop :=
  ∀ n, P16975195314891972172.a n = A359244 (n + 1)

end A359244

/-! ## A359244.P9258084521351361821

`∑{d}[5*n+1, A198517(#)]`
-/

namespace A359244.P9258084521351361821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A198517 d

end

end A359244.P9258084521351361821

namespace A359244

/-- `∑{d}[5*n+1, A198517(#)]` -/
def P9258084521351361821.Spec : Prop :=
  ∀ n, P9258084521351361821.a n = A359244 (n + 1)

end A359244

/-! ## A359244.P17880300263983193151

`A083914(A017293(n))`
-/

namespace A359244.P17880300263983193151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A017293 n).toNat

end

end A359244.P17880300263983193151

namespace A359244

/-- `A083914(A017293(n))` -/
def P17880300263983193151.Spec : Prop :=
  ∀ n, P17880300263983193151.a n = A359244 (n + 1)

end A359244

/-! ## A359244.P2483313823683959206

`A083914(A017281(n)+1)`
-/

namespace A359244.P2483313823683959206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A017281 n + 1).toNat

end

end A359244.P2483313823683959206

namespace A359244

/-- `A083914(A017281(n)+1)` -/
def P2483313823683959206.Spec : Prop :=
  ∀ n, P2483313823683959206.a n = A359244 (n + 1)

end A359244

/-! ## A359244.P15484838913494337354

`A083916(A017317(n)-2)`
-/

namespace A359244.P15484838913494337354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A017317 n - 2).toNat

end

end A359244.P15484838913494337354

namespace A359244

/-- `A083916(A017317(n)-2)` -/
def P15484838913494337354.Spec : Prop :=
  ∀ n, P15484838913494337354.a n = A359244 (n + 1)

end A359244

/-! ## A359244.P15559554523626744268

`A083916(A016873(2*n))`
-/

namespace A359244.P15559554523626744268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A016873 (2 * n)).toNat

end

end A359244.P15559554523626744268

namespace A359244

/-- `A083916(A016873(2*n))` -/
def P15559554523626744268.Spec : Prop :=
  ∀ n, P15559554523626744268.a n = A359244 (n + 1)

end A359244

/-! ## A359244.P14987364330982006549

`A083916(A370532(n+2)+2)`
-/

namespace A359244.P14987364330982006549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A370532 (n + 2) + 2).toNat

end

end A359244.P14987364330982006549

namespace A359244

/-- `A083916(A370532(n+2)+2)` -/
def P14987364330982006549.Spec : Prop :=
  ∀ n, P14987364330982006549.a n = A359244 (n + 1)

end A359244

/-! ## A359244.P11964762947310412316

`A083914(A008706(2*n)+2)`
-/

namespace A359244.P11964762947310412316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A008706 (2 * n) + 2).toNat

end

end A359244.P11964762947310412316

namespace A359244

/-- `A083914(A008706(2*n)+2)` -/
def P11964762947310412316.Spec : Prop :=
  ∀ n, P11964762947310412316.a n = A359244 (n + 1)

end A359244

/-! ## A359244.P14402665446657910384

`A083914(A016885(2*n)-1)`
-/

namespace A359244.P14402665446657910384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A016885 (2 * n) - 1).toNat

end

end A359244.P14402665446657910384

namespace A359244

/-- `A083914(A016885(2*n)-1)` -/
def P14402665446657910384.Spec : Prop :=
  ∀ n, P14402665446657910384.a n = A359244 (n + 1)

end A359244

/-! ## A359244.P4894572168271309723

`A083916(A017317(2*n)/2)`
-/

namespace A359244.P4894572168271309723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (SequenceMachineLib.roundAway ((A017317 (2 * n) : ℚ) / 2)).toNat

end

end A359244.P4894572168271309723

namespace A359244

/-- `A083916(A017317(2*n)/2)` -/
def P4894572168271309723.Spec : Prop :=
  ∀ n, P4894572168271309723.a n = A359244 (n + 1)

end A359244

/-! ## A359244.P12119713951917903848

`A083916(A053741(2*n)/2)`
-/

namespace A359244.P12119713951917903848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (SequenceMachineLib.roundAway ((A053741 (2 * n) : ℚ) / 2)).toNat

end

end A359244.P12119713951917903848

namespace A359244

/-- `A083916(A053741(2*n)/2)` -/
def P12119713951917903848.Spec : Prop :=
  ∀ n, P12119713951917903848.a n = A359244 (n + 1)

end A359244

/-!
# A359245: The smallest square with exactly n circular loops (or holes) in its decimal expansion (A064532).

The programs for A359245, there is no canonical definition to state claims against.
-/

/-! ## A359245.P4036776217023461507

`A195151(A061954(2*n+3)-1)²`
-/

namespace A359245.P4036776217023461507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195151 (A061954 (2 * n + 3) - 1).toNat ^ 2

end

end A359245.P4036776217023461507

/-!
# A359246: Lexicographically earliest sequence of positive numbers in which no nonempty subsequence of consecutive terms sums to a triangular number.

The programs for A359246, there is no canonical definition to state claims against.
-/

/-! ## A359246.P11829804873227023824

`Δ[A030194(n)]`
-/

namespace A359246.P11829804873227023824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359246.P11829804873227023824

/-! ## A359246.P3342300282911565772

`Δ[A336531(n+1)]`
-/

namespace A359246.P3342300282911565772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359246.P3342300282911565772

/-! ## A359246.P14643816157536699835

`Δ[eq[0, A019509(n)]]`
-/

namespace A359246.P14643816157536699835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019509 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A359246.P14643816157536699835

/-! ## A359246.P4267228144348941112

`A030194(n+1)-A030194(n)`
-/

namespace A359246.P4267228144348941112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030194 (n + 1) - A030194 n

end

end A359246.P4267228144348941112

/-! ## A359246.P17179713796698325788

`abs(Δ[A336531(A008620(3*n))])`
-/

namespace A359246.P17179713796698325788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336531 (A008620 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A359246.P17179713796698325788

/-! ## A359246.P8023900547250197507

`A336531(n+2)-A336531(n+1)`
-/

namespace A359246.P8023900547250197507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336531 (n + 2) - A336531 (n + 1)

end

end A359246.P8023900547250197507

/-!
# A359247: The bottom entry in the absolute difference triangle of the elements in the Collatz trajectory of n.

The programs for A359247, there is no canonical definition to state claims against.
-/

/-! ## A359247.P8415383089125147030

`A254113(A303118(2*n+3)-A336499(n))`
-/

namespace A359247.P8415383089125147030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254113 (A303118 (2 * n + 3) - A336499 n).toNat

end

end A359247.P8415383089125147030

/-!
# A359249: a(n) is the number of primes p such that (n/p)^2 + 1 is prime.

The programs for A359249, the canonical program `A359249.P8196808652904358102` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359249 has offset 1).

The definition of A359249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359249.P8196808652904358102

`∑{d}[n+1, A010051(#)*A295405((n+1)/#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359249

/-- `∑{d}[n+1, A010051(#)*A295405((n+1)/#)]` -/
def P8196808652904358102.Spec : Prop :=
  ∀ n, P8196808652904358102.a n = A359249 (n + 1)

theorem P8196808652904358102.correct : P8196808652904358102.Spec := by
  intro n
  simp only [A359249, Nat.add_sub_cancel]

end A359249

/-! ## A359249.P16849348959714767323

`A082115(A001222(n+1)^A007431(n+1))`
-/

namespace A359249.P16849348959714767323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082115 (SequenceMachineLib.roundAway ((A001222 (n + 1) : ℚ) ^ (A007431 (n + 1) : ℤ))).toNat

end

end A359249.P16849348959714767323

namespace A359249

/-- `A082115(A001222(n+1)^A007431(n+1))` -/
def P16849348959714767323.Spec : Prop :=
  ∀ n, P16849348959714767323.a n = A359249 (n + 1)

end A359249

/-! ## A359249.P14753820008841386666

`A339890(A163767(n+1))%A168330(n+2)`
-/

namespace A359249.P14753820008841386666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339890 (A163767 (n + 1)).toNat) (A168330 (n + 2))

end

end A359249.P14753820008841386666

namespace A359249

/-- `A339890(A163767(n+1))%A168330(n+2)` -/
def P14753820008841386666.Spec : Prop :=
  ∀ n, P14753820008841386666.a n = A359249 (n + 1)

end A359249

/-! ## A359249.P15395102233179236350

`A380959(gcd(A380959(2*(n+2)), A392177(n+4)))`
-/

namespace A359249.P15395102233179236350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380959 (Int.gcd (A380959 (2 * (n + 2))) (A392177 (n + 4)))

end

end A359249.P15395102233179236350

namespace A359249

/-- `A380959(gcd(A380959(2*(n+2)), A392177(n+4)))` -/
def P15395102233179236350.Spec : Prop :=
  ∀ n, P15395102233179236350.a n = A359249 (n + 1)

end A359249

/-! ## A359249.P9344593084509526999

`A320655(3*(n+1))^A333806(A360459(3*n+5))`
-/

namespace A359249.P9344593084509526999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320655 (3 * (n + 1)) : ℚ) ^ (A333806 (A360459 (3 * n + 5)).toNat : ℤ)

end

end A359249.P9344593084509526999

namespace A359249

/-- `A320655(3*(n+1))^A333806(A360459(3*n+5))` -/
def P9344593084509526999.Spec : Prop :=
  ∀ n, P9344593084509526999.a n = (A359249 (n + 1) : ℚ)

end A359249

/-!
# A359251: Sum of terms in an odd-even expansion of n.

The programs for A359251, there is no canonical definition to state claims against.
-/

/-! ## A359251.P16715443053493407360

`record[A225901(n+2)-A287293(n+1)]`
-/

namespace A359251.P16715443053493407360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (n + 2) - A287293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359251.P16715443053493407360

/-!
# A359252: Number of vertices among all distinct circles that can be constructed from n equally spaced points along a line using only a compass.

The programs for A359252, there is no canonical definition to state claims against.
-/

/-! ## A359252.P7824200338650970441

`A359254(n+2)-A359253(n+2)+1`
-/

namespace A359252.P7824200338650970441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359254 (n + 2) - A359253 (n + 2) + 1

end

end A359252.P7824200338650970441

/-! ## A359252.P14412021166839690512

`A359254(n+2)-A023443(A359253(n+2))`
-/

namespace A359252.P14412021166839690512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359254 (n + 2) - A023443 (A359253 (n + 2)).toNat

end

end A359252.P14412021166839690512

/-!
# A359253: Number of regions among all distinct circles that can be constructed from n equally spaced points along a line using only a compass.

The programs for A359253, there is no canonical definition to state claims against.
-/

/-! ## A359253.P7682072857464685080

`A359254(n+2)-A359252(n+2)+1`
-/

namespace A359253.P7682072857464685080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359254 (n + 2) - A359252 (n + 2) + 1

end

end A359253.P7682072857464685080

/-! ## A359253.P5504080561074087458

`A359254(n+2)-A023443(A359252(n+2))`
-/

namespace A359253.P5504080561074087458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359254 (n + 2) - A023443 (A359252 (n + 2)).toNat

end

end A359253.P5504080561074087458

/-!
# A359254: Number of edges among all distinct circles that can be constructed from n equally spaced points along a line using only a compass.

The programs for A359254, there is no canonical definition to state claims against.
-/

/-! ## A359254.P12886942362164658282

`A359252(n+2)+A359253(n+2)-1`
-/

namespace A359254.P12886942362164658282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359252 (n + 2) + A359253 (n + 2) - 1

end

end A359254.P12886942362164658282

/-! ## A359254.P14354152671114969699

`A359253(n+2)+A023443(A359252(n+2))`
-/

namespace A359254.P14354152671114969699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359253 (n + 2) + A023443 (A359252 (n + 2)).toNat

end

end A359254.P14354152671114969699

/-! ## A359254.P16434801231827625425

`A185048(A359253(n+2)+A359252(n+2))`
-/

namespace A359254.P16434801231827625425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A359253 (n + 2) + A359252 (n + 2)).toNat

end

end A359254.P16434801231827625425

/-!
# A359255: Number of steps to reach a maximum starting with n in the map x->A359194(x) (binary complement of 3n), or -1 if n goes to infinity.

The programs for A359255, there is no canonical definition to state claims against.
-/

/-! ## A359255.P8631364238010608004

`A359207(n)-A359207(A359208(n))`
-/

namespace A359255.P8631364238010608004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359207 n - A359207 (A359208 n).toNat

end

end A359255.P8631364238010608004

/-!
# A359257: First differences of A002476.

The programs for A359257, the canonical program `A359257.P13904488083809820998` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359257 has offset 1).

The definition of A359257 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002476, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359257.P13904488083809820998

`A002476(n+2)-A002476(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A359257

/-- `A002476(n+2)-A002476(n+1)` -/
def P13904488083809820998.Spec : Prop :=
  ∀ n, P13904488083809820998.a n = A359257 (n + 1)

theorem P13904488083809820998.correct : P13904488083809820998.Spec := by
  intro n
  simp only [A359257, Nat.add_sub_cancel]

end A359257

/-! ## A359257.P11437505085140415291

`Δ[p?[3*n+1]]`
-/

namespace A359257.P11437505085140415291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A359257.P11437505085140415291

namespace A359257

/-- `Δ[p?[3*n+1]]` -/
def P11437505085140415291.Spec : Prop :=
  ∀ n, P11437505085140415291.a n = A359257 (n + 1)

end A359257

/-! ## A359257.P11750555261447231909

`p?[round(3/acot(n))+4]-p?[3*n+1]`
-/

namespace A359257.P11750555261447231909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (n : ℝ)) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A359257.P11750555261447231909

namespace A359257

/-- `p?[round(3/acot(n))+4]-p?[3*n+1]` -/
def P11750555261447231909.Spec : Prop :=
  ∀ n, P11750555261447231909.a n = A359257 (n + 1)

end A359257

/-! ## A359257.P2320874670521411536

`Δ[A002476(1+n)]`
-/

namespace A359257.P2320874670521411536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359257.P2320874670521411536

namespace A359257

/-- `Δ[A002476(1+n)]` -/
def P2320874670521411536.Spec : Prop :=
  ∀ n, P2320874670521411536.a n = A359257 (n + 1)

theorem P2320874670521411536.correct : P2320874670521411536.Spec := by
  intro n
  simp only [A359257, Nat.add_sub_cancel, A359257.P2320874670521411536.f1, A359257.P2320874670521411536.a, A359257.P13904488083809820998.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A359257

/-! ## A359257.P8080487618221253653

`Δ[2*A173177(n+1)]`
-/

namespace A359257.P8080487618221253653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359257.P8080487618221253653

namespace A359257

/-- `Δ[2*A173177(n+1)]` -/
def P8080487618221253653.Spec : Prop :=
  ∀ n, P8080487618221253653.a n = A359257 (n + 1)

end A359257

/-! ## A359257.P13812072134062573676

`Δ[3*A024892(n+1)]`
-/

namespace A359257.P13812072134062573676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A024892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359257.P13812072134062573676

namespace A359257

/-- `Δ[3*A024892(n+1)]` -/
def P13812072134062573676.Spec : Prop :=
  ∀ n, P13812072134062573676.a n = A359257 (n + 1)

end A359257

/-! ## A359257.P3479652243983712863

`Δ[3*A034936(n+1)]`
-/

namespace A359257.P3479652243983712863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A034936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359257.P3479652243983712863

namespace A359257

/-- `Δ[3*A034936(n+1)]` -/
def P3479652243983712863.Spec : Prop :=
  ∀ n, P3479652243983712863.a n = A359257 (n + 1)

end A359257

/-! ## A359257.P6029022596671913529

`Δ[3*A089953(n+1)]`
-/

namespace A359257.P6029022596671913529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A089953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359257.P6029022596671913529

namespace A359257

/-- `Δ[3*A089953(n+1)]` -/
def P6029022596671913529.Spec : Prop :=
  ∀ n, P6029022596671913529.a n = A359257 (n + 1)

end A359257

/-! ## A359257.P12975194213139783409

`Δ[3*A107303(n+1)]`
-/

namespace A359257.P12975194213139783409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A107303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359257.P12975194213139783409

namespace A359257

/-- `Δ[3*A107303(n+1)]` -/
def P12975194213139783409.Spec : Prop :=
  ∀ n, P12975194213139783409.a n = A359257 (n + 1)

end A359257

/-! ## A359257.P13539159856667868582

`Δ[A112772(n+1)/2]`
-/

namespace A359257.P13539159856667868582
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112772 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359257.P13539159856667868582

namespace A359257

/-- `Δ[A112772(n+1)/2]` -/
def P13539159856667868582.Spec : Prop :=
  ∀ n, P13539159856667868582.a n = (A359257 (n + 1) : ℚ)

end A359257

/-! ## A359257.P17685223729705457074

`Δ[3*A153183(n+1)]`
-/

namespace A359257.P17685223729705457074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A153183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359257.P17685223729705457074

namespace A359257

/-- `Δ[3*A153183(n+1)]` -/
def P17685223729705457074.Spec : Prop :=
  ∀ n, P17685223729705457074.a n = A359257 (n + 1)

end A359257

/-! ## A359257.P1192086186276925246

`Δ[A007645(2+n)]`
-/

namespace A359257.P1192086186276925246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359257.P1192086186276925246

namespace A359257

/-- `Δ[A007645(2+n)]` -/
def P1192086186276925246.Spec : Prop :=
  ∀ n, P1192086186276925246.a n = A359257 (n + 1)

end A359257

/-! ## A359257.P2071384787803716965

`Δ[A045375(n+2)]`
-/

namespace A359257.P2071384787803716965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359257.P2071384787803716965

namespace A359257

/-- `Δ[A045375(n+2)]` -/
def P2071384787803716965.Spec : Prop :=
  ∀ n, P2071384787803716965.a n = A359257 (n + 1)

end A359257

/-! ## A359257.P1615165639638086227

`Δ[A123365(n+2)]`
-/

namespace A359257.P1615165639638086227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359257.P1615165639638086227

namespace A359257

/-- `Δ[A123365(n+2)]` -/
def P1615165639638086227.Spec : Prop :=
  ∀ n, P1615165639638086227.a n = A359257 (n + 1)

end A359257

/-! ## A359257.P1479165752856031122

`Δ[Δ[A172113(n+1)]]`
-/

namespace A359257.P1479165752856031122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172113 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359257.P1479165752856031122

namespace A359257

/-- `Δ[Δ[A172113(n+1)]]` -/
def P1479165752856031122.Spec : Prop :=
  ∀ n, P1479165752856031122.a n = A359257 (n + 1)

end A359257

/-! ## A359257.P11624364839295468835

`A007645(n+3)-A007645(n+2)`
-/

namespace A359257.P11624364839295468835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 3) - A007645 (n + 2)

end

end A359257.P11624364839295468835

namespace A359257

/-- `A007645(n+3)-A007645(n+2)` -/
def P11624364839295468835.Spec : Prop :=
  ∀ n, P11624364839295468835.a n = A359257 (n + 1)

end A359257

/-! ## A359257.P237419127249078359

`A045375(n+3)-A045375(n+2)`
-/

namespace A359257.P237419127249078359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 3) - A045375 (n + 2)

end

end A359257.P237419127249078359

namespace A359257

/-- `A045375(n+3)-A045375(n+2)` -/
def P237419127249078359.Spec : Prop :=
  ∀ n, P237419127249078359.a n = A359257 (n + 1)

end A359257

/-! ## A359257.P13119449821239700321

`A123365(n+3)-A123365(n+2)`
-/

namespace A359257.P13119449821239700321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 3) - A123365 (n + 2)

end

end A359257.P13119449821239700321

namespace A359257

/-- `A123365(n+3)-A123365(n+2)` -/
def P13119449821239700321.Spec : Prop :=
  ∀ n, P13119449821239700321.a n = A359257 (n + 1)

end A359257

/-! ## A359257.P17269511299989644579

`Δ[A045331(n+3)]`
-/

namespace A359257.P17269511299989644579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359257.P17269511299989644579

namespace A359257

/-- `Δ[A045331(n+3)]` -/
def P17269511299989644579.Spec : Prop :=
  ∀ n, P17269511299989644579.a n = A359257 (n + 1)

end A359257

/-! ## A359257.P9866295800902665825

`Δ[record[A107744(n+1)]]`
-/

namespace A359257.P9866295800902665825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107744 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359257.P9866295800902665825

namespace A359257

/-- `Δ[record[A107744(n+1)]]` -/
def P9866295800902665825.Spec : Prop :=
  ∀ n, P9866295800902665825.a n = A359257 (n + 1)

end A359257

/-!
# A359259: a(n) is the least k such that A359194(k) = A032766(n).

The programs for A359259, there is no canonical definition to state claims against.
-/

/-! ## A359259.P15489170589266560039

`A359268(∑[floor(∑[2^n/3])]+1)`
-/

namespace A359259.P15489170589266560039
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359268 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A359259.P15489170589266560039

/-!
# A359260: Numbers m such that the arithmetic mean of the first k divisors of m is an integer for all k in 1..d(m), where d(m) = A000005(m).

The programs for A359260, there is no canonical definition to state claims against.
-/

/-! ## A359260.P6235052334746924266

`eq[A010875(n), A010875(A337562(n))]`
-/

namespace A359260.P6235052334746924266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A337562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359260.P6235052334746924266

/-! ## A359260.P7799090575794115858

`filter[A175427(2*(n+1)), A297086(#)]`
-/

namespace A359260.P7799090575794115858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A359260.P7799090575794115858

/-! ## A359260.P3178976590627770505

`lt[A000688(A331926(n)), A001511(n+1)]`
-/

namespace A359260.P3178976590627770505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A331926 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359260.P3178976590627770505

/-! ## A359260.P1098495923074884133

`A304713(lt[A352223(n+3), A007865(2*n+3)])`
-/

namespace A359260.P1098495923074884133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352223 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007865 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359260.P1098495923074884133

/-! ## A359260.P15299753145029813285

`record[gcd(A060819(n+1), A119818(2*(n+1)))]`
-/

namespace A359260.P15299753145029813285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060819 (n + 1)) (A119818 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359260.P15299753145029813285

/-!
# A359262: a(n) is the largest number m such that prime(n)^m is in A359260.

The programs for A359262, there is no canonical definition to state claims against.
-/

/-! ## A359262.P17543699595537172167

`A071222(p?[round(8*n/7)]-2)-1`
-/

namespace A359262.P17543699595537172167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2).toNat - 1

end

end A359262.P17543699595537172167

/-! ## A359262.P14854546811075278354

`A071222(A040976(n+1))-1`
-/

namespace A359262.P14854546811075278354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 (A040976 (n + 1)).toNat - 1

end

end A359262.P14854546811075278354

/-! ## A359262.P12918417920043987438

`A053669(A006093(n+1))-2`
-/

namespace A359262.P12918417920043987438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A006093 (n + 1)).toNat - 2

end

end A359262.P12918417920043987438

/-! ## A359262.P6324569277911096762

`A053669(A077063(n+1))-2`
-/

namespace A359262.P6324569277911096762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A077063 (n + 1)).toNat - 2

end

end A359262.P6324569277911096762

/-! ## A359262.P4533846664189422297

`A053669(A040976(n+1)+1)-2`
-/

namespace A359262.P4533846664189422297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A040976 (n + 1) + 1).toNat - 2

end

end A359262.P4533846664189422297

/-! ## A359262.P17810472315437913533

`A053669(A000040(n+1)-1)-2`
-/

namespace A359262.P17810472315437913533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A000040 (n + 1) - 1).toNat - 2

end

end A359262.P17810472315437913533

/-! ## A359262.P7796376595884531309

`A071222(A000040(n+1)-2)-1`
-/

namespace A359262.P7796376595884531309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 (A000040 (n + 1) - 2).toNat - 1

end

end A359262.P7796376595884531309

/-! ## A359262.P13266236300473710070

`A053669(A008864(n+1)-2)-2`
-/

namespace A359262.P13266236300473710070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A008864 (n + 1) - 2).toNat - 2

end

end A359262.P13266236300473710070

/-! ## A359262.P5553498428428221447

`A071222(A008864(n+1)-3)-1`
-/

namespace A359262.P5553498428428221447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 (A008864 (n + 1) - 3).toNat - 1

end

end A359262.P5553498428428221447

/-! ## A359262.P15016694070065018350

`A071222(A065890(n+1)+n)-1`
-/

namespace A359262.P15016694070065018350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 (A065890 (n + 1) + (n : ℤ)).toNat - 1

end

end A359262.P15016694070065018350

/-! ## A359262.P10546426597203406593

`A071222(∑[A054541(n+1)]-2)-1`
-/

namespace A359262.P10546426597203406593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 (∑ j ∈ Finset.range (n + 1), f1 j - 2).toNat - 1

end

end A359262.P10546426597203406593

/-! ## A359262.P15370617498066678073

`A071222(A014688(n+1)-(n+3))-1`
-/

namespace A359262.P15370617498066678073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 (A014688 (n + 1) - (n + 3 : ℤ)).toNat - 1

end

end A359262.P15370617498066678073

/-! ## A359262.P8965105796941851564

`A071222(A161912(n)+A006218(n))-1`
-/

namespace A359262.P8965105796941851564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 (A161912 n + A006218 n).toNat - 1

end

end A359262.P8965105796941851564

/-!
# A359263: Number of compositions of n into three parts, using only natural numbers not in A007283.

The programs for A359263, there is no canonical definition to state claims against.
-/

/-! ## A359263.P12595079299877674828

`∑[A359264(n)]+1-A359264(n)`
-/

namespace A359263.P12595079299877674828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A359264 n

end

end A359263.P12595079299877674828

/-! ## A359263.P4045469936905083824

`∑[A359264(row(A000124(n))-1)]-1`
-/

namespace A359263.P4045469936905083824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359264 (SequenceMachineLib.triRow (A000124 n).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A359263.P4045469936905083824

/-!
# A359264: First differences of A359263.

The programs for A359264, there is no canonical definition to state claims against.
-/

/-! ## A359264.P14077959911798373004

`Δ[A359263(n)]`
-/

namespace A359264.P14077959911798373004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359264.P14077959911798373004

/-! ## A359264.P5021305946323703391

`A359263(n+1)-A359263(n)`
-/

namespace A359264.P5021305946323703391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359263 (n + 1) - A359263 n

end

end A359264.P5021305946323703391

/-! ## A359264.P17651944900005253987

`A056737(A359263(n+1)*A359263(n))`
-/

namespace A359264.P17651944900005253987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A359263 (n + 1) * A359263 n).toNat

end

end A359264.P17651944900005253987

/-!
# A359266: Numbers k such that A359194(k) > k.

The programs for A359266, there is no canonical definition to state claims against.
-/

/-! ## A359266.P15904583452506231243

`comp[lt[n, and(2*n, 3*n)]]`
-/

namespace A359266.P15904583452506231243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) (3 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A359266.P15904583452506231243

/-! ## A359266.P1141828737751699084

`lt[and(2*n, 3*n), n+1]`
-/

namespace A359266.P1141828737751699084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359266.P1141828737751699084

/-! ## A359266.P6690806402332415490

`lt[n-1, and(2*n, -(3*n))]`
-/

namespace A359266.P6690806402332415490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(3 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359266.P6690806402332415490

/-! ## A359266.P12999746475871560102

`comp[lt[xor(2*n, 3*n), 2*n]]`
-/

namespace A359266.P12999746475871560102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (3 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A359266.P12999746475871560102

/-! ## A359266.P1006945388407618795

`lt[2*n, xor(2*n+1, 3*n)]`
-/

namespace A359266.P1006945388407618795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n + 1) (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359266.P1006945388407618795

/-! ## A359266.P11618997692167640487

`eq[0, C(and(3*n, 2*n), n+1)]`
-/

namespace A359266.P11618997692167640487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land (3 * n) (2 * n)) (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359266.P11618997692167640487

/-! ## A359266.P6052958332559350409

`lt[(a(n-1)-1+n)%n, floor(n/2)]` with `a(0)=-1`
-/

namespace A359266.P6052958332559350409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  Int.tmod (f1 (n - 1) - 1 + (n : ℤ)) (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359266.P6052958332559350409

/-! ## A359266.P10553900621859686174

`lt[n, A359194(n)]`
-/

namespace A359266.P10553900621859686174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359194 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359266.P10553900621859686174

/-! ## A359266.P2311454171037062220

`comp[A359267(n+1)]`
-/

namespace A359266.P2311454171037062220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A359266.P2311454171037062220

/-! ## A359266.P2119708000085325216

`lt[n, A048733(2*n)+1]`
-/

namespace A359266.P2119708000085325216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359266.P2119708000085325216

/-!
# A359267: Numbers k such that A359194(k) < k.

The programs for A359267, there is no canonical definition to state claims against.
-/

/-! ## A359267.P17749798020573732929

`lt[n, and(2*n, 3*n)]`
-/

namespace A359267.P17749798020573732929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359267.P17749798020573732929

/-! ## A359267.P12056240505044402234

`lt[xor(n, floor(3*n/2)), n]`
-/

namespace A359267.P12056240505044402234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊3 * ((n : ℚ) / 2)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359267.P12056240505044402234

/-! ## A359267.P9940354403497578081

`lt[or(2*n, 3*n), 4*n]`
-/

namespace A359267.P9940354403497578081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359267.P9940354403497578081

/-! ## A359267.P9309766392782020948

`lt[3*n, xor(3*n, 4*n)]`
-/

namespace A359267.P9309766392782020948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (3 * n) (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359267.P9309766392782020948

/-! ## A359267.P16955516606049836288

`eq[0, C(n, and(3*n, 2*n))]`
-/

namespace A359267.P16955516606049836288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.land (3 * n) (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359267.P16955516606049836288

/-! ## A359267.P8235435626777001517

`lt[A359194(n), n]`
-/

namespace A359267.P8235435626777001517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359194 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359267.P8235435626777001517

/-! ## A359267.P15131831916287897229

`record[A307613(n+1)]`
-/

namespace A359267.P15131831916287897229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359267.P15131831916287897229

/-! ## A359267.P10561208033510447082

`lt[A286548(3*n), 0]`
-/

namespace A359267.P10561208033510447082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359267.P10561208033510447082

/-! ## A359267.P6034465799869380371

`lt[2, A278542(3*n)]`
-/

namespace A359267.P6034465799869380371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278542 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359267.P6034465799869380371

/-! ## A359267.P7875633834980532238

`lt[A048733(2*n), n]`
-/

namespace A359267.P7875633834980532238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359267.P7875633834980532238

/-!
# A359268: a(n) is the least k such that A359194(k) = A359194(n).

The programs for A359268, there is no canonical definition to state claims against.
-/

/-! ## A359268.P11723464305625080521

`n%A028610(A105034(n))`
-/

namespace A359268.P11723464305625080521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A028610 (A105034 n).toNat)

end

end A359268.P11723464305625080521

/-! ## A359268.P5320808402252892129

`A028310(n)%A062383(A105034(n))`
-/

namespace A359268.P5320808402252892129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A062383 (A105034 n).toNat)

end

end A359268.P5320808402252892129

/-! ## A359268.P14907837874539901000

`n%A035311(A006895(n))`
-/

namespace A359268.P14907837874539901000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A035311 (A006895 n).toNat)

end

end A359268.P14907837874539901000

/-! ## A359268.P6576507087715189306

`A355223(n)%A334515(A144711(n+1))`
-/

namespace A359268.P6576507087715189306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355223 n) (A334515 (A144711 (n + 1)).toNat)

end

end A359268.P6576507087715189306

/-! ## A359268.P11875093091509496463

`n%A342457(3*n+2)`
-/

namespace A359268.P11875093091509496463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A342457 (3 * n + 2))

end

end A359268.P11875093091509496463

/-!
# A359269: Number of divisors of 5*n-2 of form 5*k+2.

The programs for A359269, the canonical program `A359269.P15675269131847707264` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359269 has offset 1).

The definition of A359269 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001877, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359269.P15675269131847707264

`A001877(5*(n+1)-2)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359269

/-- `A001877(5*(n+1)-2)` -/
def P15675269131847707264.Spec : Prop :=
  ∀ n, P15675269131847707264.a n = A359269 (n + 1)

theorem P15675269131847707264.correct : P15675269131847707264.Spec := by
  intro n
  simp only [A359269, Nat.add_sub_cancel]

end A359269

/-! ## A359269.P5531372864072539138

`A001899(5*(n+1)-2)`
-/

namespace A359269.P5531372864072539138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (5 * (n + 1) - 2)

end

end A359269.P5531372864072539138

namespace A359269

/-- `A001899(5*(n+1)-2)` -/
def P5531372864072539138.Spec : Prop :=
  ∀ n, P5531372864072539138.a n = A359269 (n + 1)

end A359269

/-! ## A359269.P15872179662022042816

`A359236(n+1)-A340454(n)`
-/

namespace A359269.P15872179662022042816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359236 (n + 1) - A340454 n

end

end A359269.P15872179662022042816

namespace A359269

/-- `A359236(n+1)-A340454(n)` -/
def P15872179662022042816.Spec : Prop :=
  ∀ n, P15872179662022042816.a n = A359269 (n + 1)

theorem P15872179662022042816.correct : P15872179662022042816.Spec := by
  intro n
  simp only [A359269, Nat.add_sub_cancel, A359269.P15872179662022042816.a, A359269.P15675269131847707264.a, A001877, A001877.P11806035189121010381.f1, A001877.P11806035189121010381.a, A340454, A340454.P12418673259723293615.a, A359236, A359236.P3437243268273933549.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A047412, A047412.P4762915060399373107.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A359269

/-! ## A359269.P10078037945596246107

`A083914(A017341(n))`
-/

namespace A359269.P10078037945596246107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A017341 n).toNat

end

end A359269.P10078037945596246107

namespace A359269

/-- `A083914(A017341(n))` -/
def P10078037945596246107.Spec : Prop :=
  ∀ n, P10078037945596246107.a n = A359269 (n + 1)

end A359269

/-! ## A359269.P10619167120398638676

`A083918(A017329(n)+1)`
-/

namespace A359269.P10619167120398638676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A017329 n + 1).toNat

end

end A359269.P10619167120398638676

namespace A359269

/-- `A083918(A017329(n)+1)` -/
def P10619167120398638676.Spec : Prop :=
  ∀ n, P10619167120398638676.a n = A359269 (n + 1)

end A359269

/-! ## A359269.P12488589336265436365

`A083918(A017317(n)+2)`
-/

namespace A359269.P12488589336265436365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A017317 n + 2).toNat

end

end A359269.P12488589336265436365

namespace A359269

/-- `A083918(A017317(n)+2)` -/
def P12488589336265436365.Spec : Prop :=
  ∀ n, P12488589336265436365.a n = A359269 (n + 1)

end A359269

/-! ## A359269.P8819239606988431157

`A083914(A017365(n)-2)`
-/

namespace A359269.P8819239606988431157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A017365 n - 2).toNat

end

end A359269.P8819239606988431157

namespace A359269

/-- `A083914(A017365(n)-2)` -/
def P8819239606988431157.Spec : Prop :=
  ∀ n, P8819239606988431157.a n = A359269 (n + 1)

end A359269

/-! ## A359269.P2921859765627106914

`A083914(2*A016885(n))`
-/

namespace A359269.P2921859765627106914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (2 * A016885 n).toNat

end

end A359269.P2921859765627106914

namespace A359269

/-- `A083914(2*A016885(n))` -/
def P2921859765627106914.Spec : Prop :=
  ∀ n, P2921859765627106914.a n = A359269 (n + 1)

end A359269

/-! ## A359269.P15238708752786279300

`A083914(A008706(2*n+1)+1)`
-/

namespace A359269.P15238708752786279300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A008706 (2 * n + 1) + 1).toNat

end

end A359269.P15238708752786279300

namespace A359269

/-- `A083914(A008706(2*n+1)+1)` -/
def P15238708752786279300.Spec : Prop :=
  ∀ n, P15238708752786279300.a n = A359269 (n + 1)

end A359269

/-! ## A359269.P18141044812612188889

`A083914(A017293(2*n+1)/2)`
-/

namespace A359269.P18141044812612188889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (SequenceMachineLib.roundAway ((A017293 (2 * n + 1) : ℚ) / 2)).toNat

end

end A359269.P18141044812612188889

namespace A359269

/-- `A083914(A017293(2*n+1)/2)` -/
def P18141044812612188889.Spec : Prop :=
  ∀ n, P18141044812612188889.a n = A359269 (n + 1)

end A359269

/-! ## A359269.P7805567225734137033

`A083918(A017293(2*n+1)/2)`
-/

namespace A359269.P7805567225734137033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (SequenceMachineLib.roundAway ((A017293 (2 * n + 1) : ℚ) / 2)).toNat

end

end A359269.P7805567225734137033

namespace A359269

/-- `A083918(A017293(2*n+1)/2)` -/
def P7805567225734137033.Spec : Prop :=
  ∀ n, P7805567225734137033.a n = A359269 (n + 1)

end A359269

/-!
# A359270: Number of divisors of 5*n-3 of form 5*k+3.

The programs for A359270, the canonical program `A359270.P1071821864642019531` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359270 has offset 1).

The definition of A359270 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001878, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359270.P1071821864642019531

`A001878(5*(n+1)-3)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359270

/-- `A001878(5*(n+1)-3)` -/
def P1071821864642019531.Spec : Prop :=
  ∀ n, P1071821864642019531.a n = A359270 (n + 1)

theorem P1071821864642019531.correct : P1071821864642019531.Spec := by
  intro n
  simp only [A359270, Nat.add_sub_cancel]

end A359270

/-! ## A359270.P6004705755424762981

`A001899(5*(n+1)-3)`
-/

namespace A359270.P6004705755424762981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (5 * (n + 1) - 3)

end

end A359270.P6004705755424762981

namespace A359270

/-- `A001899(5*(n+1)-3)` -/
def P6004705755424762981.Spec : Prop :=
  ∀ n, P6004705755424762981.a n = A359270 (n + 1)

end A359270

/-! ## A359270.P16186698906888865619

`A359237(n+1)-A340453(n)`
-/

namespace A359270.P16186698906888865619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359237 (n + 1) - A340453 n

end

end A359270.P16186698906888865619

namespace A359270

/-- `A359237(n+1)-A340453(n)` -/
def P16186698906888865619.Spec : Prop :=
  ∀ n, P16186698906888865619.a n = A359270 (n + 1)

theorem P16186698906888865619.correct : P16186698906888865619.Spec := by
  intro n
  simp only [A359270, Nat.add_sub_cancel, A359270.P16186698906888865619.a, A359270.P1071821864642019531.a, A001878, A001878.P13516976986806296717.f1, A001878.P13516976986806296717.a, A340453, A340453.P332786434363878656.a, A359237, A359237.P15086799658931664347.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A359270

/-! ## A359270.P9404658643199204612

`∑{d}[5*n+2, A079998(#+2)]`
-/

namespace A359270.P9404658643199204612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A079998 (d + 2)

end

end A359270.P9404658643199204612

namespace A359270

/-- `∑{d}[5*n+2, A079998(#+2)]` -/
def P9404658643199204612.Spec : Prop :=
  ∀ n, P9404658643199204612.a n = A359270 (n + 1)

end A359270

/-! ## A359270.P2083144964442263909

`A083918(10*n+4)`
-/

namespace A359270.P2083144964442263909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (10 * n + 4)

end

end A359270.P2083144964442263909

namespace A359270

/-- `A083918(10*n+4)` -/
def P2083144964442263909.Spec : Prop :=
  ∀ n, P2083144964442263909.a n = A359270 (n + 1)

end A359270

/-! ## A359270.P3024655722516644090

`A083916(A017317(n))`
-/

namespace A359270.P3024655722516644090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A017317 n).toNat

end

end A359270.P3024655722516644090

namespace A359270

/-- `A083916(A017317(n))` -/
def P3024655722516644090.Spec : Prop :=
  ∀ n, P3024655722516644090.a n = A359270 (n + 1)

end A359270

/-! ## A359270.P8350607414224508702

`A083916(2*A016873(n))`
-/

namespace A359270.P8350607414224508702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (2 * A016873 n).toNat

end

end A359270.P8350607414224508702

namespace A359270

/-- `A083916(2*A016873(n))` -/
def P8350607414224508702.Spec : Prop :=
  ∀ n, P8350607414224508702.a n = A359270 (n + 1)

end A359270

/-! ## A359270.P6272579219499204951

`A083916(A017365(2*n)/2)`
-/

namespace A359270.P6272579219499204951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (SequenceMachineLib.roundAway ((A017365 (2 * n) : ℚ) / 2)).toNat

end

end A359270.P6272579219499204951

namespace A359270

/-- `A083916(A017365(2*n)/2)` -/
def P6272579219499204951.Spec : Prop :=
  ∀ n, P6272579219499204951.a n = A359270 (n + 1)

end A359270

/-! ## A359270.P16196042051769152300

`A330348(A017317(n))-A340453(n)`
-/

namespace A359270.P16196042051769152300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330348 (A017317 n).toNat - A340453 n

end

end A359270.P16196042051769152300

namespace A359270

/-- `A330348(A017317(n))-A340453(n)` -/
def P16196042051769152300.Spec : Prop :=
  ∀ n, P16196042051769152300.a n = A359270 (n + 1)

end A359270

/-! ## A359270.P1112321442872998138

`A083916(A053741(n))`
-/

namespace A359270.P1112321442872998138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A053741 n).toNat

end

end A359270.P1112321442872998138

namespace A359270

/-- `A083916(A053741(n))` -/
def P1112321442872998138.Spec : Prop :=
  ∀ n, P1112321442872998138.a n = A359270 (n + 1)

end A359270

/-!
# A359271: Number of odd digits necessary to write all nonnegative n-digit integers.

The programs for A359271, the canonical program `A359271.P12287037436113871943` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359271 has offset 1).

The definition of A359271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359271.P983414355515226967

`ogf((5-5x)/(1-20x+100x^2))`
-/

namespace A359271.P983414355515226967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -5] [1, -20, 100] n

end

end A359271.P983414355515226967

namespace A359271

/-- `ogf((5-5x)/(1-20x+100x^2))` -/
def P983414355515226967.Spec : Prop :=
  ∀ n, P983414355515226967.a n = A359271 (n + 1)

end A359271

/-! ## A359271.P12287037436113871943

`5*(9*(n+1)+1)*10^(n-1)`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A359271

/-- `5*(9*(n+1)+1)*10^(n-1)` -/
def P12287037436113871943.Spec : Prop :=
  ∀ n, P12287037436113871943.a n = (A359271 (n + 1) : ℚ)

end A359271

/-! ## A359271.P4694473388033181703

`Δ[A126431(n)]/2`
-/

namespace A359271.P4694473388033181703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126431 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A359271.P4694473388033181703

namespace A359271

/-- `Δ[A126431(n)]/2` -/
def P4694473388033181703.Spec : Prop :=
  ∀ n, P4694473388033181703.a n = (A359271 (n + 1) : ℚ)

end A359271

/-! ## A359271.P2460621347838066279

`Δ[n*A093143(n)]`
-/

namespace A359271.P2460621347838066279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A093143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359271.P2460621347838066279

namespace A359271

/-- `Δ[n*A093143(n)]` -/
def P2460621347838066279.Spec : Prop :=
  ∀ n, P2460621347838066279.a n = A359271 (n + 1)

end A359271

/-! ## A359271.P1802029441180646601

`Δ[n*A011557(n)]/2`
-/

namespace A359271.P1802029441180646601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011557 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A359271.P1802029441180646601

namespace A359271

/-- `Δ[n*A011557(n)]/2` -/
def P1802029441180646601.Spec : Prop :=
  ∀ n, P1802029441180646601.a n = (A359271 (n + 1) : ℚ)

end A359271

/-! ## A359271.P4075280491933894668

`A212704(n+1)-A358439(n+1)`
-/

namespace A359271.P4075280491933894668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212704 (n + 1) - A358439 (n + 1)

end

end A359271.P4075280491933894668

namespace A359271

/-- `A212704(n+1)-A358439(n+1)` -/
def P4075280491933894668.Spec : Prop :=
  ∀ n, P4075280491933894668.a n = A359271 (n + 1)

end A359271

/-! ## A359271.P4682722062118235863

`A078761(n+1)/9`
-/

namespace A359271.P4682722062118235863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078761 (n + 1) : ℚ) / 9

end

end A359271.P4682722062118235863

namespace A359271

/-- `A078761(n+1)/9` -/
def P4682722062118235863.Spec : Prop :=
  ∀ n, P4682722062118235863.a n = (A359271 (n + 1) : ℚ)

end A359271

/-!
# A359273: a(n) = least positive integer k such that (prime(n+k)-prime(n))/n is an integer.

The programs for A359273, there is no canonical definition to state claims against.
-/

/-! ## A359273.P502351170576690667

`A071850(n+1)-(n+1)`
-/

namespace A359273.P502351170576690667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071850 (n + 1) - (n + 1 : ℤ)

end

end A359273.P502351170576690667

/-! ## A359273.P15384544641830440840

`A047983(A072063(n+1))-n`
-/

namespace A359273.P15384544641830440840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047983 (A072063 (n + 1)).toNat - (n : ℤ)

end

end A359273.P15384544641830440840

/-! ## A359273.P1841161334672709625

`A061395(2*A072063(n+1))-(n+1)`
-/

namespace A359273.P1841161334672709625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A072063 (n + 1)).toNat - (n + 1 : ℤ)

end

end A359273.P1841161334672709625

/-! ## A359273.P5498714228752745470

`A056239(or(1, A072063(n+1)))-(n+1)`
-/

namespace A359273.P5498714228752745470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor 1 (A072063 (n + 1))).toNat - (n + 1 : ℤ)

end

end A359273.P5498714228752745470

/-! ## A359273.P17311283452058783446

`A263297(or(1, A072063(n+1)))-(n+1)`
-/

namespace A359273.P17311283452058783446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (Int.lor 1 (A072063 (n + 1))).toNat - (n + 1 : ℤ)

end

end A359273.P17311283452058783446

/-! ## A359273.P294275559712335945

`A056239(A072063(n+1))-A000027(n+1)`
-/

namespace A359273.P294275559712335945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A072063 (n + 1)).toNat - A000027 (n + 1)

end

end A359273.P294275559712335945

/-! ## A359273.P10725856858843244043

`A056239(A072063(n+1))-A004525(2*(n+1))`
-/

namespace A359273.P10725856858843244043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A072063 (n + 1)).toNat - A004525 (2 * (n + 1))

end

end A359273.P10725856858843244043

/-!
# A359274: Lexicographically earliest sequence of distinct positive integers such that no term belongs to a Fibonacci-like sequence beginning with two (not necessarily distinct) smaller terms.

The programs for A359274, there is no canonical definition to state claims against.
-/

/-! ## A359274.P2052644270371857785

`eq[A256626(A147292(n+4)), A256626(n+4)]`
-/

namespace A359274.P2052644270371857785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256626 (A147292 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256626 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359274.P2052644270371857785

/-! ## A359274.P15505241992261531967

`eq[A009194(A337233(n+1)), A102283(n)]`
-/

namespace A359274.P15505241992261531967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A337233 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359274.P15505241992261531967

/-! ## A359274.P6978198280871072893

`lt[A047010(A047010(3*n)), A131534(n)]`
-/

namespace A359274.P6978198280871072893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A047010 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359274.P6978198280871072893

/-! ## A359274.P12972598125404116938

`eq[A042970(A098131(n)), A117902(n)]`
-/

namespace A359274.P12972598125404116938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (A098131 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117902 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359274.P12972598125404116938

/-!
# A359275: a(n) = greatest integer k such that (n+k)^2 <= n^3.

The programs for A359275, the canonical program `A359275.P16140740767275730210` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359275 has offset 0).

The definition of A359275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359275.P9547570326914946403

`floor(n*(sqrt(n)-1))`
-/

namespace A359275.P9547570326914946403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.sqrt (n : ℝ) - 1)⌋

end

end A359275.P9547570326914946403

namespace A359275

/-- `floor(n*(sqrt(n)-1))` -/
def P9547570326914946403.Spec : Prop :=
  ∀ n, P9547570326914946403.a n = A359275 n

end A359275

/-! ## A359275.P16140740767275730210

`floor(sqrt(Δ[C(n, 2)²]))-n`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A359275

/-- `floor(sqrt(Δ[C(n, 2)²]))-n` -/
def P16140740767275730210.Spec : Prop :=
  ∀ n, P16140740767275730210.a n = A359275 n

theorem P16140740767275730210.correct : P16140740767275730210.Spec := by
  intro n
  simp only [A359275]

end A359275

/-! ## A359275.P4053297010847271852

`and(floor(sqrt(n^3))-n, -1)`
-/

namespace A359275.P4053297010847271852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((Nat.sqrt (n ^ 3) : ℤ) - (n : ℤ)) (-1)

end

end A359275.P4053297010847271852

namespace A359275

/-- `and(floor(sqrt(n^3))-n, -1)` -/
def P4053297010847271852.Spec : Prop :=
  ∀ n, P4053297010847271852.a n = A359275 n

end A359275

/-! ## A359275.P2957374802603073447

`floor(sqrt(atan(1)+n^3))-n`
-/

namespace A359275.P2957374802603073447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.arctan (1 : ℝ) + (n ^ 3 : ℝ))⌋ - (n : ℤ)

end

end A359275.P2957374802603073447

namespace A359275

/-- `floor(sqrt(atan(1)+n^3))-n` -/
def P2957374802603073447.Spec : Prop :=
  ∀ n, P2957374802603073447.a n = A359275 n

end A359275

/-! ## A359275.P17491316305087654167

`ceil(n*(sqrt(n)-acot(n)))-n`
-/

namespace A359275.P17491316305087654167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.sqrt (n : ℝ) - SequenceMachineLib.acot (n : ℝ))⌉ - (n : ℤ)

end

end A359275.P17491316305087654167

namespace A359275

/-- `ceil(n*(sqrt(n)-acot(n)))-n` -/
def P17491316305087654167.Spec : Prop :=
  ∀ n, P17491316305087654167.a n = A359275 n

end A359275

/-! ## A359275.P5391497210607752996

`floor(sqrt(n^3))-xor(1, xor(1, n))`
-/

namespace A359275.P5391497210607752996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (n ^ 3) : ℤ) - (Nat.xor 1 (Nat.xor 1 n) : ℤ)

end

end A359275.P5391497210607752996

namespace A359275

/-- `floor(sqrt(n^3))-xor(1, xor(1, n))` -/
def P5391497210607752996.Spec : Prop :=
  ∀ n, P5391497210607752996.a n = A359275 n

end A359275

/-! ## A359275.P14318751577672707324

`floor(sqrt(n^3))-n%comp[∑[n]]`
-/

namespace A359275.P14318751577672707324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (n ^ 3) : ℤ) - ((n % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℕ) : ℤ)

end

end A359275.P14318751577672707324

namespace A359275

/-- `floor(sqrt(n^3))-n%comp[∑[n]]` -/
def P14318751577672707324.Spec : Prop :=
  ∀ n, P14318751577672707324.a n = A359275 n

end A359275

/-! ## A359275.P2236014224546419644

`floor(sqrt(n^3))-n/ceil(acot(n))`
-/

namespace A359275.P2236014224546419644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (n ^ 3) : ℚ) - (n : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A359275.P2236014224546419644

namespace A359275

/-- `floor(sqrt(n^3))-n/ceil(acot(n))` -/
def P2236014224546419644.Spec : Prop :=
  ∀ n, P2236014224546419644.a n = (A359275 n : ℚ)

end A359275

/-! ## A359275.P18110605629970179017

`xor(n, -1)+floor(sqrt(n^3))+1`
-/

namespace A359275.P18110605629970179017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) + (Nat.sqrt (n ^ 3) + 1 : ℤ)

end

end A359275.P18110605629970179017

namespace A359275

/-- `xor(n, -1)+floor(sqrt(n^3))+1` -/
def P18110605629970179017.Spec : Prop :=
  ∀ n, P18110605629970179017.a n = A359275 n

end A359275

/-! ## A359275.P10641311193439169791

`A349993(n)-1`
-/

namespace A359275.P10641311193439169791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349993 n - 1

end

end A359275.P10641311193439169791

namespace A359275

/-- `A349993(n)-1` -/
def P10641311193439169791.Spec : Prop :=
  ∀ n, P10641311193439169791.a n = A359275 n

end A359275

/-! ## A359275.P17347639320484836577

`A000093(n)-n`
-/

namespace A359275.P17347639320484836577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n - (n : ℤ)

end

end A359275.P17347639320484836577

namespace A359275

/-- `A000093(n)-n` -/
def P17347639320484836577.Spec : Prop :=
  ∀ n, P17347639320484836577.a n = A359275 n

end A359275

/-! ## A359275.P14564548834887943901

`sqrt(A065733(n))-n`
-/

namespace A359275.P14564548834887943901
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065733 n : ℝ) - (n : ℝ)

end

end A359275.P14564548834887943901

namespace A359275

/-- `sqrt(A065733(n))-n` -/
def P14564548834887943901.Spec : Prop :=
  ∀ n, P14564548834887943901.a n = (A359275 n : ℝ)

end A359275

/-! ## A359275.P14234830899156183242

`A077121(n)-(n+1)`
-/

namespace A359275.P14234830899156183242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 n - (n + 1 : ℤ)

end

end A359275.P14234830899156183242

namespace A359275

/-- `A077121(n)-(n+1)` -/
def P14234830899156183242.Spec : Prop :=
  ∀ n, P14234830899156183242.a n = A359275 n

end A359275

/-! ## A359275.P10952166372512388077

`A001489(n)+A000093(n)`
-/

namespace A359275.P10952166372512388077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A000093 n

end

end A359275.P10952166372512388077

namespace A359275

/-- `A001489(n)+A000093(n)` -/
def P10952166372512388077.Spec : Prop :=
  ∀ n, P10952166372512388077.a n = A359275 n

end A359275

/-! ## A359275.P942436037328872886

`A024000(n+1)+A000093(n)`
-/

namespace A359275.P942436037328872886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 1) + A000093 n

end

end A359275.P942436037328872886

namespace A359275

/-- `A024000(n+1)+A000093(n)` -/
def P942436037328872886.Spec : Prop :=
  ∀ n, P942436037328872886.a n = A359275 n

end A359275

/-! ## A359275.P6331435419232139449

`A023443(A349993(n))`
-/

namespace A359275.P6331435419232139449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A349993 n).toNat

end

end A359275.P6331435419232139449

namespace A359275

/-- `A023443(A349993(n))` -/
def P6331435419232139449.Spec : Prop :=
  ∀ n, P6331435419232139449.a n = A359275 n

end A359275

/-! ## A359275.P1235671251973410493

`A023443(A077121(n)-n)`
-/

namespace A359275.P1235671251973410493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A077121 n - (n : ℤ)).toNat

end

end A359275.P1235671251973410493

namespace A359275

/-- `A023443(A077121(n)-n)` -/
def P1235671251973410493.Spec : Prop :=
  ∀ n, P1235671251973410493.a n = A359275 n

end A359275

/-! ## A359275.P12987145516356605175

`A135672(A077121(n))`
-/

namespace A359275.P12987145516356605175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135672 (A077121 n).toNat

end

end A359275.P12987145516356605175

namespace A359275

/-- `A135672(A077121(n))` -/
def P12987145516356605175.Spec : Prop :=
  ∀ n, P12987145516356605175.a n = A359275 n

end A359275

/-! ## A359275.P154495990208078350

`A062108(n²)-n`
-/

namespace A359275.P154495990208078350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (n ^ 2) - (n : ℤ)

end

end A359275.P154495990208078350

namespace A359275

/-- `A062108(n²)-n` -/
def P154495990208078350.Spec : Prop :=
  ∀ n, P154495990208078350.a n = A359275 n

end A359275

/-!
# A359276: a(n) = greatest integer k such that (n+k)! <= n^n.

The programs for A359276, there is no canonical definition to state claims against.
-/

/-! ## A359276.P12424796928390237685

`floor((n+1)/log(n+2))-1`
-/

namespace A359276.P12424796928390237685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.log (n + 2 : ℝ)⌋ - 1

end

end A359276.P12424796928390237685

/-! ## A359276.P1826678601895889681

`∑[col(Δ[A064318(n)])]`
-/

namespace A359276.P1826678601895889681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064318 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359276.P1826678601895889681

/-! ## A359276.P7509348681102720211

`∑[C(Δ[A136432(n)], 2)]`
-/

namespace A359276.P7509348681102720211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136432 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f2 (n + 1) - f2 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359276.P7509348681102720211

/-! ## A359276.P12312521845462080030

`A064318(n+1)%(n+1)`
-/

namespace A359276.P12312521845462080030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064318 (n + 1)) (n + 1 : ℤ)

end

end A359276.P12312521845462080030

/-! ## A359276.P17789770937145897871

`A136432(n+1)%(n+2)`
-/

namespace A359276.P17789770937145897871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136432 (n + 1)) (n + 2 : ℤ)

end

end A359276.P17789770937145897871

/-! ## A359276.P13765714937063371430

`floor(n/log(A242401(n+1)))`
-/

namespace A359276.P13765714937063371430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.log (A242401 (n + 1) : ℝ)⌋

end

end A359276.P13765714937063371430

/-! ## A359276.P4994476262340446337

`A289207(A136432(n+1)-n)`
-/

namespace A359276.P4994476262340446337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A136432 (n + 1) - (n : ℤ)).toNat

end

end A359276.P4994476262340446337

/-! ## A359276.P9536910184536117318

`floor(∑[A000069(n+1)/A000788(3*n+2)])`
-/

namespace A359276.P9536910184536117318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000069 (n + 1) : ℚ) / (A000788 (3 * n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A359276.P9536910184536117318

/-! ## A359276.P7391931094839331758

`A225901(A225901(A064318(n+1)-(n+1)))`
-/

namespace A359276.P7391931094839331758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A225901 (A064318 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A359276.P7391931094839331758

/-!
# A359277: Intersection of A026430 and (1 + A285953).

The programs for A359277, the canonical program `A359277.P13229810363387149479` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359277 has offset 1).

The definition of A359277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359277.P13229810363387149479

`2*eq[1, C(7, a(and(n, n-1)))]-n` with `a(0)=6`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A359277

/-- `2*eq[1, C(7, a(and(n, n-1)))]-n` -/
def P13229810363387149479.Spec : Prop :=
  ∀ n, P13229810363387149479.a n = A359277 (n + 1)

theorem P13229810363387149479.correct : P13229810363387149479.Spec := by
  intro n
  simp only [A359277, Nat.add_sub_cancel]

end A359277

/-! ## A359277.P4785193006236195027

`eq[0, 1-and(n+1, a(and(n, n-1)))]-n` with `a(0)=2`
-/

namespace A359277.P4785193006236195027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  1 - Int.land (n + 1 : ℤ) (f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A359277.P4785193006236195027

namespace A359277

/-- `eq[0, 1-and(n+1, a(and(n, n-1)))]-n` -/
def P4785193006236195027.Spec : Prop :=
  ∀ n, P4785193006236195027.a n = A359277 (n + 1)

end A359277

/-! ## A359277.P6657504001404320583

`lt[(-1)^n, -a(and(n, n-1))]-(n+1)` with `a(0)=-1, a(1)=-1`
-/

namespace A359277.P6657504001404320583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n f2 =>
  -f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n + 1 : ℤ)

end

end A359277.P6657504001404320583

namespace A359277

/-- `lt[(-1)^n, -a(and(n, n-1))]-(n+1)` -/
def P6657504001404320583.Spec : Prop :=
  ∀ n, P6657504001404320583.a n = A359277 (n + 1)

end A359277

/-! ## A359277.P3185784808020330565

`A186032(n)+A180486(n+1)`
-/

namespace A359277.P3185784808020330565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186032 n + A180486 (n + 1)

end

end A359277.P3185784808020330565

namespace A359277

/-- `A186032(n)+A180486(n+1)` -/
def P3185784808020330565.Spec : Prop :=
  ∀ n, P3185784808020330565.a n = A359277 (n + 1)

end A359277

/-! ## A359277.P4976495674078798166

`A016789(n+1)-A106400(n+1)`
-/

namespace A359277.P4976495674078798166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (n + 1) - A106400 (n + 1)

end

end A359277.P4976495674078798166

namespace A359277

/-- `A016789(n+1)-A106400(n+1)` -/
def P4976495674078798166.Spec : Prop :=
  ∀ n, P4976495674078798166.a n = A359277 (n + 1)

end A359277

/-! ## A359277.P5926628945314613047

`A125592(n+2)-n`
-/

namespace A359277.P5926628945314613047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 2) - (n : ℤ)

end

end A359277.P5926628945314613047

namespace A359277

/-- `A125592(n+2)-n` -/
def P5926628945314613047.Spec : Prop :=
  ∀ n, P5926628945314613047.a n = A359277 (n + 1)

end A359277

/-! ## A359277.P13951676860619540070

`A092246(n+2)-(n+1)`
-/

namespace A359277.P13951676860619540070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 2) - (n + 1 : ℤ)

end

end A359277.P13951676860619540070

namespace A359277

/-- `A092246(n+2)-(n+1)` -/
def P13951676860619540070.Spec : Prop :=
  ∀ n, P13951676860619540070.a n = A359277 (n + 1)

end A359277

/-! ## A359277.P14842299552103351101

`2*A001969(n+2)-n`
-/

namespace A359277.P14842299552103351101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001969 (n + 2) - (n : ℤ)

end

end A359277.P14842299552103351101

namespace A359277

/-- `2*A001969(n+2)-n` -/
def P14842299552103351101.Spec : Prop :=
  ∀ n, P14842299552103351101.a n = A359277 (n + 1)

end A359277

/-! ## A359277.P4099380287554189192

`A268676(n+1)+3*(n+1)`
-/

namespace A359277.P4099380287554189192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 (n + 1) + (3 * (n + 1) : ℤ)

end

end A359277.P4099380287554189192

namespace A359277

/-- `A268676(n+1)+3*(n+1)` -/
def P4099380287554189192.Spec : Prop :=
  ∀ n, P4099380287554189192.a n = A359277 (n + 1)

end A359277

/-! ## A359277.P11256465154571666173

`A036585(n+1)+A093505(n+1)+A001969(n+2)`
-/

namespace A359277.P11256465154571666173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036585 (n + 1) + (A093505 (n + 1) + A001969 (n + 2))

end

end A359277.P11256465154571666173

namespace A359277

/-- `A036585(n+1)+A093505(n+1)+A001969(n+2)` -/
def P11256465154571666173.Spec : Prop :=
  ∀ n, P11256465154571666173.a n = A359277 (n + 1)

end A359277

/-! ## A359277.P9880924349915152060

`A168198(A000069(n+2))`
-/

namespace A359277.P9880924349915152060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168198 (A000069 (n + 2)).toNat

end

end A359277.P9880924349915152060

namespace A359277

/-- `A168198(A000069(n+2))` -/
def P9880924349915152060.Spec : Prop :=
  ∀ n, P9880924349915152060.a n = A359277 (n + 1)

end A359277

/-! ## A359277.P17103825307433798253

`A006364(2*n+3)-n`
-/

namespace A359277.P17103825307433798253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006364 (2 * n + 3) - (n : ℤ)

end

end A359277.P17103825307433798253

namespace A359277

/-- `A006364(2*n+3)-n` -/
def P17103825307433798253.Spec : Prop :=
  ∀ n, P17103825307433798253.a n = A359277 (n + 1)

end A359277

/-! ## A359277.P7089237131924856474

`A026430(A026147(n+2))`
-/

namespace A359277.P7089237131924856474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (A026147 (n + 2)).toNat

end

end A359277.P7089237131924856474

namespace A359277

/-- `A026430(A026147(n+2))` -/
def P7089237131924856474.Spec : Prop :=
  ∀ n, P7089237131924856474.a n = A359277 (n + 1)

end A359277

/-! ## A359277.P11989120102693998154

`A026430(A001969(n+2)+1)`
-/

namespace A359277.P11989120102693998154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (A001969 (n + 2) + 1).toNat

end

end A359277.P11989120102693998154

namespace A359277

/-- `A026430(A001969(n+2)+1)` -/
def P11989120102693998154.Spec : Prop :=
  ∀ n, P11989120102693998154.a n = A359277 (n + 1)

end A359277

/-! ## A359277.P18003458776897871100

`A286727(A001969(n+2)+1)`
-/

namespace A359277.P18003458776897871100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286727 (A001969 (n + 2) + 1).toNat

end

end A359277.P18003458776897871100

namespace A359277

/-- `A286727(A001969(n+2)+1)` -/
def P18003458776897871100.Spec : Prop :=
  ∀ n, P18003458776897871100.a n = A359277 (n + 1)

end A359277

/-! ## A359277.P16179372170574676689

`A285954(A285951(n+2)-(n+2))`
-/

namespace A359277.P16179372170574676689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (A285951 (n + 2) - (n + 2 : ℤ)).toNat

end

end A359277.P16179372170574676689

namespace A359277

/-- `A285954(A285951(n+2)-(n+2))` -/
def P16179372170574676689.Spec : Prop :=
  ∀ n, P16179372170574676689.a n = A359277 (n + 1)

end A359277

/-! ## A359277.P7821532344762613258

`∩[A360392(n+1)-1, A026430(n)]`
-/

namespace A359277.P7821532344762613258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359277.P7821532344762613258

namespace A359277

/-- `∩[A360392(n+1)-1, A026430(n)]` -/
def P7821532344762613258.Spec : Prop :=
  ∀ n, (P7821532344762613258.a n : ℤ) = A359277 (n + 1)

end A359277

/-! ## A359277.P14938660785174618233

`A286727(A102393(A001969(n+2)))`
-/

namespace A359277.P14938660785174618233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286727 (A102393 (A001969 (n + 2)).toNat).toNat

end

end A359277.P14938660785174618233

namespace A359277

/-- `A286727(A102393(A001969(n+2)))` -/
def P14938660785174618233.Spec : Prop :=
  ∀ n, P14938660785174618233.a n = A359277 (n + 1)

end A359277

/-! ## A359277.P12299082712339287087

`A026147(A026147(n+2))-A115384(2*n+1)`
-/

namespace A359277.P12299082712339287087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026147 (A026147 (n + 2)).toNat - A115384 (2 * n + 1)

end

end A359277.P12299082712339287087

namespace A359277

/-- `A026147(A026147(n+2))-A115384(2*n+1)` -/
def P12299082712339287087.Spec : Prop :=
  ∀ n, P12299082712339287087.a n = A359277 (n + 1)

end A359277

/-! ## A359277.P11468229695947204549

`lt[2, A277822(n)]-n`
-/

namespace A359277.P11468229695947204549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A359277.P11468229695947204549

namespace A359277

/-- `lt[2, A277822(n)]-n` -/
def P11468229695947204549.Spec : Prop :=
  ∀ n, P11468229695947204549.a n = A359277 (n + 1)

end A359277

/-!
# A359278: Antidiagonal sums of A354967.

The programs for A359278, there is no canonical definition to state claims against.
-/

/-! ## A359278.P12709800116852397701

`∑[xor(2^n, A324750(2^n))]`
-/

namespace A359278.P12709800116852397701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ n : ℤ) (A324750 (2 ^ n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359278.P12709800116852397701

/-! ## A359278.P10933808107591799477

`A322741(A090165(n))`
-/

namespace A359278.P10933808107591799477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322741 (A090165 n).toNat

end

end A359278.P10933808107591799477

/-!
# A359279: Irregular triangle T(n,k) (n>=1, k>=1) read by rows in which the length of row n equals the partition number A000041(n-1) and every column k gives the positive triangular numbers A000217.

The programs for A359279, there is no canonical definition to state claims against.
-/

/-! ## A359279.P8101233752277927512

`A000217(A336811(n+1))`
-/

namespace A359279.P8101233752277927512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A336811 (n + 1)).toNat

end

end A359279.P8101233752277927512

/-! ## A359279.P15838206776601624593

`∑{#}[A336811(n+1), #]`
-/

namespace A359279.P15838206776601624593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k

end

end A359279.P15838206776601624593

/-! ## A359279.P298406450680736514

`A161680(A336811(n+1)+1)`
-/

namespace A359279.P298406450680736514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A336811 (n + 1) + 1).toNat

end

end A359279.P298406450680736514

/-! ## A359279.P10165012965463557934

`A107985(C(A336811(n+1), 2))`
-/

namespace A359279.P10165012965463557934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107985 (Nat.choose (A336811 (n + 1)).toNat 2)

end

end A359279.P10165012965463557934

/-! ## A359279.P6578857577601908361

`A130519(2*(A336811(n+1)+1))`
-/

namespace A359279.P6578857577601908361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (2 * (A336811 (n + 1) + 1)).toNat

end

end A359279.P6578857577601908361

/-! ## A359279.P10823983970934254934

`C(A336811(n+1)+1, A010882(3*n+1))`
-/

namespace A359279.P10823983970934254934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A336811 (n + 1) + 1).toNat (A010882 (3 * n + 1)).toNat

end

end A359279.P10823983970934254934

/-! ## A359279.P18107989094422966800

`A115364(A334437(n))`
-/

namespace A359279.P18107989094422966800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115364 (A334437 n).toNat

end

end A359279.P18107989094422966800

/-! ## A359279.P8415216741681464966

`A304818(2^A336811(n+1))`
-/

namespace A359279.P8415216741681464966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A336811 (n + 1) : ℤ))).toNat

end

end A359279.P8415216741681464966

/-! ## A359279.P9966589427766106944

`A056534(A340529(n+1))`
-/

namespace A359279.P9966589427766106944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056534 (A340529 (n + 1)).toNat

end

end A359279.P9966589427766106944

/-!
# A359280: Powerful numbers that are neither prime powers nor powers of squarefree composites.

The programs for A359280, there is no canonical definition to state claims against.
-/

/-! ## A359280.P5203486226155804282

`∪[A052486(n+1), A389864(n+1)]`
-/

namespace A359280.P5203486226155804282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359280.P5203486226155804282

/-! ## A359280.P17585335604475156761

`∪[A386762(n+1), A389959(n+1)]`
-/

namespace A359280.P17585335604475156761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359280.P17585335604475156761

/-! ## A359280.P6970016830864850047

`∪[A389551(n+1), A389558(n+1)]`
-/

namespace A359280.P6970016830864850047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359280.P6970016830864850047

/-! ## A359280.P9928165703987233204

`∪[A389864(n+1), A389959(n+1)]`
-/

namespace A359280.P9928165703987233204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359280.P9928165703987233204

/-! ## A359280.P6376371451961840147

`∪[A395067(n+1), A395674(n+1)]`
-/

namespace A359280.P6376371451961840147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359280.P6376371451961840147

/-! ## A359280.P9890643073144967962

`∩[A001694(n+1), A389752(n+1)]`
-/

namespace A359280.P9890643073144967962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359280.P9890643073144967962

/-! ## A359280.P16255629501892760580

`∩[A286708(n+1), A389752(n+1)]`
-/

namespace A359280.P16255629501892760580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359280.P16255629501892760580

/-! ## A359280.P12082292409900295530

`∩[A320966(n+1), A389752(n+1)]`
-/

namespace A359280.P12082292409900295530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359280.P12082292409900295530

/-! ## A359280.P3967676919136686617

`∩[A372404(n+1), A389752(n+1)]`
-/

namespace A359280.P3967676919136686617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359280.P3967676919136686617

/-! ## A359280.P5064597387647053822

`∩[A001694(n+1), A059404(n+1)]`
-/

namespace A359280.P5064597387647053822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359280.P5064597387647053822

/-! ## A359280.P9388472888493438994

`∩[A059404(n+1), A192636(n+1)]`
-/

namespace A359280.P9388472888493438994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359280.P9388472888493438994

/-! ## A359280.P3786437419115480572

`∩[A059404(n+1), A286708(n+1)]`
-/

namespace A359280.P3786437419115480572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359280.P3786437419115480572

/-! ## A359280.P2703729483103953802

`∩[A059404(n+1), A320966(n+1)]`
-/

namespace A359280.P2703729483103953802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359280.P2703729483103953802

/-! ## A359280.P11293997454173897649

`∩[A059404(n+1), A372404(n+1)]`
-/

namespace A359280.P11293997454173897649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359280.P11293997454173897649

/-!
# A359281: Numbers k such that the digit sum of 5^k is a power of 5.

The programs for A359281, there is no canonical definition to state claims against.
-/

/-! ## A359281.P9612383769820095986

`A361849(3*n+1)+A361849(A018766(n+1))`
-/

namespace A359281.P9612383769820095986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361849 (3 * n + 1) + A361849 (A018766 (n + 1)).toNat

end

end A359281.P9612383769820095986

/-!
# A359287: Number of divisors of 5*n-1 of form 5*k+2.

The programs for A359287, the canonical program `A359287.P3521570525725454335` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359287 has offset 1).

The definition of A359287 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001877, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359287.P3521570525725454335

`A001877(5*(n+1)-1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359287

/-- `A001877(5*(n+1)-1)` -/
def P3521570525725454335.Spec : Prop :=
  ∀ n, P3521570525725454335.a n = A359287 (n + 1)

theorem P3521570525725454335.correct : P3521570525725454335.Spec := by
  intro n
  simp only [A359287, Nat.add_sub_cancel]

end A359287

/-! ## A359287.P16852623258356599431

`A359288(n+1)+A340455(n)`
-/

namespace A359287.P16852623258356599431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359288 (n + 1) + A340455 n

end

end A359287.P16852623258356599431

namespace A359287

/-- `A359288(n+1)+A340455(n)` -/
def P16852623258356599431.Spec : Prop :=
  ∀ n, P16852623258356599431.a n = A359287 (n + 1)

theorem P16852623258356599431.correct : P16852623258356599431.Spec := by
  intro n
  simp only [A359287, Nat.add_sub_cancel, A359287.P16852623258356599431.a, A359287.P3521570525725454335.a, A001877, A001877.P11806035189121010381.f1, A001877.P11806035189121010381.a, A340455, A340455.P8978882349512610872.a, A359288, A359288.P14820786524220264044.a, A001878, A001878.P13516976986806296717.f1, A001878.P13516976986806296717.a, A047412, A047412.P4762915060399373107.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A359287

/-! ## A359287.P8945488604516059044

`A083914(A017365(n))`
-/

namespace A359287.P8945488604516059044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A017365 n).toNat

end

end A359287.P8945488604516059044

namespace A359287

/-- `A083914(A017365(n))` -/
def P8945488604516059044.Spec : Prop :=
  ∀ n, P8945488604516059044.a n = A359287 (n + 1)

end A359287

/-! ## A359287.P14914433792042354770

`A083914(A017341(n)+2)`
-/

namespace A359287.P14914433792042354770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A017341 n + 2).toNat

end

end A359287.P14914433792042354770

namespace A359287

/-- `A083914(A017341(n)+2)` -/
def P14914433792042354770.Spec : Prop :=
  ∀ n, P14914433792042354770.a n = A359287 (n + 1)

end A359287

/-! ## A359287.P15830404478686043045

`A083914(A017377(n)-1)`
-/

namespace A359287.P15830404478686043045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A017377 n - 1).toNat

end

end A359287.P15830404478686043045

namespace A359287

/-- `A083914(A017377(n)-1)` -/
def P15830404478686043045.Spec : Prop :=
  ∀ n, P15830404478686043045.a n = A359287 (n + 1)

end A359287

/-! ## A359287.P7969181021247263778

`A083914(A016885(2*n+1))`
-/

namespace A359287.P7969181021247263778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A016885 (2 * n + 1)).toNat

end

end A359287.P7969181021247263778

namespace A359287

/-- `A083914(A016885(2*n+1))` -/
def P7969181021247263778.Spec : Prop :=
  ∀ n, P7969181021247263778.a n = A359287 (n + 1)

end A359287

/-! ## A359287.P972700324755783293

`A083914(A008706(2*n+3)-7)`
-/

namespace A359287.P972700324755783293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A008706 (2 * n + 3) - 7).toNat

end

end A359287.P972700324755783293

namespace A359287

/-- `A083914(A008706(2*n+3)-7)` -/
def P972700324755783293.Spec : Prop :=
  ∀ n, P972700324755783293.a n = A359287 (n + 1)

end A359287

/-!
# A359288: Number of divisors of 5*n-1 of form 5*k+3.

The programs for A359288, the canonical program `A359288.P14820786524220264044` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359288 has offset 1).

The definition of A359288 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001878, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359288.P14820786524220264044

`A001878(5*(n+1)-1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359288

/-- `A001878(5*(n+1)-1)` -/
def P14820786524220264044.Spec : Prop :=
  ∀ n, P14820786524220264044.a n = A359288 (n + 1)

theorem P14820786524220264044.correct : P14820786524220264044.Spec := by
  intro n
  simp only [A359288, Nat.add_sub_cancel]

end A359288

/-! ## A359288.P7827310907770663176

`A359287(n+1)-A340455(n)`
-/

namespace A359288.P7827310907770663176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359287 (n + 1) - A340455 n

end

end A359288.P7827310907770663176

namespace A359288

/-- `A359287(n+1)-A340455(n)` -/
def P7827310907770663176.Spec : Prop :=
  ∀ n, P7827310907770663176.a n = A359288 (n + 1)

theorem P7827310907770663176.correct : P7827310907770663176.Spec := by
  intro n
  simp only [A359288, Nat.add_sub_cancel, A359288.P7827310907770663176.a, A359288.P14820786524220264044.a, A001878, A001878.P13516976986806296717.f1, A001878.P13516976986806296717.a, A340455, A340455.P8978882349512610872.a, A359287, A359287.P3521570525725454335.a, A001877, A001877.P11806035189121010381.f1, A001877.P11806035189121010381.a, A079998, A079998.P5984370107414098605.a, A047412, A047412.P4762915060399373107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A359288

/-! ## A359288.P1382809808896962608

`∑{d}[A016897(n), A232990(#)]`
-/

namespace A359288.P1382809808896962608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A232990 d

end

end A359288.P1382809808896962608

namespace A359288

/-- `∑{d}[A016897(n), A232990(#)]` -/
def P1382809808896962608.Spec : Prop :=
  ∀ n, P1382809808896962608.a n = A359288 (n + 1)

end A359288

/-! ## A359288.P6069937139523399124

`∑{d}[A047219(n+1)+A047219(n+2), A011858(#)%2]`
-/

namespace A359288.P6069937139523399124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047219 (n + 1) + A047219 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A011858 d) 2

end

end A359288.P6069937139523399124

namespace A359288

/-- `∑{d}[A047219(n+1)+A047219(n+2), A011858(#)%2]` -/
def P6069937139523399124.Spec : Prop :=
  ∀ n, P6069937139523399124.a n = A359288 (n + 1)

end A359288

/-! ## A359288.P9822779368979854800

`A083916(A017365(n))`
-/

namespace A359288.P9822779368979854800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A017365 n).toNat

end

end A359288.P9822779368979854800

namespace A359288

/-- `A083916(A017365(n))` -/
def P9822779368979854800.Spec : Prop :=
  ∀ n, P9822779368979854800.a n = A359288 (n + 1)

end A359288

/-! ## A359288.P9013064862730047726

`A083916(A017329(n)+3)`
-/

namespace A359288.P9013064862730047726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A017329 n + 3).toNat

end

end A359288.P9013064862730047726

namespace A359288

/-- `A083916(A017329(n)+3)` -/
def P9013064862730047726.Spec : Prop :=
  ∀ n, P9013064862730047726.a n = A359288 (n + 1)

end A359288

/-! ## A359288.P7371971579936027513

`A083916(A016873(2*n+1)+1)`
-/

namespace A359288.P7371971579936027513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A016873 (2 * n + 1) + 1).toNat

end

end A359288.P7371971579936027513

namespace A359288

/-- `A083916(A016873(2*n+1)+1)` -/
def P7371971579936027513.Spec : Prop :=
  ∀ n, P7371971579936027513.a n = A359288 (n + 1)

end A359288

/-! ## A359288.P10669609046925062597

`A083914(A017377(n)-1)-A340455(n)`
-/

namespace A359288.P10669609046925062597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A017377 n - 1).toNat - A340455 n

end

end A359288.P10669609046925062597

namespace A359288

/-- `A083914(A017377(n)-1)-A340455(n)` -/
def P10669609046925062597.Spec : Prop :=
  ∀ n, P10669609046925062597.a n = A359288 (n + 1)

end A359288

/-!
# A359289: Number of divisors of 4*n-2 of form 4*k+1.

The programs for A359289, the canonical program `A359289.P2274514194007927227` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359289 has offset 1).

The definition of A359289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359289.P2274514194007927227

`A001826(4*(n+1)-2)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A359289

/-- `A001826(4*(n+1)-2)` -/
def P2274514194007927227.Spec : Prop :=
  ∀ n, P2274514194007927227.a n = A359289 (n + 1)

theorem P2274514194007927227.correct : P2274514194007927227.Spec := by
  intro n
  simp only [A359289, Nat.add_sub_cancel]

end A359289

/-! ## A359289.P16390642102606385721

`∑{d}[2*n+1, (#%4)%3]`
-/

namespace A359289.P16390642102606385721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % 4 % 3

end

end A359289.P16390642102606385721

namespace A359289

/-- `∑{d}[2*n+1, (#%4)%3]` -/
def P16390642102606385721.Spec : Prop :=
  ∀ n, (P16390642102606385721.a n : ℤ) = A359289 (n + 1)

end A359289

/-! ## A359289.P14687712783070251095

`∑{d}[2*n+1, and(2, -#)/2]`
-/

namespace A359289.P14687712783070251095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Int.land 2 (-(d : ℤ)) : ℚ) / 2

end

end A359289.P14687712783070251095

namespace A359289

/-- `∑{d}[2*n+1, and(2, -#)/2]` -/
def P14687712783070251095.Spec : Prop :=
  ∀ n, P14687712783070251095.a n = (A359289 (n + 1) : ℚ)

end A359289

/-! ## A359289.P15873423787565624554

`∑{d}[2*n+1, 2-and(2, #)!]`
-/

namespace A359289.P15873423787565624554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 - (Nat.factorial (Nat.land 2 d) : ℤ))

end

end A359289.P15873423787565624554

namespace A359289

/-- `∑{d}[2*n+1, 2-and(2, #)!]` -/
def P15873423787565624554.Spec : Prop :=
  ∀ n, P15873423787565624554.a n = A359289 (n + 1)

end A359289

/-! ## A359289.P15181197003414903016

`A099774(n+1)-A359290(n+1)`
-/

namespace A359289.P15181197003414903016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1) - A359290 (n + 1)

end

end A359289.P15181197003414903016

namespace A359289

/-- `A099774(n+1)-A359290(n+1)` -/
def P15181197003414903016.Spec : Prop :=
  ∀ n, P15181197003414903016.a n = A359289 (n + 1)

end A359289

/-! ## A359289.P4841847561365319820

`A000005(2*n+1)-A359290(n+1)`
-/

namespace A359289.P4841847561365319820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1) - A359290 (n + 1)

end

end A359289.P4841847561365319820

namespace A359289

/-- `A000005(2*n+1)-A359290(n+1)` -/
def P4841847561365319820.Spec : Prop :=
  ∀ n, P4841847561365319820.a n = A359289 (n + 1)

end A359289

/-! ## A359289.P15144537566037212140

`A293451(2*n+1)+A059841(n)`
-/

namespace A359289.P15144537566037212140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293451 (2 * n + 1) + A059841 n

end

end A359289.P15144537566037212140

namespace A359289

/-- `A293451(2*n+1)+A059841(n)` -/
def P15144537566037212140.Spec : Prop :=
  ∀ n, P15144537566037212140.a n = A359289 (n + 1)

end A359289

/-! ## A359289.P12157614229907025721

`A293451(2*n+1)+A000035(n+1)`
-/

namespace A359289.P12157614229907025721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293451 (2 * n + 1) + A000035 (n + 1)

end

end A359289.P12157614229907025721

namespace A359289

/-- `A293451(2*n+1)+A000035(n+1)` -/
def P12157614229907025721.Spec : Prop :=
  ∀ n, P12157614229907025721.a n = A359289 (n + 1)

end A359289

/-! ## A359289.P8884865918506115358

`A293451(2*n+1)+A121262(2*n)`
-/

namespace A359289.P8884865918506115358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293451 (2 * n + 1) + A121262 (2 * n)

end

end A359289.P8884865918506115358

namespace A359289

/-- `A293451(2*n+1)+A121262(2*n)` -/
def P8884865918506115358.Spec : Prop :=
  ∀ n, P8884865918506115358.a n = A359289 (n + 1)

end A359289

/-! ## A359289.P8067110448005422744

`∑{d}[2*n+1, A003815(#)]`
-/

namespace A359289.P8067110448005422744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003815 d

end

end A359289.P8067110448005422744

namespace A359289

/-- `∑{d}[2*n+1, A003815(#)]` -/
def P8067110448005422744.Spec : Prop :=
  ∀ n, P8067110448005422744.a n = A359289 (n + 1)

end A359289

/-! ## A359289.P9575443683682591904

`∑{d}[2*n+1, A077140(#)]`
-/

namespace A359289.P9575443683682591904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A077140 d

end

end A359289.P9575443683682591904

namespace A359289

/-- `∑{d}[2*n+1, A077140(#)]` -/
def P9575443683682591904.Spec : Prop :=
  ∀ n, P9575443683682591904.a n = A359289 (n + 1)

end A359289

/-! ## A359289.P8349727182179852968

`∑{d}[2*n+1, A133872(#)]`
-/

namespace A359289.P8349727182179852968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133872 d

end

end A359289.P8349727182179852968

namespace A359289

/-- `∑{d}[2*n+1, A133872(#)]` -/
def P8349727182179852968.Spec : Prop :=
  ∀ n, P8349727182179852968.a n = A359289 (n + 1)

end A359289

/-! ## A359289.P614278076336528944

`∑{d}[2*n+1, A138376(#)]`
-/

namespace A359289.P614278076336528944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A138376 d

end

end A359289.P614278076336528944

namespace A359289

/-- `∑{d}[2*n+1, A138376(#)]` -/
def P614278076336528944.Spec : Prop :=
  ∀ n, P614278076336528944.a n = A359289 (n + 1)

end A359289

/-! ## A359289.P1195187333442517703

`∑{d}[2*n+1, A166514(#)]`
-/

namespace A359289.P1195187333442517703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A166514 d

end

end A359289.P1195187333442517703

namespace A359289

/-- `∑{d}[2*n+1, A166514(#)]` -/
def P1195187333442517703.Spec : Prop :=
  ∀ n, P1195187333442517703.a n = A359289 (n + 1)

end A359289

/-! ## A359289.P16149483319278134586

`∑{d}[2*n+1, A255817(#)]`
-/

namespace A359289.P16149483319278134586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A255817 d

end

end A359289.P16149483319278134586

namespace A359289

/-- `∑{d}[2*n+1, A255817(#)]` -/
def P16149483319278134586.Spec : Prop :=
  ∀ n, P16149483319278134586.a n = A359289 (n + 1)

end A359289

/-! ## A359289.P14902704341469490332

`∑{d}[2*n+1, A305371(#)]`
-/

namespace A359289.P14902704341469490332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A305371 d

end

end A359289.P14902704341469490332

namespace A359289

/-- `∑{d}[2*n+1, A305371(#)]` -/
def P14902704341469490332.Spec : Prop :=
  ∀ n, P14902704341469490332.a n = A359289 (n + 1)

end A359289

/-! ## A359289.P10068558215077407652

`∑{d}[2*n+1, A354856(#)]`
-/

namespace A359289.P10068558215077407652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A354856 d

end

end A359289.P10068558215077407652

namespace A359289

/-- `∑{d}[2*n+1, A354856(#)]` -/
def P10068558215077407652.Spec : Prop :=
  ∀ n, P10068558215077407652.a n = A359289 (n + 1)

end A359289

/-! ## A359289.P1543036096693397008

`A359290(n+1)+A002654(2*n+1)`
-/

namespace A359289.P1543036096693397008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359290 (n + 1) + A002654 (2 * n + 1)

end

end A359289.P1543036096693397008

namespace A359289

/-- `A359290(n+1)+A002654(2*n+1)` -/
def P1543036096693397008.Spec : Prop :=
  ∀ n, P1543036096693397008.a n = A359289 (n + 1)

end A359289

/-! ## A359289.P12929252167122951855

`A099774(n+1)-A001842(2*n+1)`
-/

namespace A359289.P12929252167122951855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1) - A001842 (2 * n + 1)

end

end A359289.P12929252167122951855

namespace A359289

/-- `A099774(n+1)-A001842(2*n+1)` -/
def P12929252167122951855.Spec : Prop :=
  ∀ n, P12929252167122951855.a n = A359289 (n + 1)

end A359289

/-! ## A359289.P3132387340025153568

`A001227(2*n+1)-A359290(n+1)`
-/

namespace A359289.P3132387340025153568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (2 * n + 1) - A359290 (n + 1)

end

end A359289.P3132387340025153568

namespace A359289

/-- `A001227(2*n+1)-A359290(n+1)` -/
def P3132387340025153568.Spec : Prop :=
  ∀ n, P3132387340025153568.a n = A359289 (n + 1)

end A359289

/-!
# A359290: Number of divisors of 4*n-2 of form 4*k+3.

The programs for A359290, the canonical program `A359290.P5624652152660328705` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359290 has offset 1).

The definition of A359290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359290.P5624652152660328705

`A001842(4*(n+1)-2)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359290

/-- `A001842(4*(n+1)-2)` -/
def P5624652152660328705.Spec : Prop :=
  ∀ n, P5624652152660328705.a n = A359290 (n + 1)

theorem P5624652152660328705.correct : P5624652152660328705.Spec := by
  intro n
  simp only [A359290, Nat.add_sub_cancel]

end A359290

/-! ## A359290.P2882180076173726050

`∑{d}[2*n+1, and(2, #)/2]`
-/

namespace A359290.P2882180076173726050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.land 2 d : ℚ) / 2

end

end A359290.P2882180076173726050

namespace A359290

/-- `∑{d}[2*n+1, and(2, #)/2]` -/
def P2882180076173726050.Spec : Prop :=
  ∀ n, P2882180076173726050.a n = (A359290 (n + 1) : ℚ)

end A359290

/-! ## A359290.P7386637393477863922

`∑{d}[1+2*n, 4%(#%4)]`
-/

namespace A359290.P7386637393477863922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 4 % (d % 4)

end

end A359290.P7386637393477863922

namespace A359290

/-- `∑{d}[1+2*n, 4%(#%4)]` -/
def P7386637393477863922.Spec : Prop :=
  ∀ n, (P7386637393477863922.a n : ℤ) = A359290 (n + 1)

end A359290

/-! ## A359290.P6454693855907474604

`∑{d}[2*n+1, and(2, #)!-1]`
-/

namespace A359290.P6454693855907474604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((Nat.factorial (Nat.land 2 d) : ℤ) - 1)

end

end A359290.P6454693855907474604

namespace A359290

/-- `∑{d}[2*n+1, and(2, #)!-1]` -/
def P6454693855907474604.Spec : Prop :=
  ∀ n, P6454693855907474604.a n = A359290 (n + 1)

end A359290

/-! ## A359290.P3673732435834240415

`A099774(n+1)-A359289(n+1)`
-/

namespace A359290.P3673732435834240415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1) - A359289 (n + 1)

end

end A359290.P3673732435834240415

namespace A359290

/-- `A099774(n+1)-A359289(n+1)` -/
def P3673732435834240415.Spec : Prop :=
  ∀ n, P3673732435834240415.a n = A359290 (n + 1)

end A359290

/-! ## A359290.P10782693116194853518

`A000005(2*n+1)-A359289(n+1)`
-/

namespace A359290.P10782693116194853518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1) - A359289 (n + 1)

end

end A359290.P10782693116194853518

namespace A359290

/-- `A000005(2*n+1)-A359289(n+1)` -/
def P10782693116194853518.Spec : Prop :=
  ∀ n, P10782693116194853518.a n = A359290 (n + 1)

end A359290

/-! ## A359290.P17747710716891791023

`A293513(2*n+1)+A000035(n)`
-/

namespace A359290.P17747710716891791023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (2 * n + 1) + A000035 n

end

end A359290.P17747710716891791023

namespace A359290

/-- `A293513(2*n+1)+A000035(n)` -/
def P17747710716891791023.Spec : Prop :=
  ∀ n, P17747710716891791023.a n = A359290 (n + 1)

end A359290

/-! ## A359290.P11852888166266197870

`A293513(2*n+1)+A059841(n+1)`
-/

namespace A359290.P11852888166266197870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (2 * n + 1) + A059841 (n + 1)

end

end A359290.P11852888166266197870

namespace A359290

/-- `A293513(2*n+1)+A059841(n+1)` -/
def P11852888166266197870.Spec : Prop :=
  ∀ n, P11852888166266197870.a n = A359290 (n + 1)

end A359290

/-! ## A359290.P7869415267992814098

`A293513(2*n+1)+A166486(2*n)`
-/

namespace A359290.P7869415267992814098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (2 * n + 1) + A166486 (2 * n)

end

end A359290.P7869415267992814098

namespace A359290

/-- `A293513(2*n+1)+A166486(2*n)` -/
def P7869415267992814098.Spec : Prop :=
  ∀ n, P7869415267992814098.a n = A359290 (n + 1)

end A359290

/-! ## A359290.P15283190295024268517

`A113415(2*n+1)-A145392(2*n+1)`
-/

namespace A359290.P15283190295024268517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113415 (2 * n + 1) - A145392 (2 * n + 1)

end

end A359290.P15283190295024268517

namespace A359290

/-- `A113415(2*n+1)-A145392(2*n+1)` -/
def P15283190295024268517.Spec : Prop :=
  ∀ n, P15283190295024268517.a n = A359290 (n + 1)

end A359290

/-! ## A359290.P143006292459012246

`val(A320114(2*n+1), 7)`
-/

namespace A359290.P143006292459012246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A320114 (2 * n + 1)).toNat 7

end

end A359290.P143006292459012246

namespace A359290

/-- `val(A320114(2*n+1), 7)` -/
def P143006292459012246.Spec : Prop :=
  ∀ n, (P143006292459012246.a n : ℤ) = A359290 (n + 1)

end A359290

/-! ## A359290.P2170984456115804665

`∑{d}[2*n+1, A021913(#)]`
-/

namespace A359290.P2170984456115804665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A021913 d

end

end A359290.P2170984456115804665

namespace A359290

/-- `∑{d}[2*n+1, A021913(#)]` -/
def P2170984456115804665.Spec : Prop :=
  ∀ n, P2170984456115804665.a n = A359290 (n + 1)

end A359290

/-! ## A359290.P3082812700932019996

`∑{d}[2*n+1, A038189(#)]`
-/

namespace A359290.P3082812700932019996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038189 d

end

end A359290.P3082812700932019996

namespace A359290

/-- `∑{d}[2*n+1, A038189(#)]` -/
def P3082812700932019996.Spec : Prop :=
  ∀ n, P3082812700932019996.a n = A359290 (n + 1)

end A359290

/-! ## A359290.P14302380460572809339

`∑{d}[2*n+1, A089013(#)]`
-/

namespace A359290.P14302380460572809339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A089013 d

end

end A359290.P14302380460572809339

namespace A359290

/-- `∑{d}[2*n+1, A089013(#)]` -/
def P14302380460572809339.Spec : Prop :=
  ∀ n, P14302380460572809339.a n = A359290 (n + 1)

end A359290

/-! ## A359290.P16909518259259965581

`∑{d}[2*n+1, A131379(#)]`
-/

namespace A359290.P16909518259259965581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A131379 d

end

end A359290.P16909518259259965581

namespace A359290

/-- `∑{d}[2*n+1, A131379(#)]` -/
def P16909518259259965581.Spec : Prop :=
  ∀ n, P16909518259259965581.a n = A359290 (n + 1)

end A359290

/-! ## A359290.P18126689106386691489

`∑{d}[2*n+1, A166445(#)]`
-/

namespace A359290.P18126689106386691489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A166445 d

end

end A359290.P18126689106386691489

namespace A359290

/-- `∑{d}[2*n+1, A166445(#)]` -/
def P18126689106386691489.Spec : Prop :=
  ∀ n, P18126689106386691489.a n = A359290 (n + 1)

end A359290

/-! ## A359290.P16101134517964041872

`∑{d}[2*n+1, A245194(#)]`
-/

namespace A359290.P16101134517964041872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245194 d

end

end A359290.P16101134517964041872

namespace A359290

/-- `∑{d}[2*n+1, A245194(#)]` -/
def P16101134517964041872.Spec : Prop :=
  ∀ n, P16101134517964041872.a n = A359290 (n + 1)

end A359290

/-! ## A359290.P2321508751193962794

`∑{d}[2*n+1, A292077(#)]`
-/

namespace A359290.P2321508751193962794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A292077 d

end

end A359290.P2321508751193962794

namespace A359290

/-- `∑{d}[2*n+1, A292077(#)]` -/
def P2321508751193962794.Spec : Prop :=
  ∀ n, P2321508751193962794.a n = A359290 (n + 1)

end A359290

/-! ## A359290.P10403523769430095154

`∑{d}[2*n+1, A338824(#)]`
-/

namespace A359290.P10403523769430095154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A338824 d

end

end A359290.P10403523769430095154

namespace A359290

/-- `∑{d}[2*n+1, A338824(#)]` -/
def P10403523769430095154.Spec : Prop :=
  ∀ n, P10403523769430095154.a n = A359290 (n + 1)

end A359290

/-! ## A359290.P3244617303486256742

`A099774(n+1)-A001826(2*n+1)`
-/

namespace A359290.P3244617303486256742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1) - A001826 (2 * n + 1)

end

end A359290.P3244617303486256742

namespace A359290

/-- `A099774(n+1)-A001826(2*n+1)` -/
def P3244617303486256742.Spec : Prop :=
  ∀ n, P3244617303486256742.a n = A359290 (n + 1)

end A359290

/-!
# A359292: a(n) = least prime > binomial(2n, n).

The programs for A359292, there is no canonical definition to state claims against.
-/

/-! ## A359292.P6467503209224167312

`A151800(C(2*n, n))`
-/

namespace A359292.P6467503209224167312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Nat.choose (2 * n) n)

end

end A359292.P6467503209224167312

/-! ## A359292.P1562815689227141111

`A151800(record[a(n-1)/(floor(n/2)/n-1)])` with `a(0)=1`
-/

namespace A359292.P1562815689227141111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A359292.P1562815689227141111

/-! ## A359292.P11621457776695412494

`A151800(A000984(n))`
-/

namespace A359292.P11621457776695412494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000984 n).toNat

end

end A359292.P11621457776695412494

/-! ## A359292.P13984731979337561910

`A151800(sqrt(A002894(n)))`
-/

namespace A359292.P13984731979337561910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway (Real.sqrt (A002894 n : ℝ))).toNat

end

end A359292.P13984731979337561910

/-! ## A359292.P7094243753516929373

`A151800(A046521(∑[n]))`
-/

namespace A359292.P7094243753516929373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A046521 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A359292.P7094243753516929373

/-!
# A359293: a(n) = greatest prime < binomial(2n, n).

The programs for A359293, the canonical program `A359293.P11868090832663894312` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359293 has offset 2).

The definition of A359293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359293.P11868090832663894312

`A151799(C(2*(n+2), n+2))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359293

/-- `A151799(C(2*(n+2), n+2))` -/
def P11868090832663894312.Spec : Prop :=
  ∀ n, P11868090832663894312.a n = A359293 (n + 2)

theorem P11868090832663894312.correct : P11868090832663894312.Spec := by
  intro n
  simp only [A359293, Nat.add_sub_cancel]

end A359293

/-! ## A359293.P10615505741265311667

`A007917(C(2*(n+2), n+2))`
-/

namespace A359293.P10615505741265311667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (Nat.choose (2 * (n + 2)) (n + 2))

end

end A359293.P10615505741265311667

namespace A359293

/-- `A007917(C(2*(n+2), n+2))` -/
def P10615505741265311667.Spec : Prop :=
  ∀ n, P10615505741265311667.a n = A359293 (n + 2)

end A359293

/-! ## A359293.P7928533505064462954

`A359292(n+2)-A359294(n+2)`
-/

namespace A359293.P7928533505064462954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359292 (n + 2) - A359294 (n + 2)

end

end A359293.P7928533505064462954

namespace A359293

/-- `A359292(n+2)-A359294(n+2)` -/
def P7928533505064462954.Spec : Prop :=
  ∀ n, P7928533505064462954.a n = A359293 (n + 2)

end A359293

/-! ## A359293.P12065076648575040529

`A151799(record[(4-2/n)*a(n-1)])` with `a(0)=6, a(1)=2`
-/

namespace A359293.P12065076648575040529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [6, 2] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A359293.P12065076648575040529

namespace A359293

/-- `A151799(record[(4-2/n)*a(n-1)])` -/
def P12065076648575040529.Spec : Prop :=
  ∀ n, P12065076648575040529.a n = A359293 (n + 2)

end A359293

/-!
# A359294: a(n) = (least prime > binomial(2n, n)) - (greatest prime < binomial(2n, n)).

The programs for A359294, there is no canonical definition to state claims against.
-/

/-! ## A359294.P2269608077134298010

`A359292(n+2)-A359293(n+2)`
-/

namespace A359294.P2269608077134298010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359292 (n + 2) - A359293 (n + 2)

end

end A359294.P2269608077134298010

/-!
# A359297: Primes prime(k) such that ( 8*(prime(k-1) - prime(k-2)) ) | (prime(k)^2 - 1).

The programs for A359297, there is no canonical definition to state claims against.
-/

/-! ## A359297.P15835521313038024052

`A038873(n+1)-A005928(A105288(n+3))`
-/

namespace A359297.P15835521313038024052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1) - A005928 (A105288 (n + 3)).toNat

end

end A359297.P15835521313038024052

/-!
# A359298: Array T(n, k) read by antidiagonals: for n >= 0 and k >= 0, row n lists the positive integers m such that m - k is prime or 1, and m - h, for 0 <= h < k, is not prime.

The programs for A359298, there is no canonical definition to state claims against.
-/

/-! ## A359298.P17943972692730831591

`A119257(A359299(n+1))`
-/

namespace A359298.P17943972692730831591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (A359299 (n + 1)).toNat

end

end A359298.P17943972692730831591

/-!
# A359299: Array T(n, k) read by antidiagonals: for n >= 0 and k >= 0, row n lists the positive integers m such that m + k is prime or 1, and m + h, for 0 <= h < k, is not prime.

The programs for A359299, there is no canonical definition to state claims against.
-/

/-! ## A359299.P2324243559280991997

`A210882(A192177(n+1))`
-/

namespace A359299.P2324243559280991997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (A192177 (n + 1)).toNat

end

end A359299.P2324243559280991997

/-! ## A359299.P8695460088636858852

`A119257(A359298(n+1))`
-/

namespace A359299.P8695460088636858852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (A359298 (n + 1)).toNat

end

end A359299.P8695460088636858852

