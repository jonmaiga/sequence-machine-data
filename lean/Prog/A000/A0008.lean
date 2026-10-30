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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C046
import Seq.B000.C048
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A000800: Sum of upward diagonals of Eulerian triangle.

The programs for A000800, there is no canonical definition to state claims against.
-/

/-! ## A000800.P11555731790709543720

`n!-A174992(n)`
-/

namespace A000800.P11555731790709543720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A174992 n

end

end A000800.P11555731790709543720

/-! ## A000800.P14869866523966146234

`A000142(n)-A174992(n)`
-/

namespace A000800.P14869866523966146234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A174992 n

end

end A000800.P14869866523966146234

/-! ## A000800.P9636627470000889717

`A289192(A000096(n))-A174992(n)`
-/

namespace A000800.P9636627470000889717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A000096 n).toNat - A174992 n

end

end A000800.P9636627470000889717

/-! ## A000800.P17738192561015976200

`A199660(2*n+1)-A174992(n)`
-/

namespace A000800.P17738192561015976200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199660 (2 * n + 1) - A174992 n

end

end A000800.P17738192561015976200

/-!
# A000801: a(n) = Sum_{k = 1..n} floor(2^k / k).

The programs for A000801, the canonical program `A000801.P1786104651193454031` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000801 has offset 1).

The definition of A000801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000801.P1786104651193454031

`∑[floor(2^(n+1-log2(n+1)))]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000801

/-- `∑[floor(2^(n+1-log2(n+1)))]` -/
def P1786104651193454031.Spec : Prop :=
  ∀ n, P1786104651193454031.a n = A000801 (n + 1)

theorem P1786104651193454031.correct : P1786104651193454031.Spec := by
  intro n
  simp only [A000801, Nat.add_sub_cancel]

end A000801

/-! ## A000801.P4140705225699550775

`A000799(n+1)+a(n-1)` with `a(0)=2`
-/

namespace A000801.P4140705225699550775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000799 (n + 1) + a (n - 1)

end

end A000801.P4140705225699550775

namespace A000801

/-- `A000799(n+1)+a(n-1)` -/
def P4140705225699550775.Spec : Prop :=
  ∀ n, P4140705225699550775.a n = A000801 (n + 1)

end A000801

/-! ## A000801.P9369849710572419438

`gcd(∑[A000799(n+1)], A000038(n))`
-/

namespace A000801.P9369849710572419438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A000801.P9369849710572419438

namespace A000801

/-- `gcd(∑[A000799(n+1)], A000038(n))` -/
def P9369849710572419438.Spec : Prop :=
  ∀ n, (P9369849710572419438.a n : ℤ) = A000801 (n + 1)

end A000801

/-! ## A000801.P10533307210756683357

`floor(a(n-1)+2^(n+1)/(n+1))` with `a(0)=2`
-/

namespace A000801.P10533307210756683357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℚ) + (2 ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A000801.P10533307210756683357

namespace A000801

/-- `floor(a(n-1)+2^(n+1)/(n+1))` -/
def P10533307210756683357.Spec : Prop :=
  ∀ n, P10533307210756683357.a n = A000801 (n + 1)

end A000801

/-! ## A000801.P4270672430716779199

`∑[ceil(A000051(n+1)/(n+1))]-(n+1)`
-/

namespace A000801.P4270672430716779199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000051 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A000801.P4270672430716779199

namespace A000801

/-- `∑[ceil(A000051(n+1)/(n+1))]-(n+1)` -/
def P4270672430716779199.Spec : Prop :=
  ∀ n, P4270672430716779199.a n = A000801 (n + 1)

end A000801

/-! ## A000801.P9188409955819718015

`∑[A000799(n+1)]%A083686(n)`
-/

namespace A000801.P9188409955819718015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A083686 n)

end

end A000801.P9188409955819718015

namespace A000801

/-- `∑[A000799(n+1)]%A083686(n)` -/
def P9188409955819718015.Spec : Prop :=
  ∀ n, P9188409955819718015.a n = A000801 (n + 1)

end A000801

/-!
# A000802: Maximal number of states in the minimal deterministic finite automaton accepting a language over a binary alphabet consisting of some words of length n.

The programs for A000802, there is no canonical definition to state claims against.
-/

/-! ## A000802.P18364622533643627926

`∑[A097029(A000005(ceil(2^(n-1))))]`
-/

namespace A000802.P18364622533643627926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097029 (A000005 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000802.P18364622533643627926

/-! ## A000802.P17008719049988631788

`∑[A097029(A325134(ceil(2^(n-1))))]`
-/

namespace A000802.P17008719049988631788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097029 (A325134 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000802.P17008719049988631788

/-! ## A000802.P15690707685305877968

`∑[record[A151669(n)-A352269(3*n+5)]]+1`
-/

namespace A000802.P15690707685305877968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 n - A352269 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A000802.P15690707685305877968

/-! ## A000802.P11401326296002124149

`A338190(∑[A089983(n+1)+A002620(n)])`
-/

namespace A000802.P11401326296002124149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089983 (n + 1) + A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000802.P11401326296002124149

/-!
# A000803: a(n+3) = a(n+2) + a(n+1) + a(n) - 4.

The programs for A000803, the canonical program `A000803.P10674870317702186638` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000803 has offset 0).

The definition of A000803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000803.P517990862271049815

`ogf((8x^2-12x^3)/(1-2x+x^4))`
-/

namespace A000803.P517990862271049815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 8, -12] [1, -2, 0, 0, 1] n

end

end A000803.P517990862271049815

namespace A000803

/-- `ogf((8x^2-12x^3)/(1-2x+x^4))` -/
def P517990862271049815.Spec : Prop :=
  ∀ n, P517990862271049815.a n = A000803 n

end A000803

/-! ## A000803.P10674870317702186638

`2*a(n-1)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=8, a(3)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000803

/-- `2*a(n-1)-a(n-4)` -/
def P10674870317702186638.Spec : Prop :=
  ∀ n, P10674870317702186638.a n = A000803 n

theorem P10674870317702186638.correct : P10674870317702186638.Spec := by
  intro n
  simp only [A000803]

end A000803

/-! ## A000803.P12159345875794342038

`a(n-1)+a(n-1)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=8, a(3)=4`
-/

namespace A000803.P12159345875794342038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 8, 4] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 4))

end

end A000803.P12159345875794342038

namespace A000803

/-- `a(n-1)+a(n-1)-a(n-4)` -/
def P12159345875794342038.Spec : Prop :=
  ∀ n, P12159345875794342038.a n = A000803 n

theorem P12159345875794342038.correct : P12159345875794342038.Spec := by
  intro n
  simp only [A000803, Nat.add_sub_cancel, A000803.P12159345875794342038.a, A000803.P10674870317702186638.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000803

/-! ## A000803.P13055170492819524531

`4*(∑[A081172(n)]-A276658(n))`
-/

namespace A000803.P13055170492819524531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j - A276658 n)

end

end A000803.P13055170492819524531

namespace A000803

/-- `4*(∑[A081172(n)]-A276658(n))` -/
def P13055170492819524531.Spec : Prop :=
  ∀ n, P13055170492819524531.a n = A000803 n

end A000803

/-! ## A000803.P3361743241631785046

`Δ[Δ[Δ[A001644(n)]]]+2`
-/

namespace A000803.P3361743241631785046
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A000803.P3361743241631785046

namespace A000803

/-- `Δ[Δ[Δ[A001644(n)]]]+2` -/
def P3361743241631785046.Spec : Prop :=
  ∀ n, P3361743241631785046.a n = A000803 n

end A000803

/-! ## A000803.P13150235521174274337

`A004306(n+6)%Δ[A004306(n+4)]`
-/

namespace A000803.P13150235521174274337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004306 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004306 (n + 6)) (f1 (n + 1) - f1 n)

end

end A000803.P13150235521174274337

namespace A000803

/-- `A004306(n+6)%Δ[A004306(n+4)]` -/
def P13150235521174274337.Spec : Prop :=
  ∀ n, P13150235521174274337.a n = A000803 n

end A000803

/-!
# A000804: Permanent of a certain cyclic n X n (0,1) matrix.

The programs for A000804, there is no canonical definition to state claims against.
-/

/-! ## A000804.P2993226095996063739

`n!%A018717(2*n+3)`
-/

namespace A000804.P2993226095996063739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial n : ℤ) (A018717 (2 * n + 3))

end

end A000804.P2993226095996063739

/-! ## A000804.P12422527788626483794

`A004890(n+1)!%∑[16*n+17]`
-/

namespace A000804.P12422527788626483794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004890 (n + 1)).toNat % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000804.P12422527788626483794

/-! ## A000804.P115613782349157829

`A154657(n)%A242139(A320891(n+3))`
-/

namespace A000804.P115613782349157829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154657 n) (A242139 (A320891 (n + 3)).toNat)

end

end A000804.P115613782349157829

/-!
# A000805: Permanent of a certain cyclic n X n (0,1) matrix.

The programs for A000805, there is no canonical definition to state claims against.
-/

/-! ## A000805.P18238108510776346092

`A321352(∑[A327105(abs(1-n)+1)-1])`
-/

namespace A000805.P18238108510776346092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327105 (|1 - (n : ℤ)| + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321352 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000805.P18238108510776346092

/-! ## A000805.P12731848334608717676

`A134830(∑[∑[A360540(n+1)]])`
-/

namespace A000805.P12731848334608717676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360540 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134830 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000805.P12731848334608717676

/-! ## A000805.P2435385667871222467

`A000142(n)-A187795(A352624(n))`
-/

namespace A000805.P2435385667871222467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A187795 (A352624 n).toNat

end

end A000805.P2435385667871222467

/-!
# A000806: Bessel polynomial y_n(-1).

The programs for A000806, the canonical program `A000806.P3152561134090640533` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000806 has offset 0).

The definition of A000806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000806.P3152561134090640533

