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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

The programs for A303602, the canonical program `A303602.P9914377257221953862` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303602 has offset 0).

The definition of A303602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, #*C(2*n+1, #)]` (program `A303602.P9914377257221953862`, by `A303602.P9914377257221953862.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A303602.P9914377257221953862

`∑{#}[n, #*C(2*n+1, #)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A303602

/-- `∑{#}[n, #*C(2*n+1, #)]` -/
def P9914377257221953862.Spec : Prop :=
  ∀ n, (P9914377257221953862.a n : ℤ) = A303602 n

theorem P9914377257221953862.correct : P9914377257221953862.Spec := by
  intro n
  simp only [A303602]

end A303602

/-! ## A303602.P12371310164259844088

`(2*n+1)*(4^n-C(2*n, n))/2`
-/

namespace A303602.P12371310164259844088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * ((4 ^ n : ℤ) - (Nat.choose (2 * n) n : ℤ)) : ℚ) / 2

end

end A303602.P12371310164259844088

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

/-!
# A303603: a(n) is the maximum distance between primes in Goldbach partitions of 2n, or 2n if there are no Goldbach partitions of 2n.

The programs for A303603, there is no canonical definition to state claims against.
-/

/-! ## A303603.P3337430827669131978

`2*A047949(2+abs(n-1))`
-/

namespace A303603.P3337430827669131978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047949 (2 + |(n : ℤ) - 1|).toNat

end

end A303603.P3337430827669131978

/-! ## A303603.P7541488794114729776

`2*A159482(1+n)%(n+1)`
-/

namespace A303603.P7541488794114729776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A159482 (1 + n)) (n + 1 : ℤ)

end

end A303603.P7541488794114729776

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

/-! ## A303605.P9179334074646155697

`eq[A051801(n), A093578(n)]`
-/

namespace A303605.P9179334074646155697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A303605.P9179334074646155697

/-! ## A303605.P13837884437660869466

`eq[A066459(n), A093578(n)]`
-/

namespace A303605.P13837884437660869466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066459 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A303605.P13837884437660869466

/-!
# A303606: Powers of composite squarefree numbers that are not squarefree.

The programs for A303606, there is no canonical definition to state claims against.
-/

/-! ## A303606.P17795250289446276241

`sqrt(A389776(1+n))`
-/

namespace A303606.P17795250289446276241
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A389776 (1 + n) : ℝ)

end

end A303606.P17795250289446276241

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

/-! ## A303608.P7918610183919403073

`filter[A067934(n+1), A354353(#)]`
-/

namespace A303608.P7918610183919403073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A303608.P7918610183919403073

/-! ## A303608.P11764564021622216394

`filter[A067934(n+1), A380469(#)]`
-/

namespace A303608.P11764564021622216394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A303608.P11764564021622216394

/-! ## A303608.P15618041876748359669

`filter[A067934(n+1), A402589(#)]`
-/

namespace A303608.P15618041876748359669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A402589 (f1 j).toNat = 1) n)

end

end A303608.P15618041876748359669

/-! ## A303608.P5526995022659308005

`filter[A067934(n+2), A354819(#)]`
-/

namespace A303608.P5526995022659308005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A303608.P5526995022659308005

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

/-! ## A303608.P16977745763067112462

`filter[A067934(n+1), A066247(#)]`
-/

namespace A303608.P16977745763067112462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A303608.P16977745763067112462

/-! ## A303608.P2774096440541731579

`filter[A067934(n+1), A202238(#)]`
-/

namespace A303608.P2774096440541731579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A303608.P2774096440541731579

/-! ## A303608.P4938585218394023804

`filter[A067934(n+1), A323162(#)]`
-/

namespace A303608.P4938585218394023804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A303608.P4938585218394023804

/-! ## A303608.P3268368508798765579

`filter[A067934(n+2), A005171(#)]`
-/

namespace A303608.P3268368508798765579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A303608.P3268368508798765579

/-! ## A303608.P5995352835577010091

`filter[A067934(n+2), A292438(#)]`
-/

namespace A303608.P5995352835577010091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A303608.P5995352835577010091

/-!
# A303609: a(n) = 2*n^3 + 9*n^2 + 9*n.

The programs for A303609, the canonical program `A303609.P6040708624849847179` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303609 has offset 0).

The definition of A303609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^3+9*n²+9*n` (program `A303609.P6040708624849847179`, by `A303609.P6040708624849847179.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A303609.P6055657113587254545

