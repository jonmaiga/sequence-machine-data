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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A181700: Smallest positive integer that can be represented as the sum of n of its distinct divisors in the maximum number of ways, or a(n)=0 if no such number exists.

The programs for A181700, there is no canonical definition to state claims against.
-/

/-! ## A181700.P6526320524306520124

`A357765(n+1)-A007814(A249483(n+1))`
-/

namespace A181700.P6526320524306520124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357765 (n + 1) - A007814 (A249483 (n + 1)).toNat

end

end A181700.P6526320524306520124

/-!
# A181701: Near-perfect numbers (A181595) of the form 2^(t-1)*(2^t-2^k-1), where 2^t-2^k-1 is prime, k>=1, t>k.

The programs for A181701, the canonical program `A181701.P6858604762767290858` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181701 has offset 1).

The definition of A181701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 598 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181701.P6858604762767290858

`A011782(ceil(log2(A181741(n+1)+2)))*A181741(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A181701

/-- `A011782(ceil(log2(A181741(n+1)+2)))*A181741(n+1)` -/
def P6858604762767290858.Spec : Prop :=
  ∀ n, P6858604762767290858.a n = A181701 (n + 1)

theorem P6858604762767290858.correct : P6858604762767290858.Spec := by
  intro n
  simp only [A181701, Nat.add_sub_cancel]

end A181701

/-! ## A181701.P6991471528002797329

`A011782(A181742(n+1))*A181741(n+1)`
-/

namespace A181701.P6991471528002797329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A181742 (n + 1)).toNat * A181741 (n + 1)

end

end A181701.P6991471528002797329

namespace A181701

/-- `A011782(A181742(n+1))*A181741(n+1)` -/
def P6991471528002797329.Spec : Prop :=
  ∀ n, P6991471528002797329.a n = A181701 (n + 1)

end A181701

/-! ## A181701.P8793416145890010175

`A000079(A181742(n+1)-1)*A181741(n+1)`
-/

namespace A181701.P8793416145890010175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A181742 (n + 1) - 1).toNat * A181741 (n + 1)

end

end A181701.P8793416145890010175

namespace A181701

/-- `A000079(A181742(n+1)-1)*A181741(n+1)` -/
def P8793416145890010175.Spec : Prop :=
  ∀ n, P8793416145890010175.a n = A181701 (n + 1)

end A181701

/-! ## A181701.P4189741755997215551

`p?[A081118(n+1)]*A011782(A181742(n+1))`
-/

namespace A181701.P4189741755997215551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A011782 (A181742 (n + 1)).toNat

end

end A181701.P4189741755997215551

namespace A181701

/-- `p?[A081118(n+1)]*A011782(A181742(n+1))` -/
def P4189741755997215551.Spec : Prop :=
  ∀ n, P4189741755997215551.a n = A181701 (n + 1)

end A181701

/-! ## A181701.P12910721182035839014

`p?[A089633(n+3)]*A011782(A181742(n+1))`
-/

namespace A181701.P12910721182035839014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A011782 (A181742 (n + 1)).toNat

end

end A181701.P12910721182035839014

namespace A181701

/-- `p?[A089633(n+3)]*A011782(A181742(n+1))` -/
def P12910721182035839014.Spec : Prop :=
  ∀ n, P12910721182035839014.a n = A181701 (n + 1)

end A181701

/-! ## A181701.P18411893094189806111

`p?[A043569(n+1)-1]*A011782(A181742(n+1))`
-/

namespace A181701.P18411893094189806111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A011782 (A181742 (n + 1)).toNat

end

end A181701.P18411893094189806111

namespace A181701

/-- `p?[A043569(n+1)-1]*A011782(A181742(n+1))` -/
def P18411893094189806111.Spec : Prop :=
  ∀ n, P18411893094189806111.a n = A181701 (n + 1)

end A181701

/-! ## A181701.P15285795577730991596

`p?[A087118(n+1)-1]*A011782(A181742(n+1))`
-/

namespace A181701.P15285795577730991596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087118 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A011782 (A181742 (n + 1)).toNat

end

end A181701.P15285795577730991596

namespace A181701

/-- `p?[A087118(n+1)-1]*A011782(A181742(n+1))` -/
def P15285795577730991596.Spec : Prop :=
  ∀ n, P15285795577730991596.a n = A181701 (n + 1)

end A181701

/-! ## A181701.P15146935646550435142

`p?[A224195(n+1)-2]*A011782(A181742(n+1))`
-/

namespace A181701.P15146935646550435142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224195 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A011782 (A181742 (n + 1)).toNat

end

end A181701.P15146935646550435142

namespace A181701

/-- `p?[A224195(n+1)-2]*A011782(A181742(n+1))` -/
def P15146935646550435142.Spec : Prop :=
  ∀ n, P15146935646550435142.a n = A181701 (n + 1)

end A181701

/-! ## A181701.P12809899920065500870

`p?[A238246(n+1)-2]*A011782(A181742(n+1))`
-/

namespace A181701.P12809899920065500870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A011782 (A181742 (n + 1)).toNat

end

end A181701.P12809899920065500870

namespace A181701

/-- `p?[A238246(n+1)-2]*A011782(A181742(n+1))` -/
def P12809899920065500870.Spec : Prop :=
  ∀ n, P12809899920065500870.a n = A181701 (n + 1)

end A181701

/-!
# A181702: Numbers of the form 2^r*p with p an odd prime, which are in A181595 but not in A181701.

The programs for A181702, there is no canonical definition to state claims against.
-/

/-! ## A181702.P14391543472542984639

`A110449(2^(A110449(n+1)+2))`
-/

namespace A181702.P14391543472542984639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A110449 (n + 1) + 2 : ℤ))).toNat

end

end A181702.P14391543472542984639

/-!
# A181703: Numbers of the form 2^(t-1)*(2^t-3), where 2^t-3 is prime.

The programs for A181703, there is no canonical definition to state claims against.
-/

/-! ## A181703.P10518764416468282778

`2^(A050414(n+1)-1)*(2^A050414(n+1)-3)`
-/

namespace A181703.P10518764416468282778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A050414 (n + 1) - 1 : ℤ) * ((2 : ℚ) ^ (A050414 (n + 1) : ℤ) - 3)

end

end A181703.P10518764416468282778

/-! ## A181703.P9434162302696122912

`A011782(A050414(n+1))*A050415(n+1)`
-/

namespace A181703.P9434162302696122912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A050414 (n + 1)).toNat * A050415 (n + 1)

end

end A181703.P9434162302696122912

/-! ## A181703.P12923536225846553806

`A088831(comp[(2*n)²])`
-/

namespace A181703.P12923536225846553806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088831 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A181703.P12923536225846553806

/-! ## A181703.P14963331280929914033

`record[A088831(A065648(2*n))]`
-/

namespace A181703.P14963331280929914033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088831 (A065648 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181703.P14963331280929914033

/-! ## A181703.P3660097647439576552

`record[A088831(n+1)*A267871(n)]`
-/

namespace A181703.P3660097647439576552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088831 (n + 1) * A267871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181703.P3660097647439576552

/-!
# A181704: Numbers m=2^(t-1)*(2^t-5), where 2^t-5 is prime.

The programs for A181704, there is no canonical definition to state claims against.
-/

/-! ## A181704.P4366355675745106467

`A011782(A059608(n+1))*A156560(n+1)`
-/

namespace A181704.P4366355675745106467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A059608 (n + 1)).toNat * A156560 (n + 1)

end

end A181704.P4366355675745106467

/-! ## A181704.P17217305473634771753

`A011782(log2(A156560(n+1)+5))*A156560(n+1)`
-/

namespace A181704.P17217305473634771753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (SequenceMachineLib.roundAway (Real.logb 2 (A156560 (n + 1) + 5 : ℝ))).toNat * A156560 (n + 1)

end

end A181704.P17217305473634771753

/-! ## A181704.P805924349127751017

`A088832(∑[A091044(2^val(n+1, 2))])`
-/

namespace A181704.P805924349127751017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091044 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088832 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181704.P805924349127751017

/-!
# A181705: Numbers of the form 2^(t-1)*(2^t-9), where 2^t-9 is prime.

The programs for A181705, there is no canonical definition to state claims against.
-/

/-! ## A181705.P15507770636325763649

`A088833((n+1)*or(1, n))`
-/

namespace A181705.P15507770636325763649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088833 ((n + 1) * Nat.lor 1 n)

end

end A181705.P15507770636325763649

/-! ## A181705.P13832518342166396658

`A088833(A183207(n+1))`
-/

namespace A181705.P13832518342166396658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088833 (A183207 (n + 1)).toNat

end

end A181705.P13832518342166396658

/-!
# A181706: Numbers of the form 2^(t-1)*(2^t-17), where 2^t-17 is prime.

The programs for A181706, there is no canonical definition to state claims against.
-/

/-! ## A181706.P1109310425096640413

`A181599(A097498(n+1)%A005820(n+1))`
-/

namespace A181706.P1109310425096640413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181599 (Int.tmod (A097498 (n + 1)) (A005820 (n + 1))).toNat

end

end A181706.P1109310425096640413

/-!
# A181707: Numbers of the form m=2^(t-1)*(2^t-33), where 2^t-33 is prime.

The programs for A181707, there is no canonical definition to state claims against.
-/

/-! ## A181707.P922437289034088240

`∩[A175989(n+1), A181701(n+1)]`
-/

namespace A181707.P922437289034088240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181707.P922437289034088240

/-!
# A181708: Numbers of faces of polyhedra made entirely of regular polygons that are not prisms or antiprisms.

The programs for A181708, there is no canonical definition to state claims against.
-/

/-! ## A181708.P14840017173514686050

`eq[A284977(n+1), A285007(n+1)]+4`
-/

namespace A181708.P14840017173514686050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 4

end

end A181708.P14840017173514686050

/-! ## A181708.P10372680224119767729

`lt[A050315(A309632(n)), A341466(n)]`
-/

namespace A181708.P10372680224119767729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (A309632 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341466 (n + 50)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A181708.P10372680224119767729

/-! ## A181708.P5849697495557299034

`lt[A088987(n+2), A000010(A088997(n+1))]`
-/

namespace A181708.P5849697495557299034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088987 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A088997 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A181708.P5849697495557299034

/-!
# A181709: Indices of primes in A007310.

The programs for A181709, the canonical program `A181709.P11612735428797642774` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181709 has offset 1).

The definition of A181709 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144769, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181709.P11612735428797642774

`A144769(n+3)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A181709

/-- `A144769(n+3)+1` -/
def P11612735428797642774.Spec : Prop :=
  ∀ n, P11612735428797642774.a n = A181709 (n + 1)

theorem P11612735428797642774.correct : P11612735428797642774.Spec := by
  intro n
  simp only [A181709, Nat.add_sub_cancel]

end A181709

/-! ## A181709.P9986052568707977894

`ceil(p?[2*n+5]/3)`
-/

namespace A181709.P9986052568707977894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 3⌉

end

end A181709.P9986052568707977894

namespace A181709

/-- `ceil(p?[2*n+5]/3)` -/
def P9986052568707977894.Spec : Prop :=
  ∀ n, P9986052568707977894.a n = A181709 (n + 1)

end A181709

/-! ## A181709.P3150672901459770688

`round((p?[2*(n-1)+7]+2)/3)`
-/

namespace A181709.P3150672901459770688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2 : ℚ) / 3)

end

end A181709.P3150672901459770688

namespace A181709

/-- `round((p?[2*(n-1)+7]+2)/3)` -/
def P3150672901459770688.Spec : Prop :=
  ∀ n, P3150672901459770688.a n = A181709 (n + 1)

end A181709

/-! ## A181709.P11012733901939845992

`ceil(A215848(n+1)/3)`
-/

namespace A181709.P11012733901939845992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A215848 (n + 1) : ℚ) / 3⌉

end

end A181709.P11012733901939845992

namespace A181709

/-- `ceil(A215848(n+1)/3)` -/
def P11012733901939845992.Spec : Prop :=
  ∀ n, P11012733901939845992.a n = A181709 (n + 1)

end A181709

/-! ## A181709.P9433867821797920968

`ceil(A055670(n+3)/3)`
-/

namespace A181709.P9433867821797920968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055670 (n + 3) : ℚ) / 3⌉

end

end A181709.P9433867821797920968

namespace A181709

/-- `ceil(A055670(n+3)/3)` -/
def P9433867821797920968.Spec : Prop :=
  ∀ n, P9433867821797920968.a n = A181709 (n + 1)

end A181709

/-! ## A181709.P9980577881483527089

`A006254(n+2)-A024699(n+1)`
-/

namespace A181709.P9980577881483527089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 2) - A024699 (n + 1)

end

end A181709.P9980577881483527089

namespace A181709

/-- `A006254(n+2)-A024699(n+1)` -/
def P9980577881483527089.Spec : Prop :=
  ∀ n, P9980577881483527089.a n = A181709 (n + 1)

end A181709

/-! ## A181709.P9809453163731967039

`ceil(A000040(n+3)/3)`
-/

namespace A181709.P9809453163731967039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 3) : ℚ) / 3⌉

end

end A181709.P9809453163731967039

namespace A181709

/-- `ceil(A000040(n+3)/3)` -/
def P9809453163731967039.Spec : Prop :=
  ∀ n, P9809453163731967039.a n = A181709 (n + 1)

end A181709

/-! ## A181709.P8960012934288775856

`ceil(A040976(n+3)/3)+1`
-/

namespace A181709.P8960012934288775856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A040976 (n + 3) : ℚ) / 3⌉ + 1

end

end A181709.P8960012934288775856

namespace A181709

/-- `ceil(A040976(n+3)/3)+1` -/
def P8960012934288775856.Spec : Prop :=
  ∀ n, P8960012934288775856.a n = A181709 (n + 1)

end A181709

/-! ## A181709.P4890082763496753233

`∑[A002264(Δ[A000040(n+2)]+1)]+1`
-/

namespace A181709.P4890082763496753233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A181709.P4890082763496753233

namespace A181709

/-- `∑[A002264(Δ[A000040(n+2)]+1)]+1` -/
def P4890082763496753233.Spec : Prop :=
  ∀ n, P4890082763496753233.a n = A181709 (n + 1)

end A181709

/-! ## A181709.P6193688841334193004

`eq[1, A075743(n+1)]+2`
-/

namespace A181709.P6193688841334193004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A181709.P6193688841334193004

namespace A181709

/-- `eq[1, A075743(n+1)]+2` -/
def P6193688841334193004.Spec : Prop :=
  ∀ n, (P6193688841334193004.a n : ℤ) = A181709 (n + 1)

end A181709

/-! ## A181709.P6510703110997686722

`record[ceil(A006530(n+5)/3)]`
-/

namespace A181709.P6510703110997686722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006530 (n + 5) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181709.P6510703110997686722

namespace A181709

/-- `record[ceil(A006530(n+5)/3)]` -/
def P6510703110997686722.Spec : Prop :=
  ∀ n, P6510703110997686722.a n = A181709 (n + 1)

end A181709

/-! ## A181709.P18301670553871857045

`eq[1, A156706(n+1)²]+2`
-/

namespace A181709.P18301670553871857045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A181709.P18301670553871857045

namespace A181709

/-- `eq[1, A156706(n+1)²]+2` -/
def P18301670553871857045.Spec : Prop :=
  ∀ n, (P18301670553871857045.a n : ℤ) = A181709 (n + 1)

end A181709

/-! ## A181709.P14235036605762268885

`ceil(record[A020639(2*(n+1)+3)]/3)`
-/

namespace A181709.P14235036605762268885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3⌉

end

end A181709.P14235036605762268885

namespace A181709

/-- `ceil(record[A020639(2*(n+1)+3)]/3)` -/
def P14235036605762268885.Spec : Prop :=
  ∀ n, P14235036605762268885.a n = A181709 (n + 1)

end A181709

/-! ## A181709.P8421661864286954391

`ceil((record[A000010(2*(n+2)+1)]+1)/3)`
-/

namespace A181709.P8421661864286954391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ) / 3⌉

end

end A181709.P8421661864286954391

namespace A181709

/-- `ceil((record[A000010(2*(n+2)+1)]+1)/3)` -/
def P8421661864286954391.Spec : Prop :=
  ∀ n, P8421661864286954391.a n = A181709 (n + 1)

end A181709

/-! ## A181709.P8858396124309827024

`record[A250475(n+2)]`
-/

namespace A181709.P8858396124309827024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250475 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181709.P8858396124309827024

namespace A181709

/-- `record[A250475(n+2)]` -/
def P8858396124309827024.Spec : Prop :=
  ∀ n, P8858396124309827024.a n = A181709 (n + 1)

end A181709

/-! ## A181709.P16072811703884837304

`A250475(A236866(n+1))`
-/

namespace A181709.P16072811703884837304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250475 (A236866 (n + 1)).toNat

end

end A181709.P16072811703884837304

namespace A181709

/-- `A250475(A236866(n+1))` -/
def P16072811703884837304.Spec : Prop :=
  ∀ n, P16072811703884837304.a n = A181709 (n + 1)

end A181709

/-! ## A181709.P13883958224341469423

`A273664(a(n-1))` with `a(0)=2`
-/

namespace A181709.P13883958224341469423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A273664 (a (n - 1)).toNat

end

end A181709.P13883958224341469423

namespace A181709

/-- `A273664(a(n-1))` -/
def P13883958224341469423.Spec : Prop :=
  ∀ n, P13883958224341469423.a n = A181709 (n + 1)

end A181709

/-! ## A181709.P17284332744511167602

`lt[n, A306289(n+1)]+2`
-/

namespace A181709.P17284332744511167602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A181709.P17284332744511167602

namespace A181709

/-- `lt[n, A306289(n+1)]+2` -/
def P17284332744511167602.Spec : Prop :=
  ∀ n, (P17284332744511167602.a n : ℤ) = A181709 (n + 1)

end A181709

/-!
# A181710: Near-perfect numbers (A181595) of the form m*2^p, where m = 2^(p-1)*(2^p-1) is a perfect number (A000396).

The programs for A181710, there is no canonical definition to state claims against.
-/

/-! ## A181710.P11711604189457366019

`A147538(A000043(n+1))`
-/

namespace A181710.P11711604189457366019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147538 (A000043 (n + 1)).toNat

end

end A181710.P11711604189457366019

/-! ## A181710.P2261916503620546781

`A270822(A133033(n+1))`
-/

namespace A181710.P2261916503620546781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270822 (A133033 (n + 1)).toNat

end

end A181710.P2261916503620546781

/-! ## A181710.P16798861328501289910

`A000396(n+1)*A072868(n+1)`
-/

namespace A181710.P16798861328501289910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1) * A072868 (n + 1)

end

end A181710.P16798861328501289910

/-! ## A181710.P13778835999845901375

`(A072868(n+1)-1)*A139306(n+1)`
-/

namespace A181710.P13778835999845901375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072868 (n + 1) - 1) * A139306 (n + 1)

end

end A181710.P13778835999845901375

/-! ## A181710.P2755999885601691161

`A330837(n+1)/A139257(n+1)`
-/

namespace A181710.P2755999885601691161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330837 (n + 1) : ℚ) / (A139257 (n + 1) : ℚ)

end

end A181710.P2755999885601691161

/-!
# A181711: Numbers of the form m*(2^k-1), where m = 2^(k-1)*(2^k-1) is a perfect number (A000396).

The programs for A181711, there is no canonical definition to state claims against.
-/

/-! ## A181711.P13658409748351672546

`A181710(n+1)-A000396(n+1)`
-/

namespace A181711.P13658409748351672546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181710 (n + 1) - A000396 (n + 1)

end

end A181711.P13658409748351672546

/-! ## A181711.P10449382695860463922

`A307959(n+1)/2`
-/

namespace A181711.P10449382695860463922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307959 (n + 1) : ℚ) / 2

end

end A181711.P10449382695860463922

/-! ## A181711.P6270326386502900348

`A000396(n+1)*A000668(n+1)`
-/

namespace A181711.P6270326386502900348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1) * A000668 (n + 1)

end

end A181711.P6270326386502900348

/-! ## A181711.P7536004781100733396

`A019279(n+1)*A133049(n+1)`
-/

namespace A181711.P7536004781100733396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019279 (n + 1) * A133049 (n + 1)

end

end A181711.P7536004781100733396

/-!
# A181712: a(n) = floor(3*n*phi) - floor(2*n*phi) - floor(n*phi), where phi = (1+sqrt(5))/2, the golden ratio.

The programs for A181712, the canonical program `A181712.P5766621205858928029` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181712 has offset 1).

The definition of A181712 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*(n+1)*ϕ)-floor(2*(n+1)*ϕ)-floor((n+1)*ϕ)` (program `A181712.P5766621205858928029`, by `A181712.P5766621205858928029.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181712.P5766621205858928029