`∑{#}[n, A001498(C(n+1, 2)+#)*(-1)^#]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000806

/-- `∑{#}[n, A001498(C(n+1, 2)+#)*(-1)^#]` -/
def P3152561134090640533.Spec : Prop :=
  ∀ n, P3152561134090640533.a n = A000806 n

theorem P3152561134090640533.correct : P3152561134090640533.Spec := by
  intro n
  simp only [A000806]

end A000806

/-! ## A000806.P12900742996096838960

`a(n-2)+(1-2*n)*a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A000806.P12900742996096838960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (1 - (2 * n : ℤ)) * a (n - 1)

end

end A000806.P12900742996096838960

namespace A000806

/-- `a(n-2)+(1-2*n)*a(n-1)` -/
def P12900742996096838960.Spec : Prop :=
  ∀ n, P12900742996096838960.a n = A000806 n

end A000806

/-! ## A000806.P6945281082720710030

`a(n-2)-a(n-1)*(2*n-1)` with `a(0)=1, a(1)=0`
-/

namespace A000806.P6945281082720710030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) - a (n - 1) * ((2 * n : ℤ) - 1)

end

end A000806.P6945281082720710030

namespace A000806

/-- `a(n-2)-a(n-1)*(2*n-1)` -/
def P6945281082720710030.Spec : Prop :=
  ∀ n, P6945281082720710030.a n = A000806 n

end A000806

/-! ## A000806.P10943631549950980481

`(-1)^n*A278990(n)`
-/

namespace A000806.P10943631549950980481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A278990 n

end

end A000806.P10943631549950980481

namespace A000806

/-- `(-1)^n*A278990(n)` -/
def P10943631549950980481.Spec : Prop :=
  ∀ n, P10943631549950980481.a n = A000806 n

end A000806

/-! ## A000806.P1412860494599894578

`A278990(n)/A033999(n)`
-/

namespace A000806.P1412860494599894578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278990 n : ℚ) / (A033999 n : ℚ)

end

end A000806.P1412860494599894578

namespace A000806

/-- `A278990(n)/A033999(n)` -/
def P1412860494599894578.Spec : Prop :=
  ∀ n, P1412860494599894578.a n = (A000806 n : ℚ)

end A000806

/-! ## A000806.P10148770372604439383

`A033999(n)*A079267(∑[n])`
-/

namespace A000806.P10148770372604439383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A079267 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000806.P10148770372604439383

namespace A000806

/-- `A033999(n)*A079267(∑[n])` -/
def P10148770372604439383.Spec : Prop :=
  ∀ n, P10148770372604439383.a n = A000806 n

end A000806

/-!
# A000807: Quadratic invariants.

The programs for A000807, the canonical program `A000807.P13665742987088507465` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000807 has offset 0).

The definition of A000807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000807.P1487206817042479278

`∑{#}[2*n, (-1)^#*A033306(C(2*n+1, 2)+#)]`
-/

namespace A000807.P1487206817042479278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * A033306 (Nat.choose (2 * n + 1) 2 + k)

end

end A000807.P1487206817042479278

namespace A000807

/-- `∑{#}[2*n, (-1)^#*A033306(C(2*n+1, 2)+#)]` -/
def P1487206817042479278.Spec : Prop :=
  ∀ n, P1487206817042479278.a n = A000807 n

end A000807

/-! ## A000807.P13665742987088507465

`∑{#}[2*n, (-1)^#*C(2*n, #)*A000110(#)*A000110(2*n-#)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000807

/-- `∑{#}[2*n, (-1)^#*C(2*n, #)*A000110(#)*A000110(2*n-#)]` -/
def P13665742987088507465.Spec : Prop :=
  ∀ n, P13665742987088507465.a n = A000807 n

theorem P13665742987088507465.correct : P13665742987088507465.Spec := by
  intro n
  simp only [A000807]

end A000807

/-! ## A000807.P2479852317739142473

`record[A081563(n)-Δ[A081562(n)]]`
-/

namespace A000807.P2479852317739142473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081562 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081563 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000807.P2479852317739142473

namespace A000807

/-- `record[A081563(n)-Δ[A081562(n)]]` -/
def P2479852317739142473.Spec : Prop :=
  ∀ n, P2479852317739142473.a n = A000807 n

end A000807

/-! ## A000807.P82710423058893304

`A081562(2*n)+A081563(2*n)-A081562(2*n+1)`
-/

namespace A000807.P82710423058893304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081562 (2 * n) + (A081563 (2 * n) - A081562 (2 * n + 1))

end

end A000807.P82710423058893304

namespace A000807

/-- `A081562(2*n)+A081563(2*n)-A081562(2*n+1)` -/
def P82710423058893304.Spec : Prop :=
  ∀ n, P82710423058893304.a n = A000807 n

end A000807

/-!
# A000810: Expansion of e.g.f. (sin x + cos x)/cos 3x.

The programs for A000810, there is no canonical definition to state claims against.
-/

/-! ## A000810.P10953618644887608996

`A202692(∑[1+n])`
-/

namespace A000810.P10953618644887608996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202692 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000810.P10953618644887608996

/-! ## A000810.P9538257031195653961

`A202693(∑[n]+1)`
-/

namespace A000810.P9538257031195653961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202693 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000810.P9538257031195653961

/-! ## A000810.P14750716247710921878

`A202693(A000217(n)+1)^ceil(acot(n))`
-/

namespace A000810.P14750716247710921878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202693 (A000217 n + 1).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A000810.P14750716247710921878

/-! ## A000810.P9510066428844790

`gcd(A000038(n), A202693(A000124(n)))`
-/

namespace A000810.P9510066428844790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A202693 (A000124 n).toNat)

end

end A000810.P9510066428844790

/-! ## A000810.P11014323568248273472

`or(A000007(n), A202693(A000124(n)))`
-/

namespace A000810.P11014323568248273472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A202693 (A000124 n).toNat)

end

end A000810.P11014323568248273472

/-! ## A000810.P4958609132687292981

`A000034(2*n)*A202693(A000124(n))`
-/

namespace A000810.P4958609132687292981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A202693 (A000124 n).toNat

end

end A000810.P4958609132687292981

/-! ## A000810.P880085596656309886

`A089612(2*n+1)*A202693(A000124(n))`
-/

namespace A000810.P880085596656309886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089612 (2 * n + 1) * A202693 (A000124 n).toNat

end

end A000810.P880085596656309886

/-!
# A000811: Number of switching networks (see Harrison reference for precise definition).

The programs for A000811, there is no canonical definition to state claims against.
-/

/-! ## A000811.P13774989597586920756

`4*A000841(n+1)`
-/

namespace A000811.P13774989597586920756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000841 (n + 1)

end

end A000811.P13774989597586920756

/-!
# A000812: Number of switching networks (see Harrison reference for precise definition).

The programs for A000812, there is no canonical definition to state claims against.
-/

/-! ## A000812.P7544384248094466069

`8*A000842(n+1)`
-/

namespace A000812.P7544384248094466069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000842 (n + 1)

end

end A000812.P7544384248094466069

/-!
# A000813: Expansion of (sin x + cos x)/cos 4x.

The programs for A000813, there is no canonical definition to state claims against.
-/

/-! ## A000813.P12814238319842387048

`abs(A156205(n))`
-/

namespace A000813.P12814238319842387048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156205 n|

end

end A000813.P12814238319842387048

/-! ## A000813.P15630401403714205175

`A087960(n)*A156205(n)`
-/

namespace A000813.P15630401403714205175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A156205 n

end

end A000813.P15630401403714205175

/-! ## A000813.P16433049562087156630

`A033999(∑[n])*A156205(n)`
-/

namespace A000813.P16433049562087156630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (∑ j ∈ Finset.range (n + 1), f1 j) * A156205 n

end

end A000813.P16433049562087156630

/-! ## A000813.P2462224200622343732

`∏[A033999(n)]*A156205(n)`
-/

namespace A000813.P2462224200622343732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A156205 n

end

end A000813.P2462224200622343732

/-! ## A000813.P9151388953381105140

`A156187(n)%2*A156205(n)`
-/

namespace A000813.P9151388953381105140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156187 n) 2 * A156205 n

end

end A000813.P9151388953381105140

/-! ## A000813.P11336830069717698729

`A156201(n)%2*A156205(n)`
-/

namespace A000813.P11336830069717698729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156201 n) 2 * A156205 n

end

end A000813.P11336830069717698729

/-! ## A000813.P14307545387090960751

`lcm(-A156205(n), A093148(n+1))`
-/

namespace A000813.P14307545387090960751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A156205 n) (A093148 (n + 1))

end

end A000813.P14307545387090960751

/-! ## A000813.P4971760121690538565

`lcm(A008683(∏{p}[n+1, #]), A156205(n))`
-/

namespace A000813.P4971760121690538565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A156205 n)

end

end A000813.P4971760121690538565

/-! ## A000813.P17840745971249211859

`lcm(A007318(A000096(n)), A156205(n))`
-/

namespace A000813.P17840745971249211859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (A000096 n).toNat) (A156205 n)

end

end A000813.P17840745971249211859

/-!
# A000814: Number of switching networks (see Harrison reference for precise definition).

The programs for A000814, there is no canonical definition to state claims against.
-/

/-! ## A000814.P1959506528440369256

`A325013(A141214(n+1))`
-/

namespace A000814.P1959506528440369256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325013 (A141214 (n + 1)).toNat

end

end A000814.P1959506528440369256

/-! ## A000814.P1358266592781822588

`A325013(A020752(n)+2*n)`
-/

namespace A000814.P1358266592781822588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325013 (A020752 n + (2 * n : ℤ)).toNat

end

end A000814.P1358266592781822588

/-! ## A000814.P8382773339297046421

`A325013(A167614(n+1)+A005408(n))`
-/

namespace A000814.P8382773339297046421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325013 (A167614 (n + 1) + A005408 n).toNat

end

end A000814.P8382773339297046421

/-!
# A000816: E.g.f.: Sum_{n >= 0} a(n) * x^(2*n) / (2*n)! = sin(x)^2 / cos(2*x).

The programs for A000816, there is no canonical definition to state claims against.
-/

/-! ## A000816.P8310879076286292664

`A000822(2*n)`
-/

namespace A000816.P8310879076286292664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000822 (2 * n)

end

end A000816.P8310879076286292664

/-! ## A000816.P17721517272505958824

`and(-2, A000819(n))`
-/

namespace A000816.P17721517272505958824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A000819 n)

end

end A000816.P17721517272505958824

/-! ## A000816.P16139847492357747876

`floor(A002436(n)/2)`
-/

namespace A000816.P16139847492357747876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002436 n : ℚ) / 2⌋

end

end A000816.P16139847492357747876

/-! ## A000816.P8077002369871362338

`abs(2*A009569(2*n))`
-/

namespace A000816.P8077002369871362338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A009569 (2 * n)|

end

end A000816.P8077002369871362338

/-! ## A000816.P14140294032129596537

`and(-2, A000828(2*n))`
-/

namespace A000816.P14140294032129596537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A000828 (2 * n))

end

end A000816.P14140294032129596537

/-!
# A000817: Number of switching networks under action of GL_n(Z_2) acting on 2 variables.

The programs for A000817, there is no canonical definition to state claims against.
-/

/-! ## A000817.P16751290357946451357

`4*A000847(n+1)`
-/

namespace A000817.P16751290357946451357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000847 (n + 1)

end

end A000817.P16751290357946451357

/-!
# A000818: Number of switching networks under action of GL_n(Z_2) acting on 3 variables.

The programs for A000818, there is no canonical definition to state claims against.
-/

/-! ## A000818.P8823933451696767451

`8*A000848(n+1)`
-/

namespace A000818.P8823933451696767451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000848 (n + 1)

end

end A000818.P8823933451696767451

/-!
# A000819: E.g.f.: cos(x)^2 / cos(2x) = Sum_{n >= 0} a(n) * x^(2n) / (2n)!.

The programs for A000819, there is no canonical definition to state claims against.
-/

/-! ## A000819.P17069107736713582563

`A000828(2*n)`
-/

namespace A000819.P17069107736713582563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000828 (2 * n)

end

end A000819.P17069107736713582563

/-! ## A000819.P18307441827920475390

`ceil(A002436(n)/2)`
-/

namespace A000819.P18307441827920475390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002436 n : ℚ) / 2⌉

end

end A000819.P18307441827920475390

/-! ## A000819.P1712977812177137248

`ceil(A000831(2*n)/2)`
-/

namespace A000819.P1712977812177137248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000831 (2 * n) : ℚ) / 2⌉

end

end A000819.P1712977812177137248

/-! ## A000819.P5708241699862624896

`ceil(A003707(Δ[n²])/2)`
-/

namespace A000819.P5708241699862624896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003707 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌉

end

end A000819.P5708241699862624896

/-! ## A000819.P11431729599525960463

`record[ceil(A003707(n+1)/2)]`
-/

namespace A000819.P11431729599525960463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003707 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000819.P11431729599525960463

/-!
# A000822: Expansion of (sin^2 x + sin x) /cos 2x.

The programs for A000822, there is no canonical definition to state claims against.
-/

/-! ## A000822.P10958979421617443370

`∪[A000464(n), A000816(n)]`
-/

namespace A000822.P10958979421617443370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000464 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000816 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000822.P10958979421617443370

/-! ## A000822.P9318154548548390705

`(A218260(n)/A000825(n))%A000831(n)`
-/

namespace A000822.P9318154548548390705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A218260 n : ℚ) / (A000825 n : ℚ))) (A000831 n)

end

end A000822.P9318154548548390705

/-! ## A000822.P8631595591431994142

`(A000828(n)*A001586(n)/A000825(n))%A000831(n)`
-/

namespace A000822.P8631595591431994142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000828 n * A001586 n : ℚ) / (A000825 n : ℚ))) (A000831 n)

end

end A000822.P8631595591431994142

/-! ## A000822.P11338753992844015231

`A256665(A266259(n))`
-/

namespace A000822.P11338753992844015231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256665 (A266259 n).toNat

end

end A000822.P11338753992844015231

/-! ## A000822.P3510864530138218775

`A256665(A266304(n))`
-/

namespace A000822.P3510864530138218775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256665 (A266304 n).toNat

end

end A000822.P3510864530138218775

/-!
# A000823: Number of switching networks (see Harrison reference for precise definition).

The programs for A000823, there is no canonical definition to state claims against.
-/

/-! ## A000823.P4101319611683657092

`A000231(n+2)`
-/

namespace A000823.P4101319611683657092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000231 (n + 2)

end

end A000823.P4101319611683657092

/-!
# A000825: Expansion of cos x (1 + sin x ) /cos 2x.

The programs for A000825, there is no canonical definition to state claims against.
-/

/-! ## A000825.P9855129895662064775

