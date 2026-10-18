import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
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
import Seq.Opaque.C025

/-!
# A096200: a(n) = n*(n-1)*(n-2)*(3*n-2)/6.

The programs for A096200, the canonical program `A096200.P6223042555552457062` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096200 has offset 0).

The definition of A096200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096200.P6223042555552457062

`n*(n-1)*(n-2)*(3*n-2)/6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096200

/-- `n*(n-1)*(n-2)*(3*n-2)/6` -/
def P6223042555552457062.Spec : Prop :=
  ∀ n, P6223042555552457062.a n = (A096200 n : ℚ)

end A096200

/-! ## A096200.P12008716623208655997

`C((1-n)², 2)+C(n, 3)`
-/

namespace A096200.P12008716623208655997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((1 - (n : ℤ)) ^ 2).toNat 2 + Nat.choose n 3

end

end A096200.P12008716623208655997

namespace A096200

/-- `C((1-n)², 2)+C(n, 3)` -/
def P12008716623208655997.Spec : Prop :=
  ∀ n, (P12008716623208655997.a n : ℤ) = A096200 n

end A096200

/-! ## A096200.P367479306798616437

`abs(C(n, 3)*A112335(n))`
-/

namespace A096200.P367479306798616437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n 3 : ℤ) * A112335 n|

end

end A096200.P367479306798616437

namespace A096200

/-- `abs(C(n, 3)*A112335(n))` -/
def P367479306798616437.Spec : Prop :=
  ∀ n, P367479306798616437.a n = A096200 n

end A096200

/-! ## A096200.P13362760854604235446

`∑[∑[A049453(A004275(n)-n)]]`
-/

namespace A096200.P13362760854604235446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049453 (A004275 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096200.P13362760854604235446

namespace A096200

/-- `∑[∑[A049453(A004275(n)-n)]]` -/
def P13362760854604235446.Spec : Prop :=
  ∀ n, P13362760854604235446.a n = A096200 n

end A096200

/-!
# A096201: Number of Hadamard matrices of order 4n when a matrix and its transpose are considered equivalent.

The programs for A096201, there is no canonical definition to state claims against.
-/

/-! ## A096201.P9841543895293979215

`A337226(A011973(n)+A007299(n))`
-/

namespace A096201.P9841543895293979215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337226 (A011973 n + A007299 n).toNat

end

end A096201.P9841543895293979215

/-! ## A096201.P8906338080500449957

`A096206(n)+A088153(A143419(2*(n+2)))`
-/

namespace A096201.P8906338080500449957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096206 n + A088153 (A143419 (2 * (n + 2))).toNat

end

end A096201.P8906338080500449957

/-!
# A096202: Number of coverings of {1...n} by translation of a single set.

The programs for A096202, there is no canonical definition to state claims against.
-/

/-! ## A096202.P8511706535365723726

`A000051(n)-A002024(A085139(n))`
-/

namespace A096202.P8511706535365723726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A002024 (A085139 n).toNat

end

end A096202.P8511706535365723726

/-! ## A096202.P12053157055025707449

`A008617(A000975(n+4)-A067034(2*n+3))`
-/

namespace A096202.P12053157055025707449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A000975 (n + 4) - A067034 (2 * n + 3)).toNat

end

end A096202.P12053157055025707449

/-! ## A096202.P13865956846995670065

`ceil(root(A191768(3*n+1), 5))`
-/

namespace A096202.P13865956846995670065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191768 (3 * n + 1) : ℝ) ^ (1 / (5 : ℝ))⌉

end

end A096202.P13865956846995670065

/-! ## A096202.P17666329044117715597

`∑[A000196(A149038(n))]`
-/

namespace A096202.P17666329044117715597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A149038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096202.P17666329044117715597

/-!
# A096203: Number of coverings of {1..n} by translation and reflection of a single set.

The programs for A096203, there is no canonical definition to state claims against.
-/

/-! ## A096203.P12234995610649435223

`A239518(∑[A005728(n)])+1`
-/

namespace A096203.P12234995610649435223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239518 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A096203.P12234995610649435223

/-! ## A096203.P18349651326839299616

`record[A072794(n)+A037291(n+1)]`
-/

namespace A096203.P18349651326839299616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072794 n + A037291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096203.P18349651326839299616

/-! ## A096203.P16527816143543269292

`record[A222245(n)+A037291(n+1)]`
-/

namespace A096203.P16527816143543269292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 n + A037291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096203.P16527816143543269292

/-!
# A096205: Minimum (absolute value of) permanent of a Hadamard matrix of order 4n.

The programs for A096205, there is no canonical definition to state claims against.
-/

/-! ## A096205.P17806677181025600558

`A000165(2*n)%A223680(A277212(n))`
-/

namespace A096205.P17806677181025600558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000165 (2 * n)) (A223680 (A277212 n).toNat)

end

end A096205.P17806677181025600558

/-!
# A096206: Number of different values taken by the absolute value of the permanent of a Hadamard matrix of order 4n.

The programs for A096206, there is no canonical definition to state claims against.
-/

/-! ## A096206.P3501793797106717031

`A295255(and(ceil(n/2), comp[2*(n+1)]))`
-/

namespace A096206.P3501793797106717031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295255 (Int.land ⌈(n : ℚ) / 2⌉ (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A096206.P3501793797106717031

/-! ## A096206.P16737390316490022133

`A259051(ceil(2^(n-1)/(n+1))+1)`
-/

namespace A096206.P16737390316490022133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259051 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / (n + 1 : ℚ)⌉ + 1).toNat

end

end A096206.P16737390316490022133

/-! ## A096206.P14452019277639873171

`A069188(A193580(n))`
-/

namespace A096206.P14452019277639873171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069188 (A193580 n).toNat

end

end A096206.P14452019277639873171

/-! ## A096206.P9760998382010726950

`A258152(A059446(n))`
-/

namespace A096206.P9760998382010726950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258152 (A059446 n).toNat

end

end A096206.P9760998382010726950

/-!
# A096207: Prime partial sums of the even-indexed primes.

The programs for A096207, there is no canonical definition to state claims against.
-/

/-! ## A096207.P8365797875351292732

`p?[A077126(n+1)]`
-/

namespace A096207.P8365797875351292732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096207.P8365797875351292732

/-! ## A096207.P12053774933397854380

`p?[A355726(Δ[n²])]`
-/

namespace A096207.P12053774933397854380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355726 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096207.P12053774933397854380

/-! ## A096207.P14501744277758796901

`p?[∑[A031215(n+1)]]`
-/

namespace A096207.P14501744277758796901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096207.P14501744277758796901

/-! ## A096207.P724774711420375858

`p?[A073738(2*n)-1]`
-/

namespace A096207.P724774711420375858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073738 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096207.P724774711420375858

/-! ## A096207.P6697043547526334983

`p?[∑[A000040(2*(n+1))]]`
-/

namespace A096207.P6697043547526334983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096207.P6697043547526334983

/-!
# A096208: Prime partial sums of the odd-indexed primes.

The programs for A096208, there is no canonical definition to state claims against.
-/

/-! ## A096208.P14521688435113364443

`p?[A077131(n+1)]`
-/

namespace A096208.P14521688435113364443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096208.P14521688435113364443

/-! ## A096208.P3262286589447571670

`p?[A355726(2*n)]`
-/

namespace A096208.P3262286589447571670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355726 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096208.P3262286589447571670

/-! ## A096208.P9209061124180999603

`p?[∑[A031368(n+1)]]`
-/

namespace A096208.P9209061124180999603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096208.P9209061124180999603

/-! ## A096208.P12143607441550112856

`p?[∑[A000040(Δ[n²])]]`
-/

namespace A096208.P12143607441550112856
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096208.P12143607441550112856

/-! ## A096208.P15690571075505993704

`p?[A073738(2*n+1)]`
-/

namespace A096208.P15690571075505993704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073738 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096208.P15690571075505993704

/-!
# A096214: First prime in primes of the form 10^n + 10^(n-k) - 1.

The programs for A096214, there is no canonical definition to state claims against.
-/

/-! ## A096214.P15147357238163201137

`A239720(∑[A082516(((n+2)^(n+1)-1)/(n+1)²)])`
-/

namespace A096214.P15147357238163201137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082516 (SequenceMachineLib.roundAway ((((n + 2) ^ (n + 1) : ℤ) - 1 : ℚ) / ((n + 1) ^ 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A096214.P15147357238163201137

/-!
# A096215: Greatest primes not greater than the sum of two succeeding primes.

The programs for A096215, the canonical program `A096215.P7687908874337330203` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096215 has offset 1).

The definition of A096215 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, A007917, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A096215.P7687908874337330203

`A007917(A001043(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096215

/-- `A007917(A001043(n+1))` -/
def P7687908874337330203.Spec : Prop :=
  ∀ n, P7687908874337330203.a n = A096215 (n + 1)

theorem P7687908874337330203.correct : P7687908874337330203.Spec := by
  intro n
  simp only [A096215, Nat.add_sub_cancel]

end A096215

/-! ## A096215.P15586211263918386460

`A000040(A000720(Δ[A061802(n)]))`
-/

namespace A096215.P15586211263918386460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (f1 (n + 1) - f1 n).toNat).toNat

end

end A096215.P15586211263918386460

namespace A096215

/-- `A000040(A000720(Δ[A061802(n)]))` -/
def P15586211263918386460.Spec : Prop :=
  ∀ n, P15586211263918386460.a n = A096215 (n + 1)

end A096215

/-! ## A096215.P11915843324640599423

`A000040(A000720(A011974(n+2)))`
-/

namespace A096215.P11915843324640599423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A011974 (n + 2)).toNat).toNat

end

end A096215.P11915843324640599423

namespace A096215

/-- `A000040(A000720(A011974(n+2)))` -/
def P11915843324640599423.Spec : Prop :=
  ∀ n, P11915843324640599423.a n = A096215 (n + 1)

end A096215

/-! ## A096215.P3515058737480255258

`A007917(Δ[A061802(n)])`
-/

namespace A096215.P3515058737480255258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (f1 (n + 1) - f1 n).toNat

end

end A096215.P3515058737480255258

namespace A096215

/-- `A007917(Δ[A061802(n)])` -/
def P3515058737480255258.Spec : Prop :=
  ∀ n, P3515058737480255258.a n = A096215 (n + 1)

end A096215

/-! ## A096215.P11416404517868998144

`A007917(A011974(n+2))`
-/

namespace A096215.P11416404517868998144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A011974 (n + 2)).toNat

end

end A096215.P11416404517868998144

namespace A096215

/-- `A007917(A011974(n+2))` -/
def P11416404517868998144.Spec : Prop :=
  ∀ n, P11416404517868998144.a n = A096215 (n + 1)

end A096215

/-! ## A096215.P12261604383193800608

`A007917(A013635(p?[2*n+1]))`
-/

namespace A096215.P12261604383193800608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A013635 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A096215.P12261604383193800608

namespace A096215

/-- `A007917(A013635(p?[2*n+1]))` -/
def P12261604383193800608.Spec : Prop :=
  ∀ n, P12261604383193800608.a n = A096215 (n + 1)

end A096215

/-! ## A096215.P4782371288660305571

`A335285(2*A078444(n+1)+1)`
-/

namespace A096215.P4782371288660305571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335285 (2 * A078444 (n + 1) + 1).toNat

end

end A096215.P4782371288660305571

namespace A096215

/-- `A335285(2*A078444(n+1)+1)` -/
def P4782371288660305571.Spec : Prop :=
  ∀ n, P4782371288660305571.a n = A096215 (n + 1)

end A096215

/-! ## A096215.P8770592520067063240

`A000040(A230980(Δ[A061802(n)]))`
-/

namespace A096215.P8770592520067063240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230980 (f1 (n + 1) - f1 n).toNat).toNat

end

end A096215.P8770592520067063240

namespace A096215

/-- `A000040(A230980(Δ[A061802(n)]))` -/
def P8770592520067063240.Spec : Prop :=
  ∀ n, P8770592520067063240.a n = A096215 (n + 1)

end A096215

/-! ## A096215.P16007192988917107215

`A007917(A061802(n+1)-A061802(n))`
-/

namespace A096215.P16007192988917107215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A061802 (n + 1) - A061802 n).toNat

end

end A096215.P16007192988917107215

namespace A096215

/-- `A007917(A061802(n+1)-A061802(n))` -/
def P16007192988917107215.Spec : Prop :=
  ∀ n, P16007192988917107215.a n = A096215 (n + 1)

end A096215

/-! ## A096215.P16053231493941198559

`A007917(A000040(n+1)+A000040(n+2))`
-/

namespace A096215.P16053231493941198559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A000040 (n + 1) + A000040 (n + 2)).toNat

end

end A096215.P16053231493941198559

namespace A096215

/-- `A007917(A000040(n+1)+A000040(n+2))` -/
def P16053231493941198559.Spec : Prop :=
  ∀ n, P16053231493941198559.a n = A096215 (n + 1)

end A096215

/-! ## A096215.P7455828329642104230

`A335285(A078444(n+1)+A078444(n+1)+1)`
-/

namespace A096215.P7455828329642104230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335285 (A078444 (n + 1) + (A078444 (n + 1) + 1)).toNat

end

end A096215.P7455828329642104230

namespace A096215

/-- `A335285(A078444(n+1)+A078444(n+1)+1)` -/
def P7455828329642104230.Spec : Prop :=
  ∀ n, P7455828329642104230.a n = A096215 (n + 1)

end A096215

/-! ## A096215.P8230562114729874659

`A136548(A092949(n+1))`
-/

namespace A096215.P8230562114729874659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A092949 (n + 1)).toNat

end

end A096215.P8230562114729874659

namespace A096215

/-- `A136548(A092949(n+1))` -/
def P8230562114729874659.Spec : Prop :=
  ∀ n, P8230562114729874659.a n = A096215 (n + 1)

end A096215

/-! ## A096215.P17296744495451297663

`A055377(2*A001043(n+1))`
-/

namespace A096215.P17296744495451297663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (2 * A001043 (n + 1)).toNat

end

end A096215.P17296744495451297663

namespace A096215

/-- `A055377(2*A001043(n+1))` -/
def P17296744495451297663.Spec : Prop :=
  ∀ n, P17296744495451297663.a n = A096215 (n + 1)

end A096215

/-! ## A096215.P13180809730375009606

`A055377(2*A011974(n+2))`
-/

namespace A096215.P13180809730375009606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (2 * A011974 (n + 2)).toNat

end

end A096215.P13180809730375009606

namespace A096215

/-- `A055377(2*A011974(n+2))` -/
def P13180809730375009606.Spec : Prop :=
  ∀ n, P13180809730375009606.a n = A096215 (n + 1)

end A096215

/-! ## A096215.P12832804200992487070

`A055377(A001043(n+1)+A001043(n+1)+1)`
-/

namespace A096215.P12832804200992487070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A001043 (n + 1) + (A001043 (n + 1) + 1)).toNat

end

end A096215.P12832804200992487070

namespace A096215

/-- `A055377(A001043(n+1)+A001043(n+1)+1)` -/
def P12832804200992487070.Spec : Prop :=
  ∀ n, P12832804200992487070.a n = A096215 (n + 1)

end A096215

/-! ## A096215.P583530382612614611

`A006530(A064924(Δ[A061802(n)]))`
-/

namespace A096215.P583530382612614611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A064924 (f1 (n + 1) - f1 n).toNat).toNat

end

end A096215.P583530382612614611

namespace A096215

/-- `A006530(A064924(Δ[A061802(n)]))` -/
def P583530382612614611.Spec : Prop :=
  ∀ n, P583530382612614611.a n = A096215 (n + 1)

end A096215

/-!
# A096216: a(n) = number of terms among {a(1), a(2), a(3), ..., a(n-1)} that are coprime to n; a(1)=1.

The programs for A096216, there is no canonical definition to state claims against.
-/

/-! ## A096216.P3861793743566817183

`A124525(∑[n+1])`
-/

namespace A096216.P3861793743566817183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124525 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096216.P3861793743566817183

/-! ## A096216.P15904054921166572227

`A124525(A000217(n+1))%97`
-/

namespace A096216.P15904054921166572227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124525 (A000217 (n + 1)).toNat) 97

end

end A096216.P15904054921166572227

/-! ## A096216.P13749705271956592124

`A124525(A000217(n+1))*A262681(n)`
-/

namespace A096216.P13749705271956592124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124525 (A000217 (n + 1)).toNat * A262681 n

end

end A096216.P13749705271956592124

/-! ## A096216.P17554366913370930876

`gcd(A000038(n), A124525(A000217(n+1)))`
-/

namespace A096216.P17554366913370930876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A124525 (A000217 (n + 1)).toNat)

end

end A096216.P17554366913370930876

/-! ## A096216.P12354805337618546367

`∑{d}[A124525(A000217(n+1)), A000010(#)]`
-/

namespace A096216.P12354805337618546367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124525 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A096216.P12354805337618546367

/-! ## A096216.P9466776953311419695

`∏{d}[A124525(A000217(n+1)), A014963(#)]`
-/

namespace A096216.P9466776953311419695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124525 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A096216.P9466776953311419695

/-! ## A096216.P3127738753155652911

`A124525(A000217(n+1))+A000007(n+1)`
-/

namespace A096216.P3127738753155652911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124525 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A096216.P3127738753155652911

/-! ## A096216.P9151934931002534047

`A007318(C(2, n))*A124525(A000217(n+1))`
-/

namespace A096216.P9151934931002534047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A124525 (A000217 (n + 1)).toNat

end

end A096216.P9151934931002534047

/-! ## A096216.P3484978499330261484

`A124525(A000217(n+1))+A008683(4*(n+4))`
-/