`floor(3*(n+1)*ϕ)-floor(2*(n+1)*ϕ)-floor((n+1)*ϕ)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181712

/-- `floor(3*(n+1)*ϕ)-floor(2*(n+1)*ϕ)-floor((n+1)*ϕ)` -/
def P5766621205858928029.Spec : Prop :=
  ∀ n, P5766621205858928029.a n = A181712 (n + 1)

theorem P5766621205858928029.correct : P5766621205858928029.Spec := by
  intro n
  simp only [A181712, Nat.add_sub_cancel]

end A181712

/-! ## A181712.P14593440475887828698

`A190504(n+1)%2`
-/

namespace A181712.P14593440475887828698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190504 (n + 1)) 2

end

end A181712.P14593440475887828698

namespace A181712

/-- `A190504(n+1)%2` -/
def P14593440475887828698.Spec : Prop :=
  ∀ n, P14593440475887828698.a n = A181712 (n + 1)

end A181712

/-! ## A181712.P2704230042990515995

`and(A057427(n), A190504(n+1))`
-/

namespace A181712.P2704230042990515995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A190504 (n + 1))

end

end A181712.P2704230042990515995

namespace A181712

/-- `and(A057427(n), A190504(n+1))` -/
def P2704230042990515995.Spec : Prop :=
  ∀ n, P2704230042990515995.a n = A181712 (n + 1)

end A181712

/-! ## A181712.P4030036226294308292

`and(A060576(n), A190504(n+1))`
-/

namespace A181712.P4030036226294308292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A190504 (n + 1))

end

end A181712.P4030036226294308292

namespace A181712

/-- `and(A060576(n), A190504(n+1))` -/
def P4030036226294308292.Spec : Prop :=
  ∀ n, P4030036226294308292.a n = A181712 (n + 1)

end A181712

/-! ## A181712.P3136879569076248793

`and(A157928(n), A190504(n+1))`
-/

namespace A181712.P3136879569076248793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157928 n) (A190504 (n + 1))

end

end A181712.P3136879569076248793

namespace A181712

/-- `and(A157928(n), A190504(n+1))` -/
def P3136879569076248793.Spec : Prop :=
  ∀ n, P3136879569076248793.a n = A181712 (n + 1)

end A181712

/-! ## A181712.P14433871471735001306

`round(A189463(n+1)/A282162(n))`
-/

namespace A181712.P14433871471735001306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A189463 (n + 1) : ℚ) / (A282162 n : ℚ))

end

end A181712.P14433871471735001306

namespace A181712

/-- `round(A189463(n+1)/A282162(n))` -/
def P14433871471735001306.Spec : Prop :=
  ∀ n, P14433871471735001306.a n = A181712 (n + 1)

end A181712

/-! ## A181712.P11496375611968242101

`A089809(2-A140397(n+1)+n)`
-/

namespace A181712.P11496375611968242101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (2 - A140397 (n + 1) + (n : ℤ)).toNat

end

end A181712.P11496375611968242101

namespace A181712

/-- `A089809(2-A140397(n+1)+n)` -/
def P11496375611968242101.Spec : Prop :=
  ∀ n, P11496375611968242101.a n = A181712 (n + 1)

end A181712

/-! ## A181712.P8294588895479181790

`and(A187944(n+1), A190504(n+1))`
-/

namespace A181712.P8294588895479181790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187944 (n + 1)) (A190504 (n + 1))

end

end A181712.P8294588895479181790

namespace A181712

/-- `and(A187944(n+1), A190504(n+1))` -/
def P8294588895479181790.Spec : Prop :=
  ∀ n, P8294588895479181790.a n = A181712 (n + 1)

end A181712

/-! ## A181712.P14057950079810605721

`and(A187948(n+1), A190504(n+1))`
-/

namespace A181712.P14057950079810605721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187948 (n + 1)) (A190504 (n + 1))

end

end A181712.P14057950079810605721

namespace A181712

/-- `and(A187948(n+1), A190504(n+1))` -/
def P14057950079810605721.Spec : Prop :=
  ∀ n, P14057950079810605721.a n = A181712 (n + 1)

end A181712

/-! ## A181712.P9319147164360269329

`and(A188260(n+1), A190504(n+1))`
-/

namespace A181712.P9319147164360269329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188260 (n + 1)) (A190504 (n + 1))

end

end A181712.P9319147164360269329

namespace A181712

/-- `and(A188260(n+1), A190504(n+1))` -/
def P9319147164360269329.Spec : Prop :=
  ∀ n, P9319147164360269329.a n = A181712 (n + 1)

end A181712

/-! ## A181712.P5648471338396662667

`and(A188433(n+1), A190504(n+1))`
-/

namespace A181712.P5648471338396662667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188433 (n + 1)) (A190504 (n + 1))

end

end A181712.P5648471338396662667

namespace A181712

/-- `and(A188433(n+1), A190504(n+1))` -/
def P5648471338396662667.Spec : Prop :=
  ∀ n, P5648471338396662667.a n = A181712 (n + 1)

end A181712

/-! ## A181712.P1610299572446055201

`and(A188470(n+1), A190504(n+1))`
-/

namespace A181712.P1610299572446055201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188470 (n + 1)) (A190504 (n + 1))

end

end A181712.P1610299572446055201

namespace A181712

/-- `and(A188470(n+1), A190504(n+1))` -/
def P1610299572446055201.Spec : Prop :=
  ∀ n, P1610299572446055201.a n = A181712 (n + 1)

end A181712

/-! ## A181712.P1261693575075306298

`and(1, (A105132(n+1)*A190504(n+1))²)`
-/

namespace A181712.P1261693575075306298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A105132 (n + 1) * A190504 (n + 1)) ^ 2)

end

end A181712.P1261693575075306298

namespace A181712

/-- `and(1, (A105132(n+1)*A190504(n+1))²)` -/
def P1261693575075306298.Spec : Prop :=
  ∀ n, P1261693575075306298.a n = A181712 (n + 1)

end A181712

/-! ## A181712.P3348561326283452044

`A078588((n+1)*A189463(n+1))`
-/

namespace A181712.P3348561326283452044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 ((n + 1 : ℤ) * A189463 (n + 1)).toNat

end

end A181712.P3348561326283452044

namespace A181712

/-- `A078588((n+1)*A189463(n+1))` -/
def P3348561326283452044.Spec : Prop :=
  ∀ n, P3348561326283452044.a n = A181712 (n + 1)

end A181712

/-! ## A181712.P8029286280739147994

`A187950(A004919(n+1)-A004976(n+1))`
-/

namespace A181712.P8029286280739147994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (A004919 (n + 1) - A004976 (n + 1)).toNat

end

end A181712.P8029286280739147994

namespace A181712

/-- `A187950(A004919(n+1)-A004976(n+1))` -/
def P8029286280739147994.Spec : Prop :=
  ∀ n, P8029286280739147994.a n = A181712 (n + 1)

end A181712

/-! ## A181712.P15106541654145382475

`A096270(A189378(n+1)+n+1)`
-/

namespace A181712.P15106541654145382475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A189378 (n + 1) + (n + 1 : ℤ)).toNat

end

end A181712.P15106541654145382475

namespace A181712

/-- `A096270(A189378(n+1)+n+1)` -/
def P15106541654145382475.Spec : Prop :=
  ∀ n, P15106541654145382475.a n = A181712 (n + 1)

end A181712

/-! ## A181712.P12725253709325260147

`A188187(A004919(n+1)-A001950(n+1))`
-/

namespace A181712.P12725253709325260147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188187 (A004919 (n + 1) - A001950 (n + 1)).toNat

end

end A181712.P12725253709325260147

namespace A181712

/-- `A188187(A004919(n+1)-A001950(n+1))` -/
def P12725253709325260147.Spec : Prop :=
  ∀ n, P12725253709325260147.a n = A181712 (n + 1)

end A181712

/-! ## A181712.P5453797966157453020

`A364127(A004919(n+1))`
-/

namespace A181712.P5453797966157453020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364127 (A004919 (n + 1)).toNat

end

end A181712.P5453797966157453020

namespace A181712

/-- `A364127(A004919(n+1))` -/
def P5453797966157453020.Spec : Prop :=
  ∀ n, P5453797966157453020.a n = A181712 (n + 1)

end A181712

/-!
# A181713: Solutions of A181712(n)=0.

The programs for A181713, the canonical program `A181713.P9460122261019923156` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181713 has offset 1).

The definition of A181713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181713.P5638287249903527754

`comp[A181714(n+1)-1]+1`
-/

namespace A181713.P5638287249903527754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181714 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A181713.P5638287249903527754

namespace A181713

/-- `comp[A181714(n+1)-1]+1` -/
def P5638287249903527754.Spec : Prop :=
  ∀ n, (P5638287249903527754.a n : ℤ) = A181713 (n + 1)

end A181713

/-! ## A181713.P4960037148504501925

`comp[∪[A181714(n+1), A004976(n)]]`
-/

namespace A181713.P4960037148504501925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181714 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A181713.P4960037148504501925

namespace A181713

/-- `comp[∪[A181714(n+1), A004976(n)]]` -/
def P4960037148504501925.Spec : Prop :=
  ∀ n, (P4960037148504501925.a n : ℤ) = A181713 (n + 1)

end A181713

/-! ## A181713.P9460122261019923156

`∪[A140398(n+1), A189464(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A181713

/-- `∪[A140398(n+1), A189464(n+1)]` -/
def P9460122261019923156.Spec : Prop :=
  ∀ n, (P9460122261019923156.a n : ℤ) = A181713 (n + 1)

theorem P9460122261019923156.correct : P9460122261019923156.Spec := by
  intro n
  simp only [A181713, Nat.add_sub_cancel]

end A181713

/-! ## A181713.P1631579113318104243

`eq[0, A181712(n+1)]+1`
-/

namespace A181713.P1631579113318104243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181712 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A181713.P1631579113318104243

namespace A181713

/-- `eq[0, A181712(n+1)]+1` -/
def P1631579113318104243.Spec : Prop :=
  ∀ n, (P1631579113318104243.a n : ℤ) = A181713 (n + 1)

end A181713

/-! ## A181713.P14741429395179063388

`eq[0, A190504(n+1)%2]+1`
-/

namespace A181713.P14741429395179063388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190504 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A181713.P14741429395179063388

namespace A181713

/-- `eq[0, A190504(n+1)%2]+1` -/
def P14741429395179063388.Spec : Prop :=
  ∀ n, (P14741429395179063388.a n : ℤ) = A181713 (n + 1)

end A181713

/-! ## A181713.P10661716294777611204

`lt[A181712((n+1)^floor(atan(n)))+1, 2]+1`
-/

namespace A181713.P10661716294777611204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181712 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A181713.P10661716294777611204

namespace A181713

/-- `lt[A181712((n+1)^floor(atan(n)))+1, 2]+1` -/
def P10661716294777611204.Spec : Prop :=
  ∀ n, (P10661716294777611204.a n : ℤ) = A181713 (n + 1)

end A181713

/-! ## A181713.P2377981611882450609

`lt[n*A181712(A028310(n)), n]`
-/

namespace A181713.P2377981611882450609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A181712 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A181713.P2377981611882450609

namespace A181713

/-- `lt[n*A181712(A028310(n)), n]` -/
def P2377981611882450609.Spec : Prop :=
  ∀ n, (P2377981611882450609.a n : ℤ) = A181713 (n + 1)

end A181713

/-! ## A181713.P4197519913789803767

`lt[A329130(3*n), 3*A329130(n)]`
-/

namespace A181713.P4197519913789803767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A329130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A181713.P4197519913789803767

namespace A181713

/-- `lt[A329130(3*n), 3*A329130(n)]` -/
def P4197519913789803767.Spec : Prop :=
  ∀ n, (P4197519913789803767.a n : ℤ) = A181713 (n + 1)

end A181713

/-!
# A181714: Numbers k such that A181712(k) = 1.

The programs for A181714, the canonical program `A181714.P11993731403153367927` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181714 has offset 1).

The definition of A181714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181714.P11993731403153367927

`∪[A140400(n+1), A190158(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A181714

/-- `∪[A140400(n+1), A190158(n+1)]` -/
def P11993731403153367927.Spec : Prop :=
  ∀ n, (P11993731403153367927.a n : ℤ) = A181714 (n + 1)

theorem P11993731403153367927.correct : P11993731403153367927.Spec := by
  intro n
  simp only [A181714, Nat.add_sub_cancel]

end A181714

/-! ## A181714.P7041016709703169855

`filter[n+1, A181712(#)]`
-/

namespace A181714.P7041016709703169855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181712 (f1 j) = 1) n)

end

end A181714.P7041016709703169855

namespace A181714

/-- `filter[n+1, A181712(#)]` -/
def P7041016709703169855.Spec : Prop :=
  ∀ n, (P7041016709703169855.a n : ℤ) = A181714 (n + 1)

end A181714

/-! ## A181714.P7551425383696191864

`lt[0, A181712(n+1)]+1`
-/

namespace A181714.P7551425383696191864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181712 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A181714.P7551425383696191864

namespace A181714

/-- `lt[0, A181712(n+1)]+1` -/
def P7551425383696191864.Spec : Prop :=
  ∀ n, (P7551425383696191864.a n : ℤ) = A181714 (n + 1)

end A181714

/-! ## A181714.P12094921184146665698

`eq[1, A181712(n+2)]+2`
-/

namespace A181714.P12094921184146665698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181712 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A181714.P12094921184146665698

namespace A181714

/-- `eq[1, A181712(n+2)]+2` -/
def P12094921184146665698.Spec : Prop :=
  ∀ n, (P12094921184146665698.a n : ℤ) = A181714 (n + 1)

end A181714

/-! ## A181714.P2199621524041261499

`eq[1, A181712(n^floor(atan(n)))]`
-/

namespace A181714.P2199621524041261499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181712 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181714.P2199621524041261499

namespace A181714

/-- `eq[1, A181712(n^floor(atan(n)))]` -/
def P2199621524041261499.Spec : Prop :=
  ∀ n, (P2199621524041261499.a n : ℤ) = A181714 (n + 1)

end A181714

/-! ## A181714.P4045865738199460737

`eq[1, A181712(abs(C(2, n)-n))]`
-/

namespace A181714.P4045865738199460737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181712 |(Nat.choose 2 n : ℤ) - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181714.P4045865738199460737

namespace A181714

/-- `eq[1, A181712(abs(C(2, n)-n))]` -/
def P4045865738199460737.Spec : Prop :=
  ∀ n, (P4045865738199460737.a n : ℤ) = A181714 (n + 1)

end A181714

/-! ## A181714.P14450138470761963284

`eq[1, A190504(n+1)%2]+1`
-/

namespace A181714.P14450138470761963284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190504 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A181714.P14450138470761963284

namespace A181714

/-- `eq[1, A190504(n+1)%2]+1` -/
def P14450138470761963284.Spec : Prop :=
  ∀ n, (P14450138470761963284.a n : ℤ) = A181714 (n + 1)

end A181714

/-! ## A181714.P5415243552969743802

`lt[0, A181712(A028310(n))]`
-/

namespace A181714.P5415243552969743802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181712 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A181714.P5415243552969743802

namespace A181714

/-- `lt[0, A181712(A028310(n))]` -/
def P5415243552969743802.Spec : Prop :=
  ∀ n, (P5415243552969743802.a n : ℤ) = A181714 (n + 1)

end A181714

/-! ## A181714.P654193555041278948

`A020725(eq[1, A181712(n+1)])`
-/

namespace A181714.P654193555041278948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181714.P654193555041278948

namespace A181714

/-- `A020725(eq[1, A181712(n+1)])` -/
def P654193555041278948.Spec : Prop :=
  ∀ n, P654193555041278948.a n = A181714 (n + 1)

end A181714

/-! ## A181714.P14771904478723134993

`lt[5, A018246(round(ϕ*floor(n*ϕ^3))+1)]`
-/

namespace A181714.P14771904478723134993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018246 (SequenceMachineLib.roundAway (Real.goldenRatio * (⌊(n : ℝ) * Real.goldenRatio ^ 3⌋ : ℝ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A181714.P14771904478723134993

namespace A181714

/-- `lt[5, A018246(round(ϕ*floor(n*ϕ^3))+1)]` -/
def P14771904478723134993.Spec : Prop :=
  ∀ n, (P14771904478723134993.a n : ℤ) = A181714 (n + 1)

end A181714

/-!
# A181715: Length of the complete Cunningham chain of the second kind starting with prime(n).

The programs for A181715, there is no canonical definition to state claims against.
-/

/-! ## A181715.P14849501266829075309

`A285700(A000040(n+1))`
-/

namespace A181715.P14849501266829075309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (A000040 (n + 1)).toNat

end

end A181715.P14849501266829075309

/-! ## A181715.P14370744521195948061

`A285700(A008578(n+2))`
-/

namespace A181715.P14370744521195948061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (A008578 (n + 2)).toNat

end

end A181715.P14370744521195948061

/-! ## A181715.P2454090582538861158

`A285700(A182986(n+2))`
-/

namespace A181715.P2454090582538861158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (A182986 (n + 2)).toNat

end

end A181715.P2454090582538861158

/-! ## A181715.P16777370101664606967

`A285700(record[A093074(n+1)])`
-/

namespace A181715.P16777370101664606967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181715.P16777370101664606967

/-! ## A181715.P10098892986834087158

`A285700(record[A006530(n+2)])`
-/

namespace A181715.P10098892986834087158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181715.P10098892986834087158

/-! ## A181715.P16154559043627030662

`A285700(record[A014963(n+2)])`
-/

namespace A181715.P16154559043627030662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181715.P16154559043627030662

/-! ## A181715.P6090724205913189106

`A285700(record[A020639(n+2)])`
-/

namespace A181715.P6090724205913189106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181715.P6090724205913189106

/-! ## A181715.P17198029218108910433

`A285700(p?[A061397(n+1)])`
-/

namespace A181715.P17198029218108910433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181715.P17198029218108910433

/-! ## A181715.P6529778273512525891

`A285700(record[A285708(n+2)])`
-/

namespace A181715.P6529778273512525891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285708 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181715.P6529778273512525891

/-! ## A181715.P6819658154467461860

`A285700(eq[2, A046523(n+1)]+1)`
-/

namespace A181715.P6819658154467461860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A181715.P6819658154467461860

/-! ## A181715.P6024472961322865795

`A285700(record[A285727(n+5)])`
-/

namespace A181715.P6024472961322865795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181715.P6024472961322865795

/-!
# A181716: a(n) = a(n-1) + a(n-2) + (-1)^n, with a(0)=0 and a(1)=1.

The programs for A181716, the canonical program `A181716.P17974223439602299086` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181716 has offset 0).

The definition of A181716 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+(-1)^n` (program `A181716.P17974223439602299086`, by `A181716.P17974223439602299086.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181716.P8069316192308802917

`2*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A181716.P8069316192308802917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * a (n - 2) + a (n - 3)

end

end A181716.P8069316192308802917

namespace A181716

/-- `2*a(n-2)+a(n-3)` -/
def P8069316192308802917.Spec : Prop :=
  ∀ n, (P8069316192308802917.a n : ℤ) = A181716 n

end A181716

/-! ## A181716.P17974223439602299086

`a(n-1)+a(n-2)+(-1)^n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181716

/-- `a(n-1)+a(n-2)+(-1)^n` -/
def P17974223439602299086.Spec : Prop :=
  ∀ n, P17974223439602299086.a n = A181716 n

theorem P17974223439602299086.correct : P17974223439602299086.Spec := by
  intro n
  simp only [A181716]

end A181716

/-! ## A181716.P3317230789736000460

`ogf((x+2x^2)/(1-2x^2-x^3))`
-/

namespace A181716.P3317230789736000460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, 0, -2, -1] n

end

end A181716.P3317230789736000460

namespace A181716

/-- `ogf((x+2x^2)/(1-2x^2-x^3))` -/
def P3317230789736000460.Spec : Prop :=
  ∀ n, P3317230789736000460.a n = A181716 n

end A181716

/-! ## A181716.P14886954173471767111

`a(n-1)+a(n-2)+(-1)^n` with `a(0)=0, a(1)=1`
-/

namespace A181716.P14886954173471767111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (-1) ^ n)

end

end A181716.P14886954173471767111

namespace A181716

/-- `a(n-1)+a(n-2)+(-1)^n` -/
def P14886954173471767111.Spec : Prop :=
  ∀ n, P14886954173471767111.a n = A181716 n

theorem P14886954173471767111.correct : P14886954173471767111.Spec := by
  intro n
  simp only [A181716, Nat.add_sub_cancel, A181716.P14886954173471767111.a, A181716.P17974223439602299086.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A181716

/-! ## A181716.P17510278228550767074

`floor(a(n-2)+a(n-2)+a(n-3))` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A181716.P17510278228550767074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 3))

end

end A181716.P17510278228550767074

namespace A181716

/-- `floor(a(n-2)+a(n-2)+a(n-3))` -/
def P17510278228550767074.Spec : Prop :=
  ∀ n, (P17510278228550767074.a n : ℤ) = A181716 n

end A181716

/-! ## A181716.P2299973524487156330

`3*a(n-2)-(a(n-2)-a(n-3))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A181716.P2299973524487156330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 3))

end

end A181716.P2299973524487156330

namespace A181716

/-- `3*a(n-2)-(a(n-2)-a(n-3))` -/
def P2299973524487156330.Spec : Prop :=
  ∀ n, P2299973524487156330.a n = A181716 n

end A181716

/-! ## A181716.P760074938378217295

`∑[a(n-2)+a(n-2)+a(n-3)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A181716.P760074938378217295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181716.P760074938378217295

namespace A181716

/-- `∑[a(n-2)+a(n-2)+a(n-3)]` -/
def P760074938378217295.Spec : Prop :=
  ∀ n, (P760074938378217295.a n : ℤ) = A181716 n

end A181716

/-! ## A181716.P8999760538833883421

`abs(1-A061084(n))`
-/

namespace A181716.P8999760538833883421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A061084 n|

end

end A181716.P8999760538833883421

namespace A181716

/-- `abs(1-A061084(n))` -/
def P8999760538833883421.Spec : Prop :=
  ∀ n, P8999760538833883421.a n = A181716 n

end A181716

/-! ## A181716.P3715244769190440896

`a(n-2)+A000032(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A181716.P3715244769190440896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + A000032 (n - 2)

end

end A181716.P3715244769190440896

namespace A181716

/-- `a(n-2)+A000032(n-2)` -/
def P3715244769190440896.Spec : Prop :=
  ∀ n, P3715244769190440896.a n = A181716 n

end A181716

/-! ## A181716.P1637382650015912356

`A008346(n)-A152163(n)`
-/

namespace A181716.P1637382650015912356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n - A152163 n

end

end A181716.P1637382650015912356

namespace A181716

/-- `A008346(n)-A152163(n)` -/
def P1637382650015912356.Spec : Prop :=
  ∀ n, P1637382650015912356.a n = A181716 n

end A181716

/-! ## A181716.P16851506889221402445

`(1-A061084(n))*A033999(n)`
-/

namespace A181716.P16851506889221402445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A061084 n) * A033999 n

end

end A181716.P16851506889221402445

namespace A181716

/-- `(1-A061084(n))*A033999(n)` -/
def P16851506889221402445.Spec : Prop :=
  ∀ n, P16851506889221402445.a n = A181716 n

end A181716

/-! ## A181716.P15911011019982599257

`A000045(n+1)+A000045(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A181716.P15911011019982599257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (n + 1) + (A000045 (n - 1) - a (n - 1))

end

end A181716.P15911011019982599257

namespace A181716

/-- `A000045(n+1)+A000045(n-1)-a(n-1)` -/
def P15911011019982599257.Spec : Prop :=
  ∀ n, P15911011019982599257.a n = A181716 n

end A181716

/-! ## A181716.P4357602158707292350

`A000032(n-2)-(a(n-1)-A000032(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A181716.P4357602158707292350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000032 (n - 2) - (a (n - 1) - A000032 (n - 1))

end

end A181716.P4357602158707292350

namespace A181716

/-- `A000032(n-2)-(a(n-1)-A000032(n-1))` -/
def P4357602158707292350.Spec : Prop :=
  ∀ n, P4357602158707292350.a n = A181716 n

end A181716

/-! ## A181716.P17792608099699176882

`A033999(n)+A033999(n+1)*A061084(n)`
-/

namespace A181716.P17792608099699176882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A033999 (n + 1) * A061084 n

end

end A181716.P17792608099699176882

namespace A181716

/-- `A033999(n)+A033999(n+1)*A061084(n)` -/
def P17792608099699176882.Spec : Prop :=
  ∀ n, P17792608099699176882.a n = A181716 n

end A181716

/-! ## A181716.P18276530346151215025

`A008346(n+1)+A008346(n)-A066983(n+1)`
-/

namespace A181716.P18276530346151215025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (n + 1) + (A008346 n - A066983 (n + 1))

end

end A181716.P18276530346151215025

namespace A181716

/-- `A008346(n+1)+A008346(n)-A066983(n+1)` -/
def P18276530346151215025.Spec : Prop :=
  ∀ n, P18276530346151215025.a n = A181716 n

end A181716

/-! ## A181716.P6190510680368201276

`round(ϕ^n-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A181716.P6190510680368201276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n - (a (n - 1) : ℝ))

end

end A181716.P6190510680368201276

namespace A181716

/-- `round(ϕ^n-a(n-1))` -/
def P6190510680368201276.Spec : Prop :=
  ∀ n, P6190510680368201276.a n = A181716 n

end A181716

/-! ## A181716.P2634028225237660299

`A303427(2*n)-a(n-1)` with `a(0)=0`
-/

namespace A181716.P2634028225237660299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A303427 (2 * n) - a (n - 1)

end

end A181716.P2634028225237660299

namespace A181716

/-- `A303427(2*n)-a(n-1)` -/
def P2634028225237660299.Spec : Prop :=
  ∀ n, P2634028225237660299.a n = A181716 n

end A181716

/-! ## A181716.P10107995721440830030

`A008346(n+2)-A118658(n)`
-/

namespace A181716.P10107995721440830030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (n + 2) - A118658 n

end

end A181716.P10107995721440830030

namespace A181716

/-- `A008346(n+2)-A118658(n)` -/
def P10107995721440830030.Spec : Prop :=
  ∀ n, P10107995721440830030.a n = A181716 n

end A181716

/-! ## A181716.P12468926865845397062

`A014217(n+1)-A014217(n)`
-/

namespace A181716.P12468926865845397062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (n + 1) - A014217 n

end

end A181716.P12468926865845397062

namespace A181716

/-- `A014217(n+1)-A014217(n)` -/
def P12468926865845397062.Spec : Prop :=
  ∀ n, P12468926865845397062.a n = A181716 n

end A181716

/-!
# A181717: Fibonacci-Collatz sequence: a(1)=0, a(2)=1; for n>2, let fib=a(n-1)+a(n-2); if fib is odd then a(n)=3*fib+1 else a(n)=fib/2.

The programs for A181717, there is no canonical definition to state claims against.
-/

/-! ## A181717.P12010714192734394456

`A006370(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A181717.P12010714192734394456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A006370 (a (n - 1) + a (n - 2)).toNat

end

end A181717.P12010714192734394456

/-! ## A181717.P18359637197477634291

`A006370(a(n-1)-floor(-a(n-2)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A181717.P18359637197477634291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A006370 (a (n - 1) - (-a (n - 2))).toNat

end

end A181717.P18359637197477634291

/-! ## A181717.P11750388621923293653

`A006370(a(n-1)-ceil(-a(n-2)))` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A181717.P11750388621923293653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A006370 (a (n - 1) - (-a (n - 2))).toNat

end

end A181717.P11750388621923293653

/-! ## A181717.P5821205171689422351

`A006370(a(n-1)-round(-a(n-2)))` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A181717.P5821205171689422351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A006370 (a (n - 1) - (-a (n - 2))).toNat

end

end A181717.P5821205171689422351

/-! ## A181717.P15921531375078706341

`A006370(a(n-1)-(char[1]-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A181717.P15921531375078706341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A006370 (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))).toNat

end

end A181717.P15921531375078706341

/-!
# A181718: a(n) = (1/9)*(10^(2*n) + 10^n - 2).

The programs for A181718, the canonical program `A181718.P13745072021535079654` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181718 has offset 0).

The definition of A181718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181718.P4239228841426254984

`(A074992(n)-1)/3`
-/

namespace A181718.P4239228841426254984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074992 n - 1 : ℚ) / 3

end

end A181718.P4239228841426254984

namespace A181718

/-- `(A074992(n)-1)/3` -/
def P4239228841426254984.Spec : Prop :=
  ∀ n, P4239228841426254984.a n = (A181718 n : ℚ)

end A181718

/-! ## A181718.P7430891479472624802

`A002277(n)*A093137(n)`
-/

namespace A181718.P7430891479472624802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 n * A093137 n

end

end A181718.P7430891479472624802

namespace A181718

/-- `A002277(n)*A093137(n)` -/
def P7430891479472624802.Spec : Prop :=
  ∀ n, P7430891479472624802.a n = A181718 n

end A181718

/-! ## A181718.P13745072021535079654

`(10^(2*n)+10^n-2)/9`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181718

/-- `(10^(2*n)+10^n-2)/9` -/
def P13745072021535079654.Spec : Prop :=
  ∀ n, P13745072021535079654.a n = (A181718 n : ℚ)

end A181718

/-! ## A181718.P6805003462732742180

`1/9*(10^(2*n)+10^n-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181718.P6805003462732742180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 9 * ((10 ^ (2 * n) + 10 ^ n : ℤ) - 2 : ℚ)

end

end A181718.P6805003462732742180

namespace A181718

/-- `1/9*(10^(2*n)+10^n-2)` -/
def P6805003462732742180.Spec : Prop :=
  ∀ n, P6805003462732742180.a n = (A181718 n : ℚ)

end A181718

/-! ## A181718.P14920565752909200862

`lcm(floor(10^n/3), ceil(10^n/3))`
-/

namespace A181718.P14920565752909200862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(10 ^ n : ℚ) / 3⌋ ⌈(10 ^ n : ℚ) / 3⌉

end

end A181718.P14920565752909200862

namespace A181718

/-- `lcm(floor(10^n/3), ceil(10^n/3))` -/
def P14920565752909200862.Spec : Prop :=
  ∀ n, (P14920565752909200862.a n : ℤ) = A181718 n

end A181718

/-! ## A181718.P12247165570191114834

`lcm(3, round(10^n/3))+lcm(3, round(10^n/3))²`
-/

namespace A181718.P12247165570191114834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (SequenceMachineLib.roundAway ((10 ^ n : ℚ) / 3)) + Int.lcm 3 (SequenceMachineLib.roundAway ((10 ^ n : ℚ) / 3)) ^ 2

end

end A181718.P12247165570191114834

namespace A181718

/-- `lcm(3, round(10^n/3))+lcm(3, round(10^n/3))²` -/
def P12247165570191114834.Spec : Prop :=
  ∀ n, (P12247165570191114834.a n : ℤ) = A181718 n

end A181718

/-! ## A181718.P15973378115981552424

`round(or(1, 10^n)/9)+or(1, 10^n)*floor(10^n/9)`
-/

namespace A181718.P15973378115981552424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (10 ^ n) : ℚ) / 9) + (Nat.lor 1 (10 ^ n) : ℤ) * ⌊(10 ^ n : ℚ) / 9⌋

end

end A181718.P15973378115981552424

namespace A181718

/-- `round(or(1, 10^n)/9)+or(1, 10^n)*floor(10^n/9)` -/
def P15973378115981552424.Spec : Prop :=
  ∀ n, P15973378115981552424.a n = A181718 n

end A181718

/-! ## A181718.P17083334294801371134

`∑[and(-2, 10^n)/10]+or(1, 10^n)*floor(10^n/9)`
-/

namespace A181718.P17083334294801371134
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (10 ^ n : ℤ) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((Nat.lor 1 (10 ^ n) : ℤ) * ⌊(10 ^ n : ℚ) / 9⌋ : ℚ)

end

end A181718.P17083334294801371134

namespace A181718

/-- `∑[and(-2, 10^n)/10]+or(1, 10^n)*floor(10^n/9)` -/
def P17083334294801371134.Spec : Prop :=
  ∀ n, P17083334294801371134.a n = (A181718 n : ℚ)

end A181718

/-! ## A181718.P17248144348907703662

`round(and(-2, 10^n)/9)+(and(-2, 10^n)+1)*floor(10^n/9)`
-/

namespace A181718.P17248144348907703662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (-2) (10 ^ n : ℤ) : ℚ) / 9) + (Int.land (-2) (10 ^ n : ℤ) + 1) * ⌊(10 ^ n : ℚ) / 9⌋

end

end A181718.P17248144348907703662

namespace A181718

/-- `round(and(-2, 10^n)/9)+(and(-2, 10^n)+1)*floor(10^n/9)` -/
def P17248144348907703662.Spec : Prop :=
  ∀ n, P17248144348907703662.a n = A181718 n

end A181718

/-! ## A181718.P8564253737468245190

`∑[and(-2, 10^n)/10]+(and(-2, 10^n)+1)*floor(10^n/9)`
-/

namespace A181718.P8564253737468245190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (10 ^ n : ℤ) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((Int.land (-2) (10 ^ n : ℤ) + 1) * ⌊(10 ^ n : ℚ) / 9⌋ : ℚ)

end

end A181718.P8564253737468245190

namespace A181718

/-- `∑[and(-2, 10^n)/10]+(and(-2, 10^n)+1)*floor(10^n/9)` -/
def P8564253737468245190.Spec : Prop :=
  ∀ n, P8564253737468245190.a n = (A181718 n : ℚ)

end A181718

/-!
# A181719: a(n) = A133473(n+1)^2.

The programs for A181719, the canonical program `A181719.P3652433551893555141` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181719 has offset 1).