`A394320(A165157(n+1))`
-/

namespace A000825.P9855129895662064775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394320 (A165157 (n + 1)).toNat

end

end A000825.P9855129895662064775

/-! ## A000825.P252829611797528328

`A001586(n)-A000822(n)%A000828(n)`
-/

namespace A000825.P252829611797528328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001586 n - Int.tmod (A000822 n) (A000828 n)

end

end A000825.P252829611797528328

/-! ## A000825.P4541739614902299934

`A000828(n)+A001586(n)-A000822(A028310(n))`
-/

namespace A000825.P4541739614902299934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000828 n + (A001586 n - A000822 (A028310 n).toNat)

end

end A000825.P4541739614902299934

/-! ## A000825.P6401379161477258719

`A218260(n)/A000822(A028310(n))`
-/

namespace A000825.P6401379161477258719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218260 n : ℚ) / (A000822 (A028310 n).toNat : ℚ)

end

end A000825.P6401379161477258719

/-! ## A000825.P14350547873624945746

`abs(A256679(A266304(n)))`
-/

namespace A000825.P14350547873624945746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256679 (A266304 n).toNat|

end

end A000825.P14350547873624945746

/-!
# A000828: E.g.f. cos(x)/(cos(x) - sin(x)).

The programs for A000828, there is no canonical definition to state claims against.
-/

/-! ## A000828.P10313304815493837692

`ceil(A000831(n)/2)`
-/

namespace A000828.P10313304815493837692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000831 n : ℚ) / 2⌉

end

end A000828.P10313304815493837692

/-! ## A000828.P9659743986241680983

`ceil(2^(n-1)*A000111(n))`
-/

namespace A000828.P9659743986241680983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000111 n : ℚ)⌉

end

end A000828.P9659743986241680983

/-! ## A000828.P18213927601702362685

`A000831(abs((2^n)%2-n))/2`
-/

namespace A000828.P18213927601702362685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000831 |((2 ^ n % 2 : ℕ) : ℤ) - (n : ℤ)|.toNat : ℚ) / 2

end

end A000828.P18213927601702362685

/-! ## A000828.P7944020545916562754

`ceil(2^(n-1))*A147315(C(n, 2))`
-/

namespace A000828.P7944020545916562754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A147315 (Nat.choose n 2)

end

end A000828.P7944020545916562754

/-! ## A000828.P9984492727417884964

`A000831(A028310(n))/2`
-/

namespace A000828.P9984492727417884964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000831 (A028310 n).toNat : ℚ) / 2

end

end A000828.P9984492727417884964

/-! ## A000828.P17335784486858419728

`A000111(n)*A011782(n)`
-/

namespace A000828.P17335784486858419728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A011782 n

end

end A000828.P17335784486858419728

/-! ## A000828.P5542797742133993732

`A000831(n)/A040000(n)`
-/

namespace A000828.P5542797742133993732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000831 n : ℚ) / (A040000 n : ℚ)

end

end A000828.P5542797742133993732

/-! ## A000828.P12997760921210655968

`Δ[A094373(n)]*A000111(n)`
-/

namespace A000828.P12997760921210655968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000111 n

end

end A000828.P12997760921210655968

/-! ## A000828.P17522810886353704918

`Δ[A131577(n)]*A000111(n)`
-/

namespace A000828.P17522810886353704918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000111 n

end

end A000828.P17522810886353704918

/-!
# A000831: Expansion of e.g.f. (1 + tan(x))/(1 - tan(x)).

The programs for A000831, there is no canonical definition to state claims against.
-/

/-! ## A000831.P16220755651407772896

`2^n*A000111(n)`
-/

namespace A000831.P16220755651407772896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000111 n

end

end A000831.P16220755651407772896

/-! ## A000831.P11377907695413378582

`abs(2^n*A346838(n))`
-/

namespace A000831.P11377907695413378582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) * A346838 n|

end

end A000831.P11377907695413378582

/-! ## A000831.P7795744236949251326

`2^n*A109449(∑[n])`
-/

namespace A000831.P7795744236949251326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A109449 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000831.P7795744236949251326

/-! ## A000831.P11897456276032896298

`abs(A247453(∑[n]))*2^n`
-/

namespace A000831.P11897456276032896298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247453 (∑ j ∈ Finset.range (n + 1), f1 j)| * (2 ^ n : ℤ)

end

end A000831.P11897456276032896298

/-! ## A000831.P138512221468345795

`2^n*A008282(∑[n]+1)`
-/

namespace A000831.P138512221468345795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A008282 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000831.P138512221468345795

/-! ## A000831.P8368570932403784859

`2^n*A181937(∑[n]+n)`
-/

namespace A000831.P8368570932403784859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A181937 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000831.P8368570932403784859

/-! ## A000831.P7778185811185432147

`2^n*A292975(∑[n]+n)`
-/

namespace A000831.P7778185811185432147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A292975 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000831.P7778185811185432147

/-! ## A000831.P3354184213099185819

`((∏[n+2]+1)%3+1)*A000828(n)`
-/

namespace A000831.P3354184213099185819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j + 1) % 3 + 1 : ℕ) : ℤ) * A000828 n

end

end A000831.P3354184213099185819

/-! ## A000831.P4470426067124580843

`A000828(n)*A040000(n)`
-/

namespace A000831.P4470426067124580843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000828 n * A040000 n

end

end A000831.P4470426067124580843

/-! ## A000831.P3291113768046214682

`A000111(n)*A011782(n+1)`
-/

namespace A000831.P3291113768046214682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A011782 (n + 1)

end

end A000831.P3291113768046214682

/-!
# A000834: Expansion of e.g.f. exp(x)*(1 + tan(x))/(1 - tan(x)).

The programs for A000834, there is no canonical definition to state claims against.
-/

/-! ## A000834.P7607432299009440109

`∑{#}[n, C(n, #)*A000831(n-#)]`
-/

namespace A000834.P7607432299009440109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A000831 (n - k)

end

end A000834.P7607432299009440109

/-! ## A000834.P9753855295119986978

`A117437(n)+2*A084098(n)`
-/

namespace A000834.P9753855295119986978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117437 n + 2 * A084098 n

end

end A000834.P9753855295119986978

/-! ## A000834.P6637142317918787212

`2*A117437(n)-A343843(n)`
-/

namespace A000834.P6637142317918787212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117437 n - A343843 n

end

end A000834.P6637142317918787212

/-! ## A000834.P7448260810049566821

`A343843(n)+4*A084098(n)`
-/

namespace A000834.P7448260810049566821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343843 n + 4 * A084098 n

end

end A000834.P7448260810049566821

/-!
# A000837: Number of partitions of n into relatively prime parts. Also aperiodic partitions.

The programs for A000837, there is no canonical definition to state claims against.
-/

/-! ## A000837.P6312958070173476856

`A000041(n)-A018783(n)`
-/

namespace A000837.P6312958070173476856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A018783 n

end

end A000837.P6312958070173476856

/-! ## A000837.P13773766292335796554

`A338553(n)-A032741(n)`
-/

namespace A000837.P13773766292335796554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338553 n - A032741 n

end

end A000837.P13773766292335796554

/-! ## A000837.P16960157907322590763

`A167934(n)-A338554(n)`
-/

namespace A000837.P16960157907322590763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167934 n - A338554 n

end

end A000837.P16960157907322590763

/-! ## A000837.P17400490606178163822

`∑{d}[A028310(n), A100953(#)]`
-/

namespace A000837.P17400490606178163822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A100953 d

end

end A000837.P17400490606178163822

/-! ## A000837.P3526235879633776607

`∑[A002865(n)]-A018783(n)`
-/

namespace A000837.P3526235879633776607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A018783 n

end

end A000837.P3526235879633776607

/-! ## A000837.P7131980778066504675

`A000065(n)+1-A018783(n)`
-/

namespace A000837.P7131980778066504675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A018783 n)

end

end A000837.P7131980778066504675

/-! ## A000837.P4371339628016465824

`A133041(n)-(A018783(n)+n)`
-/

namespace A000837.P4371339628016465824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A018783 n + (n : ℤ))

end

end A000837.P4371339628016465824

/-! ## A000837.P5026378663068795406

`∑[A232697(n)]-(A018783(n)+n)`
-/

namespace A000837.P5026378663068795406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A018783 n + (n : ℤ))

end

end A000837.P5026378663068795406

/-! ## A000837.P7684101379191089236

`1-(A018783(n)-A000065(A028310(n)))`
-/

namespace A000837.P7684101379191089236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A018783 n - A000065 (A028310 n).toNat)

end

end A000837.P7684101379191089236

/-! ## A000837.P16291211343692729133

`A000009(n)+A047967(n)-A018783(n)`
-/

namespace A000837.P16291211343692729133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A018783 n)

end

end A000837.P16291211343692729133

/-! ## A000837.P4639647019889046323

`A035363(n)+A086543(n)-A018783(n)`
-/

namespace A000837.P4639647019889046323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A086543 n - A018783 n)

end

end A000837.P4639647019889046323

/-! ## A000837.P5844518999907228606

`A000726(n)+A295341(n)-A018783(n)`
-/

namespace A000837.P5844518999907228606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A018783 n)

end

end A000837.P5844518999907228606

/-! ## A000837.P12962310597518433308

`A338553(n)+A338554(n)-A018783(n)`
-/

namespace A000837.P12962310597518433308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338553 n + (A338554 n - A018783 n)

end

end A000837.P12962310597518433308

/-! ## A000837.P16142928568894653283

`∑{d}[n+1-A066922(A100549(n+1)), A100953(#)]`
-/

namespace A000837.P16142928568894653283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A066922 (A100549 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A100953 d

end

end A000837.P16142928568894653283

/-! ## A000837.P127378287394139820

`A139582(n)/2-A018783(n)`
-/

namespace A000837.P127378287394139820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A018783 n : ℚ)

end

end A000837.P127378287394139820

/-! ## A000837.P2619695541791986381

`A035363(2*n)-A018783(n)`
-/

namespace A000837.P2619695541791986381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A018783 n

end

end A000837.P2619695541791986381

/-! ## A000837.P17449483817094700903

`A119620(2*n)-A018783(n)`
-/

namespace A000837.P17449483817094700903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A018783 n

end

end A000837.P17449483817094700903

/-! ## A000837.P16194664008052595639

`∑{d}[A065033(2*n), A100953(#)]`
-/

namespace A000837.P16194664008052595639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A100953 d

end

end A000837.P16194664008052595639

/-! ## A000837.P6428214811845590166

`A035377(3*n)-A018783(n)`
-/

namespace A000837.P6428214811845590166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * n) - A018783 n

end

end A000837.P6428214811845590166

/-! ## A000837.P8019894186174371916

`sqrt(A001255(n))-A018783(n)`
-/

namespace A000837.P8019894186174371916
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A018783 n : ℝ)

end

end A000837.P8019894186174371916

/-!
# A000840: Number of cubic bicolored graphs on n unlabeled nodes admitting an automorphism exchanging the colors.

The programs for A000840, there is no canonical definition to state claims against.
-/

/-! ## A000840.P16318355848073759892

`2*A004066(n+1)-A000512(n+1)`
-/

namespace A000840.P16318355848073759892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004066 (n + 1) - A000512 (n + 1)

end

end A000840.P16318355848073759892

/-! ## A000840.P9986564744689936701

`A005843(A004066(n+1))-A000512(n+1)`
-/

namespace A000840.P9986564744689936701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A004066 (n + 1)).toNat - A000512 (n + 1)

end

end A000840.P9986564744689936701

/-! ## A000840.P6319135357574221721

`A052146(or(n, A005638(n)))`
-/

namespace A000840.P6319135357574221721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (Int.lor (n : ℤ) (A005638 n)).toNat

end

end A000840.P6319135357574221721

/-! ## A000840.P13291729143586089627

`∑[A142876(n)%A030227(n+1)]`
-/

namespace A000840.P13291729143586089627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142876 n) (A030227 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000840.P13291729143586089627

/-! ## A000840.P7252094670121599120

`A003056(A000701(A000009(2*n)))`
-/

namespace A000840.P7252094670121599120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000701 (A000009 (2 * n)).toNat).toNat

end

end A000840.P7252094670121599120

/-!
# A000841: Number of n-input 2-output switching networks under action of symmetric group S(n) on the inputs and complementing group C(2,2) on the outputs.