namespace A096216.P3484978499330261484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124525 (A000217 (n + 1)).toNat + A008683 (4 * (n + 4))

end

end A096216.P3484978499330261484

/-! ## A096216.P15020310383890082104

`A124525(A000217(n+1))^A000108(C(2, n+1))`
-/

namespace A096216.P15020310383890082104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124525 (A000217 (n + 1)).toNat : ℚ) ^ (A000108 (Nat.choose 2 (n + 1)) : ℤ)

end

end A096216.P15020310383890082104

/-!
# A096218: Primes of the form 3*prime(n) + 2*prime(n+1).

The programs for A096218, the canonical program `A096218.P10209809842821438212` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096218 has offset 1).

The definition of A096218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096218.P6293383480209495347

`p?[A210497(n+1)+A001749(n+1)]`
-/

namespace A096218.P6293383480209495347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1) + A001749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096218.P6293383480209495347

namespace A096218

/-- `p?[A210497(n+1)+A001749(n+1)]` -/
def P6293383480209495347.Spec : Prop :=
  ∀ n, P6293383480209495347.a n = A096218 (n + 1)

end A096218

/-! ## A096218.P13866533059812518203

`p?[A181428(n+1)+A096277(n+1)]`
-/

namespace A096218.P13866533059812518203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (n + 1) + A096277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096218.P13866533059812518203

namespace A096218

/-- `p?[A181428(n+1)+A096277(n+1)]` -/
def P13866533059812518203.Spec : Prop :=
  ∀ n, P13866533059812518203.a n = A096218 (n + 1)

end A096218

/-! ## A096218.P10209809842821438212

`p?[A000040(n+1)+2*A001043(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096218

/-- `p?[A000040(n+1)+2*A001043(n+1)]` -/
def P10209809842821438212.Spec : Prop :=
  ∀ n, P10209809842821438212.a n = A096218 (n + 1)

theorem P10209809842821438212.correct : P10209809842821438212.Spec := by
  intro n
  simp only [A096218, Nat.add_sub_cancel]

end A096218

/-! ## A096218.P6627560319882149270

`p?[A001750(n+1)+2*A001223(n+1)]`
-/

namespace A096218.P6627560319882149270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1) + 2 * A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096218.P6627560319882149270

namespace A096218

/-- `p?[A001750(n+1)+2*A001223(n+1)]` -/
def P6627560319882149270.Spec : Prop :=
  ∀ n, P6627560319882149270.a n = A096218 (n + 1)

end A096218

/-! ## A096218.P1723086651028203357

`p?[A000040(n+1)+2*A011974(n+2)]`
-/

namespace A096218.P1723086651028203357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A011974 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096218.P1723086651028203357

namespace A096218

/-- `p?[A000040(n+1)+2*A011974(n+2)]` -/
def P1723086651028203357.Spec : Prop :=
  ∀ n, P1723086651028203357.a n = A096218 (n + 1)

end A096218

/-! ## A096218.P9489204921032051698

`p?[A100484(n+2)+A001748(n+1)]`
-/

namespace A096218.P9489204921032051698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2) + A001748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096218.P9489204921032051698

namespace A096218

/-- `p?[A100484(n+2)+A001748(n+1)]` -/
def P9489204921032051698.Spec : Prop :=
  ∀ n, P9489204921032051698.a n = A096218 (n + 1)

end A096218

/-! ## A096218.P1030604210050183813

`p?[A001748(n+1)+A001747(n+3)]`
-/

namespace A096218.P1030604210050183813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + A001747 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096218.P1030604210050183813

namespace A096218

/-- `p?[A001748(n+1)+A001747(n+3)]` -/
def P1030604210050183813.Spec : Prop :=
  ∀ n, P1030604210050183813.a n = A096218 (n + 1)

end A096218

/-! ## A096218.P5513957933201509972

`p?[A001750(n+1)+Δ[2*A000040(n+1)]]`
-/

namespace A096218.P5513957933201509972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096218.P5513957933201509972

namespace A096218

/-- `p?[A001750(n+1)+Δ[2*A000040(n+1)]]` -/
def P5513957933201509972.Spec : Prop :=
  ∀ n, P5513957933201509972.a n = A096218 (n + 1)

end A096218

/-!
# A096220: a(n) is the minimal length of prime-complete rules for the first n primes.

The programs for A096220, there is no canonical definition to state claims against.
-/

/-! ## A096220.P7357818853701065582

`∑[∑[A054242(lcm(2, n)+n%2)]]`
-/

namespace A096220.P7357818853701065582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (Nat.lcm 2 n + n % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096220.P7357818853701065582

/-! ## A096220.P11489588439898358219

`∑[round(comp[A295027(n+1)]²/8)]`
-/

namespace A096220.P11489588439898358219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295027 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n ^ 2 : ℚ) / 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096220.P11489588439898358219

/-! ## A096220.P11678207027893584025

`∑[∑[∏{p}[A353161(2*n+3), #]]]`
-/

namespace A096220.P11678207027893584025
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353161 (2 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096220.P11678207027893584025

/-! ## A096220.P11978293699017799427

`∑[∑[A353147(n+1)%(n+1)]+1]`
-/

namespace A096220.P11978293699017799427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353147 (n + 1)) (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096220.P11978293699017799427

/-! ## A096220.P4104542722570953143

`∑[record[(n+1)%(A109671(2*n+1)+1)]]`
-/

namespace A096220.P4104542722570953143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A109671 (2 * n + 1) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096220.P4104542722570953143

/-!
# A096222: Number of different rectangles when a piece of paper is folded n times in alternate directions.

The programs for A096222, the canonical program `A096222.P1430047274433382838` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096222 has offset 0).

The definition of A096222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096222.P1430047274433382838

`6*a(n-1)-48*a(n-3)+64*a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=30`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096222

/-- `6*a(n-1)-48*a(n-3)+64*a(n-4)` -/
def P1430047274433382838.Spec : Prop :=
  ∀ n, P1430047274433382838.a n = A096222 n

theorem P1430047274433382838.correct : P1430047274433382838.Spec := by
  intro n
  simp only [A096222]

end A096222

/-! ## A096222.P15290540342108899950

`2^(n-2)*A183978(n+1)`
-/

namespace A096222.P15290540342108899950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A183978 (n + 1) : ℚ)

end

end A096222.P15290540342108899950

namespace A096222

/-- `2^(n-2)*A183978(n+1)` -/
def P15290540342108899950.Spec : Prop :=
  ∀ n, P15290540342108899950.a n = (A096222 n : ℚ)

end A096222

/-! ## A096222.P435416745423774993

`(A183979(n+1)-2)*2^(n-2)`
-/

namespace A096222.P435416745423774993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183979 (n + 1) - 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A096222.P435416745423774993

namespace A096222

/-- `(A183979(n+1)-2)*2^(n-2)` -/
def P435416745423774993.Spec : Prop :=
  ∀ n, P435416745423774993.a n = (A096222 n : ℚ)

end A096222

/-! ## A096222.P11982342088804969921

`A005418(n+1)/2*A005418(n+2)`
-/

namespace A096222.P11982342088804969921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005418 (n + 1) : ℚ) / 2 * (A005418 (n + 2) : ℚ)

end

end A096222.P11982342088804969921

namespace A096222

/-- `A005418(n+1)/2*A005418(n+2)` -/
def P11982342088804969921.Spec : Prop :=
  ∀ n, P11982342088804969921.a n = (A096222 n : ℚ)

end A096222

/-! ## A096222.P3473389693992511659

`A183978(n+1)/4*A011782(n+1)`
-/

namespace A096222.P3473389693992511659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183978 (n + 1) : ℚ) / 4 * (A011782 (n + 1) : ℚ)

end

end A096222.P3473389693992511659

namespace A096222

/-- `A183978(n+1)/4*A011782(n+1)` -/
def P3473389693992511659.Spec : Prop :=
  ∀ n, P3473389693992511659.a n = (A096222 n : ℚ)

end A096222

/-!
# A096224: Number of connected labeled graphs with n nodes and n+8 edges.

The programs for A096224, there is no canonical definition to state claims against.
-/

/-! ## A096224.P1146589606740811652

`A343088(eq[8, A116598(n)])`
-/

namespace A096224.P1146589606740811652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096224.P1146589606740811652

/-! ## A096224.P8613117925956879056

`A343088(eq[9, A025581(n)])`
-/

namespace A096224.P8613117925956879056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096224.P8613117925956879056

/-! ## A096224.P15534913121549506128

`A343088(eq[10, A195663(n)])`
-/

namespace A096224.P15534913121549506128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096224.P15534913121549506128

/-! ## A096224.P1216268702907834557

`A343088(eq[10, A004736(n+1)])`
-/

namespace A096224.P1216268702907834557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096224.P1216268702907834557

/-! ## A096224.P4132458380155116936

`A343088(eq[29, A104887(n+1)])`
-/

namespace A096224.P4132458380155116936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096224.P4132458380155116936

/-!
# A096225: a(0) = 1; for n >= 0, a(n+1) = smallest prime factor of a(n)! + 1.

The programs for A096225, there is no canonical definition to state claims against.
-/

/-! ## A096225.P13216859704823048658

`A051301(a(n-1))` with `a(0)=1`
-/

namespace A096225.P13216859704823048658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051301 (a (n - 1)).toNat

end

end A096225.P13216859704823048658

/-! ## A096225.P9687111345055383442

`A333132(n+1)%A212835(A333187(n+1))`
-/

namespace A096225.P9687111345055383442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333132 (n + 1)) (A212835 (A333187 (n + 1)).toNat)

end

end A096225.P9687111345055383442

/-!
# A096226: a(n) is the least exponent k > 1 such that m^k is congruent to m modulo n for all natural numbers m, or a(n) = 1 if no such k exists.

The programs for A096226, there is no canonical definition to state claims against.
-/

/-! ## A096226.P6739306311147126487

`char[∏{p}[n, #]-1]*A002322(n+1)+1`
-/

namespace A096226.P6739306311147126487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A002322 (n + 1) + 1

end

end A096226.P6739306311147126487

/-! ## A096226.P7845262111638107260

`char[∏{p}[n, #]-1]*A011773(n+1)+1`
-/

namespace A096226.P7845262111638107260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A011773 (n + 1) + 1

end

end A096226.P7845262111638107260

/-! ## A096226.P260044323338505534

`A263027(n+1)^C(∏{p}[n+1, #], n+1)`
-/

namespace A096226.P260044323338505534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263027 (n + 1) ^ Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) (n + 1)

end

end A096226.P260044323338505534

/-! ## A096226.P12067591817669494742

`A263027(n+1)^abs(A008683(n+1))`
-/

namespace A096226.P12067591817669494742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263027 (n + 1) : ℚ) ^ (|A008683 (n + 1)| : ℤ)

end

end A096226.P12067591817669494742

/-! ## A096226.P10969226280198501761

`A263027(n+1)^A069158(n+1)²`
-/

namespace A096226.P10969226280198501761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263027 (n + 1) : ℚ) ^ (A069158 (n + 1) ^ 2 : ℤ)

end

end A096226.P10969226280198501761

/-! ## A096226.P3452036670712581892

`A002322(n+1)*A008966(n+1)+1`
-/

namespace A096226.P3452036670712581892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1) * A008966 (n + 1) + 1

end

end A096226.P3452036670712581892

/-! ## A096226.P13029345280974422811

`A008966(n+1)*A345046(n+1)+1`
-/

namespace A096226.P13029345280974422811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A345046 (n + 1) + 1

end

end A096226.P13029345280974422811

/-! ## A096226.P10781578336264429811

`lcm(A002322(n+1), A008683(n+1))+1`
-/

namespace A096226.P10781578336264429811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002322 (n + 1)) (A008683 (n + 1)) + 1

end

end A096226.P10781578336264429811

/-! ## A096226.P3809231326789378551

`A263027(n+1)^A008683(C(n+1, n))²`
-/

namespace A096226.P3809231326789378551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263027 (n + 1) : ℚ) ^ (A008683 (Nat.choose (n + 1) n) ^ 2 : ℤ)

end

end A096226.P3809231326789378551

/-! ## A096226.P17782296668345147019

`A141310(A002322(n+1)*A008966(n+1))`
-/

namespace A096226.P17782296668345147019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A002322 (n + 1) * A008966 (n + 1)).toNat

end

end A096226.P17782296668345147019

/-!
# A096227: Number of triangles created when a square sheet of paper is folded n times, the first time by one of the diagonals of the square and then by the median of the square triangle.

The programs for A096227, there is no canonical definition to state claims against.
-/

/-! ## A096227.P6885046228070633310

`A096260(n+1)-(A097405(n+1)+1)`
-/

namespace A096227.P6885046228070633310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096260 (n + 1) - (A097405 (n + 1) + 1)

end

end A096227.P6885046228070633310

/-! ## A096227.P7314970026631248145

`or(A172305(A036569(n)), A349359(n+1))`
-/

namespace A096227.P7314970026631248145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A172305 (A036569 n).toNat) (A349359 (n + 1))

end

end A096227.P7314970026631248145

/-!
# A096228: a(n) = floor(n^2*((n-1)/n)^(n-1/2)).

The programs for A096228, the canonical program `A096228.P8146493345464602507` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096228 has offset 1).

The definition of A096228 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)²*(n/(n+1))^(n+1-1/2))` (program `A096228.P8146493345464602507`, by `A096228.P8146493345464602507.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096228.P8146493345464602507

`floor((n+1)²*(n/(n+1))^(n+1-1/2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096228

/-- `floor((n+1)²*(n/(n+1))^(n+1-1/2))` -/
def P8146493345464602507.Spec : Prop :=
  ∀ n, P8146493345464602507.a n = A096228 (n + 1)

theorem P8146493345464602507.correct : P8146493345464602507.Spec := by
  intro n
  simp only [A096228, Nat.add_sub_cancel]

end A096228

/-! ## A096228.P5573145635654282284

`A032634((n+1)²-char[6])`
-/

namespace A096228.P5573145635654282284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 ((n + 1) ^ 2 - (if ∃ j, f1 j = n then 1 else 0))

end

end A096228.P5573145635654282284

namespace A096228

/-- `A032634((n+1)²-char[6])` -/
def P5573145635654282284.Spec : Prop :=
  ∀ n, P5573145635654282284.a n = A096228 (n + 1)

end A096228

/-! ## A096228.P8975044452282679027

`A032634(∑[2*n+1])-char[6]`
-/

namespace A096228.P8975044452282679027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (∑ j ∈ Finset.range (n + 1), f1 j) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A096228.P8975044452282679027

namespace A096228

/-- `A032634(∑[2*n+1])-char[6]` -/
def P8975044452282679027.Spec : Prop :=
  ∀ n, P8975044452282679027.a n = A096228 (n + 1)

end A096228

/-! ## A096228.P6044141005867942292

`A226033(A132411(n+1))`
-/

namespace A096228.P6044141005867942292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226033 (A132411 (n + 1)).toNat

end

end A096228.P6044141005867942292

namespace A096228

/-- `A226033(A132411(n+1))` -/
def P6044141005867942292.Spec : Prop :=
  ∀ n, P6044141005867942292.a n = A096228 (n + 1)

end A096228

/-! ## A096228.P11883174955296783569

`A054404(ceil((n+1)²-atan(n)))`
-/

namespace A096228.P11883174955296783569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 ⌈((n + 1) ^ 2 : ℝ) - Real.arctan (n : ℝ)⌉.toNat

end

end A096228.P11883174955296783569

namespace A096228

/-- `A054404(ceil((n+1)²-atan(n)))` -/
def P11883174955296783569.Spec : Prop :=
  ∀ n, P11883174955296783569.a n = A096228 (n + 1)

end A096228

/-!
# A096229: 0*9, 1*8, 2*7, 3*6, 4*5; 10*19, 11*18, ..., 14*15; 20*29, 21*28, ..., 24*25; 30*39, ...

The programs for A096229, the canonical program `A096229.P1156246642711404417` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096229 has offset 0).

The definition of A096229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096229.P1156246642711404417

`(2*n-n%5)*A293481(5-2*n%5+n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A096229

/-- `(2*n-n%5)*A293481(5-2*n%5+n)` -/
def P1156246642711404417.Spec : Prop :=
  ∀ n, P1156246642711404417.a n = A096229 n

theorem P1156246642711404417.correct : P1156246642711404417.Spec := by
  intro n
  simp only [A096229]

end A096229

/-! ## A096229.P2551605099342551880

`(-n%5+2*n)*A293481(-2*n%10+5+n)`
-/

namespace A096229.P2551605099342551880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (-(n : ℤ)) 5 + (2 * n : ℤ)) * A293481 (Int.tmod (-(2 * n : ℤ)) 10 + 5 + (n : ℤ)).toNat

end

end A096229.P2551605099342551880

namespace A096229

/-- `(-n%5+2*n)*A293481(-2*n%10+5+n)` -/
def P2551605099342551880.Spec : Prop :=
  ∀ n, P2551605099342551880.a n = A096229 n

end A096229

/-! ## A096229.P11053839121124797388

`(5*floor(n/5)+n)*A293481(5*(2*floor(n/5)+1)-n)`
-/

namespace A096229.P11053839121124797388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * ⌊(n : ℚ) / 5⌋ + (n : ℤ)) * A293481 (5 * (2 * ⌊(n : ℚ) / 5⌋ + 1) - (n : ℤ)).toNat

end

end A096229.P11053839121124797388

namespace A096229

/-- `(5*floor(n/5)+n)*A293481(5*(2*floor(n/5)+1)-n)` -/
def P11053839121124797388.Spec : Prop :=
  ∀ n, P11053839121124797388.a n = A096229 n

end A096229