The definition of A181719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181719.P3652433551893555141

`A133473(n+1)²`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181719

/-- `A133473(n+1)²` -/
def P3652433551893555141.Spec : Prop :=
  ∀ n, P3652433551893555141.a n = A181719 (n + 1)

theorem P3652433551893555141.correct : P3652433551893555141.Spec := by
  intro n
  simp only [A181719, Nat.add_sub_cancel]

end A181719

/-! ## A181719.P10759990332609285080

`100*A181718(n)+25`
-/

namespace A181719.P10759990332609285080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  100 * A181718 n + 25

end

end A181719.P10759990332609285080

namespace A181719

/-- `100*A181718(n)+25` -/
def P10759990332609285080.Spec : Prop :=
  ∀ n, P10759990332609285080.a n = A181719 (n + 1)

end A181719

/-! ## A181719.P402677749272727534

`(5+10^(n+1))²/9`
-/

namespace A181719.P402677749272727534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 + 10 ^ (n + 1)) ^ 2 : ℚ) / 9

end

end A181719.P402677749272727534

namespace A181719

/-- `(5+10^(n+1))²/9` -/
def P402677749272727534.Spec : Prop :=
  ∀ n, P402677749272727534.a n = (A181719 (n + 1) : ℚ)

end A181719

/-! ## A181719.P7390727620787804715

`(A033175(n)+4)^2`
-/

namespace A181719.P7390727620787804715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033175 n + 4) ^ 2

end

end A181719.P7390727620787804715

namespace A181719

/-- `(A033175(n)+4)^2` -/
def P7390727620787804715.Spec : Prop :=
  ∀ n, P7390727620787804715.a n = A181719 (n + 1)

end A181719

/-! ## A181719.P1080386564887245806

`(A002277(n+1)+2)^2`
-/

namespace A181719.P1080386564887245806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002277 (n + 1) + 2) ^ 2

end

end A181719.P1080386564887245806

namespace A181719

/-- `(A002277(n+1)+2)^2` -/
def P1080386564887245806.Spec : Prop :=
  ∀ n, P1080386564887245806.a n = A181719 (n + 1)

end A181719

/-! ## A181719.P2254745394202267845

`(4-A173764(n+1))^2`
-/

namespace A181719.P2254745394202267845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A173764 (n + 1)) ^ 2

end

end A181719.P2254745394202267845

namespace A181719

/-- `(4-A173764(n+1))^2` -/
def P2254745394202267845.Spec : Prop :=
  ∀ n, P2254745394202267845.a n = A181719 (n + 1)

end A181719

/-! ## A181719.P16530518653009046907

`5*5*(6*A002275(n)+1)²`
-/

namespace A181719.P16530518653009046907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (5 * (6 * A002275 n + 1) ^ 2)

end

end A181719.P16530518653009046907

namespace A181719

/-- `5*5*(6*A002275(n)+1)²` -/
def P16530518653009046907.Spec : Prop :=
  ∀ n, P16530518653009046907.a n = A181719 (n + 1)

end A181719

/-! ## A181719.P7653137063543381467

`record[A133473(A008611(n))²]`
-/

namespace A181719.P7653137063543381467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133473 (A008611 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181719.P7653137063543381467

namespace A181719

/-- `record[A133473(A008611(n))²]` -/
def P7653137063543381467.Spec : Prop :=
  ∀ n, P7653137063543381467.a n = A181719 (n + 1)

end A181719

/-! ## A181719.P12470008184617283337

`record[A133473(A008616(n))²]`
-/

namespace A181719.P12470008184617283337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133473 (A008616 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181719.P12470008184617283337

namespace A181719

/-- `record[A133473(A008616(n))²]` -/
def P12470008184617283337.Spec : Prop :=
  ∀ n, P12470008184617283337.a n = A181719 (n + 1)

end A181719

/-! ## A181719.P13515085719312945685

`record[A133473(A027656(n))²]`
-/

namespace A181719.P13515085719312945685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133473 (A027656 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181719.P13515085719312945685

namespace A181719

/-- `record[A133473(A027656(n))²]` -/
def P13515085719312945685.Spec : Prop :=
  ∀ n, P13515085719312945685.a n = A181719 (n + 1)

end A181719

/-!
# A181720: a(n) = smallest multiple of n which contains its base 10 reversal as a substring.

The programs for A181720, there is no canonical definition to state claims against.
-/

/-! ## A181720.P590682120990722093

`(n+1)*A181721(n+1)`
-/

namespace A181720.P590682120990722093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A181721 (n + 1)

end

end A181720.P590682120990722093

/-! ## A181720.P6366022972998529073

`(n+1)*A181649(A045847(A302019(n)))`
-/

namespace A181720.P6366022972998529073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A181649 (A045847 (A302019 n).toNat).toNat

end

end A181720.P6366022972998529073

/-! ## A181720.P8227014831512073069

`A286831(a(n-1)-1)+n` with `a(0)=1`
-/

namespace A181720.P8227014831512073069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A286831 (a (n - 1) - 1).toNat + (n : ℤ)

end

end A181720.P8227014831512073069

/-! ## A181720.P4486375904639653251

`A290236(a(n-1)-1)+n` with `a(0)=1`
-/

namespace A181720.P4486375904639653251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A290236 (a (n - 1) - 1).toNat + (n : ℤ)

end

end A181720.P4486375904639653251

/-! ## A181720.P14393572275327081448

`A264772(C(round(2^(n/2)), 22))+n`
-/

namespace A181720.P14393572275327081448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 (Nat.choose (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((n : ℚ) / 2 : ℝ))).toNat 22) + (n : ℤ)

end

end A181720.P14393572275327081448

/-!
# A181721: The smallest number k such that the product k*n contains digit-reverse(n) as a substring.

The programs for A181721, there is no canonical definition to state claims against.
-/

/-! ## A181721.P15673755402017151802

`A181720(n+1)/(n+1)`
-/

namespace A181721.P15673755402017151802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181720 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A181721.P15673755402017151802

/-!
# A181722: Numerator of (1/n - Bernoulli number A164555(n)/A027642(n)).

The programs for A181722, there is no canonical definition to state claims against.
-/

/-! ## A181722.P3160202745935233144

`A050932(n)-A229979(A077168(n))`
-/

namespace A181722.P3160202745935233144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 n - A229979 (A077168 n).toNat

end

end A181722.P3160202745935233144

/-!
# A181723: "Early bird" numbers in A100208.

The programs for A181723, there is no canonical definition to state claims against.
-/

/-! ## A181723.P5845179716818105039

`A100208(lt[n+1, A100208(n+1)]+1)`
-/

namespace A181723.P5845179716818105039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A181723.P5845179716818105039

/-! ## A181723.P5838194663988275126

`A100208(eq[n+1, (n+1)%A100208(n+1)]+1)`
-/

namespace A181723.P5838194663988275126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A100208 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A181723.P5838194663988275126

/-!
# A181729: Primes of the form A181737(k)+1.

The programs for A181729, there is no canonical definition to state claims against.
-/

/-! ## A181729.P13054295485496136403

`∏[p?[A239014(n+1)]]+1`
-/

namespace A181729.P13054295485496136403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239014 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A181729.P13054295485496136403

/-!
# A181730: Fixed points in A100208.

The programs for A181730, there is no canonical definition to state claims against.
-/

/-! ## A181730.P1488489425427273820

`eq[n+1, A100208(n+1)]+1`
-/

namespace A181730.P1488489425427273820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100208 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A181730.P1488489425427273820

/-! ## A181730.P10272998317405767949

`eq[(n+1)², A073658(n+1)]+1`
-/

namespace A181730.P10272998317405767949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073658 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A181730.P10272998317405767949

/-! ## A181730.P3403951949341583874

`eq[n, A100208(A028310(n))]`
-/

namespace A181730.P3403951949341583874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100208 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181730.P3403951949341583874

/-! ## A181730.P11022620964398177160

`eq[n, A100208(A065033(2*n))]`
-/

namespace A181730.P11022620964398177160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100208 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181730.P11022620964398177160

/-! ## A181730.P11861850958589947209

`record[(n+1)/A001175((n+1)%A100208(n+1)+1)]`
-/

namespace A181730.P11861850958589947209
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001175 (Int.tmod (n + 1 : ℤ) (A100208 (n + 1)) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181730.P11861850958589947209

/-! ## A181730.P16395513077572739827

`eq[n+1, A100211(n+1)]+1`
-/

namespace A181730.P16395513077572739827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100211 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A181730.P16395513077572739827

/-!
# A181732: Numbers n such that 90n + 1 is prime.

The programs for A181732, the canonical program `A181732.P16858907317138216025` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181732 has offset 1).

The definition of A181732 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142312, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181732.P16858907317138216025

`1/90*(A142312(n+1)-1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181732

/-- `1/90*(A142312(n+1)-1)` -/
def P16858907317138216025.Spec : Prop :=
  ∀ n, P16858907317138216025.a n = (A181732 (n + 1) : ℚ)

end A181732

/-! ## A181732.P17019921690682128266

`A224889(n+1)+1`
-/

namespace A181732.P17019921690682128266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224889 (n + 1) + 1

end

end A181732.P17019921690682128266

namespace A181732

/-- `A224889(n+1)+1` -/
def P17019921690682128266.Spec : Prop :=
  ∀ n, P17019921690682128266.a n = A181732 (n + 1)

end A181732

/-! ## A181732.P39035972047961543

`A020725(A224889(n+1))`
-/

namespace A181732.P39035972047961543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A224889 (n + 1)).toNat

end

end A181732.P39035972047961543

namespace A181732

/-- `A020725(A224889(n+1))` -/
def P39035972047961543.Spec : Prop :=
  ∀ n, P39035972047961543.a n = A181732 (n + 1)

end A181732

/-! ## A181732.P2192088576672578315

`eq[1, A091088(9*n)]`
-/

namespace A181732.P2192088576672578315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (9 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181732.P2192088576672578315

namespace A181732

/-- `eq[1, A091088(9*n)]` -/
def P2192088576672578315.Spec : Prop :=
  ∀ n, (P2192088576672578315.a n : ℤ) = A181732 (n + 1)

end A181732

/-! ## A181732.P16746759470814055189

`eq[1, A001222(90*n+1)]`
-/

namespace A181732.P16746759470814055189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (90 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181732.P16746759470814055189

namespace A181732

/-- `eq[1, A001222(90*n+1)]` -/
def P16746759470814055189.Spec : Prop :=
  ∀ n, (P16746759470814055189.a n : ℤ) = A181732 (n + 1)

end A181732

/-! ## A181732.P12316799538917298027

`eq[2, A000005(90*n+1)]`
-/

namespace A181732.P12316799538917298027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (90 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181732.P12316799538917298027

namespace A181732

/-- `eq[2, A000005(90*n+1)]` -/
def P12316799538917298027.Spec : Prop :=
  ∀ n, (P12316799538917298027.a n : ℤ) = A181732 (n + 1)

end A181732

/-! ## A181732.P12067275467199212422

`lt[A091088(A008592(n)-n), 2]`
-/

namespace A181732.P12067275467199212422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (A008592 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A181732.P12067275467199212422

namespace A181732

/-- `lt[A091088(A008592(n)-n), 2]` -/
def P12067275467199212422.Spec : Prop :=
  ∀ n, (P12067275467199212422.a n : ℤ) = A181732 (n + 1)

end A181732

/-! ## A181732.P2078949332482484870

`eq[2, A078772(A139280(n+1)-2)]`
-/

namespace A181732.P2078949332482484870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078772 (A139280 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181732.P2078949332482484870

namespace A181732

/-- `eq[2, A078772(A139280(n+1)-2)]` -/
def P2078949332482484870.Spec : Prop :=
  ∀ n, (P2078949332482484870.a n : ℤ) = A181732 (n + 1)

end A181732

/-!
# A181733: a(n) = A139708(n) - A092323(n).

The programs for A181733, the canonical program `A181733.P2943246372235819364` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181733 has offset 1).

The definition of A181733 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139708, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181733.P2943246372235819364

`A139708(n+1)-A092323(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A181733

/-- `A139708(n+1)-A092323(n+1)` -/
def P2943246372235819364.Spec : Prop :=
  ∀ n, P2943246372235819364.a n = A181733 (n + 1)

theorem P2943246372235819364.correct : P2943246372235819364.Spec := by
  intro n
  simp only [A181733, Nat.add_sub_cancel]

end A181733

/-! ## A181733.P16923166303614610320

`A062050(A139708(n+1))`
-/

namespace A181733.P16923166303614610320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A139708 (n + 1)).toNat

end

end A181733.P16923166303614610320

namespace A181733

/-- `A062050(A139708(n+1))` -/
def P16923166303614610320.Spec : Prop :=
  ∀ n, P16923166303614610320.a n = A181733 (n + 1)

end A181733

/-! ## A181733.P5339960315895414715

`ceil(A171968(n+1)/2)`
-/

namespace A181733.P5339960315895414715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A171968 (n + 1) : ℚ) / 2⌉

end

end A181733.P5339960315895414715

namespace A181733

/-- `ceil(A171968(n+1)/2)` -/
def P5339960315895414715.Spec : Prop :=
  ∀ n, P5339960315895414715.a n = A181733 (n + 1)

end A181733

/-! ## A181733.P3942667262237977759

`round(A171968(C(n+1, n))/2)`
-/

namespace A181733.P3942667262237977759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A171968 (Nat.choose (n + 1) n) : ℚ) / 2)

end

end A181733.P3942667262237977759

namespace A181733

/-- `round(A171968(C(n+1, n))/2)` -/
def P3942667262237977759.Spec : Prop :=
  ∀ n, P3942667262237977759.a n = A181733 (n + 1)

end A181733

/-! ## A181733.P6687866001249019385

`(A171968(abs(xor(n, -1)))+1)/2`
-/

namespace A181733.P6687866001249019385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171968 |Int.xor (n : ℤ) (-1)|.toNat + 1 : ℚ) / 2

end

end A181733.P6687866001249019385

namespace A181733

/-- `(A171968(abs(xor(n, -1)))+1)/2` -/
def P6687866001249019385.Spec : Prop :=
  ∀ n, P6687866001249019385.a n = (A181733 (n + 1) : ℚ)

end A181733

/-! ## A181733.P14008709539374001003

`(A171968(Δ[n²]-n)+1)/2`
-/

namespace A181733.P14008709539374001003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171968 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + 1 : ℚ) / 2

end

end A181733.P14008709539374001003

namespace A181733

/-- `(A171968(Δ[n²]-n)+1)/2` -/
def P14008709539374001003.Spec : Prop :=
  ∀ n, P14008709539374001003.a n = (A181733 (n + 1) : ℚ)

end A181733

/-! ## A181733.P10675679755459070726

`round(A171968(2*n-n+1)/2)`
-/

namespace A181733.P10675679755459070726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A171968 ((2 * n : ℤ) - (n : ℤ) + 1).toNat : ℚ) / 2)

end

end A181733.P10675679755459070726

namespace A181733

/-- `round(A171968(2*n-n+1)/2)` -/
def P10675679755459070726.Spec : Prop :=
  ∀ n, P10675679755459070726.a n = A181733 (n + 1)

end A181733

/-! ## A181733.P12540856016379629530

`A000463(A171968(n+1))`
-/

namespace A181733.P12540856016379629530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A171968 (n + 1)).toNat

end

end A181733.P12540856016379629530

namespace A181733

/-- `A000463(A171968(n+1))` -/
def P12540856016379629530.Spec : Prop :=
  ∀ n, P12540856016379629530.a n = A181733 (n + 1)

end A181733

/-! ## A181733.P13570409455510950943

`A001281(A171968(n+1)+1)`
-/

namespace A181733.P13570409455510950943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A171968 (n + 1) + 1).toNat

end

end A181733.P13570409455510950943

namespace A181733

/-- `A001281(A171968(n+1)+1)` -/
def P13570409455510950943.Spec : Prop :=
  ∀ n, P13570409455510950943.a n = A181733 (n + 1)

end A181733

/-! ## A181733.P3135653475316354427

`((A171968(n+1)+1)/2)%A000040(n+1)`
-/

namespace A181733.P3135653475316354427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A171968 (n + 1) + 1 : ℚ) / 2)) (A000040 (n + 1))

end

end A181733.P3135653475316354427

namespace A181733

/-- `((A171968(n+1)+1)/2)%A000040(n+1)` -/
def P3135653475316354427.Spec : Prop :=
  ∀ n, P3135653475316354427.a n = A181733 (n + 1)

end A181733

/-!
# A181734: G.f. A(x) satisfies: A(x) = (1 + x*A(x)) * (1 + x^2*A(x)^3).

The programs for A181734, there is no canonical definition to state claims against.
-/

/-! ## A181734.P15141960235520280084

`A326178(A185293(n+2))+A181315(n)`
-/

namespace A181734.P15141960235520280084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A185293 (n + 2)).toNat + A181315 n

end

end A181734.P15141960235520280084

/-! ## A181734.P5338974752528731049

`A181315(n)+A082784(A039744(n))`
-/

namespace A181734.P5338974752528731049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181315 n + A082784 (A039744 n).toNat

end

end A181734.P5338974752528731049

/-! ## A181734.P7910843476533726615

`A181315(n)+A082784(A119370(n))`
-/

namespace A181734.P7910843476533726615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181315 n + A082784 (A119370 n).toNat

end

end A181734.P7910843476533726615

/-! ## A181734.P11605150794937130361

`A181315(n)+A025466(A181301(n))`
-/

namespace A181734.P11605150794937130361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181315 n + A025466 (A181301 n).toNat

end

end A181734.P11605150794937130361

/-! ## A181734.P7718158252033528417

`A185114(A328323(n))+A181315(n)`
-/

namespace A181734.P7718158252033528417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 (A328323 n).toNat + A181315 n

end

end A181734.P7718158252033528417

/-!
# A181735: Number of perfect squared squares of order n up to symmetries of the square and of its squared subrectangles, if any.

The programs for A181735, there is no canonical definition to state claims against.
-/

/-! ## A181735.P3815390004931751976

`A006983(n+1)+A181340(n+1)`
-/

namespace A181735.P3815390004931751976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006983 (n + 1) + A181340 (n + 1)

end

end A181735.P3815390004931751976

/-! ## A181735.P8697726224051783457

`A181340(n+1)+A217156(n+1)-A217155(n+1)`
-/

namespace A181735.P8697726224051783457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181340 (n + 1) + (A217156 (n + 1) - A217155 (n + 1))

end

end A181735.P8697726224051783457

/-! ## A181735.P2865682546458198223

`A181340(n+1)+A217156(n+1)+A057428(n)*A217155(n+1)`
-/

namespace A181735.P2865682546458198223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181340 (n + 1) + (A217156 (n + 1) + A057428 n * A217155 (n + 1))

end

end A181735.P2865682546458198223

/-! ## A181735.P9974482256684892460

`A181340(n+1)+A006983(A031285(n))`
-/

namespace A181735.P9974482256684892460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181340 (n + 1) + A006983 (A031285 n).toNat

end

end A181735.P9974482256684892460

/-! ## A181735.P11500530276877387185

`A178688(n+1)+A181340(n+1)-1`
-/

namespace A181735.P11500530276877387185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178688 (n + 1) + (A181340 (n + 1) - 1)

end

end A181735.P11500530276877387185

/-!
# A181737: Partial products of A181103.

The programs for A181737, there is no canonical definition to state claims against.
-/

/-! ## A181737.P211310686449720377

`∏[A181103(n+1)]`
-/

namespace A181737.P211310686449720377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A181737.P211310686449720377

/-! ## A181737.P13321775785355802827

`∏[A181774(n)+a(n-1)]` with `a(0)=2`
-/

namespace A181737.P13321775785355802827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A181774 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A181737.P13321775785355802827

/-! ## A181737.P17326350267091391332

`∏[record[A181103(A000174(n))]]`
-/

namespace A181737.P17326350267091391332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181103 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A181737.P17326350267091391332

/-! ## A181737.P8335514739923784376

`a(n-1)*A181103(A008619(2*n))` with `a(0)=2`
-/

namespace A181737.P8335514739923784376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A181103 (A008619 (2 * n)).toNat

end

end A181737.P8335514739923784376

/-! ## A181737.P3393136382618039335

`(∑[A181774(A028310(n))]+1)*a(n-1)` with `a(0)=2`
-/

namespace A181737.P3393136382618039335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181774 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * a (n - 1)

end

end A181737.P3393136382618039335

/-!
# A181738: T(n, k) is the coefficient of x^k of the polynomial p(n) which is defined as the scalar part of P(n) = Q(x+1, 1, 1, 1) * P(n-1) for n > 0 and P(0) = Q(1, 0, 0, 0) where Q(a, b, c, d) is a quaternion, triangle read by rows.

The programs for A181738, the canonical program `A181738.P3608034959652289532` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181738 has offset 0).

The definition of A181738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181738.P3608034959652289532