The programs for A000841, there is no canonical definition to state claims against.
-/

/-! ## A000841.P7387287289479879586

`A000811(n+1)/4`
-/

namespace A000841.P7387287289479879586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000811 (n + 1) : ℚ) / 4

end

end A000841.P7387287289479879586

/-!
# A000842: Number of n-input 3-output switching networks under action of symmetric group S(n) on the inputs and complementing group C(3,2) on the outputs.

The programs for A000842, there is no canonical definition to state claims against.
-/

/-! ## A000842.P17336996486027063631

`A000812(n+1)/8`
-/

namespace A000842.P17336996486027063631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000812 (n + 1) : ℚ) / 8

end

end A000842.P17336996486027063631

/-!
# A000843: Number of quartic bicolored graphs on n unlabeled nodes admitting an automorphism exchanging the colors.

The programs for A000843, there is no canonical definition to state claims against.
-/

/-! ## A000843.P11078224264615231837

`A333159(A145018(n+2))%A003483(n)`
-/

namespace A000843.P11078224264615231837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333159 (A145018 (n + 2)).toNat) (A003483 n)

end

end A000843.P11078224264615231837

/-!
# A000846: a(n) = C(3n,n) - C(2n,n).

The programs for A000846, the canonical program `A000846.P3216828975379126423` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000846 has offset 0).

The definition of A000846 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*n, n)-C(2*n, n)` (program `A000846.P3216828975379126423`, by `A000846.P3216828975379126423.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000846.P4552688031628325059

`∑{#}[n-1, C(n, #+1)*C(2*n, n-(#+1))]`
-/

namespace A000846.P4552688031628325059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose n (k + 1) * Nat.choose (2 * n) ((n : ℤ) - (k + 1 : ℤ)).toNat

end

end A000846.P4552688031628325059

namespace A000846

/-- `∑{#}[n-1, C(n, #+1)*C(2*n, n-(#+1))]` -/
def P4552688031628325059.Spec : Prop :=
  ∀ n, (P4552688031628325059.a n : ℤ) = A000846 n

end A000846

/-! ## A000846.P14698060758087261568

`A005809(n)-A000984(n)`
-/

namespace A000846.P14698060758087261568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - A000984 n

end

end A000846.P14698060758087261568

namespace A000846

/-- `A005809(n)-A000984(n)` -/
def P14698060758087261568.Spec : Prop :=
  ∀ n, P14698060758087261568.a n = A000846 n

end A000846

/-! ## A000846.P3216828975379126423

`C(3*n, n)-C(2*n, n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000846

/-- `C(3*n, n)-C(2*n, n)` -/
def P3216828975379126423.Spec : Prop :=
  ∀ n, P3216828975379126423.a n = A000846 n

theorem P3216828975379126423.correct : P3216828975379126423.Spec := by
  intro n
  simp only [A000846]

end A000846

/-! ## A000846.P18150159871330659642

`A005809(n)-C(2*n, n)`
-/

namespace A000846.P18150159871330659642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - (Nat.choose (2 * n) n : ℤ)

end

end A000846.P18150159871330659642

namespace A000846

/-- `A005809(n)-C(2*n, n)` -/
def P18150159871330659642.Spec : Prop :=
  ∀ n, P18150159871330659642.a n = A000846 n

end A000846

/-! ## A000846.P3772845916867895644

`A065942(2*n)-record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=1`
-/

namespace A000846.P3772845916867895644
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065942 (2 * n) : ℚ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000846.P3772845916867895644

namespace A000846

/-- `A065942(2*n)-record[a(n-1)/(floor(n/2)/n-1)]` -/
def P3772845916867895644.Spec : Prop :=
  ∀ n, P3772845916867895644.a n = (A000846 n : ℚ)

end A000846

/-! ## A000846.P4770606893382097027

`A081204(2*n)-record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=1`
-/

namespace A000846.P4770606893382097027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081204 (2 * n) : ℚ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000846.P4770606893382097027

namespace A000846

/-- `A081204(2*n)-record[a(n-1)/(floor(n/2)/n-1)]` -/
def P4770606893382097027.Spec : Prop :=
  ∀ n, P4770606893382097027.a n = (A000846 n : ℚ)

end A000846

/-! ## A000846.P4461672599830640082

`A051033(3*n)-record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=1`
-/

namespace A000846.P4461672599830640082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051033 (3 * n) : ℚ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000846.P4461672599830640082

namespace A000846

/-- `A051033(3*n)-record[a(n-1)/(floor(n/2)/n-1)]` -/
def P4461672599830640082.Spec : Prop :=
  ∀ n, P4461672599830640082.a n = (A000846 n : ℚ)

end A000846

/-! ## A000846.P1423322637107696051

`A303259(2*n+1)-record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=1`
-/

namespace A000846.P1423322637107696051
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303259 (2 * n + 1) : ℚ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000846.P1423322637107696051

namespace A000846

/-- `A303259(2*n+1)-record[a(n-1)/(floor(n/2)/n-1)]` -/
def P1423322637107696051.Spec : Prop :=
  ∀ n, P1423322637107696051.a n = (A000846 n : ℚ)

end A000846

/-! ## A000846.P17099541642141783324

`A005809(n)-A092392(∑[n])`
-/

namespace A000846.P17099541642141783324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - A092392 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000846.P17099541642141783324

namespace A000846

/-- `A005809(n)-A092392(∑[n])` -/
def P17099541642141783324.Spec : Prop :=
  ∀ n, P17099541642141783324.a n = A000846 n

end A000846

/-! ## A000846.P17190009559291225558

`A264772(∑[n])-A000984(n)`
-/

namespace A000846.P17190009559291225558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 (∑ j ∈ Finset.range (n + 1), f1 j) - A000984 n

end

end A000846.P17190009559291225558

namespace A000846

/-- `A264772(∑[n])-A000984(n)` -/
def P17190009559291225558.Spec : Prop :=
  ∀ n, P17190009559291225558.a n = A000846 n

end A000846

/-! ## A000846.P7027612709330501347

`A005809(n)-record[A081668(n)]`
-/

namespace A000846.P7027612709330501347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000846.P7027612709330501347

namespace A000846

/-- `A005809(n)-record[A081668(n)]` -/
def P7027612709330501347.Spec : Prop :=
  ∀ n, P7027612709330501347.a n = A000846 n

end A000846

/-! ## A000846.P7344840959341801584

`A005809(n)-record[A126869(n)]`
-/

namespace A000846.P7344840959341801584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000846.P7344840959341801584

namespace A000846

/-- `A005809(n)-record[A126869(n)]` -/
def P7344840959341801584.Spec : Prop :=
  ∀ n, P7344840959341801584.a n = A000846 n

end A000846

/-! ## A000846.P3829162652203418683

`A005809(n)-record[A126930(n)]`
-/

namespace A000846.P3829162652203418683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000846.P3829162652203418683

namespace A000846

/-- `A005809(n)-record[A126930(n)]` -/
def P3829162652203418683.Spec : Prop :=
  ∀ n, P3829162652203418683.a n = A000846 n

end A000846

/-! ## A000846.P18395436016827934542

`A005809(n)-A001405(2*n)`
-/

namespace A000846.P18395436016827934542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - A001405 (2 * n)

end

end A000846.P18395436016827934542

namespace A000846

/-- `A005809(n)-A001405(2*n)` -/
def P18395436016827934542.Spec : Prop :=
  ∀ n, P18395436016827934542.a n = A000846 n

end A000846

/-! ## A000846.P4789373536942786244

`A065942(2*n)-A000984(n)`
-/

namespace A000846.P4789373536942786244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 (2 * n) - A000984 n

end

end A000846.P4789373536942786244

namespace A000846

/-- `A065942(2*n)-A000984(n)` -/
def P4789373536942786244.Spec : Prop :=
  ∀ n, P4789373536942786244.a n = A000846 n

end A000846

/-! ## A000846.P2293704898408636330

`A005809(n)-A063886(2*n)`
-/

namespace A000846.P2293704898408636330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - A063886 (2 * n)

end

end A000846.P2293704898408636330

namespace A000846

/-- `A005809(n)-A063886(2*n)` -/
def P2293704898408636330.Spec : Prop :=
  ∀ n, P2293704898408636330.a n = A000846 n

end A000846

/-! ## A000846.P1614555211174544561

`A081204(2*n)-A000984(n)`
-/

namespace A000846.P1614555211174544561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081204 (2 * n) - A000984 n

end

end A000846.P1614555211174544561

namespace A000846

/-- `A081204(2*n)-A000984(n)` -/
def P1614555211174544561.Spec : Prop :=
  ∀ n, P1614555211174544561.a n = A000846 n

end A000846

/-! ## A000846.P15012758464191846805

`A005809(n)-A081668(2*n)`
-/

namespace A000846.P15012758464191846805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - A081668 (2 * n)

end

end A000846.P15012758464191846805

namespace A000846

/-- `A005809(n)-A081668(2*n)` -/
def P15012758464191846805.Spec : Prop :=
  ∀ n, P15012758464191846805.a n = A000846 n

end A000846

/-! ## A000846.P18129135236397513584

`A005809(n)-A126869(2*n)`
-/

namespace A000846.P18129135236397513584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - A126869 (2 * n)

end

end A000846.P18129135236397513584

namespace A000846

/-- `A005809(n)-A126869(2*n)` -/
def P18129135236397513584.Spec : Prop :=
  ∀ n, P18129135236397513584.a n = A000846 n

end A000846

/-! ## A000846.P16816972165333448403

`A005809(n)-A126930(2*n)`
-/

namespace A000846.P16816972165333448403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - A126930 (2 * n)

end

end A000846.P16816972165333448403

namespace A000846

/-- `A005809(n)-A126930(2*n)` -/
def P16816972165333448403.Spec : Prop :=
  ∀ n, P16816972165333448403.a n = A000846 n

end A000846

/-!
# A000847: Number of n-input 2-output switching networks under action of GL(n,2) on the inputs and complementing group C(2,2) on the outputs.

The programs for A000847, there is no canonical definition to state claims against.
-/

/-! ## A000847.P4783690353922022070

`A000817(n+1)/4`
-/

namespace A000847.P4783690353922022070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000817 (n + 1) : ℚ) / 4

end

end A000847.P4783690353922022070

/-!
# A000848: Number of n-input 3-output switching networks under action of GL(n,2) on the inputs and complementing group C(3,2) on the outputs.

The programs for A000848, there is no canonical definition to state claims against.
-/

/-! ## A000848.P15620945794162178401

`A000818(n+1)/8`
-/

namespace A000848.P15620945794162178401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000818 (n + 1) : ℚ) / 8

end

end A000848.P15620945794162178401

/-!
# A000849: Number of primes <= product of first n primes, A002110(n).

The programs for A000849, the canonical program `A000849.P3482926112530532576` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000849 has offset 0).

The definition of A000849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000849.P3482926112530532576

`A000720(A002110(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A000849

/-- `A000720(A002110(n))` -/
def P3482926112530532576.Spec : Prop :=
  ∀ n, P3482926112530532576.a n = A000849 n

theorem P3482926112530532576.correct : P3482926112530532576.Spec := by
  intro n
  simp only [A000849]

end A000849

/-! ## A000849.P5957611924444754428

`A048862(n)+n`
-/

namespace A000849.P5957611924444754428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048862 n + (n : ℤ)

end

end A000849.P5957611924444754428

namespace A000849

/-- `A048862(n)+n` -/
def P5957611924444754428.Spec : Prop :=
  ∀ n, P5957611924444754428.a n = A000849 n

theorem P5957611924444754428.correct : P5957611924444754428.Spec := by
  intro n
  simp only [A000849, Nat.add_sub_cancel, A000849.P5957611924444754428.a, A000849.P3482926112530532576.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A002110, A002110.P13704446489392701398.a, A048862, A048862.P7793812674722745711.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000849

/-! ## A000849.P1077274804410176475

`A057857(n)-A048863(n)`
-/

namespace A000849.P1077274804410176475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057857 n - A048863 n

end

end A000849.P1077274804410176475

namespace A000849

/-- `A057857(n)-A048863(n)` -/
def P1077274804410176475.Spec : Prop :=
  ∀ n, P1077274804410176475.a n = A000849 n

theorem P1077274804410176475.correct : P1077274804410176475.Spec := by
  intro n
  simp only [A000849, Nat.add_sub_cancel, A000849.P1077274804410176475.a, A000849.P3482926112530532576.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A002110, A002110.P13704446489392701398.a, A048863, A048863.P16974686868926745534.a, A057857, A057857.P7925582756686219733.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005867, A005867.P647413364839099534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000849

/-! ## A000849.P17350498732708843185

`A380404(n)-A380402(n)`
-/

namespace A000849.P17350498732708843185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380404 n - A380402 n

end

end A000849.P17350498732708843185

namespace A000849

/-- `A380404(n)-A380402(n)` -/
def P17350498732708843185.Spec : Prop :=
  ∀ n, P17350498732708843185.a n = A000849 n

end A000849

/-! ## A000849.P18230598336744307041

`A005867(n)+n-A048863(n)`
-/

namespace A000849.P18230598336744307041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005867 n + ((n : ℤ) - A048863 n)

end

end A000849.P18230598336744307041

namespace A000849

/-- `A005867(n)+n-A048863(n)` -/
def P18230598336744307041.Spec : Prop :=
  ∀ n, P18230598336744307041.a n = A000849 n

theorem P18230598336744307041.correct : P18230598336744307041.Spec := by
  intro n
  simp only [A000849, Nat.add_sub_cancel, A000849.P18230598336744307041.a, A000849.P3482926112530532576.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A002110, A002110.P13704446489392701398.a, A005867, A005867.P647413364839099534.a, A048863, A048863.P16974686868926745534.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000849

/-!
# A000855: Final two digits of 2^n.

The programs for A000855, the canonical program `A000855.P5728143529105024611` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000855 has offset 0).

The definition of A000855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000855.P5728143529105024611

`ogf((1+x+2x^2+4x^3+8x^4+16x^5+32x^6-36x^7+28x^8-44x^9+13x^10+25x^11+50x^12)/(1-x+x^10-x^11))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000855

/-- `ogf((1+x+2x^2+4x^3+8x^4+16x^5+32x^6-36x^7+28x^8-44x^9+13x^10+25x^11+50x^12)/(1-x+x^10-x^11))` -/
def P5728143529105024611.Spec : Prop :=
  ∀ n, P5728143529105024611.a n = A000855 n

theorem P5728143529105024611.correct : P5728143529105024611.Spec := by
  intro n
  simp only [A000855]

end A000855

/-!
# A000864: Deceptive nonprimes: composite numbers k that divide the repunit R_{k-1}.

The programs for A000864, there is no canonical definition to state claims against.
-/

/-! ## A000864.P5155314224109956931

`∩[A005939(n+1), A303608(n+1)]`
-/

namespace A000864.P5155314224109956931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000864.P5155314224109956931

/-! ## A000864.P17816970994200436657

`∩[A020228(n+1), A303608(n+1)]`
-/

namespace A000864.P17816970994200436657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000864.P17816970994200436657

/-! ## A000864.P1700345443954890881

`filter[A005939(n+1), A187074(#)]`
-/

namespace A000864.P1700345443954890881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A000864.P1700345443954890881

/-! ## A000864.P7815883630345051940

`filter[A005939(n+1), A359374(#)]`
-/

namespace A000864.P7815883630345051940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A000864.P7815883630345051940

/-! ## A000864.P14204979308800348262

`filter[A005939(n+1), A359377(#)]`
-/

namespace A000864.P14204979308800348262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A000864.P14204979308800348262

/-! ## A000864.P1381678239265051086

`filter[A005939(n+1), A372573(#)]`
-/

namespace A000864.P1381678239265051086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A000864.P1381678239265051086

/-! ## A000864.P5246506368304052293

`filter[A005939(n+1), A373139(#)]`
-/

namespace A000864.P5246506368304052293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373139 (f1 j).toNat = 1) n)

end

end A000864.P5246506368304052293

/-! ## A000864.P12802642815399694926

`filter[A005939(n+1), A373154(#)]`
-/

namespace A000864.P12802642815399694926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A000864.P12802642815399694926

/-! ## A000864.P2830336381316014939

`filter[A005939(n+1), A373155(#)]`
-/

namespace A000864.P2830336381316014939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A000864.P2830336381316014939

/-! ## A000864.P9909867187150695134

`filter[A005939(n+1), A373156(#)]`
-/

namespace A000864.P9909867187150695134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A000864.P9909867187150695134

/-!
# A000866: 2^n written in base 5.

The programs for A000866, there is no canonical definition to state claims against.
-/

/-! ## A000866.P8602930095329073054

`A055476(n)/A011557(n)`
-/

namespace A000866.P8602930095329073054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055476 n : ℚ) / (A011557 n : ℚ)

end

end A000866.P8602930095329073054

/-! ## A000866.P13361486188694123295

`A055476(n)/A004643(2*n)`
-/

namespace A000866.P13361486188694123295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055476 n : ℚ) / (A004643 (2 * n) : ℚ)

end

end A000866.P13361486188694123295

/-! ## A000866.P6098430630597412538

`A007091(2^n)`
-/

namespace A000866.P6098430630597412538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (2 ^ n)

end

end A000866.P6098430630597412538

/-! ## A000866.P5787399310140128976

`A014263(2^n+1)/2`
-/

namespace A000866.P5787399310140128976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014263 (2 ^ n + 1) : ℚ) / 2

end

end A000866.P5787399310140128976

/-! ## A000866.P15424326981295315825

`record[A007091(and(n+1, -(n+1)))]`
-/

namespace A000866.P15424326981295315825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000866.P15424326981295315825

/-!
# A000871: Number of switching networks with S(n) acting on the domain and GL(2,2) acting on the range.

The programs for A000871, there is no canonical definition to state claims against.
-/

/-! ## A000871.P1762353048477563161

`A000886(n+1)+A000856(n+1)`
-/

namespace A000871.P1762353048477563161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000886 (n + 1) + A000856 (n + 1)

end

end A000871.P1762353048477563161

/-!
# A000877: Number of switching networks with GL(n,2) acting on the domain and GL(2,2) acting on the range.

The programs for A000877, there is no canonical definition to state claims against.
-/

/-! ## A000877.P14351292425887932687

`A001150(n+1)+A000892(n+1)`
-/

namespace A000877.P14351292425887932687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001150 (n + 1) + A000892 (n + 1)

end

end A000877.P14351292425887932687

/-!
# A000879: Number of primes < prime(n)^2.

The programs for A000879, the canonical program `A000879.P11642258310759995278` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000879 has offset 1).

