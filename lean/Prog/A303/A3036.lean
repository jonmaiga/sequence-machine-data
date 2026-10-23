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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A303601: Number of ways to write n as a*(a+1)/2 + b*(b+1)/2 + Bell(k) + Bell(m) with 0 <= a <= b and 0 < k <= m, where Bell(k) denotes the k-th Bell number A000110(k).

The programs for A303601, there is no canonical definition to state claims against.
-/

/-! ## A303601.P1194581939440307087

`A335885(∑[A047968(n+1)²])`
-/

namespace A303601.P1194581939440307087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047968 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303601.P1194581939440307087

/-! ## A303601.P13973679647203297991

`and(A067086(n+1), A354143(A088172(n+1)))`
-/

namespace A303601.P13973679647203297991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067086 (n + 1)) (A354143 (A088172 (n + 1)).toNat)

end

end A303601.P13973679647203297991

/-! ## A303601.P14391989920496340896

`A241061(n)+A001221(A003227(n+1))`
-/

namespace A303601.P14391989920496340896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241061 n + A001221 (A003227 (n + 1)).toNat

end

end A303601.P14391989920496340896

/-! ## A303601.P1792939501875258928

`A056594(A256422(n+1))+A051162(n)`
-/

namespace A303601.P1792939501875258928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A256422 (n + 1)).toNat + A051162 n

end

end A303601.P1792939501875258928

/-! ## A303601.P9242851791329151342

`A374758(A356232(n+1)-A018819(n))`
-/

namespace A303601.P9242851791329151342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 (A356232 (n + 1) - A018819 n).toNat

end

end A303601.P9242851791329151342

/-!
# A303602: a(n) = Sum_{k = 0..n} k*binomial(2*n+1, k).

The programs for A303602, the canonical program `A303602.P12371310164259844088` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303602 has offset 0).

The definition of A303602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303602.P12371310164259844088

`(2*n+1)*(4^n-C(2*n, n))/2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303602

/-- `(2*n+1)*(4^n-C(2*n, n))/2` -/
def P12371310164259844088.Spec : Prop :=
  ∀ n, P12371310164259844088.a n = (A303602 n : ℚ)

end A303602

/-! ## A303602.P1034457916957369975

`A130783(2*n)`
-/

namespace A303602.P1034457916957369975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 (2 * n)

end

end A303602.P1034457916957369975

namespace A303602

/-- `A130783(2*n)` -/
def P1034457916957369975.Spec : Prop :=
  ∀ n, P1034457916957369975.a n = A303602 n

end A303602

/-! ## A303602.P14730870798542198196

`A185251(Δ[n²])`
-/

namespace A303602.P14730870798542198196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185251 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A303602.P14730870798542198196

namespace A303602

/-- `A185251(Δ[n²])` -/
def P14730870798542198196.Spec : Prop :=
  ∀ n, P14730870798542198196.a n = A303602 n

end A303602

/-! ## A303602.P9657240161816104757

`record[A130783(and(n, n+1))]`
-/

namespace A303602.P9657240161816104757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303602.P9657240161816104757

namespace A303602

/-- `record[A130783(and(n, n+1))]` -/
def P9657240161816104757.Spec : Prop :=
  ∀ n, P9657240161816104757.a n = A303602 n

end A303602

/-! ## A303602.P16390269311792014777

`Δ[n²]*A058622(2*n)`
-/

namespace A303602.P16390269311792014777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A058622 (2 * n)

end

end A303602.P16390269311792014777

namespace A303602

/-- `Δ[n²]*A058622(2*n)` -/
def P16390269311792014777.Spec : Prop :=
  ∀ n, P16390269311792014777.a n = A303602 n

end A303602

/-! ## A303602.P14284103657481286848

`Δ[n²]*A294175(2*n)`
-/

namespace A303602.P14284103657481286848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A294175 (2 * n)

end

end A303602.P14284103657481286848

namespace A303602

/-- `Δ[n²]*A294175(2*n)` -/
def P14284103657481286848.Spec : Prop :=
  ∀ n, P14284103657481286848.a n = A303602 n

end A303602

/-! ## A303602.P1717030354664175337

`A068551(n)/2*Δ[n²]`
-/

namespace A303602.P1717030354664175337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068551 n : ℚ) / 2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A303602.P1717030354664175337

namespace A303602

/-- `A068551(n)/2*Δ[n²]` -/
def P1717030354664175337.Spec : Prop :=
  ∀ n, P1717030354664175337.a n = (A303602 n : ℚ)

end A303602

/-! ## A303602.P1300322048623845729

`record[A130783(n)/(-1)^n]`
-/

namespace A303602.P1300322048623845729
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130783 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303602.P1300322048623845729

namespace A303602

/-- `record[A130783(n)/(-1)^n]` -/
def P1300322048623845729.Spec : Prop :=
  ∀ n, P1300322048623845729.a n = (A303602 n : ℚ)

end A303602

/-! ## A303602.P6518297829926670476

`(2*n+1)*A191391(2*n)`
-/

namespace A303602.P6518297829926670476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A191391 (2 * n)

end

end A303602.P6518297829926670476

namespace A303602

/-- `(2*n+1)*A191391(2*n)` -/
def P6518297829926670476.Spec : Prop :=
  ∀ n, P6518297829926670476.a n = A303602 n

end A303602

/-! ## A303602.P200490722349029796

`Δ[n²]*A007008(2*n+1)`
-/

namespace A303602.P200490722349029796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A007008 (2 * n + 1)

end

end A303602.P200490722349029796

namespace A303602

/-- `Δ[n²]*A007008(2*n+1)` -/
def P200490722349029796.Spec : Prop :=
  ∀ n, P200490722349029796.a n = A303602 n

end A303602

/-! ## A303602.P10616343877885600376

`(2*n+1)/2*A307768(2*n)`
-/

namespace A303602.P10616343877885600376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / 2 * (A307768 (2 * n) : ℚ)

end

end A303602.P10616343877885600376

namespace A303602

/-- `(2*n+1)/2*A307768(2*n)` -/
def P10616343877885600376.Spec : Prop :=
  ∀ n, P10616343877885600376.a n = (A303602 n : ℚ)

end A303602

/-! ## A303602.P5860481916968018424

`lcm(2*n+1, A185251(2*n+1))`
-/

namespace A303602.P5860481916968018424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A185251 (2 * n + 1))

end

end A303602.P5860481916968018424

namespace A303602

/-- `lcm(2*n+1, A185251(2*n+1))` -/
def P5860481916968018424.Spec : Prop :=
  ∀ n, (P5860481916968018424.a n : ℤ) = A303602 n

end A303602

/-! ## A303602.P7510385124470644657

`A018218(n)+A002699(n)`
-/

namespace A303602.P7510385124470644657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018218 n + A002699 n

end

end A303602.P7510385124470644657

namespace A303602

/-- `A018218(n)+A002699(n)` -/
def P7510385124470644657.Spec : Prop :=
  ∀ n, P7510385124470644657.a n = A303602 n

end A303602

/-! ## A303602.P11276762605612677937

`record[A130783(A130727(n)-1)]`
-/

namespace A303602.P11276762605612677937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 (A130727 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303602.P11276762605612677937

namespace A303602

/-- `record[A130783(A130727(n)-1)]` -/
def P11276762605612677937.Spec : Prop :=
  ∀ n, P11276762605612677937.a n = A303602 n

end A303602

/-! ## A303602.P7054415668962527302

`A018218(n)+2*A002697(n)`
-/

namespace A303602.P7054415668962527302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018218 n + 2 * A002697 n

end

end A303602.P7054415668962527302

namespace A303602

/-- `A018218(n)+2*A002697(n)` -/
def P7054415668962527302.Spec : Prop :=
  ∀ n, P7054415668962527302.a n = A303602 n

end A303602

/-! ## A303602.P12025677005939465323

`A018215(n)-A172060(n)/2`
-/

namespace A303602.P12025677005939465323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018215 n : ℚ) - (A172060 n : ℚ) / 2

end

end A303602.P12025677005939465323

namespace A303602

/-- `A018215(n)-A172060(n)/2` -/
def P12025677005939465323.Spec : Prop :=
  ∀ n, P12025677005939465323.a n = (A303602 n : ℚ)

end A303602

/-! ## A303602.P11170328706706542147

`A002697(n+1)-A258431(n+1)`
-/

namespace A303602.P11170328706706542147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1) - A258431 (n + 1)

end

end A303602.P11170328706706542147

namespace A303602

/-- `A002697(n+1)-A258431(n+1)` -/
def P11170328706706542147.Spec : Prop :=
  ∀ n, P11170328706706542147.a n = A303602 n

end A303602

/-! ## A303602.P7084838528294713969

`A001792(2*n)-A258431(n+1)`
-/

namespace A303602.P7084838528294713969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (2 * n) - A258431 (n + 1)

end

end A303602.P7084838528294713969

namespace A303602

/-- `A001792(2*n)-A258431(n+1)` -/
def P7084838528294713969.Spec : Prop :=
  ∀ n, P7084838528294713969.a n = A303602 n

end A303602

/-! ## A303602.P1108260360071321561

`A206603(2*n)+A100071(2*n)`
-/

namespace A303602.P1108260360071321561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 (2 * n) + A100071 (2 * n)

end

end A303602.P1108260360071321561

namespace A303602

/-- `A206603(2*n)+A100071(2*n)` -/
def P1108260360071321561.Spec : Prop :=
  ∀ n, P1108260360071321561.a n = A303602 n

end A303602

/-! ## A303602.P11409337722452072450

`A001792(2*n)-A323988(2*n)`
-/

namespace A303602.P11409337722452072450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (2 * n) - A323988 (2 * n)

end

end A303602.P11409337722452072450

namespace A303602

/-- `A001792(2*n)-A323988(2*n)` -/
def P11409337722452072450.Spec : Prop :=
  ∀ n, P11409337722452072450.a n = A303602 n

end A303602

/-!
# A303603: a(n) is the maximum distance between primes in Goldbach partitions of 2n, or 2n if there are no Goldbach partitions of 2n.

The programs for A303603, there is no canonical definition to state claims against.
-/

/-! ## A303603.P3528517772518362677

`2*A159482(n+1)%(n+1)`
-/

namespace A303603.P3528517772518362677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A159482 (n + 1)) (n + 1 : ℤ)

end

end A303603.P3528517772518362677

/-! ## A303603.P12412643823824107812

`2*A047949((n-1)%(n+1)+2)`
-/

namespace A303603.P12412643823824107812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047949 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 2).toNat

end

end A303603.P12412643823824107812

/-! ## A303603.P1150131815230844737

`2*A047949(floor(n²/(n+1))+2)`
-/

namespace A303603.P1150131815230844737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047949 (⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋ + 2).toNat

end

end A303603.P1150131815230844737

/-! ## A303603.P1510709110014264111

`A005843(A159482(n+1)%(n+1))`
-/

namespace A303603.P1510709110014264111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A159482 (n + 1)) (n + 1 : ℤ)).toNat

end

end A303603.P1510709110014264111

/-! ## A303603.P10585451601986702134

`2*A020482(A123108(2*n)+1)%(n+1)`
-/

namespace A303603.P10585451601986702134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A020482 (A123108 (2 * n) + 1).toNat) (n + 1 : ℤ)

end

end A303603.P10585451601986702134

/-! ## A303603.P804831252402689919

`2*A171637(∑[A002372(n+1)]+2)%(n+1)`
-/

namespace A303603.P804831252402689919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A171637 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat) (n + 1 : ℤ)

end

end A303603.P804831252402689919

/-!
# A303604: Numbers n such that both n-1 and n are nonsquares and the least positive solutions to the Pell equations x1^2 - n*y1^2 =1 and x0^2-(n-1)*y0^2 = 1 have a record for rho(n)=log(x1)/log(x0).

The programs for A303604, there is no canonical definition to state claims against.
-/

/-! ## A303604.P807769071172120730

`A201909(A201841(n+1)+lt[n+2, lcm(4, n)]+2)`
-/

namespace A303604.P807769071172120730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201909 (A201841 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2 : ℤ)).toNat

end

end A303604.P807769071172120730

/-! ## A303604.P17874353696245191670

`A244143(2*n)+A032529(A007569(n+1))`
-/

namespace A303604.P17874353696245191670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244143 (2 * n) + A032529 (A007569 (n + 1)).toNat

end

end A303604.P17874353696245191670

/-!
# A303605: a(n) is the least positive integer not yet in the sequence which shares a digit with a(n-1) and a digit with a(n-2); a(1)=0, a(2)=1.

The programs for A303605, there is no canonical definition to state claims against.
-/

/-! ## A303605.P12622867237045867454

`A284375(∑[A142468(n)])`
-/

namespace A303605.P12622867237045867454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284375 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303605.P12622867237045867454

/-! ## A303605.P16854799863874205217

`A284375(∑[A359313(n)])`
-/

namespace A303605.P16854799863874205217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284375 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303605.P16854799863874205217

/-! ## A303605.P2594352174974747488

`filter[A265747(n), A321083(#)]`
-/

namespace A303605.P2594352174974747488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321083 (f1 j).toNat = 1) n)

end

end A303605.P2594352174974747488

/-!
# A303606: Powers of composite squarefree numbers that are not squarefree.

The programs for A303606, there is no canonical definition to state claims against.
-/

/-! ## A303606.P672320086077910667

`sqrt(A389776(n+1))`
-/

namespace A303606.P672320086077910667
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A389776 (n + 1) : ℝ)

end

end A303606.P672320086077910667

/-! ## A303606.P13767804219377594450

`∪[A177492(n+1), A388304(n+1)]`
-/

namespace A303606.P13767804219377594450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P13767804219377594450

/-! ## A303606.P14126311749129348959

`∪[A303661(n+1), A392741(n+1)]`
-/

namespace A303606.P14126311749129348959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P14126311749129348959

/-! ## A303606.P18099471532109430936

`∪[A365745(n+1), A390956(n+1)]`
-/

namespace A303606.P18099471532109430936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P18099471532109430936

/-! ## A303606.P3202075747286511460

`∪[A388304(n+1), A390126(n+1)]`
-/

namespace A303606.P3202075747286511460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P3202075747286511460

/-! ## A303606.P11857988698004737043

`∪[A390126(n+1), A390127(n+1)]`
-/

namespace A303606.P11857988698004737043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P11857988698004737043

/-! ## A303606.P428838380582416950

`∪[A390955(n+1), A390956(n+1)]`
-/

namespace A303606.P428838380582416950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P428838380582416950

/-! ## A303606.P13800994495421400455

`∩[A072777(n+1), A390823(n+1)]`
-/

namespace A303606.P13800994495421400455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P13800994495421400455

/-! ## A303606.P4394948673409005393

`∩[A076292(n+1), A390823(n+1)]`
-/

namespace A303606.P4394948673409005393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P4394948673409005393

/-! ## A303606.P4500695847496208358

`∩[A072777(n+1), A131605(n+1)]`
-/

namespace A303606.P4500695847496208358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P4500695847496208358

/-! ## A303606.P12899028520169319123

`∩[A072777(n+1), A395414(n+1)]`
-/

namespace A303606.P12899028520169319123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P12899028520169319123

/-! ## A303606.P13982741914334121530

`∩[A076292(n+1), A395414(n+1)]`
-/

namespace A303606.P13982741914334121530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P13982741914334121530

/-! ## A303606.P5777514365418810917

`∩[A072777(n+1), A286708(n+1)]`
-/

namespace A303606.P5777514365418810917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P5777514365418810917

/-! ## A303606.P6961059095927655939

`∩[A076292(n+1), A286708(n+1)]`
-/

namespace A303606.P6961059095927655939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P6961059095927655939

/-! ## A303606.P4990517963946133455

`∩[A317102(n+1), A390823(n+1)]`
-/

namespace A303606.P4990517963946133455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P4990517963946133455

/-! ## A303606.P12165107179667005353

`∩[A072777(n+1), A370266(n+1)]`
-/

namespace A303606.P12165107179667005353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P12165107179667005353

/-! ## A303606.P9959098985379055273

`∩[A076292(n+1), A370266(n+1)]`
-/

namespace A303606.P9959098985379055273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P9959098985379055273

/-! ## A303606.P15976665228783188401

`∩[A072413(n+1), A072777(n+1)]`
-/

namespace A303606.P15976665228783188401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P15976665228783188401

/-! ## A303606.P13919884622085189522

`∩[A072413(n+1), A076292(n+1)]`
-/

namespace A303606.P13919884622085189522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P13919884622085189522

/-! ## A303606.P7536688101076380827

`∩[A036785(n+1), A072777(n+1)]`
-/

namespace A303606.P7536688101076380827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303606.P7536688101076380827

/-!
# A303607: a(n) = floor(C(n + 1/2)), where C = A000108.

The programs for A303607, there is no canonical definition to state claims against.
-/

/-! ## A303607.P13061988549061557973

`A059995(A126221(n+2)-A007051(n))`
-/

namespace A303607.P13061988549061557973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A126221 (n + 2) - A007051 n).toNat