`A007318(n)*A138230(A025581(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A181738

/-- `A007318(n)*A138230(A025581(n))` -/
def P3608034959652289532.Spec : Prop :=
  ∀ n, P3608034959652289532.a n = A181738 n

theorem P3608034959652289532.correct : P3608034959652289532.Spec := by
  intro n
  simp only [A181738]

end A181738

/-! ## A181738.P7012085091362628996

`A038207(n)/A057079(A095831(n+1))`
-/

namespace A181738.P7012085091362628996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A057079 (A095831 (n + 1)).toNat : ℚ)

end

end A181738.P7012085091362628996

namespace A181738

/-- `A038207(n)/A057079(A095831(n+1))` -/
def P7012085091362628996.Spec : Prop :=
  ∀ n, P7012085091362628996.a n = (A181738 n : ℚ)

end A181738

/-! ## A181738.P10630886292558654428

`A007318(n)*A138230((A099375(n)-1)/2)`
-/

namespace A181738.P10630886292558654428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A138230 (SequenceMachineLib.roundAway ((A099375 n - 1 : ℚ) / 2)).toNat

end

end A181738.P10630886292558654428

namespace A181738

/-- `A007318(n)*A138230((A099375(n)-1)/2)` -/
def P10630886292558654428.Spec : Prop :=
  ∀ n, P10630886292558654428.a n = A181738 n

end A181738

/-! ## A181738.P14746097404281320270

`Δ[A102363(n)]*A138230((A099375(n)-1)/2)`
-/

namespace A181738.P14746097404281320270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A138230 (SequenceMachineLib.roundAway ((A099375 n - 1 : ℚ) / 2)).toNat

end

end A181738.P14746097404281320270

namespace A181738

/-- `Δ[A102363(n)]*A138230((A099375(n)-1)/2)` -/
def P14746097404281320270.Spec : Prop :=
  ∀ n, P14746097404281320270.a n = A181738 n

end A181738

/-!
# A181739: Smallest semiprime with internal digits = n; or 0 if no such number exists.

The programs for A181739, there is no canonical definition to state claims against.
-/

/-! ## A181739.P2460192644041123976

`A185008(A045918(n))`
-/

namespace A181739.P2460192644041123976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185008 (A045918 n).toNat

end

end A181739.P2460192644041123976

/-! ## A181739.P2384138686645266125

`A185008(A047842(n))`
-/

namespace A181739.P2384138686645266125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185008 (A047842 n).toNat

end

end A181739.P2384138686645266125

/-! ## A181739.P5756788491590742375

`A185008(A097598(n))`
-/

namespace A181739.P5756788491590742375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185008 (A097598 n).toNat

end

end A181739.P5756788491590742375

/-! ## A181739.P15149743178327019261

`A185008(A244112(n))`
-/

namespace A181739.P15149743178327019261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185008 (A244112 n).toNat

end

end A181739.P15149743178327019261

/-! ## A181739.P7095480564445946906

`A185008(A077739(n+1)+9)`
-/

namespace A181739.P7095480564445946906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185008 (A077739 (n + 1) + 9).toNat

end

end A181739.P7095480564445946906

/-!
# A181740: Number of sequences of length n over {1, -1} with Erdős discrepancy <= 2.

The programs for A181740, there is no canonical definition to state claims against.
-/

/-! ## A181740.P14999196853816460905

`A092629(record[Δ[A055932(n+1)]])`
-/

namespace A181740.P14999196853816460905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092629 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181740.P14999196853816460905

/-! ## A181740.P13973115937408124575

`A063772(A005578(n)*A019280(n+1))`
-/

namespace A181740.P13973115937408124575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063772 (A005578 n * A019280 (n + 1)).toNat

end

end A181740.P13973115937408124575

/-! ## A181740.P17867125339226808588

`A063772(A005578(n)*A090748(n+1))`
-/

namespace A181740.P17867125339226808588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063772 (A005578 n * A090748 (n + 1)).toNat

end

end A181740.P17867125339226808588

/-!
# A181741: Primes of the form 2^t-2^k-1, k>=1.

The programs for A181741, the canonical program `A181741.P184464557172504553` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181741 has offset 1).

The definition of A181741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181741.P15615775001981554797

`A181701(n+1)/A011782(val(A181701(n+1), 2)+1)`
-/

namespace A181741.P15615775001981554797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181701 (n + 1) : ℚ) / (A011782 (SequenceMachineLib.valuation (A181701 (n + 1)).toNat 2 + 1) : ℚ)

end

end A181741.P15615775001981554797

namespace A181741

/-- `A181701(n+1)/A011782(val(A181701(n+1), 2)+1)` -/
def P15615775001981554797.Spec : Prop :=
  ∀ n, P15615775001981554797.a n = (A181741 (n + 1) : ℚ)

end A181741

/-! ## A181741.P7604565712300317572

`∩[A081118(n+1), A165255(n+1)]`
-/

namespace A181741.P7604565712300317572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181741.P7604565712300317572

namespace A181741

/-- `∩[A081118(n+1), A165255(n+1)]` -/
def P7604565712300317572.Spec : Prop :=
  ∀ n, (P7604565712300317572.a n : ℤ) = A181741 (n + 1)

end A181741

/-! ## A181741.P15145753392118210295

`∩[A165255(n+1), A089633(n)]`
-/

namespace A181741.P15145753392118210295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181741.P15145753392118210295

namespace A181741

/-- `∩[A165255(n+1), A089633(n)]` -/
def P15145753392118210295.Spec : Prop :=
  ∀ n, (P15145753392118210295.a n : ℤ) = A181741 (n + 1)

end A181741

/-! ## A181741.P184464557172504553

`∩[A081118(n+1), A100724(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A181741

/-- `∩[A081118(n+1), A100724(n+1)]` -/
def P184464557172504553.Spec : Prop :=
  ∀ n, (P184464557172504553.a n : ℤ) = A181741 (n + 1)

theorem P184464557172504553.correct : P184464557172504553.Spec := by
  intro n
  simp only [A181741, Nat.add_sub_cancel]

end A181741

/-! ## A181741.P1035727768134350332

`∩[A165255(n+1), A336533(n+1)]`
-/

namespace A181741.P1035727768134350332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181741.P1035727768134350332

namespace A181741

/-- `∩[A165255(n+1), A336533(n+1)]` -/
def P1035727768134350332.Spec : Prop :=
  ∀ n, (P1035727768134350332.a n : ℤ) = A181741 (n + 1)

end A181741

/-! ## A181741.P13761462963226884672

`∩[A165255(n+1), A345297(n)]`
-/

namespace A181741.P13761462963226884672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345297 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181741.P13761462963226884672

namespace A181741

/-- `∩[A165255(n+1), A345297(n)]` -/
def P13761462963226884672.Spec : Prop :=
  ∀ n, (P13761462963226884672.a n : ℤ) = A181741 (n + 1)

end A181741

/-! ## A181741.P1464230896895142747

`A181701(n+1)/A011782(A181742(n+1))`
-/

namespace A181741.P1464230896895142747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181701 (n + 1) : ℚ) / (A011782 (A181742 (n + 1)).toNat : ℚ)

end

end A181741.P1464230896895142747

namespace A181741

/-- `A181701(n+1)/A011782(A181742(n+1))` -/
def P1464230896895142747.Spec : Prop :=
  ∀ n, P1464230896895142747.a n = (A181741 (n + 1) : ℚ)

end A181741

/-! ## A181741.P3131303430454686176

`∩[A081118(n+1), A181172(n+1)]`
-/

namespace A181741.P3131303430454686176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181741.P3131303430454686176

namespace A181741

/-- `∩[A081118(n+1), A181172(n+1)]` -/
def P3131303430454686176.Spec : Prop :=
  ∀ n, (P3131303430454686176.a n : ℤ) = A181741 (n + 1)

end A181741

/-! ## A181741.P17250747633266054620

`p?[A081118(n+1)]`
-/

namespace A181741.P17250747633266054620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181741.P17250747633266054620

namespace A181741

/-- `p?[A081118(n+1)]` -/
def P17250747633266054620.Spec : Prop :=
  ∀ n, P17250747633266054620.a n = A181741 (n + 1)

end A181741

/-! ## A181741.P4543183636171322621

`p?[A089633(n+3)]`
-/

namespace A181741.P4543183636171322621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181741.P4543183636171322621

namespace A181741

/-- `p?[A089633(n+3)]` -/
def P4543183636171322621.Spec : Prop :=
  ∀ n, P4543183636171322621.a n = A181741 (n + 1)

end A181741

/-!
# A181742: Let A181741(n)=2^(t(n))-2^(k(n))-1, where k(n)>=1, t(n)>=k(n)+1. Then a(n)=t(n).

The programs for A181742, there is no canonical definition to state claims against.
-/

/-! ## A181742.P4821358320431597990

`val(A181701(n+1), 2)+1`
-/

namespace A181742.P4821358320431597990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181701 (n + 1)).toNat 2 + 1

end

end A181742.P4821358320431597990

/-! ## A181742.P15365921125418186527

`ceil(log2(A181741(n+1)+2))`
-/

namespace A181742.P15365921125418186527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A181741 (n + 1) + 2 : ℝ)⌉

end

end A181742.P15365921125418186527

/-! ## A181742.P1209792328734513907

`A020725(val(A181701(n+1), 2))`
-/

namespace A181742.P1209792328734513907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.valuation (A181701 (n + 1)).toNat 2)

end

end A181742.P1209792328734513907

/-! ## A181742.P11302321059192007237

`A065475(val(A181701(n+1), 2))`
-/

namespace A181742.P11302321059192007237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.valuation (A181701 (n + 1)).toNat 2)

end

end A181742.P11302321059192007237

/-! ## A181742.P8294750167322113841

`A109425(val(A181701(n+1), 2))`
-/

namespace A181742.P8294750167322113841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109425 (SequenceMachineLib.valuation (A181701 (n + 1)).toNat 2)

end

end A181742.P8294750167322113841

/-! ## A181742.P16985677057450130720

`A080513(floor(log2(A181701(n+1))))`
-/

namespace A181742.P16985677057450130720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (Nat.log 2 (A181701 (n + 1)).toNat)

end

end A181742.P16985677057450130720

/-! ## A181742.P14770415886648439582

`A008619(ceil(log2(A181701(n+1))))`
-/

namespace A181742.P14770415886648439582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌈Real.logb 2 (A181701 (n + 1) : ℝ)⌉.toNat

end

end A181742.P14770415886648439582

/-! ## A181742.P16650625445058088767

`A008619(round(log2(A181701(n+1))))`
-/

namespace A181742.P16650625445058088767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway (Real.logb 2 (A181701 (n + 1) : ℝ))).toNat

end

end A181742.P16650625445058088767

/-! ## A181742.P5185655803442938329

`A110654(ceil(log2(A181701(n+1)))+1)`
-/

namespace A181742.P5185655803442938329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (⌈Real.logb 2 (A181701 (n + 1) : ℝ)⌉ + 1).toNat

end

end A181742.P5185655803442938329

/-! ## A181742.P3883302859630700631

`A004526(round(log2(A181701(n+1))))+1`
-/

namespace A181742.P3883302859630700631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (Real.logb 2 (A181701 (n + 1) : ℝ))).toNat + 1

end

end A181742.P3883302859630700631

/-!
# A181743: The exponent k which defines A181741(n) = 2^t-2^k-1.

The programs for A181743, the canonical program `A181743.P11765594585100182491` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181743 has offset 1).

The definition of A181743 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181741, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181743.P11765594585100182491

`A007814(A181741(n+1)+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A181743

/-- `A007814(A181741(n+1)+1)` -/
def P11765594585100182491.Spec : Prop :=
  ∀ n, P11765594585100182491.a n = A181743 (n + 1)

theorem P11765594585100182491.correct : P11765594585100182491.Spec := by
  intro n
  simp only [A181743, Nat.add_sub_cancel]

end A181743

/-! ## A181743.P18096103665100755861

`val(∩[A165255(n+1), A089633(n)]+1, 2)`
-/

namespace A181743.P18096103665100755861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1) 2

end

end A181743.P18096103665100755861

namespace A181743

/-- `val(∩[A165255(n+1), A089633(n)]+1, 2)` -/
def P18096103665100755861.Spec : Prop :=
  ∀ n, (P18096103665100755861.a n : ℤ) = A181743 (n + 1)

end A181743

/-! ## A181743.P117838681619455731

`val(p?[A081118(n+1)]+1, 2)`
-/

namespace A181743.P117838681619455731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat 2

end

end A181743.P117838681619455731

namespace A181743

/-- `val(p?[A081118(n+1)]+1, 2)` -/
def P117838681619455731.Spec : Prop :=
  ∀ n, (P117838681619455731.a n : ℤ) = A181743 (n + 1)

end A181743

/-! ## A181743.P8323595389959863402

`val(p?[A087118(n+2)-1]+1, 2)`
-/

namespace A181743.P8323595389959863402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087118 (n + 2) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat 2

end

end A181743.P8323595389959863402

namespace A181743

/-- `val(p?[A087118(n+2)-1]+1, 2)` -/
def P8323595389959863402.Spec : Prop :=
  ∀ n, (P8323595389959863402.a n : ℤ) = A181743 (n + 1)

end A181743

/-! ## A181743.P16784245343065599952

`val(p?[or(1, A030130(n+1))]+1, 2)`
-/

namespace A181743.P16784245343065599952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A030130 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat 2

end

end A181743.P16784245343065599952

namespace A181743

/-- `val(p?[or(1, A030130(n+1))]+1, 2)` -/
def P16784245343065599952.Spec : Prop :=
  ∀ n, (P16784245343065599952.a n : ℤ) = A181743 (n + 1)

end A181743

/-!
# A181744: Numbers n such that x(x+n)=y*y has one and only one positive integer solution (x,y).

The programs for A181744, there is no canonical definition to state claims against.
-/

/-! ## A181744.P4485282954598906705

`eq[4, A168036(lcm(4, n))]`
-/

namespace A181744.P4485282954598906705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (Nat.lcm 4 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181744.P4485282954598906705

/-! ## A181744.P17660754436478542633

`eq[1, A115878(n+1)]+1`
-/

namespace A181744.P17660754436478542633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A181744.P17660754436478542633

/-! ## A181744.P5831198892783204073

`eq[2, A114811(n+1)]+1`
-/

namespace A181744.P5831198892783204073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A181744.P5831198892783204073

/-! ## A181744.P4570330855665351233

`eq[2, A176835(n+1)]+1`
-/

namespace A181744.P4570330855665351233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176835 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A181744.P4570330855665351233

/-! ## A181744.P8545147875541526928

`eq[1, A003415(n/gcd(4, n))]`
-/

namespace A181744.P8545147875541526928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 4 n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181744.P8545147875541526928

/-! ## A181744.P4301953933972768792

`eq[5, A001222(lcm(8, A008458(n)))]`
-/

namespace A181744.P4301953933972768792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 8 (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181744.P4301953933972768792

/-! ## A181744.P3276111961733079135

`eq[5, A001222(lcm(16, A008574(n)))]`
-/

namespace A181744.P3276111961733079135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 16 (A008574 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181744.P3276111961733079135

/-! ## A181744.P5226251654522341987

`eq[3, A001222(A164355(n)-n)]`
-/

namespace A181744.P5226251654522341987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A164355 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181744.P5226251654522341987

/-!
# A181747: Odd noncomposite numbers that are the difference of 2 primes.

The programs for A181747, the canonical program `A181747.P3900784765527712522` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181747 has offset 1).

The definition of A181747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181747.P3900784765527712522

`A067829(n+1)-2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A181747

/-- `A067829(n+1)-2` -/
def P3900784765527712522.Spec : Prop :=
  ∀ n, P3900784765527712522.a n = A181747 (n + 1)

theorem P3900784765527712522.correct : P3900784765527712522.Spec := by
  intro n
  simp only [A181747, Nat.add_sub_cancel]

end A181747

/-! ## A181747.P10505265284006277331

`2*A168497(n+1)-1`
-/

namespace A181747.P10505265284006277331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168497 (n + 1) - 1

end

end A181747.P10505265284006277331

namespace A181747

/-- `2*A168497(n+1)-1` -/
def P10505265284006277331.Spec : Prop :=
  ∀ n, P10505265284006277331.a n = A181747 (n + 1)

end A181747

/-! ## A181747.P17455055489603772958

`or(1, A124588(n+1)-1)`
-/

namespace A181747.P17455055489603772958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A124588 (n + 1) - 1)

end

end A181747.P17455055489603772958

namespace A181747

/-- `or(1, A124588(n+1)-1)` -/
def P17455055489603772958.Spec : Prop :=
  ∀ n, P17455055489603772958.a n = A181747 (n + 1)

end A181747

/-! ## A181747.P18093092121116423020

`A124588(n+1)-A000007(n)`
-/

namespace A181747.P18093092121116423020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1) - A000007 n

end

end A181747.P18093092121116423020

namespace A181747

/-- `A124588(n+1)-A000007(n)` -/
def P18093092121116423020.Spec : Prop :=
  ∀ n, P18093092121116423020.a n = A181747 (n + 1)

end A181747

/-! ## A181747.P13949986732737728195

`A124588(n+1)/A054977(n)`
-/

namespace A181747.P13949986732737728195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124588 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A181747.P13949986732737728195

namespace A181747

/-- `A124588(n+1)/A054977(n)` -/
def P13949986732737728195.Spec : Prop :=
  ∀ n, P13949986732737728195.a n = (A181747 (n + 1) : ℚ)

end A181747

/-! ## A181747.P17902961814482038463

`A111166(n+1)+A124588(n+1)-A001359(n+1)`
-/

namespace A181747.P17902961814482038463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1) + (A124588 (n + 1) - A001359 (n + 1))

end

end A181747.P17902961814482038463

namespace A181747

/-- `A111166(n+1)+A124588(n+1)-A001359(n+1)` -/
def P17902961814482038463.Spec : Prop :=
  ∀ n, P17902961814482038463.a n = A181747 (n + 1)

end A181747

/-! ## A181747.P4951719803209232398

`A111166(n+1)+A124588(n+1)-A124588(n+2)`
-/

namespace A181747.P4951719803209232398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1) + (A124588 (n + 1) - A124588 (n + 2))

end

end A181747.P4951719803209232398

namespace A181747

/-- `A111166(n+1)+A124588(n+1)-A124588(n+2)` -/
def P4951719803209232398.Spec : Prop :=
  ∀ n, P4951719803209232398.a n = A181747 (n + 1)

end A181747

/-! ## A181747.P12583578575423982720

`A001097(A004274(n+1))-2`
-/

namespace A181747.P12583578575423982720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (A004274 (n + 1)).toNat - 2

end

end A181747.P12583578575423982720

namespace A181747

/-- `A001097(A004274(n+1))-2` -/
def P12583578575423982720.Spec : Prop :=
  ∀ n, P12583578575423982720.a n = A181747 (n + 1)

end A181747

/-! ## A181747.P931879476479460851

`A001097(A004280(n+1))-2`
-/

namespace A181747.P931879476479460851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (A004280 (n + 1)).toNat - 2

end

end A181747.P931879476479460851

namespace A181747

/-- `A001097(A004280(n+1))-2` -/
def P931879476479460851.Spec : Prop :=
  ∀ n, P931879476479460851.a n = A181747 (n + 1)

end A181747

/-! ## A181747.P8940076074461497669

`A171821(A004278(n+2))-2`
-/

namespace A181747.P8940076074461497669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (A004278 (n + 2)).toNat - 2

end

end A181747.P8940076074461497669

namespace A181747

/-- `A171821(A004278(n+2))-2` -/
def P8940076074461497669.Spec : Prop :=
  ∀ n, P8940076074461497669.a n = A181747 (n + 1)

end A181747

/-! ## A181747.P6835647087375646716

`A099609(2*(n+1))-2`
-/

namespace A181747.P6835647087375646716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099609 (2 * (n + 1)) - 2

end

end A181747.P6835647087375646716

namespace A181747

/-- `A099609(2*(n+1))-2` -/
def P6835647087375646716.Spec : Prop :=
  ∀ n, P6835647087375646716.a n = A181747 (n + 1)

end A181747

/-! ## A181747.P13190231119339178914

`∩[A274212(n+1), A380468(n+1)]`
-/

namespace A181747.P13190231119339178914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181747.P13190231119339178914

namespace A181747

/-- `∩[A274212(n+1), A380468(n+1)]` -/
def P13190231119339178914.Spec : Prop :=
  ∀ n, (P13190231119339178914.a n : ℤ) = A181747 (n + 1)

end A181747

/-! ## A181747.P3292126411844050692

`p?[A028815(n)+1]-2`
-/

namespace A181747.P3292126411844050692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A181747.P3292126411844050692

namespace A181747

/-- `p?[A028815(n)+1]-2` -/
def P3292126411844050692.Spec : Prop :=
  ∀ n, P3292126411844050692.a n = A181747 (n + 1)

end A181747

/-! ## A181747.P8554732723584624429

`p?[A157048(n+1)]-2`
-/

namespace A181747.P8554732723584624429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A181747.P8554732723584624429

namespace A181747

/-- `p?[A157048(n+1)]-2` -/
def P8554732723584624429.Spec : Prop :=
  ∀ n, P8554732723584624429.a n = A181747 (n + 1)

end A181747

/-! ## A181747.P4950507080573555054

`p?[∑[A115061(n+1)]]-2`
-/

namespace A181747.P4950507080573555054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A181747.P4950507080573555054

namespace A181747

/-- `p?[∑[A115061(n+1)]]-2` -/
def P4950507080573555054.Spec : Prop :=
  ∀ n, P4950507080573555054.a n = A181747 (n + 1)

end A181747

/-! ## A181747.P9958147433610400486

`∩[A028815(n), A162800(n)]-1`
-/

namespace A181747.P9958147433610400486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A181747.P9958147433610400486

namespace A181747

/-- `∩[A028815(n), A162800(n)]-1` -/
def P9958147433610400486.Spec : Prop :=
  ∀ n, P9958147433610400486.a n = A181747 (n + 1)

end A181747

/-! ## A181747.P11144832516250316011

`∩[A040976(n+1), A117346(n+1)]`
-/

namespace A181747.P11144832516250316011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181747.P11144832516250316011

namespace A181747

/-- `∩[A040976(n+1), A117346(n+1)]` -/
def P11144832516250316011.Spec : Prop :=
  ∀ n, (P11144832516250316011.a n : ℤ) = A181747 (n + 1)

end A181747

/-! ## A181747.P17092043016965907455

`∩[A073534(n+1), A117346(n+1)]`
-/

namespace A181747.P17092043016965907455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181747.P17092043016965907455

namespace A181747

/-- `∩[A073534(n+1), A117346(n+1)]` -/
def P17092043016965907455.Spec : Prop :=
  ∀ n, (P17092043016965907455.a n : ℤ) = A181747 (n + 1)

end A181747

/-! ## A181747.P11560769902664977118

`∩[A117346(n+1), A274212(n+1)]`
-/

namespace A181747.P11560769902664977118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181747.P11560769902664977118

namespace A181747

/-- `∩[A117346(n+1), A274212(n+1)]` -/
def P11560769902664977118.Spec : Prop :=
  ∀ n, (P11560769902664977118.a n : ℤ) = A181747 (n + 1)

end A181747

/-! ## A181747.P17293470579033596675

`∩[A280590(n+1), A326155(n+1)]`
-/

namespace A181747.P17293470579033596675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181747.P17293470579033596675

namespace A181747

/-- `∩[A280590(n+1), A326155(n+1)]` -/
def P17293470579033596675.Spec : Prop :=
  ∀ n, (P17293470579033596675.a n : ℤ) = A181747 (n + 1)

end A181747

/-!
# A181748: Twin primes not of the form p+2^k where p is prime and k>0.

The programs for A181748, there is no canonical definition to state claims against.
-/

/-! ## A181748.P13736342349934524030

`∩[A001097(n+1), A133122(n+1)]`
-/

namespace A181748.P13736342349934524030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181748.P13736342349934524030

/-! ## A181748.P13242498599545340813

`∩[A001359(n+1), A133122(n+1)]`
-/

namespace A181748.P13242498599545340813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181748.P13242498599545340813

/-! ## A181748.P5154611365291968202

`∩[A001838(n+1), A133122(n+1)]`
-/

namespace A181748.P5154611365291968202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181748.P5154611365291968202

/-! ## A181748.P5493987594800230592

`∩[A054799(n+1), A133122(n+1)]`
-/

namespace A181748.P5493987594800230592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181748.P5493987594800230592

/-! ## A181748.P14181043414175106285

`∩[A063693(n+1), A133122(n+1)]`
-/

namespace A181748.P14181043414175106285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181748.P14181043414175106285

/-! ## A181748.P1937755215357164649

`∩[A063700(n+1), A133122(n+1)]`
-/

namespace A181748.P1937755215357164649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181748.P1937755215357164649

/-! ## A181748.P1243714508547289278

`∩[A124588(n+1), A133122(n+1)]`
-/

namespace A181748.P1243714508547289278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181748.P1243714508547289278

/-! ## A181748.P12365098429518908798

`∩[A133122(n+1), A171821(n+1)]`
-/

namespace A181748.P12365098429518908798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181748.P12365098429518908798

/-! ## A181748.P6001047101934089908

`∩[A133122(n+1), A238528(n+1)]`
-/

namespace A181748.P6001047101934089908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181748.P6001047101934089908

/-! ## A181748.P2869668221789973314

`∩[A133122(n+1), A265760(n+1)]`
-/

namespace A181748.P2869668221789973314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181748.P2869668221789973314

/-! ## A181748.P11980490753196727243

`p?[A151800(A006286(n+1))-2]`
-/

namespace A181748.P11980490753196727243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A006286 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181748.P11980490753196727243

/-!
# A181749: The number of paths of a chess rook in a 4D hypercube, from (0..0) to (n..n), where the rook may move in steps that are multiples of (1,0..0), (0,1,0..0), ..., (0..0,1).

The programs for A181749, there is no canonical definition to state claims against.
-/

/-! ## A181749.P7886751245483775500

`A181731(A141214(n+1))`
-/

namespace A181749.P7886751245483775500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181731 (A141214 (n + 1)).toNat

end

end A181749.P7886751245483775500

/-! ## A181749.P8073096660821614610

`A181731(A027379(n+2))`
-/

namespace A181749.P8073096660821614610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181731 (A027379 (n + 2)).toNat

end

end A181749.P8073096660821614610

/-! ## A181749.P14155594704659491259

`A181731(A155212(n)+5)`
-/

namespace A181749.P14155594704659491259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181731 (A155212 n + 5).toNat

end

end A181749.P14155594704659491259

/-! ## A181749.P10555783436042736094

`A181731(A052905(n+1)+2)`
-/

namespace A181749.P10555783436042736094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181731 (A052905 (n + 1) + 2).toNat

end

end A181749.P10555783436042736094

/-! ## A181749.P6256242410174754141

`A181731(eq[4, A058399(n+1)])`
-/

namespace A181749.P6256242410174754141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181731 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181749.P6256242410174754141

/-!
# A181750: The number of paths of a chess rook in a 5D hypercube, from (0..0) to (n..n), where the rook may move in steps that are multiples of (1,0..0), (0,1,0..0), ..., (0..0,1).

The programs for A181750, there is no canonical definition to state claims against.
-/

/-! ## A181750.P16377639826257940691

`A181731(Δ[A023545(n+1)])`
-/

namespace A181750.P16377639826257940691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181731 (f1 (n + 1) - f1 n).toNat

end

end A181750.P16377639826257940691

/-!
# A181754: a(1) = 1, a(2) = 2. For n >= 3, a(n) is found by concatenating the first n-1 terms of the sequence and then dividing the resulting number by a(n-1).

The programs for A181754, there is no canonical definition to state claims against.
-/

/-! ## A181754.P2620042864478478065

`record[A112863(a(n-4))]` with `a(0)=1, a(1)=2, a(2)=6, a(3)=21, a(4)=7`
-/