/-! ## A096229.P14730416080190504489

`record[A004185(A334387(n))*A023453(n)]`
-/

namespace A096229.P14730416080190504489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A334387 n).toNat * A023453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096229.P14730416080190504489

namespace A096229

/-- `record[A004185(A334387(n))*A023453(n)]` -/
def P14730416080190504489.Spec : Prop :=
  ∀ n, P14730416080190504489.a n = A096229 n

end A096229

/-!
# A096230: Period 5: repeat [9, 7, 5, 3, 1].

The programs for A096230, the canonical program `A096230.P4193051261336428112` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096230 has offset 1).

The definition of A096230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096230.P4193051261336428112

`a(n-5)` with `a(0)=9, a(1)=7, a(2)=5, a(3)=3, a(4)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096230

/-- `a(n-5)` -/
def P4193051261336428112.Spec : Prop :=
  ∀ n, (P4193051261336428112.a n : ℤ) = A096230 (n + 1)

theorem P4193051261336428112.correct : P4193051261336428112.Spec := by
  intro n
  simp only [A096230, Nat.add_sub_cancel]

end A096230

/-!
# A096231: Number of n-th generation triangles in the tiling of the hyperbolic plane by triangles with angles {Pi/2, Pi/3, 0}.

The programs for A096231, the canonical program `A096231.P7992843961940252193` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096231 has offset 0).

The definition of A096231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096231.P7992843961940252193

`a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=9`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096231

/-- `a(n-2)+a(n-3)` -/
def P7992843961940252193.Spec : Prop :=
  ∀ n, (P7992843961940252193.a n : ℤ) = A096231 n

theorem P7992843961940252193.correct : P7992843961940252193.Spec := by
  intro n
  simp only [A096231]

end A096231

/-! ## A096231.P4356467227445367233

`∑[A134816(C(2, n)+1+n)]`
-/

namespace A096231.P4356467227445367233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (Nat.choose 2 n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096231.P4356467227445367233

namespace A096231

/-- `∑[A134816(C(2, n)+1+n)]` -/
def P4356467227445367233.Spec : Prop :=
  ∀ n, P4356467227445367233.a n = A096231 n

end A096231

/-! ## A096231.P6771037805885646544

`A130130(n)+A054405(n)`
-/

namespace A096231.P6771037805885646544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n + A054405 n

end

end A096231.P6771037805885646544

namespace A096231

/-- `A130130(n)+A054405(n)` -/
def P6771037805885646544.Spec : Prop :=
  ∀ n, P6771037805885646544.a n = A096231 n

end A096231

/-! ## A096231.P12176512885174696733

`A134816(A074764(n+1)+2)`
-/

namespace A096231.P12176512885174696733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A074764 (n + 1) + 2).toNat

end

end A096231.P12176512885174696733

namespace A096231

/-- `A134816(A074764(n+1)+2)` -/
def P12176512885174696733.Spec : Prop :=
  ∀ n, P12176512885174696733.a n = A096231 n

end A096231

/-! ## A096231.P9033741587255944689

`A130130(n)+A182097(n+7)-2`
-/

namespace A096231.P9033741587255944689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n + (A182097 (n + 7) - 2)

end

end A096231.P9033741587255944689

namespace A096231

/-- `A130130(n)+A182097(n+7)-2` -/
def P9033741587255944689.Spec : Prop :=
  ∀ n, P9033741587255944689.a n = A096231 n

end A096231

/-! ## A096231.P6313518928336327774

`∑[A171386(n+1)+∑[A000931(n)]]`
-/

namespace A096231.P6313518928336327774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171386 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096231.P6313518928336327774

namespace A096231

/-- `∑[A171386(n+1)+∑[A000931(n)]]` -/
def P6313518928336327774.Spec : Prop :=
  ∀ n, P6313518928336327774.a n = A096231 n

end A096231

/-! ## A096231.P13512679904347056284

`record[A000931(n+1)]+record[A000931(n)]`
-/

namespace A096231.P13512679904347056284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A096231.P13512679904347056284

namespace A096231

/-- `record[A000931(n+1)]+record[A000931(n)]` -/
def P13512679904347056284.Spec : Prop :=
  ∀ n, P13512679904347056284.a n = A096231 n

end A096231

/-! ## A096231.P9726829426149348040

`record[A127682(n+1)]+record[A127682(n+2)]`
-/

namespace A096231.P9726829426149348040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A096231.P9726829426149348040

namespace A096231

/-- `record[A127682(n+1)]+record[A127682(n+2)]` -/
def P9726829426149348040.Spec : Prop :=
  ∀ n, P9726829426149348040.a n = A096231 n

end A096231

/-! ## A096231.P11115837398137698929

`∑[A051064(A110560(n))*A134816(n+1)]`
-/

namespace A096231.P11115837398137698929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A110560 n).toNat * A134816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096231.P11115837398137698929

namespace A096231

/-- `∑[A051064(A110560(n))*A134816(n+1)]` -/
def P11115837398137698929.Spec : Prop :=
  ∀ n, P11115837398137698929.a n = A096231 n

end A096231

/-! ## A096231.P6892913629549241656

`A164315(n+1)-A164315(A289207(n))`
-/

namespace A096231.P6892913629549241656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164315 (n + 1) - A164315 (A289207 n).toNat

end

end A096231.P6892913629549241656

namespace A096231

/-- `A164315(n+1)-A164315(A289207(n))` -/
def P6892913629549241656.Spec : Prop :=
  ∀ n, P6892913629549241656.a n = A096231 n

end A096231

/-!
# A096232: a(n) = floor(e^(e^n)).

The programs for A096232, there is no canonical definition to state claims against.
-/

/-! ## A096232.P5903283814571105806

`floor(exp(exp(n-5)))`
-/

namespace A096232.P5903283814571105806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.exp ((n : ℤ) - 5 : ℝ))⌋

end

end A096232.P5903283814571105806

/-! ## A096232.P229376821909017543

`floor(e^e^(n-5))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096232.P229376821909017543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 ^ (Real.exp 1 ^ ((n : ℤ) - 5 : ℤ))⌋

end

end A096232.P229376821909017543

/-! ## A096232.P2855184013349435221

`ceil(exp(exp(n-5)))-A054977(n+1)`
-/

namespace A096232.P2855184013349435221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (Real.exp ((n : ℤ) - 5 : ℝ))⌉ - A054977 (n + 1)

end

end A096232.P2855184013349435221

/-!
# A096233: Number of digits of the 10^n-th tribonacci number (A000073).

The programs for A096233, there is no canonical definition to state claims against.
-/

/-! ## A096233.P6452641112702528778

`-xor(2, -A094677(a(n-1)))` with `a(0)=2`
-/

namespace A096233.P6452641112702528778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  -Int.xor 2 (-A094677 (a (n - 1)).toNat)

end

end A096233.P6452641112702528778

/-!
# A096236: Number of n-digit base-3 deletable primes.

The programs for A096236, there is no canonical definition to state claims against.
-/

/-! ## A096236.P9061082451068439362

`A000073(n+3)-A063691(A205801(n))`
-/

namespace A096236.P9061082451068439362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 3) - A063691 (A205801 n).toNat

end

end A096236.P9061082451068439362

/-! ## A096236.P7357351048664118002

`A352226(A309267(n))+A348086(A038085(n+1))`
-/

namespace A096236.P7357351048664118002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352226 (A309267 n).toNat + A348086 (A038085 (n + 1)).toNat

end

end A096236.P7357351048664118002

/-! ## A096236.P12610904020768229198

`A352226(A309267(n))+A238886(A306731(n+1))`
-/

namespace A096236.P12610904020768229198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352226 (A309267 n).toNat + A238886 (A306731 (n + 1)).toNat

end

end A096236.P12610904020768229198

/-!
# A096237: Number of n-digit base-4 deletable primes.

The programs for A096237, there is no canonical definition to state claims against.
-/

/-! ## A096237.P10589621708153570736

`Δ[A008621(A024997(n+3))]-A027868(n)`
-/

namespace A096237.P10589621708153570736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A024997 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027868 n

end

end A096237.P10589621708153570736

/-! ## A096237.P13793200825618233649

`A325545(n)+A023193((n/2+1)*∑[3^n])`
-/

namespace A096237.P13793200825618233649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325545 n + A023193 (SequenceMachineLib.roundAway (((n : ℚ) / 2 + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))).toNat

end

end A096237.P13793200825618233649

/-!
# A096238: Number of n-digit base-5 deletable primes.

The programs for A096238, there is no canonical definition to state claims against.
-/

/-! ## A096238.P6826748796471116647

`A331935(A164263(n+1))`
-/

namespace A096238.P6826748796471116647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (A164263 (n + 1)).toNat

end

end A096238.P6826748796471116647

/-! ## A096238.P6423096537492529003

`A331935(A283258(n)+1)`
-/

namespace A096238.P6423096537492529003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (A283258 n + 1).toNat

end

end A096238.P6423096537492529003

/-!
# A096239: Number of n-digit base-6 deletable primes.

The programs for A096239, there is no canonical definition to state claims against.
-/

/-! ## A096239.P7785989083167409545

`A048865(Δ[A007786(n+1)])`
-/

namespace A096239.P7785989083167409545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (f1 (n + 1) - f1 n).toNat

end

end A096239.P7785989083167409545

/-!
# A096240: Number of n-digit base-7 deletable primes.

The programs for A096240, there is no canonical definition to state claims against.
-/

/-! ## A096240.P6367642117746411653

`A116201(2*(n+2))-A079425(A032020(n))`
-/

namespace A096240.P6367642117746411653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116201 (2 * (n + 2)) - A079425 (A032020 n).toNat

end

end A096240.P6367642117746411653

/-!
# A096242: Number of n-digit base-9 deletable primes.

The programs for A096242, there is no canonical definition to state claims against.
-/

/-! ## A096242.P15637344231039454244

`xor(A010905(n), A261300(A130619(n)))`
-/

namespace A096242.P15637344231039454244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010905 n) (A261300 (A130619 n).toNat)

end

end A096242.P15637344231039454244

/-!
# A096243: Number of n-digit base-10 deletable primes.

The programs for A096243, there is no canonical definition to state claims against.
-/

/-! ## A096243.P16291464159971482295

`A195125(A254601(n))+A080040(n)`
-/

namespace A096243.P16291464159971482295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195125 (A254601 n).toNat + A080040 n

end

end A096243.P16291464159971482295

/-!
# A096246: Base-2 deletable primes (written in base 10).

The programs for A096246, there is no canonical definition to state claims against.
-/

/-! ## A096246.P257159739370767047

`p?[A331914(A331914(n+1))]`
-/

namespace A096246.P257159739370767047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331914 (A331914 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096246.P257159739370767047

/-! ## A096246.P7139343158215653239

`∩[A000040(n+1), A331914(A331914(n+1))]`
-/

namespace A096246.P7139343158215653239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331914 (A331914 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096246.P7139343158215653239

/-! ## A096246.P5847892324020030364

`∩[A006093(n+1)+1, A331914(A331914(n+1))]`
-/

namespace A096246.P5847892324020030364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331914 (A331914 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096246.P5847892324020030364

/-! ## A096246.P12667150341932933446

`p?[∑[A301848(2*n)]]`
-/

namespace A096246.P12667150341932933446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301848 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096246.P12667150341932933446

/-! ## A096246.P7583118623153238564

`∩[A028777(n+1), A040179(n+1)]`
-/

namespace A096246.P7583118623153238564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096246.P7583118623153238564

/-!
# A096252: Array read by rows, starting with n=0: row n lists A057077(n+1)*8^(n+1)/2, A057077(n+2)*8^(n+1)/2, A057077(n+1)*8^(n+1).

The programs for A096252, the canonical program `A096252.P8315076045773803011` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096252 has offset 0).

The definition of A096252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096252.P17311178426245815535

`4*(-1)^floor((n+1)/2)*A138230(n)`
-/

namespace A096252.P17311178426245815535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (-1 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) * (A138230 n : ℚ)

end

end A096252.P17311178426245815535

namespace A096252

/-- `4*(-1)^floor((n+1)/2)*A138230(n)` -/
def P17311178426245815535.Spec : Prop :=
  ∀ n, P17311178426245815535.a n = (A096252 n : ℚ)

end A096252

/-! ## A096252.P8315076045773803011

`4*a(n-2)-16*a(n-4)` with `a(0)=4, a(1)=-4, a(2)=8, a(3)=-32`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096252

/-- `4*a(n-2)-16*a(n-4)` -/
def P8315076045773803011.Spec : Prop :=
  ∀ n, P8315076045773803011.a n = A096252 n

theorem P8315076045773803011.correct : P8315076045773803011.Spec := by
  intro n
  simp only [A096252]

end A096252

/-! ## A096252.P8440044626943360128

`∏[A132954(n+2)]`
-/

namespace A096252.P8440044626943360128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A096252.P8440044626943360128

namespace A096252

/-- `∏[A132954(n+2)]` -/
def P8440044626943360128.Spec : Prop :=
  ∀ n, P8440044626943360128.a n = A096252 n

end A096252

/-! ## A096252.P7295231763909220317

`∏[A146501(n+1)-A146501(n)]`
-/

namespace A096252.P7295231763909220317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146501 (n + 1) - A146501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A096252.P7295231763909220317

namespace A096252

/-- `∏[A146501(n+1)-A146501(n)]` -/
def P7295231763909220317.Spec : Prop :=
  ∀ n, P7295231763909220317.a n = A096252 n

end A096252

/-! ## A096252.P777717876248441354

`2*A087204(2*n)*A099087(2*n)`
-/

namespace A096252.P777717876248441354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A087204 (2 * n) * A099087 (2 * n))

end

end A096252.P777717876248441354

namespace A096252

/-- `2*A087204(2*n)*A099087(2*n)` -/
def P777717876248441354.Spec : Prop :=
  ∀ n, P777717876248441354.a n = A096252 n

end A096252

/-! ## A096252.P12345522388335916342

`2*A087204(2*n)*A108520(2*n)`
-/

namespace A096252.P12345522388335916342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A087204 (2 * n) * A108520 (2 * n))

end

end A096252.P12345522388335916342

namespace A096252

/-- `2*A087204(2*n)*A108520(2*n)` -/
def P12345522388335916342.Spec : Prop :=
  ∀ n, P12345522388335916342.a n = A096252 n

end A096252

/-! ## A096252.P13289847463381801422

`2*A009545(2*n+1)*A087204(2*n)`
-/

namespace A096252.P13289847463381801422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A009545 (2 * n + 1) * A087204 (2 * n))

end

end A096252.P13289847463381801422

namespace A096252

/-- `2*A009545(2*n+1)*A087204(2*n)` -/
def P13289847463381801422.Spec : Prop :=
  ∀ n, P13289847463381801422.a n = A096252 n

end A096252

/-! ## A096252.P4383124622036608782

`A057077(n+2)*A137717(n+1)`
-/

namespace A096252.P4383124622036608782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 2) * A137717 (n + 1)

end

end A096252.P4383124622036608782

namespace A096252

/-- `A057077(n+2)*A137717(n+1)` -/
def P4383124622036608782.Spec : Prop :=
  ∀ n, P4383124622036608782.a n = A096252 n

end A096252

/-! ## A096252.P11352797355766721788

`A128018(2*(n+1))/A146559(2*n+3)`
-/

namespace A096252.P11352797355766721788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128018 (2 * (n + 1)) : ℚ) / (A146559 (2 * n + 3) : ℚ)

end

end A096252.P11352797355766721788

namespace A096252

/-- `A128018(2*(n+1))/A146559(2*n+3)` -/
def P11352797355766721788.Spec : Prop :=
  ∀ n, P11352797355766721788.a n = (A096252 n : ℚ)

end A096252

/-! ## A096252.P15613250791400326299

`A138230(2*n+3)/A146559(2*n+3)`
-/

namespace A096252.P15613250791400326299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138230 (2 * n + 3) : ℚ) / (A146559 (2 * n + 3) : ℚ)

end

end A096252.P15613250791400326299

namespace A096252

/-- `A138230(2*n+3)/A146559(2*n+3)` -/
def P15613250791400326299.Spec : Prop :=
  ∀ n, P15613250791400326299.a n = (A096252 n : ℚ)

end A096252

/-! ## A096252.P12121045618279699508

`A000079(n+1)*A057079(A000217(n+1))`
-/

namespace A096252.P12121045618279699508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A057079 (A000217 (n + 1)).toNat

end

end A096252.P12121045618279699508

namespace A096252

/-- `A000079(n+1)*A057079(A000217(n+1))` -/
def P12121045618279699508.Spec : Prop :=
  ∀ n, P12121045618279699508.a n = A096252 n

end A096252

/-!
# A096254: Numbers n such that 5*10^n + 3 is prime.

The programs for A096254, there is no canonical definition to state claims against.
-/

/-! ## A096254.P10134846564218054370

`A101568(n+1)+1`
-/

namespace A096254.P10134846564218054370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101568 (n + 1) + 1

end

end A096254.P10134846564218054370

/-!
# A096258: Number of partitions of n into distinct nonprime parts.

The programs for A096258, there is no canonical definition to state claims against.
-/

/-! ## A096258.P15932739569915155777

`A204389(abs(1-n))+A204389(n)`
-/

namespace A096258.P15932739569915155777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204389 |1 - (n : ℤ)|.toNat + A204389 n

end

end A096258.P15932739569915155777

/-! ## A096258.P16091195809679195472

`∑{e}[A000079(A358640(n)), #]`
-/

namespace A096258.P16091195809679195472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A358640 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A096258.P16091195809679195472

/-! ## A096258.P6534565634586368650

`A358640(n)%A050673(n+1)`
-/