end

end A303607.P13061988549061557973

/-! ## A303607.P2577213498378053163

`A213908(A031148(n+1))%A016205(n)`
-/

namespace A303607.P2577213498378053163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213908 (A031148 (n + 1)).toNat) (A016205 n)

end

end A303607.P2577213498378053163

/-! ## A303607.P2555611982399884007

`A002265(A007590(n)+A007560(2*n+5))`
-/

namespace A303607.P2555611982399884007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A007590 n + A007560 (2 * n + 5)).toNat

end

end A303607.P2555611982399884007

/-!
# A303608: Repunit pseudoprimes: composite numbers k such that (10^k - 1)/9 == 1 (mod k).

The programs for A303608, there is no canonical definition to state claims against.
-/

/-! ## A303608.P2933230575737627482

`filter[A121014(n+2), A359377(#)]`
-/

namespace A303608.P2933230575737627482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121014 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A303608.P2933230575737627482

/-! ## A303608.P590471581769335769

`∩[A067934(n+1), A380470(n+1)]`
-/

namespace A303608.P590471581769335769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303608.P590471581769335769

/-! ## A303608.P13148681136900216599

`∩[A067934(n+1), A344585(n+1)]`
-/

namespace A303608.P13148681136900216599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303608.P13148681136900216599

/-! ## A303608.P13009234130851718386

`∩[A067934(n+1), A336548(n+1)]`
-/

namespace A303608.P13009234130851718386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303608.P13009234130851718386

/-! ## A303608.P11165838266504832577

`∩[A067934(n+1), A367018(n+1)]`
-/

namespace A303608.P11165838266504832577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303608.P11165838266504832577

/-!
# A303609: a(n) = 2*n^3 + 9*n^2 + 9*n.

The programs for A303609, the canonical program `A303609.P6040708624849847179` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303609 has offset 0).

The definition of A303609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^3+9*n²+9*n` (program `A303609.P6040708624849847179`, by `A303609.P6040708624849847179.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A303609.P7674470473432774130

`n*(2*n²+9*n+9)`
-/

namespace A303609.P7674470473432774130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n ^ 2 + 9 * n + 9)

end

end A303609.P7674470473432774130

namespace A303609

/-- `n*(2*n²+9*n+9)` -/
def P7674470473432774130.Spec : Prop :=
  ∀ n, (P7674470473432774130.a n : ℤ) = A303609 n

theorem P7674470473432774130.correct : P7674470473432774130.Spec := by
  intro n
  simp only [A303609, Nat.add_sub_cancel, A303609.P7674470473432774130.a, A303609.P6040708624849847179.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A303609

/-! ## A303609.P6040708624849847179

`2*n^3+9*n²+9*n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303609

/-- `2*n^3+9*n²+9*n` -/
def P6040708624849847179.Spec : Prop :=
  ∀ n, (P6040708624849847179.a n : ℤ) = A303609 n

theorem P6040708624849847179.correct : P6040708624849847179.Spec := by
  intro n
  simp only [A303609]

end A303609

/-! ## A303609.P530547563782063401

`Δ[(n-1)*n*C(n+3, 2)]`
-/

namespace A303609.P530547563782063401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (n * Nat.choose (n + 3) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303609.P530547563782063401

namespace A303609

/-- `Δ[(n-1)*n*C(n+3, 2)]` -/
def P530547563782063401.Spec : Prop :=
  ∀ n, P530547563782063401.a n = A303609 n

end A303609

/-! ## A303609.P2547144047514949745

`Δ[(n+2)*(n+3)*C(n, 2)]`
-/

namespace A303609.P2547144047514949745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (n + 3) * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A303609.P2547144047514949745

namespace A303609

/-- `Δ[(n+2)*(n+3)*C(n, 2)]` -/
def P2547144047514949745.Spec : Prop :=
  ∀ n, P2547144047514949745.a n = A303609 n

end A303609

/-! ## A303609.P3207211147955763475

`lcm(2, (n+3)*n*(2*n+3))`
-/

namespace A303609.P3207211147955763475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n + 3) * (n * (2 * n + 3)))

end

end A303609.P3207211147955763475

namespace A303609

/-- `lcm(2, (n+3)*n*(2*n+3))` -/
def P3207211147955763475.Spec : Prop :=
  ∀ n, (P3207211147955763475.a n : ℤ) = A303609 n

end A303609

/-! ## A303609.P1086758956460838555

`∑[A347525((n+1)²)-2]`
-/

namespace A303609.P1086758956460838555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347525 ((n + 1) ^ 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303609.P1086758956460838555

namespace A303609

/-- `∑[A347525((n+1)²)-2]` -/
def P1086758956460838555.Spec : Prop :=
  ∀ n, P1086758956460838555.a n = A303609 n

end A303609

/-! ## A303609.P977207477695205034

`Δ[A167544((n+1)²+3)]`
-/

namespace A303609.P977207477695205034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167544 ((n + 1) ^ 2 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303609.P977207477695205034

namespace A303609

/-- `Δ[A167544((n+1)²+3)]` -/
def P977207477695205034.Spec : Prop :=
  ∀ n, P977207477695205034.a n = A303609 n

end A303609

/-!
# A303611: a(n) = (-1 - (-2)^(n-2)) mod 2^n.

The programs for A303611, the canonical program `A303611.P8869675668227845352` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303611 has offset 2).

The definition of A303611 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303611.P8869675668227845352

`(2+(-1)^(n+2))*2^n-1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303611

/-- `(2+(-1)^(n+2))*2^n-1` -/
def P8869675668227845352.Spec : Prop :=
  ∀ n, P8869675668227845352.a n = A303611 (n + 2)

theorem P8869675668227845352.correct : P8869675668227845352.Spec := by
  intro n
  simp only [A303611, Nat.add_sub_cancel]

end A303611

/-! ## A303611.P1112738852485119719

`∑[ogf((2-x+2x^2)/(1-4x^2))]`
-/

namespace A303611.P1112738852485119719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 2] [1, 0, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303611.P1112738852485119719

namespace A303611

/-- `∑[ogf((2-x+2x^2)/(1-4x^2))]` -/
def P1112738852485119719.Spec : Prop :=
  ∀ n, P1112738852485119719.a n = A303611 (n + 2)

end A303611

/-! ## A303611.P8097175337008893861

`ogf((2-x+2x^2)/(1-x-4x^2+4x^3))`
-/

namespace A303611.P8097175337008893861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 2] [1, -1, -4, 4] n

end

end A303611.P8097175337008893861

namespace A303611

/-- `ogf((2-x+2x^2)/(1-x-4x^2+4x^3))` -/
def P8097175337008893861.Spec : Prop :=
  ∀ n, P8097175337008893861.a n = A303611 (n + 2)

end A303611

/-! ## A303611.P16824896922907353132

`or(3, 4*a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A303611.P16824896922907353132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  Nat.lor 3 (4 * a (n - 2))

end

end A303611.P16824896922907353132

namespace A303611

/-- `or(3, 4*a(n-2))` -/
def P16824896922907353132.Spec : Prop :=
  ∀ n, (P16824896922907353132.a n : ℤ) = A303611 (n + 2)

end A303611

/-! ## A303611.P17252634844873978913

`xor(3, 4*a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A303611.P17252634844873978913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  Nat.xor 3 (4 * a (n - 2))

end

end A303611.P17252634844873978913

namespace A303611

/-- `xor(3, 4*a(n-2))` -/
def P17252634844873978913.Spec : Prop :=
  ∀ n, (P17252634844873978913.a n : ℤ) = A303611 (n + 2)

end A303611

/-! ## A303611.P16548212053491481819

`∑[4*a(n-2)]` with `a(0)=2, a(1)=-1, a(2)=10`
-/

namespace A303611.P16548212053491481819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 10] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303611.P16548212053491481819

namespace A303611

/-- `∑[4*a(n-2)]` -/
def P16548212053491481819.Spec : Prop :=
  ∀ n, P16548212053491481819.a n = A303611 (n + 2)

end A303611

/-! ## A303611.P13315647055383113110

`abs(4*a(n-2)+3)` with `a(0)=2, a(1)=1`
-/

namespace A303611.P13315647055383113110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  4 * a (n - 2) + 3

end

end A303611.P13315647055383113110

namespace A303611

/-- `abs(4*a(n-2)+3)` -/
def P13315647055383113110.Spec : Prop :=
  ∀ n, (P13315647055383113110.a n : ℤ) = A303611 (n + 2)

theorem P13315647055383113110.correct : P13315647055383113110.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A303611, Nat.add_sub_cancel, A303611.P13315647055383113110.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A303611, Nat.add_sub_cancel, A303611.P13315647055383113110.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A303611

/-! ## A303611.P18372886782315727790

`4*(a(n-2)+3/4)` with `a(0)=2, a(1)=1`
-/

namespace A303611.P18372886782315727790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  4 * (a (n - 2) + (3 : ℚ) / 4)

end

end A303611.P18372886782315727790

namespace A303611

/-- `4*(a(n-2)+3/4)` -/
def P18372886782315727790.Spec : Prop :=
  ∀ n, P18372886782315727790.a n = (A303611 (n + 2) : ℚ)

theorem P18372886782315727790.correct : P18372886782315727790.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A303611, Nat.add_sub_cancel, A303611.P18372886782315727790.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A303611, Nat.add_sub_cancel, A303611.P18372886782315727790.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A303611

/-! ## A303611.P4630945910658234784

`4*(1-(1/4-a(n-2)))` with `a(0)=2, a(1)=1`
-/

namespace A303611.P4630945910658234784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  4 * (1 - ((1 : ℚ) / 4 - a (n - 2)))

end

end A303611.P4630945910658234784

namespace A303611

/-- `4*(1-(1/4-a(n-2)))` -/
def P4630945910658234784.Spec : Prop :=
  ∀ n, P4630945910658234784.a n = (A303611 (n + 2) : ℚ)

theorem P4630945910658234784.correct : P4630945910658234784.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A303611, Nat.add_sub_cancel, A303611.P4630945910658234784.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A303611, Nat.add_sub_cancel, A303611.P4630945910658234784.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A303611

/-! ## A303611.P4377284062689668595

`floor(a(n-2)+3*(a(n-2)+1))` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A303611.P4377284062689668595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 2) + 3 * (a (n - 2) + 1)

end

end A303611.P4377284062689668595

namespace A303611

/-- `floor(a(n-2)+3*(a(n-2)+1))` -/
def P4377284062689668595.Spec : Prop :=
  ∀ n, (P4377284062689668595.a n : ℤ) = A303611 (n + 2)

theorem P4377284062689668595.correct : P4377284062689668595.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A303611, Nat.add_sub_cancel, A303611.P4377284062689668595.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A303611, Nat.add_sub_cancel, A303611.P4377284062689668595.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A303611

/-! ## A303611.P16155772810068780966

`floor(5*a(n-2)-(a(n-2)-3))` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A303611.P16155772810068780966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  5 * a (n - 2) - (a (n - 2) - 3)

end

end A303611.P16155772810068780966

namespace A303611

/-- `floor(5*a(n-2)-(a(n-2)-3))` -/
def P16155772810068780966.Spec : Prop :=
  ∀ n, P16155772810068780966.a n = A303611 (n + 2)

theorem P16155772810068780966.correct : P16155772810068780966.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A303611, Nat.add_sub_cancel, A303611.P16155772810068780966.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A303611, Nat.add_sub_cancel, A303611.P16155772810068780966.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A303611

/-! ## A303611.P11226396369611404768

`(4*a(n-2)+3)*a(n-1)%2` with `a(0)=2, a(1)=1`
-/

namespace A303611.P11226396369611404768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  (4 * a (n - 2) + 3) * (a (n - 1) % 2)

end

end A303611.P11226396369611404768

namespace A303611

/-- `(4*a(n-2)+3)*a(n-1)%2` -/
def P11226396369611404768.Spec : Prop :=
  ∀ n, (P11226396369611404768.a n : ℤ) = A303611 (n + 2)

end A303611

/-! ## A303611.P13519980602923283936

`(4*a(n-2)+3)*gcd(2, a(n-1))` with `a(0)=2, a(1)=1`
-/

namespace A303611.P13519980602923283936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  (4 * a (n - 2) + 3) * Nat.gcd 2 (a (n - 1))

end

end A303611.P13519980602923283936

namespace A303611

/-- `(4*a(n-2)+3)*gcd(2, a(n-1))` -/
def P13519980602923283936.Spec : Prop :=
  ∀ n, (P13519980602923283936.a n : ℤ) = A303611 (n + 2)

end A303611

/-! ## A303611.P9006045196721333278

`A284354(xor(1, n))`
-/

namespace A303611.P9006045196721333278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284354 (Nat.xor 1 n)

end

end A303611.P9006045196721333278

namespace A303611

/-- `A284354(xor(1, n))` -/
def P9006045196721333278.Spec : Prop :=
  ∀ n, P9006045196721333278.a n = A303611 (n + 2)

end A303611

/-! ## A303611.P17940375247926221278

`or(n, A308709(2*n+1)-1)`
-/

namespace A303611.P17940375247926221278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A308709 (2 * n + 1) - 1)

end

end A303611.P17940375247926221278

namespace A303611

/-- `or(n, A308709(2*n+1)-1)` -/
def P17940375247926221278.Spec : Prop :=
  ∀ n, P17940375247926221278.a n = A303611 (n + 2)

end A303611

/-! ## A303611.P13392329727822266449

`A284354(A004442(n))`
-/

namespace A303611.P13392329727822266449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284354 (A004442 n).toNat

end

end A303611.P13392329727822266449

namespace A303611

/-- `A284354(A004442(n))` -/
def P13392329727822266449.Spec : Prop :=
  ∀ n, P13392329727822266449.a n = A303611 (n + 2)

end A303611

/-! ## A303611.P3616830734262646959

`xor(A098646(n), A126646(n))`
-/

namespace A303611.P3616830734262646959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A098646 n) (A126646 n)

end

end A303611.P3616830734262646959

namespace A303611

/-- `xor(A098646(n), A126646(n))` -/
def P3616830734262646959.Spec : Prop :=
  ∀ n, P3616830734262646959.a n = A303611 (n + 2)

end A303611

/-! ## A303611.P17940254190517795615

`xor(A000225(n), A103424(n+1))`
-/

namespace A303611.P17940254190517795615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A103424 (n + 1))

end

end A303611.P17940254190517795615

namespace A303611

/-- `xor(A000225(n), A103424(n+1))` -/
def P17940254190517795615.Spec : Prop :=
  ∀ n, P17940254190517795615.a n = A303611 (n + 2)

end A303611

/-! ## A303611.P8565196784399780629

`xor(A166920(n+1), A166920(n))`
-/

namespace A303611.P8565196784399780629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A166920 (n + 1)) (A166920 n)

end

end A303611.P8565196784399780629

namespace A303611

/-- `xor(A166920(n+1), A166920(n))` -/
def P8565196784399780629.Spec : Prop :=
  ∀ n, P8565196784399780629.a n = A303611 (n + 2)

end A303611

/-! ## A303611.P15398810818005436024

`xor(A096773(n+1), A263053(n+1))`
-/

namespace A303611.P15398810818005436024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A096773 (n + 1)) (A263053 (n + 1))

end

end A303611.P15398810818005436024

namespace A303611

/-- `xor(A096773(n+1), A263053(n+1))` -/
def P15398810818005436024.Spec : Prop :=
  ∀ n, P15398810818005436024.a n = A303611 (n + 2)

end A303611

/-!
# A303613: a(n) = [x^n] (1/6 * Sum_{k=0..n} (k+3)!*x^k)^(1/2).

The programs for A303613, there is no canonical definition to state claims against.
-/

/-! ## A303613.P3218141651124240936

`A007843(A144196(n+1)+A138240(n))`
-/

namespace A303613.P3218141651124240936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (A144196 (n + 1) + A138240 n).toNat

end

end A303613.P3218141651124240936

/-! ## A303613.P9117503922550913587

`A131055(A138240(n)+A096304(n+1))`
-/

namespace A303613.P9117503922550913587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (A138240 n + A096304 (n + 1)).toNat

end

end A303613.P9117503922550913587

/-!
# A303614: a(n) = [x^n] (1/5040 * Sum_{k=0..n} (k+7)!*x^k)^(1/4).

The programs for A303614, there is no canonical definition to state claims against.
-/

/-! ## A303614.P1938095090671712747

`A243352((n+2)^n+n)`
-/

namespace A303614.P1938095090671712747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243352 ((n + 2) ^ n + n)

end

end A303614.P1938095090671712747

/-!
# A303616: a(n) = [x^n] (1/15! * Sum_{k=0..n} (k+15)!*x^k)^(1/8).

The programs for A303616, there is no canonical definition to state claims against.
-/

/-! ## A303616.P11893699245525386516

`A217799(n)+A048720(A217812(n))`
-/

namespace A303616.P11893699245525386516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217799 n + A048720 (A217812 n).toNat

end

end A303616.P11893699245525386516

/-!
# A303618: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303618, there is no canonical definition to state claims against.
-/