namespace A181754.P2620042864478478065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 21, 7] fun n f1 =>
  A112863 (f1 (n - 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181754.P2620042864478478065

/-!
# A181755: a(1) = 1, a(2) = 5. For n >= 3, a(n) is found by concatenating the first n-1 terms of the sequence and then dividing the resulting number by a(n-1).

The programs for A181755, there is no canonical definition to state claims against.
-/

/-! ## A181755.P7392898269024229220

`A194531(A367114(n+1))`
-/

namespace A181755.P7392898269024229220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194531 (A367114 (n + 1)).toNat

end

end A181755.P7392898269024229220

/-!
# A181756: a(1) = 1, a(2) = 10. For n >= 3, a(n) is found by concatenating the first n-1 terms of the sequence and then dividing the resulting number by a(n-1).

The programs for A181756, there is no canonical definition to state claims against.
-/

/-! ## A181756.P10225039876541843200

`A004286(A018239(n+1)^∑{p}[n+1, gcd(n, #)])`
-/

namespace A181756.P10225039876541843200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004286 (A018239 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)).toNat

end

end A181756.P10225039876541843200

/-!
# A181758: Greatest prime closest to n^3.

The programs for A181758, there is no canonical definition to state claims against.
-/

/-! ## A181758.P17145045828115233311

`A077018((n+1)^3)`
-/

namespace A181758.P17145045828115233311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077018 ((n + 1) ^ 3)

end

end A181758.P17145045828115233311

/-! ## A181758.P4552738737615144932

`A051697(Δ[∑[n]²]+1)`
-/

namespace A181758.P4552738737615144932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A181758.P4552738737615144932

/-! ## A181758.P18092550895466112942

`A051698(floor(sqrt((n+1)^6+3))+1)`
-/

namespace A181758.P18092550895466112942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (Nat.sqrt ((n + 1) ^ 6 + 3) + 1)

end

end A181758.P18092550895466112942

/-! ## A181758.P15821308820629293851

`abs(2-A051697(A000578(n+1)+1))+2`
-/

namespace A181758.P15821308820629293851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A051697 (A000578 (n + 1) + 1).toNat| + 2

end

end A181758.P15821308820629293851

/-!
# A181760: a(n) = (n!)(n!-1)(n!-2)...(n!-n+1).

The programs for A181760, there is no canonical definition to state claims against.
-/

/-! ## A181760.P6887738832841970073

`n!*C(n!, n)`
-/

namespace A181760.P6887738832841970073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (Nat.factorial n) n

end

end A181760.P6887738832841970073

/-! ## A181760.P18123362205880902008

`A000142(n)*A086687(n)`
-/

namespace A181760.P18123362205880902008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A086687 n

end

end A181760.P18123362205880902008

/-!
# A181761: Start with 18; write down the sum of its digits; add last two terms; repeat.

The programs for A181761, there is no canonical definition to state claims against.
-/

/-! ## A181761.P10877968757613231530

`9/A104029(A117142(n+1))^(1-4/2)`
-/

namespace A181761.P10877968757613231530
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  9 / (A104029 (A117142 (n + 1)).toNat : ℝ) ^ (1 - (4 : ℚ) / 2 : ℝ)

end

end A181761.P10877968757613231530

/-! ## A181761.P9188043266132710852

`gcd(A008591(n+4), A118759(A168419(n+5)))`
-/

namespace A181761.P9188043266132710852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008591 (n + 4)) (A118759 (A168419 (n + 5)).toNat)

end

end A181761.P9188043266132710852

/-! ## A181761.P18375877148175762597

`A104029(A117142(n+1))*A180599(3*n+1)`
-/

namespace A181761.P18375877148175762597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104029 (A117142 (n + 1)).toNat * A180599 (3 * n + 1)

end

end A181761.P18375877148175762597

/-! ## A181761.P8299635277177326003

`A158416(n+2)*A323602(A138962(3*n+5))`
-/

namespace A181761.P8299635277177326003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (n + 2) * A323602 (A138962 (3 * n + 5)).toNat

end

end A181761.P8299635277177326003

/-! ## A181761.P5680372520765047994

`A186951(A072345(n+1))`
-/

namespace A181761.P5680372520765047994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186951 (A072345 (n + 1)).toNat

end

end A181761.P5680372520765047994

/-!
# A181762: a(n) = n/2 if n is even, otherwise 3n+5.

The programs for A181762, the canonical program `A181762.P6205375582375670698` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181762 has offset 0).

The definition of A181762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181762.P6205375582375670698

`(7*n+10-10*(-1)^n*(n/2+1))/4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181762

/-- `(7*n+10-10*(-1)^n*(n/2+1))/4` -/
def P6205375582375670698.Spec : Prop :=
  ∀ n, P6205375582375670698.a n = (A181762 n : ℚ)

end A181762

/-! ## A181762.P13137576678887629547

`a(n-2)+6^(n%2)` with `a(0)=0, a(1)=8`
-/

namespace A181762.P13137576678887629547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n a =>
  a (n - 2) + 6 ^ (n % 2)

end

end A181762.P13137576678887629547

namespace A181762

/-- `a(n-2)+6^(n%2)` -/
def P13137576678887629547.Spec : Prop :=
  ∀ n, (P13137576678887629547.a n : ℤ) = A181762 n

end A181762

/-! ## A181762.P11251496464019136612

`a(n-2)+gcd(6, (n+1)%2)` with `a(0)=0, a(1)=8`
-/

namespace A181762.P11251496464019136612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n a =>
  a (n - 2) + Nat.gcd 6 ((n + 1) % 2)

end

end A181762.P11251496464019136612

namespace A181762

/-- `a(n-2)+gcd(6, (n+1)%2)` -/
def P11251496464019136612.Spec : Prop :=
  ∀ n, (P11251496464019136612.a n : ℤ) = A181762 n

end A181762

/-! ## A181762.P9122194775330637485

`∑[7-a(n-1)]-a(n-1)` with `a(0)=0, a(1)=8, a(2)=1`
-/

namespace A181762.P9122194775330637485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 1] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A181762.P9122194775330637485

namespace A181762

/-- `∑[7-a(n-1)]-a(n-1)` -/
def P9122194775330637485.Spec : Prop :=
  ∀ n, P9122194775330637485.a n = A181762 n

end A181762

/-! ## A181762.P16968554588645876139

`A006370(n)+4*n%2`
-/

namespace A181762.P16968554588645876139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n + ((4 * (n % 2) : ℕ) : ℤ)

end

end A181762.P16968554588645876139

namespace A181762

/-- `A006370(n)+4*n%2` -/
def P16968554588645876139.Spec : Prop :=
  ∀ n, P16968554588645876139.a n = A181762 n

end A181762

/-! ## A181762.P3081455508859837890

`A047274(n)+8-a(n-1)` with `a(0)=0`
-/

namespace A181762.P3081455508859837890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A047274 n + (8 - a (n - 1))

end

end A181762.P3081455508859837890

namespace A181762

/-- `A047274(n)+8-a(n-1)` -/
def P3081455508859837890.Spec : Prop :=
  ∀ n, P3081455508859837890.a n = A181762 n

end A181762

/-! ## A181762.P13009970921360200455

`A010675(n)+∑[2*n]%(2*n+1)*gcd(2, n+1)`
-/

namespace A181762.P13009970921360200455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010675 n + (((∑ j ∈ Finset.range (n + 1), f1 j) % (2 * n + 1) * Nat.gcd 2 (n + 1) : ℕ) : ℤ)

end

end A181762.P13009970921360200455

namespace A181762

/-- `A010675(n)+∑[2*n]%(2*n+1)*gcd(2, n+1)` -/
def P13009970921360200455.Spec : Prop :=
  ∀ n, P13009970921360200455.a n = A181762 n

end A181762

/-! ## A181762.P8844513360953629083

`A010677(n)+A001281(n)`
-/

namespace A181762.P8844513360953629083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010677 n + A001281 n

end

end A181762.P8844513360953629083

namespace A181762

/-- `A010677(n)+A001281(n)` -/
def P8844513360953629083.Spec : Prop :=
  ∀ n, P8844513360953629083.a n = A181762 n

end A181762

/-! ## A181762.P14524675281304488117

`A010675(n)+A006370(n)`
-/

namespace A181762.P14524675281304488117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010675 n + A006370 n

end

end A181762.P14524675281304488117

namespace A181762

/-- `A010675(n)+A006370(n)` -/
def P14524675281304488117.Spec : Prop :=
  ∀ n, P14524675281304488117.a n = A181762 n

end A181762

/-! ## A181762.P218980356946035834

`A174390(n)+A066104(n)`
-/

namespace A181762.P218980356946035834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174390 n + A066104 n

end

end A181762.P218980356946035834

namespace A181762

/-- `A174390(n)+A066104(n)` -/
def P218980356946035834.Spec : Prop :=
  ∀ n, P218980356946035834.a n = A181762 n

end A181762

/-! ## A181762.P6679944943611104793

`A006370(n)+A010673(n)²`
-/

namespace A181762.P6679944943611104793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n + A010673 n ^ 2

end

end A181762.P6679944943611104793

namespace A181762

/-- `A006370(n)+A010673(n)²` -/
def P6679944943611104793.Spec : Prop :=
  ∀ n, P6679944943611104793.a n = A181762 n

end A181762

/-! ## A181762.P4777631464329123266

`A173237(n+1)-A266303(n)`
-/

namespace A181762.P4777631464329123266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173237 (n + 1) - A266303 n

end

end A181762.P4777631464329123266

namespace A181762

/-- `A173237(n+1)-A266303(n)` -/
def P4777631464329123266.Spec : Prop :=
  ∀ n, P4777631464329123266.a n = A181762 n

end A181762

/-! ## A181762.P12895262425099036609

`A001281(n)+3*A010673(n)`
-/

namespace A181762.P12895262425099036609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n + 3 * A010673 n

end

end A181762.P12895262425099036609

namespace A181762

/-- `A001281(n)+3*A010673(n)` -/
def P12895262425099036609.Spec : Prop :=
  ∀ n, P12895262425099036609.a n = A181762 n

end A181762

/-! ## A181762.P4573227494543382404

`A006370(n)+4*A000035(n)`
-/

namespace A181762.P4573227494543382404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n + 4 * A000035 n

end

end A181762.P4573227494543382404

namespace A181762

/-- `A006370(n)+4*A000035(n)` -/
def P4573227494543382404.Spec : Prop :=
  ∀ n, P4573227494543382404.a n = A181762 n

end A181762

/-! ## A181762.P1321014652415767926

`A006370(n)+C(A176895(n), 3)`
-/

namespace A181762.P1321014652415767926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n + (Nat.choose (A176895 n).toNat 3 : ℤ)

end

end A181762.P1321014652415767926

namespace A181762

/-- `A006370(n)+C(A176895(n), 3)` -/
def P1321014652415767926.Spec : Prop :=
  ∀ n, P1321014652415767926.a n = A181762 n

end A181762

/-! ## A181762.P13339214936659508113

`A006370(n)+Δ[A109613(n)]²`
-/

namespace A181762.P13339214936659508113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n + (f1 (n + 1) - f1 n) ^ 2

end

end A181762.P13339214936659508113

namespace A181762

/-- `A006370(n)+Δ[A109613(n)]²` -/
def P13339214936659508113.Spec : Prop :=
  ∀ n, P13339214936659508113.a n = A181762 n

end A181762

/-! ## A181762.P7740952074887719498

`A006370(n)+(1-A033999(n))²`
-/

namespace A181762.P7740952074887719498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n + (1 - A033999 n) ^ 2

end

end A181762.P7740952074887719498

namespace A181762

/-- `A006370(n)+(1-A033999(n))²` -/
def P7740952074887719498.Spec : Prop :=
  ∀ n, P7740952074887719498.a n = A181762 n

end A181762

/-! ## A181762.P12619889928110581628

`(A195140(n+1)-A029579(n))*A040001(n+1)`
-/

namespace A181762.P12619889928110581628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A195140 (n + 1) - A029579 n) * A040001 (n + 1)

end

end A181762.P12619889928110581628

namespace A181762

/-- `(A195140(n+1)-A029579(n))*A040001(n+1)` -/
def P12619889928110581628.Spec : Prop :=
  ∀ n, P12619889928110581628.a n = A181762 n

end A181762

/-! ## A181762.P8216675452028811753

`A001281(xor(1, n+1))`
-/

namespace A181762.P8216675452028811753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Nat.xor 1 (n + 1))

end

end A181762.P8216675452028811753

namespace A181762

/-- `A001281(xor(1, n+1))` -/
def P8216675452028811753.Spec : Prop :=
  ∀ n, P8216675452028811753.a n = A181762 n

end A181762

/-! ## A181762.P6293126699876024637

`A160413(n+2)-xor(1, n)+n`
-/

namespace A181762.P6293126699876024637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (n + 2) - (Nat.xor 1 n : ℤ) + (n : ℤ)

end

end A181762.P6293126699876024637

namespace A181762

/-- `A160413(n+2)-xor(1, n)+n` -/
def P6293126699876024637.Spec : Prop :=
  ∀ n, P6293126699876024637.a n = A181762 n

end A181762

/-!
# A181763: a(n) = A061037(n)^2.

The programs for A181763, the canonical program `A181763.P14779170359321932747` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181763 has offset 2).

The definition of A181763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181763.P14779170359321932747

`A061037(n+2)²`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181763

/-- `A061037(n+2)²` -/
def P14779170359321932747.Spec : Prop :=
  ∀ n, P14779170359321932747.a n = A181763 (n + 2)

theorem P14779170359321932747.correct : P14779170359321932747.Spec := by
  intro n
  simp only [A181763, Nat.add_sub_cancel]

end A181763

/-! ## A181763.P18331890832328457129

`(A188134(n)+A181318(n))²`
-/

namespace A181763.P18331890832328457129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A188134 n + A181318 n) ^ 2

end

end A181763.P18331890832328457129

namespace A181763

/-- `(A188134(n)+A181318(n))²` -/
def P18331890832328457129.Spec : Prop :=
  ∀ n, P18331890832328457129.a n = A181763 (n + 2)

end A181763

/-! ## A181763.P9812227983486399319

`(A181318(n)-A191567(n))²`
-/

namespace A181763.P9812227983486399319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181318 n - A191567 n) ^ 2

end

end A181763.P9812227983486399319

namespace A181763

/-- `(A181318(n)-A191567(n))²` -/
def P9812227983486399319.Spec : Prop :=
  ∀ n, P9812227983486399319.a n = A181763 (n + 2)

end A181763

/-! ## A181763.P5041055577933999980

`(A246416(n)*A247617(n))²`
-/

namespace A181763.P5041055577933999980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A246416 n * A247617 n) ^ 2

end

end A181763.P5041055577933999980

namespace A181763

/-- `(A246416(n)*A247617(n))²` -/
def P5041055577933999980.Spec : Prop :=
  ∀ n, P5041055577933999980.a n = A181763 (n + 2)

end A181763

/-! ## A181763.P14938475332303375631

`A171638(n+2)/A010153(n)`
-/

namespace A181763.P14938475332303375631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171638 (n + 2) : ℚ) / (A010153 n : ℚ)

end

end A181763.P14938475332303375631

namespace A181763

/-- `A171638(n+2)/A010153(n)` -/
def P14938475332303375631.Spec : Prop :=
  ∀ n, P14938475332303375631.a n = (A181763 (n + 2) : ℚ)

end A181763

/-! ## A181763.P1650889215680426239

`(A028347(n+2)/A010156(n))²`
-/

namespace A181763.P1650889215680426239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028347 (n + 2) : ℚ) / (A010156 n : ℚ)) ^ 2

end

end A181763.P1650889215680426239

namespace A181763

/-- `(A028347(n+2)/A010156(n))²` -/
def P1650889215680426239.Spec : Prop :=
  ∀ n, P1650889215680426239.a n = (A181763 (n + 2) : ℚ)

end A181763

/-! ## A181763.P353639890233037664

`(A171621(n+2)/A010121(n))²`
-/

namespace A181763.P353639890233037664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A171621 (n + 2) : ℚ) / (A010121 n : ℚ)) ^ 2

end

end A181763.P353639890233037664

namespace A181763

/-- `(A171621(n+2)/A010121(n))²` -/
def P353639890233037664.Spec : Prop :=
  ∀ n, P353639890233037664.a n = (A181763 (n + 2) : ℚ)

end A181763

/-! ## A181763.P12710551847784722696

`(2*A181318(n)-A142883(n))²`
-/

namespace A181763.P12710551847784722696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A181318 n - A142883 n) ^ 2

end

end A181763.P12710551847784722696

namespace A181763

/-- `(2*A181318(n)-A142883(n))²` -/
def P12710551847784722696.Spec : Prop :=
  ∀ n, P12710551847784722696.a n = A181763 (n + 2)

end A181763

/-! ## A181763.P12721437350463156129

`((A191567(n)+A188134(n))/2)²`
-/

namespace A181763.P12721437350463156129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A191567 n + A188134 n : ℚ) / 2) ^ 2

end

end A181763.P12721437350463156129

namespace A181763

/-- `((A191567(n)+A188134(n))/2)²` -/
def P12721437350463156129.Spec : Prop :=
  ∀ n, P12721437350463156129.a n = (A181763 (n + 2) : ℚ)

end A181763

/-! ## A181763.P16130464043377346972

`A061037(n+2)^A020639(A004277(n))`
-/

namespace A181763.P16130464043377346972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061037 (n + 2) : ℚ) ^ (A020639 (A004277 n).toNat : ℤ)

end

end A181763.P16130464043377346972

namespace A181763

/-- `A061037(n+2)^A020639(A004277(n))` -/
def P16130464043377346972.Spec : Prop :=
  ∀ n, P16130464043377346972.a n = (A181763 (n + 2) : ℚ)

end A181763

/-! ## A181763.P11384722577297746897

`A061037(n+2)^A000005(A328579(n))`
-/

namespace A181763.P11384722577297746897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061037 (n + 2) : ℚ) ^ (A000005 (A328579 n).toNat : ℤ)

end

end A181763.P11384722577297746897

namespace A181763

/-- `A061037(n+2)^A000005(A328579(n))` -/
def P11384722577297746897.Spec : Prop :=
  ∀ n, P11384722577297746897.a n = (A181763 (n + 2) : ℚ)

end A181763

/-! ## A181763.P1989032526107574138

`(A191567(n)-A181318(n))*A061037(n+2)`
-/

namespace A181763.P1989032526107574138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A191567 n - A181318 n) * A061037 (n + 2)

end

end A181763.P1989032526107574138

namespace A181763

/-- `(A191567(n)-A181318(n))*A061037(n+2)` -/
def P1989032526107574138.Spec : Prop :=
  ∀ n, P1989032526107574138.a n = A181763 (n + 2)

end A181763

/-! ## A181763.P3157226121423408460

`A061037(n+2)*A246416(n)*A247617(n)`
-/

namespace A181763.P3157226121423408460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (n + 2) * A246416 n * A247617 n

end

end A181763.P3157226121423408460

namespace A181763

/-- `A061037(n+2)*A246416(n)*A247617(n)` -/
def P3157226121423408460.Spec : Prop :=
  ∀ n, P3157226121423408460.a n = A181763 (n + 2)

end A181763

/-! ## A181763.P8115251468217060136

`A061037(n+2)*A061037(n+2)*A158388(n)`
-/

namespace A181763.P8115251468217060136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (n + 2) * A061037 (n + 2) * A158388 n

end

end A181763.P8115251468217060136

namespace A181763

/-- `A061037(n+2)*A061037(n+2)*A158388(n)` -/
def P8115251468217060136.Spec : Prop :=
  ∀ n, P8115251468217060136.a n = A181763 (n + 2)

end A181763

/-! ## A181763.P10942794717218181756

`A061037(n+2)*A171621(n+2)/A010121(n)`
-/

namespace A181763.P10942794717218181756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061037 (n + 2) * A171621 (n + 2) : ℚ) / (A010121 n : ℚ)

end

end A181763.P10942794717218181756

namespace A181763

/-- `A061037(n+2)*A171621(n+2)/A010121(n)` -/
def P10942794717218181756.Spec : Prop :=
  ∀ n, P10942794717218181756.a n = (A181763 (n + 2) : ℚ)

end A181763

/-! ## A181763.P4678183105190280073

`A061037(A020639(2*(n+1))+n)*A061037(n+2)`
-/

namespace A181763.P4678183105190280073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (A020639 (2 * (n + 1)) + (n : ℤ)).toNat * A061037 (n + 2)

end

end A181763.P4678183105190280073

namespace A181763

/-- `A061037(A020639(2*(n+1))+n)*A061037(n+2)` -/
def P4678183105190280073.Spec : Prop :=
  ∀ n, P4678183105190280073.a n = A181763 (n + 2)

end A181763

/-! ## A181763.P9366863437713028094

`(A377851(n+4)+A181318(n))*A181318(n)`
-/

namespace A181763.P9366863437713028094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A377851 (n + 4) + A181318 n) * A181318 n

end

end A181763.P9366863437713028094

namespace A181763

/-- `(A377851(n+4)+A181318(n))*A181318(n)` -/
def P9366863437713028094.Spec : Prop :=
  ∀ n, P9366863437713028094.a n = A181763 (n + 2)

end A181763

/-! ## A181763.P14466067012943199941

`(3-∑[A185688(n+3)])²`
-/

namespace A181763.P14466067012943199941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185688 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A181763.P14466067012943199941

namespace A181763

/-- `(3-∑[A185688(n+3)])²` -/
def P14466067012943199941.Spec : Prop :=
  ∀ n, P14466067012943199941.a n = A181763 (n + 2)

end A181763

/-! ## A181763.P5593375703499032455

`A181318(n+4)*A181318(n)`
-/

namespace A181763.P5593375703499032455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181318 (n + 4) * A181318 n

end

end A181763.P5593375703499032455

namespace A181763

/-- `A181318(n+4)*A181318(n)` -/
def P5593375703499032455.Spec : Prop :=
  ∀ n, P5593375703499032455.a n = A181763 (n + 2)

end A181763

/-!
# A181764: Numbers n such that n!+1 is a product of two distinct prime numbers.

The programs for A181764, there is no canonical definition to state claims against.
-/

/-! ## A181764.P16359648381166265364

`eq[4, A064144(n+1)]+1`
-/

namespace A181764.P16359648381166265364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064144 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A181764.P16359648381166265364

/-! ## A181764.P3848216855998359883

`A078778(n+4)-floor(acot(n))`
-/

namespace A181764.P3848216855998359883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078778 (n + 4) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A181764.P3848216855998359883

/-! ## A181764.P1633558306184385537

`A078778(ceil(sqrt(∑[2*n]))+3)`
-/

namespace A181764.P1633558306184385537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078778 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 3).toNat

end

end A181764.P1633558306184385537

/-! ## A181764.P665954084597223650

`eq[4, A064144(A028310(n))]`
-/

namespace A181764.P665954084597223650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064144 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181764.P665954084597223650

/-! ## A181764.P12802266206896014529

`A020725(eq[4, A064144(n+1)])`
-/

namespace A181764.P12802266206896014529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181764.P12802266206896014529

/-!
# A181765: Number of subsets of the interval [-n .. +n] with sums > 0.

The programs for A181765, there is no canonical definition to state claims against.
-/

/-! ## A181765.P12800321372020468843

`4^n-A047653(n)`
-/

namespace A181765.P12800321372020468843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A047653 n

end

end A181765.P12800321372020468843

/-! ## A181765.P11545145951026521024

`A000302(n)-A000980(n)/2`
-/

namespace A181765.P11545145951026521024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n : ℚ) - (A000980 n : ℚ) / 2

end

end A181765.P11545145951026521024

/-! ## A181765.P10724042920923639188

`A000302(n)-A133406(2*n+1)`
-/

namespace A181765.P10724042920923639188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A133406 (2 * n + 1)

end

end A181765.P10724042920923639188

/-! ## A181765.P6868161606096278129

`A000079(n)²-A133406(2*n+1)`
-/

namespace A181765.P6868161606096278129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - A133406 (2 * n + 1)

end

end A181765.P6868161606096278129

/-! ## A181765.P1821360458837809045

`A000079(2*n)-A133406(2*n+1)`
-/

namespace A181765.P1821360458837809045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) - A133406 (2 * n + 1)

end

end A181765.P1821360458837809045

/-! ## A181765.P9751630007333845630

`A011782(n+1)²-A133406(2*n+1)`
-/

namespace A181765.P9751630007333845630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) ^ 2 - A133406 (2 * n + 1)

end

end A181765.P9751630007333845630

/-! ## A181765.P14578427790043635537

`A011782(2*n+1)-A133406(2*n+1)`
-/

namespace A181765.P14578427790043635537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 1) - A133406 (2 * n + 1)

end

end A181765.P14578427790043635537

/-! ## A181765.P4012164732596508407

`A000302(n)+A000980(n)/2*A134824(2*(n+2))`
-/

namespace A181765.P4012164732596508407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n : ℚ) + (A000980 n : ℚ) / 2 * (A134824 (2 * (n + 2)) : ℚ)

end

end A181765.P4012164732596508407

/-! ## A181765.P13625043013866292993

`(A004171(n)-A000980(n))/2`
-/

namespace A181765.P13625043013866292993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004171 n - A000980 n : ℚ) / 2

end

end A181765.P13625043013866292993

/-! ## A181765.P15278758368151223655

`A004171(n)-(A047653(n)+A000302(n))`
-/

namespace A181765.P15278758368151223655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n - (A047653 n + A000302 n)

end

end A181765.P15278758368151223655

/-! ## A181765.P12948202213167660922

`A155701(n+1)-(A155701(n)+A047653(n))`
-/

namespace A181765.P12948202213167660922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155701 (n + 1) - (A155701 n + A047653 n)

end

end A181765.P12948202213167660922

/-! ## A181765.P11403400623922555404

`2*A000079(n)²-A222855(2*n+1)`
-/

namespace A181765.P11403400623922555404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 - A222855 (2 * n + 1)

end

end A181765.P11403400623922555404

/-! ## A181765.P14689878828795052789

`A000079(n)²-A222955(2*n+1)/2`
-/

namespace A181765.P14689878828795052789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 : ℚ) - (A222955 (2 * n + 1) : ℚ) / 2

end

end A181765.P14689878828795052789

/-! ## A181765.P2953124101892032625

`A000079(2*n+1)-A222855(2*n+1)`
-/

namespace A181765.P2953124101892032625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - A222855 (2 * n + 1)

end

end A181765.P2953124101892032625

/-! ## A181765.P3369527520046636068

`A048578(2*n)-(A222855(2*n+1)+1)`
-/

namespace A181765.P3369527520046636068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (2 * n) - (A222855 (2 * n + 1) + 1)

end

end A181765.P3369527520046636068

/-! ## A181765.P14049526530009961163

`A171559(2*n+1)-A222855(2*n+1)`
-/

namespace A181765.P14049526530009961163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171559 (2 * n + 1) - A222855 (2 * n + 1)

end

end A181765.P14049526530009961163

/-! ## A181765.P16947352963462043032

`A222855(2*n+1)-A222955(2*n+1)`
-/

namespace A181765.P16947352963462043032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222855 (2 * n + 1) - A222955 (2 * n + 1)

end

end A181765.P16947352963462043032

/-! ## A181765.P5452212735436741549

`A000079(2*n)-A222955(2*n+1)/2`
-/

namespace A181765.P5452212735436741549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n) : ℚ) - (A222955 (2 * n + 1) : ℚ) / 2

end

end A181765.P5452212735436741549

/-! ## A181765.P11854649683936263359

`A011782(n+1)²-A222955(2*n+1)/2`
-/

namespace A181765.P11854649683936263359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) ^ 2 : ℚ) - (A222955 (2 * n + 1) : ℚ) / 2

end

end A181765.P11854649683936263359

/-! ## A181765.P4346232798740136082

`A011782(2*n+1)-A222955(2*n+1)/2`
-/

namespace A181765.P4346232798740136082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * n + 1) : ℚ) - (A222955 (2 * n + 1) : ℚ) / 2

end

end A181765.P4346232798740136082

/-!
# A181766: Numbers k such that 3*k + 7 is not prime.

The programs for A181766, the canonical program `A181766.P14155498567321335118` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181766 has offset 1).

The definition of A181766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181766.P753169578893504728

`comp[A089953(n+1)]`
-/

namespace A181766.P753169578893504728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A181766.P753169578893504728

namespace A181766

/-- `comp[A089953(n+1)]` -/
def P753169578893504728.Spec : Prop :=
  ∀ n, (P753169578893504728.a n : ℤ) = A181766 (n + 1)

end A181766

/-! ## A181766.P14155498567321335118

`lt[A156706(n+2), 1]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A181766