The definition of A000879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000879.P11642258310759995278

`A000720(A001248(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A000879

/-- `A000720(A001248(n+1))` -/
def P11642258310759995278.Spec : Prop :=
  ∀ n, P11642258310759995278.a n = A000879 (n + 1)

theorem P11642258310759995278.correct : P11642258310759995278.Spec := by
  intro n
  simp only [A000879, Nat.add_sub_cancel]

end A000879

/-! ## A000879.P1860814593810224747

`A000720(A000040(n+1)²)`
-/

namespace A000879.P1860814593810224747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (n + 1) ^ 2).toNat

end

end A000879.P1860814593810224747

namespace A000879

/-- `A000720(A000040(n+1)²)` -/
def P1860814593810224747.Spec : Prop :=
  ∀ n, P1860814593810224747.a n = A000879 (n + 1)

end A000879

/-! ## A000879.P380475085177160043

`∑[A050216(n)]`
-/

namespace A000879.P380475085177160043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000879.P380475085177160043

namespace A000879

/-- `∑[A050216(n)]` -/
def P380475085177160043.Spec : Prop :=
  ∀ n, P380475085177160043.a n = A000879 (n + 1)

end A000879

/-! ## A000879.P1816556055553164913

`A001248(n+1)-A053683(n+1)`
-/

namespace A000879.P1816556055553164913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A053683 (n + 1)

end

end A000879.P1816556055553164913

namespace A000879

/-- `A001248(n+1)-A053683(n+1)` -/
def P1816556055553164913.Spec : Prop :=
  ∀ n, P1816556055553164913.a n = A000879 (n + 1)

theorem P1816556055553164913.correct : P1816556055553164913.Spec := by
  intro n
  simp only [A000879, Nat.add_sub_cancel, A000879.P1816556055553164913.a, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A053683, A053683.P15420794164900351699.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000879

/-! ## A000879.P320566193602129868

`A084920(n+1)-A120389(n+1)`
-/

namespace A000879.P320566193602129868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) - A120389 (n + 1)

end

end A000879.P320566193602129868

namespace A000879

/-- `A084920(n+1)-A120389(n+1)` -/
def P320566193602129868.Spec : Prop :=
  ∀ n, P320566193602129868.a n = A000879 (n + 1)

end A000879

/-! ## A000879.P14763727140825652339

`A000040(n+1)²-A053683(n+1)`
-/

namespace A000879.P14763727140825652339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A053683 (n + 1)

end

end A000879.P14763727140825652339

namespace A000879

/-- `A000040(n+1)²-A053683(n+1)` -/
def P14763727140825652339.Spec : Prop :=
  ∀ n, P14763727140825652339.a n = A000879 (n + 1)

theorem P14763727140825652339.correct : P14763727140825652339.Spec := by
  intro n
  simp only [A000879, Nat.add_sub_cancel, A000879.P14763727140825652339.a, A000879.P11642258310759995278.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A053683, A053683.P15420794164900351699.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000879

/-! ## A000879.P534054101370404949

`A001248(n+1)-A120389(n+1)-1`
-/

namespace A000879.P534054101370404949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A120389 (n + 1) - 1

end

end A000879.P534054101370404949

namespace A000879

/-- `A001248(n+1)-A120389(n+1)-1` -/
def P534054101370404949.Spec : Prop :=
  ∀ n, P534054101370404949.a n = A000879 (n + 1)

end A000879

/-! ## A000879.P15521491102656533751

`A000040(n+1)²-(A120389(n+1)+1)`
-/

namespace A000879.P15521491102656533751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - (A120389 (n + 1) + 1)

end

end A000879.P15521491102656533751

namespace A000879

/-- `A000040(n+1)²-(A120389(n+1)+1)` -/
def P15521491102656533751.Spec : Prop :=
  ∀ n, P15521491102656533751.a n = A000879 (n + 1)

end A000879

/-! ## A000879.P14717816069201064931

`A250474(n+1)-2+n`
-/

namespace A000879.P14717816069201064931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) - 2 + (n : ℤ)

end

end A000879.P14717816069201064931

namespace A000879

/-- `A250474(n+1)-2+n` -/
def P14717816069201064931.Spec : Prop :=
  ∀ n, P14717816069201064931.a n = A000879 (n + 1)

theorem P14717816069201064931.correct : P14717816069201064931.Spec := by
  intro n
  simp only [A000879, Nat.add_sub_cancel, A000879.P14717816069201064931.a, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A250474, A250474.P15580657759443600580.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A250473, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000879

/-! ## A000879.P7005175424347991821

`A250474(n+1)+A023444(n)`
-/

namespace A000879.P7005175424347991821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) + A023444 n

end

end A000879.P7005175424347991821

namespace A000879

/-- `A250474(n+1)+A023444(n)` -/
def P7005175424347991821.Spec : Prop :=
  ∀ n, P7005175424347991821.a n = A000879 (n + 1)

theorem P7005175424347991821.correct : P7005175424347991821.Spec := by
  intro n
  simp only [A000879, Nat.add_sub_cancel, A000879.P7005175424347991821.a, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A023444, A023444.P8712163668128210297.a, A250474, A250474.P15580657759443600580.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A250473, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000879

/-! ## A000879.P1324348877287920716

`A250474(n+1)-A022958(n)`
-/

namespace A000879.P1324348877287920716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) - A022958 n

end

end A000879.P1324348877287920716

namespace A000879

/-- `A250474(n+1)-A022958(n)` -/
def P1324348877287920716.Spec : Prop :=
  ∀ n, P1324348877287920716.a n = A000879 (n + 1)

theorem P1324348877287920716.correct : P1324348877287920716.Spec := by
  intro n
  simp only [A000879, Nat.add_sub_cancel, A000879.P1324348877287920716.a, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A022958, A022958.P1044776346471009207.a, A250474, A250474.P15580657759443600580.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A250473, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000879

/-! ## A000879.P15378158055031106823

`∑[A251723(A000007(n)+n)+1]`
-/

namespace A000879.P15378158055031106823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (A000007 n + (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000879.P15378158055031106823

namespace A000879

/-- `∑[A251723(A000007(n)+n)+1]` -/
def P15378158055031106823.Spec : Prop :=
  ∀ n, P15378158055031106823.a n = A000879 (n + 1)

end A000879

/-! ## A000879.P3027933024364521697

`A054272(1+n)+n`
-/

namespace A000879.P3027933024364521697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (1 + n) + (n : ℤ)

end

end A000879.P3027933024364521697

namespace A000879

/-- `A054272(1+n)+n` -/
def P3027933024364521697.Spec : Prop :=
  ∀ n, P3027933024364521697.a n = A000879 (n + 1)

end A000879

/-! ## A000879.P14195084253924271993

`A250473(n+1)-1+n`
-/

namespace A000879.P14195084253924271993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1) - 1 + (n : ℤ)

end

end A000879.P14195084253924271993

namespace A000879

/-- `A250473(n+1)-1+n` -/
def P14195084253924271993.Spec : Prop :=
  ∀ n, P14195084253924271993.a n = A000879 (n + 1)

theorem P14195084253924271993.correct : P14195084253924271993.Spec := by
  intro n
  simp only [A000879, Nat.add_sub_cancel, A000879.P14195084253924271993.a, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000879

/-! ## A000879.P10322322325341927083

`A250473(n+1)+A023443(n)`
-/

namespace A000879.P10322322325341927083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1) + A023443 n

end

end A000879.P10322322325341927083

namespace A000879

/-- `A250473(n+1)+A023443(n)` -/
def P10322322325341927083.Spec : Prop :=
  ∀ n, P10322322325341927083.a n = A000879 (n + 1)

theorem P10322322325341927083.correct : P10322322325341927083.Spec := by
  intro n
  simp only [A000879, Nat.add_sub_cancel, A000879.P10322322325341927083.a, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A023443, A023443.P2966051066474347068.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000879

/-! ## A000879.P5859050824170132969

`A250473(n+1)-A024000(n)`
-/

namespace A000879.P5859050824170132969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1) - A024000 n

end

end A000879.P5859050824170132969

namespace A000879

/-- `A250473(n+1)-A024000(n)` -/
def P5859050824170132969.Spec : Prop :=
  ∀ n, P5859050824170132969.a n = A000879 (n + 1)

theorem P5859050824170132969.correct : P5859050824170132969.Spec := by
  intro n
  simp only [A000879, Nat.add_sub_cancel, A000879.P5859050824170132969.a, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A024000, A024000.P8748414335487061084.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000879

/-! ## A000879.P2704528110903918613

`A095116(n+1)+A066883(n+1)`
-/

namespace A000879.P2704528110903918613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) + A066883 (n + 1)

end

end A000879.P2704528110903918613

namespace A000879

/-- `A095116(n+1)+A066883(n+1)` -/
def P2704528110903918613.Spec : Prop :=
  ∀ n, P2704528110903918613.a n = A000879 (n + 1)

theorem P2704528110903918613.correct : P2704528110903918613.Spec := by
  intro n
  simp only [A000879, Nat.add_sub_cancel, A000879.P2704528110903918613.a, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A066883, A066883.P6672544760734734469.a, A095116, A095116.P2789422422958858773.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A250473, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000879

/-! ## A000879.P15336618924547836218

`A000040(n+1)+A066883(n+1)+n`
-/

namespace A000879.P15336618924547836218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A066883 (n + 1) + (n : ℤ))

end

end A000879.P15336618924547836218

namespace A000879

/-- `A000040(n+1)+A066883(n+1)+n` -/
def P15336618924547836218.Spec : Prop :=
  ∀ n, P15336618924547836218.a n = A000879 (n + 1)

theorem P15336618924547836218.correct : P15336618924547836218.Spec := by
  intro n
  simp only [A000879, Nat.add_sub_cancel, A000879.P15336618924547836218.a, A000879.P11642258310759995278.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A066883, A066883.P6672544760734734469.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A250473, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000879

/-! ## A000879.P7858340603603855955

`A276824(n+1)+A007504(n+1)`
-/

namespace A000879.P7858340603603855955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276824 (n + 1) + A007504 (n + 1)

end

end A000879.P7858340603603855955

namespace A000879

/-- `A276824(n+1)+A007504(n+1)` -/
def P7858340603603855955.Spec : Prop :=
  ∀ n, P7858340603603855955.a n = A000879 (n + 1)

theorem P7858340603603855955.correct : P7858340603603855955.Spec := by
  intro n
  simp only [A000879, Nat.add_sub_cancel, A000879.P7858340603603855955.a, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A007504, A007504.P14310834286015847203.a, A276824, A276824.P1865868106888623118.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000879

/-! ## A000879.P15350864104460084709

`A062773(n+1)-1`
-/

namespace A000879.P15350864104460084709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1) - 1

end

end A000879.P15350864104460084709

namespace A000879

/-- `A062773(n+1)-1` -/
def P15350864104460084709.Spec : Prop :=
  ∀ n, P15350864104460084709.a n = A000879 (n + 1)

end A000879

/-!
# A000882: Number of twin prime pairs <= product of first n primes.

The programs for A000882, there is no canonical definition to state claims against.
-/

/-! ## A000882.P9130583470991566620

`A071538(A007014(n+1)-1)`
-/

namespace A000882.P9130583470991566620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A007014 (n + 1) - 1).toNat

end

end A000882.P9130583470991566620

/-! ## A000882.P9244023963519344075

`A071538(A002110(n+1)-(n+1))`
-/

namespace A000882.P9244023963519344075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A002110 (n + 1) - (n + 1 : ℤ)).toNat

end

end A000882.P9244023963519344075

/-!
# A000885: Number of twin prime pairs < square of n-th prime.

The programs for A000885, there is no canonical definition to state claims against.
-/

/-! ## A000885.P6214874477468204512

`∑[A057767(n+1)]+A057427(n)-A057767(n+1)`
-/

namespace A000885.P6214874477468204512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A057427 n - A057767 (n + 1))

end

end A000885.P6214874477468204512

/-! ## A000885.P16131403837686224077

`∑[A057767(A233583(n+1))]-2`
-/

namespace A000885.P16131403837686224077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057767 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A000885.P16131403837686224077

/-! ## A000885.P1291785515566472812

`∑[A057427(n)*A057767(A233583(n+1))]`
-/

namespace A000885.P1291785515566472812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A057767 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000885.P1291785515566472812

/-! ## A000885.P15835224530705050704

`∑[A057767(A233583(n+1))%A016754(n)]`
-/

namespace A000885.P15835224530705050704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057767 (A233583 (n + 1)).toNat) (A016754 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000885.P15835224530705050704

/-! ## A000885.P1433077013787692643

`∑[A062157(n)²*A057767(A233583(n+1))]`
-/

namespace A000885.P1433077013787692643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n ^ 2 * A057767 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000885.P1433077013787692643

/-! ## A000885.P11279837021136212156

`∑[A019426(2*n)*A057767(A233583(n+1))]`
-/

namespace A000885.P11279837021136212156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n) * A057767 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000885.P11279837021136212156

/-! ## A000885.P12826544702505180859

`A071538(A049001(n+1))`
-/

namespace A000885.P12826544702505180859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A049001 (n + 1)).toNat

end

end A000885.P12826544702505180859

/-! ## A000885.P15205038578450879765

`A071538(A182200(n+1))`
-/

namespace A000885.P15205038578450879765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A182200 (n + 1)).toNat

end

end A000885.P15205038578450879765

/-! ## A000885.P5733128334824191816

`A071538(A006005(n+1)²)`
-/

namespace A000885.P5733128334824191816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A006005 (n + 1) ^ 2).toNat

end

end A000885.P5733128334824191816

/-! ## A000885.P2078853407322808085

`A071538(A000040(n+1)²-2)`
-/

namespace A000885.P2078853407322808085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A000040 (n + 1) ^ 2 - 2).toNat

end

end A000885.P2078853407322808085

/-!
# A000888: a(n) = (2*n)!^2 / ((n+1)!*n!^3).

The programs for A000888, the canonical program `A000888.P12340007188385104244` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000888 has offset 0).

The definition of A000888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000888.P12340007188385104244

`C(2*n, n)²/(n+1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000888

/-- `C(2*n, n)²/(n+1)` -/
def P12340007188385104244.Spec : Prop :=
  ∀ n, P12340007188385104244.a n = (A000888 n : ℚ)

end A000888

/-! ## A000888.P3859477875325423856

`(2*n)!²/((n+1)!*n!^3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000888.P3859477875325423856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) ^ 2 : ℚ) / (Nat.factorial (n + 1) * Nat.factorial n ^ 3 : ℚ)

end

end A000888.P3859477875325423856

namespace A000888

/-- `(2*n)!²/((n+1)!*n!^3)` -/
def P3859477875325423856.Spec : Prop :=
  ∀ n, P3859477875325423856.a n = (A000888 n : ℚ)

end A000888

/-! ## A000888.P5736687467336966147

`C(2*n, n)/(n+1)*C(2*n, n)`
-/

namespace A000888.P5736687467336966147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ)

end

end A000888.P5736687467336966147

namespace A000888

/-- `C(2*n, n)/(n+1)*C(2*n, n)` -/
def P5736687467336966147.Spec : Prop :=
  ∀ n, P5736687467336966147.a n = (A000888 n : ℚ)

end A000888

/-! ## A000888.P1135457924350424789

`A267987(n)/4`
-/

namespace A000888.P1135457924350424789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267987 n : ℚ) / 4

end

end A000888.P1135457924350424789

namespace A000888

/-- `A267987(n)/4` -/
def P1135457924350424789.Spec : Prop :=
  ∀ n, P1135457924350424789.a n = (A000888 n : ℚ)

end A000888

/-! ## A000888.P15458667036936188860

`A379100(∑[n]+n)`
-/

namespace A000888.P15458667036936188860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379100 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000888.P15458667036936188860

namespace A000888

/-- `A379100(∑[n]+n)` -/
def P15458667036936188860.Spec : Prop :=
  ∀ n, P15458667036936188860.a n = A000888 n

end A000888

/-! ## A000888.P5084774311883979710

`(n+1)*A001246(n)`
-/

namespace A000888.P5084774311883979710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001246 n

end

end A000888.P5084774311883979710

namespace A000888

/-- `(n+1)*A001246(n)` -/
def P5084774311883979710.Spec : Prop :=
  ∀ n, P5084774311883979710.a n = A000888 n

end A000888

/-! ## A000888.P17440283945235849615

`(n+1)*A000108(n)²`
-/

namespace A000888.P17440283945235849615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n ^ 2

end

end A000888.P17440283945235849615

namespace A000888

/-- `(n+1)*A000108(n)²` -/
def P17440283945235849615.Spec : Prop :=
  ∀ n, P17440283945235849615.a n = A000888 n

end A000888

/-! ## A000888.P157758034528463585

`(n+1)*A168491(n)²`
-/

namespace A000888.P157758034528463585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A168491 n ^ 2

end

end A000888.P157758034528463585

namespace A000888

/-- `(n+1)*A168491(n)²` -/
def P157758034528463585.Spec : Prop :=
  ∀ n, P157758034528463585.a n = A000888 n

end A000888

/-! ## A000888.P9812018020708093688

`(n+1)*A008313(n²)²`
-/

namespace A000888.P9812018020708093688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008313 (n ^ 2) ^ 2

end

end A000888.P9812018020708093688

namespace A000888

/-- `(n+1)*A008313(n²)²` -/
def P9812018020708093688.Spec : Prop :=
  ∀ n, P9812018020708093688.a n = A000888 n

end A000888

/-! ## A000888.P10934926414503573192

`(n+1)*A172414(n²)²`
-/

namespace A000888.P10934926414503573192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A172414 (n ^ 2) ^ 2

end

end A000888.P10934926414503573192

namespace A000888

/-- `(n+1)*A172414(n²)²` -/
def P10934926414503573192.Spec : Prop :=
  ∀ n, P10934926414503573192.a n = A000888 n

end A000888

/-!
# A000891: a(n) = (2*n)!*(2*n+1)! / (n! * (n+1)!)^2.

The programs for A000891, the canonical program `A000891.P6013844036491525535` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000891 has offset 0).

The definition of A000891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000891.P7873023422710599899

`A005558(2*n)`
-/

namespace A000891.P7873023422710599899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005558 (2 * n)

end

end A000891.P7873023422710599899

namespace A000891

/-- `A005558(2*n)` -/
def P7873023422710599899.Spec : Prop :=
  ∀ n, P7873023422710599899.a n = A000891 n

end A000891

/-! ## A000891.P6013844036491525535

`(2*n+1)*A000108(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000891

/-- `(2*n+1)*A000108(n)²` -/
def P6013844036491525535.Spec : Prop :=
  ∀ n, P6013844036491525535.a n = A000891 n

theorem P6013844036491525535.correct : P6013844036491525535.Spec := by
  intro n
  simp only [A000891]

end A000891

/-! ## A000891.P16078687908568080917

`A001700(n)*A000108(n)`
-/

namespace A000891.P16078687908568080917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A000108 n

end

end A000891.P16078687908568080917

namespace A000891

/-- `A001700(n)*A000108(n)` -/
def P16078687908568080917.Spec : Prop :=
  ∀ n, P16078687908568080917.a n = A000891 n

end A000891

/-! ## A000891.P6671350985252304754

`1/2*A000984(n+1)*A000108(n)`
-/

namespace A000891.P6671350985252304754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000984 (n + 1) : ℚ) * (A000108 n : ℚ)

end

end A000891.P6671350985252304754

namespace A000891

/-- `1/2*A000984(n+1)*A000108(n)` -/
def P6671350985252304754.Spec : Prop :=
  ∀ n, P6671350985252304754.a n = (A000891 n : ℚ)

end A000891

/-! ## A000891.P18165680224531948321

`C(2*n+1, n)²/(2*n+1)`
-/

namespace A000891.P18165680224531948321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) n ^ 2 : ℚ) / (2 * n + 1 : ℚ)