/-! ## A303618.P2700194501517693202

`A303624(∑[4*n]+1)`
-/

namespace A303618.P2700194501517693202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303618.P2700194501517693202

/-! ## A303618.P17788314803672862053

`record[gcd(A008482(n), A303624(n+1))]`
-/

namespace A303618.P17788314803672862053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A303624 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303618.P17788314803672862053

/-! ## A303618.P15377136619530124221

`A303624(A001844(n))+A025469(n)`
-/

namespace A303618.P15377136619530124221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A001844 n).toNat + A025469 n

end

end A303618.P15377136619530124221

/-! ## A303618.P13660193438056675516

`A303624(A001844(n))+A178798(n)`
-/

namespace A303618.P13660193438056675516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A001844 n).toNat + A178798 n

end

end A303618.P13660193438056675516

/-! ## A303618.P17179432987433042882

`A307598(n)+A303624(A001844(n))`
-/

namespace A303618.P17179432987433042882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 n + A303624 (A001844 n).toNat

end

end A303618.P17179432987433042882

/-!
# A303619: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303619, there is no canonical definition to state claims against.
-/

/-! ## A303619.P1349312192339628816

`A303624(∑[n+3]+1)`
-/

namespace A303619.P1349312192339628816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303619.P1349312192339628816

/-! ## A303619.P6859938970661932551

`record[A303624(A198464(n+1))]`
-/

namespace A303619.P6859938970661932551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303619.P6859938970661932551

/-! ## A303619.P12424125634228293452

`record[A303624(A128373(n+2))]`
-/

namespace A303619.P12424125634228293452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A128373 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303619.P12424125634228293452

/-! ## A303619.P7184038810634624944

`record[A303624(n+1)/A226513(n+3)]`
-/

namespace A303619.P7184038810634624944
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303624 (n + 1) : ℚ) / (A226513 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303619.P7184038810634624944

/-! ## A303619.P16520070308590535042

`record[C(A303624(n+1), A322222(n+2))]`
-/

namespace A303619.P16520070308590535042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A303624 (n + 1)).toNat (A322222 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303619.P16520070308590535042

/-!
# A303620: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303620, there is no canonical definition to state claims against.
-/

/-! ## A303620.P11468941391042464596

`A303624(A141214(n+1))`
-/

namespace A303620.P11468941391042464596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A141214 (n + 1)).toNat

end

end A303620.P11468941391042464596

/-! ## A303620.P9053669786642125842

`A303624(A055998(n+2))`
-/

namespace A303620.P9053669786642125842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A055998 (n + 2)).toNat

end

end A303620.P9053669786642125842

/-! ## A303620.P7982382835060000377

`A303624(A155212(n)+5)`
-/

namespace A303620.P7982382835060000377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A155212 n + 5).toNat

end

end A303620.P7982382835060000377

/-! ## A303620.P9593491285525209982

`A303624(A056000(n)+7)`
-/

namespace A303620.P9593491285525209982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A056000 n + 7).toNat

end

end A303620.P9593491285525209982

/-! ## A303620.P15293686859617884669

`A303624(eq[2, A054123(n)])`
-/

namespace A303620.P15293686859617884669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303620.P15293686859617884669

/-!
# A303621: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303621, there is no canonical definition to state claims against.
-/

/-! ## A303621.P6143652850175839084

`A303624(eq[4, A054123(n)])`
-/

namespace A303621.P6143652850175839084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303621.P6143652850175839084

/-! ## A303621.P7847752310620402722

`A303624(eq[4, A193592(n)])`
-/

namespace A303621.P7847752310620402722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303621.P7847752310620402722

/-! ## A303621.P2983513738646611835

`A303624(Δ[A023545(n+1)])`
-/

namespace A303621.P2983513738646611835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (f1 (n + 1) - f1 n).toNat

end

end A303621.P2983513738646611835

/-! ## A303621.P15207746447496643489

`A303624(eq[4, A049286(n+1)])`
-/

namespace A303621.P15207746447496643489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303621.P15207746447496643489

/-! ## A303621.P6582484911060609792

`A303624(eq[4, A168396(n+1)])`
-/

namespace A303621.P6582484911060609792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303621.P6582484911060609792

/-!
# A303622: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303622, there is no canonical definition to state claims against.
-/

/-! ## A303622.P8979343340593137762

`A303624(A052905(n+3))`
-/

namespace A303622.P8979343340593137762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A052905 (n + 3)).toNat

end

end A303622.P8979343340593137762

/-! ## A303622.P13697061784004258817

`A303624(eq[3, A219347(n)])`
-/

namespace A303622.P13697061784004258817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303622.P13697061784004258817

/-! ## A303622.P6007151464786266355

`A303624(eq[5, A193592(n)])`
-/

namespace A303622.P6007151464786266355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303622.P6007151464786266355

/-! ## A303622.P9787964436164681299

`A303624(eq[6, A200370(n+1)])`
-/

namespace A303622.P9787964436164681299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303622.P9787964436164681299

/-! ## A303622.P13506378379450305762

`A303624(eq[7, A049286(n+1)])`
-/

namespace A303622.P13506378379450305762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303622.P13506378379450305762

/-!
# A303623: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303623, there is no canonical definition to state claims against.
-/

/-! ## A303623.P12364123783975192599

`A303624(A055999(n+4))`
-/

namespace A303623.P12364123783975192599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A055999 (n + 4)).toNat

end

end A303623.P12364123783975192599

/-! ## A303623.P11982690914086685501

`A303624(eq[4, A219347(n)])`
-/

namespace A303623.P11982690914086685501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303623.P11982690914086685501

/-! ## A303623.P8090074378879838763

`A303624(eq[6, A193592(n)])`
-/

namespace A303623.P8090074378879838763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303623.P8090074378879838763

/-! ## A303623.P2410458047245940047

`A303624(A167499(n+6)-11)`
-/

namespace A303623.P2410458047245940047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A167499 (n + 6) - 11).toNat

end

end A303623.P2410458047245940047

/-! ## A303623.P11206769198353755300

`A303624(eq[6, A025581(n)]+1)`
-/

namespace A303623.P11206769198353755300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A303623.P11206769198353755300

/-!
# A303624: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303624, there is no canonical definition to state claims against.
-/

/-! ## A303624.P1487697057395924550

`A302889(n+1)+A006927(A028326(n))`
-/

namespace A303624.P1487697057395924550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (n + 1) + A006927 (A028326 n).toNat

end

end A303624.P1487697057395924550

/-! ## A303624.P12105292423441234365

`A302889(n+1)+A014707(A022171(n))`
-/

namespace A303624.P12105292423441234365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (n + 1) + A014707 (A022171 n).toNat

end

end A303624.P12105292423441234365

/-! ## A303624.P2063453131165242417

`A302889(n+1)+A025465(A022345(n))`
-/

namespace A303624.P2063453131165242417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (n + 1) + A025465 (A022345 n).toNat

end

end A303624.P2063453131165242417

/-! ## A303624.P14550956162293451229

`A302889(n+1)+A025465(A023105(n))`
-/

namespace A303624.P14550956162293451229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (n + 1) + A025465 (A023105 n).toNat

end

end A303624.P14550956162293451229

/-! ## A303624.P8305769469244356170

`A302889(n+1)+A055641(A022112(n))`
-/

namespace A303624.P8305769469244356170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (n + 1) + A055641 (A022112 n).toNat

end

end A303624.P8305769469244356170

/-!
# A303625: Number of 3Xn 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303625, there is no canonical definition to state claims against.
-/

/-! ## A303625.P4562426791150137934

`A303624(∑[n+2]+4)`
-/

namespace A303625.P4562426791150137934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303625.P4562426791150137934

/-! ## A303625.P9488044328738492566

`lcm((-1)^n, A303624(A167614(n+1)))`
-/

namespace A303625.P9488044328738492566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A303624 (A167614 (n + 1)).toNat)

end

end A303625.P9488044328738492566

/-! ## A303625.P10193803162280318429

`A303624(A167614(n+1))+A011734(n)`
-/

namespace A303625.P10193803162280318429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A167614 (n + 1)).toNat + A011734 n

end

end A303625.P10193803162280318429

/-! ## A303625.P4595782638284137470

`A303624(A167614(n+1))+A185238(n)`
-/

namespace A303625.P4595782638284137470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A167614 (n + 1)).toNat + A185238 n

end

end A303625.P4595782638284137470

/-! ## A303625.P17417961557585488863

`A303624(A167614(n+1))+A185284(n)`
-/

namespace A303625.P17417961557585488863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A167614 (n + 1)).toNat + A185284 n

end

end A303625.P17417961557585488863

/-!
# A303626: Number of 4Xn 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303626, there is no canonical definition to state claims against.
-/

/-! ## A303626.P13335498167513532817

`A303624(A141214(n)+7)`
-/

namespace A303626.P13335498167513532817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A141214 n + 7).toNat

end

end A303626.P13335498167513532817

/-! ## A303626.P3156752852118527099

`A303624(A052905(n)+9)`
-/

namespace A303626.P3156752852118527099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A052905 n + 9).toNat

end

end A303626.P3156752852118527099

/-! ## A303626.P14314047914331672808

`A303624(A055999(n)+10)`
-/

namespace A303626.P14314047914331672808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A055999 n + 10).toNat

end

end A303626.P14314047914331672808

/-! ## A303626.P4365167949984794895

`A303624(Δ[A008778(n)]+6)`
-/

namespace A303626.P4365167949984794895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (f1 (n + 1) - f1 n + 6).toNat

end

end A303626.P4365167949984794895

/-! ## A303626.P1433462693965351717

`A303624(A167614(n+2)+1)`
-/

namespace A303626.P1433462693965351717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A167614 (n + 2) + 1).toNat

end

end A303626.P1433462693965351717

/-!
# A303627: Number of 5Xn 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303627, there is no canonical definition to state claims against.
-/

/-! ## A303627.P13049267343044986327

`A303624(A167499(n+3))`
-/

namespace A303627.P13049267343044986327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A167499 (n + 3)).toNat

end

end A303627.P13049267343044986327

/-! ## A303627.P11817768611340060858

`A303624(A155212(n)+13)`
-/

namespace A303627.P11817768611340060858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A155212 n + 13).toNat

end

end A303627.P11817768611340060858

/-! ## A303627.P5397158646916377416

`A303624(A056000(n)+15)`
-/

namespace A303627.P5397158646916377416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A056000 n + 15).toNat

end

end A303627.P5397158646916377416

/-! ## A303627.P16701016854797974111

`A303624(eq[7, A066657(n)])`
-/

namespace A303627.P16701016854797974111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303627.P16701016854797974111

/-! ## A303627.P7459413449754677119

`A303624(A052905(n+1)+10)`
-/

namespace A303627.P7459413449754677119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A052905 (n + 1) + 10).toNat

end

end A303627.P7459413449754677119

/-!
# A303628: Number of 6Xn 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303628, there is no canonical definition to state claims against.
-/

/-! ## A303628.P1808219834069353008

`A303624(A166136(n+4))`
-/

namespace A303628.P1808219834069353008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A166136 (n + 4)).toNat

end

end A303628.P1808219834069353008

/-! ## A303628.P9613945947533090283

`A303624(A056115(n)+21)`
-/

namespace A303628.P9613945947533090283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A056115 n + 21).toNat

end

end A303628.P9613945947533090283

/-! ## A303628.P17575084161908345622

`A303624(A000124(n+5)+5)`
-/

namespace A303628.P17575084161908345622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A000124 (n + 5) + 5).toNat

end

end A303628.P17575084161908345622

/-! ## A303628.P13555408152655834990

`A303624(eq[7, A131818(n+1)])`
-/

namespace A303628.P13555408152655834990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303628.P13555408152655834990

/-! ## A303628.P16152097315328633683

`A303624(Δ[A023545(n+1)]+10)`
-/

namespace A303628.P16152097315328633683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (f1 (n + 1) - f1 n + 10).toNat

end

end A303628.P16152097315328633683

/-!
# A303629: Number of 7Xn 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303629, there is no canonical definition to state claims against.
-/

/-! ## A303629.P7846448789650289996

`A303624(A056119(n)+28)`
-/

namespace A303629.P7846448789650289996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A056119 n + 28).toNat

end

end A303629.P7846448789650289996

/-! ## A303629.P8130728272477551146

`A303624(eq[11, A066657(n)])`
-/

namespace A303629.P8130728272477551146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303629.P8130728272477551146

/-! ## A303629.P6587737590302921913

`A303624(eq[6, A002262(n)]+1)`
-/

namespace A303629.P6587737590302921913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A303629.P6587737590302921913

/-! ## A303629.P10720389990824758553

`A303624(eq[8, A131818(n+1)])`
-/

namespace A303629.P10720389990824758553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303629.P10720389990824758553

/-! ## A303629.P2418652290769951852

`A303624(A000124(n+7)-A048266(n+1))`
-/

namespace A303629.P2418652290769951852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (A000124 (n + 7) - A048266 (n + 1)).toNat

end

end A303629.P2418652290769951852

/-!
# A303630: Number of n X n 0..1 arrays with every element unequal to 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A303630, there is no canonical definition to state claims against.
-/

/-! ## A303630.P7483373926236092811

`A303636(∑[4*n]+1)`
-/

namespace A303630.P7483373926236092811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303630.P7483373926236092811

/-! ## A303630.P835902468793449057

`and(-1, A303636(A001844(n)))`
-/

namespace A303630.P835902468793449057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A303636 (A001844 n).toNat)

end

end A303630.P835902468793449057

/-! ## A303630.P4371901662657064636

`A036370(n)*A303636(A001844(n))`
-/

namespace A303630.P4371901662657064636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036370 n * A303636 (A001844 n).toNat

end

end A303630.P4371901662657064636

/-! ## A303630.P2474634196962693358

`A303636(A001844(n))%A202628(n)`
-/

namespace A303630.P2474634196962693358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303636 (A001844 n).toNat) (A202628 n)

end

end A303630.P2474634196962693358

/-! ## A303630.P10061423417989693607

`A008835(n+1)*A303636(A001844(n))`
-/

namespace A303630.P10061423417989693607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1) * A303636 (A001844 n).toNat

end

end A303630.P10061423417989693607

/-!
# A303631: Number of n X 3 0..1 arrays with every element unequal to 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A303631, the canonical program `A303631.P10673546494694736776` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303631 has offset 1).

The definition of A303631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303631.P10673546494694736776