namespace A096258.P6534565634586368650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358640 n) (A050673 (n + 1))

end

end A096258.P6534565634586368650

/-! ## A096258.P1129183656984365416

`A005171(A005915(n))*A358640(n)`
-/

namespace A096258.P1129183656984365416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A005915 n).toNat * A358640 n

end

end A096258.P1129183656984365416

/-! ## A096258.P2365611160461386526

`A224697(A000124(n))*A358640(n)`
-/

namespace A096258.P2365611160461386526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224697 (A000124 n).toNat * A358640 n

end

end A096258.P2365611160461386526

/-!
# A096259: Longest period of an abstract version of the game of Go on a 1 X n board.

The programs for A096259, there is no canonical definition to state claims against.
-/

/-! ## A096259.P17015576282616522561

`A090695(n+1)*A275676(A213098(n))`
-/

namespace A096259.P17015576282616522561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090695 (n + 1) * A275676 (A213098 n).toNat

end

end A096259.P17015576282616522561

/-! ## A096259.P16779122716705864622

`A165477(A005568(n)*A182850(n+5))`
-/

namespace A096259.P16779122716705864622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 (A005568 n * A182850 (n + 5)).toNat

end

end A096259.P16779122716705864622

/-!
# A096260: Number of different triangles, squares and rectangles created when a square piece of paper is folded n times, the first time by a diagonal of the square and after by the median of the triangle.

The programs for A096260, there is no canonical definition to state claims against.
-/

/-! ## A096260.P10154813567708246385

`or(A264685(n), A309108(A095983(n)))`
-/

namespace A096260.P10154813567708246385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A264685 n) (A309108 (A095983 n).toNat)

end

end A096260.P10154813567708246385

/-! ## A096260.P7075283743837765846

`A358374(A000712(n))+A085780(n+1)`
-/

namespace A096260.P7075283743837765846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358374 (A000712 n).toNat + A085780 (n + 1)

end

end A096260.P7075283743837765846

/-!
# A096261: Number of n-tuples of 0,1,2,3,4,5,6,7,8,9 without consecutive digits.

The programs for A096261, there is no canonical definition to state claims against.
-/

/-! ## A096261.P9710303685000264409

`A277666(eq[10, A025581(n)])`
-/

namespace A096261.P9710303685000264409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096261.P9710303685000264409

/-! ## A096261.P18085804349556980917

`A277666(eq[11, A004736(n+1)])`
-/

namespace A096261.P18085804349556980917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096261.P18085804349556980917

/-! ## A096261.P3613371520300305480

`A277666(A000096(n+9)+n+1)`
-/

namespace A096261.P3613371520300305480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A000096 (n + 9) + (n + 1 : ℤ)).toNat

end

end A096261.P3613371520300305480

/-! ## A096261.P12118877223424268078

`A277666(A000124(n+10)+n-1)`
-/

namespace A096261.P12118877223424268078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A000124 (n + 10) + ((n : ℤ) - 1)).toNat

end

end A096261.P12118877223424268078

/-! ## A096261.P17514968632312348453

`A277666(A112355(n+8)+n)`
-/

namespace A096261.P17514968632312348453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A112355 (n + 8) + (n : ℤ)).toNat

end

end A096261.P17514968632312348453

/-!
# A096262: An exceptional set of 26 prime powers related to elliptic curves over finite fields.

The programs for A096262, there is no canonical definition to state claims against.
-/

/-! ## A096262.P8141199122551513209

`eq[A063698(n), A329266(2*n)]`
-/

namespace A096262.P8141199122551513209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329266 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096262.P8141199122551513209

/-! ## A096262.P5885209703051829777

`A074583(A187829(n+1)+2)`
-/

namespace A096262.P5885209703051829777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (A187829 (n + 1) + 2).toNat

end

end A096262.P5885209703051829777

/-! ## A096262.P13782396537279136727

`A343983(A187829(n+1)+2)`
-/

namespace A096262.P13782396537279136727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (A187829 (n + 1) + 2).toNat

end

end A096262.P13782396537279136727

/-! ## A096262.P2755382990369071073

`A343983(A000005(2^(n+2)))`
-/

namespace A096262.P2755382990369071073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (A000005 (2 ^ (n + 2))).toNat

end

end A096262.P2755382990369071073

/-! ## A096262.P5037444745811221384

`filter[A357409(2*n+1), A069513(#)]`
-/

namespace A096262.P5037444745811221384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357409 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A096262.P5037444745811221384

/-!
# A096264: Primes that do not divide any terms of the sequence f given by f(1) = 2, f(n+1) = f(n)^2-f(n)+1.

The programs for A096264, there is no canonical definition to state claims against.
-/

/-! ## A096264.P12624615713085379424

`A000040(lt[A322250(n+5), A343535(n)])`
-/

namespace A096264.P12624615713085379424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322250 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096264.P12624615713085379424

/-! ## A096264.P15758649377320583223

`record[A000040(A316847(A138109(n+1)))]`
-/

namespace A096264.P15758649377320583223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A316847 (A138109 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096264.P15758649377320583223

/-! ## A096264.P17538956728483772594

`A008578(lt[A118233(3*n+1), A004526(n)])`
-/

namespace A096264.P17538956728483772594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118233 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096264.P17538956728483772594

/-! ## A096264.P11279714857205183219

`A000040(lt[A164659(3*n+2), A127757(n+1)])`
-/

namespace A096264.P11279714857205183219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164659 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096264.P11279714857205183219

/-! ## A096264.P10070151108542698185

`A000040(lt[A191439(3*n+5), A138940(3*n+1)])`
-/

namespace A096264.P10070151108542698185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191439 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138940 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096264.P10070151108542698185

/-!
# A096265: Aloof primes: Total distance between prime and neighboring primes sets record.

The programs for A096265, there is no canonical definition to state claims against.
-/

/-! ## A096265.P3863864117975927610

`A001748(A098969(n))/3`
-/

namespace A096265.P3863864117975927610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A098969 n).toNat : ℚ) / 3

end

end A096265.P3863864117975927610

/-! ## A096265.P1508027017977082834

`A000040(A098969(n))`
-/

namespace A096265.P1508027017977082834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A098969 n).toNat

end

end A096265.P1508027017977082834

/-! ## A096265.P13453449565461247381

`A008578(A098969(n)+1)`
-/

namespace A096265.P13453449565461247381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A098969 n + 1).toNat

end

end A096265.P13453449565461247381

/-! ## A096265.P3420035006229060345

`A158611(A098969(n)+2)`
-/

namespace A096265.P3420035006229060345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A098969 n + 2).toNat

end

end A096265.P3420035006229060345

/-! ## A096265.P17894451654178680883

`∑{d}[A098969(n), A007444(#)]`
-/

namespace A096265.P17894451654178680883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A096265.P17894451654178680883

/-!
# A096266: Balanced prime number records (A082080).

The programs for A096266, there is no canonical definition to state claims against.
-/

/-! ## A096266.P459343769229790651

`record[A082080(n)]`
-/

namespace A096266.P459343769229790651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096266.P459343769229790651

/-! ## A096266.P4288410088455034189

`A082080(A096692(n+1))`
-/

namespace A096266.P4288410088455034189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082080 (A096692 (n + 1)).toNat

end

end A096266.P4288410088455034189

/-! ## A096266.P16343089057988954621

`A000040(record[A364163(n)])`
-/

namespace A096266.P16343089057988954621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096266.P16343089057988954621

/-! ## A096266.P14765397045451625732

`A082080(eq[A086742(n), A329340(n)])`
-/

namespace A096266.P14765397045451625732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082080 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A096266.P14765397045451625732

/-! ## A096266.P10226401062131412206

`A082080(eq[A086742(n), A204551(n+1)])`
-/

namespace A096266.P10226401062131412206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082080 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A096266.P10226401062131412206

/-!
# A096267: Number of fixed polyedges with n edges (number of ways of embedding connected undirected graphs with n edges into the plane square lattice, inequivalent up to translation).

The programs for A096267, there is no canonical definition to state claims against.
-/

/-! ## A096267.P1932779664152923451

`A385581(∑[n+2])`
-/

namespace A096267.P1932779664152923451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385581 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096267.P1932779664152923451

/-! ## A096267.P2205451016427611843

`A393002(n+1)/2`
-/

namespace A096267.P2205451016427611843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393002 (n + 1) : ℚ) / 2

end

end A096267.P2205451016427611843

/-! ## A096267.P11667362265646330185

`A004277(A319156(n+1))`
-/

namespace A096267.P11667362265646330185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A319156 (n + 1)).toNat

end

end A096267.P11667362265646330185

/-!
# A096268: Period-doubling sequence (or period-doubling word): fixed point of the morphism 0 -> 01, 1 -> 00.

The programs for A096268, the canonical program `A096268.P10327595005272142114` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096268 has offset 0).

The definition of A096268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096268.P10327595005272142114

`1-A035263(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A096268

/-- `1-A035263(n+1)` -/
def P10327595005272142114.Spec : Prop :=
  ∀ n, P10327595005272142114.a n = A096268 n

theorem P10327595005272142114.correct : P10327595005272142114.Spec := by
  intro n
  simp only [A096268]

end A096268

/-! ## A096268.P16921640797150512886

`A056832(n+1)-1`
-/

namespace A096268.P16921640797150512886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1) - 1

end

end A096268.P16921640797150512886

namespace A096268

/-- `A056832(n+1)-1` -/
def P16921640797150512886.Spec : Prop :=
  ∀ n, P16921640797150512886.a n = A096268 n

end A096268

/-! ## A096268.P13657975560720845774

`val(n+1, 2)%2`
-/

namespace A096268.P13657975560720845774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

end

end A096268.P13657975560720845774

namespace A096268

/-- `val(n+1, 2)%2` -/
def P13657975560720845774.Spec : Prop :=
  ∀ n, (P13657975560720845774.a n : ℤ) = A096268 n

end A096268

/-! ## A096268.P2851294663928836260

`and(1, val(n+1, 2))`
-/

namespace A096268.P2851294663928836260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (n + 1) 2)

end

end A096268.P2851294663928836260

namespace A096268

/-- `and(1, val(n+1, 2))` -/
def P2851294663928836260.Spec : Prop :=
  ∀ n, (P2851294663928836260.a n : ℤ) = A096268 n

end A096268

/-! ## A096268.P1479313607139535987

`and(n, -(n+2))%3`
-/

namespace A096268.P1479313607139535987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n + 2 : ℤ))) 3

end

end A096268.P1479313607139535987

namespace A096268

/-- `and(n, -(n+2))%3` -/
def P1479313607139535987.Spec : Prop :=
  ∀ n, P1479313607139535987.a n = A096268 n

end A096268

/-! ## A096268.P9695169782897995655

`2-gcd(2, val(n+1, 2))`
-/

namespace A096268.P9695169782897995655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 (SequenceMachineLib.valuation (n + 1) 2) : ℤ)

end

end A096268.P9695169782897995655

namespace A096268

/-- `2-gcd(2, val(n+1, 2))` -/
def P9695169782897995655.Spec : Prop :=
  ∀ n, P9695169782897995655.a n = A096268 n

end A096268

/-! ## A096268.P3427678966497521424

`1-xor(n, n+1)%3`
-/

namespace A096268.P3427678966497521424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.xor n (n + 1) % 3 : ℕ) : ℤ)

end

end A096268.P3427678966497521424

namespace A096268

/-- `1-xor(n, n+1)%3` -/
def P3427678966497521424.Spec : Prop :=
  ∀ n, P3427678966497521424.a n = A096268 n

end A096268

/-! ## A096268.P382138564160996224

`val(xor(n, n+1)+3, 6)`
-/

namespace A096268.P382138564160996224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.xor n (n + 1) + 3) 6

end

end A096268.P382138564160996224

namespace A096268

/-- `val(xor(n, n+1)+3, 6)` -/
def P382138564160996224.Spec : Prop :=
  ∀ n, (P382138564160996224.a n : ℤ) = A096268 n

end A096268

/-! ## A096268.P17322219474357749398

`4%gcd(3, xor(n, n+1))`
-/

namespace A096268.P17322219474357749398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 % Nat.gcd 3 (Nat.xor n (n + 1))

end

end A096268.P17322219474357749398

namespace A096268

/-- `4%gcd(3, xor(n, n+1))` -/
def P17322219474357749398.Spec : Prop :=
  ∀ n, (P17322219474357749398.a n : ℤ) = A096268 n

end A096268

/-! ## A096268.P17701316501490591453

`(n-and(n, n+1))%3`
-/

namespace A096268.P17701316501490591453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - (Nat.land n (n + 1) : ℤ)) 3

end

end A096268.P17701316501490591453

namespace A096268

/-- `(n-and(n, n+1))%3` -/
def P17701316501490591453.Spec : Prop :=
  ∀ n, P17701316501490591453.a n = A096268 n

end A096268

/-! ## A096268.P8253811169205329569

`xor(n, and(n, n+1))%3`
-/

namespace A096268.P8253811169205329569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.land n (n + 1)) % 3

end

end A096268.P8253811169205329569

namespace A096268

/-- `xor(n, and(n, n+1))%3` -/
def P8253811169205329569.Spec : Prop :=
  ∀ n, (P8253811169205329569.a n : ℤ) = A096268 n

end A096268

/-! ## A096268.P12800391926853811205

`val(val(n+1, 2)²+1, 2)`
-/

namespace A096268.P12800391926853811205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.valuation (n + 1) 2 ^ 2 + 1) 2

end

end A096268.P12800391926853811205

namespace A096268

/-- `val(val(n+1, 2)²+1, 2)` -/
def P12800391926853811205.Spec : Prop :=
  ∀ n, (P12800391926853811205.a n : ℤ) = A096268 n

end A096268

/-! ## A096268.P2348500350673191938

`or(-2, val(n+1, 2))+2`
-/

namespace A096268.P2348500350673191938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-2) (SequenceMachineLib.valuation (n + 1) 2 : ℤ) + 2

end

end A096268.P2348500350673191938

namespace A096268

/-- `or(-2, val(n+1, 2))+2` -/
def P2348500350673191938.Spec : Prop :=
  ∀ n, P2348500350673191938.a n = A096268 n

end A096268

/-! ## A096268.P5935914715905800956

`(xor(n, n+1)+2)²%3`
-/

namespace A096268.P5935914715905800956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) + 2) ^ 2 % 3

end

end A096268.P5935914715905800956

namespace A096268

/-- `(xor(n, n+1)+2)²%3` -/
def P5935914715905800956.Spec : Prop :=
  ∀ n, (P5935914715905800956.a n : ℤ) = A096268 n

end A096268

/-! ## A096268.P6690366218857576930

`n%(2-a(floor(n/2)))` with `a(0)=0`
-/

namespace A096268.P6690366218857576930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (n : ℤ) (2 - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A096268.P6690366218857576930

namespace A096268

/-- `n%(2-a(floor(n/2)))` -/
def P6690366218857576930.Spec : Prop :=
  ∀ n, P6690366218857576930.a n = A096268 n

end A096268

/-! ## A096268.P7541663001489882907

`xor(2*n+3, 2*n)%3`
-/

namespace A096268.P7541663001489882907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n + 3) (2 * n) % 3

end

end A096268.P7541663001489882907

namespace A096268

/-- `xor(2*n+3, 2*n)%3` -/
def P7541663001489882907.Spec : Prop :=
  ∀ n, (P7541663001489882907.a n : ℤ) = A096268 n

end A096268

/-! ## A096268.P10735632911075642190

`(or(n, n+1)-(n+1))%3`
-/

namespace A096268.P10735632911075642190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.lor n (n + 1) : ℤ) - (n + 1 : ℤ)) 3

end

end A096268.P10735632911075642190

namespace A096268

/-- `(or(n, n+1)-(n+1))%3` -/
def P10735632911075642190.Spec : Prop :=
  ∀ n, P10735632911075642190.a n = A096268 n

end A096268

/-! ## A096268.P16056044861140411065

`(or(n, n+1)%(n+1))%3`
-/

namespace A096268.P16056044861140411065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) % (n + 1) % 3

end

end A096268.P16056044861140411065

namespace A096268

/-- `(or(n, n+1)%(n+1))%3` -/
def P16056044861140411065.Spec : Prop :=
  ∀ n, (P16056044861140411065.a n : ℤ) = A096268 n

end A096268

/-! ## A096268.P17441856422190728903

`and(1, -val(2*n-(n-1), 2))`
-/

namespace A096268.P17441856422190728903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-(SequenceMachineLib.valuation ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat 2 : ℤ))

end

end A096268.P17441856422190728903

namespace A096268

/-- `and(1, -val(2*n-(n-1), 2))` -/
def P17441856422190728903.Spec : Prop :=
  ∀ n, P17441856422190728903.a n = A096268 n

end A096268

/-!
# A096269: a(n) = number of distinct palindromes of length n that occur in A096268.

The programs for A096269, the canonical program `A096269.P7324626192486647762` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096269 has offset 1).

The definition of A096269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096269.P7324626192486647762

`char[A038558(n)]+3-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A096269

/-- `char[A038558(n)]+3-a(n-1)` -/
def P7324626192486647762.Spec : Prop :=
  ∀ n, P7324626192486647762.a n = A096269 (n + 1)

theorem P7324626192486647762.correct : P7324626192486647762.Spec := by
  intro n
  simp only [A096269, Nat.add_sub_cancel]

end A096269

/-! ## A096269.P7781915307553915792

`4-a(n-1)-char[record[A038572(n)]]` with `a(0)=2`
-/