/-- `lt[A156706(n+2), 1]` -/
def P14155498567321335118.Spec : Prop :=
  ∀ n, (P14155498567321335118.a n : ℤ) = A181766 (n + 1)

theorem P14155498567321335118.correct : P14155498567321335118.Spec := by
  intro n
  simp only [A181766, Nat.add_sub_cancel]

end A181766

/-! ## A181766.P1919482886369695293

`lt[1, A245838(n+2)]`
-/

namespace A181766.P1919482886369695293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A181766.P1919482886369695293

namespace A181766

/-- `lt[1, A245838(n+2)]` -/
def P1919482886369695293.Spec : Prop :=
  ∀ n, (P1919482886369695293.a n : ℤ) = A181766 (n + 1)

end A181766

/-! ## A181766.P18075891367695963906

`comp[A034936(n+1)-1]`
-/

namespace A181766.P18075891367695963906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A181766.P18075891367695963906

namespace A181766

/-- `comp[A034936(n+1)-1]` -/
def P18075891367695963906.Spec : Prop :=
  ∀ n, (P18075891367695963906.a n : ℤ) = A181766 (n + 1)

end A181766

/-! ## A181766.P11845581269557233290

`comp[A024892(n+1)-2]`
-/

namespace A181766.P11845581269557233290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A181766.P11845581269557233290

namespace A181766

/-- `comp[A024892(n+1)-2]` -/
def P11845581269557233290.Spec : Prop :=
  ∀ n, (P11845581269557233290.a n : ℤ) = A181766 (n + 1)

end A181766

/-! ## A181766.P16249328934031701957

`comp[2*A153218(n+1)]`
-/

namespace A181766.P16249328934031701957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A181766.P16249328934031701957

namespace A181766

/-- `comp[2*A153218(n+1)]` -/
def P16249328934031701957.Spec : Prop :=
  ∀ n, (P16249328934031701957.a n : ℤ) = A181766 (n + 1)

end A181766

/-! ## A181766.P7886543461499679642

`lt[1, A001222(3*n+7)]`
-/

namespace A181766.P7886543461499679642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A181766.P7886543461499679642

namespace A181766

/-- `lt[1, A001222(3*n+7)]` -/
def P7886543461499679642.Spec : Prop :=
  ∀ n, (P7886543461499679642.a n : ℤ) = A181766 (n + 1)

end A181766

/-! ## A181766.P17089829667482683157

`lt[2, A000005(3*n+7)]`
-/

namespace A181766.P17089829667482683157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A181766.P17089829667482683157

namespace A181766

/-- `lt[2, A000005(3*n+7)]` -/
def P17089829667482683157.Spec : Prop :=
  ∀ n, (P17089829667482683157.a n : ℤ) = A181766 (n + 1)

end A181766

/-! ## A181766.P6192417054244189054

`comp[2*comp[A153219(n+1)]]`
-/

namespace A181766.P6192417054244189054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153219 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A181766.P6192417054244189054

namespace A181766

/-- `comp[2*comp[A153219(n+1)]]` -/
def P6192417054244189054.Spec : Prop :=
  ∀ n, (P6192417054244189054.a n : ℤ) = A181766 (n + 1)

end A181766

/-! ## A181766.P8822942060607538564

`comp[2*(A024899(n+1)-1)]`
-/

namespace A181766.P8822942060607538564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024899 (n + 1) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A181766.P8822942060607538564

namespace A181766

/-- `comp[2*(A024899(n+1)-1)]` -/
def P8822942060607538564.Spec : Prop :=
  ∀ n, (P8822942060607538564.a n : ℤ) = A181766 (n + 1)

end A181766

/-! ## A181766.P18133790191082218076

`eq[1, A323162(3*n+1)]-2`
-/

namespace A181766.P18133790191082218076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2

end

end A181766.P18133790191082218076

namespace A181766

/-- `eq[1, A323162(3*n+1)]-2` -/
def P18133790191082218076.Spec : Prop :=
  ∀ n, P18133790191082218076.a n = A181766 (n + 1)

end A181766

/-! ## A181766.P658892669716203091

`lt[4, A319347(3*n+1)]-2`
-/

namespace A181766.P658892669716203091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319347 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 2

end

end A181766.P658892669716203091

namespace A181766

/-- `lt[4, A319347(3*n+1)]-2` -/
def P658892669716203091.Spec : Prop :=
  ∀ n, P658892669716203091.a n = A181766 (n + 1)

end A181766

/-! ## A181766.P7405522913307507571

`lt[A020639(3*n+1), n]-2`
-/

namespace A181766.P7405522913307507571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 2

end

end A181766.P7405522913307507571

namespace A181766

/-- `lt[A020639(3*n+1), n]-2` -/
def P7405522913307507571.Spec : Prop :=
  ∀ n, P7405522913307507571.a n = A181766 (n + 1)

end A181766

/-! ## A181766.P8333029769903714449

`A153282(n+2)-1`
-/

namespace A181766.P8333029769903714449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153282 (n + 2) - 1

end

end A181766.P8333029769903714449

namespace A181766

/-- `A153282(n+2)-1` -/
def P8333029769903714449.Spec : Prop :=
  ∀ n, P8333029769903714449.a n = A181766 (n + 1)

end A181766

/-! ## A181766.P3818757372156760570

`A153309(n+3)-2`
-/

namespace A181766.P3818757372156760570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153309 (n + 3) - 2

end

end A181766.P3818757372156760570

namespace A181766

/-- `A153309(n+3)-2` -/
def P3818757372156760570.Spec : Prop :=
  ∀ n, P3818757372156760570.a n = A181766 (n + 1)

end A181766

/-! ## A181766.P3827194292804535951

`A153184(n+3)-3`
-/

namespace A181766.P3827194292804535951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153184 (n + 3) - 3

end

end A181766.P3827194292804535951

namespace A181766

/-- `A153184(n+3)-3` -/
def P3827194292804535951.Spec : Prop :=
  ∀ n, P3827194292804535951.a n = A181766 (n + 1)

end A181766

/-! ## A181766.P4607993641136150829

`A023443(A153282(n+2))`
-/

namespace A181766.P4607993641136150829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A153282 (n + 2)).toNat

end

end A181766.P4607993641136150829

namespace A181766

/-- `A023443(A153282(n+2))` -/
def P4607993641136150829.Spec : Prop :=
  ∀ n, P4607993641136150829.a n = A181766 (n + 1)

end A181766

/-! ## A181766.P17898425735415657070

`eq[1, A055976(3*n+1)]-2`
-/

namespace A181766.P17898425735415657070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055976 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2

end

end A181766.P17898425735415657070

namespace A181766

/-- `eq[1, A055976(3*n+1)]-2` -/
def P17898425735415657070.Spec : Prop :=
  ∀ n, P17898425735415657070.a n = A181766 (n + 1)

end A181766

/-! ## A181766.P10184233958031656576

`eq[1, A245509(3*n+2)]-1`
-/

namespace A181766.P10184233958031656576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245509 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A181766.P10184233958031656576

namespace A181766

/-- `eq[1, A245509(3*n+2)]-1` -/
def P10184233958031656576.Spec : Prop :=
  ∀ n, P10184233958031656576.a n = A181766 (n + 1)

end A181766

/-! ## A181766.P14697945291456322652

`eq[2, A095248(3*n+1)]-2`
-/

namespace A181766.P14697945291456322652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095248 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2

end

end A181766.P14697945291456322652

namespace A181766

/-- `eq[2, A095248(3*n+1)]-2` -/
def P14697945291456322652.Spec : Prop :=
  ∀ n, P14697945291456322652.a n = A181766 (n + 1)

end A181766

/-!
# A181767: a(n) = a(n-7) XOR a(n-5) XOR a(n-4) XOR a(n-3) XOR a(n-2) XOR a(n-1) with initial seven terms 95, 111, 119, 123, 125, 62, and 31.

The programs for A181767, there is no canonical definition to state claims against.
-/

/-! ## A181767.P11438719069011831970

`eq[63, A322018(n)]+63`
-/

namespace A181767.P11438719069011831970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 63

end

end A181767.P11438719069011831970

/-!
# A181768: G.f.: (1/2)*(3 - sqrt((1-5*x)/(1-x))).

The programs for A181768, the canonical program `A181768.P15302864392847253434` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181768 has offset 0).

The definition of A181768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181768.P10878628059475193144

`lcm(2, A360322(n))/2`
-/

namespace A181768.P10878628059475193144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A360322 n) : ℚ) / 2

end

end A181768.P10878628059475193144

namespace A181768

/-- `lcm(2, A360322(n))/2` -/
def P10878628059475193144.Spec : Prop :=
  ∀ n, P10878628059475193144.a n = (A181768 n : ℚ)

end A181768

/-! ## A181768.P14492658351436870771

`A007317(floor(acot(n)+n))`
-/

namespace A181768.P14492658351436870771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A181768.P14492658351436870771

namespace A181768

/-- `A007317(floor(acot(n)+n))` -/
def P14492658351436870771.Spec : Prop :=
  ∀ n, P14492658351436870771.a n = A181768 n

end A181768

/-! ## A181768.P18132524042551240235

`A007317(or(n, floor(acot(n))))`
-/

namespace A181768.P18132524042551240235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A181768.P18132524042551240235

namespace A181768

/-- `A007317(or(n, floor(acot(n))))` -/
def P18132524042551240235.Spec : Prop :=
  ∀ n, P18132524042551240235.a n = A181768 n

end A181768

/-! ## A181768.P99601145099022657

`A007317(xor(n, floor(acot(n))))`
-/

namespace A181768.P99601145099022657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A181768.P99601145099022657

namespace A181768

/-- `A007317(xor(n, floor(acot(n))))` -/
def P99601145099022657.Spec : Prop :=
  ∀ n, P99601145099022657.a n = A181768 n

end A181768

/-! ## A181768.P15302864392847253434

`A055879(abs(1-2*n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A181768

/-- `A055879(abs(1-2*n))` -/
def P15302864392847253434.Spec : Prop :=
  ∀ n, P15302864392847253434.a n = A181768 n

theorem P15302864392847253434.correct : P15302864392847253434.Spec := by
  intro n
  simp only [A181768]

end A181768

/-! ## A181768.P10560540616625228500

`A007317(round(sqrt(n²+1)))`
-/

namespace A181768.P10560540616625228500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A181768.P10560540616625228500

namespace A181768

/-- `A007317(round(sqrt(n²+1)))` -/
def P10560540616625228500.Spec : Prop :=
  ∀ n, P10560540616625228500.a n = A181768 n

end A181768

/-! ## A181768.P17890516280932411745

`A025238(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A181768.P17890516280932411745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025238 n + a (n - 1)

end

end A181768.P17890516280932411745

namespace A181768

/-- `A025238(n)+a(n-1)` -/
def P17890516280932411745.Spec : Prop :=
  ∀ n, P17890516280932411745.a n = A181768 n

end A181768

/-! ## A181768.P16161940156963024122

`a(n-1)+A002212(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A181768.P16161940156963024122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + A002212 (n - 1)

end

end A181768.P16161940156963024122

namespace A181768

/-- `a(n-1)+A002212(n-1)` -/
def P16161940156963024122.Spec : Prop :=
  ∀ n, P16161940156963024122.a n = A181768 n

end A181768

/-! ## A181768.P8170975023284258877

`gcd(n, n+1)*A055879(A004277(n))`
-/

namespace A181768.P8170975023284258877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A055879 (A004277 n).toNat

end

end A181768.P8170975023284258877

namespace A181768

/-- `gcd(n, n+1)*A055879(A004277(n))` -/
def P8170975023284258877.Spec : Prop :=
  ∀ n, P8170975023284258877.a n = A181768 n

end A181768

/-! ## A181768.P17387537410754340786

`A002212(n)-A039919(A004277(n)-n)`
-/

namespace A181768.P17387537410754340786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n - A039919 (A004277 n - (n : ℤ)).toNat

end

end A181768.P17387537410754340786

namespace A181768

/-- `A002212(n)-A039919(A004277(n)-n)` -/
def P17387537410754340786.Spec : Prop :=
  ∀ n, P17387537410754340786.a n = A181768 n

end A181768

/-! ## A181768.P14344490231243567418

`(∑{d}[n+1, #]+1-A000203(n+1))*A055879(A004277(n))`
-/

namespace A181768.P14344490231243567418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d + 1 : ℕ) : ℤ) - A000203 (n + 1)) * A055879 (A004277 n).toNat

end

end A181768.P14344490231243567418

namespace A181768

/-- `(∑{d}[n+1, #]+1-A000203(n+1))*A055879(A004277(n))` -/
def P14344490231243567418.Spec : Prop :=
  ∀ n, P14344490231243567418.a n = A181768 n

end A181768

/-! ## A181768.P3304853998162358716

`A001221(A194658(n+1))*A055879(A004277(n))`
-/

namespace A181768.P3304853998162358716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A194658 (n + 1)).toNat * A055879 (A004277 n).toNat

end

end A181768.P3304853998162358716

namespace A181768

/-- `A001221(A194658(n+1))*A055879(A004277(n))` -/
def P3304853998162358716.Spec : Prop :=
  ∀ n, P3304853998162358716.a n = A181768 n

end A181768

/-! ## A181768.P15326054022123564769

`A045868(n)-A039919(n+1)`
-/

namespace A181768.P15326054022123564769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n - A039919 (n + 1)

end

end A181768.P15326054022123564769

namespace A181768

/-- `A045868(n)-A039919(n+1)` -/
def P15326054022123564769.Spec : Prop :=
  ∀ n, P15326054022123564769.a n = A181768 n

end A181768

/-! ## A181768.P16653740457989271745

`A007317(n+1)-A122737(n+1)/2`
-/

namespace A181768.P16653740457989271745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007317 (n + 1) : ℚ) - (A122737 (n + 1) : ℚ) / 2

end

end A181768.P16653740457989271745

namespace A181768

/-- `A007317(n+1)-A122737(n+1)/2` -/
def P16653740457989271745.Spec : Prop :=
  ∀ n, P16653740457989271745.a n = (A181768 n : ℚ)

end A181768

/-! ## A181768.P9756873973520224498

`A045868(n)+∑[A002212(n)-A045868(n)]`
-/

namespace A181768.P9756873973520224498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n - A045868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181768.P9756873973520224498

namespace A181768

/-- `A045868(n)+∑[A002212(n)-A045868(n)]` -/
def P9756873973520224498.Spec : Prop :=
  ∀ n, P9756873973520224498.a n = A181768 n

end A181768

/-! ## A181768.P5766469508317548627

`A007317(n+1)+A045868(n)-∑[A045868(n)]`
-/

namespace A181768.P5766469508317548627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1) + (A045868 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181768.P5766469508317548627

namespace A181768

/-- `A007317(n+1)+A045868(n)-∑[A045868(n)]` -/
def P5766469508317548627.Spec : Prop :=
  ∀ n, P5766469508317548627.a n = A181768 n

end A181768

/-! ## A181768.P15546836386941547211

`A007317(n+1)+A046697(n+1)-A044045(n+1)`
-/

namespace A181768.P15546836386941547211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1) + (A046697 (n + 1) - A044045 (n + 1))

end

end A181768.P15546836386941547211

namespace A181768

/-- `A007317(n+1)+A046697(n+1)-A044045(n+1)` -/
def P15546836386941547211.Spec : Prop :=
  ∀ n, P15546836386941547211.a n = A181768 n

end A181768

/-! ## A181768.P13904219032604752875

`A007317(n+1)+A046697(n+1)-A038392(n+2)`
-/

namespace A181768.P13904219032604752875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1) + (A046697 (n + 1) - A038392 (n + 2))

end

end A181768.P13904219032604752875

namespace A181768

/-- `A007317(n+1)+A046697(n+1)-A038392(n+2)` -/
def P13904219032604752875.Spec : Prop :=
  ∀ n, P13904219032604752875.a n = A181768 n

end A181768

/-! ## A181768.P15957392700246538851

`A007317(n+1)+A024311(n+1)-A030529(n+3)`
-/

namespace A181768.P15957392700246538851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1) + (A024311 (n + 1) - A030529 (n + 3))

end

end A181768.P15957392700246538851

namespace A181768

/-- `A007317(n+1)+A024311(n+1)-A030529(n+3)` -/
def P15957392700246538851.Spec : Prop :=
  ∀ n, P15957392700246538851.a n = A181768 n

end A181768

/-! ## A181768.P9125043285333800036

`A104259(C(n, 2))`
-/

namespace A181768.P9125043285333800036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104259 (Nat.choose n 2)

end

end A181768.P9125043285333800036

namespace A181768

/-- `A104259(C(n, 2))` -/
def P9125043285333800036.Spec : Prop :=
  ∀ n, P9125043285333800036.a n = A181768 n

end A181768

/-!
# A181769: Number of isomorphism classes of quandles of order n.

The programs for A181769, there is no canonical definition to state claims against.
-/

/-! ## A181769.P9501086332715753769

`A317296(A361276(n))`
-/

namespace A181769.P9501086332715753769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317296 (A361276 n).toNat

end

end A181769.P9501086332715753769

/-! ## A181769.P5358217785027292988

`A317296(A080838(n+1)+1)`
-/

namespace A181769.P5358217785027292988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317296 (A080838 (n + 1) + 1).toNat

end

end A181769.P5358217785027292988

/-! ## A181769.P6293271546114117097

`A076189(A000009(n))+A058122(n)`
-/

namespace A181769.P6293271546114117097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076189 (A000009 n).toNat + A058122 n

end

end A181769.P6293271546114117097

/-! ## A181769.P2871489928438992004

`A076189(A000009(n))+A030530(A048193(n+1))-n`
-/

namespace A181769.P2871489928438992004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076189 (A000009 n).toNat + (A030530 (A048193 (n + 1)).toNat - (n : ℤ))

end

end A181769.P2871489928438992004

/-!
# A181770: Number of isomorphism classes of racks of order n.

The programs for A181770, there is no canonical definition to state claims against.
-/

/-! ## A181770.P10945155566203678540

`A008612(A045499(n))+A000041(n)`
-/

namespace A181770.P10945155566203678540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A045499 n).toNat + A000041 n

end

end A181770.P10945155566203678540

/-! ## A181770.P218698619269139870

`A135661(A062569(n))+A000112(n)`
-/

namespace A181770.P218698619269139870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A062569 n).toNat + A000112 n

end

end A181770.P218698619269139870

/-! ## A181770.P1775611658898745540

`A289207(n)+A159477(A049774(n))`
-/

namespace A181770.P1775611658898745540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n + A159477 (A049774 n).toNat

end

end A181770.P1775611658898745540

/-!
# A181771: Number of isomorphism classes of connected quandles of order n.

The programs for A181771, there is no canonical definition to state claims against.
-/

/-! ## A181771.P9382599821164167110

`A279372(A046682(n))+A226172(n+1)`
-/

namespace A181771.P9382599821164167110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279372 (A046682 n).toNat + A226172 (n + 1)

end

end A181771.P9382599821164167110

/-! ## A181771.P9849527976500556516

`A226172(n+1)+A102679(A075500(n+1))`
-/

namespace A181771.P9849527976500556516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226172 (n + 1) + A102679 (A075500 (n + 1)).toNat

end

end A181771.P9849527976500556516

/-! ## A181771.P18441576407136654425

`or(A124761(A124753(n)), A226172(n+1))`
-/

namespace A181771.P18441576407136654425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124761 (A124753 n).toNat) (A226172 (n + 1))

end

end A181771.P18441576407136654425

/-!
# A181773: Molecular topological indices of the cocktail party graphs.

The programs for A181773, the canonical program `A181773.P17003731437091766161` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181773 has offset 1).

The definition of A181773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181773.P17003731437091766161