`a(n-1)+2*a(n-2)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303631

/-- `a(n-1)+2*a(n-2)+a(n-4)-a(n-5)` -/
def P10673546494694736776.Spec : Prop :=
  ∀ n, P10673546494694736776.a n = A303631 (n + 1)

theorem P10673546494694736776.correct : P10673546494694736776.Spec := by
  intro n
  simp only [A303631, Nat.add_sub_cancel]

end A303631

/-! ## A303631.P906203118400602363

`A303636(∑[n+2]+4)`
-/

namespace A303631.P906203118400602363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303631.P906203118400602363

namespace A303631

/-- `A303636(∑[n+2]+4)` -/
def P906203118400602363.Spec : Prop :=
  ∀ n, P906203118400602363.a n = A303631 (n + 1)

end A303631

/-! ## A303631.P8861356335296258662

`and(-1, A303636(A167614(n+1)))`
-/

namespace A303631.P8861356335296258662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A303636 (A167614 (n + 1)).toNat)

end

end A303631.P8861356335296258662

namespace A303631

/-- `and(-1, A303636(A167614(n+1)))` -/
def P8861356335296258662.Spec : Prop :=
  ∀ n, P8861356335296258662.a n = A303631 (n + 1)

end A303631

/-! ## A303631.P5406094881574525844

`A303636(A167614(n+1))+A011737(n)`
-/

namespace A303631.P5406094881574525844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A167614 (n + 1)).toNat + A011737 n

end

end A303631.P5406094881574525844

namespace A303631

/-- `A303636(A167614(n+1))+A011737(n)` -/
def P5406094881574525844.Spec : Prop :=
  ∀ n, P5406094881574525844.a n = A303631 (n + 1)

end A303631

/-! ## A303631.P14726024758874416476

`A303636(A167614(n+1))+A025443(n)`
-/

namespace A303631.P14726024758874416476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A167614 (n + 1)).toNat + A025443 n

end

end A303631.P14726024758874416476

namespace A303631

/-- `A303636(A167614(n+1))+A025443(n)` -/
def P14726024758874416476.Spec : Prop :=
  ∀ n, P14726024758874416476.a n = A303631 (n + 1)

end A303631

/-!
# A303632: Number of nX4 0..1 arrays with every element unequal to 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A303632, there is no canonical definition to state claims against.
-/

/-! ## A303632.P18013753108028606004

`A303636(∑[n+3]+7)`
-/

namespace A303632.P18013753108028606004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A303632.P18013753108028606004

/-! ## A303632.P2598167029020145556

`or(char[2], A303636(A052905(n)+9))`
-/

namespace A303632.P2598167029020145556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303636 (A052905 n + 9).toNat)

end

end A303632.P2598167029020145556

/-! ## A303632.P6398212375939043490

`A303636(Δ[A008778(n)]+6)+char[25]`
-/

namespace A303632.P6398212375939043490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (f1 (n + 1) - f1 n + 6).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303632.P6398212375939043490

/-! ## A303632.P9365906639239446089

`A303636(A374004(n+1))+A025443(n)`
-/

namespace A303632.P9365906639239446089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A374004 (n + 1)).toNat + A025443 n

end

end A303632.P9365906639239446089

/-! ## A303632.P2973814395663732632

`A303636(A374004(n+1))+A178798(n)`
-/

namespace A303632.P2973814395663732632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A374004 (n + 1)).toNat + A178798 n

end

end A303632.P2973814395663732632

/-!
# A303633: Number of nX5 0..1 arrays with every element unequal to 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A303633, there is no canonical definition to state claims against.
-/

/-! ## A303633.P15271073593027670026

`A303636(∑[n+4]+11)`
-/

namespace A303633.P15271073593027670026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A303633.P15271073593027670026

/-! ## A303633.P7768705735326887915

`A303636(A056000(n)+15)+char[20]`
-/

namespace A303633.P7768705735326887915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A056000 n + 15).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303633.P7768705735326887915

/-! ## A303633.P9148105407189203490

`A303636(A374005(n+1))+A025443(n)`
-/

namespace A303633.P9148105407189203490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A374005 (n + 1)).toNat + A025443 n

end

end A303633.P9148105407189203490

/-! ## A303633.P11170602575417339342

`A303636(A374005(n+1))+A178780(n)`
-/

namespace A303633.P11170602575417339342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A374005 (n + 1)).toNat + A178780 n

end

end A303633.P11170602575417339342

/-! ## A303633.P888208738925250795

`A303636(A374005(n+1))+A178798(n)`
-/

namespace A303633.P888208738925250795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A374005 (n + 1)).toNat + A178798 n

end

end A303633.P888208738925250795

/-!
# A303634: Number of nX6 0..1 arrays with every element unequal to 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A303634, there is no canonical definition to state claims against.
-/

/-! ## A303634.P9269984830021252293

`A303636(A374007(n+1))`
-/

namespace A303634.P9269984830021252293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A374007 (n + 1)).toNat

end

end A303634.P9269984830021252293

/-! ## A303634.P5688709563782576644

`A303636(A166136(n+4))`
-/

namespace A303634.P5688709563782576644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A166136 (n + 4)).toNat

end

end A303634.P5688709563782576644

/-! ## A303634.P2119698547942437714

`A303636(A056115(n)+21)`
-/

namespace A303634.P2119698547942437714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A056115 n + 21).toNat

end

end A303634.P2119698547942437714

/-! ## A303634.P11922554111016903076

`A303636(A167499(n+4)+1)`
-/

namespace A303634.P11922554111016903076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A167499 (n + 4) + 1).toNat

end

end A303634.P11922554111016903076

/-! ## A303634.P1736846414030511842

`A303636(A167487(n+4)-1)`
-/

namespace A303634.P1736846414030511842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A167487 (n + 4) - 1).toNat

end

end A303634.P1736846414030511842

/-!
# A303635: Number of nX7 0..1 arrays with every element unequal to 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A303635, there is no canonical definition to state claims against.
-/

/-! ## A303635.P11647643056996911695

`A303636(A374008(n+1))`
-/

namespace A303635.P11647643056996911695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A374008 (n + 1)).toNat

end

end A303635.P11647643056996911695

/-! ## A303635.P6824716238404247289

`A303636(A167487(n+5))`
-/

namespace A303635.P6824716238404247289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A167487 (n + 5)).toNat

end

end A303635.P6824716238404247289

/-! ## A303635.P1949431994407711965

`A303636(A056119(n)+28)`
-/

namespace A303635.P1949431994407711965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A056119 n + 28).toNat

end

end A303635.P1949431994407711965

/-! ## A303635.P8076632567737555648

`A303636(A000124(n+6)+6)`
-/

namespace A303635.P8076632567737555648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A000124 (n + 6) + 6).toNat

end

end A303635.P8076632567737555648

/-! ## A303635.P12071750355765429915

`A303636(A253145(n+5)+7)`
-/

namespace A303635.P12071750355765429915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A253145 (n + 5) + 7).toNat

end

end A303635.P12071750355765429915

/-!
# A303636: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A303636, there is no canonical definition to state claims against.
-/

/-! ## A303636.P3317287241007782240

`A215467(A298554(n+1)²)-1`
-/

namespace A303636.P3317287241007782240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215467 (A298554 (n + 1) ^ 2).toNat - 1

end

end A303636.P3317287241007782240

/-! ## A303636.P10254138174686206473

`A033619(A215467(A298554(n+1)²))`
-/

namespace A303636.P10254138174686206473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A215467 (A298554 (n + 1) ^ 2).toNat).toNat

end

end A303636.P10254138174686206473

/-! ## A303636.P245704716214339379

`A298100(n+1)-A178780(A298100(2*n+1))`
-/

namespace A303636.P245704716214339379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (n + 1) - A178780 (A298100 (2 * n + 1)).toNat

end

end A303636.P245704716214339379

/-! ## A303636.P1808766456323878711

`∑{d}[n+1, A268814(#-1)*A298100((n+1)/#)]`
-/

namespace A303636.P1808766456323878711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A268814 (d - 1) * A298100 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A303636.P1808766456323878711

/-! ## A303636.P4569499700204554851

`∑{d}[n+1, A298100(#)*A324011((n+1)/#-1)]`
-/

namespace A303636.P4569499700204554851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A298100 d * A324011 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A303636.P4569499700204554851

/-!
# A303639: Number of ways to write n as a^2 + b^2 + binomial(2*c+1,c) + binomial(2*d+1,d), where a,b,c,d are nonnegative integers with a <= b and c <= d.

The programs for A303639, there is no canonical definition to state claims against.
-/

/-! ## A303639.P7267225912002232474

`A001222(∑[A002260(A130709(n))])`
-/

namespace A303639.P7267225912002232474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A130709 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303639.P7267225912002232474

/-! ## A303639.P10835577975980857937

`A001221(A245717(n+1)*A363561(n))`
-/

namespace A303639.P10835577975980857937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A245717 (n + 1) * A363561 n).toNat

end

end A303639.P10835577975980857937

/-! ## A303639.P8616878406766425695

`A001221(A062804(n+1)+A005704(n)-A006047(n))`
-/

namespace A303639.P8616878406766425695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A062804 (n + 1) + (A005704 n - A006047 n)).toNat

end

end A303639.P8616878406766425695

/-! ## A303639.P9904610330820614441

`A265337(lt[A330393(n), 6])`
-/

namespace A303639.P9904610330820614441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330393 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265337 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A303639.P9904610330820614441

/-! ## A303639.P14564253832630109273

`A124769(A124763(n)+A000784(n+1))`
-/

namespace A303639.P14564253832630109273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A124763 n + A000784 (n + 1)).toNat

end

end A303639.P14564253832630109273

/-!
# A303642: a(n) is the number of lattice points in Cartesian grid between circle of radius n and its inscribed square. The sides of the square are parallel to coordinate axes.

The programs for A303642, there is no canonical definition to state claims against.
-/

/-! ## A303642.P9609223127493626114

`A051132(n+1)-(2*floor((n+1)/sqrt(2))+1)²`
-/

namespace A303642.P9609223127493626114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 (n + 1) - (2 * ⌊(n + 1 : ℝ) / Real.sqrt (2 : ℝ)⌋ + 1) ^ 2

end

end A303642.P9609223127493626114

/-! ## A303642.P164904983150062817

`A053456(2*(n+1))-A304035(n+1)`
-/

namespace A303642.P164904983150062817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (2 * (n + 1)) - A304035 (n + 1)

end

end A303642.P164904983150062817

/-! ## A303642.P4581926560688457871

`A053456(2*n+2)%A304035(n+1)`
-/

namespace A303642.P4581926560688457871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053456 (2 * n + 2)) (A304035 (n + 1))

end

end A303642.P4581926560688457871

/-! ## A303642.P10277743940038016717

`A051132(round(sqrt(n²+1))+1)%A304035(n+1)`
-/

namespace A303642.P10277743940038016717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051132 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat) (A304035 (n + 1))

end

end A303642.P10277743940038016717

/-! ## A303642.P9832923953663550506

`A000328(n)+A077770(n)-A304035(n+1)`
-/

namespace A303642.P9832923953663550506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n + (A077770 n - A304035 (n + 1))

end

end A303642.P9832923953663550506

/-! ## A303642.P4743826620941968908

`A000328(n+1)-(A304035(n+1)+A046109(n+1))`
-/

namespace A303642.P4743826620941968908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 (n + 1) - (A304035 (n + 1) + A046109 (n + 1))

end

end A303642.P4743826620941968908

/-!
# A303644: a(n) is the number of lattice points in a Cartesian grid between a square of side length 2*n, centered at the origin, and its inscribed circle. The sides of the square are parallel to the coordinate axes.

The programs for A303644, there is no canonical definition to state claims against.
-/

/-! ## A303644.P13922513323804947386

`4*(n²-A001182(n+1))`
-/

namespace A303644.P13922513323804947386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n ^ 2 : ℤ) - A001182 (n + 1))

end

end A303644.P13922513323804947386

/-! ## A303644.P1239974834445389644

`∑[(8*n)%A036693(n+1)]`
-/

namespace A303644.P1239974834445389644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (8 * n : ℤ) (A036693 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303644.P1239974834445389644

/-! ## A303644.P3715758490338534553

`(2*n)²-A261849(2*(n+1))`
-/

namespace A303644.P3715758490338534553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - A261849 (2 * (n + 1))

end

end A303644.P3715758490338534553

/-! ## A303644.P3948846870110607716

`A078370(n)-A000328(n+1)`
-/

namespace A303644.P3948846870110607716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 n - A000328 (n + 1)

end

end A303644.P3948846870110607716

/-! ## A303644.P6165212031948595139

`∑[A008590(n)%Δ[A000328(n)]]`
-/

namespace A303644.P6165212031948595139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008590 n) (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303644.P6165212031948595139

/-! ## A303644.P5308421976499221937

`A008586(n²-A001182(n+1))`
-/

namespace A303644.P5308421976499221937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 ((n ^ 2 : ℤ) - A001182 (n + 1)).toNat

end

end A303644.P5308421976499221937

/-! ## A303644.P10825667638626092984

`A016825(n²-A001182(n+1))-2`
-/

namespace A303644.P10825667638626092984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 ((n ^ 2 : ℤ) - A001182 (n + 1)).toNat - 2

end

end A303644.P10825667638626092984

/-! ## A303644.P6060576568585258169

`A008586(n²-A136483(2*(n+1)))`
-/

namespace A303644.P6060576568585258169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 ((n ^ 2 : ℤ) - A136483 (2 * (n + 1))).toNat

end

end A303644.P6060576568585258169

/-! ## A303644.P7522020712050159138

`A016825(n²)-A016825(A001182(n+1))`
-/

namespace A303644.P7522020712050159138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (n ^ 2) - A016825 (A001182 (n + 1)).toNat

end

end A303644.P7522020712050159138

/-! ## A303644.P12043974699789550417

`n*A008586(n)-A008586(A001182(n+1))`
-/

namespace A303644.P12043974699789550417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008586 n - A008586 (A001182 (n + 1)).toNat

end

end A303644.P12043974699789550417

/-!
# A303647: a(n) = ceiling(a(n-1)/(2^(1/3)-1)+1), a(1)=1.

The programs for A303647, the canonical program `A303647.P12589980317728805160` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303647 has offset 1).

The definition of A303647 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(a(n-1)/(2^(1/3)-1)+1)` (program `A303647.P12589980317728805160`, by `A303647.P12589980317728805160.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A303647.P12589980317728805160

`ceil(a(n-1)/(2^(1/3)-1)+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303647

/-- `ceil(a(n-1)/(2^(1/3)-1)+1)` -/
def P12589980317728805160.Spec : Prop :=
  ∀ n, P12589980317728805160.a n = A303647 (n + 1)

theorem P12589980317728805160.correct : P12589980317728805160.Spec := by
  intro n
  simp only [A303647, Nat.add_sub_cancel]

end A303647

/-! ## A303647.P1957811147157413326

`ogf((1+x+x^2)/(1-4x+2x^3+x^4))`
-/

namespace A303647.P1957811147157413326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -4, 0, 2, 1] n

end

end A303647.P1957811147157413326

namespace A303647

/-- `ogf((1+x+x^2)/(1-4x+2x^3+x^4))` -/
def P1957811147157413326.Spec : Prop :=
  ∀ n, P1957811147157413326.a n = A303647 (n + 1)

end A303647

/-! ## A303647.P8063783442538010074

`4*a(n-1)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=21, a(3)=82`
-/

namespace A303647.P8063783442538010074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 21, 82] fun n a =>
  4 * a (n - 1) - 2 * a (n - 3) - a (n - 4)

end

end A303647.P8063783442538010074

namespace A303647

/-- `4*a(n-1)-2*a(n-3)-a(n-4)` -/
def P8063783442538010074.Spec : Prop :=
  ∀ n, P8063783442538010074.a n = A303647 (n + 1)

end A303647

/-! ## A303647.P14383650545000775931

`∑[record[Δ[A237988(n)]]]`
-/

namespace A303647.P14383650545000775931
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303647.P14383650545000775931

namespace A303647

/-- `∑[record[Δ[A237988(n)]]]` -/
def P14383650545000775931.Spec : Prop :=
  ∀ n, P14383650545000775931.a n = A303647 (n + 1)

end A303647

/-! ## A303647.P11353415189948125184

`∑[Δ[A237988(3*n+2)]/2]`
-/

namespace A303647.P11353415189948125184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237988 (3 * n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303647.P11353415189948125184

namespace A303647

/-- `∑[Δ[A237988(3*n+2)]/2]` -/
def P11353415189948125184.Spec : Prop :=
  ∀ n, P11353415189948125184.a n = (A303647 (n + 1) : ℚ)

end A303647

/-! ## A303647.P7948514994333416239

`2*A195339(n)-A301483(n+1)`
-/

namespace A303647.P7948514994333416239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195339 n - A301483 (n + 1)

end

end A303647.P7948514994333416239

namespace A303647

/-- `2*A195339(n)-A301483(n+1)` -/
def P7948514994333416239.Spec : Prop :=
  ∀ n, P7948514994333416239.a n = A303647 (n + 1)

end A303647

/-! ## A303647.P12622540662432496245

`∑[record[A237988(n+1)-A237988(n)]]`
-/

namespace A303647.P12622540662432496245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237988 (n + 1) - A237988 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303647.P12622540662432496245

namespace A303647

/-- `∑[record[A237988(n+1)-A237988(n)]]` -/
def P12622540662432496245.Spec : Prop :=
  ∀ n, P12622540662432496245.a n = A303647 (n + 1)

end A303647

/-! ## A303647.P13281316823883197302

`∑[record[A237988(n+5)%A237988(n+3)]]`
-/

namespace A303647.P13281316823883197302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237988 (n + 5)) (A237988 (n + 3))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303647.P13281316823883197302

namespace A303647

/-- `∑[record[A237988(n+5)%A237988(n+3)]]` -/
def P13281316823883197302.Spec : Prop :=
  ∀ n, P13281316823883197302.a n = A303647 (n + 1)

end A303647

/-! ## A303647.P9976907677635885995

`Δ[A301483(n+1)-A195350(n)]-A195350(n)`
-/

namespace A303647.P9976907677635885995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301483 (n + 1) - A195350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A195350 n

end

end A303647.P9976907677635885995

namespace A303647

/-- `Δ[A301483(n+1)-A195350(n)]-A195350(n)` -/
def P9976907677635885995.Spec : Prop :=
  ∀ n, P9976907677635885995.a n = A303647 (n + 1)

end A303647

/-! ## A303647.P14896012147101105868

`A301483(n+2)-A195350(n+2)+A195339(n)`
-/

namespace A303647.P14896012147101105868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301483 (n + 2) - A195350 (n + 2) + A195339 n

end

end A303647.P14896012147101105868

namespace A303647

/-- `A301483(n+2)-A195350(n+2)+A195339(n)` -/
def P14896012147101105868.Spec : Prop :=
  ∀ n, P14896012147101105868.a n = A303647 (n + 1)

end A303647

/-! ## A303647.P5300259396798922651

`A301483(n+2)-(A301483(n+1)+A195350(n+1))`
-/

namespace A303647.P5300259396798922651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301483 (n + 2) - (A301483 (n + 1) + A195350 (n + 1))

end

end A303647.P5300259396798922651

namespace A303647

/-- `A301483(n+2)-(A301483(n+1)+A195350(n+1))` -/
def P5300259396798922651.Spec : Prop :=
  ∀ n, P5300259396798922651.a n = A303647 (n + 1)

end A303647

/-!
# A303649: Number of involutions of [n] having exactly one peak.

The programs for A303649, the canonical program `A303649.P3768676354070009238` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303649 has offset 0).

The definition of A303649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303649.P3768676354070009238

`∑[∑[A280186(n)]]+C(n, 3)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A303649