namespace A096269.P7781915307553915792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 - a (n - 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A096269.P7781915307553915792

namespace A096269

/-- `4-a(n-1)-char[record[A038572(n)]]` -/
def P7781915307553915792.Spec : Prop :=
  ∀ n, P7781915307553915792.a n = A096269 (n + 1)

end A096269

/-! ## A096269.P14389705024300635720

`log2(A214212(n+1))+2-a(n-1)` with `a(0)=2`
-/

namespace A096269.P14389705024300635720
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  Real.logb 2 (A214212 (n + 1) : ℝ) + (2 - a (n - 1))

end

end A096269.P14389705024300635720

namespace A096269

/-- `log2(A214212(n+1))+2-a(n-1)` -/
def P14389705024300635720.Spec : Prop :=
  ∀ n, P14389705024300635720.a n = (A096269 (n + 1) : ℝ)

end A096269

/-! ## A096269.P13284486735455126663

`gcd(2, A333776(n))+2-a(n-1)` with `a(0)=2`
-/

namespace A096269.P13284486735455126663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Int.gcd 2 (A333776 n) + 2 : ℤ) - a (n - 1)

end

end A096269.P13284486735455126663

namespace A096269

/-- `gcd(2, A333776(n))+2-a(n-1)` -/
def P13284486735455126663.Spec : Prop :=
  ∀ n, P13284486735455126663.a n = A096269 (n + 1)

end A096269

/-! ## A096269.P16855275226910326521

`2-(a(n-1)-2/A079882(A011371(2*n)))` with `a(0)=2`
-/

namespace A096269.P16855275226910326521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 - (a (n - 1) - 2 / (A079882 (A011371 (2 * n)).toNat : ℚ))

end

end A096269.P16855275226910326521

namespace A096269

/-- `2-(a(n-1)-2/A079882(A011371(2*n)))` -/
def P16855275226910326521.Spec : Prop :=
  ∀ n, P16855275226910326521.a n = (A096269 (n + 1) : ℚ)

end A096269

/-! ## A096269.P12944565422520614468

`2-(a(n-1)-2/A079882(4*n))` with `a(0)=2`
-/

namespace A096269.P12944565422520614468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 - (a (n - 1) - 2 / (A079882 (4 * n) : ℚ))

end

end A096269.P12944565422520614468

namespace A096269

/-- `2-(a(n-1)-2/A079882(4*n))` -/
def P12944565422520614468.Spec : Prop :=
  ∀ n, P12944565422520614468.a n = (A096269 (n + 1) : ℚ)

end A096269

/-! ## A096269.P6775980535675143647

`3-(a(n-1)-A086694(4*n+1))` with `a(0)=2, a(1)=1`
-/

namespace A096269.P6775980535675143647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  3 - (a (n - 1) - A086694 (4 * n + 1))

end

end A096269.P6775980535675143647

namespace A096269

/-- `3-(a(n-1)-A086694(4*n+1))` -/
def P6775980535675143647.Spec : Prop :=
  ∀ n, P6775980535675143647.a n = A096269 (n + 1)

end A096269

/-! ## A096269.P14086056385736308746

`A280193(n)+A001285(A006995(n+1))`
-/

namespace A096269.P14086056385736308746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n + A001285 (A006995 (n + 1)).toNat

end

end A096269.P14086056385736308746

namespace A096269

/-- `A280193(n)+A001285(A006995(n+1))` -/
def P14086056385736308746.Spec : Prop :=
  ∀ n, P14086056385736308746.a n = A096269 (n + 1)

end A096269

/-! ## A096269.P3206943787921899869

`xor(2, A277773(2*n+1))%5`
-/

namespace A096269.P3206943787921899869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 2 (A277773 (2 * n + 1))) 5

end

end A096269.P3206943787921899869

namespace A096269

/-- `xor(2, A277773(2*n+1))%5` -/
def P3206943787921899869.Spec : Prop :=
  ∀ n, P3206943787921899869.a n = A096269 (n + 1)

end A096269

/-!
# A096270: Fixed point of the morphism 0->01, 1->011.

The programs for A096270, the canonical program `A096270.P13790899221262938555` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096270 has offset 0).

The definition of A096270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096270.P10222741361810789444

`Δ[floor(n/ϕ)]`
-/

namespace A096270.P10222741361810789444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096270.P10222741361810789444

namespace A096270

/-- `Δ[floor(n/ϕ)]` -/
def P10222741361810789444.Spec : Prop :=
  ∀ n, P10222741361810789444.a n = A096270 n

end A096270

/-! ## A096270.P16937897742424431057

`3%Δ[floor(ϕ*n)]`
-/

namespace A096270.P16937897742424431057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f1 (n + 1) - f1 n)

end

end A096270.P16937897742424431057

namespace A096270

/-- `3%Δ[floor(ϕ*n)]` -/
def P16937897742424431057.Spec : Prop :=
  ∀ n, P16937897742424431057.a n = A096270 n

end A096270

/-! ## A096270.P3854026243296023712

`val(Δ[floor(ϕ*n)], 2)`
-/

namespace A096270.P3854026243296023712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A096270.P3854026243296023712

namespace A096270

/-- `val(Δ[floor(ϕ*n)], 2)` -/
def P3854026243296023712.Spec : Prop :=
  ∀ n, (P3854026243296023712.a n : ℤ) = A096270 n

end A096270

/-! ## A096270.P1040576659282167630

`C(Δ[floor(ϕ*n)], 2)`
-/

namespace A096270.P1040576659282167630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A096270.P1040576659282167630

namespace A096270

/-- `C(Δ[floor(ϕ*n)], 2)` -/
def P1040576659282167630.Spec : Prop :=
  ∀ n, (P1040576659282167630.a n : ℤ) = A096270 n

end A096270

/-! ## A096270.P12152058440256211643

`Δ[floor(ϕ*n)]!-1`
-/

namespace A096270.P12152058440256211643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) - 1

end

end A096270.P12152058440256211643

namespace A096270

/-- `Δ[floor(ϕ*n)]!-1` -/
def P12152058440256211643.Spec : Prop :=
  ∀ n, P12152058440256211643.a n = A096270 n

end A096270

/-! ## A096270.P9489752421633258615

`and(1, Δ[floor(n*ϕ²)])`
-/

namespace A096270.P9489752421633258615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A096270.P9489752421633258615

namespace A096270

/-- `and(1, Δ[floor(n*ϕ²)])` -/
def P9489752421633258615.Spec : Prop :=
  ∀ n, P9489752421633258615.a n = A096270 n

end A096270

/-! ## A096270.P11116168863546675751

`gcd(2, Δ[floor(ϕ*n)])-1`
-/

namespace A096270.P11116168863546675751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (f1 (n + 1) - f1 n) : ℤ) - 1

end

end A096270.P11116168863546675751

namespace A096270

/-- `gcd(2, Δ[floor(ϕ*n)])-1` -/
def P11116168863546675751.Spec : Prop :=
  ∀ n, P11116168863546675751.a n = A096270 n

end A096270

/-! ## A096270.P8941288653631405272

`1-and(1, Δ[floor(ϕ*n)])`
-/

namespace A096270.P8941288653631405272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 1 (f1 (n + 1) - f1 n)

end

end A096270.P8941288653631405272

namespace A096270

/-- `1-and(1, Δ[floor(ϕ*n)])` -/
def P8941288653631405272.Spec : Prop :=
  ∀ n, P8941288653631405272.a n = A096270 n

end A096270

/-! ## A096270.P13790899221262938555

`Δ[n+1-a(a(n-1))]²` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096270

/-- `Δ[n+1-a(a(n-1))]²` -/
def P13790899221262938555.Spec : Prop :=
  ∀ n, P13790899221262938555.a n = A096270 n

theorem P13790899221262938555.correct : P13790899221262938555.Spec := by
  intro n
  simp only [A096270]

end A096270

/-! ## A096270.P16979999093524379462

`log2(A001468(n))`
-/

namespace A096270.P16979999093524379462
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001468 n : ℝ)

end

end A096270.P16979999093524379462

namespace A096270

/-- `log2(A001468(n))` -/
def P16979999093524379462.Spec : Prop :=
  ∀ n, P16979999093524379462.a n = (A096270 n : ℝ)

end A096270

/-! ## A096270.P17600554244544712008

`A282162(n)-2`
-/

namespace A096270.P17600554244544712008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 n - 2

end

end A096270.P17600554244544712008

namespace A096270

/-- `A282162(n)-2` -/
def P17600554244544712008.Spec : Prop :=
  ∀ n, P17600554244544712008.a n = A096270 n

end A096270

/-! ## A096270.P4575561921245252320

`log2(Δ[A026351(n)])`
-/

namespace A096270.P4575561921245252320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A096270.P4575561921245252320

namespace A096270

/-- `log2(Δ[A026351(n)])` -/
def P4575561921245252320.Spec : Prop :=
  ∀ n, P4575561921245252320.a n = (A096270 n : ℝ)

end A096270

/-! ## A096270.P504747523374916003

`log2(Δ[A066096(n)])`
-/

namespace A096270.P504747523374916003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A096270.P504747523374916003

namespace A096270

/-- `log2(Δ[A066096(n)])` -/
def P504747523374916003.Spec : Prop :=
  ∀ n, P504747523374916003.a n = (A096270 n : ℝ)

end A096270

/-! ## A096270.P417627600317776676

`char[Δ[A054347(n)]]`
-/

namespace A096270.P417627600317776676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A096270.P417627600317776676

namespace A096270

/-- `char[Δ[A054347(n)]]` -/
def P417627600317776676.Spec : Prop :=
  ∀ n, (P417627600317776676.a n : ℤ) = A096270 n

end A096270

/-! ## A096270.P14840795186532797791

`A005614(abs(1-n))`
-/

namespace A096270.P14840795186532797791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 |1 - (n : ℤ)|.toNat

end

end A096270.P14840795186532797791

namespace A096270

/-- `A005614(abs(1-n))` -/
def P14840795186532797791.Spec : Prop :=
  ∀ n, P14840795186532797791.a n = A096270 n

end A096270

/-! ## A096270.P14307976734276028950

`2-Δ[A195121(n)]`
-/

namespace A096270.P14307976734276028950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A096270.P14307976734276028950

namespace A096270

/-- `2-Δ[A195121(n)]` -/
def P14307976734276028950.Spec : Prop :=
  ∀ n, P14307976734276028950.a n = A096270 n

end A096270

/-!
# A096271: Ternary sequence that is a fixed point of the morphism 0 -> 01, 1 -> 02, 2 -> 00.

The programs for A096271, the canonical program `A096271.P14567043089848542982` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096271 has offset 0).

The definition of A096271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096271.P14567043089848542982

`val(n+1, 2)%3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096271

/-- `val(n+1, 2)%3` -/
def P14567043089848542982.Spec : Prop :=
  ∀ n, (P14567043089848542982.a n : ℤ) = A096271 n

theorem P14567043089848542982.correct : P14567043089848542982.Spec := by
  intro n
  simp only [A096271]

end A096271

/-! ## A096271.P1865364764940780375

`and(3, val((n+1)^4, 8))`
-/

namespace A096271.P1865364764940780375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (SequenceMachineLib.valuation ((n + 1) ^ 4) 8)

end

end A096271.P1865364764940780375

namespace A096271

/-- `and(3, val((n+1)^4, 8))` -/
def P1865364764940780375.Spec : Prop :=
  ∀ n, (P1865364764940780375.a n : ℤ) = A096271 n

end A096271

/-! ## A096271.P17290872005519564983

`and(n, -(n+2))²%7`
-/

namespace A096271.P17290872005519564983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n + 2 : ℤ)) ^ 2) 7

end

end A096271.P17290872005519564983

namespace A096271

/-- `and(n, -(n+2))²%7` -/
def P17290872005519564983.Spec : Prop :=
  ∀ n, P17290872005519564983.a n = A096271 n

end A096271

/-! ## A096271.P4884506390927746816

`floor(log2(xor(n, n+1)))%3`
-/

namespace A096271.P4884506390927746816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.xor n (n + 1)) % 3

end

end A096271.P4884506390927746816

namespace A096271

/-- `floor(log2(xor(n, n+1)))%3` -/
def P4884506390927746816.Spec : Prop :=
  ∀ n, (P4884506390927746816.a n : ℤ) = A096271 n

end A096271

/-! ## A096271.P1785192496978750364

`log2(or(n, n+1)-n)%3`
-/

namespace A096271.P1785192496978750364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ))) 3

end

end A096271.P1785192496978750364

namespace A096271

/-- `log2(or(n, n+1)-n)%3` -/
def P1785192496978750364.Spec : Prop :=
  ∀ n, P1785192496978750364.a n = A096271 n

end A096271

/-! ## A096271.P807616807855408461

`log2(xor(n, or(n, n+1)))%3`
-/

namespace A096271.P807616807855408461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (Nat.xor n (Nat.lor n (n + 1)) : ℝ))) 3

end

end A096271.P807616807855408461

namespace A096271

/-- `log2(xor(n, or(n, n+1)))%3` -/
def P807616807855408461.Spec : Prop :=
  ∀ n, P807616807855408461.a n = A096271 n

end A096271

/-! ## A096271.P7859529376845874442

`(val(record[(n-1)²], 2)/2)%3`
-/

namespace A096271.P7859529376845874442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2 : ℚ) / 2)) 3

end

end A096271.P7859529376845874442

namespace A096271

/-- `(val(record[(n-1)²], 2)/2)%3` -/
def P7859529376845874442.Spec : Prop :=
  ∀ n, P7859529376845874442.a n = A096271 n

end A096271

/-! ## A096271.P18209149305032080797

`((a(floor(n/2))+1)*n%2)%3` with `a(0)=0`
-/

namespace A096271.P18209149305032080797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 2⌋.toNat + 1) * (n % 2) % 3

end

end A096271.P18209149305032080797

namespace A096271

/-- `((a(floor(n/2))+1)*n%2)%3` -/
def P18209149305032080797.Spec : Prop :=
  ∀ n, (P18209149305032080797.a n : ℤ) = A096271 n

end A096271

/-! ## A096271.P4704861994002117592

`10%(log2((n+1-and(n, n+1))%14)+2)`
-/

namespace A096271.P4704861994002117592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 10 (SequenceMachineLib.roundAway (Real.logb 2 (Int.tmod ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ)) 14 : ℝ) + 2))

end

end A096271.P4704861994002117592

namespace A096271

/-- `10%(log2((n+1-and(n, n+1))%14)+2)` -/
def P4704861994002117592.Spec : Prop :=
  ∀ n, P4704861994002117592.a n = A096271 n

end A096271

/-! ## A096271.P8952959193503973753

`A090639(n)%3`
-/

namespace A096271.P8952959193503973753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090639 n) 3

end

end A096271.P8952959193503973753

namespace A096271

/-- `A090639(n)%3` -/
def P8952959193503973753.Spec : Prop :=
  ∀ n, P8952959193503973753.a n = A096271 n

end A096271

/-! ## A096271.P9845004155015536733

`A078734(n+1)-1`
-/

namespace A096271.P9845004155015536733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (n + 1) - 1

end

end A096271.P9845004155015536733

namespace A096271

/-- `A078734(n+1)-1` -/
def P9845004155015536733.Spec : Prop :=
  ∀ n, P9845004155015536733.a n = A096271 n

end A096271

/-! ## A096271.P6013698454028657699

`A007814(n+1)%3`
-/

namespace A096271.P6013698454028657699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (n + 1)) 3

end

end A096271.P6013698454028657699

namespace A096271

/-- `A007814(n+1)%3` -/
def P6013698454028657699.Spec : Prop :=
  ∀ n, P6013698454028657699.a n = A096271 n

end A096271

/-! ## A096271.P6433585574856880047

`(A085058(n)+1)%3`
-/

namespace A096271.P6433585574856880047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085058 n + 1) 3

end

end A096271.P6433585574856880047

namespace A096271

/-- `(A085058(n)+1)%3` -/
def P6433585574856880047.Spec : Prop :=
  ∀ n, P6433585574856880047.a n = A096271 n

end A096271

/-! ## A096271.P11317221049453422800

`A090739(n+1)%3`
-/

namespace A096271.P11317221049453422800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090739 (n + 1)) 3

end

end A096271.P11317221049453422800

namespace A096271

/-- `A090739(n+1)%3` -/
def P11317221049453422800.Spec : Prop :=
  ∀ n, P11317221049453422800.a n = A096271 n

end A096271

/-! ## A096271.P6329294705397934998

`A191255(n+1)%3`
-/

namespace A096271.P6329294705397934998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191255 (n + 1)) 3

end

end A096271.P6329294705397934998

namespace A096271

/-- `A191255(n+1)%3` -/
def P6329294705397934998.Spec : Prop :=
  ∀ n, P6329294705397934998.a n = A096271 n

end A096271

/-! ## A096271.P16505027503635454845

`A010872(val(n+1, 2))`
-/

namespace A096271.P16505027503635454845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (SequenceMachineLib.valuation (n + 1) 2)

end

end A096271.P16505027503635454845

namespace A096271

/-- `A010872(val(n+1, 2))` -/
def P16505027503635454845.Spec : Prop :=
  ∀ n, P16505027503635454845.a n = A096271 n

end A096271

/-! ## A096271.P2714173979069364656

`val(A050985(n+1), 2)`
-/

namespace A096271.P2714173979069364656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050985 (n + 1)).toNat 2

end

end A096271.P2714173979069364656

namespace A096271

/-- `val(A050985(n+1), 2)` -/
def P2714173979069364656.Spec : Prop :=
  ∀ n, (P2714173979069364656.a n : ℤ) = A096271 n

end A096271

/-! ## A096271.P16158410611619814182

`val(A277546(n+1), 2)`
-/

namespace A096271.P16158410611619814182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A277546 (n + 1)).toNat 2

end

end A096271.P16158410611619814182

namespace A096271

/-- `val(A277546(n+1), 2)` -/
def P16158410611619814182.Spec : Prop :=
  ∀ n, (P16158410611619814182.a n : ℤ) = A096271 n

end A096271

/-! ## A096271.P16627113610240184598

`A230630(xor(n, n+1))`
-/

namespace A096271.P16627113610240184598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230630 (Nat.xor n (n + 1))

end

end A096271.P16627113610240184598

namespace A096271

/-- `A230630(xor(n, n+1))` -/
def P16627113610240184598.Spec : Prop :=
  ∀ n, P16627113610240184598.a n = A096271 n

end A096271

/-!
# A096273: a(0)=0, then a(n)=a(n-1)+(n-1) if n is odd, a(n)=a(n/2)+n/2 otherwise.

The programs for A096273, the canonical program `A096273.P18173474624231968017` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096273 has offset 0).

The definition of A096273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096273.P289551376807408813

`A011371(n)+2*A233905(n)`
-/

namespace A096273.P289551376807408813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + 2 * A233905 n

end

end A096273.P289551376807408813

namespace A096273

/-- `A011371(n)+2*A233905(n)` -/
def P289551376807408813.Spec : Prop :=
  ∀ n, P289551376807408813.a n = A096273 n

end A096273

/-! ## A096273.P2146442564802841120

`A233904(n)+2*A011371(n)`
-/

namespace A096273.P2146442564802841120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233904 n + 2 * A011371 n

end

end A096273.P2146442564802841120

namespace A096273

/-- `A233904(n)+2*A011371(n)` -/
def P2146442564802841120.Spec : Prop :=
  ∀ n, P2146442564802841120.a n = A096273 n

end A096273

/-! ## A096273.P6815373001829598900

`A233931(n)+3*A233905(n)`
-/

namespace A096273.P6815373001829598900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233931 n + 3 * A233905 n

end

end A096273.P6815373001829598900

namespace A096273

/-- `A233931(n)+3*A233905(n)` -/
def P6815373001829598900.Spec : Prop :=
  ∀ n, P6815373001829598900.a n = A096273 n

end A096273

/-! ## A096273.P16399121319977497961

`4*A233905(n)-A233904(n)`
-/

namespace A096273.P16399121319977497961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A233905 n - A233904 n

end

end A096273.P16399121319977497961

namespace A096273

/-- `4*A233905(n)-A233904(n)` -/
def P16399121319977497961.Spec : Prop :=
  ∀ n, P16399121319977497961.a n = A096273 n

end A096273

/-! ## A096273.P18173474624231968017

`A029578(n)+a(A029578(n))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A096273