end

end A000891.P18165680224531948321

namespace A000891

/-- `C(2*n+1, n)²/(2*n+1)` -/
def P18165680224531948321.Spec : Prop :=
  ∀ n, P18165680224531948321.a n = (A000891 n : ℚ)

end A000891

/-! ## A000891.P4838860467765863157

`C(2*n+1, n+1)*C(2*n+1, n)/(2*n+1)`
-/

namespace A000891.P4838860467765863157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) (n + 1) * Nat.choose (2 * n + 1) n : ℚ) / (2 * n + 1 : ℚ)

end

end A000891.P4838860467765863157

namespace A000891

/-- `C(2*n+1, n+1)*C(2*n+1, n)/(2*n+1)` -/
def P4838860467765863157.Spec : Prop :=
  ∀ n, P4838860467765863157.a n = (A000891 n : ℚ)

end A000891

/-! ## A000891.P9961726544307434479

`A000894(n)/(n+1)`
-/

namespace A000891.P9961726544307434479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000894 n : ℚ) / (n + 1 : ℚ)

end

end A000891.P9961726544307434479

namespace A000891

/-- `A000894(n)/(n+1)` -/
def P9961726544307434479.Spec : Prop :=
  ∀ n, P9961726544307434479.a n = (A000891 n : ℚ)