/-- `∑[∑[A280186(n)]]+C(n, 3)` -/
def P3768676354070009238.Spec : Prop :=
  ∀ n, P3768676354070009238.a n = A303649 n

theorem P3768676354070009238.correct : P3768676354070009238.Spec := by
  intro n
  simp only [A303649]

end A303649

/-! ## A303649.P7590008335924237193

`∑[∑[A289207(n)+A280186(n)]]`
-/

namespace A303649.P7590008335924237193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n + A280186 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303649.P7590008335924237193

namespace A303649

/-- `∑[∑[A289207(n)+A280186(n)]]` -/
def P7590008335924237193.Spec : Prop :=
  ∀ n, P7590008335924237193.a n = A303649 n

end A303649

/-! ## A303649.P12619110882966031814

`∑[∑[A123580(A059403(n))]]`
-/

namespace A303649.P12619110882966031814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A059403 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303649.P12619110882966031814

namespace A303649

/-- `∑[∑[A123580(A059403(n))]]` -/
def P12619110882966031814.Spec : Prop :=
  ∀ n, P12619110882966031814.a n = A303649 n

end A303649

/-!
# A303651: Main diagonal of irregular triangle A303650.

The programs for A303651, there is no canonical definition to state claims against.
-/

/-! ## A303651.P4075287518445455877

`A303650((n+1)²)`
-/

namespace A303651.P4075287518445455877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303650 ((n + 1) ^ 2)

end

end A303651.P4075287518445455877

/-! ## A303651.P7147603371214278033

`record[A303650(A002620(n))]`
-/

namespace A303651.P7147603371214278033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303650 (A002620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303651.P7147603371214278033

/-! ## A303651.P1704652057244859217

`record[A303650(A008616(n)²)]`
-/

namespace A303651.P1704652057244859217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303650 (A008616 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303651.P1704652057244859217

/-! ## A303651.P17912022394093785837

`record[A303650(A077462(n)²)]`
-/

namespace A303651.P17912022394093785837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303650 (A077462 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303651.P17912022394093785837

/-! ## A303651.P8733314640730624573

`record[A303650(A236858(n)²)]`
-/

namespace A303651.P8733314640730624573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303650 (A236858 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303651.P8733314640730624573

/-! ## A303651.P3945864709292142006

`record[A303650((A230865(n)/2)²)]`
-/

namespace A303651.P3945864709292142006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303650 (SequenceMachineLib.roundAway (((A230865 n : ℚ) / 2) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303651.P3945864709292142006

/-! ## A303651.P1293052174711219500

`record[A303650((n-A053187(n))²)]`
-/

namespace A303651.P1293052174711219500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303650 (((n : ℤ) - A053187 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303651.P1293052174711219500

/-! ## A303651.P18099694408384783156

`record[A303650(A053187(A230865(n)))]`
-/

namespace A303651.P18099694408384783156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303650 (A053187 (A230865 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303651.P18099694408384783156

/-! ## A303651.P14397389463118836840

`record[A303650(A053187(A161115(n+1)))]`
-/

namespace A303651.P14397389463118836840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303650 (A053187 (A161115 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303651.P14397389463118836840

/-!
# A303654: G.f. A(x) satisfies: x = Sum_{n>=1} ((1+x)^n - 1)^n / A(x)^n.

The programs for A303654, there is no canonical definition to state claims against.
-/

/-! ## A303654.P3672052412301215406

`A300064(A227463(n+1)+∑{p}[n+1, #^val(n+1, #)])`
-/

namespace A303654.P3672052412301215406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300064 (A227463 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)).toNat

end

end A303654.P3672052412301215406

/-!
# A303656: Number of ways to write n as a^2 + b^2 + 3^c + 5^d, where a,b,c,d are nonnegative integers with a <= b.

The programs for A303656, there is no canonical definition to state claims against.
-/

/-! ## A303656.P16798341327022058799

`and(A152388(n+1), A303429(n+1))`
-/

namespace A303656.P16798341327022058799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A303429 (n + 1))

end

end A303656.P16798341327022058799

/-! ## A303656.P2962643683055795238

`and(A186559(n+1), A303429(n+1))`
-/

namespace A303656.P2962643683055795238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A186559 (n + 1)) (A303429 (n + 1))

end

end A303656.P2962643683055795238

/-! ## A303656.P13403968472773203969

`A303429(n+1)%A000928(A001498(n))`
-/

namespace A303656.P13403968472773203969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303429 (n + 1)) (A000928 (A001498 n).toNat)

end

end A303656.P13403968472773203969

/-! ## A303656.P4778423581371440410

`and(A113860(n), A303429(n+1))`
-/

namespace A303656.P4778423581371440410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113860 n) (A303429 (n + 1))

end

end A303656.P4778423581371440410

/-! ## A303656.P12428893036013409649

`and(A249511(n+1), A303429(n+1))`
-/

namespace A303656.P12428893036013409649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249511 (n + 1)) (A303429 (n + 1))

end

end A303656.P12428893036013409649

/-!
# A303658: Decimal expansion of the alternating sum of the reciprocals of the triangular numbers.

The programs for A303658, there is no canonical definition to state claims against.
-/

/-! ## A303658.P2733073590630951247

`A016639(n+1)`
-/

namespace A303658.P2733073590630951247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016639 (n + 1 + 1)

end

end A303658.P2733073590630951247

/-! ## A303658.P15002074085953523270

`A016639(n)-Δ[-A016639(n)]`
-/

namespace A303658.P15002074085953523270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A016639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016639 (n + 1) - (f1 (n + 1) - f1 n)

end

end A303658.P15002074085953523270

/-! ## A303658.P2011775758349361601

`Δ[A023443(∑[A016639(n)])]`
-/

namespace A303658.P2011775758349361601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303658.P2011775758349361601

/-!
# A303661: Powers of squarefree semiprimes that are not squarefree.

The programs for A303661, there is no canonical definition to state claims against.
-/

/-! ## A303661.P16207521657289045596

`∩[A072777(n+1), A355462(n+1)]`
-/

namespace A303661.P16207521657289045596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303661.P16207521657289045596

/-! ## A303661.P17992287194712102506

`∩[A076292(n+1), A355462(n+1)]`
-/

namespace A303661.P17992287194712102506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303661.P17992287194712102506

/-! ## A303661.P17394484428536082598

`∩[A303606(n+1), A355462(n+1)]`
-/

namespace A303661.P17394484428536082598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303661.P17394484428536082598

/-! ## A303661.P10759761401336944850

`∩[A072777(n+1), A338539(n+1)]`
-/

namespace A303661.P10759761401336944850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303661.P10759761401336944850

/-! ## A303661.P6149632474790198128

`∩[A076292(n+1), A338539(n+1)]`
-/

namespace A303661.P6149632474790198128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303661.P6149632474790198128

/-! ## A303661.P9594347439323630552

`∩[A303606(n+1), A338539(n+1)]`
-/

namespace A303661.P9594347439323630552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303661.P9594347439323630552

/-! ## A303661.P3724333651781352449

`∩[A303606(n+1), A320894(n+1)]`
-/

namespace A303661.P3724333651781352449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303661.P3724333651781352449

/-! ## A303661.P606982903952390399

`filter[A338539(n+1), A354353(#)]`
-/

namespace A303661.P606982903952390399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A303661.P606982903952390399

/-! ## A303661.P9909240420722112021

`filter[A355462(n+1), A354353(#)]`
-/

namespace A303661.P9909240420722112021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A303661.P9909240420722112021

/-! ## A303661.P16031169492191864288

`A072777(eq[2, A001221(A076292(n+1))])`
-/

namespace A303661.P16031169492191864288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A076292 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303661.P16031169492191864288

/-!
# A303663: Expansion of (1/(1 - x))*Product_{k>=1} (1 - x^prime(k))/(1 - x^k).

The programs for A303663, there is no canonical definition to state claims against.
-/

/-! ## A303663.P18054775819580209839

`∑[A002095(n)]`
-/

namespace A303663.P18054775819580209839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303663.P18054775819580209839

/-! ## A303663.P7448002282274276672

`∑[∑[A023895(n)]]`
-/

namespace A303663.P7448002282274276672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023895 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303663.P7448002282274276672

/-! ## A303663.P17840220340020181161

`A002095(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A303663.P17840220340020181161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002095 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A303663.P17840220340020181161

/-! ## A303663.P1610023275988134435

`∑[A000041(n)-A235945(n)]`
-/

namespace A303663.P1610023275988134435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A235945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303663.P1610023275988134435

/-! ## A303663.P2452177079952976544

`∑[∑[A002865(n)]-A235945(n)]`
-/

namespace A303663.P2452177079952976544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A235945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303663.P2452177079952976544

/-! ## A303663.P10112719112670900894

`∑[A000065(n)+1-A235945(n)]`
-/

namespace A303663.P10112719112670900894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A235945 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303663.P10112719112670900894

/-! ## A303663.P10062294081879727825

`∑[A339396(n)+A339395(n)]`
-/

namespace A303663.P10062294081879727825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339396 n + A339395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303663.P10062294081879727825

/-! ## A303663.P8809282109016554904

`∑[A222656(∑[A110654(n)])]`
-/

namespace A303663.P8809282109016554904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303663.P8809282109016554904

/-! ## A303663.P13521038410417289998

`∑[A222656(A002620(n+1))]`
-/

namespace A303663.P13521038410417289998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A002620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303663.P13521038410417289998

/-! ## A303663.P3169511280788425369

`∑[A222656(A076921(n+1))]`
-/

namespace A303663.P3169511280788425369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A076921 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303663.P3169511280788425369

/-! ## A303663.P1759900346154663058

`∑[A222656(∑[A004526(n+1)])]`
-/

namespace A303663.P1759900346154663058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303663.P1759900346154663058

/-! ## A303663.P14894769672143694999

`∑[A222656(∑[n]-A002620(n))]`
-/

namespace A303663.P14894769672143694999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A002620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303663.P14894769672143694999

/-! ## A303663.P5543247250818996766

`∑[A222656(∑[n-A004526(n)])]`
-/

namespace A303663.P5543247250818996766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303663.P5543247250818996766

/-! ## A303663.P11906601021809242875

`∑[A222656(∑[A007494(n)-n])]`
-/

namespace A303663.P11906601021809242875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303663.P11906601021809242875

/-!
# A303664: Expansion of (1/(1 - x))*Sum_{k>=0} k!*x^(k*(k+1)/2)/Product_{j=1..k} (1 - x^j).

The programs for A303664, there is no canonical definition to state claims against.
-/

/-! ## A303664.P12088833282653754838

`∑[A032020(n)]`
-/

namespace A303664.P12088833282653754838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303664.P12088833282653754838

/-! ## A303664.P6156702351041442002

`∑[A216695(n)+1]`
-/

namespace A303664.P6156702351041442002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216695 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303664.P6156702351041442002

/-! ## A303664.P1671353733584699776

`∑[A332305(n)+A332304(n)]`
-/

namespace A303664.P1671353733584699776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332305 n + A332304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303664.P1671353733584699776

/-! ## A303664.P13687836533547729326

`∑[A333149(n)+A333147(n)]`
-/

namespace A303664.P13687836533547729326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333149 n + A333147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303664.P13687836533547729326

/-! ## A303664.P17633978869862520126

`A032020(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A303664.P17633978869862520126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032020 n + a (A023443 n).toNat

end

end A303664.P17633978869862520126

/-! ## A303664.P139716996405074867

`a(n-1)+A032020(n)+A000038(n)` with `a(0)=1, a(1)=2`
-/

namespace A303664.P139716996405074867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (A032020 n + A000038 n)

end

end A303664.P139716996405074867

/-! ## A303664.P17278468896491467095

`∑[2*A032058(n)-1]`
-/

namespace A303664.P17278468896491467095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032058 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303664.P17278468896491467095

/-! ## A303664.P5698389934122044340

`∑[A003242(n)-A285981(n)]`
-/

namespace A303664.P5698389934122044340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n - A285981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303664.P5698389934122044340

/-! ## A303664.P9520871704170111985

`∑[A011782(n)-A261982(n)]`
-/

namespace A303664.P9520871704170111985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A261982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303664.P9520871704170111985

/-! ## A303664.P18114143179997526362

`A000079(n)-∑[A261982(n)]`
-/

namespace A303664.P18114143179997526362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303664.P18114143179997526362

/-! ## A303664.P8132378077768500656

`∑[A242447(A000124(n))]+1`
-/

namespace A303664.P8132378077768500656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A303664.P8132378077768500656

/-! ## A303664.P5135153955064824766

`∑[A243081(∑[n+2]-1)]`
-/

namespace A303664.P5135153955064824766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303664.P5135153955064824766

/-!
# A303665: Expansion of 1/((1 - x)*(1 - Sum_{k>=1} x^prime(k))).

The programs for A303665, there is no canonical definition to state claims against.
-/

/-! ## A303665.P18002029750539124330

`∑[A023360(n)]`
-/

namespace A303665.P18002029750539124330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303665.P18002029750539124330

/-! ## A303665.P1000835961928495383

`∑[A078465(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A303665.P1000835961928495383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A078465 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303665.P1000835961928495383

/-! ## A303665.P61251846137903351

`A023360(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A303665.P61251846137903351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023360 n + a (A023443 n).toNat

end

end A303665.P61251846137903351

/-! ## A303665.P2196350515098098793

`a(n-1)+A023360(n)/A000041(C(2, n+1))` with `a(0)=1`
-/

namespace A303665.P2196350515098098793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A023360 n : ℚ) / (A000041 (Nat.choose 2 (n + 1)) : ℚ)

end

end A303665.P2196350515098098793

/-! ## A303665.P7243141937230617621

`a(n-2)+A276420(A004275(n+1))+A000038(n)` with `a(0)=1, a(1)=1`
-/

namespace A303665.P7243141937230617621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (A276420 (A004275 (n + 1)).toNat + A000038 n)

end

end A303665.P7243141937230617621

/-!
# A303666: Expansion of 1/((1 - x)*(1 - Sum_{k>=0} x^(2^k))).

The programs for A303666, there is no canonical definition to state claims against.
-/

/-! ## A303666.P11148292330616055423

`∑[A023359(n)]`
-/

namespace A303666.P11148292330616055423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303666.P11148292330616055423

/-! ## A303666.P3652839480270215871

`a(n-1)+A023359(n)+A000038(n)` with `a(0)=1`
-/

namespace A303666.P3652839480270215871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A023359 n + A000038 n)

end

end A303666.P3652839480270215871

/-! ## A303666.P16122484977637965373

`a(n-1)-A023359(n)*A057428(n)` with `a(0)=1`
-/

namespace A303666.P16122484977637965373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A023359 n * A057428 n

end

end A303666.P16122484977637965373

/-! ## A303666.P12784853758519098179

`a(n-1)+A008836(A133819(n+1))*A023359(n)` with `a(0)=1`
-/

namespace A303666.P12784853758519098179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A008836 (A133819 (n + 1)).toNat * A023359 n

end

end A303666.P12784853758519098179

/-! ## A303666.P1867217912766703173

`∑[A304908(n)/A028310(n)]+1`
-/

namespace A303666.P1867217912766703173
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304908 n : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A303666.P1867217912766703173

/-! ## A303666.P9184591831130370711

`∑[A304908(A028310(n))/A028310(n)]`
-/

namespace A303666.P9184591831130370711
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304908 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303666.P9184591831130370711

/-!
# A303667: Expansion of 2/((1 - x)*(3 - theta_3(x))), where theta_3() is the Jacobi theta function.

The programs for A303667, there is no canonical definition to state claims against.
-/

/-! ## A303667.P6267071597692743705

`∑[A006456(n)]`
-/

namespace A303667.P6267071597692743705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303667.P6267071597692743705

/-! ## A303667.P15681131217449278178

`∑[∑[A303909(n)]]`
-/

namespace A303667.P15681131217449278178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303909 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303667.P15681131217449278178

/-! ## A303667.P8813200583676570576

`A006456(n%n²)+a(n-1)` with `a(0)=1`
-/

namespace A303667.P8813200583676570576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006456 (n % n ^ 2) + a (n - 1)

end

end A303667.P8813200583676570576

/-! ## A303667.P2886035949835049565

`A006456(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A303667.P2886035949835049565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006456 n + a (A023443 n).toNat

end

end A303667.P2886035949835049565

/-! ## A303667.P9354978081765170182

`A006456(A000290(n)/n)+a(n-1)` with `a(0)=1`
-/

namespace A303667.P9354978081765170182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006456 (SequenceMachineLib.roundAway ((A000290 n : ℚ) / (n : ℚ))).toNat + a (n - 1)

end

end A303667.P9354978081765170182

/-! ## A303667.P14729599805933031060

`a(n-1)-A006456(n)*A057428(n)` with `a(0)=1, a(1)=2`
-/

namespace A303667.P14729599805933031060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - A006456 n * A057428 n

end

end A303667.P14729599805933031060

/-! ## A303667.P14209869756548084761

`A006456(n)+a(n-1)%A037444(n+1)` with `a(0)=1`
-/

namespace A303667.P14209869756548084761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006456 n + Int.tmod (a (n - 1)) (A037444 (n + 1))

end

end A303667.P14209869756548084761

/-! ## A303667.P15005220273312330325

`a(n-1)+A284258(A284252(n+1)²)+A006456(n)` with `a(0)=1`
-/

namespace A303667.P15005220273312330325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A284258 (A284252 (n + 1) ^ 2).toNat + A006456 n)

end

end A303667.P15005220273312330325

/-!
# A303668: Expansion of 1/((1 - x)*(2 - theta_2(sqrt(x))/(2*x^(1/8)))), where theta_2() is the Jacobi theta function.

The programs for A303668, there is no canonical definition to state claims against.
-/

/-! ## A303668.P15825095165062314045

`∑[A023361(n)]`
-/

namespace A303668.P15825095165062314045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303668.P15825095165062314045

/-! ## A303668.P11045177438396548203

`∑[A339417(n)+A339416(n)]`
-/

namespace A303668.P11045177438396548203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339417 n + A339416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303668.P11045177438396548203

/-! ## A303668.P3565610363970668947

`A023361(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A303668.P3565610363970668947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023361 n + a (A023443 n).toNat

end

end A303668.P3565610363970668947

/-! ## A303668.P1392785196711028560

`A023361(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A303668.P1392785196711028560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023361 n + a (A028310 n - 1).toNat

end

end A303668.P1392785196711028560

/-! ## A303668.P6390501175344354021

`a(n-1)+A023361(n)%A000032(n+2)` with `a(0)=1`
-/

namespace A303668.P6390501175344354021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A023361 n) (A000032 (n + 2))

end

end A303668.P6390501175344354021

/-!
# A303671: a(n) = [x^n] (6 / Sum_{k=0..n} (k+3)!*x^k)^(1/2).

The programs for A303671, there is no canonical definition to state claims against.
-/

/-! ## A303671.P3041666272465537083

`A219009(n+1)-A083920(A218691(n))`
-/

namespace A303671.P3041666272465537083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219009 (n + 1) - A083920 (A218691 n).toNat

end

end A303671.P3041666272465537083

/-! ## A303671.P15258442505195075904

`A208435(or(A002401(n), A246352(n+1)))`
-/

namespace A303671.P15258442505195075904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208435 (Int.lor (A002401 n) (A246352 (n + 1))).toNat

end

end A303671.P15258442505195075904

/-!
# A303672: a(n) = [x^n] (5040 / Sum_{k=0..n} (k+7)!*x^k)^(1/4).

The programs for A303672, there is no canonical definition to state claims against.
-/

/-! ## A303672.P9049196519090265468

`A208435(record[A256078(n)+n])`
-/

namespace A303672.P9049196519090265468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208435 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A303672.P9049196519090265468

/-!
# A303673: a(n) = [x^n] (15! / Sum_{k=0..n} (k+15)!*x^k)^(1/8).

The programs for A303673, there is no canonical definition to state claims against.
-/

/-! ## A303673.P15304598853081863573

`A359791(xor(A114173(n)-1, A002894(n)))`
-/

namespace A303673.P15304598853081863573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359791 (Int.xor (A114173 n - 1) (A002894 n)).toNat

end

end A303673.P15304598853081863573

/-!
# A303674: Number of connected integer partitions of n > 1 whose distinct parts are pairwise indivisible and whose z-density is -1.

The programs for A303674, there is no canonical definition to state claims against.
-/

/-! ## A303674.P9417157316168752048

`A060130(A060135(n)^A093411(n))`
-/

namespace A303674.P9417157316168752048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (SequenceMachineLib.roundAway ((A060135 n : ℚ) ^ (A093411 n : ℤ))).toNat

end

end A303674.P9417157316168752048

/-! ## A303674.P1830622767795207210

`A003056(A318885(n+1)%A327919(n+1))`
-/

namespace A303674.P1830622767795207210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A318885 (n + 1)) (A327919 (n + 1))).toNat

end

end A303674.P1830622767795207210

/-! ## A303674.P6623534195936391258

`A124767(A086328(n+1)+(n%2)^n)`
-/

namespace A303674.P6623534195936391258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A086328 (n + 1) + (((n % 2) ^ n : ℕ) : ℤ)).toNat

end

end A303674.P6623534195936391258

/-! ## A303674.P13036110628376633774

`A124758(A333225(n+1)-gcd(n+1, ∏{p}[n+1, (n+1)/#]))`
-/

namespace A303674.P13036110628376633774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A333225 (n + 1) - (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) : ℤ)).toNat

end

end A303674.P13036110628376633774

/-! ## A303674.P18166258774937548831

`A160383(A285913(n))+1`
-/

namespace A303674.P18166258774937548831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A285913 n).toNat + 1

end

end A303674.P18166258774937548831

/-!
# A303675: Triangle read by rows: coefficients in the sum of odd powers as expressed by Faulhaber's theorem, T(n, k) for n >= 1, 1 <= k <= n.

The programs for A303675, there is no canonical definition to state claims against.
-/

/-! ## A303675.P6233147374667146624

`A099375(n)!*A008957(n+1)`
-/

namespace A303675.P6233147374667146624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A099375 n).toNat : ℤ) * A008957 (n + 1)

end

end A303675.P6233147374667146624

/-! ## A303675.P16278291590136881837

`A008957(n+1)*A075263(A103217(n))`
-/

namespace A303675.P16278291590136881837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008957 (n + 1) * A075263 (A103217 n).toNat

end

end A303675.P16278291590136881837

/-! ## A303675.P13255295909723487529

`A099375(n)!*A036969(A038722(n+1))`
-/

namespace A303675.P13255295909723487529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A099375 n).toNat : ℤ) * A036969 (A038722 (n + 1)).toNat

end

end A303675.P13255295909723487529

/-! ## A303675.P3009459668450289407

`A099375(n)!*A036969(A061579(n)+1)`
-/

namespace A303675.P3009459668450289407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A099375 n).toNat : ℤ) * A036969 (A061579 n + 1).toNat

end

end A303675.P3009459668450289407

/-! ## A303675.P11276758090303190649

`A099375(n)!*A036969(A114327(n)+1+n)`
-/

namespace A303675.P11276758090303190649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A099375 n).toNat : ℤ) * A036969 (A114327 n + 1 + (n : ℤ)).toNat