/-- `A029578(n)+a(A029578(n))` -/
def P18173474624231968017.Spec : Prop :=
  ∀ n, P18173474624231968017.a n = A096273 n

theorem P18173474624231968017.correct : P18173474624231968017.Spec := by
  intro n
  simp only [A096273]

end A096273

/-! ## A096273.P15127436775275489212

`A233905(n)+n+A233905(n)-A000120(n)`
-/

namespace A096273.P15127436775275489212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n + (n : ℤ) + (A233905 n - A000120 n)

end

end A096273.P15127436775275489212

namespace A096273

/-- `A233905(n)+n+A233905(n)-A000120(n)` -/
def P15127436775275489212.Spec : Prop :=
  ∀ n, P15127436775275489212.a n = A096273 n

end A096273

/-!
# A096274: Indices of zeros in A096535.

The programs for A096274, there is no canonical definition to state claims against.
-/

/-! ## A096274.P12822100011201525553

`eq[0, A096535(n)]`
-/

namespace A096274.P12822100011201525553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096535 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096274.P12822100011201525553

/-!
# A096275: a(0) = 0, a(1) = 1; a(n) = (a(n-1) + a(n-2)) mod n^2.

The programs for A096275, there is no canonical definition to state claims against.
-/

/-! ## A096275.P4981233604496464783

`(a(n-1)+a(n-2))%(n+1)²` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A096275.P4981233604496464783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  (a (n - 1) + a (n - 2)) % (n + 1) ^ 2

end

end A096275.P4981233604496464783

/-! ## A096275.P14736950406298631798

`record[A256655(n)]%A256654(A256674(n+1))`
-/

namespace A096275.P14736950406298631798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A256654 (A256674 (n + 1)).toNat)

end

end A096275.P14736950406298631798

/-! ## A096275.P13756656348706812343

`or(A058348(A319899(n+1)), A132634(n+1))`
-/

namespace A096275.P13756656348706812343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058348 (A319899 (n + 1)).toNat) (A132634 (n + 1))

end

end A096275.P13756656348706812343

/-!
# A096276: Number of partitions of n with a product <=n.

The programs for A096276, there is no canonical definition to state claims against.
-/

/-! ## A096276.P10679278183092259492

`A001055(n)+a(n-1)` with `a(0)=0`
-/

namespace A096276.P10679278183092259492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001055 n + a (n - 1)

end

end A096276.P10679278183092259492

/-! ## A096276.P8116672605235015155

`a(n-1)+A028422(n)+1` with `a(0)=0`
-/

namespace A096276.P8116672605235015155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A028422 n + 1)

end

end A096276.P8116672605235015155

/-! ## A096276.P6833916374389850112

`∑[A001055(A028310(n))]-1`
-/

namespace A096276.P6833916374389850112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A096276.P6833916374389850112

/-! ## A096276.P8642503095067796592

`∑[A001055(A000038(n)+n)]-1`
-/

namespace A096276.P8642503095067796592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A096276.P8642503095067796592

/-! ## A096276.P12315522570464581541

`∑[A001055(n+1)]-A001055(n+1)`
-/

namespace A096276.P12315522570464581541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001055 (n + 1)

end

end A096276.P12315522570464581541

/-! ## A096276.P14758281375633270432

`∪[∑[A001055(n+1)], A023089(n+1)]`
-/

namespace A096276.P14758281375633270432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A096276.P14758281375633270432

/-! ## A096276.P15236436857334850576

`∑[A028422(n+1)]-A028422(n+1)+n`
-/

namespace A096276.P15236436857334850576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028422 (n + 1) + (n : ℤ)

end

end A096276.P15236436857334850576

/-! ## A096276.P14819994674213397107

`A000041(n)-A114324(n)`
-/

namespace A096276.P14819994674213397107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A114324 n

end

end A096276.P14819994674213397107

/-! ## A096276.P17378529115964788328

`∑[A002865(n)]-A114324(n)`
-/

namespace A096276.P17378529115964788328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A114324 n

end

end A096276.P17378529115964788328

/-! ## A096276.P12690716620311977925

`∑[A319005(n)-A114324(n)]`
-/

namespace A096276.P12690716620311977925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319005 n - A114324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096276.P12690716620311977925

/-! ## A096276.P2247383049848748282

`A035363(2*n)-A114324(n)`
-/

namespace A096276.P2247383049848748282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A114324 n

end

end A096276.P2247383049848748282

/-! ## A096276.P14436931534882212276

`A000009(n)+A047967(n)-A114324(n)`
-/

namespace A096276.P14436931534882212276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A114324 n)

end

end A096276.P14436931534882212276

/-! ## A096276.P10629380122485371495

`A035363(n)+A086543(n)-A114324(n)`
-/

namespace A096276.P10629380122485371495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A086543 n - A114324 n)

end

end A096276.P10629380122485371495

/-! ## A096276.P2244255187113941994

`Δ[A000070(n)]-A319005(n+1)`
-/

namespace A096276.P2244255187113941994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A319005 (n + 1)

end

end A096276.P2244255187113941994

/-! ## A096276.P12422280152241679603

`A000041(n+1)-A319005(n+1)`
-/

namespace A096276.P12422280152241679603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A319005 (n + 1)

end

end A096276.P12422280152241679603

/-! ## A096276.P12940647830541679965

`A379736(n+1)-A114324(n+1)`
-/

namespace A096276.P12940647830541679965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379736 (n + 1) - A114324 (n + 1)

end

end A096276.P12940647830541679965

/-! ## A096276.P6473701389741077502

`Δ[A000070(n)-A319005(n)]-A319005(n)`
-/

namespace A096276.P6473701389741077502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - A319005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A319005 n

end

end A096276.P6473701389741077502

/-! ## A096276.P18363299173989223869

`A347438(n²)+a(n-1)` with `a(0)=0`
-/

namespace A096276.P18363299173989223869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A347438 (n ^ 2) + a (n - 1)

end

end A096276.P18363299173989223869

/-! ## A096276.P3278807017201368537

`A054225(∑[n])-A114324(n)`
-/

namespace A096276.P3278807017201368537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j) - A114324 n

end

end A096276.P3278807017201368537

/-! ## A096276.P13950165379317117779

`A237667(n)+A237668(n)-A114324(n)`
-/

namespace A096276.P13950165379317117779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237667 n + (A237668 n - A114324 n)

end

end A096276.P13950165379317117779

/-!
# A096277: Sum of successive sums of successive primes: a(n) = s(n) + s(n+1) where s(n) = prime(n) + prime(n+1) (A001043).

The programs for A096277, the canonical program `A096277.P17564688573804244660` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096277 has offset 1).

The definition of A096277 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A096277.P17564688573804244660

`A001043(n+1)+A001043(n+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096277

/-- `A001043(n+1)+A001043(n+2)` -/
def P17564688573804244660.Spec : Prop :=
  ∀ n, P17564688573804244660.a n = A096277 (n + 1)

theorem P17564688573804244660.correct : P17564688573804244660.Spec := by
  intro n
  simp only [A096277, Nat.add_sub_cancel]

end A096277

/-! ## A096277.P14132686913433846385

`A000040(n+1)+2*A000040(n+2)+A000040(n+3)`
-/

namespace A096277.P14132686913433846385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A000040 (n + 2) + A000040 (n + 3)

end

end A096277.P14132686913433846385

namespace A096277

/-- `A000040(n+1)+2*A000040(n+2)+A000040(n+3)` -/
def P14132686913433846385.Spec : Prop :=
  ∀ n, P14132686913433846385.a n = A096277 (n + 1)

end A096277

/-! ## A096277.P11130975833880188381

`A065091(n+1)+A034961(n+1)`
-/

namespace A096277.P11130975833880188381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A034961 (n + 1)

end

end A096277.P11130975833880188381

namespace A096277

/-- `A065091(n+1)+A034961(n+1)` -/
def P11130975833880188381.Spec : Prop :=
  ∀ n, P11130975833880188381.a n = A096277 (n + 1)

end A096277

/-! ## A096277.P1893557121604085075

`A364411(n+1)+A215848(n+1)`
-/

namespace A096277.P1893557121604085075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1) + A215848 (n + 1)

end

end A096277.P1893557121604085075

namespace A096277

/-- `A364411(n+1)+A215848(n+1)` -/
def P1893557121604085075.Spec : Prop :=
  ∀ n, P1893557121604085075.a n = A096277 (n + 1)

end A096277

/-! ## A096277.P8042488524348767833

`A034961(n+1)+Δ[A007504(n+1)]`
-/

namespace A096277.P8042488524348767833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + (f1 (n + 1) - f1 n)

end

end A096277.P8042488524348767833

namespace A096277

/-- `A034961(n+1)+Δ[A007504(n+1)]` -/
def P8042488524348767833.Spec : Prop :=
  ∀ n, P8042488524348767833.a n = A096277 (n + 1)

end A096277

/-! ## A096277.P16473324112311732861

`A001749(n+2)+Δ[A001223(n+1)]`
-/

namespace A096277.P16473324112311732861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 2) + (f1 (n + 1) - f1 n)

end

end A096277.P16473324112311732861

namespace A096277

/-- `A001749(n+2)+Δ[A001223(n+1)]` -/
def P16473324112311732861.Spec : Prop :=
  ∀ n, P16473324112311732861.a n = A096277 (n + 1)

end A096277

/-! ## A096277.P614458369144975774

`A000040(n+1)+A001748(n+2)+A001223(n+2)`
-/

namespace A096277.P614458369144975774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A001748 (n + 2) + A001223 (n + 2))

end

end A096277.P614458369144975774

namespace A096277

/-- `A000040(n+1)+A001748(n+2)+A001223(n+2)` -/
def P614458369144975774.Spec : Prop :=
  ∀ n, P614458369144975774.a n = A096277 (n + 1)

end A096277

/-! ## A096277.P5069891152212384174

`A034961(n+1)+A006094(n+1)/A000040(n+1)`
-/

namespace A096277.P5069891152212384174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034961 (n + 1) : ℚ) + (A006094 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A096277.P5069891152212384174

namespace A096277

/-- `A034961(n+1)+A006094(n+1)/A000040(n+1)` -/
def P5069891152212384174.Spec : Prop :=
  ∀ n, P5069891152212384174.a n = (A096277 (n + 1) : ℚ)

end A096277

/-! ## A096277.P8295245393788291974

`A061802(n+2)-A061802(n)`
-/

namespace A096277.P8295245393788291974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 (n + 2) - A061802 n

end

end A096277.P8295245393788291974

namespace A096277

/-- `A061802(n+2)-A061802(n)` -/
def P8295245393788291974.Spec : Prop :=
  ∀ n, P8295245393788291974.a n = A096277 (n + 1)

end A096277

/-! ## A096277.P2604654424425341388

`Δ[A061802(n+1)+A061802(n)]`
-/

namespace A096277.P2604654424425341388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 (n + 1) + A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096277.P2604654424425341388

namespace A096277

/-- `Δ[A061802(n+1)+A061802(n)]` -/
def P2604654424425341388.Spec : Prop :=
  ∀ n, P2604654424425341388.a n = A096277 (n + 1)

end A096277

/-! ## A096277.P8570097710247754956

`A034961(n+1)+A000040(n+2)`
-/

namespace A096277.P8570097710247754956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + A000040 (n + 2)

end

end A096277.P8570097710247754956

namespace A096277

/-- `A034961(n+1)+A000040(n+2)` -/
def P8570097710247754956.Spec : Prop :=
  ∀ n, P8570097710247754956.a n = A096277 (n + 1)

end A096277

/-! ## A096277.P14099126340520795326

`A364411(n+2)+A096379(n+1)`
-/

namespace A096277.P14099126340520795326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 2) + A096379 (n + 1)

end

end A096277.P14099126340520795326

namespace A096277

/-- `A364411(n+2)+A096379(n+1)` -/
def P14099126340520795326.Spec : Prop :=
  ∀ n, P14099126340520795326.a n = A096277 (n + 1)

end A096277

/-! ## A096277.P1478183302479831676

`A034963(n+1)-A031131(n+2)`
-/

namespace A096277.P1478183302479831676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1) - A031131 (n + 2)

end

end A096277.P1478183302479831676

namespace A096277

/-- `A034963(n+1)-A031131(n+2)` -/
def P1478183302479831676.Spec : Prop :=
  ∀ n, P1478183302479831676.a n = A096277 (n + 1)

end A096277

/-! ## A096277.P15523073177709553210

`A100484(n+2)+A048448(n+2)`
-/

namespace A096277.P15523073177709553210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2) + A048448 (n + 2)

end

end A096277.P15523073177709553210

namespace A096277

/-- `A100484(n+2)+A048448(n+2)` -/
def P15523073177709553210.Spec : Prop :=
  ∀ n, P15523073177709553210.a n = A096277 (n + 1)

end A096277

/-! ## A096277.P14110427066942861504

`A011974(n+2)+A011974(n+3)`
-/

namespace A096277.P14110427066942861504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2) + A011974 (n + 3)

end

end A096277.P14110427066942861504

namespace A096277

/-- `A011974(n+2)+A011974(n+3)` -/
def P14110427066942861504.Spec : Prop :=
  ∀ n, P14110427066942861504.a n = A096277 (n + 1)

end A096277

/-! ## A096277.P1829588616112975031

`A034961(n+1)+A068396(n+2)+A004087(n+2)`
-/

namespace A096277.P1829588616112975031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + (A068396 (n + 2) + A004087 (n + 2))

end

end A096277.P1829588616112975031

namespace A096277

/-- `A034961(n+1)+A068396(n+2)+A004087(n+2)` -/
def P1829588616112975031.Spec : Prop :=
  ∀ n, P1829588616112975031.a n = A096277 (n + 1)

end A096277

/-! ## A096277.P17830756657061937685

`A000040(n+1)+A100484(n+2)+A065091(n+2)`
-/

namespace A096277.P17830756657061937685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A100484 (n + 2) + A065091 (n + 2))

end

end A096277.P17830756657061937685

namespace A096277

/-- `A000040(n+1)+A100484(n+2)+A065091(n+2)` -/
def P17830756657061937685.Spec : Prop :=
  ∀ n, P17830756657061937685.a n = A096277 (n + 1)

end A096277

/-! ## A096277.P13328469757437460182

`A034963(n+2)-(A031165(n+1)+A031165(n+2))`
-/

namespace A096277.P13328469757437460182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 2) - (A031165 (n + 1) + A031165 (n + 2))

end

end A096277.P13328469757437460182

namespace A096277

/-- `A034963(n+2)-(A031165(n+1)+A031165(n+2))` -/
def P13328469757437460182.Spec : Prop :=
  ∀ n, P13328469757437460182.a n = A096277 (n + 1)

end A096277

/-! ## A096277.P12805323816634126180

`A062234(n+2)+A364411(n+2)-A001223(n+1)`
-/

namespace A096277.P12805323816634126180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 2) + (A364411 (n + 2) - A001223 (n + 1))

end

end A096277.P12805323816634126180

namespace A096277

/-- `A062234(n+2)+A364411(n+2)-A001223(n+1)` -/
def P12805323816634126180.Spec : Prop :=
  ∀ n, P12805323816634126180.a n = A096277 (n + 1)

end A096277

/-! ## A096277.P8184623352394053912

`A364411(n+1)+A100484(n+2)-A062234(n+2)`
-/

namespace A096277.P8184623352394053912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1) + (A100484 (n + 2) - A062234 (n + 2))

end

end A096277.P8184623352394053912

namespace A096277

/-- `A364411(n+1)+A100484(n+2)-A062234(n+2)` -/
def P8184623352394053912.Spec : Prop :=
  ∀ n, P8184623352394053912.a n = A096277 (n + 1)

end A096277

/-!
# A096278: Sums of successive sums of successive sums of successive primes.

The programs for A096278, the canonical program `A096278.P7027253276892588421` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096278 has offset 1).

The definition of A096278 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096277, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A096278.P7027253276892588421

`A096277(n+1)+A096277(n+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A096278

/-- `A096277(n+1)+A096277(n+2)` -/
def P7027253276892588421.Spec : Prop :=
  ∀ n, P7027253276892588421.a n = A096278 (n + 1)

theorem P7027253276892588421.correct : P7027253276892588421.Spec := by
  intro n
  simp only [A096278, Nat.add_sub_cancel]

end A096278

/-! ## A096278.P5781876759494443854

`A034961(n+1)+A181428(n+1)+A034963(n+1)`
-/

namespace A096278.P5781876759494443854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + (A181428 (n + 1) + A034963 (n + 1))

end

end A096278.P5781876759494443854

namespace A096278

/-- `A034961(n+1)+A181428(n+1)+A034963(n+1)` -/
def P5781876759494443854.Spec : Prop :=
  ∀ n, P5781876759494443854.a n = A096278 (n + 1)

end A096278

/-! ## A096278.P15320230625644538070

`A034963(n+1)+A001043(n+2)+A001043(n+2)`
-/

namespace A096278.P15320230625644538070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1) + (A001043 (n + 2) + A001043 (n + 2))