end A000891

/-! ## A000891.P12481113074215050691

`A001263(C(2*n+1, 2)+n+1)`
-/

namespace A000891.P12481113074215050691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (Nat.choose (2 * n + 1) 2 + (n + 1))

end

end A000891.P12481113074215050691

namespace A000891

/-- `A001263(C(2*n+1, 2)+n+1)` -/
def P12481113074215050691.Spec : Prop :=
  ∀ n, P12481113074215050691.a n = A000891 n

end A000891

/-! ## A000891.P13070404842035238181

`(2*n)!*(2*n+1)!/(n!*(n+1)!)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000891.P13070404842035238181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) * Nat.factorial (2 * n + 1) : ℚ) / ((Nat.factorial n * Nat.factorial (n + 1)) ^ 2 : ℚ)

end

end A000891.P13070404842035238181

namespace A000891

/-- `(2*n)!*(2*n+1)!/(n!*(n+1)!)²` -/
def P13070404842035238181.Spec : Prop :=
  ∀ n, P13070404842035238181.a n = (A000891 n : ℚ)

end A000891

/-! ## A000891.P11497456260875489878

`A067802(∑[n])`
-/

namespace A000891.P11497456260875489878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067802 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000891.P11497456260875489878

namespace A000891

/-- `A067802(∑[n])` -/
def P11497456260875489878.Spec : Prop :=
  ∀ n, P11497456260875489878.a n = A000891 n

end A000891

/-!
# A000892: Number of switching networks with GL(n,2) acting on the domain and AG(2,2) acting on the range.

The programs for A000892, there is no canonical definition to state claims against.
-/

/-! ## A000892.P11193806073147124646

`A000877(n+1)-A001150(n+1)`
-/

namespace A000892.P11193806073147124646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000877 (n + 1) - A001150 (n + 1)

end

end A000892.P11193806073147124646

/-!
# A000894: a(n) = (2*n)!*(2*n+1)! / ((n+1)! * n!^3).

The programs for A000894, the canonical program `A000894.P14882200328801433490` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000894 has offset 0).

The definition of A000894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000894.P6549205018547395320

`C(2*n+1, n)*C(2*n, n)`
-/

namespace A000894.P6549205018547395320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) n * Nat.choose (2 * n) n

end

end A000894.P6549205018547395320

namespace A000894

/-- `C(2*n+1, n)*C(2*n, n)` -/
def P6549205018547395320.Spec : Prop :=
  ∀ n, (P6549205018547395320.a n : ℤ) = A000894 n

end A000894

/-! ## A000894.P14882200328801433490

`(n+1)*A000891(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A000894

/-- `(n+1)*A000891(n)` -/
def P14882200328801433490.Spec : Prop :=
  ∀ n, P14882200328801433490.a n = A000894 n

theorem P14882200328801433490.correct : P14882200328801433490.Spec := by
  intro n
  simp only [A000894]

end A000894

/-! ## A000894.P14711200603284332386

`A241530(2*n+1)/2`
-/

namespace A000894.P14711200603284332386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241530 (2 * n + 1) : ℚ) / 2

end

end A000894.P14711200603284332386

namespace A000894

/-- `A241530(2*n+1)/2` -/
def P14711200603284332386.Spec : Prop :=
  ∀ n, P14711200603284332386.a n = (A000894 n : ℚ)

end A000894

/-! ## A000894.P7951236551784738748

`C(2*n+2, 2)*A000108(n)²`
-/

namespace A000894.P7951236551784738748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 2) 2 : ℤ) * A000108 n ^ 2

end

end A000894.P7951236551784738748

namespace A000894

/-- `C(2*n+2, 2)*A000108(n)²` -/
def P7951236551784738748.Spec : Prop :=
  ∀ n, P7951236551784738748.a n = A000894 n

theorem P7951236551784738748.correct : P7951236551784738748.Spec := by
  intro n
  simp only [A000894, Nat.add_sub_cancel, A000894.P7951236551784738748.a, A000894.P14882200328801433490.a, A000108, A000108.P17551949696095299361.a, A000891, A000891.P6013844036491525535.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000894

/-! ## A000894.P10284123949861281035

`A001700(n)*A000984(n)`
-/

namespace A000894.P10284123949861281035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A000984 n

end

end A000894.P10284123949861281035

namespace A000894

/-- `A001700(n)*A000984(n)` -/
def P10284123949861281035.Spec : Prop :=
  ∀ n, P10284123949861281035.a n = A000894 n

end A000894

/-! ## A000894.P6855140231992547531

`A000984(n)*A000984(n+1)/2`
-/

namespace A000894.P6855140231992547531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n * A000984 (n + 1) : ℚ) / 2

end

end A000894.P6855140231992547531

namespace A000894

/-- `A000984(n)*A000984(n+1)/2` -/
def P6855140231992547531.Spec : Prop :=
  ∀ n, P6855140231992547531.a n = (A000894 n : ℚ)

end A000894

/-! ## A000894.P17493749044026409168

`A000217(2*n+1)*A000108(n)²`
-/

namespace A000894.P17493749044026409168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1) * A000108 n ^ 2

end

end A000894.P17493749044026409168

namespace A000894

/-- `A000217(2*n+1)*A000108(n)²` -/
def P17493749044026409168.Spec : Prop :=
  ∀ n, P17493749044026409168.a n = A000894 n