end

end A303675.P11276758090303190649

/-!
# A303676: Number of n X n 0..1 arrays with every element unequal to 0, 1 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303676, there is no canonical definition to state claims against.
-/

/-! ## A303676.P8242121666985973058

`A303682(∑[4*n]+1)`
-/

namespace A303676.P8242121666985973058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303676.P8242121666985973058

/-! ## A303676.P5749571279769005360

`or(char[1], A303682(A001844(n)))`
-/

namespace A303676.P5749571279769005360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303682 (A001844 n).toNat)

end

end A303676.P5749571279769005360

/-! ## A303676.P10706657260650387520

`record[gcd(A114327(n), A303682(n+1))]`
-/

namespace A303676.P10706657260650387520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A303682 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303676.P10706657260650387520

/-! ## A303676.P1173002490959145320

`A303682(A001844(n))+A025469(n)`
-/

namespace A303676.P1173002490959145320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A001844 n).toNat + A025469 n

end

end A303676.P1173002490959145320

/-! ## A303676.P14818542400106122780

`A303682(A001844(n))%A304170(n)`
-/

namespace A303676.P14818542400106122780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303682 (A001844 n).toNat) (A304170 n)

end

end A303676.P14818542400106122780

/-!
# A303677: Number of nX2 0..1 arrays with every element unequal to 0, 1 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303677, the canonical program `A303677.P15852511516659537077` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303677 has offset 1).

The definition of A303677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 373 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303677.P15852511516659537077

`a(n-1)+4*a(n-3)-2*a(n-4)` with `a(0)=2, a(1)=5, a(2)=7, a(3)=17, a(4)=31`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303677

/-- `a(n-1)+4*a(n-3)-2*a(n-4)` -/
def P15852511516659537077.Spec : Prop :=
  ∀ n, P15852511516659537077.a n = A303677 (n + 1)

theorem P15852511516659537077.correct : P15852511516659537077.Spec := by
  intro n
  simp only [A303677, Nat.add_sub_cancel]

end A303677

/-! ## A303677.P5683104411914531533

`A303682(∑[n+1]+2)`
-/

namespace A303677.P5683104411914531533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A303677.P5683104411914531533

namespace A303677

/-- `A303682(∑[n+1]+2)` -/
def P5683104411914531533.Spec : Prop :=
  ∀ n, P5683104411914531533.a n = A303677 (n + 1)

end A303677

/-! ## A303677.P4497879509775961851

`record[A303682(A114091(n+1)+1)]`
-/

namespace A303677.P4497879509775961851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303677.P4497879509775961851

namespace A303677

/-- `record[A303682(A114091(n+1)+1)]` -/
def P4497879509775961851.Spec : Prop :=
  ∀ n, P4497879509775961851.a n = A303677 (n + 1)

end A303677

/-! ## A303677.P7426872436602066751

`or(char[1], A303682(A133263(n+1)))`
-/

namespace A303677.P7426872436602066751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303682 (A133263 (n + 1)).toNat)

end

end A303677.P7426872436602066751

namespace A303677

/-- `or(char[1], A303682(A133263(n+1)))` -/
def P7426872436602066751.Spec : Prop :=
  ∀ n, P7426872436602066751.a n = A303677 (n + 1)

end A303677

/-! ## A303677.P15831395134491125083

`record[A303682(A008611(A017041(n)))]`
-/

namespace A303677.P15831395134491125083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A008611 (A017041 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303677.P15831395134491125083

namespace A303677

/-- `record[A303682(A008611(A017041(n)))]` -/
def P15831395134491125083.Spec : Prop :=
  ∀ n, P15831395134491125083.a n = A303677 (n + 1)

end A303677

/-! ## A303677.P14217131508799357511

`A054977(n+1)*A303682(A133263(n+1))`
-/

namespace A303677.P14217131508799357511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A303682 (A133263 (n + 1)).toNat

end

end A303677.P14217131508799357511

namespace A303677

/-- `A054977(n+1)*A303682(A133263(n+1))` -/
def P14217131508799357511.Spec : Prop :=
  ∀ n, P14217131508799357511.a n = A303677 (n + 1)

end A303677

/-! ## A303677.P1864988974349060674

`A007318(C(2, n))*A303682(A133263(n+1))`
-/

namespace A303677.P1864988974349060674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A303682 (A133263 (n + 1)).toNat

end

end A303677.P1864988974349060674

namespace A303677

/-- `A007318(C(2, n))*A303682(A133263(n+1))` -/
def P1864988974349060674.Spec : Prop :=
  ∀ n, P1864988974349060674.a n = A303677 (n + 1)

end A303677

/-! ## A303677.P15578200663758731605

`A000041(C(n, n²))*A303682(A133263(n+1))`
-/

namespace A303677.P15578200663758731605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A303682 (A133263 (n + 1)).toNat

end

end A303677.P15578200663758731605

namespace A303677

/-- `A000041(C(n, n²))*A303682(A133263(n+1))` -/
def P15578200663758731605.Spec : Prop :=
  ∀ n, P15578200663758731605.a n = A303677 (n + 1)

end A303677

/-! ## A303677.P18227549598763342177

`A303682(A133263(n+1))+A008683(48*(n+1))`
-/

namespace A303677.P18227549598763342177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A133263 (n + 1)).toNat + A008683 (48 * (n + 1))

end

end A303677.P18227549598763342177

namespace A303677

/-- `A303682(A133263(n+1))+A008683(48*(n+1))` -/
def P18227549598763342177.Spec : Prop :=
  ∀ n, P18227549598763342177.a n = A303677 (n + 1)

end A303677

/-! ## A303677.P6165870424094700724

`A018252(abs((-1)^n))*A303682(A133263(n+1))`
-/

namespace A303677.P6165870424094700724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 |(-1) ^ n|.toNat * A303682 (A133263 (n + 1)).toNat

end

end A303677.P6165870424094700724

namespace A303677

/-- `A018252(abs((-1)^n))*A303682(A133263(n+1))` -/
def P6165870424094700724.Spec : Prop :=
  ∀ n, P6165870424094700724.a n = A303677 (n + 1)

end A303677

/-!
# A303678: Number of nX4 0..1 arrays with every element unequal to 0, 1 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303678, the canonical program `A303678.P14442482715452210260` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303678 has offset 1).

The definition of A303678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 566 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303678.P14442482715452210260

`a(n-1)+a(n-4)+a(n-5)` with `a(0)=5, a(1)=17, a(2)=15, a(3)=28, a(4)=44, a(5)=64, a(6)=90, a(7)=132`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303678

/-- `a(n-1)+a(n-4)+a(n-5)` -/
def P14442482715452210260.Spec : Prop :=
  ∀ n, (P14442482715452210260.a n : ℤ) = A303678 (n + 1)

theorem P14442482715452210260.correct : P14442482715452210260.Spec := by
  intro n
  simp only [A303678, Nat.add_sub_cancel]

end A303678

/-! ## A303678.P17834451252161806459

`A303682(∑[n+3]+7)`
-/

namespace A303678.P17834451252161806459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A303678.P17834451252161806459

namespace A303678

/-- `A303682(∑[n+3]+7)` -/
def P17834451252161806459.Spec : Prop :=
  ∀ n, P17834451252161806459.a n = A303678 (n + 1)

end A303678

/-! ## A303678.P10964869237050046164

`or(char[1], A303682(A055999(n)+10))`
-/

namespace A303678.P10964869237050046164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303682 (A055999 n + 10).toNat)

end

end A303678.P10964869237050046164

namespace A303678

/-- `or(char[1], A303682(A055999(n)+10))` -/
def P10964869237050046164.Spec : Prop :=
  ∀ n, P10964869237050046164.a n = A303678 (n + 1)

end A303678

/-! ## A303678.P16309191738107178983

`or(char[1], A303682(A167614(n+2)+1))`
-/

namespace A303678.P16309191738107178983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303682 (A167614 (n + 2) + 1).toNat)

end

end A303678.P16309191738107178983

namespace A303678

/-- `or(char[1], A303682(A167614(n+2)+1))` -/
def P16309191738107178983.Spec : Prop :=
  ∀ n, P16309191738107178983.a n = A303678 (n + 1)

end A303678

/-! ## A303678.P7886910876757084217

`A303682(A167614(n+2)+1)+A025444(n)`
-/

namespace A303678.P7886910876757084217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A167614 (n + 2) + 1).toNat + A025444 n

end

end A303678.P7886910876757084217

namespace A303678

/-- `A303682(A167614(n+2)+1)+A025444(n)` -/
def P7886910876757084217.Spec : Prop :=
  ∀ n, P7886910876757084217.a n = A303678 (n + 1)

end A303678

/-! ## A303678.P9178575661249391071

`A303682(A055999(n)+10)%A030516(n+1)`
-/

namespace A303678.P9178575661249391071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303682 (A055999 n + 10).toNat) (A030516 (n + 1))

end

end A303678.P9178575661249391071

namespace A303678

/-- `A303682(A055999(n)+10)%A030516(n+1)` -/
def P9178575661249391071.Spec : Prop :=
  ∀ n, P9178575661249391071.a n = A303678 (n + 1)

end A303678

/-! ## A303678.P5847807007464051940

`A007318(floor(n/81))*A303682(A055999(n)+10)`
-/

namespace A303678.P5847807007464051940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 81⌋.toNat * A303682 (A055999 n + 10).toNat

end

end A303678.P5847807007464051940

namespace A303678

/-- `A007318(floor(n/81))*A303682(A055999(n)+10)` -/
def P5847807007464051940.Spec : Prop :=
  ∀ n, P5847807007464051940.a n = A303678 (n + 1)

end A303678

/-! ## A303678.P1977286971242890636

`A303682(A167614(n+2)+1)%A000032(n+5)`
-/

namespace A303678.P1977286971242890636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303682 (A167614 (n + 2) + 1).toNat) (A000032 (n + 5))

end

end A303678.P1977286971242890636

namespace A303678

/-- `A303682(A167614(n+2)+1)%A000032(n+5)` -/
def P1977286971242890636.Spec : Prop :=
  ∀ n, P1977286971242890636.a n = A303678 (n + 1)

end A303678

/-! ## A303678.P4054827852331865099

`A303682(A055999(n)+10)+A008683(49*(n+1))`
-/

namespace A303678.P4054827852331865099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A055999 n + 10).toNat + A008683 (49 * (n + 1))

end

end A303678.P4054827852331865099

namespace A303678

/-- `A303682(A055999(n)+10)+A008683(49*(n+1))` -/
def P4054827852331865099.Spec : Prop :=
  ∀ n, P4054827852331865099.a n = A303678 (n + 1)

end A303678