end

end A096278.P15320230625644538070

namespace A096278

/-- `A034963(n+1)+A001043(n+2)+A001043(n+2)` -/
def P15320230625644538070.Spec : Prop :=
  ∀ n, P15320230625644538070.a n = A096278 (n + 1)

end A096278

/-! ## A096278.P12027303824376758591

`A034961(n+1)+A034961(n+2)+A001043(n+2)`
-/

namespace A096278.P12027303824376758591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + (A034961 (n + 2) + A001043 (n + 2))

end

end A096278.P12027303824376758591

namespace A096278

/-- `A034961(n+1)+A034961(n+2)+A001043(n+2)` -/
def P12027303824376758591.Spec : Prop :=
  ∀ n, P12027303824376758591.a n = A096278 (n + 1)

end A096278

/-! ## A096278.P10237771967451763177

`∑{d}[A007304(n+1), A000040(A001222(#)+n+1)]`
-/

namespace A096278.P10237771967451763177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000040 (A001222 d + (n + 1 : ℤ)).toNat

end

end A096278.P10237771967451763177

namespace A096278

/-- `∑{d}[A007304(n+1), A000040(A001222(#)+n+1)]` -/
def P10237771967451763177.Spec : Prop :=
  ∀ n, P10237771967451763177.a n = A096278 (n + 1)

end A096278

/-! ## A096278.P11971768297009666599

`A287919(A167614(n+2))`
-/

namespace A096278.P11971768297009666599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287919 (A167614 (n + 2)).toNat

end

end A096278.P11971768297009666599

namespace A096278

/-- `A287919(A167614(n+2))` -/
def P11971768297009666599.Spec : Prop :=
  ∀ n, P11971768297009666599.a n = A096278 (n + 1)

end A096278

/-!
# A096279: Sums of successive sums of successive sums of successive sums of successive primes.

The programs for A096279, the canonical program `A096279.P4669439385531479961` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096279 has offset 1).

The definition of A096279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096279.P4669439385531479961

`A096278(n+1)+A096278(n+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A096279

/-- `A096278(n+1)+A096278(n+2)` -/
def P4669439385531479961.Spec : Prop :=
  ∀ n, P4669439385531479961.a n = A096279 (n + 1)

theorem P4669439385531479961.correct : P4669439385531479961.Spec := by
  intro n
  simp only [A096279, Nat.add_sub_cancel]

end A096279

/-! ## A096279.P12198780884926311764

`A287919(A155212(n)+12)`
-/

namespace A096279.P12198780884926311764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287919 (A155212 n + 12).toNat

end

end A096279.P12198780884926311764

namespace A096279

/-- `A287919(A155212(n)+12)` -/
def P12198780884926311764.Spec : Prop :=
  ∀ n, P12198780884926311764.a n = A096279 (n + 1)

end A096279

/-! ## A096279.P16301252581232549633

`A287919(A133263(n+4)+2)`
-/

namespace A096279.P16301252581232549633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287919 (A133263 (n + 4) + 2).toNat

end

end A096279.P16301252581232549633

namespace A096279

/-- `A287919(A133263(n+4)+2)` -/
def P16301252581232549633.Spec : Prop :=
  ∀ n, P16301252581232549633.a n = A096279 (n + 1)

end A096279

/-! ## A096279.P6966434517780989259

`A287919(A000124(n+4)+3)`
-/

namespace A096279.P6966434517780989259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287919 (A000124 (n + 4) + 3).toNat

end

end A096279.P6966434517780989259

namespace A096279

/-- `A287919(A000124(n+4)+3)` -/
def P6966434517780989259.Spec : Prop :=
  ∀ n, P6966434517780989259.a n = A096279 (n + 1)

end A096279

/-! ## A096279.P6928644219464268206

`A287919(A000217(n+4)+4)`
-/

namespace A096279.P6928644219464268206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287919 (A000217 (n + 4) + 4).toNat

end

end A096279.P6928644219464268206

namespace A096279

/-- `A287919(A000217(n+4)+4)` -/
def P6928644219464268206.Spec : Prop :=
  ∀ n, P6928644219464268206.a n = A096279 (n + 1)

end A096279

/-!
# A096280: Primes in A007443 (= binomial transform of primes).

The programs for A096280, there is no canonical definition to state claims against.
-/

/-! ## A096280.P10827950156491244825

`A007443(A287915(n+1))`
-/

namespace A096280.P10827950156491244825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007443 (A287915 (n + 1)).toNat

end

end A096280.P10827950156491244825

/-!
# A096281: Sums of successive twin primes of order 1.

The programs for A096281, the canonical program `A096281.P9870488552655544131` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096281 has offset 1).

The definition of A096281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096281.P5877810071649027803

`∪[A054735(n+1)+A053319(n+1), A054735(n+1)]`
-/

namespace A096281.P5877810071649027803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1) + A053319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A096281.P5877810071649027803

namespace A096281

/-- `∪[A054735(n+1)+A053319(n+1), A054735(n+1)]` -/
def P5877810071649027803.Spec : Prop :=
  ∀ n, (P5877810071649027803.a n : ℤ) = A096281 (n + 1)

end A096281

/-! ## A096281.P9870488552655544131

`A014574(A008619(n+1))+A014574(A008619(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A096281

/-- `A014574(A008619(n+1))+A014574(A008619(n))` -/
def P9870488552655544131.Spec : Prop :=
  ∀ n, P9870488552655544131.a n = A096281 (n + 1)

theorem P9870488552655544131.correct : P9870488552655544131.Spec := by
  intro n
  simp only [A096281, Nat.add_sub_cancel]

end A096281

/-! ## A096281.P5989820201510288638

`A077800(n+1)+A077800(n+2)`
-/

namespace A096281.P5989820201510288638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (n + 1) + A077800 (n + 2)

end

end A096281.P5989820201510288638

namespace A096281

/-- `A077800(n+1)+A077800(n+2)` -/
def P5989820201510288638.Spec : Prop :=
  ∀ n, P5989820201510288638.a n = A096281 (n + 1)

end A096281

/-! ## A096281.P3034568958067544208

`A099609(n+3)+A099609(n+4)`
-/

namespace A096281.P3034568958067544208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099609 (n + 3) + A099609 (n + 4)

end

end A096281.P3034568958067544208

namespace A096281

/-- `A099609(n+3)+A099609(n+4)` -/
def P3034568958067544208.Spec : Prop :=
  ∀ n, P3034568958067544208.a n = A096281 (n + 1)

end A096281

/-! ## A096281.P3001805853112383138

`A014574(A004526(n+3))+A014574(A004526(n)+1)`
-/

namespace A096281.P3001805853112383138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A004526 (n + 3)).toNat + A014574 (A004526 n + 1).toNat

end

end A096281.P3001805853112383138

namespace A096281

/-- `A014574(A004526(n+3))+A014574(A004526(n)+1)` -/
def P3001805853112383138.Spec : Prop :=
  ∀ n, P3001805853112383138.a n = A096281 (n + 1)

end A096281

/-! ## A096281.P1295408853882127922

`A001097(n+1)+A001097(A233583(n+1))`
-/

namespace A096281.P1295408853882127922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) + A001097 (A233583 (n + 1)).toNat

end

end A096281.P1295408853882127922

namespace A096281

/-- `A001097(n+1)+A001097(A233583(n+1))` -/
def P1295408853882127922.Spec : Prop :=
  ∀ n, P1295408853882127922.a n = A096281 (n + 1)

end A096281

/-! ## A096281.P5886512840302297764

`A171821(n+2)+A006530(5*A171821(n+1))`
-/

namespace A096281.P5886512840302297764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 2) + A006530 (5 * A171821 (n + 1)).toNat

end

end A096281.P5886512840302297764

namespace A096281

/-- `A171821(n+2)+A006530(5*A171821(n+1))` -/
def P5886512840302297764.Spec : Prop :=
  ∀ n, P5886512840302297764.a n = A096281 (n + 1)

end A096281

/-! ## A096281.P14439270328866770372

`A107685(n+3)+A107685(n+4)`
-/

namespace A096281.P14439270328866770372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107685 (n + 3) + A107685 (n + 4)

end

end A096281.P14439270328866770372

namespace A096281

/-- `A107685(n+3)+A107685(n+4)` -/
def P14439270328866770372.Spec : Prop :=
  ∀ n, P14439270328866770372.a n = A096281 (n + 1)

end A096281

/-!
# A096282: Sums of successive twin primes of order 2.

The programs for A096282, the canonical program `A096282.P4841603875118736759` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096282 has offset 1).

The definition of A096282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096282.P4841603875118736759

`A096281(n+1)+A096281(n+2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A096282

/-- `A096281(n+1)+A096281(n+2)` -/
def P4841603875118736759.Spec : Prop :=
  ∀ n, P4841603875118736759.a n = A096282 (n + 1)

theorem P4841603875118736759.correct : P4841603875118736759.Spec := by
  intro n
  simp only [A096282, Nat.add_sub_cancel]

end A096282

/-! ## A096282.P525242191315944823

`A077800(n+1)+A077800(n+2)+A077800(n+2)+A077800(n+3)`
-/

namespace A096282.P525242191315944823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (n + 1) + (A077800 (n + 2) + (A077800 (n + 2) + A077800 (n + 3)))

end

end A096282.P525242191315944823

namespace A096282

/-- `A077800(n+1)+A077800(n+2)+A077800(n+2)+A077800(n+3)` -/
def P525242191315944823.Spec : Prop :=
  ∀ n, P525242191315944823.a n = A096282 (n + 1)

end A096282

/-! ## A096282.P17008956009518297751

`A074066(A280968(n+1))+A077800(n+1)+A077800(n+2)`
-/

namespace A096282.P17008956009518297751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (A280968 (n + 1)).toNat + (A077800 (n + 1) + A077800 (n + 2))

end

end A096282.P17008956009518297751

namespace A096282

/-- `A074066(A280968(n+1))+A077800(n+1)+A077800(n+2)` -/
def P17008956009518297751.Spec : Prop :=
  ∀ n, P17008956009518297751.a n = A096282 (n + 1)

end A096282

/-! ## A096282.P7120124140090635899

`A074066(A280968(n+1))+A099609(n+3)+A099609(n+4)`
-/

namespace A096282.P7120124140090635899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (A280968 (n + 1)).toNat + (A099609 (n + 3) + A099609 (n + 4))

end

end A096282.P7120124140090635899

namespace A096282

/-- `A074066(A280968(n+1))+A099609(n+3)+A099609(n+4)` -/
def P7120124140090635899.Spec : Prop :=
  ∀ n, P7120124140090635899.a n = A096282 (n + 1)

end A096282

/-! ## A096282.P13140271435357242659

`A074066(2*A163656(n+1))+A077800(n+1)+A077800(n+2)`
-/

namespace A096282.P13140271435357242659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (2 * A163656 (n + 1)).toNat + (A077800 (n + 1) + A077800 (n + 2))

end

end A096282.P13140271435357242659

namespace A096282

/-- `A074066(2*A163656(n+1))+A077800(n+1)+A077800(n+2)` -/
def P13140271435357242659.Spec : Prop :=
  ∀ n, P13140271435357242659.a n = A096282 (n + 1)

end A096282

/-! ## A096282.P5364280705885829459

`A074066(2*A163656(n+1))+A099609(n+3)+A099609(n+4)`
-/

namespace A096282.P5364280705885829459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (2 * A163656 (n + 1)).toNat + (A099609 (n + 3) + A099609 (n + 4))

end

end A096282.P5364280705885829459

namespace A096282

/-- `A074066(2*A163656(n+1))+A099609(n+3)+A099609(n+4)` -/
def P5364280705885829459.Spec : Prop :=
  ∀ n, P5364280705885829459.a n = A096282 (n + 1)

end A096282

/-! ## A096282.P6612862330305255256

`A074066(A280968(n+1))+A107685(n+3)+A107685(n+4)`
-/

namespace A096282.P6612862330305255256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (A280968 (n + 1)).toNat + (A107685 (n + 3) + A107685 (n + 4))

end

end A096282.P6612862330305255256

namespace A096282

/-- `A074066(A280968(n+1))+A107685(n+3)+A107685(n+4)` -/
def P6612862330305255256.Spec : Prop :=
  ∀ n, P6612862330305255256.a n = A096282 (n + 1)

end A096282

/-! ## A096282.P5274253402512721173

`A074066(2*A163656(n+1))+A107685(n+3)+A107685(n+4)`
-/

namespace A096282.P5274253402512721173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (2 * A163656 (n + 1)).toNat + (A107685 (n + 3) + A107685 (n + 4))

end

end A096282.P5274253402512721173

namespace A096282

/-- `A074066(2*A163656(n+1))+A107685(n+3)+A107685(n+4)` -/
def P5274253402512721173.Spec : Prop :=
  ∀ n, P5274253402512721173.a n = A096282 (n + 1)

end A096282

/-!
# A096283: First sums of successive twin primes of order n.

The programs for A096283, there is no canonical definition to state claims against.
-/

/-! ## A096283.P2762770342945674656

`A007456(A007465(n+1))+A007443(n+2)`
-/

namespace A096283.P2762770342945674656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (A007465 (n + 1)).toNat + A007443 (n + 2)

end

end A096283.P2762770342945674656

/-! ## A096283.P12978670844829932611

`A335454(A000975(2*n+3))+A007443(n+2)`
-/

namespace A096283.P12978670844829932611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335454 (A000975 (2 * n + 3)).toNat + A007443 (n + 2)

end

end A096283.P12978670844829932611

/-!
# A096284: Numerator of the ratio of the preceding two terms.

The programs for A096284, the canonical program `A096284.P16127649767287033803` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096284 has offset 3).

The definition of A096284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096284.P16127649767287033803

`gcd(5, n%6)%3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096284

/-- `gcd(5, n%6)%3` -/
def P16127649767287033803.Spec : Prop :=
  ∀ n, (P16127649767287033803.a n : ℤ) = A096284 (n + 3)

theorem P16127649767287033803.correct : P16127649767287033803.Spec := by
  intro n
  simp only [A096284, Nat.add_sub_cancel]

end A096284

/-!
# A096285: Denominator of the ratio of the preceding two terms.

The programs for A096285, the canonical program `A096285.P3408953092961292870` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096285 has offset 3).

The definition of A096285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096285.P3408953092961292870

`and(2, n%6)!`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096285

/-- `and(2, n%6)!` -/
def P3408953092961292870.Spec : Prop :=
  ∀ n, (P3408953092961292870.a n : ℤ) = A096285 (n + 3)

theorem P3408953092961292870.correct : P3408953092961292870.Spec := by
  intro n
  simp only [A096285, Nat.add_sub_cancel]

end A096285

/-!
# A096288: Sum of digits of n in bases 2 and 3.

The programs for A096288, the canonical program `A096288.P13797560073647368963` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096288 has offset 0).

The definition of A096288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096288.P13797560073647368963