`ogf((20x-10x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A303609.P6055657113587254545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 20, -10, 2] [1, -4, 6, -4, 1] n

end

end A303609.P6055657113587254545

namespace A303609

/-- `ogf((20x-10x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P6055657113587254545.Spec : Prop :=
  ∀ n, P6055657113587254545.a n = A303609 n

end A303609

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

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A303609

/-- `2*n^3+9*n²+9*n` -/
def P6040708624849847179.Spec : Prop :=
  ∀ n, (P6040708624849847179.a n : ℤ) = A303609 n

theorem P6040708624849847179.correct : P6040708624849847179.Spec := by
  intro n
  simp only [A303609]

end A303609

/-! ## A303609.P5340707360304872374

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=20, a(2)=70, a(3)=162`
-/

namespace A303609.P5340707360304872374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 20, 70, 162] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A303609.P5340707360304872374

namespace A303609

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5340707360304872374.Spec : Prop :=
  ∀ n, P5340707360304872374.a n = A303609 n

theorem P5340707360304872374.correct : P5340707360304872374.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A303609, Nat.add_sub_cancel, A303609.P5340707360304872374.a, A303609.P6040708624849847179.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A303609, Nat.add_sub_cancel, A303609.P5340707360304872374.a, A303609.P6040708624849847179.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A303609

/-! ## A303609.P4676332396558742570

`(C(2*n+5, 2)-1)*n`
-/

namespace A303609.P4676332396558742570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n + 5) 2 : ℤ) - 1) * (n : ℤ)

end

end A303609.P4676332396558742570

namespace A303609

/-- `(C(2*n+5, 2)-1)*n` -/
def P4676332396558742570.Spec : Prop :=
  ∀ n, P4676332396558742570.a n = A303609 n

theorem P4676332396558742570.correct : P4676332396558742570.Spec := by
  intro n
  simp only [A303609, Nat.add_sub_cancel, A303609.P4676332396558742570.a, A303609.P6040708624849847179.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A303609

/-! ## A303609.P11398716147760486073

`n*∑[4+a(n-1)]` with `a(0)=9, a(1)=11`
-/

namespace A303609.P11398716147760486073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 11] fun n f1 =>
  4 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303609.P11398716147760486073

namespace A303609

/-- `n*∑[4+a(n-1)]` -/
def P11398716147760486073.Spec : Prop :=
  ∀ n, (P11398716147760486073.a n : ℤ) = A303609 n

end A303609

/-! ## A303609.P401820107136989476

`n*∑[record[lcm(2, n)+10]-1]`
-/

namespace A303609.P401820107136989476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303609.P401820107136989476

namespace A303609

/-- `n*∑[record[lcm(2, n)+10]-1]` -/
def P401820107136989476.Spec : Prop :=
  ∀ n, P401820107136989476.a n = A303609 n

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

theorem P2547144047514949745.correct : P2547144047514949745.Spec := by
  intro n
  simp only [A303609, Nat.add_sub_cancel, A303609.P2547144047514949745.f1, A303609.P2547144047514949745.a, A303609.P6040708624849847179.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A303609

/-! ## A303609.P8981227055863727475

`n*Δ[a(n-1)+(n+2)*(2*n+1)]` with `a(0)=0`
-/

namespace A303609.P8981227055863727475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (n + 2) * (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A303609.P8981227055863727475

namespace A303609

/-- `n*Δ[a(n-1)+(n+2)*(2*n+1)]` -/
def P8981227055863727475.Spec : Prop :=
  ∀ n, P8981227055863727475.a n = A303609 n

theorem P8981227055863727475.correct : P8981227055863727475.Spec := by
  intro n
  induction n with
  | zero => simp [A303609, A303609.P8981227055863727475.f1, A303609.P8981227055863727475.a, A303609.P6040708624849847179.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A303609, Nat.add_sub_cancel, A303609.P8981227055863727475.f1, A303609.P8981227055863727475.a, A303609.P6040708624849847179.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A303609

/-! ## A303609.P10648890122701965083

`n*∑{#}[2*(n+1), #+2]`
-/

namespace A303609.P10648890122701965083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ k ∈ Finset.range (f1 n + 1), (k + 2))

end

end A303609.P10648890122701965083

namespace A303609

/-- `n*∑{#}[2*(n+1), #+2]` -/
def P10648890122701965083.Spec : Prop :=
  ∀ n, (P10648890122701965083.a n : ℤ) = A303609 n

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

/-!
# A303611: a(n) = (-1 - (-2)^(n-2)) mod 2^n.

The programs for A303611, the canonical program `A303611.P8869675668227845352` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303611 has offset 2).

The definition of A303611 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

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

/-! ## A303611.P8869675668227845352

`(2+(-1)^(n+2))*2^n-1`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A303611

/-- `(2+(-1)^(n+2))*2^n-1` -/
def P8869675668227845352.Spec : Prop :=
  ∀ n, P8869675668227845352.a n = A303611 (n + 2)

theorem P8869675668227845352.correct : P8869675668227845352.Spec := by
  intro n
  simp only [A303611, Nat.add_sub_cancel]

end A303611

/-! ## A303611.P11345780824449078480

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=2, a(1)=1, a(2)=11`
-/

namespace A303611.P11345780824449078480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 11] fun n a =>
  a (n - 1) + 4 * a (n - 2) - 4 * a (n - 3)

end

end A303611.P11345780824449078480

namespace A303611

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P11345780824449078480.Spec : Prop :=
  ∀ n, P11345780824449078480.a n = A303611 (n + 2)

theorem P11345780824449078480.correct : P11345780824449078480.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A303611, Nat.add_sub_cancel, A303611.P11345780824449078480.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A303611, Nat.add_sub_cancel, A303611.P11345780824449078480.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

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

/-! ## A303611.P449449366046876826

`3+4*a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A303611.P449449366046876826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  3 + 4 * a (n - 2)

end

end A303611.P449449366046876826

namespace A303611

/-- `3+4*a(n-2)` -/
def P449449366046876826.Spec : Prop :=
  ∀ n, (P449449366046876826.a n : ℤ) = A303611 (n + 2)

theorem P449449366046876826.correct : P449449366046876826.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A303611, Nat.add_sub_cancel, A303611.P449449366046876826.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A303611, Nat.add_sub_cancel, A303611.P449449366046876826.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

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

/-! ## A303611.P3273758132517988582

`7-4*(1-a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A303611.P3273758132517988582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  7 - 4 * (1 - a (n - 2))

end

end A303611.P3273758132517988582

namespace A303611

/-- `7-4*(1-a(n-2))` -/
def P3273758132517988582.Spec : Prop :=
  ∀ n, P3273758132517988582.a n = A303611 (n + 2)

theorem P3273758132517988582.correct : P3273758132517988582.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A303611, Nat.add_sub_cancel, A303611.P3273758132517988582.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A303611, Nat.add_sub_cancel, A303611.P3273758132517988582.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A303611

/-! ## A303611.P12762102852498982978

`a(n-2)/(1/2)²+3` with `a(0)=2, a(1)=1`
-/

namespace A303611.P12762102852498982978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2 + 3

end

end A303611.P12762102852498982978

namespace A303611

/-- `a(n-2)/(1/2)²+3` -/
def P12762102852498982978.Spec : Prop :=
  ∀ n, P12762102852498982978.a n = (A303611 (n + 2) : ℚ)

theorem P12762102852498982978.correct : P12762102852498982978.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A303611, Nat.add_sub_cancel, A303611.P12762102852498982978.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A303611, Nat.add_sub_cancel, A303611.P12762102852498982978.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A303611

/-! ## A303611.P10116888279167750856

`3-a(n-2)/(3/4-1)` with `a(0)=2, a(1)=1`
-/

namespace A303611.P10116888279167750856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  3 - a (n - 2) / ((3 : ℚ) / 4 - 1)

end

end A303611.P10116888279167750856

namespace A303611

/-- `3-a(n-2)/(3/4-1)` -/
def P10116888279167750856.Spec : Prop :=
  ∀ n, P10116888279167750856.a n = (A303611 (n + 2) : ℚ)

theorem P10116888279167750856.correct : P10116888279167750856.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A303611, Nat.add_sub_cancel, A303611.P10116888279167750856.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A303611, Nat.add_sub_cancel, A303611.P10116888279167750856.a, A303611.P8869675668227845352.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

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

/-! ## A303611.P2542066279809235928

`(A084221(n+1)-A000034(n))/A000034(n)`
-/

namespace A303611.P2542066279809235928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084221 (n + 1) - A000034 n : ℚ) / (A000034 n : ℚ)

end

end A303611.P2542066279809235928

namespace A303611

/-- `(A084221(n+1)-A000034(n))/A000034(n)` -/
def P2542066279809235928.Spec : Prop :=
  ∀ n, P2542066279809235928.a n = (A303611 (n + 2) : ℚ)

end A303611

/-! ## A303611.P2080695330141325338

`A153893(n)%A098646(n)`
-/

namespace A303611.P2080695330141325338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153893 n) (A098646 n)

end

end A303611.P2080695330141325338

namespace A303611

/-- `A153893(n)%A098646(n)` -/
def P2080695330141325338.Spec : Prop :=
  ∀ n, P2080695330141325338.a n = A303611 (n + 2)

end A303611

/-! ## A303611.P834269000299589157

`A196305(n)%A098646(n)`
-/

namespace A303611.P834269000299589157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196305 n) (A098646 n)

end

end A303611.P834269000299589157

namespace A303611

/-- `A196305(n)%A098646(n)` -/
def P834269000299589157.Spec : Prop :=
  ∀ n, P834269000299589157.a n = A303611 (n + 2)

end A303611

/-! ## A303611.P17520460086434400703

`A086225(n)%A056486(n+1)`
-/

namespace A303611.P17520460086434400703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086225 n) (A056486 (n + 1))

end

end A303611.P17520460086434400703

namespace A303611

/-- `A086225(n)%A056486(n+1)` -/
def P17520460086434400703.Spec : Prop :=
  ∀ n, P17520460086434400703.a n = A303611 (n + 2)

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

/-!
# A303623: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303623, there is no canonical definition to state claims against.
-/

/-! ## A303623.P16070686110376724354

`A303624(eq[row(n)-2, col(n)+4]+1)`
-/

namespace A303623.P16070686110376724354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1)

end

end A303623.P16070686110376724354

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

/-!
# A303629: Number of 7Xn 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303629, there is no canonical definition to state claims against.
-/

/-! ## A303629.P4901822032313381522

`A303624(∑[n+7]+21-n)`
-/

namespace A303629.P4901822032313381522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (∑ j ∈ Finset.range (n + 1), f1 j + 21 - n)

end

end A303629.P4901822032313381522

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

/-!
# A303631: Number of n X 3 0..1 arrays with every element unequal to 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A303631, the canonical program `A303631.P10673546494694736776` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303631 has offset 1).

The definition of A303631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303631.P10673546494694736776

`a(n-1)+2*a(n-2)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=0`

The canonical program, it is in `Seq.B000.C045`.
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

The programs for A303644, the canonical program `A303644.P3918621913538648642` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303644 has offset 1).

The definition of A303644 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000328, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A303644.P3918621913538648642

`A016754(n)-A000328(n+1)+4`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A303644

/-- `A016754(n)-A000328(n+1)+4` -/
def P3918621913538648642.Spec : Prop :=
  ∀ n, P3918621913538648642.a n = A303644 (n + 1)

theorem P3918621913538648642.correct : P3918621913538648642.Spec := by
  intro n
  simp only [A303644, Nat.add_sub_cancel]

end A303644

/-! ## A303644.P13922513323804947386

`4*(n²-A001182(n+1))`
-/

namespace A303644.P13922513323804947386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n ^ 2 : ℤ) - A001182 (n + 1))

end

end A303644.P13922513323804947386

namespace A303644

/-- `4*(n²-A001182(n+1))` -/
def P13922513323804947386.Spec : Prop :=
  ∀ n, P13922513323804947386.a n = A303644 (n + 1)

end A303644

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

namespace A303644

/-- `∑[(8*n)%A036693(n+1)]` -/
def P1239974834445389644.Spec : Prop :=
  ∀ n, P1239974834445389644.a n = A303644 (n + 1)

end A303644

/-! ## A303644.P3715758490338534553

`(2*n)²-A261849(2*(n+1))`
-/

namespace A303644.P3715758490338534553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - A261849 (2 * (n + 1))

end

end A303644.P3715758490338534553

namespace A303644

/-- `(2*n)²-A261849(2*(n+1))` -/
def P3715758490338534553.Spec : Prop :=
  ∀ n, P3715758490338534553.a n = A303644 (n + 1)

end A303644

/-! ## A303644.P3948846870110607716

`A078370(n)-A000328(n+1)`
-/

namespace A303644.P3948846870110607716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 n - A000328 (n + 1)

end

end A303644.P3948846870110607716

namespace A303644

/-- `A078370(n)-A000328(n+1)` -/
def P3948846870110607716.Spec : Prop :=
  ∀ n, P3948846870110607716.a n = A303644 (n + 1)

theorem P3948846870110607716.correct : P3948846870110607716.Spec := by
  intro n
  simp only [A303644, Nat.add_sub_cancel, A303644.P3948846870110607716.a, A303644.P3918621913538648642.a, A000328, A000328.P3563522184609365216.a, A016754, A016754.P2987865549988322084.a, A078370, A078370.P14272331962349434448.a, A057655, A057655.P8142405424443184292.a, A014198, A014198.P2354480518814049901.a, A105673, A105673.P14538287794614071707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A303644

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

namespace A303644

/-- `∑[A008590(n)%Δ[A000328(n)]]` -/
def P6165212031948595139.Spec : Prop :=
  ∀ n, P6165212031948595139.a n = A303644 (n + 1)

end A303644

/-! ## A303644.P10825667638626092984

`A016825(n²-A001182(n+1))-2`
-/

namespace A303644.P10825667638626092984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 ((n ^ 2 : ℤ) - A001182 (n + 1)).toNat - 2

end

end A303644.P10825667638626092984

namespace A303644

/-- `A016825(n²-A001182(n+1))-2` -/
def P10825667638626092984.Spec : Prop :=
  ∀ n, P10825667638626092984.a n = A303644 (n + 1)

end A303644

/-! ## A303644.P5308421976499221937

`A008586(n²-A001182(n+1))`
-/

namespace A303644.P5308421976499221937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 ((n ^ 2 : ℤ) - A001182 (n + 1)).toNat

end

end A303644.P5308421976499221937

namespace A303644

/-- `A008586(n²-A001182(n+1))` -/
def P5308421976499221937.Spec : Prop :=
  ∀ n, P5308421976499221937.a n = A303644 (n + 1)

end A303644

/-! ## A303644.P7522020712050159138

`A016825(n²)-A016825(A001182(n+1))`
-/

namespace A303644.P7522020712050159138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (n ^ 2) - A016825 (A001182 (n + 1)).toNat

end

end A303644.P7522020712050159138

namespace A303644

/-- `A016825(n²)-A016825(A001182(n+1))` -/
def P7522020712050159138.Spec : Prop :=
  ∀ n, P7522020712050159138.a n = A303644 (n + 1)

end A303644

/-! ## A303644.P12043974699789550417

`n*A008586(n)-A008586(A001182(n+1))`
-/

namespace A303644.P12043974699789550417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008586 n - A008586 (A001182 (n + 1)).toNat

end

end A303644.P12043974699789550417

namespace A303644

/-- `n*A008586(n)-A008586(A001182(n+1))` -/
def P12043974699789550417.Spec : Prop :=
  ∀ n, P12043974699789550417.a n = A303644 (n + 1)

end A303644

/-!
# A303647: a(n) = ceiling(a(n-1)/(2^(1/3)-1)+1), a(1)=1.

The programs for A303647, the canonical program `A303647.P12589980317728805160` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303647 has offset 1).

The definition of A303647 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(a(n-1)/(2^(1/3)-1)+1)` (program `A303647.P12589980317728805160`, by `A303647.P12589980317728805160.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A303647.P12589980317728805160

`ceil(a(n-1)/(2^(1/3)-1)+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C045`.
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

The programs for A303649, the canonical program `A303649.P4617514901053789601` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303649 has offset 0).

The definition of A303649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303649.P4617514901053789601

`ogf((x^3+2x^4-2x^5+x^7)/(1-4x+4x^2+4x^3-10x^4+4x^5+4x^6-4x^7+x^8))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A303649

/-- `ogf((x^3+2x^4-2x^5+x^7)/(1-4x+4x^2+4x^3-10x^4+4x^5+4x^6-4x^7+x^8))` -/
def P4617514901053789601.Spec : Prop :=
  ∀ n, P4617514901053789601.a n = A303649 n

theorem P4617514901053789601.correct : P4617514901053789601.Spec := by
  intro n
  simp only [A303649]

end A303649

/-! ## A303649.P3768676354070009238

`∑[∑[A280186(n)]]+C(n, 3)`
-/

namespace A303649.P3768676354070009238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280186 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 3 : ℤ)

end

end A303649.P3768676354070009238

namespace A303649

/-- `∑[∑[A280186(n)]]+C(n, 3)` -/
def P3768676354070009238.Spec : Prop :=
  ∀ n, P3768676354070009238.a n = A303649 n

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

/-! ## A303649.P16778020807545090328

`∑[∑[A289207(A280186(n)+n)]]`
-/

namespace A303649.P16778020807545090328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A280186 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303649.P16778020807545090328

namespace A303649

/-- `∑[∑[A289207(A280186(n)+n)]]` -/
def P16778020807545090328.Spec : Prop :=
  ∀ n, P16778020807545090328.a n = A303649 n

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

/-! ## A303651.P11402590715433563714

`A303650((1+n)²)`
-/

namespace A303651.P11402590715433563714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303650 ((1 + n) ^ 2)

end

end A303651.P11402590715433563714

/-! ## A303651.P4565312977848540089

`record[A303650((row(n)-col(n))²)]`
-/

namespace A303651.P4565312977848540089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303650 (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303651.P4565312977848540089

/-! ## A303651.P4907176656276602972

`record[A303650((row(n)^(col(n)%2))²)]`
-/

namespace A303651.P4907176656276602972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303650 ((SequenceMachineLib.triRow n ^ (SequenceMachineLib.triCol n % 2)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303651.P4907176656276602972

/-! ## A303651.P4556189606127851355

`record[A303650(((row(n)-2)^(n%2))²)]`
-/

namespace A303651.P4556189606127851355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303650 ((((SequenceMachineLib.triRow n : ℤ) - 2) ^ (n % 2)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303651.P4556189606127851355

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

/-! ## A303656.P11783135912436534951

`A355523(A121593(n+1))`
-/

namespace A303656.P11783135912436534951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355523 (A121593 (n + 1)).toNat

end

end A303656.P11783135912436534951

/-! ## A303656.P13281187588096320769

`A076398(A289846(n))`
-/

namespace A303656.P13281187588096320769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076398 (A289846 n).toNat

end

end A303656.P13281187588096320769

/-! ## A303656.P5742342629003218332

`A095407(A285827(n))`
-/

namespace A303656.P5742342629003218332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (A285827 n).toNat

end

end A303656.P5742342629003218332

/-! ## A303656.P8053116450317860231

`A211667(A288294(n))`
-/

namespace A303656.P8053116450317860231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211667 (A288294 n).toNat

end

end A303656.P8053116450317860231

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

/-! ## A303661.P2577750028798981844

`∩[A072777(n+1), A402531(n+1)]`
-/

namespace A303661.P2577750028798981844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303661.P2577750028798981844

/-! ## A303661.P12146343194070735295

`∩[A303606(n+1), A402531(n+1)]`
-/

namespace A303661.P12146343194070735295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303661.P12146343194070735295

/-! ## A303661.P16113337029229839455

`∩[A076292(n+1), A402531(n+1)]`
-/

namespace A303661.P16113337029229839455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303661.P16113337029229839455

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

/-! ## A303661.P16256724506250050123

`∩[A076292(1+n), A355462(n+1)]`
-/

namespace A303661.P16256724506250050123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303661.P16256724506250050123

/-! ## A303661.P1822492685426279041

`∩[A303606(1+n), A355462(n+1)]`
-/

namespace A303661.P1822492685426279041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303661.P1822492685426279041

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

/-! ## A303661.P15788932440132379755

`filter[A320894(n+1), A354353(#)]`
-/

namespace A303661.P15788932440132379755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A303661.P15788932440132379755

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

/-! ## A303661.P8102288868274305162

`filter[A402531(n+1), A354353(#)]`
-/

namespace A303661.P8102288868274305162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A303661.P8102288868274305162

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

/-! ## A303664.P450355596157170950

`∑[1+A216695(n)]`
-/

namespace A303664.P450355596157170950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A216695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303664.P450355596157170950

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

/-! ## A303665.P16822027979720358222

`A078465(n+1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A303665.P16822027979720358222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A078465 (n + 1) + a (n - 2)

end

end A303665.P16822027979720358222

/-! ## A303665.P7914322791852081365

`∑[A276420(2*n)-a(n-1)]` with `a(0)=1`
-/

namespace A303665.P7914322791852081365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A276420 (2 * n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303665.P7914322791852081365

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

/-! ## A303665.P11565808625978029419

`A023360(n)+a(A163327(A163327(n))-1)` with `a(0)=1`
-/

namespace A303665.P11565808625978029419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023360 n + a (A163327 (A163327 n).toNat - 1).toNat

end

end A303665.P11565808625978029419

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

/-! ## A303666.P9931849035208587453

`∑[A357534(n)+∏{p}[n, val(#, 2)]]`
-/

namespace A303666.P9931849035208587453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357534 n + ((∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303666.P9931849035208587453

/-! ## A303666.P13871210602486926237

`∑[A339427(n)+A339426(n)]`
-/

namespace A303666.P13871210602486926237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339427 n + A339426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303666.P13871210602486926237

/-! ## A303666.P12775958506385481100

`A023359(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A303666.P12775958506385481100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023359 n + a (A023443 n).toNat

end

end A303666.P12775958506385481100

/-! ## A303666.P9958285043123207935

`∑[A357534(n)+A255738(n+1)]`
-/

namespace A303666.P9958285043123207935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357534 n + A255738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303666.P9958285043123207935

/-! ## A303666.P265541529618537156

`∑[A339422(n)+2*A339427(n)]`
-/

namespace A303666.P265541529618537156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339422 n + 2 * A339427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303666.P265541529618537156

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

/-! ## A303667.P12756549015060082478

`∑[A339419(n)+A339418(n)]`
-/

namespace A303667.P12756549015060082478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339419 n + A339418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303667.P12756549015060082478

/-! ## A303667.P2886035949835049565

`A006456(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A303667.P2886035949835049565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006456 n + a (A023443 n).toNat

end

end A303667.P2886035949835049565

/-! ## A303667.P10750298774342612708

`∑[A317665(n)+2*A339419(n)]`
-/

namespace A303667.P10750298774342612708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317665 n + 2 * A339419 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303667.P10750298774342612708

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

/-! ## A303668.P12204229133995186257

`∑[A348529(n)+A010054(n)]`
-/

namespace A303668.P12204229133995186257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348529 n + A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303668.P12204229133995186257

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

/-! ## A303674.P11075319308266750729

`A261084(A095718(n+1))+A001055(n+1)`
-/

namespace A303674.P11075319308266750729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261084 (A095718 (n + 1)).toNat + A001055 (n + 1)

end

end A303674.P11075319308266750729

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

/-!
# A303677: Number of nX2 0..1 arrays with every element unequal to 0, 1 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303677, the canonical program `A303677.P15852511516659537077` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303677 has offset 1).

The definition of A303677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 373 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303677.P15852511516659537077

`a(n-1)+4*a(n-3)-2*a(n-4)` with `a(0)=2, a(1)=5, a(2)=7, a(3)=17, a(4)=31`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A303677

/-- `a(n-1)+4*a(n-3)-2*a(n-4)` -/
def P15852511516659537077.Spec : Prop :=
  ∀ n, P15852511516659537077.a n = A303677 (n + 1)

theorem P15852511516659537077.correct : P15852511516659537077.Spec := by
  intro n
  simp only [A303677, Nat.add_sub_cancel]

end A303677

/-! ## A303677.P7273023246151958884

`A303682(∑[1+n]+2)`
-/

namespace A303677.P7273023246151958884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A303677.P7273023246151958884

namespace A303677

/-- `A303682(∑[1+n]+2)` -/
def P7273023246151958884.Spec : Prop :=
  ∀ n, P7273023246151958884.a n = A303677 (n + 1)

end A303677

/-! ## A303677.P13229160699375491646

`record[A303682(A114091(1+n)+1)]`
-/

namespace A303677.P13229160699375491646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A114091 (1 + n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303677.P13229160699375491646

namespace A303677

/-- `record[A303682(A114091(1+n)+1)]` -/
def P13229160699375491646.Spec : Prop :=
  ∀ n, P13229160699375491646.a n = A303677 (n + 1)

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

/-! ## A303677.P1230783013988287230

`A304221(∑[n+1]+2)`
-/

namespace A303677.P1230783013988287230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A303677.P1230783013988287230

namespace A303677

/-- `A304221(∑[n+1]+2)` -/
def P1230783013988287230.Spec : Prop :=
  ∀ n, P1230783013988287230.a n = A303677 (n + 1)

end A303677

/-!
# A303678: Number of nX4 0..1 arrays with every element unequal to 0, 1 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303678, the canonical program `A303678.P14442482715452210260` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303678 has offset 1).

The definition of A303678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 566 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303678.P14442482715452210260

`a(n-1)+a(n-4)+a(n-5)` with `a(0)=5, a(1)=17, a(2)=15, a(3)=28, a(4)=44, a(5)=64, a(6)=90, a(7)=132`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A303678

/-- `a(n-1)+a(n-4)+a(n-5)` -/
def P14442482715452210260.Spec : Prop :=
  ∀ n, (P14442482715452210260.a n : ℤ) = A303678 (n + 1)

theorem P14442482715452210260.correct : P14442482715452210260.Spec := by
  intro n
  simp only [A303678, Nat.add_sub_cancel]

end A303678

/-! ## A303678.P4089909144581037322

`A303682(∑[3+n]+7)`
-/

namespace A303678.P4089909144581037322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A303678.P4089909144581037322

namespace A303678

/-- `A303682(∑[3+n]+7)` -/
def P4089909144581037322.Spec : Prop :=
  ∀ n, P4089909144581037322.a n = A303678 (n + 1)

end A303678

/-!
# A303679: Number of nX5 0..1 arrays with every element unequal to 0, 1 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303679, the canonical program `A303679.P6465278807590091512` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303679 has offset 1).

The definition of A303679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303679.P6465278807590091512

`a(n-1)+a(n-4)+a(n-6)` with `a(0)=8, a(1)=31, a(2)=25, a(3)=44, a(4)=76, a(5)=110, a(6)=150, a(7)=212, a(8)=306, a(9)=458`

The canonical program, it is in `Seq.B000.C045`.
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

/-!
# A303680: Number of nX6 0..1 arrays with every element unequal to 0, 1 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303680, there is no canonical definition to state claims against.
-/

/-! ## A303680.P15572836723696932511

`A303682(A374007(1+n))`
-/

namespace A303680.P15572836723696932511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (A374007 (1 + n)).toNat

end

end A303680.P15572836723696932511

/-!
# A303681: Number of nX7 0..1 arrays with every element unequal to 0, 1 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303681, there is no canonical definition to state claims against.
-/

/-! ## A303681.P4461284753499660426

`A303682(∑[6+n]+22)`
-/

namespace A303681.P4461284753499660426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A303681.P4461284753499660426

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

/-! ## A303682.P2614124289193600866

`A304221(n+1)-A340998(A174376(n))`
-/

namespace A303682.P2614124289193600866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (n + 1) - A340998 ((A174376 n).toNat + 140)

end

end A303682.P2614124289193600866

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

/-!
# A303684: Number of nX2 0..1 arrays with every element unequal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303684, the canonical program `A303684.P14001714611229301896` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303684 has offset 1).

The definition of A303684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303684.P14001714611229301896

`3*a(n-1)+a(n-2)+2*a(n-3)-2*a(n-4)-4*a(n-5)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=18, a(4)=61, a(5)=209`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A303684

/-- `3*a(n-1)+a(n-2)+2*a(n-3)-2*a(n-4)-4*a(n-5)` -/
def P14001714611229301896.Spec : Prop :=
  ∀ n, P14001714611229301896.a n = A303684 (n + 1)

theorem P14001714611229301896.correct : P14001714611229301896.Spec := by
  intro n
  simp only [A303684, Nat.add_sub_cancel]

end A303684

/-! ## A303684.P794557026548620188

`A303690(2+∑[n+1])`
-/

namespace A303684.P794557026548620188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303684.P794557026548620188

namespace A303684

/-- `A303690(2+∑[n+1])` -/
def P794557026548620188.Spec : Prop :=
  ∀ n, P794557026548620188.a n = A303684 (n + 1)

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

/-! ## A303687.P18227139915725813203

`A303690(A374005(n+1))`
-/

namespace A303687.P18227139915725813203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A374005 (n + 1)).toNat

end

end A303687.P18227139915725813203

/-!
# A303688: Number of nX6 0..1 arrays with every element unequal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303688, there is no canonical definition to state claims against.
-/

/-! ## A303688.P14694013341680048008

`A303690(A166136(n+4))`
-/

namespace A303688.P14694013341680048008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A166136 (n + 4)).toNat

end

end A303688.P14694013341680048008

/-! ## A303688.P2979103834064176096

`A303690(A374007(n+1))`
-/

namespace A303688.P2979103834064176096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A374007 (n + 1)).toNat

end

end A303688.P2979103834064176096

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

/-! ## A303689.P3835554816232903463

`A303690(A374008(n+1))`
-/

namespace A303689.P3835554816232903463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303690 (A374008 (n + 1)).toNat

end

end A303689.P3835554816232903463

/-!
# A303690: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303690, there is no canonical definition to state claims against.
-/

/-! ## A303690.P13769415059241173548

`A305509(n+1)/A003989(A257611(n))`
-/

namespace A303690.P13769415059241173548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305509 (n + 1) : ℚ) / (A003989 (A257611 n).toNat : ℚ)

end

end A303690.P13769415059241173548

/-! ## A303690.P10216591900190258884

`A304767(n+1)%A000203(A019320(n))`
-/

namespace A303690.P10216591900190258884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304767 (n + 1)) (A000203 (A019320 n).toNat)

end

end A303690.P10216591900190258884

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

/-!
# A303692: a(n) = n^2*(2*n - 3 - (-1)^n)/4.

The programs for A303692, the canonical program `A303692.P17737598551911637940` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303692 has offset 1).

The definition of A303692 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A303692.anchor (n : ℕ) : (A303692 (n + 1) : ℚ) = (((n + 1) ^ 2 : ℤ) * ((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) : ℚ) / 4` in `Proof.A303.A303692`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A303692.P9215152877386344423

`(n+1)²*floor(n/2)`
-/

namespace A303692.P9215152877386344423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * ⌊(n : ℚ) / 2⌋

end

end A303692.P9215152877386344423

namespace A303692

/-- `(n+1)²*floor(n/2)` -/
def P9215152877386344423.Spec : Prop :=
  ∀ n, P9215152877386344423.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P5116934777387081112

`ogf((9x^2+7x^3+7x^4+x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`
-/

namespace A303692.P5116934777387081112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 9, 7, 7, 1] [1, -1, -3, 3, 3, -3, -1, 1] n

end

end A303692.P5116934777387081112

namespace A303692

/-- `ogf((9x^2+7x^3+7x^4+x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P5116934777387081112.Spec : Prop :=
  ∀ n, P5116934777387081112.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P17737598551911637940

`(n+1)²*(2*(n+1)-3-(-1)^(n+1))/4`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A303692

/-- `(n+1)²*(2*(n+1)-3-(-1)^(n+1))/4` -/
def P17737598551911637940.Spec : Prop :=
  ∀ n, P17737598551911637940.a n = (A303692 (n + 1) : ℚ)

end A303692

/-! ## A303692.P10393014376828120251

`(n+1)²*and(n, -2)/2`
-/

namespace A303692.P10393014376828120251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) * Int.land (n : ℤ) (-2) : ℚ) / 2

end

end A303692.P10393014376828120251

namespace A303692

/-- `(n+1)²*and(n, -2)/2` -/
def P10393014376828120251.Spec : Prop :=
  ∀ n, P10393014376828120251.a n = (A303692 (n + 1) : ℚ)

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

/-! ## A303692.P13525231075679929027

`(n+1)²*(or(1, n)-1)/2`
-/

namespace A303692.P13525231075679929027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) * ((Nat.lor 1 n : ℤ) - 1) : ℚ) / 2

end

end A303692.P13525231075679929027

namespace A303692

/-- `(n+1)²*(or(1, n)-1)/2` -/
def P13525231075679929027.Spec : Prop :=
  ∀ n, P13525231075679929027.a n = (A303692 (n + 1) : ℚ)

end A303692

/-! ## A303692.P6426273886202483976

`(n-n%2)*(n+1)²/2`
-/

namespace A303692.P6426273886202483976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - ((n % 2 : ℕ) : ℤ)) * ((n + 1) ^ 2 : ℤ) : ℚ) / 2

end

end A303692.P6426273886202483976

namespace A303692

/-- `(n-n%2)*(n+1)²/2` -/
def P6426273886202483976.Spec : Prop :=
  ∀ n, P6426273886202483976.a n = (A303692 (n + 1) : ℚ)

end A303692

/-! ## A303692.P8013644436084666165

`floor(n/2)*∑[a(n-1)+2]` with `a(0)=1`
-/

namespace A303692.P8013644436084666165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A303692.P8013644436084666165

namespace A303692

/-- `floor(n/2)*∑[a(n-1)+2]` -/
def P8013644436084666165.Spec : Prop :=
  ∀ n, P8013644436084666165.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P8195466402028867984

`(n+1)²*∑[1-a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A303692.P8195466402028867984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303692.P8195466402028867984

namespace A303692

/-- `(n+1)²*∑[1-a(n-1)]` -/
def P8195466402028867984.Spec : Prop :=
  ∀ n, P8195466402028867984.a n = A303692 (n + 1)

end A303692

/-! ## A303692.P6568360681453803687

`∑{#}[1, floor(n/2)*(n+1)*C(n, #)]`
-/

namespace A303692.P6568360681453803687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ⌊(n : ℚ) / 2⌋ * (n + 1 : ℤ) * (Nat.choose n k : ℤ)

end

end A303692.P6568360681453803687

namespace A303692

/-- `∑{#}[1, floor(n/2)*(n+1)*C(n, #)]` -/
def P6568360681453803687.Spec : Prop :=
  ∀ n, P6568360681453803687.a n = A303692 (n + 1)

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

/-! ## A303695.P15471758811244053497

`A075653(n+1)-A061397(A187829(n+1))`
-/

namespace A303695.P15471758811244053497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) - A061397 (A187829 (n + 1)).toNat

end

end A303695.P15471758811244053497

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

/-! ## A303699.P8913915968933054289

`∑[char[∑[n]]]*A303700(n)`
-/

namespace A303699.P8913915968933054289
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A303700 n

end

end A303699.P8913915968933054289