/-! ## A303678.P3040147192968452830

`A303682(A055999(n)+10)+A001222(gcd(n, n+1))`
-/

namespace A303678.P3040147192968452830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A055999 n + 10).toNat + A001222 (Nat.gcd n (n + 1))

end

end A303678.P3040147192968452830

namespace A303678

/-- `A303682(A055999(n)+10)+A001222(gcd(n, n+1))` -/
def P3040147192968452830.Spec : Prop :=
  ∀ n, P3040147192968452830.a n = A303678 (n + 1)

end A303678

/-!
# A303679: Number of nX5 0..1 arrays with every element unequal to 0, 1 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303679, the canonical program `A303679.P6465278807590091512` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303679 has offset 1).

The definition of A303679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303679.P6465278807590091512

`a(n-1)+a(n-4)+a(n-6)` with `a(0)=8, a(1)=31, a(2)=25, a(3)=44, a(4)=76, a(5)=110, a(6)=150, a(7)=212, a(8)=306, a(9)=458`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303679

/-- `a(n-1)+a(n-4)+a(n-6)` -/
def P6465278807590091512.Spec : Prop :=
  ∀ n, (P6465278807590091512.a n : ℤ) = A303679 (n + 1)

theorem P6465278807590091512.correct : P6465278807590091512.Spec := by
  intro n
  simp only [A303679, Nat.add_sub_cancel]

end A303679

/-! ## A303679.P8302350989851749679

`A303682(∑[abs(1-n)+4]+n+10)`
-/

namespace A303679.P8302350989851749679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 10).toNat

end

end A303679.P8302350989851749679

namespace A303679

/-- `A303682(∑[abs(1-n)+4]+n+10)` -/
def P8302350989851749679.Spec : Prop :=
  ∀ n, P8302350989851749679.a n = A303679 (n + 1)

end A303679

/-! ## A303679.P15076297791287095328

`xor(5, xor(5, A303682(A056000(n)+15)))`
-/

namespace A303679.P15076297791287095328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (Int.xor 5 (A303682 (A056000 n + 15).toNat))

end

end A303679.P15076297791287095328

namespace A303679

/-- `xor(5, xor(5, A303682(A056000(n)+15)))` -/
def P15076297791287095328.Spec : Prop :=
  ∀ n, P15076297791287095328.a n = A303679 (n + 1)

end A303679

/-! ## A303679.P9042227199210318633

`A303682(A056000(n)+15)+A000035(48*n)`
-/

namespace A303679.P9042227199210318633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A056000 n + 15).toNat + A000035 (48 * n)

end

end A303679.P9042227199210318633

namespace A303679

/-- `A303682(A056000(n)+15)+A000035(48*n)` -/
def P9042227199210318633.Spec : Prop :=
  ∀ n, P9042227199210318633.a n = A303679 (n + 1)

end A303679

/-! ## A303679.P18087562972416238461

`A303682(A056000(n)+15)+A185016(2*n+1)`
-/

namespace A303679.P18087562972416238461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A056000 n + 15).toNat + A185016 (2 * n + 1)

end

end A303679.P18087562972416238461

namespace A303679

/-- `A303682(A056000(n)+15)+A185016(2*n+1)` -/
def P18087562972416238461.Spec : Prop :=
  ∀ n, P18087562972416238461.a n = A303679 (n + 1)

end A303679

/-! ## A303679.P7590996715488351921

`A303682(A056000(n)+15)+C(48, A205520(n+1))`
-/

namespace A303679.P7590996715488351921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A056000 n + 15).toNat + (Nat.choose 48 (A205520 (n + 1)).toNat : ℤ)

end

end A303679.P7590996715488351921

namespace A303679

/-- `A303682(A056000(n)+15)+C(48, A205520(n+1))` -/
def P7590996715488351921.Spec : Prop :=
  ∀ n, P7590996715488351921.a n = A303679 (n + 1)

end A303679

/-!
# A303680: Number of nX6 0..1 arrays with every element unequal to 0, 1 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303680, there is no canonical definition to state claims against.
-/

/-! ## A303680.P5863589587587911324

`A303682(A374007(n+1))`
-/

namespace A303680.P5863589587587911324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A374007 (n + 1)).toNat

end

end A303680.P5863589587587911324

/-! ## A303680.P1828880779588592700

`A303682(A166136(n+4))`
-/

namespace A303680.P1828880779588592700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A166136 (n + 4)).toNat

end

end A303680.P1828880779588592700

/-! ## A303680.P11097449191901123101

`A303682(A056115(n)+21)`
-/

namespace A303680.P11097449191901123101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A056115 n + 21).toNat

end

end A303680.P11097449191901123101

/-! ## A303680.P8268021187805359380

`A303682(Δ[A264443(n)]+10)`
-/

namespace A303680.P8268021187805359380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (f1 (n + 1) - f1 n + 10).toNat

end

end A303680.P8268021187805359380

/-! ## A303680.P15235560064123339097

`A303682(A167499(n+4)+1)`
-/

namespace A303680.P15235560064123339097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A167499 (n + 4) + 1).toNat

end

end A303680.P15235560064123339097

/-! ## A303680.P4555464229089922129

`A303682(A167614(n+4)+3)`
-/

namespace A303680.P4555464229089922129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A167614 (n + 4) + 3).toNat

end

end A303680.P4555464229089922129

/-! ## A303680.P14804173106673298942

`A303682(A000124(n+5)+5)`
-/

namespace A303680.P14804173106673298942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A000124 (n + 5) + 5).toNat

end

end A303680.P14804173106673298942

/-! ## A303680.P15284765960892201522

`A303682(A000096(n+4)+7)`
-/

namespace A303680.P15284765960892201522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A000096 (n + 4) + 7).toNat

end

end A303680.P15284765960892201522

/-! ## A303680.P2058526873076969092

`A303682(A000217(n+5)+6)`
-/

namespace A303680.P2058526873076969092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A000217 (n + 5) + 6).toNat

end

end A303680.P2058526873076969092

/-! ## A303680.P18040784363059645829

`A303682(A055998(n+3)+9)`
-/

namespace A303680.P18040784363059645829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A055998 (n + 3) + 9).toNat

end

end A303680.P18040784363059645829

/-!
# A303681: Number of nX7 0..1 arrays with every element unequal to 0, 1 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303681, there is no canonical definition to state claims against.
-/

/-! ## A303681.P9996798969187916013

`A303682(∑[n+6]+22)`
-/

namespace A303681.P9996798969187916013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A303681.P9996798969187916013

/-!
# A303682: T(n,k) = Number of n X k 0..1 arrays with every element unequal to 0, 1 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303682, there is no canonical definition to state claims against.
-/

/-! ## A303682.P6812857571856359264

`A304221(n+1)-A184159(A099594(n))`
-/

namespace A303682.P6812857571856359264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (n + 1) - A184159 (A099594 n).toNat

end

end A303682.P6812857571856359264

/-! ## A303682.P15116498013135571008

`A304221(n+1)-A163510(A157273(n))`
-/

namespace A303682.P15116498013135571008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (n + 1) - A163510 (A157273 n).toNat

end

end A303682.P15116498013135571008

/-! ## A303682.P17566840692222355605

`A304133(n+1)-A065040(A296548(n))`
-/

namespace A303682.P17566840692222355605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (n + 1) - A065040 (A296548 n).toNat

end

end A303682.P17566840692222355605

/-! ## A303682.P5153271785115877772

`A304221(n+1)-A178498(A255256(n))`
-/

namespace A303682.P5153271785115877772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (n + 1) - A178498 (A255256 n).toNat

end

end A303682.P5153271785115877772

/-! ## A303682.P13812404182028674369

`A304133(n+1)%A060835(n+2)`
-/

namespace A303682.P13812404182028674369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304133 (n + 1)) (A060835 (n + 2))

end

end A303682.P13812404182028674369

/-!
# A303683: Number of n X n 0..1 arrays with every element unequal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303683, there is no canonical definition to state claims against.
-/

/-! ## A303683.P11250951768608861992

`A303690(∑[4*n]+1)`
-/

namespace A303683.P11250951768608861992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303683.P11250951768608861992

/-! ## A303683.P2122569643254404467

`A303690(A001844(n))+char[12]`
-/

namespace A303683.P2122569643254404467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303683.P2122569643254404467

/-! ## A303683.P14473602522646425718

`A036225(n)*A303690(A001844(n))`
-/

namespace A303683.P14473602522646425718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A303690 (A001844 n).toNat

end

end A303683.P14473602522646425718

/-! ## A303683.P11531456185257811592

`A047996(n)*A303690(A001844(n))`
-/

namespace A303683.P11531456185257811592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n * A303690 (A001844 n).toNat

end

end A303683.P11531456185257811592

/-! ## A303683.P9183429938664655346

`A057427(n)*A303690(A001844(n))`
-/

namespace A303683.P9183429938664655346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A303690 (A001844 n).toNat

end

end A303683.P9183429938664655346

/-!
# A303684: Number of nX2 0..1 arrays with every element unequal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303684, the canonical program `A303684.P14001714611229301896` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303684 has offset 1).

The definition of A303684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303684.P14001714611229301896

`3*a(n-1)+a(n-2)+2*a(n-3)-2*a(n-4)-4*a(n-5)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=18, a(4)=61, a(5)=209`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303684

/-- `3*a(n-1)+a(n-2)+2*a(n-3)-2*a(n-4)-4*a(n-5)` -/
def P14001714611229301896.Spec : Prop :=
  ∀ n, P14001714611229301896.a n = A303684 (n + 1)

theorem P14001714611229301896.correct : P14001714611229301896.Spec := by
  intro n
  simp only [A303684, Nat.add_sub_cancel]

end A303684

/-! ## A303684.P13709104058263191095

`A303690(∑[n+1]+2)`
-/

namespace A303684.P13709104058263191095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A303684.P13709104058263191095

namespace A303684

/-- `A303690(∑[n+1]+2)` -/
def P13709104058263191095.Spec : Prop :=
  ∀ n, P13709104058263191095.a n = A303684 (n + 1)

end A303684

/-! ## A303684.P8283053172780653678

`record[A303690(A091995(n+1))]`
-/

namespace A303684.P8283053172780653678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A091995 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303684.P8283053172780653678

namespace A303684

/-- `record[A303690(A091995(n+1))]` -/
def P8283053172780653678.Spec : Prop :=
  ∀ n, P8283053172780653678.a n = A303684 (n + 1)

end A303684

/-! ## A303684.P2959579796693000807

`record[A303690(A252752(n+1))]`
-/

namespace A303684.P2959579796693000807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A252752 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303684.P2959579796693000807

namespace A303684

/-- `record[A303690(A252752(n+1))]` -/
def P2959579796693000807.Spec : Prop :=
  ∀ n, P2959579796693000807.a n = A303684 (n + 1)

end A303684

/-! ## A303684.P1704016969502288310

`record[A303690(n+1)/A047996(n)]`
-/

namespace A303684.P1704016969502288310
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303690 (n + 1) : ℚ) / (A047996 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303684.P1704016969502288310

namespace A303684

/-- `record[A303690(n+1)/A047996(n)]` -/
def P1704016969502288310.Spec : Prop :=
  ∀ n, P1704016969502288310.a n = (A303684 (n + 1) : ℚ)

end A303684

/-!
# A303685: Number of nX3 0..1 arrays with every element unequal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303685, there is no canonical definition to state claims against.
-/

/-! ## A303685.P14979408090815875035

`A303690(∑[n+2]+4)`
-/

namespace A303685.P14979408090815875035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303685.P14979408090815875035

/-! ## A303685.P17899540274940491231

`ceil(acot(n))*A303690(A167614(n+1))`
-/

namespace A303685.P17899540274940491231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A303690 (A167614 (n + 1)).toNat

end

end A303685.P17899540274940491231

/-! ## A303685.P2236494110626586922

`or(char[1], A303690(A000096(n+1)+4))`
-/

namespace A303685.P2236494110626586922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303690 (A000096 (n + 1) + 4).toNat)

end

end A303685.P2236494110626586922

/-! ## A303685.P4426195014981152120

`A303690(A167614(n+1))+A025439(n)`
-/

namespace A303685.P4426195014981152120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A167614 (n + 1)).toNat + A025439 n

end

end A303685.P4426195014981152120

/-! ## A303685.P7898504375310885045

`A303690(A167614(n+1))+A025443(n)`
-/

namespace A303685.P7898504375310885045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A167614 (n + 1)).toNat + A025443 n

end

end A303685.P7898504375310885045

/-!
# A303686: Number of nX4 0..1 arrays with every element unequal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303686, there is no canonical definition to state claims against.
-/

/-! ## A303686.P14204327393516502298

`A303690(∑[n+3]+7)`
-/

namespace A303686.P14204327393516502298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A303686.P14204327393516502298

/-! ## A303686.P4015318941756907061

`A303690(A055999(n)+10)+char[22]`
-/

namespace A303686.P4015318941756907061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303686.P4015318941756907061

/-! ## A303686.P11101428360554944288

`A303690(A052905(n)+9)+char[30]`
-/

namespace A303686.P11101428360554944288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303686.P11101428360554944288

/-! ## A303686.P6415492998884668951

`A303690(A000217(n+3)+4)+char[21]`
-/

namespace A303686.P6415492998884668951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303686.P6415492998884668951

/-! ## A303686.P12888920192151374977

`gcd(7, A007318(n))*A303690(A052905(n)+9)`
-/

namespace A303686.P12888920192151374977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 7 (A007318 n) : ℤ) * A303690 (A052905 n + 9).toNat

end

end A303686.P12888920192151374977

/-!
# A303687: Number of nX5 0..1 arrays with every element unequal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303687, there is no canonical definition to state claims against.
-/

/-! ## A303687.P17735220181853717652

`A303690(A167499(n+3))`
-/

namespace A303687.P17735220181853717652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A167499 (n + 3)).toNat

end

end A303687.P17735220181853717652

/-! ## A303687.P2512945894767729724

`A303690(A155212(n)+13)`
-/

namespace A303687.P2512945894767729724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A155212 n + 13).toNat

end

end A303687.P2512945894767729724

/-! ## A303687.P13519707009563536737

`A303690(A056000(n)+15)`
-/

namespace A303687.P13519707009563536737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A056000 n + 15).toNat

end

end A303687.P13519707009563536737

/-! ## A303687.P14921698895762781148

`A303690(A167614(n+3)+2)`
-/

namespace A303687.P14921698895762781148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A167614 (n + 3) + 2).toNat

end

end A303687.P14921698895762781148

/-! ## A303687.P12941309527193694115

`A303690(A000124(n+4)+4)`
-/

namespace A303687.P12941309527193694115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A000124 (n + 4) + 4).toNat

end

end A303687.P12941309527193694115

/-!
# A303688: Number of nX6 0..1 arrays with every element unequal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303688, there is no canonical definition to state claims against.
-/

/-! ## A303688.P11972949163619277947

`A303690(A056115(n)+21)`
-/

namespace A303688.P11972949163619277947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A056115 n + 21).toNat

end

end A303688.P11972949163619277947

/-! ## A303688.P13343550180108389663

`A303690(A167499(n+4)+1)`
-/

namespace A303688.P13343550180108389663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A167499 (n + 4) + 1).toNat

end

end A303688.P13343550180108389663

/-! ## A303688.P13981671987147498903

`A303690(A000124(n+5)+5)`
-/

namespace A303688.P13981671987147498903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A000124 (n + 5) + 5).toNat

end

end A303688.P13981671987147498903

/-! ## A303688.P17214600565040795759

`A303690(A134869(n+5)+5)`
-/

namespace A303688.P17214600565040795759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A134869 (n + 5) + 5).toNat

end

end A303688.P17214600565040795759

/-! ## A303688.P8055260695095919174

`A303690(A000096(n+4)+7)`
-/

namespace A303688.P8055260695095919174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A000096 (n + 4) + 7).toNat

end

end A303688.P8055260695095919174

/-!
# A303689: Number of nX7 0..1 arrays with every element unequal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303689, there is no canonical definition to state claims against.
-/

/-! ## A303689.P13885394764173437930

`A303690(A167487(n+5))`
-/

namespace A303689.P13885394764173437930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A167487 (n + 5)).toNat

end

end A303689.P13885394764173437930

/-! ## A303689.P6725492175292234336

`A303690(A056119(n)+28)`
-/

namespace A303689.P6725492175292234336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A056119 n + 28).toNat

end

end A303689.P6725492175292234336

/-! ## A303689.P14902748092324385921

`A303690(A000124(n+6)+6)`
-/

namespace A303689.P14902748092324385921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A000124 (n + 6) + 6).toNat

end

end A303689.P14902748092324385921

/-! ## A303689.P16259014318999328282

`A303690(A000096(n+5)+8)`
-/

namespace A303689.P16259014318999328282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A000096 (n + 5) + 8).toNat

end

end A303689.P16259014318999328282

/-! ## A303689.P6273881574840878832

`A303690(A000217(n+6)+7)`
-/

namespace A303689.P6273881574840878832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A000217 (n + 6) + 7).toNat