`A000120(n)+A053735(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096288

/-- `A000120(n)+A053735(n)` -/
def P13797560073647368963.Spec : Prop :=
  ∀ n, P13797560073647368963.a n = A096288 n

theorem P13797560073647368963.correct : P13797560073647368963.Spec := by
  intro n
  simp only [A096288]

end A096288

/-! ## A096288.P957593666540176081

`A230641(n)-A011371(n)`
-/

namespace A096288.P957593666540176081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n - A011371 n

end

end A096288.P957593666540176081

namespace A096288

/-- `A230641(n)-A011371(n)` -/
def P957593666540176081.Spec : Prop :=
  ∀ n, P957593666540176081.a n = A096288 n

end A096288

/-! ## A096288.P7154061809267507061

`A092391(n)-A344853(n)`
-/

namespace A096288.P7154061809267507061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n - A344853 n

end

end A096288.P7154061809267507061

namespace A096288

/-- `A092391(n)-A344853(n)` -/
def P7154061809267507061.Spec : Prop :=
  ∀ n, P7154061809267507061.a n = A096288 n

end A096288

/-! ## A096288.P464404092451701972

`A053735(n)+log2(A001316(n))`
-/

namespace A096288.P464404092451701972
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053735 n : ℝ) + Real.logb 2 (A001316 n : ℝ)

end

end A096288.P464404092451701972

namespace A096288

/-- `A053735(n)+log2(A001316(n))` -/
def P464404092451701972.Spec : Prop :=
  ∀ n, P464404092451701972.a n = (A096288 n : ℝ)

end A096288

/-! ## A096288.P14666886189220438167

`A180017(n)+2*A000120(n)`
-/

namespace A096288.P14666886189220438167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n + 2 * A000120 n

end

end A096288.P14666886189220438167

namespace A096288

/-- `A180017(n)+2*A000120(n)` -/
def P14666886189220438167.Spec : Prop :=
  ∀ n, P14666886189220438167.a n = A096288 n

end A096288

/-! ## A096288.P17109834907890481974

`2*A053735(n)-A180017(n)`
-/

namespace A096288.P17109834907890481974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053735 n - A180017 n

end

end A096288.P17109834907890481974

namespace A096288

/-- `2*A053735(n)-A180017(n)` -/
def P17109834907890481974.Spec : Prop :=
  ∀ n, P17109834907890481974.a n = A096288 n

end A096288

/-! ## A096288.P10691610746410806758

`A000120(n)+A230641(n)-n`
-/

namespace A096288.P10691610746410806758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A230641 n - (n : ℤ))

end

end A096288.P10691610746410806758

namespace A096288

/-- `A000120(n)+A230641(n)-n` -/
def P10691610746410806758.Spec : Prop :=
  ∀ n, P10691610746410806758.a n = A096288 n

end A096288

/-! ## A096288.P3837490063073030761

`A000120(n)+∑{digits}[A007089(n), #]`
-/

namespace A096288.P3837490063073030761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A096288.P3837490063073030761

namespace A096288

/-- `A000120(n)+∑{digits}[A007089(n), #]` -/
def P3837490063073030761.Spec : Prop :=
  ∀ n, P3837490063073030761.a n = A096288 n

end A096288

/-! ## A096288.P18229888912240047520

`∑{digits}[A007089(n)+A007088(n), #]`
-/

namespace A096288.P18229888912240047520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n + A007088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A096288.P18229888912240047520

namespace A096288

/-- `∑{digits}[A007089(n)+A007088(n), #]` -/
def P18229888912240047520.Spec : Prop :=
  ∀ n, (P18229888912240047520.a n : ℤ) = A096288 n

end A096288

/-! ## A096288.P5182144343832403311

`A173523(n+1)+A000120(n)-1`
-/

namespace A096288.P5182144343832403311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1) + (A000120 n - 1)

end

end A096288.P5182144343832403311

namespace A096288

/-- `A173523(n+1)+A000120(n)-1` -/
def P5182144343832403311.Spec : Prop :=
  ∀ n, P5182144343832403311.a n = A096288 n

end A096288

/-! ## A096288.P14807191564040744885

`A063787(n+1)+A173523(n+1)-2`
-/

namespace A096288.P14807191564040744885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1) + (A173523 (n + 1) - 2)

end

end A096288.P14807191564040744885

namespace A096288

/-- `A063787(n+1)+A173523(n+1)-2` -/
def P14807191564040744885.Spec : Prop :=
  ∀ n, P14807191564040744885.a n = A096288 n

end A096288

/-! ## A096288.P13195044649950883834

`A000120(n)+A007953(n)-A180019(n)`
-/

namespace A096288.P13195044649950883834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A007953 n - A180019 n)

end

end A096288.P13195044649950883834

namespace A096288

/-- `A000120(n)+A007953(n)-A180019(n)` -/
def P13195044649950883834.Spec : Prop :=
  ∀ n, P13195044649950883834.a n = A096288 n

end A096288

/-! ## A096288.P6739835334977704689

`A056239(A001316(n))+A056239(A006047(n))`
-/

namespace A096288.P6739835334977704689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A001316 n).toNat + A056239 (A006047 n).toNat

end

end A096288.P6739835334977704689

namespace A096288

/-- `A056239(A001316(n))+A056239(A006047(n))` -/
def P6739835334977704689.Spec : Prop :=
  ∀ n, P6739835334977704689.a n = A096288 n

end A096288

/-! ## A096288.P7901852149404256390

`A056239(A001316(n))+A056239(A331279(n))`
-/

namespace A096288.P7901852149404256390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A001316 n).toNat + A056239 (A331279 n).toNat

end

end A096288.P7901852149404256390

namespace A096288

/-- `A056239(A001316(n))+A056239(A331279(n))` -/
def P7901852149404256390.Spec : Prop :=
  ∀ n, P7901852149404256390.a n = A096288 n

end A096288

/-! ## A096288.P16845939570239301243

`A053735(n)+A048881(2*n)`
-/

namespace A096288.P16845939570239301243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + A048881 (2 * n)

end

end A096288.P16845939570239301243

namespace A096288

/-- `A053735(n)+A048881(2*n)` -/
def P16845939570239301243.Spec : Prop :=
  ∀ n, P16845939570239301243.a n = A096288 n

end A096288

/-! ## A096288.P17386939333058640229

`A274009(2*n+1)+A053735(n)`
-/

namespace A096288.P17386939333058640229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (2 * n + 1) + A053735 n

end

end A096288.P17386939333058640229

namespace A096288

/-- `A274009(2*n+1)+A053735(n)` -/
def P17386939333058640229.Spec : Prop :=
  ∀ n, P17386939333058640229.a n = A096288 n

end A096288

/-! ## A096288.P8362159482813944982

`A000120(n)+A000120(A325985(n))`
-/

namespace A096288.P8362159482813944982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A000120 (A325985 n).toNat

end

end A096288.P8362159482813944982

namespace A096288

/-- `A000120(n)+A000120(A325985(n))` -/
def P8362159482813944982.Spec : Prop :=
  ∀ n, P8362159482813944982.a n = A096288 n

end A096288

/-! ## A096288.P1763074813751853280

`A000120(n)+A000120(lt[A160382(n), 1])`
-/

namespace A096288.P1763074813751853280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A000120 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A096288.P1763074813751853280

namespace A096288

/-- `A000120(n)+A000120(lt[A160382(n), 1])` -/
def P1763074813751853280.Spec : Prop :=
  ∀ n, P1763074813751853280.a n = A096288 n

end A096288

/-! ## A096288.P7861394182079066586

`A000120(n)+A000120(A006288(n))`
-/

namespace A096288.P7861394182079066586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A000120 (A006288 n).toNat

end

end A096288.P7861394182079066586

namespace A096288

/-- `A000120(n)+A000120(A006288(n))` -/
def P7861394182079066586.Spec : Prop :=
  ∀ n, P7861394182079066586.a n = A096288 n

end A096288

/-! ## A096288.P2398894830067177868

`A000120(n)+A000120(record[A006015(n)])`
-/

namespace A096288.P2398894830067177868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096288.P2398894830067177868

namespace A096288

/-- `A000120(n)+A000120(record[A006015(n)])` -/
def P2398894830067177868.Spec : Prop :=
  ∀ n, P2398894830067177868.a n = A096288 n

end A096288

/-!
# A096289: Sum of digits of n in bases 2 and 5.

The programs for A096289, the canonical program `A096289.P10983530805932168913` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096289 has offset 0).

The definition of A096289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096289.P10983530805932168913

`A000120(n)+A053824(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096289

/-- `A000120(n)+A053824(n)` -/
def P10983530805932168913.Spec : Prop :=
  ∀ n, P10983530805932168913.a n = A096289 n

theorem P10983530805932168913.correct : P10983530805932168913.Spec := by
  intro n
  simp only [A096289]

end A096289

/-! ## A096289.P7949773548078385846

`A230865(n)-∑[∑{e}[and(n, -n), #]]`
-/

namespace A096289.P7949773548078385846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A096289.P7949773548078385846

namespace A096289

/-- `A230865(n)-∑[∑{e}[and(n, -n), #]]` -/
def P7949773548078385846.Spec : Prop :=
  ∀ n, P7949773548078385846.a n = A096289 n

end A096289

/-! ## A096289.P3186013485947403384

`∑{digits}[A007091(n), #]+∑[∑{e}[xor(n, -n), 2-#]]`
-/

namespace A096289.P3186013485947403384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, (2 - (Nat.factorization (f3 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A096289.P3186013485947403384

namespace A096289

/-- `∑{digits}[A007091(n), #]+∑[∑{e}[xor(n, -n), 2-#]]` -/
def P3186013485947403384.Spec : Prop :=
  ∀ n, P3186013485947403384.a n = A096289 n

end A096289

/-! ## A096289.P5171185838770316060

`∑[∑{e}[xor(n, -n), 2-#]]+A173525(n+1)-1`
-/

namespace A096289.P5171185838770316060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A173525 (n + 1) - 1)

end

end A096289.P5171185838770316060

namespace A096289

/-- `∑[∑{e}[xor(n, -n), 2-#]]+A173525(n+1)-1` -/
def P5171185838770316060.Spec : Prop :=
  ∀ n, P5171185838770316060.a n = A096289 n

end A096289

/-! ## A096289.P18438675125460433664

`∑[∑{e}[xor(n, -n), 2-#]]+n-4*A027868(n)`
-/

namespace A096289.P18438675125460433664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 4 * A027868 n)

end

end A096289.P18438675125460433664

namespace A096289

/-- `∑[∑{e}[xor(n, -n), 2-#]]+n-4*A027868(n)` -/
def P18438675125460433664.Spec : Prop :=
  ∀ n, P18438675125460433664.a n = A096289 n

end A096289

/-! ## A096289.P5107031198308966537

`A230865(n)-A011371(n)`
-/

namespace A096289.P5107031198308966537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 n - A011371 n

end

end A096289.P5107031198308966537

namespace A096289

/-- `A230865(n)-A011371(n)` -/
def P5107031198308966537.Spec : Prop :=
  ∀ n, P5107031198308966537.a n = A096289 n

end A096289

/-! ## A096289.P9368351121998013123

`A053824(n)+log2(A001316(n))`
-/

namespace A096289.P9368351121998013123
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053824 n : ℝ) + Real.logb 2 (A001316 n : ℝ)

end

end A096289.P9368351121998013123

namespace A096289

/-- `A053824(n)+log2(A001316(n))` -/
def P9368351121998013123.Spec : Prop :=
  ∀ n, P9368351121998013123.a n = (A096289 n : ℝ)

end A096289

/-! ## A096289.P3751449909138398049

`A173525(n+1)+A000120(n)-1`
-/

namespace A096289.P3751449909138398049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173525 (n + 1) + (A000120 n - 1)

end

end A096289.P3751449909138398049

namespace A096289

/-- `A173525(n+1)+A000120(n)-1` -/
def P3751449909138398049.Spec : Prop :=
  ∀ n, P3751449909138398049.a n = A096289 n

end A096289

/-! ## A096289.P17889961463289915372

`A274009(2*n+1)+A053824(n)`
-/

namespace A096289.P17889961463289915372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (2 * n + 1) + A053824 n

end

end A096289.P17889961463289915372

namespace A096289

/-- `A274009(2*n+1)+A053824(n)` -/
def P17889961463289915372.Spec : Prop :=
  ∀ n, P17889961463289915372.a n = A096289 n

end A096289

/-!
# A096290: Prime power perfect numbers: If n = Product p_i^r_i let PPsigma(n) = Product {Sum p_i^s_i, 2<=s_i<=r_i, s_i is prime}; sequence gives numbers k such that PPsigma(k) = 2*k.

The programs for A096290, there is no canonical definition to state claims against.
-/

/-! ## A096290.P17068272486625051783

`A117776(2*(n+1))+record[A064549(A321145(n+1))]`
-/

namespace A096290.P17068272486625051783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A321145 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117776 (2 * (n + 1)) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096290.P17068272486625051783

/-! ## A096290.P567225312276514849

`record[A064549(A321145(n+1))]%A172348(49*n+10)`
-/

namespace A096290.P567225312276514849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A321145 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A172348 (49 * n + 10))

end

end A096290.P567225312276514849

/-! ## A096290.P9959864626147606541

`A000027(A054979(n+1)²/6)`
-/

namespace A096290.P9959864626147606541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A054979 (n + 1) ^ 2 : ℚ) / 6)).toNat

end

end A096290.P9959864626147606541

/-! ## A096290.P6945287865832383153

`A000027(A321145(n+1)²/6)`
-/

namespace A096290.P6945287865832383153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A321145 (n + 1) ^ 2 : ℚ) / 6)).toNat

end

end A096290.P6945287865832383153

/-! ## A096290.P14133088274916604535

`A321145(A161953(n+1))²/6`
-/

namespace A096290.P14133088274916604535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321145 (A161953 (n + 1)).toNat ^ 2 : ℚ) / 6

end

end A096290.P14133088274916604535

/-!
# A096292: 

The programs for A096292, there is no canonical definition to state claims against.
-/

/-! ## A096292.P16809023233823095018

`A065091(eq[1, A275111(n+1)])`
-/

namespace A096292.P16809023233823095018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096292.P16809023233823095018

/-! ## A096292.P3168214650470320767

`A008578(eq[1, A275111(n+1)]+2)`
-/

namespace A096292.P3168214650470320767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A096292.P3168214650470320767

/-! ## A096292.P742544091392102601

`record[A065091(n+1)/A275111(n+2)]`
-/

namespace A096292.P742544091392102601
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) : ℚ) / (A275111 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096292.P742544091392102601

/-! ## A096292.P10370303125735682580

`p?[A055670(n+1)-A055670(A275111(n+1))]`
-/

namespace A096292.P10370303125735682580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1) - A055670 (A275111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096292.P10370303125735682580

/-! ## A096292.P16390834695858449937

`p?[A000005(A275111(n+1))*A000040(n+1)]`
-/

namespace A096292.P16390834695858449937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A275111 (n + 1)).toNat * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096292.P16390834695858449937

/-!
# A096295: a(1) = 2, a(n) = a(n-1) + 3*(a(n-1)-floor(a(n-1)^(1/3))^3).

The programs for A096295, there is no canonical definition to state claims against.
-/

/-! ## A096295.P3196173351762835763

`2+a(n-1)*(3-floor(a(n-1)^a(n-1)))` with `a(0)=2, a(1)=5, a(2)=17, a(3)=44, a(4)=95, a(5)=188`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).

`floor` is left out, it is the identity on integers.
-/

namespace A096295.P3196173351762835763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 17, 44, 95, 188] fun n a =>
  2 + a (n - 1) * (3 - ⌊(a (n - 1) : ℚ) ^ (a (n - 1) : ℤ)⌋)

end

end A096295.P3196173351762835763

/-! ## A096295.P4569525250958208441

`a(n-1)+3*A055400(a(n-1))` with `a(0)=2`
-/

namespace A096295.P4569525250958208441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 3 * A055400 (a (n - 1)).toNat

end

end A096295.P4569525250958208441

/-!
# A096297: a(1) = 3, a(n) = a(n-1) + 4*(a(n-1)-floor(a(n-1)^(1/3))^3).

The programs for A096297, there is no canonical definition to state claims against.
-/

/-! ## A096297.P17591078028268264698

`3+a(n-1)*(4-floor(a(n-1)^a(n-1)))` with `a(0)=3, a(1)=11, a(2)=23, a(3)=83, a(4)=159`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).

`floor` is left out, it is the identity on integers.
-/

namespace A096297.P17591078028268264698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 11, 23, 83, 159] fun n a =>
  3 + a (n - 1) * (4 - ⌊(a (n - 1) : ℚ) ^ (a (n - 1) : ℤ)⌋)

end

end A096297.P17591078028268264698

/-!
# A096298: Numbers, not ending with 0, that are "printer's errors".

The programs for A096298, there is no canonical definition to state claims against.
-/

/-! ## A096298.P5310840849690603522

`A156322(A002061(n)+char[2^n])`
-/

namespace A096298.P5310840849690603522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156322 (A002061 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A096298.P5310840849690603522

/-! ## A096298.P17334587078781783659

`A156322(A209229(n)+A002061(n))`
-/

namespace A096298.P17334587078781783659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156322 (A209229 n + A002061 n).toNat

end

end A096298.P17334587078781783659

/-!
# A096299: List of strings in lexicographic order with property that for the 2^(m-1) strings of length m, the first entry is 1, the second distinct entry (reading from left to right) is 2, the third distinct entry is 3, etc.

The programs for A096299, there is no canonical definition to state claims against.
-/

/-! ## A096299.P6068121453219784153

`A071159(A071163(n+1))`
-/

namespace A096299.P6068121453219784153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071159 (A071163 (n + 1)).toNat

end

end A096299.P6068121453219784153

/-! ## A096299.P17109127670619970356

`∩[A071159(n+1), A095227(n+1)]`
-/

namespace A096299.P17109127670619970356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096299.P17109127670619970356

/-! ## A096299.P10343827069953110245

`∩[A071159(n+1), A378949(n+1)]`
-/

namespace A096299.P10343827069953110245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096299.P10343827069953110245

/-! ## A096299.P16301381372134282283

`∩[A095227(n+1), A239903(n)]`
-/

namespace A096299.P16301381372134282283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096299.P16301381372134282283

/-! ## A096299.P2837577833709776200

`∩[A378949(n+1), A239903(n)]`
-/

namespace A096299.P2837577833709776200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096299.P2837577833709776200