theorem P17493749044026409168.correct : P17493749044026409168.Spec := by
  intro n
  simp only [A000894, Nat.add_sub_cancel, A000894.P17493749044026409168.a, A000894.P14882200328801433490.a, A000108, A000108.P17551949696095299361.a, A000217, A000217.P10269402890581615239.a, A000891, A000891.P6013844036491525535.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000894

/-! ## A000894.P1360108052573099092

`A000217(n+1)*A000108(n)*A000108(n+1)`
-/

namespace A000894.P1360108052573099092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A000108 n * A000108 (n + 1)

end

end A000894.P1360108052573099092

namespace A000894

/-- `A000217(n+1)*A000108(n)*A000108(n+1)` -/
def P1360108052573099092.Spec : Prop :=
  ∀ n, P1360108052573099092.a n = A000894 n

end A000894

/-! ## A000894.P5197449580613611221

`A103371(C(2*n+1, 2)+n)`
-/

namespace A000894.P5197449580613611221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103371 (Nat.choose (2 * n + 1) 2 + n)

end

end A000894.P5197449580613611221

namespace A000894

/-- `A103371(C(2*n+1, 2)+n)` -/
def P5197449580613611221.Spec : Prop :=
  ∀ n, P5197449580613611221.a n = A000894 n

end A000894

/-! ## A000894.P5982372315613820549

`A132813(C(2*n+1, 2)+n)`
-/

namespace A000894.P5982372315613820549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132813 (Nat.choose (2 * n + 1) 2 + n)

end

end A000894.P5982372315613820549

namespace A000894

/-- `A132813(C(2*n+1, 2)+n)` -/
def P5982372315613820549.Spec : Prop :=
  ∀ n, P5982372315613820549.a n = A000894 n

end A000894

/-! ## A000894.P6694133096209572409

`(2*n)!*(2*n+1)!/((n+1)!*n!^3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000894.P6694133096209572409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) * Nat.factorial (2 * n + 1) : ℚ) / (Nat.factorial (n + 1) * Nat.factorial n ^ 3 : ℚ)

end

end A000894.P6694133096209572409

namespace A000894

/-- `(2*n)!*(2*n+1)!/((n+1)!*n!^3)` -/
def P6694133096209572409.Spec : Prop :=
  ∀ n, P6694133096209572409.a n = (A000894 n : ℚ)

end A000894

/-!
# A000897: a(n) = (4*n)! / ((2*n)!*n!^2).

The programs for A000897, the canonical program `A000897.P14910180461201994835` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000897 has offset 0).

The definition of A000897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000897.P4974648481286013927

`C(4*n, 2*n)*C(2*n, n)`
-/

namespace A000897.P4974648481286013927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n) (2 * n) * Nat.choose (2 * n) n

end

end A000897.P4974648481286013927

namespace A000897

/-- `C(4*n, 2*n)*C(2*n, n)` -/
def P4974648481286013927.Spec : Prop :=
  ∀ n, (P4974648481286013927.a n : ℤ) = A000897 n

theorem P4974648481286013927.correct : P4974648481286013927.Spec := by
  intro n
  simp only [A000897, Nat.add_sub_cancel, A000897.P4974648481286013927.a, A000897.P14910180461201994835.a, A000984, A000984.P7946844122574426130.a, A001448, A001448.P10146391060409880259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000897

/-! ## A000897.P14910180461201994835

`A000984(n)*A001448(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000897

/-- `A000984(n)*A001448(n)` -/
def P14910180461201994835.Spec : Prop :=
  ∀ n, P14910180461201994835.a n = A000897 n

theorem P14910180461201994835.correct : P14910180461201994835.Spec := by
  intro n
  simp only [A000897]

end A000897

/-! ## A000897.P16791358285716749386

`A008977(n)/A000984(n)`
-/

namespace A000897.P16791358285716749386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008977 n : ℚ) / (A000984 n : ℚ)

end

end A000897.P16791358285716749386

namespace A000897

/-- `A008977(n)/A000984(n)` -/
def P16791358285716749386.Spec : Prop :=
  ∀ n, P16791358285716749386.a n = (A000897 n : ℚ)

end A000897

/-! ## A000897.P1343556183860702266

`(4*n)!/((2*n)!*n!²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000897.P1343556183860702266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (4 * n) : ℚ) / (Nat.factorial (2 * n) * Nat.factorial n ^ 2 : ℚ)

end

end A000897.P1343556183860702266

namespace A000897

/-- `(4*n)!/((2*n)!*n!²)` -/
def P1343556183860702266.Spec : Prop :=
  ∀ n, P1343556183860702266.a n = (A000897 n : ℚ)

end A000897

/-! ## A000897.P4418728160878664659

`A295864(2*n)`
-/

namespace A000897.P4418728160878664659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295864 (2 * n)

end

end A000897.P4418728160878664659

namespace A000897

/-- `A295864(2*n)` -/
def P4418728160878664659.Spec : Prop :=
  ∀ n, P4418728160878664659.a n = A000897 n

end A000897

/-! ## A000897.P1924908550637862122

`A155495(∑[4*n])`
-/

namespace A000897.P1924908550637862122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155495 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000897.P1924908550637862122

namespace A000897

/-- `A155495(∑[4*n])` -/
def P1924908550637862122.Spec : Prop :=
  ∀ n, P1924908550637862122.a n = A000897 n

end A000897

/-! ## A000897.P8836281560371093816

`A356546(∑[4*n])`
-/

namespace A000897.P8836281560371093816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356546 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000897.P8836281560371093816

namespace A000897

/-- `A356546(∑[4*n])` -/
def P8836281560371093816.Spec : Prop :=
  ∀ n, P8836281560371093816.a n = A000897 n

end A000897

/-! ## A000897.P4697459607823522498

`(n+1)*A359647(n)`
-/

namespace A000897.P4697459607823522498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A359647 n

end

end A000897.P4697459607823522498

namespace A000897

/-- `(n+1)*A359647(n)` -/
def P4697459607823522498.Spec : Prop :=
  ∀ n, P4697459607823522498.a n = A000897 n

end A000897

/-! ## A000897.P17300222960352220886

`Δ[n²]*A270577(n)`
-/

namespace A000897.P17300222960352220886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A270577 n

end

end A000897.P17300222960352220886

namespace A000897

/-- `Δ[n²]*A270577(n)` -/
def P17300222960352220886.Spec : Prop :=
  ∀ n, P17300222960352220886.a n = A000897 n

end A000897

/-! ## A000897.P11383429123071918583

`Δ[n²]*A151379(2*n)`
-/

namespace A000897.P11383429123071918583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A151379 (2 * n)

end

end A000897.P11383429123071918583

namespace A000897

/-- `Δ[n²]*A151379(2*n)` -/
def P11383429123071918583.Spec : Prop :=
  ∀ n, P11383429123071918583.a n = A000897 n

end A000897

/-!
# A000898: a(n) = 2*(a(n-1) + (n-1)*a(n-2)) for n >= 2 with a(0) = 1.

The programs for A000898, the canonical program `A000898.P7671676320348687094` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000898 has offset 0).

The definition of A000898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(a(n-1)+(n-1)*a(n-2))` (program `A000898.P7671676320348687094`, by `A000898.P7671676320348687094.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000898.P7671676320348687094

`2*(a(n-1)+(n-1)*a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000898

/-- `2*(a(n-1)+(n-1)*a(n-2))` -/
def P7671676320348687094.Spec : Prop :=
  ∀ n, P7671676320348687094.a n = A000898 n

theorem P7671676320348687094.correct : P7671676320348687094.Spec := by
  intro n
  simp only [A000898]

end A000898

/-! ## A000898.P14782642030394778391

`∑{#}[floor(n/2), 2^(n-2*#)*C(n, 2*#)*(2*#)!/#!]`
-/

namespace A000898.P14782642030394778391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (Nat.choose n (2 * k) : ℚ) * (Nat.factorial (2 * k) : ℚ) / (Nat.factorial k : ℚ)

end

end A000898.P14782642030394778391

namespace A000898

/-- `∑{#}[floor(n/2), 2^(n-2*#)*C(n, 2*#)*(2*#)!/#!]` -/
def P14782642030394778391.Spec : Prop :=
  ∀ n, P14782642030394778391.a n = (A000898 n : ℚ)

end A000898

/-! ## A000898.P17496613617501012907

`∑{#}[floor(n/2), A001498(C(n-#+1, 2)+#)*2^(n-#)]`
-/

namespace A000898.P17496613617501012907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (A001498 (Nat.choose ((n : ℤ) - (k : ℤ) + 1).toNat 2 + k) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A000898.P17496613617501012907

namespace A000898

/-- `∑{#}[floor(n/2), A001498(C(n-#+1, 2)+#)*2^(n-#)]` -/
def P17496613617501012907.Spec : Prop :=
  ∀ n, P17496613617501012907.a n = (A000898 n : ℚ)

end A000898

/-! ## A000898.P11356768751157731024

`2*a(n-1)-(1-n)*2*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A000898.P11356768751157731024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - (1 - (n : ℤ)) * (2 * a (n - 2))

end

end A000898.P11356768751157731024

namespace A000898

/-- `2*a(n-1)-(1-n)*2*a(n-2)` -/
def P11356768751157731024.Spec : Prop :=
  ∀ n, P11356768751157731024.a n = A000898 n

theorem P11356768751157731024.correct : P11356768751157731024.Spec := by
  intro n
  simp only [A000898, Nat.add_sub_cancel, A000898.P11356768751157731024.a, A000898.P7671676320348687094.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000898

/-! ## A000898.P17898228770314251732

`A135401(2*n)`
-/

namespace A000898.P17898228770314251732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135401 (2 * n)

end

end A000898.P17898228770314251732

namespace A000898

/-- `A135401(2*n)` -/
def P17898228770314251732.Spec : Prop :=
  ∀ n, P17898228770314251732.a n = A000898 n

end A000898

/-! ## A000898.P3222761389478788080

`record[A135401(n)-char[1]]`
-/

namespace A000898.P3222761389478788080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135401 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000898.P3222761389478788080

namespace A000898

/-- `record[A135401(n)-char[1]]` -/
def P3222761389478788080.Spec : Prop :=
  ∀ n, P3222761389478788080.a n = A000898 n

end A000898

/-! ## A000898.P2345632277423764312

`∑{#}[n, C(n, #)*A047974(#)]`
-/

namespace A000898.P2345632277423764312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A047974 k

end

end A000898.P2345632277423764312

namespace A000898

/-- `∑{#}[n, C(n, #)*A047974(#)]` -/
def P2345632277423764312.Spec : Prop :=
  ∀ n, P2345632277423764312.a n = A000898 n

end A000898

/-! ## A000898.P2923334616169559834

`record[A135401(A028242(n))]`
-/

namespace A000898.P2923334616169559834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135401 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000898.P2923334616169559834

namespace A000898

/-- `record[A135401(A028242(n))]` -/
def P2923334616169559834.Spec : Prop :=
  ∀ n, P2923334616169559834.a n = A000898 n

end A000898

/-! ## A000898.P7059715424028491800

`record[A135401(A141310(n))]`
-/

namespace A000898.P7059715424028491800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135401 (A141310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000898.P7059715424028491800

namespace A000898

/-- `record[A135401(A141310(n))]` -/
def P7059715424028491800.Spec : Prop :=
  ∀ n, P7059715424028491800.a n = A000898 n

end A000898

/-! ## A000898.P7196844333396009500

`A060546(n)*A242818(n)`
-/

namespace A000898.P7196844333396009500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A242818 n

end

end A000898.P7196844333396009500

namespace A000898

/-- `A060546(n)*A242818(n)` -/
def P7196844333396009500.Spec : Prop :=
  ∀ n, P7196844333396009500.a n = A000898 n

end A000898

/-! ## A000898.P14263228062275301435

`lcm(A000902(n), A060546(n))`
-/

namespace A000898.P14263228062275301435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000902 n) (A060546 n)

end

end A000898.P14263228062275301435

namespace A000898

/-- `lcm(A000902(n), A060546(n))` -/
def P14263228062275301435.Spec : Prop :=
  ∀ n, (P14263228062275301435.a n : ℤ) = A000898 n

end A000898

/-! ## A000898.P3752242592868717360

`A016116(n+1)*A242818(n)`
-/

namespace A000898.P3752242592868717360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) * A242818 n

end

end A000898.P3752242592868717360

namespace A000898

/-- `A016116(n+1)*A242818(n)` -/
def P3752242592868717360.Spec : Prop :=
  ∀ n, P3752242592868717360.a n = A000898 n

end A000898

/-! ## A000898.P17999255888867213166

`lcm(A117575(n+2), A242818(n))`
-/

namespace A000898.P17999255888867213166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117575 (n + 2)) (A242818 n)

end

end A000898.P17999255888867213166

namespace A000898

/-- `lcm(A117575(n+2), A242818(n))` -/
def P17999255888867213166.Spec : Prop :=
  ∀ n, (P17999255888867213166.a n : ℤ) = A000898 n

end A000898

/-! ## A000898.P15954101754527687279

`gcd(2, A060821(n))*A000902(n)`
-/

namespace A000898.P15954101754527687279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A060821 n) : ℤ) * A000902 n

end

end A000898.P15954101754527687279

namespace A000898

/-- `gcd(2, A060821(n))*A000902(n)` -/
def P15954101754527687279.Spec : Prop :=
  ∀ n, P15954101754527687279.a n = A000898 n

end A000898

/-! ## A000898.P2136734935295049977

`A000902(n)*A020639(A009849(n))`
-/

namespace A000898.P2136734935295049977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000902 n * A020639 (A009849 n).toNat

end

end A000898.P2136734935295049977

namespace A000898

/-- `A000902(n)*A020639(A009849(n))` -/
def P2136734935295049977.Spec : Prop :=
  ∀ n, P2136734935295049977.a n = A000898 n

end A000898

/-! ## A000898.P15817388359839562237

`A000902(n)*A002260(A133263(n))`
-/

namespace A000898.P15817388359839562237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000902 n * A002260 (A133263 n).toNat

end

end A000898.P15817388359839562237

namespace A000898

/-- `A000902(n)*A002260(A133263(n))` -/
def P15817388359839562237.Spec : Prop :=
  ∀ n, P15817388359839562237.a n = A000898 n

end A000898

/-! ## A000898.P8630346871289093784

`A000902(n)*A057467(A057467(n+1))`
-/

namespace A000898.P8630346871289093784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000902 n * A057467 (A057467 (n + 1)).toNat

end

end A000898.P8630346871289093784

namespace A000898

/-- `A000902(n)*A057467(A057467(n+1))` -/
def P8630346871289093784.Spec : Prop :=
  ∀ n, P8630346871289093784.a n = A000898 n

end A000898

/-!
# A000899: Number of solutions to the rook problem on an n X n board having a certain symmetry group (see Robinson for details).

The programs for A000899, the canonical program `A000899.P15769446601722223493` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000899 has offset 1).

The definition of A000899 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A000899.P15769446601722223493

`(A000142(n+1)-2*A000085(n+1)-A037223(n+1)+2*A000898(floor((n+1)/2)))/8`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000899

/-- `(A000142(n+1)-2*A000085(n+1)-A037223(n+1)+2*A000898(floor((n+1)/2)))/8` -/
def P15769446601722223493.Spec : Prop :=
  ∀ n, P15769446601722223493.a n = (A000899 (n + 1) : ℚ)

end A000899

/-! ## A000899.P7524204066747355743

`A110655(A035538(n²))`
-/

namespace A000899.P7524204066747355743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A035538 (n ^ 2)).toNat

end

end A000899.P7524204066747355743

namespace A000899

/-- `A110655(A035538(n²))` -/
def P7524204066747355743.Spec : Prop :=
  ∀ n, P7524204066747355743.a n = A000899 (n + 1)

end A000899

/-! ## A000899.P14554096121543077457

`A002265(A241447(n²))`
-/

namespace A000899.P14554096121543077457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A241447 (n ^ 2)).toNat

end

end A000899.P14554096121543077457

namespace A000899

/-- `A002265(A241447(n²))` -/
def P14554096121543077457.Spec : Prop :=
  ∀ n, P14554096121543077457.a n = A000899 (n + 1)

end A000899