end

end A303689.P6273881574840878832

/-!
# A303690: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303690, there is no canonical definition to state claims against.
-/

/-! ## A303690.P4637914114478049217

`A304767(n+1)%A055187(A080014(n))`
-/

namespace A303690.P4637914114478049217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304767 (n + 1)) (A055187 (A080014 n).toNat)

end

end A303690.P4637914114478049217

/-! ## A303690.P15832248418783377370

`A304065(n+1)%A246202(A301332(n))`
-/

namespace A303690.P15832248418783377370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304065 (n + 1)) (A246202 (A301332 n).toNat)

end

end A303690.P15832248418783377370

/-! ## A303690.P16453695722343869960

`A305022(n+1)%A246202(A301332(n))`
-/

namespace A303690.P16453695722343869960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305022 (n + 1)) (A246202 (A301332 n).toNat)

end

end A303690.P16453695722343869960

/-! ## A303690.P9933143783469994615

`A316686(n+1)%A246202(A301332(n))`
-/

namespace A303690.P9933143783469994615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316686 (n + 1)) (A246202 (A301332 n).toNat)

end

end A303690.P9933143783469994615

/-!
# A303691: a(n) is the number of 3-smooth numbers k such that prime(n)-k is also a prime number, where prime(n) stands for the n-th prime.

The programs for A303691, there is no canonical definition to state claims against.
-/

/-! ## A303691.P609588364533588899

`A081308(Δ[A007504(n)])`
-/

namespace A303691.P609588364533588899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (f1 (n + 1) - f1 n).toNat

end

end A303691.P609588364533588899

/-! ## A303691.P9372600459930438230

`A081308(p?[A130008(n)])`
-/

namespace A303691.P9372600459930438230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A303691.P9372600459930438230

/-! ## A303691.P1848268960485692361

`A081308(A000040(n+1))`
-/

namespace A303691.P1848268960485692361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (A000040 (n + 1)).toNat

end

end A303691.P1848268960485692361

/-! ## A303691.P12108902219198398993

`A081308(A006005(n+1))`
-/

namespace A303691.P12108902219198398993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (A006005 (n + 1)).toNat

end

end A303691.P12108902219198398993

/-! ## A303691.P17533441626575230245

`A081308(A008578(n+2))`
-/

namespace A303691.P17533441626575230245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (A008578 (n + 2)).toNat

end

end A303691.P17533441626575230245

/-! ## A303691.P15824449246116145919

`A081308(A075643(n+2))`
-/

namespace A303691.P15824449246116145919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (A075643 (n + 2)).toNat

end

end A303691.P15824449246116145919

/-! ## A303691.P3692054317993660589

`A081308(A182986(n+2))`
-/

namespace A303691.P3692054317993660589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (A182986 (n + 2)).toNat

end

end A303691.P3692054317993660589

/-! ## A303691.P9241901273818136681

`A081308(A324050(n+2))`
-/

namespace A303691.P9241901273818136681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (A324050 (n + 2)).toNat

end

end A303691.P9241901273818136681

/-! ## A303691.P5921168673458882448

`A081308(record[A006530(n+2)])`
-/

namespace A303691.P5921168673458882448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A303691.P5921168673458882448

/-!
# A303692: a(n) = n^2*(2*n - 3 - (-1)^n)/4.

The programs for A303692, the canonical program `A303692.P9215152877386344423` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303692 has offset 1).

The definition of A303692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303692.P9215152877386344423

`(n+1)²*floor(n/2)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303692

/-- `(n+1)²*floor(n/2)` -/
def P9215152877386344423.Spec : Prop :=
  ∀ n, P9215152877386344423.a n = A303692 (n + 1)

theorem P9215152877386344423.correct : P9215152877386344423.Spec := by
  intro n
  simp only [A303692, Nat.add_sub_cancel]

end A303692

/-! ## A303692.P17737598551911637940

`(n+1)²*(2*(n+1)-3-(-1)^(n+1))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A303692.P17737598551911637940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) * ((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) : ℚ) / 4

end

end A303692.P17737598551911637940

namespace A303692

/-- `(n+1)²*(2*(n+1)-3-(-1)^(n+1))/4` -/
def P17737598551911637940.Spec : Prop :=
  ∀ n, P17737598551911637940.a n = (A303692 (n + 1) : ℚ)

end A303692

/-! ## A303692.P91895078362010369

`floor(floor(n/2)/acot((n+1)²))`
-/

namespace A303692.P91895078362010369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 2⌋ : ℝ) / SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ)⌋

end

end A303692.P91895078362010369

namespace A303692

/-- `floor(floor(n/2)/acot((n+1)²))` -/
def P91895078362010369.Spec : Prop :=
  ∀ n, P91895078362010369.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P4432858894939653929

`floor((n+1)²*∑[1-a(n-1)])` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A303692.P4432858894939653929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303692.P4432858894939653929

namespace A303692

/-- `floor((n+1)²*∑[1-a(n-1)])` -/
def P4432858894939653929.Spec : Prop :=
  ∀ n, P4432858894939653929.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P14568598125934315224

`lcm(n+1, floor(n/2)*∑[2*n+1])`
-/

namespace A303692.P14568598125934315224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (⌊(n : ℚ) / 2⌋ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A303692.P14568598125934315224

namespace A303692

/-- `lcm(n+1, floor(n/2)*∑[2*n+1])` -/
def P14568598125934315224.Spec : Prop :=
  ∀ n, (P14568598125934315224.a n : ℤ) = A303692 (n + 1)

end A303692

/-! ## A303692.P2444283970894427396

`A130656(n+1)-(n+1)²`
-/

namespace A303692.P2444283970894427396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130656 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A303692.P2444283970894427396

namespace A303692

/-- `A130656(n+1)-(n+1)²` -/
def P2444283970894427396.Spec : Prop :=
  ∀ n, P2444283970894427396.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P14303035848240983425

`(n+1)²*A008619(n)-(n+1)²`
-/

namespace A303692.P14303035848240983425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A008619 n - ((n + 1) ^ 2 : ℤ)

end

end A303692.P14303035848240983425

namespace A303692

/-- `(n+1)²*A008619(n)-(n+1)²` -/
def P14303035848240983425.Spec : Prop :=
  ∀ n, P14303035848240983425.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P2338850156087039828

`(n+1)²*A110654(n+1)-(n+1)²`
-/

namespace A303692.P2338850156087039828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A110654 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A303692.P2338850156087039828

namespace A303692

/-- `(n+1)²*A110654(n+1)-(n+1)²` -/
def P2338850156087039828.Spec : Prop :=
  ∀ n, P2338850156087039828.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P9486880617174071246

`A083392(n)+A011934(n)`
-/

namespace A303692.P9486880617174071246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 n + A011934 n

end

end A303692.P9486880617174071246

namespace A303692

/-- `A083392(n)+A011934(n)` -/
def P9486880617174071246.Spec : Prop :=
  ∀ n, P9486880617174071246.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P7963923325434916748

`A210378(n)%A006000(n)`
-/

namespace A303692.P7963923325434916748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210378 n) (A006000 n)

end

end A303692.P7963923325434916748

namespace A303692

/-- `A210378(n)%A006000(n)` -/
def P7963923325434916748.Spec : Prop :=
  ∀ n, P7963923325434916748.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P15604617672092958103

`A074149(n+1)-A045896(n)`
-/

namespace A303692.P15604617672092958103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 1) - A045896 n

end

end A303692.P15604617672092958103

namespace A303692

/-- `A074149(n+1)-A045896(n)` -/
def P15604617672092958103.Spec : Prop :=
  ∀ n, P15604617672092958103.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P17379324965309710857

`A210378(n)-A092365(n+1)`
-/

namespace A303692.P17379324965309710857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210378 n - A092365 (n + 1)

end

end A303692.P17379324965309710857

namespace A303692

/-- `A210378(n)-A092365(n+1)` -/
def P17379324965309710857.Spec : Prop :=
  ∀ n, P17379324965309710857.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P3605480148150214115

`A130472(n)+n²*A008619(n)`
-/

namespace A303692.P3605480148150214115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + (n ^ 2 : ℤ) * A008619 n

end

end A303692.P3605480148150214115

namespace A303692

/-- `A130472(n)+n²*A008619(n)` -/
def P3605480148150214115.Spec : Prop :=
  ∀ n, P3605480148150214115.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P4608109540016396453

`A024598(n+1)-A081498(n+1)`
-/

namespace A303692.P4608109540016396453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024598 (n + 1) - A081498 (n + 1)

end

end A303692.P4608109540016396453

namespace A303692

/-- `A024598(n+1)-A081498(n+1)` -/
def P4608109540016396453.Spec : Prop :=
  ∀ n, P4608109540016396453.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P1272835943726981438

`A092364(n+1)-A177755(n+1)`
-/

namespace A303692.P1272835943726981438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092364 (n + 1) - A177755 (n + 1)

end

end A303692.P1272835943726981438

namespace A303692

/-- `A092364(n+1)-A177755(n+1)` -/
def P1272835943726981438.Spec : Prop :=
  ∀ n, P1272835943726981438.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P8041481061187517294

`A317614(n+1)-A133092(n+1)`
-/

namespace A303692.P8041481061187517294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317614 (n + 1) - A133092 (n + 1)

end

end A303692.P8041481061187517294

namespace A303692

/-- `A317614(n+1)-A133092(n+1)` -/
def P8041481061187517294.Spec : Prop :=
  ∀ n, P8041481061187517294.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P7860795160881956421

`(n+1)²*A001651(n+1)-A000578(n+1)`
-/

namespace A303692.P7860795160881956421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A001651 (n + 1) - A000578 (n + 1)

end

end A303692.P7860795160881956421

namespace A303692

/-- `(n+1)²*A001651(n+1)-A000578(n+1)` -/
def P7860795160881956421.Spec : Prop :=
  ∀ n, P7860795160881956421.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P826376716628313210

`A004526(n)+A004526(n)*A005563(n)`
-/

namespace A303692.P826376716628313210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + A004526 n * A005563 n

end

end A303692.P826376716628313210

namespace A303692

/-- `A004526(n)+A004526(n)*A005563(n)` -/
def P826376716628313210.Spec : Prop :=
  ∀ n, P826376716628313210.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P2730880570877846767

`A002522(n+1)*A004526(n)-A004526(n)`
-/

namespace A303692.P2730880570877846767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1) * A004526 n - A004526 n

end

end A303692.P2730880570877846767

namespace A303692

/-- `A002522(n+1)*A004526(n)-A004526(n)` -/
def P2730880570877846767.Spec : Prop :=
  ∀ n, P2730880570877846767.a n = A303692 (n + 1)

end A303692

/-!
# A303694: Array read by antidiagonals: T(n,k) is the number of noncrossing partitions up to rotation composed of n blocks of size k.

The programs for A303694, there is no canonical definition to state claims against.
-/

/-! ## A303694.P5654856060387806591

`2*A303929(n)-A369929(n)`
-/

namespace A303694.P5654856060387806591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303929 n - A369929 n

end

end A303694.P5654856060387806591

/-! ## A303694.P4362548713031176883

`A285481(A341033(n))+A000122(A224880(3*(n+1)))`
-/

namespace A303694.P4362548713031176883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285481 (A341033 n).toNat + A000122 (A224880 (3 * (n + 1))).toNat

end

end A303694.P4362548713031176883

/-! ## A303694.P48968785848452462

`A028242(A295679(A046063(n+1))%A295679(n))`
-/

namespace A303694.P48968785848452462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.tmod (A295679 (A046063 (n + 1)).toNat) (A295679 n)).toNat

end

end A303694.P48968785848452462

/-!
# A303695: a(n) is the sum of divisors d of n such that bigomega(d) is a divisor of bigomega(n) where bigomega(x) is A001222(x), the number of prime divisors of x counted with multiplicity.

The programs for A303695, there is no canonical definition to state claims against.
-/

/-! ## A303695.P1682050750044686936

`(∑{p}[n+1, #]+1+n)%A336493(3*n+1)-∑{p}[n+1, C(#, n)]`
-/

namespace A303695.P1682050750044686936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ p ∈ Nat.primeFactors (f1 n), p + 1 + n : ℕ) : ℤ) (A336493 (3 * n + 1)) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n : ℕ) : ℤ)

end

end A303695.P1682050750044686936

/-! ## A303695.P9281513885944557764

`A105221(A187829(n+1))+1+n`
-/

namespace A303695.P9281513885944557764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105221 (A187829 (n + 1)).toNat + 1 + (n : ℤ)

end

end A303695.P9281513885944557764

/-! ## A303695.P5842357842615994861

`A001222(A020714(n))+∑{p}[n+1, #%(n+1)]`
-/

namespace A303695.P5842357842615994861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020714 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), p % (n + 1) : ℕ) : ℤ)

end

end A303695.P5842357842615994861

/-! ## A303695.P1957137768277409075

`A331855(A000079(n))+A105221(n+1)`
-/

namespace A303695.P1957137768277409075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331855 (A000079 n).toNat + A105221 (n + 1)

end

end A303695.P1957137768277409075

/-! ## A303695.P840917445721727644

`A120230(A120230(n+1))+A105221(n+1)`
-/

namespace A303695.P840917445721727644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120230 (A120230 (n + 1)).toNat + A105221 (n + 1)

end

end A303695.P840917445721727644

/-!
# A303696: Number A(n,k) of binary words of length n with k times as many occurrences of subword 101 as occurrences of subword 010; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A303696, there is no canonical definition to state claims against.
-/

/-! ## A303696.P15591096071294832253

`A260998(or(A152036(n), A166350(n+1)))`
-/

namespace A303696.P15591096071294832253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260998 (Int.lor (A152036 n) (A166350 (n + 1))).toNat

end

end A303696.P15591096071294832253

/-! ## A303696.P7203415394179081664

`A140747(A098012(n+1))`
-/

namespace A303696.P7203415394179081664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140747 (A098012 (n + 1)).toNat

end

end A303696.P7203415394179081664

/-! ## A303696.P930079443256961447

`A068911(A002262(n))+A055641(A026691(n))`
-/

namespace A303696.P930079443256961447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (A002262 n).toNat + A055641 (A026691 n).toNat

end

end A303696.P930079443256961447

/-! ## A303696.P101130704974037997

`A037915(A059268(n))-A025469(A102125(n))`
-/

namespace A303696.P101130704974037997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A059268 n).toNat - A025469 (A102125 n).toNat

end

end A303696.P101130704974037997

/-! ## A303696.P12755888711052183928

`A282691(A347221(n))`
-/

namespace A303696.P12755888711052183928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282691 (A347221 n).toNat

end

end A303696.P12755888711052183928

/-!
# A303697: Number T(n,k) of permutations p of [n] whose difference between sum of up-jumps and sum of down-jumps equals k; triangle T(n,k), n>=0, min(0,1-n)<=k<=max(0,n-1), read by rows.

The programs for A303697, there is no canonical definition to state claims against.
-/

/-! ## A303697.P11978454103398300925

`and(A134827(n+9)+A117506(n+2), A117506(n+2))`
-/

namespace A303697.P11978454103398300925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134827 (n + 9) + A117506 (n + 2)) (A117506 (n + 2))

end

end A303697.P11978454103398300925

/-! ## A303697.P9374027470832692722

`A253830(A007090(n)-A000720(n+1))`
-/

namespace A303697.P9374027470832692722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253830 (A007090 n - A000720 (n + 1)).toNat

end

end A303697.P9374027470832692722

/-!
# A303699: Triangle read by rows in which row n gives coefficients of polynomial f_n(x) of degree less than n that satisfies Integral_{x=0..1} g(t - x) * f_n(x) dx = g(t) for any polynomial g(x) of degree less than n.

The programs for A303699, there is no canonical definition to state claims against.
-/

/-! ## A303699.P277849864378155762

`∑[A010054(n)]*A303700(n)`
-/

namespace A303699.P277849864378155762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A303700 n

end

end A303699.P277849864378155762

/-! ## A303699.P2668961321402239303

`A002024(n+1)*A303700(n)`
-/

namespace A303699.P2668961321402239303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A303700 n

end

end A303699.P2668961321402239303

/-! ## A303699.P5465008141011626645

`(A003056(n)+1)*A303700(n)`
-/

namespace A303699.P5465008141011626645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A303700 n

end

end A303699.P5465008141011626645

/-! ## A303699.P9606544648866820832

`(A133196(n+1)-2)*A303700(n)`
-/

namespace A303699.P9606544648866820832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133196 (n + 1) - 2) * A303700 n

end

end A303699.P9606544648866820832

/-! ## A303699.P15856534856401377850

`A303700(A057944(n))*A303700(n)`
-/

namespace A303699.P15856534856401377850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303700 (A057944 n).toNat * A303700 n

end

end A303699.P15856534856401377850

/-! ## A303699.P15760125865431868392

`A051125(A127739(n+1))*A303700(n)`
-/

namespace A303699.P15760125865431868392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (A127739 (n + 1)).toNat * A303700 n

end

end A303699.P15760125865431868392