`8*n*(n+1)*(2*(n+1)-1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181773

/-- `8*n*(n+1)*(2*(n+1)-1)` -/
def P17003731437091766161.Spec : Prop :=
  ∀ n, P17003731437091766161.a n = A181773 (n + 1)

theorem P17003731437091766161.correct : P17003731437091766161.Spec := by
  intro n
  simp only [A181773, Nat.add_sub_cancel]

end A181773

/-! ## A181773.P15730269880185325302

`Δ[8*C(n², 2)]`
-/

namespace A181773.P15730269880185325302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (n ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A181773.P15730269880185325302

namespace A181773

/-- `Δ[8*C(n², 2)]` -/
def P15730269880185325302.Spec : Prop :=
  ∀ n, P15730269880185325302.a n = A181773 (n + 1)

end A181773

/-! ## A181773.P15737269213422325424

`lcm(2, ∑[48*n^2])`
-/

namespace A181773.P15737269213422325424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181773.P15737269213422325424

namespace A181773

/-- `lcm(2, ∑[48*n^2])` -/
def P15737269213422325424.Spec : Prop :=
  ∀ n, (P15737269213422325424.a n : ℤ) = A181773 (n + 1)

end A181773

/-! ## A181773.P15082079330996034956

`Δ[or(1, -(2*n²))²]`
-/

namespace A181773.P15082079330996034956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(2 * n ^ 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181773.P15082079330996034956

namespace A181773

/-- `Δ[or(1, -(2*n²))²]` -/
def P15082079330996034956.Spec : Prop :=
  ∀ n, P15082079330996034956.a n = A181773 (n + 1)

end A181773

/-! ## A181773.P1480311928369644235

`Δ[xor(1, 2*(n²-1))²]`
-/

namespace A181773.P1480311928369644235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ((n ^ 2 : ℤ) - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181773.P1480311928369644235

namespace A181773

/-- `Δ[xor(1, 2*(n²-1))²]` -/
def P1480311928369644235.Spec : Prop :=
  ∀ n, P1480311928369644235.a n = A181773 (n + 1)

end A181773

/-! ## A181773.P12895217478796072384

`a(n-1)+48*n²` with `a(0)=0`
-/

namespace A181773.P12895217478796072384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 48 * n ^ 2

end

end A181773.P12895217478796072384

namespace A181773

/-- `a(n-1)+48*n²` -/
def P12895217478796072384.Spec : Prop :=
  ∀ n, (P12895217478796072384.a n : ℤ) = A181773 (n + 1)

theorem P12895217478796072384.correct : P12895217478796072384.Spec := by
  intro n
  induction n with
  | zero => simp [A181773, A181773.P12895217478796072384.a, A181773.P17003731437091766161.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A181773, Nat.add_sub_cancel, A181773.P12895217478796072384.a, A181773.P17003731437091766161.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A181773

/-! ## A181773.P10890813583368516504

`Δ[lcm(4*(n²-1), (2*n)²)]`
-/

namespace A181773.P10890813583368516504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 * ((n ^ 2 : ℤ) - 1)) ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A181773.P10890813583368516504

namespace A181773

/-- `Δ[lcm(4*(n²-1), (2*n)²)]` -/
def P10890813583368516504.Spec : Prop :=
  ∀ n, P10890813583368516504.a n = A181773 (n + 1)

end A181773

/-!
# A181774: First differences of A181103.

The programs for A181774, there is no canonical definition to state claims against.
-/

/-! ## A181774.P17978492145302637406

`A181103(n+2)-A181103(n+1)`
-/

namespace A181774.P17978492145302637406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181103 (n + 2) - A181103 (n + 1)

end

end A181774.P17978492145302637406

/-! ## A181774.P921514252711034689

`Δ[A181103(n+1)]`
-/

namespace A181774.P921514252711034689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181774.P921514252711034689

/-! ## A181774.P1637602142060170449

`abs(Δ[A181103(1-(n-2*n))])`
-/

namespace A181774.P1637602142060170449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181103 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A181774.P1637602142060170449

/-! ## A181774.P7652378156947285805

`Δ[record[A181103(A331300(n))]]`
-/

namespace A181774.P7652378156947285805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181103 (A331300 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181774.P7652378156947285805

/-! ## A181774.P14782184415231393489

`Δ[record[A181103(A286543(n))]]`
-/

namespace A181774.P14782184415231393489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181103 (A286543 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181774.P14782184415231393489

/-!
# A181775: Numbers k such that the decimal digits of k*(k+1) are a permutation of those of k*(k-1).

The programs for A181775, there is no canonical definition to state claims against.
-/

/-! ## A181775.P17895741559338301174

`ceil(sqrt(A337784(n+1)))`
-/

namespace A181775.P17895741559338301174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A337784 (n + 1) : ℝ)⌉

end

end A181775.P17895741559338301174

/-! ## A181775.P10083155792689163046

`round(sqrt(A337784(n+1)+A000132(n)))`
-/

namespace A181775.P10083155792689163046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A337784 (n + 1) + A000132 n : ℝ))

end

end A181775.P10083155792689163046

/-! ## A181775.P5274857154090505218

`round(sqrt(A337784(n+1)+A001844(n)))`
-/

namespace A181775.P5274857154090505218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A337784 (n + 1) + A001844 n : ℝ))

end

end A181775.P5274857154090505218

/-! ## A181775.P8267708783528091953

`round(sqrt(A337784(n+1)+A007318(n)))`
-/

namespace A181775.P8267708783528091953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A337784 (n + 1) + A007318 n : ℝ))

end

end A181775.P8267708783528091953

/-! ## A181775.P5407696856983844806

`round(sqrt(A337784(n+1)+A081277(n)))`
-/

namespace A181775.P5407696856983844806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A337784 (n + 1) + A081277 n : ℝ))

end

end A181775.P5407696856983844806

/-!
# A181776: a(n) = lambda(lambda(n)), where lambda(n) is the Carmichael lambda function (A002322).

The programs for A181776, there is no canonical definition to state claims against.
-/

/-! ## A181776.P6382793752177925682

`A002322(A002322(n+1))`
-/

namespace A181776.P6382793752177925682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A002322 (n + 1)).toNat

end

end A181776.P6382793752177925682

/-! ## A181776.P677833247497948024

`A263027(A263027(n+1)-1)-1`
-/

namespace A181776.P677833247497948024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263027 (A263027 (n + 1) - 1).toNat - 1

end

end A181776.P677833247497948024

/-! ## A181776.P7956270049053280330

`A206941(n+1)-A104194(1-A277127(n+1)+n)`
-/

namespace A181776.P7956270049053280330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206941 (n + 1) - A104194 (1 - A277127 (n + 1) + (n : ℤ)).toNat

end

end A181776.P7956270049053280330

/-! ## A181776.P2775170376594285090

`n+1-(A277127(n+1-A277127(n+1))+A277127(n+1))`
-/

namespace A181776.P2775170376594285090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A277127 ((n + 1 : ℤ) - A277127 (n + 1)).toNat + A277127 (n + 1))

end

end A181776.P2775170376594285090

/-! ## A181776.P6445559614470574744

`A206941(n+1)-A104194(A039649(n+1)-(A104194(n+1)+1))`
-/

namespace A181776.P6445559614470574744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206941 (n + 1) - A104194 (A039649 (n + 1) - (A104194 (n + 1) + 1)).toNat

end

end A181776.P6445559614470574744

/-! ## A181776.P1975360934366314351

`A263027(A233583(A263027(n+1)))-1`
-/

namespace A181776.P1975360934366314351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263027 (A233583 (A263027 (n + 1)).toNat).toNat - 1

end

end A181776.P1975360934366314351

/-! ## A181776.P18015892143915141627

`A130734(A263027(A263027(n+1)-1))`
-/

namespace A181776.P18015892143915141627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A263027 (A263027 (n + 1) - 1).toNat).toNat

end

end A181776.P18015892143915141627

/-!
# A181777: Number of steps to reach 1 in '3x+1' (or Collatz) problem starting with the n-th Mersenne prime.

The programs for A181777, there is no canonical definition to state claims against.
-/

/-! ## A181777.P12431473313448416799

`A193688(A000043(n+1))`
-/

namespace A181777.P12431473313448416799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193688 (A000043 (n + 1)).toNat

end

end A181777.P12431473313448416799

/-! ## A181777.P5085790239966786595

`A193688(eq[1, A126717(n)])`
-/

namespace A181777.P5085790239966786595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181777.P5085790239966786595

/-! ## A181777.P9277100813272723727

`A193688(lt[A126717(n), 2])`
-/

namespace A181777.P9277100813272723727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193688 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A181777.P9277100813272723727

/-! ## A181777.P9523179068369575472

`A193688(p?[A072226(n+1)])`
-/

namespace A181777.P9523179068369575472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193688 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181777.P9523179068369575472

/-! ## A181777.P10066437617152966163

`A193688(p?[A161508(n+1)])`
-/

namespace A181777.P10066437617152966163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193688 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181777.P10066437617152966163

/-!
# A181779: Continued fraction for phi^phi.

The programs for A181779, there is no canonical definition to state claims against.
-/

/-! ## A181779.P11135605237501729328

`A092134(n)+char[A004009(n+1)]`
-/

namespace A181779.P11135605237501729328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004009 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092134 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181779.P11135605237501729328

/-! ## A181779.P14756664895901553466

`A092134(n)+char[A153371(n+3)]`
-/

namespace A181779.P14756664895901553466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153371 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092134 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181779.P14756664895901553466

/-! ## A181779.P12345212038880474645

`A092134(A322437(2*n+5)+n)`
-/

namespace A181779.P12345212038880474645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092134 (A322437 (2 * n + 5) + (n : ℤ)).toNat

end

end A181779.P12345212038880474645

/-! ## A181779.P14668550208621630195

`A092134(n)+char[A054460(3*(n+1))]`
-/

namespace A181779.P14668550208621630195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054460 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092134 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181779.P14668550208621630195

/-! ## A181779.P11304174251954506188

`A333321(A129402(n))+A092134(n)`
-/

namespace A181779.P11304174251954506188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333321 (A129402 n).toNat + A092134 n

end

end A181779.P11304174251954506188

/-! ## A181779.P247436906176434719

`A278923(A274196(n))+A092134(n)`
-/

namespace A181779.P247436906176434719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278923 (A274196 n).toNat + A092134 n

end

end A181779.P247436906176434719

/-! ## A181779.P4282024191385990500

`A092134(n)+A003415(A320656(n+1))`
-/

namespace A181779.P4282024191385990500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092134 n + A003415 (A320656 (n + 1)).toNat

end

end A181779.P4282024191385990500

/-! ## A181779.P10254083382621983202

`A275935(A317241(n+1))+A092134(n)`
-/

namespace A181779.P10254083382621983202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275935 (A317241 (n + 1)).toNat + A092134 n

end

end A181779.P10254083382621983202

/-! ## A181779.P2814739498667497939

`A362072(A320656(n+2))+A092134(n)`
-/

namespace A181779.P2814739498667497939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362072 (A320656 (n + 2)).toNat + A092134 n

end

end A181779.P2814739498667497939

/-! ## A181779.P15984821929809614310

`A092134(n)*A109673(A100714(n+1))`
-/

namespace A181779.P15984821929809614310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092134 n * A109673 (A100714 (n + 1)).toNat

end

end A181779.P15984821929809614310

/-! ## A181779.P2543059845297753134

`A092134(n)/A059317(A334368(n+1))`
-/

namespace A181779.P2543059845297753134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092134 n : ℚ) / (A059317 (A334368 (n + 1)).toNat : ℚ)

end

end A181779.P2543059845297753134

/-! ## A181779.P12314147230732791420

`A092134(n)%A000079(A266146(n+1))`
-/

namespace A181779.P12314147230732791420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092134 n) (A000079 (A266146 (n + 1)).toNat)

end

end A181779.P12314147230732791420

/-! ## A181779.P15953108304026351761

`gcd(A092134(n), A335510(A124741(n+1)))`
-/

namespace A181779.P15953108304026351761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092134 n) (A335510 (A124741 (n + 1)).toNat)

end

end A181779.P15953108304026351761

/-! ## A181779.P15976747141316800209

`A092134(n)*A187188(A050377(3*(n+1)))`
-/

namespace A181779.P15976747141316800209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092134 n * A187188 (A050377 (3 * (n + 1))).toNat

end

end A181779.P15976747141316800209

/-! ## A181779.P13897089601959314634

`A092134(n)*A269939(A035219(3*n+5))`
-/

namespace A181779.P13897089601959314634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092134 n * A269939 (A035219 (3 * n + 5)).toNat

end

end A181779.P13897089601959314634

/-! ## A181779.P8268987018419181652

`A092134(n)*A130296(A346868(3*n+5))`
-/

namespace A181779.P8268987018419181652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092134 n * A130296 (A346868 (3 * n + 5)).toNat

end

end A181779.P8268987018419181652

/-!
# A181780: Numbers n which are Fermat pseudoprimes to some base b, 2 <= b <= n-2.

The programs for A181780, the canonical program `A181780.P1093225155761129335` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181780 has offset 1).

The definition of A181780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181780.P1093225155761129335

`∩[A002808(n+1), A280199(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A181780

/-- `∩[A002808(n+1), A280199(n+1)]` -/
def P1093225155761129335.Spec : Prop :=
  ∀ n, (P1093225155761129335.a n : ℤ) = A181780 (n + 1)

theorem P1093225155761129335.correct : P1093225155761129335.Spec := by
  intro n
  simp only [A181780, Nat.add_sub_cancel]

end A181780

/-! ## A181780.P9024589187260568716

`∩[A018252(n+1), A280199(n+1)]`
-/

namespace A181780.P9024589187260568716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181780.P9024589187260568716

namespace A181780

/-- `∩[A018252(n+1), A280199(n+1)]` -/
def P9024589187260568716.Spec : Prop :=
  ∀ n, (P9024589187260568716.a n : ℤ) = A181780 (n + 1)

end A181780

/-! ## A181780.P16373757579795163703

`∩[A141468(n+1), A280199(n+1)]`
-/

namespace A181780.P16373757579795163703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181780.P16373757579795163703

namespace A181780

/-- `∩[A141468(n+1), A280199(n+1)]` -/
def P16373757579795163703.Spec : Prop :=
  ∀ n, (P16373757579795163703.a n : ℤ) = A181780 (n + 1)

end A181780

/-! ## A181780.P2989802761554289386

`∩[A264828(n+1), A280199(n+1)]`
-/

namespace A181780.P2989802761554289386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181780.P2989802761554289386

namespace A181780

/-- `∩[A264828(n+1), A280199(n+1)]` -/
def P2989802761554289386.Spec : Prop :=
  ∀ n, (P2989802761554289386.a n : ℤ) = A181780 (n + 1)

end A181780

/-! ## A181780.P9886978506368253821

`∩[A039769(n+1), A280199(n+1)]`
-/

namespace A181780.P9886978506368253821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181780.P9886978506368253821

namespace A181780

/-- `∩[A039769(n+1), A280199(n+1)]` -/
def P9886978506368253821.Spec : Prop :=
  ∀ n, (P9886978506368253821.a n : ℤ) = A181780 (n + 1)

end A181780

/-! ## A181780.P5878742357298183354

`filter[A280199(n+1), A005171(#)]`
-/

namespace A181780.P5878742357298183354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A181780.P5878742357298183354

namespace A181780

/-- `filter[A280199(n+1), A005171(#)]` -/
def P5878742357298183354.Spec : Prop :=
  ∀ n, P5878742357298183354.a n = A181780 (n + 1)

end A181780

/-! ## A181780.P6927089005964509874

`filter[A280199(n+1), A066247(#)]`
-/

namespace A181780.P6927089005964509874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A181780.P6927089005964509874

namespace A181780

/-- `filter[A280199(n+1), A066247(#)]` -/
def P6927089005964509874.Spec : Prop :=
  ∀ n, P6927089005964509874.a n = A181780 (n + 1)

end A181780

/-! ## A181780.P15312966787577695303

`filter[A280199(n+1), A202238(#)]`
-/

namespace A181780.P15312966787577695303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A181780.P15312966787577695303

namespace A181780

/-- `filter[A280199(n+1), A202238(#)]` -/
def P15312966787577695303.Spec : Prop :=
  ∀ n, P15312966787577695303.a n = A181780 (n + 1)

end A181780

/-! ## A181780.P15541748465949007754

`filter[A280199(n+1), A292438(#)]`
-/

namespace A181780.P15541748465949007754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A181780.P15541748465949007754

namespace A181780

/-- `filter[A280199(n+1), A292438(#)]` -/
def P15541748465949007754.Spec : Prop :=
  ∀ n, P15541748465949007754.a n = A181780 (n + 1)

end A181780

/-! ## A181780.P14886160146696499706

`filter[A280199(n+1), A323162(#)]`
-/

namespace A181780.P14886160146696499706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A181780.P14886160146696499706

namespace A181780

/-- `filter[A280199(n+1), A323162(#)]` -/
def P14886160146696499706.Spec : Prop :=
  ∀ n, P14886160146696499706.a n = A181780 (n + 1)

end A181780

/-! ## A181780.P16673726385717775259

`∩[A005381(n+1), A280199(n+1)]`
-/

namespace A181780.P16673726385717775259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181780.P16673726385717775259

namespace A181780

/-- `∩[A005381(n+1), A280199(n+1)]` -/
def P16673726385717775259.Spec : Prop :=
  ∀ n, (P16673726385717775259.a n : ℤ) = A181780 (n + 1)

end A181780

/-! ## A181780.P8033586162973030996

`∩[A138593(n+1), A280199(n+1)]`
-/

namespace A181780.P8033586162973030996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181780.P8033586162973030996

namespace A181780

/-- `∩[A138593(n+1), A280199(n+1)]` -/
def P8033586162973030996.Spec : Prop :=
  ∀ n, (P8033586162973030996.a n : ℤ) = A181780 (n + 1)

end A181780

/-! ## A181780.P2944411082630198684

`∩[A009188(n+1), A280199(n+1)]`
-/

namespace A181780.P2944411082630198684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181780.P2944411082630198684

namespace A181780

/-- `∩[A009188(n+1), A280199(n+1)]` -/
def P2944411082630198684.Spec : Prop :=
  ∀ n, (P2944411082630198684.a n : ℤ) = A181780 (n + 1)

end A181780

/-! ## A181780.P6505869492753253817

`∩[A164276(n+1), A280199(n+1)]`
-/

namespace A181780.P6505869492753253817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181780.P6505869492753253817

namespace A181780

/-- `∩[A164276(n+1), A280199(n+1)]` -/
def P6505869492753253817.Spec : Prop :=
  ∀ n, (P6505869492753253817.a n : ℤ) = A181780 (n + 1)

end A181780

/-! ## A181780.P11531672616826588250

`∩[A138592(n+1), A280199(n+1)]`
-/

namespace A181780.P11531672616826588250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181780.P11531672616826588250

namespace A181780

/-- `∩[A138592(n+1), A280199(n+1)]` -/
def P11531672616826588250.Spec : Prop :=
  ∀ n, (P11531672616826588250.a n : ℤ) = A181780 (n + 1)

end A181780

/-! ## A181780.P13657559480293755915

`∩[A176423(n+1), A280199(n+1)]`
-/

namespace A181780.P13657559480293755915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181780.P13657559480293755915

namespace A181780

/-- `∩[A176423(n+1), A280199(n+1)]` -/
def P13657559480293755915.Spec : Prop :=
  ∀ n, (P13657559480293755915.a n : ℤ) = A181780 (n + 1)

end A181780

/-! ## A181780.P16609946023052431803

`∩[A056653(n+1), A280199(n+1)]`
-/

namespace A181780.P16609946023052431803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181780.P16609946023052431803

namespace A181780

/-- `∩[A056653(n+1), A280199(n+1)]` -/
def P16609946023052431803.Spec : Prop :=
  ∀ n, (P16609946023052431803.a n : ℤ) = A181780 (n + 1)

end A181780

/-! ## A181780.P5305883178533749970

`∩[A065090(n+1), A280199(n+1)]`
-/

namespace A181780.P5305883178533749970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181780.P5305883178533749970

namespace A181780

/-- `∩[A065090(n+1), A280199(n+1)]` -/
def P5305883178533749970.Spec : Prop :=
  ∀ n, (P5305883178533749970.a n : ℤ) = A181780 (n + 1)

end A181780

/-! ## A181780.P918220388198390508

`∩[A171581(n+1), A280199(n+1)]`
-/

namespace A181780.P918220388198390508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181780.P918220388198390508

namespace A181780

/-- `∩[A171581(n+1), A280199(n+1)]` -/
def P918220388198390508.Spec : Prop :=
  ∀ n, (P918220388198390508.a n : ℤ) = A181780 (n + 1)

end A181780

/-! ## A181780.P9008846780105598884

`∩[A173905(n+1), A280199(n+1)]`
-/

namespace A181780.P9008846780105598884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181780.P9008846780105598884

namespace A181780

/-- `∩[A173905(n+1), A280199(n+1)]` -/
def P9008846780105598884.Spec : Prop :=
  ∀ n, (P9008846780105598884.a n : ℤ) = A181780 (n + 1)

end A181780

/-!
# A181781: Numbers n that are Euler pseudoprimes to some base b, 2 <= b <= n-2.

The programs for A181781, there is no canonical definition to state claims against.
-/

/-! ## A181781.P8076469113896456816

`∩[A091113(n+1), A170944(n+1)]`
-/

namespace A181781.P8076469113896456816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181781.P8076469113896456816

/-! ## A181781.P13185071462833981647

`or(A048152(A004043(n+8)), A091113(n+3))`
-/

namespace A181781.P13185071462833981647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048152 (A004043 (n + 8)).toNat) (A091113 (n + 3))

end

end A181781.P13185071462833981647

/-! ## A181781.P17120573417672367778

`or(A091113(A247760(n+4)), A316533(2*n+7))`
-/

namespace A181781.P17120573417672367778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091113 (A247760 (n + 4)).toNat) (A316533 (2 * n + 7))

end

end A181781.P17120573417672367778

/-! ## A181781.P13099565159726643001

`eq[A008462(2*n+1), A167770(A166974(3*n))]`
-/

namespace A181781.P13099565159726643001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008462 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167770 (A166974 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181781.P13099565159726643001

/-! ## A181781.P4591706510159979587

`filter[A004766(n+3), A174889(#)]`
-/

namespace A181781.P4591706510159979587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A181781.P4591706510159979587

/-!
# A181782: Odd composite numbers n that are strong pseudoprimes to some base a, 2 <= a <= n-2.

The programs for A181782, there is no canonical definition to state claims against.
-/

/-! ## A181782.P17970659585013325851

`∪[A120961(n+1), A178705(n+1)]`
-/

namespace A181782.P17970659585013325851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181782.P17970659585013325851

/-! ## A181782.P6742390715990022476

`A322121(∑[ceil((2*n+1)/19)^n])`
-/

namespace A181782.P6742390715990022476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) / 19⌉ ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322121 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181782.P6742390715990022476

/-! ## A181782.P17777320652666279845

`∩[A060976(n+1), A299498(n+1)]`
-/

namespace A181782.P17777320652666279845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181782.P17777320652666279845

/-!
# A181783: Array described in comments to A053482, here read by increasing antidiagonals. See comments below.

The programs for A181783, there is no canonical definition to state claims against.
-/

/-! ## A181783.P7662860891165522700

`A371766((A103517(n)-1)%comp[∑[n]])`
-/

namespace A181783.P7662860891165522700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371766 (Int.tmod (A103517 n - 1) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A181783.P7662860891165522700

/-!
# A181785: Wechsler's "convex-hull polyominoes": convex hull contains no additional grid points.

The programs for A181785, there is no canonical definition to state claims against.
-/

/-! ## A181785.P4169098936767695006

`gcd(n+1, ∏{p}[n+1, (n+1)/#])+A336488(A026643(n))-1`
-/

namespace A181785.P4169098936767695006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) : ℤ) + (A336488 (A026643 n).toNat - 1)

end

end A181785.P4169098936767695006

/-! ## A181785.P13270775780827678862

`A087640(n)+A083915(A007070(n))`
-/

namespace A181785.P13270775780827678862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087640 n + A083915 (A007070 n).toNat

end

end A181785.P13270775780827678862

/-! ## A181785.P5612222311363062

`A087640(n)+A025441(A084153(n))`
-/

namespace A181785.P5612222311363062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087640 n + A025441 (A084153 n).toNat

end

end A181785.P5612222311363062

/-! ## A181785.P6262670961610312623

`A087640(n)+A087624(A071100(n))`
-/

namespace A181785.P6262670961610312623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087640 n + A087624 (A071100 n).toNat

end

end A181785.P6262670961610312623

/-!
# A181786: Number of inequivalent solutions to n^2 = a^2 + b^2 + c^2 with positive a, b, c.

The programs for A181786, there is no canonical definition to state claims against.
-/

/-! ## A181786.P8889273533808466822

`A016727(n)-A063014(n)`
-/

namespace A181786.P8889273533808466822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 n - A063014 n

end

end A181786.P8889273533808466822

/-! ## A181786.P10706902865081424169

`A016727(n)-(∑{d}[n, A024362(#)]+1)`
-/

namespace A181786.P10706902865081424169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 n - (∑ d ∈ Nat.divisors (f1 n), A024362 d + 1)

end

end A181786.P10706902865081424169

/-! ## A181786.P13958111856851962621

`A016727(n)-A003602(A046109(n))`
-/

namespace A181786.P13958111856851962621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 n - A003602 (A046109 n).toNat

end

end A181786.P13958111856851962621

/-! ## A181786.P11232574663140621148

`A016727(n)-(A046080(A008486(n))+1)`
-/

namespace A181786.P11232574663140621148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 n - (A046080 (A008486 n).toNat + 1)

end

end A181786.P11232574663140621148

/-! ## A181786.P5015176534256154712

`A016727(n)-(A046080(A008574(n))+1)`
-/

namespace A181786.P5015176534256154712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 n - (A046080 (A008574 n).toNat + 1)

end

end A181786.P5015176534256154712

/-! ## A181786.P2489981940396122973

`A016727(n)-(A328712(A008458(n))+1)`
-/

namespace A181786.P2489981940396122973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 n - (A328712 (A008458 n).toNat + 1)

end

end A181786.P2489981940396122973

/-! ## A181786.P10320498956257926763

`A016727(n)-A255212(∑[n+3])`
-/

namespace A181786.P10320498956257926763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 n - A255212 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181786.P10320498956257926763

/-! ## A181786.P7876903162052830349

`A255212(A046691(n+2))-A063014(n)`
-/

namespace A181786.P7876903162052830349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A046691 (n + 2)).toNat - A063014 n

end

end A181786.P7876903162052830349

/-! ## A181786.P2834539164453920095

`A255212(A167499(n)+A008486(n))-A063014(n)`
-/

namespace A181786.P2834539164453920095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A167499 n + A008486 n).toNat - A063014 n

end

end A181786.P2834539164453920095

/-! ## A181786.P10728924556932162674

`A025427(n²)`
-/

namespace A181786.P10728924556932162674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (n ^ 2)

end

end A181786.P10728924556932162674

/-! ## A181786.P4898183882068480815

`∑{d}[n, A223730(#²)]`
-/

namespace A181786.P4898183882068480815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A223730 (d ^ 2)

end

end A181786.P4898183882068480815

/-! ## A181786.P637168396386228639

`A000164(n²)-A063014(n)`
-/

namespace A181786.P637168396386228639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (n ^ 2) - A063014 n

end

end A181786.P637168396386228639

/-! ## A181786.P4104174972654785533

`A000164(n²)-A000161(n²)`
-/

namespace A181786.P4104174972654785533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (n ^ 2) - A000161 (n ^ 2)

end

end A181786.P4104174972654785533

/-! ## A181786.P13421869206513550706

`A055643(A025427(A000290(n)))`
-/

namespace A181786.P13421869206513550706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A025427 (A000290 n).toNat).toNat

end

end A181786.P13421869206513550706

/-! ## A181786.P16176730737673465291

`A071669(A025427(∑[A004273(n)]))`
-/

namespace A181786.P16176730737673465291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071669 (A025427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A181786.P16176730737673465291

/-! ## A181786.P6275445766731566314

`A007318(A025427(n))*A025427(A000290(n))`
-/

namespace A181786.P6275445766731566314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A025427 n).toNat * A025427 (A000290 n).toNat

end

end A181786.P6275445766731566314

/-!
# A181787: Number of solutions to n^2 = a^2 + b^2 + c^2 with positive a, b, c.

The programs for A181787, there is no canonical definition to state claims against.
-/

/-! ## A181787.P1275292384185895413

`A063691(n²)`
-/

namespace A181787.P1275292384185895413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (n ^ 2)

end

end A181787.P1275292384185895413

/-! ## A181787.P9248939912364930535

`A110657(A016725(n))-A181788(n)`
-/

namespace A181787.P9248939912364930535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A016725 n).toNat - A181788 n

end

end A181787.P9248939912364930535

/-! ## A181787.P5235266750586834847

`A110657(A016725(2*n))%A181788(n)`
-/

namespace A181787.P5235266750586834847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110657 (A016725 (2 * n)).toNat) (A181788 n)

end

end A181787.P5235266750586834847

/-! ## A181787.P3113294436750108590

`A110657(A016725(n))%(A181788(n)%A016885(n))`
-/

namespace A181787.P3113294436750108590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110657 (A016725 n).toNat) (Int.tmod (A181788 n) (A016885 n))

end

end A181787.P3113294436750108590

/-! ## A181787.P6701289253902686053

`A110657(A016725(n))+A181788(n)*A260196(n+2)`
-/

namespace A181787.P6701289253902686053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A016725 n).toNat + A181788 n * A260196 (n + 2)

end

end A181787.P6701289253902686053

/-! ## A181787.P3157418388117956905

`Δ[A212091(abs(1-n))]`
-/

namespace A181787.P3157418388117956905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212091 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181787.P3157418388117956905

/-! ## A181787.P17248619228157203405

`A212091(n)-A212091(abs(1-n))`
-/

namespace A181787.P17248619228157203405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212091 n - A212091 |1 - (n : ℤ)|.toNat

end

end A181787.P17248619228157203405

/-! ## A181787.P1396627458401685163

`lcm(3, A063691(n*n))`
-/

namespace A181787.P1396627458401685163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A063691 (n * n))

end

end A181787.P1396627458401685163

/-! ## A181787.P10367804618086499858

`A064429(A063691(n^2))`
-/

namespace A181787.P10367804618086499858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A063691 (n ^ 2)).toNat

end

end A181787.P10367804618086499858

/-! ## A181787.P4958400207929879051

`A004525(2*A063691(n^2))`
-/

namespace A181787.P4958400207929879051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A063691 (n ^ 2)).toNat

end

end A181787.P4958400207929879051

/-! ## A181787.P2897153103202082145

`A004526(2*A063691(n*n))`
-/

namespace A181787.P2897153103202082145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A063691 (n * n)).toNat

end

end A181787.P2897153103202082145

/-! ## A181787.P1926778401276698951

`A026741(2*A063691(n*n))`
-/

namespace A181787.P1926778401276698951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A063691 (n * n)).toNat

end

end A181787.P1926778401276698951

/-! ## A181787.P14159141040492881409

`A063691(n*n)%A000118(n)`
-/

namespace A181787.P14159141040492881409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063691 (n * n)) (A000118 n)

end

end A181787.P14159141040492881409

/-! ## A181787.P7078186958852935548

`A000041(gcd(n, n+1))*A063691(n*n)`
-/

namespace A181787.P7078186958852935548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A063691 (n * n)

end

end A181787.P7078186958852935548

/-! ## A181787.P7375623203682169061

`A002265(4*A063691(A000290(n)))`
-/

namespace A181787.P7375623203682169061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (4 * A063691 (A000290 n).toNat).toNat

end

end A181787.P7375623203682169061

/-! ## A181787.P6446163028052613715

`A057427(n)*A063691(A000290(n))`
-/

namespace A181787.P6446163028052613715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A063691 (A000290 n).toNat

end

end A181787.P6446163028052613715

/-! ## A181787.P4472453363026105732

`A063691(A000290(n))*A178334(n)`
-/

namespace A181787.P4472453363026105732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (A000290 n).toNat * A178334 n

end

end A181787.P4472453363026105732

/-! ## A181787.P14816436433363689468

`∑{d}[A063691(A000290(n)), A000010(#)]`
-/

namespace A181787.P14816436433363689468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (A000290 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A181787.P14816436433363689468

/-! ## A181787.P3830078159895704617

`A063691(A000290(n))/A328570(2*n)`
-/

namespace A181787.P3830078159895704617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063691 (A000290 n).toNat : ℚ) / (A328570 (2 * n) : ℚ)

end

end A181787.P3830078159895704617

/-! ## A181787.P17930350422865405425

`A063691(A000290(n))*A347710(A002654(n+1))`
-/

namespace A181787.P17930350422865405425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (A000290 n).toNat * A347710 (A002654 (n + 1)).toNat

end

end A181787.P17930350422865405425

/-!
# A181788: Number of solutions to n^2 = a^2 + b^2 + c^2 with nonnegative a, b, c.

The programs for A181788, there is no canonical definition to state claims against.
-/

/-! ## A181788.P16125021994139420821

`A110657(A016725(n))-A181787(n)`
-/

namespace A181788.P16125021994139420821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A016725 n).toNat - A181787 n

end

end A181788.P16125021994139420821

/-! ## A181788.P9559608146119732285

`A110657(A053591(2*n)-A053592(2*n))-A181787(n)`
-/

namespace A181788.P9559608146119732285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A053591 (2 * n) - A053592 (2 * n)).toNat - A181787 n

end

end A181788.P9559608146119732285

/-! ## A181788.P15833272746014155543

`A002102(n²)`
-/

namespace A181788.P15833272746014155543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 (n ^ 2)

end

end A181788.P15833272746014155543

/-! ## A181788.P17931408552557839778

`or(char[2], A002102(n*n))`
-/

namespace A181788.P17931408552557839778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A002102 (n * n))

end

end A181788.P17931408552557839778

/-! ## A181788.P8247370083259992723

`A000027(A002102(n^2))`
-/

namespace A181788.P8247370083259992723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A002102 (n ^ 2)).toNat

end

end A181788.P8247370083259992723

/-! ## A181788.P10207656051673959777

`A246277(2*A002102(n*n))`
-/

namespace A181788.P10207656051673959777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (2 * A002102 (n * n)).toNat

end

end A181788.P10207656051673959777

/-! ## A181788.P297156419509241883

`∑{d}[A002102(n^2), A000010(#)]`
-/

namespace A181788.P297156419509241883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A181788.P297156419509241883

/-! ## A181788.P1165480323257820261

`or(A002102(n*n), A010052(n))`
-/

namespace A181788.P1165480323257820261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002102 (n * n)) (A010052 n)

end

end A181788.P1165480323257820261

/-! ## A181788.P8028887283486003410

`A007318(∑[n])*A002102(n*n)`
-/

namespace A181788.P8028887283486003410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A002102 (n * n)

end

end A181788.P8028887283486003410

/-! ## A181788.P3766719389547412489

`A002102(A000290(n))%A004767(n)`
-/

namespace A181788.P3766719389547412489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002102 (A000290 n).toNat) (A004767 n)

end

end A181788.P3766719389547412489

/-! ## A181788.P8143143470099558993

`gcd(A000038(n), A002102(A000290(n)))`
-/

namespace A181788.P8143143470099558993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A002102 (A000290 n).toNat)

end

end A181788.P8143143470099558993

/-! ## A181788.P13989081630779730314

`lcm(A002102(A000290(n)), A020985(n))`
-/

namespace A181788.P13989081630779730314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002102 (A000290 n).toNat) (A020985 n)

end

end A181788.P13989081630779730314

/-! ## A181788.P2027658854428276322

`A002102(A000290(n))+A000038(n+1)`
-/

namespace A181788.P2027658854428276322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 (A000290 n).toNat + A000038 (n + 1)

end

end A181788.P2027658854428276322

/-! ## A181788.P15011810850691962478

`A002102(A000290(n))+A000161(A022544(n+1))`
-/

namespace A181788.P15011810850691962478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 (A000290 n).toNat + A000161 (A022544 (n + 1)).toNat

end

end A181788.P15011810850691962478

/-!
# A181791: 

The programs for A181791, there is no canonical definition to state claims against.
-/

/-! ## A181791.P16717918330496747316

`A106497(lt[A178194(n+3), A077882(n)])`
-/

namespace A181791.P16717918330496747316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178194 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106497 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181791.P16717918330496747316

/-! ## A181791.P11351424750451556748

`A106497(lt[A178194(n+3), A171967(n)])`
-/

namespace A181791.P11351424750451556748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178194 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106497 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181791.P11351424750451556748

/-! ## A181791.P4483724028020741754

`A106497(A195770(2*n+5)+A000007(n))`
-/

namespace A181791.P4483724028020741754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106497 (A195770 (2 * n + 5) + A000007 n).toNat

end

end A181791.P4483724028020741754

/-!
# A181792: Positive integers such that, for each k=0,1,2, the count of its divisors congruent to k modulo 3 is congruent to k modulo 3.

The programs for A181792, there is no canonical definition to state claims against.
-/

/-! ## A181792.P8002898661456689795

`∩[A092574(n+1), A139805(n+1)]`
-/

namespace A181792.P8002898661456689795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181792.P8002898661456689795

/-! ## A181792.P13205477737689648055

`∩[A139805(n+1), A244819(n+1)]`
-/

namespace A181792.P13205477737689648055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181792.P13205477737689648055

/-!
# A181793: Primitive members of A181792.

The programs for A181793, there is no canonical definition to state claims against.
-/

/-! ## A181793.P12654854751833724844

`filter[A030515(n+1), A070563(#)]`
-/

namespace A181793.P12654854751833724844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A181793.P12654854751833724844

/-! ## A181793.P4469520432145562156

`filter[A054753(n+1), A070563(#)]`
-/

namespace A181793.P4469520432145562156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A181793.P4469520432145562156

/-! ## A181793.P11138160993613563629

`filter[A110187(n+1), A070563(#)]`
-/

namespace A181793.P11138160993613563629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A181793.P11138160993613563629

/-! ## A181793.P18177724393102578063

`filter[A227854(n+1), A373256(#)]`
-/

namespace A181793.P18177724393102578063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A181793.P18177724393102578063

/-! ## A181793.P15191965810800707350

`filter[A374135(n+1), A353472(#)]`
-/

namespace A181793.P15191965810800707350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353472 (f1 j).toNat = 1) n)

end

end A181793.P15191965810800707350

/-!
# A181794: Numbers n such that the number of even divisors of n is an even divisor of n.

The programs for A181794, the canonical program `A181794.P10753813683387248145` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181794 has offset 1).

The definition of A181794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181794.P10753813683387248145

`∩[A120351(n+1), A348005(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A181794

/-- `∩[A120351(n+1), A348005(n+1)]` -/
def P10753813683387248145.Spec : Prop :=
  ∀ n, (P10753813683387248145.a n : ℤ) = A181794 (n + 1)

theorem P10753813683387248145.correct : P10753813683387248145.Spec := by
  intro n
  simp only [A181794, Nat.add_sub_cancel]

end A181794

/-! ## A181794.P15604635878769468270

`∩[2*A000037(n+1), A120351(n+1)]`
-/

namespace A181794.P15604635878769468270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181794.P15604635878769468270

namespace A181794

/-- `∩[2*A000037(n+1), A120351(n+1)]` -/
def P15604635878769468270.Spec : Prop :=
  ∀ n, (P15604635878769468270.a n : ℤ) = A181794 (n + 1)

end A181794

/-! ## A181794.P8332457646023655225

`∩[A120351(n+2), comp[ceil(n²/2)]]`
-/

namespace A181794.P8332457646023655225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120351 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A181794.P8332457646023655225

namespace A181794

/-- `∩[A120351(n+2), comp[ceil(n²/2)]]` -/
def P8332457646023655225.Spec : Prop :=
  ∀ n, (P8332457646023655225.a n : ℤ) = A181794 (n + 1)

end A181794

/-! ## A181794.P11687695543945942595

`∩[A183300(n+1), A120351(n+1)]`
-/

namespace A181794.P11687695543945942595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181794.P11687695543945942595

namespace A181794

/-- `∩[A183300(n+1), A120351(n+1)]` -/
def P11687695543945942595.Spec : Prop :=
  ∀ n, (P11687695543945942595.a n : ℤ) = A181794 (n + 1)

end A181794

/-!
# A181795: Numbers k such that the number of odd divisors of k is an odd divisor of k, and the number of even divisors of k is an even divisor of k.

The programs for A181795, there is no canonical definition to state claims against.
-/

/-! ## A181795.P17176922802065006603

`2*A376114(n+1)`
-/

namespace A181795.P17176922802065006603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A376114 (n + 1)

end

end A181795.P17176922802065006603

/-! ## A181795.P17033139778442610394

`(2*A181687(n+1))²`
-/

namespace A181795.P17033139778442610394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A181687 (n + 1)) ^ 2

end

end A181795.P17033139778442610394

/-! ## A181795.P14916054750832641765

`A016742(A181687(n+1))`
-/

namespace A181795.P14916054750832641765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A181687 (n + 1)).toNat

end

end A181795.P14916054750832641765

/-! ## A181795.P14070699445049705942

`A376114(n+1)+A001105(A181687(n+1))`
-/

namespace A181795.P14070699445049705942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376114 (n + 1) + A001105 (A181687 (n + 1)).toNat

end

end A181795.P14070699445049705942

/-! ## A181795.P9675031656947779421

`A000290(2*A181687(n+1))`
-/

namespace A181795.P9675031656947779421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A181687 (n + 1)).toNat

end

end A181795.P9675031656947779421

/-! ## A181795.P10390463741149365817

`A000290(A181687(n+1)+A181687(n+1))`
-/

namespace A181795.P10390463741149365817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A181687 (n + 1) + A181687 (n + 1)).toNat

end

end A181795.P10390463741149365817

/-! ## A181795.P2750557255698688515

`∩[2*A033950(n+1), n²]`
-/

namespace A181795.P2750557255698688515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033950 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A181795.P2750557255698688515

/-! ## A181795.P1120359290106065916

`∩[2*A057265(n+1), n²]`
-/

namespace A181795.P1120359290106065916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057265 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A181795.P1120359290106065916

/-! ## A181795.P9658534935984303303

`2*∩[A033950(n+1), A001105(n)]`
-/

namespace A181795.P9658534935984303303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181795.P9658534935984303303

/-! ## A181795.P864368209747590312

`2*∩[A057265(n+1), A000982(n)]`
-/

namespace A181795.P864368209747590312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181795.P864368209747590312

/-!
# A181796: a(n) = number of divisors of n whose canonical prime factorizations contain no repeated positive exponents (cf. A130091).

The programs for A181796, the canonical program `A181796.P9748470667734305671` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181796 has offset 1).

The definition of A181796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181796.P9748470667734305671

`∑{d}[n+1, A351564(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A181796

/-- `∑{d}[n+1, A351564(#)]` -/
def P9748470667734305671.Spec : Prop :=
  ∀ n, P9748470667734305671.a n = A181796 (n + 1)

theorem P9748470667734305671.correct : P9748470667734305671.Spec := by
  intro n
  simp only [A181796, Nat.add_sub_cancel]

end A181796

/-! ## A181796.P15887027335795591847

`∑{d}[n+1, A008966(A181819(#))]`
-/

namespace A181796.P15887027335795591847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 (A181819 d).toNat

end

end A181796.P15887027335795591847

namespace A181796

/-- `∑{d}[n+1, A008966(A181819(#))]` -/
def P15887027335795591847.Spec : Prop :=
  ∀ n, P15887027335795591847.a n = A181796 (n + 1)

end A181796

/-! ## A181796.P4058761377959949697

`∑{d}[n+1, A341629(A238745(#))]`
-/

namespace A181796.P4058761377959949697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341629 (A238745 d).toNat

end

end A181796.P4058761377959949697

namespace A181796

/-- `∑{d}[n+1, A341629(A238745(#))]` -/
def P4058761377959949697.Spec : Prop :=
  ∀ n, P4058761377959949697.a n = A181796 (n + 1)

end A181796

/-! ## A181796.P831696405753619328

`∑{d}[n+1, A335452(2^A335452(#))]`
-/

namespace A181796.P831696405753619328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A335452 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A335452 d : ℤ))).toNat

end

end A181796.P831696405753619328

namespace A181796

/-- `∑{d}[n+1, A335452(2^A335452(#))]` -/
def P831696405753619328.Spec : Prop :=
  ∀ n, P831696405753619328.a n = A181796 (n + 1)

end A181796

/-! ## A181796.P3137864929760541020

`A085082(n+1)+A065202(A322020(n+1))`
-/

namespace A181796.P3137864929760541020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (n + 1) + A065202 (A322020 (n + 1)).toNat

end

end A181796.P3137864929760541020

namespace A181796

/-- `A085082(n+1)+A065202(A322020(n+1))` -/
def P3137864929760541020.Spec : Prop :=
  ∀ n, P3137864929760541020.a n = A181796 (n + 1)

end A181796

/-! ## A181796.P3973128244093885285

`A085082(n+1)+A046660(A256690(n+1))`
-/

namespace A181796.P3973128244093885285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (n + 1) + A046660 (A256690 (n + 1)).toNat

end

end A181796.P3973128244093885285

namespace A181796

/-- `A085082(n+1)+A046660(A256690(n+1))` -/
def P3973128244093885285.Spec : Prop :=
  ∀ n, P3973128244093885285.a n = A181796 (n + 1)

end A181796

/-! ## A181796.P11661390476176779895

`A001511(A338506(n+1))-A050320(n+1)`
-/

namespace A181796.P11661390476176779895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A338506 (n + 1)).toNat - A050320 (n + 1)

end

end A181796.P11661390476176779895

namespace A181796

/-- `A001511(A338506(n+1))-A050320(n+1)` -/
def P11661390476176779895.Spec : Prop :=
  ∀ n, P11661390476176779895.a n = A181796 (n + 1)

end A181796

/-! ## A181796.P1204135749301919856

`∑{d}[n+1, A008683(A070919(#²))²]`
-/

namespace A181796.P1204135749301919856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (A070919 (d ^ 2)).toNat ^ 2

end

end A181796.P1204135749301919856

namespace A181796

/-- `∑{d}[n+1, A008683(A070919(#²))²]` -/
def P1204135749301919856.Spec : Prop :=
  ∀ n, P1204135749301919856.a n = A181796 (n + 1)

end A181796

/-! ## A181796.P15443000499484034548

`A356224(A046523(n+1))`
-/

namespace A181796.P15443000499484034548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356224 (A046523 (n + 1)).toNat

end

end A181796.P15443000499484034548

namespace A181796

/-- `A356224(A046523(n+1))` -/
def P15443000499484034548.Spec : Prop :=
  ∀ n, P15443000499484034548.a n = A181796 (n + 1)

end A181796

/-! ## A181796.P669763399463160024

`A335516(n+1)`
-/

namespace A181796.P669763399463160024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335516 (n + 1)

end

end A181796.P669763399463160024

namespace A181796

/-- `A335516(n+1)` -/
def P669763399463160024.Spec : Prop :=
  ∀ n, P669763399463160024.a n = A181796 (n + 1)

end A181796

/-!
# A181797: a(n) = n multiplied by the sum of its squarefree divisors (A048250(n)).

The programs for A181797, the canonical program `A181797.P4894842930551307870` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181797 has offset 1).

The definition of A181797 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181797.P4894842930551307870

`(n+1)*A048250(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A181797

/-- `(n+1)*A048250(n+1)` -/
def P4894842930551307870.Spec : Prop :=
  ∀ n, P4894842930551307870.a n = A181797 (n + 1)

theorem P4894842930551307870.correct : P4894842930551307870.Spec := by
  intro n
  simp only [A181797, Nat.add_sub_cancel]

end A181797

/-! ## A181797.P4181988022493717036

`(n+1)*∏{p}[n+1, #+1]`
-/

namespace A181797.P4181988022493717036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (p + 1))

end

end A181797.P4181988022493717036

namespace A181797

/-- `(n+1)*∏{p}[n+1, #+1]` -/
def P4181988022493717036.Spec : Prop :=
  ∀ n, (P4181988022493717036.a n : ℤ) = A181797 (n + 1)

end A181797

/-! ## A181797.P12213053712066572978

`abs((n+1)*A323363(n+1))`
-/

namespace A181797.P12213053712066572978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A323363 (n + 1)|

end

end A181797.P12213053712066572978

namespace A181797

/-- `abs((n+1)*A323363(n+1))` -/
def P12213053712066572978.Spec : Prop :=
  ∀ n, P12213053712066572978.a n = A181797 (n + 1)

end A181797

/-! ## A181797.P18218414473580846167

`(n+1)*(A325313(n+1)+n+1)`
-/

namespace A181797.P18218414473580846167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A325313 (n + 1) + (n + 1 : ℤ))

end

end A181797.P18218414473580846167

namespace A181797

/-- `(n+1)*(A325313(n+1)+n+1)` -/
def P18218414473580846167.Spec : Prop :=
  ∀ n, P18218414473580846167.a n = A181797 (n + 1)

end A181797

/-! ## A181797.P17470766791118689458

`A165998(n)*A206787(n+1)`
-/

namespace A181797.P17470766791118689458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n * A206787 (n + 1)

end

end A181797.P17470766791118689458

namespace A181797

/-- `A165998(n)*A206787(n+1)` -/
def P17470766791118689458.Spec : Prop :=
  ∀ n, P17470766791118689458.a n = A181797 (n + 1)

end A181797

/-! ## A181797.P16072491149890762971

`(n+1)*A000203(A007947(n+1))`
-/

namespace A181797.P16072491149890762971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (A007947 (n + 1)).toNat

end

end A181797.P16072491149890762971

namespace A181797

/-- `(n+1)*A000203(A007947(n+1))` -/
def P16072491149890762971.Spec : Prop :=
  ∀ n, P16072491149890762971.a n = A181797 (n + 1)

end A181797

/-! ## A181797.P1595630070878444947

`A001615(n+1)*A007947(n+1)`
-/

namespace A181797.P1595630070878444947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A007947 (n + 1)

end

end A181797.P1595630070878444947

namespace A181797

/-- `A001615(n+1)*A007947(n+1)` -/
def P1595630070878444947.Spec : Prop :=
  ∀ n, P1595630070878444947.a n = A181797 (n + 1)

end A181797

/-! ## A181797.P13965764240234913216

`(n+1)*A033634(A007948(n+1))`
-/

namespace A181797.P13965764240234913216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033634 (A007948 (n + 1)).toNat

end

end A181797.P13965764240234913216

namespace A181797

/-- `(n+1)*A033634(A007948(n+1))` -/
def P13965764240234913216.Spec : Prop :=
  ∀ n, P13965764240234913216.a n = A181797 (n + 1)

end A181797

/-! ## A181797.P12371920189950729588

`(n+1)*A033634(A066990(n+1))`
-/

namespace A181797.P12371920189950729588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033634 (A066990 (n + 1)).toNat

end

end A181797.P12371920189950729588

namespace A181797

/-- `(n+1)*A033634(A066990(n+1))` -/
def P12371920189950729588.Spec : Prop :=
  ∀ n, P12371920189950729588.a n = A181797 (n + 1)

end A181797

/-! ## A181797.P18106563631559889428

`(n+1)*A366743(A372379(n+1))`
-/

namespace A181797.P18106563631559889428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A366743 (A372379 (n + 1)).toNat

end

end A181797.P18106563631559889428

namespace A181797

/-- `(n+1)*A366743(A372379(n+1))` -/
def P18106563631559889428.Spec : Prop :=
  ∀ n, P18106563631559889428.a n = A181797 (n + 1)

end A181797

/-! ## A181797.P16576612688987898088

`A000082(n+1)/A003557(n+1)`
-/

namespace A181797.P16576612688987898088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A181797.P16576612688987898088

namespace A181797

/-- `A000082(n+1)/A003557(n+1)` -/
def P16576612688987898088.Spec : Prop :=
  ∀ n, P16576612688987898088.a n = (A181797 (n + 1) : ℚ)

end A181797

/-! ## A181797.P15104659786207429930

`∑{d}[A007947(n+1), A064549(n+1)/#]`
-/

namespace A181797.P15104659786207429930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A064549 (n + 1) : ℚ) / (d : ℚ)

end

end A181797.P15104659786207429930

namespace A181797

/-- `∑{d}[A007947(n+1), A064549(n+1)/#]` -/
def P15104659786207429930.Spec : Prop :=
  ∀ n, P15104659786207429930.a n = (A181797 (n + 1) : ℚ)

end A181797

/-! ## A181797.P16590970217828344163

`∑{d}[n+1, A055491(#)*A063659((n+1)/#)]`
-/

namespace A181797.P16590970217828344163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055491 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A181797.P16590970217828344163

namespace A181797

/-- `∑{d}[n+1, A055491(#)*A063659((n+1)/#)]` -/
def P16590970217828344163.Spec : Prop :=
  ∀ n, P16590970217828344163.a n = A181797 (n + 1)

end A181797

/-! ## A181797.P6483392649231462165

`∑{d}[n+1, A000010(#)*A351265((n+1)/#)]`
-/

namespace A181797.P6483392649231462165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A351265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A181797.P6483392649231462165

namespace A181797

/-- `∑{d}[n+1, A000010(#)*A351265((n+1)/#)]` -/
def P6483392649231462165.Spec : Prop :=
  ∀ n, P6483392649231462165.a n = A181797 (n + 1)

end A181797

/-! ## A181797.P9171986062027688850

`A000082(A007947(n+1))*A003557(n+1)`
-/

namespace A181797.P9171986062027688850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000082 (A007947 (n + 1)).toNat * A003557 (n + 1)

end

end A181797.P9171986062027688850

namespace A181797

/-- `A000082(A007947(n+1))*A003557(n+1)` -/
def P9171986062027688850.Spec : Prop :=
  ∀ n, P9171986062027688850.a n = A181797 (n + 1)

end A181797

/-! ## A181797.P7669457597301278534

`(n+1)*A008473(A007947(A304776(n+1)))`
-/

namespace A181797.P7669457597301278534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008473 (A007947 (A304776 (n + 1)).toNat).toNat

end

end A181797.P7669457597301278534

namespace A181797

/-- `(n+1)*A008473(A007947(A304776(n+1)))` -/
def P7669457597301278534.Spec : Prop :=
  ∀ n, P7669457597301278534.a n = A181797 (n + 1)

end A181797

/-! ## A181797.P8679961994098688451

`(n+1)*A003959(A007947(A348036(n+1)))`
-/

namespace A181797.P8679961994098688451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003959 (A007947 (A348036 (n + 1)).toNat).toNat

end

end A181797.P8679961994098688451

namespace A181797

/-- `(n+1)*A003959(A007947(A348036(n+1)))` -/
def P8679961994098688451.Spec : Prop :=
  ∀ n, P8679961994098688451.a n = A181797 (n + 1)

end A181797

/-! ## A181797.P2766907691351166009

`(n+1)*A346613(A053166(A053166(n+1)))`
-/

namespace A181797.P2766907691351166009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A346613 (A053166 (A053166 (n + 1)).toNat).toNat

end

end A181797.P2766907691351166009

namespace A181797

/-- `(n+1)*A346613(A053166(A053166(n+1)))` -/
def P2766907691351166009.Spec : Prop :=
  ∀ n, P2766907691351166009.a n = A181797 (n + 1)

end A181797

/-! ## A181797.P12655867582258392365

`(n+1)*A351569(A007913(A350390(n+1)))`
-/

namespace A181797.P12655867582258392365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A351569 (A007913 (A350390 (n + 1)).toNat).toNat

end

end A181797.P12655867582258392365

namespace A181797

/-- `(n+1)*A351569(A007913(A350390(n+1)))` -/
def P12655867582258392365.Spec : Prop :=
  ∀ n, P12655867582258392365.a n = A181797 (n + 1)

end A181797

/-!
# A181798: Terms of A181797 arranged in ascending order.

The programs for A181798, there is no canonical definition to state claims against.
-/

/-! ## A181798.P2578512344686194909

`A181797(A181799(n+1))`
-/

namespace A181798.P2578512344686194909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181797 (A181799 (n + 1)).toNat

end

end A181798.P2578512344686194909

/-! ## A181798.P3731916255248758304

`A048250(A181799(n+1))*A181799(A000027(n+1))`
-/

namespace A181798.P3731916255248758304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A181799 (n + 1)).toNat * A181799 (A000027 (n + 1)).toNat

end

end A181798.P3731916255248758304

/-! ## A181798.P6704477173214840258

`A181799(n+1)*A323363(A181799(n+1)²)`
-/

namespace A181798.P6704477173214840258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181799 (n + 1) * A323363 (A181799 (n + 1) ^ 2).toNat

end

end A181798.P6704477173214840258

/-! ## A181798.P7718328745450495340

`A048250(A181799(n+1)²)*A181799(n+1)`
-/

namespace A181798.P7718328745450495340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A181799 (n + 1) ^ 2).toNat * A181799 (n + 1)

end

end A181798.P7718328745450495340

/-! ## A181798.P9322332603279531683

`filter[A323332(n+1), A273592(#)]`
-/

namespace A181798.P9322332603279531683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A273592 (f1 j).toNat = 1) n)

end

end A181798.P9322332603279531683

